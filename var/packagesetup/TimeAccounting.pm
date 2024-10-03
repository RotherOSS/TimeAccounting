# --
# OTOBO is a web-based ticketing system for service organisations.
# --
# Copyright (C) 2001-2020 OTRS AG, https://otrs.com/
# Copyright (C) 2019-2024 Rother OSS GmbH, https://otobo.de/
# --
# This program is free software: you can redistribute it and/or modify it under
# the terms of the GNU General Public License as published by the Free Software
# Foundation, either version 3 of the License, or (at your option) any later version.
# This program is distributed in the hope that it will be useful, but WITHOUT
# ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
# FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.
# You should have received a copy of the GNU General Public License
# along with this program. If not, see <https://www.gnu.org/licenses/>.
# --

package var::packagesetup::TimeAccounting;

use strict;
use warnings;

use List::Util qw();

our @ObjectDependencies = (
    'Kernel::Config',
    'Kernel::System::Cache',
    'Kernel::System::DynamicField',
    'Kernel::System::DynamicFieldValue',
    'Kernel::System::Group',
    'Kernel::System::SysConfig',
    'Kernel::System::Valid',
    'Kernel::System::Log',
    'Kernel::System::Main',
);

=head1 NAME

var::packagesetup::TimeAccounting - code to execute during package installation

=head1 DESCRIPTION

All functions

=head1 PUBLIC INTERFACE

=head2 new()

create an object

    use Kernel::System::ObjectManager;
    local $Kernel::OM = Kernel::System::ObjectManager->new();
    my $CodeObject = $Kernel::OM->Get('var::packagesetup::TimeAccounting');

=cut

sub new {
    my ( $Type, %Param ) = @_;

    # allocate new hash for object
    my $Self = {};
    bless( $Self, $Type );

    # Force a reload of ZZZAuto.pm to get the fresh configuration values.
    for my $Module ( sort keys %INC ) {
        if ( $Module =~ m/ZZZAA?uto\.pm$/ ) {
            delete $INC{$Module};
        }
    }

    # Create common objects with fresh default config.
    $Kernel::OM->ObjectsDiscard();

    return $Self;
}

=head2 CodeInstall()

run the code install part

    my $Result = $CodeObject->CodeInstall();

=cut

sub CodeInstall {
    my ( $Self, %Param ) = @_;

    # Create DynamicField Article.
    $Self->_CreateDynamicFieldArticleTimeUnit();

    return 1;
}

=head2 CodeUninstall()

run the code uninstall part

    my $Result = $CodeObject->CodeUninstall();

=cut

sub CodeUninstall {
    my ( $Self, %Param ) = @_;

    # Deactivate the group 'time_accounting' if exists.
    $Self->_GroupDeactivate(
        Name => 'time_accounting',
    );

    # Delete ArticleTimeUnit DynamicField
    $Self->_DeleteDynamicFieldArticleTimeUnit();

    return 1;
}

=head2 CodeUpgradeFromLowerThan_4_0_91()

This function is only executed if the installed module version is smaller than 4.0.91.

my $Result = $CodeObject->CodeUpgradeFromLowerThan_4_0_91();

=cut

sub CodeUpgradeFromLowerThan_4_0_91 {    ## no critic qw(OTOBO::RequireCamelCase)
    my ( $Self, %Param ) = @_;

    # change configurations to match the new module location.
    $Self->_MigrateConfigs();

    return 1;
}

=head2 CodeUpgradeFromLowerThan_5_0_92()

This function is only executed if the installed module version is smaller than 5.0.92.

    my $Result = $CodeObject->CodeUpgradeFromLowerThan_5_0_92();

=cut

sub CodeUpgradeFromLowerThan_5_0_92 {    ## no critic qw(OTOBO::RequireCamelCase)
    my ( $Self, %Param ) = @_;

    # Recover the old permissions
    $Self->_MigratePermissions();

    return 1;
}

=head2 CodeUpgradeFromLowerThan_10_1_2()

This function is only executed if the installed module version is smaller than 10.1.2.

    my $Result = $CodeObject->CodeUpgradeFromLowerThan_10_1_2();

=cut

sub CodeUpgradeFromLowerThan_10_1_2 {    ## no critic qw(OTOBO::RequireCamelCase)
    my ( $Self, %Param ) = @_;

    # Create DynamicField ArticleTimeUnit
    $Self->_CreateDynamicFieldArticleTimeUnit();

    return 1;
}

sub CodeUpgradeFromLowerThan_11_x_x {    ## no critic qw(OTOBO::RequireCamelCase)
    my ( $Self, %Param ) = @_;

    # Rearrange time_account table to aggregate rows by ticket_id and article_id
    $Self->_AggregateTimeAccountTable();

    return 1;
}

=head1 PRIVATE INTERFACE

=head2 _CreateDynamicFieldArticleTimeUnit()

create dynamic field ArticleTimeUnit

    my $Result = $CodeObject->_CreateDynamicFieldArticleTimeUnit();

=cut

sub _CreateDynamicFieldArticleTimeUnit {
    my ( $Self, %Param ) = @_;

    # get group object
    my $ConfigObject       = $Kernel::OM->Get('Kernel::Config');
    my $DynamicFieldObject = $Kernel::OM->Get('Kernel::System::DynamicField');

    my $List = $DynamicFieldObject->DynamicFieldList(
        Valid => 0,
    );

    my $OrderCount  = $List->@* + 1;
    my $FieldConfig = {
        Tooltip => 'Article Time Units',
    };
    my $DynName = $Kernel::OM->Get('Kernel::Config')->Get('TimeAccounting::TicketSync::SaveTimeUnitToArticleField') || 'ArticleTimeUnit';
    my $ID      = $DynamicFieldObject->DynamicFieldAdd(
        InternalField => 1,
        Name          => $DynName,
        Label         => 'Article TimeUnit',
        FieldOrder    => $OrderCount,
        FieldType     => 'Text',
        ObjectType    => 'Article',
        Config        => $FieldConfig,
        Reorder       => 1,
        ValidID       => 1,
        UserID        => 1,
    );

    if ( !$ID ) {

        $Kernel::OM->Get('Kernel::System::Log')->Log(
            Priority => 'error',
            Message  =>
                "Can't add DynamicField with the name $DynName! Please add the field manually and change the sysconfig option TimeAccounting::TicketSync::SaveTimeUnitToArticleField to the new name.",
        );
    }
    return 1;
}

=head2 _DeleteDynamicFieldArticleTimeUnit()

delete dynamic filed ArticleTimeUnit

    my $Result = $CodeObject->_DeleteDynamicFieldArticleTimeUnit();

=cut

sub _DeleteDynamicFieldArticleTimeUnit {

    # get group object
    my $ConfigObject       = $Kernel::OM->Get('Kernel::Config');
    my $DynamicFieldObject = $Kernel::OM->Get('Kernel::System::DynamicField');

    my $DynName      = $Kernel::OM->Get('Kernel::Config')->Get('TimeAccounting::TicketSync::SaveTimeUnitToArticleField') || 'ArticleTimeUnit';
    my $DynamicField = $DynamicFieldObject->DynamicFieldGet(
        Name => $DynName,
    );
    my $ValueDeleteSuccess = $Kernel::OM->Get('Kernel::System::DynamicFieldValue')->AllValuesDelete(
        FieldID => $DynamicField->{ID},
        UserID  => 1,
    );

    if ( !$ValueDeleteSuccess ) {

        $Kernel::OM->Get('Kernel::System::Log')->Log(
            Priority => 'error',
            Message  => "Can't delete DynamicField values for field with the name $DynName! Please delete the field manually.",
        );
    }

    my $FieldDeleteSuccess = $DynamicFieldObject->DynamicFieldDelete(
        ID     => $DynamicField->{ID},
        UserID => 1,
    );

    if ( !$FieldDeleteSuccess ) {

        $Kernel::OM->Get('Kernel::System::Log')->Log(
            Priority => 'error',
            Message  => "Can't delete DynamicField with the name $DynName! Please delete the field manually.",
        );
    }
    return 1;

}

=head2 _GroupDeactivate()

deactivate a group

    my $Result = $CodeObject->_GroupDeactivate(
        Name => 'the-group-name',
    );

=cut

sub _GroupDeactivate {
    my ( $Self, %Param ) = @_;

    # check needed stuff
    if ( !$Param{Name} ) {
        Kernel::OM->Get('Kernel::System::Log')->Log(
            Priority => 'error',
            Message  => 'Need Name!',
        );
        return;
    }

    # get group object
    my $GroupObject = $Kernel::OM->Get('Kernel::System::Group');

    # lookup group id
    my $GroupID = $GroupObject->GroupLookup(
        Group => $Param{Name},
    );

    return if !$GroupID;

    # get valid list
    my %ValidList = $Kernel::OM->Get('Kernel::System::Valid')->ValidList(
        UserID => 1,
    );
    my %ValidListReverse = reverse %ValidList;

    # get current group data
    my %GroupData = $GroupObject->GroupGet(
        ID     => $GroupID,
        UserID => 1,
    );

    # deactivate group
    $GroupObject->GroupUpdate(
        %GroupData,
        ValidID => $ValidListReverse{invalid},
        UserID  => 1,
    );

    return 1;
}

=head2 _MigrateConfigs()

change configurations to match the new module location.

    my $Result = $CodeObject->_MigrateConfigs();

=cut

sub _MigrateConfigs {

    my $SysConfigObject = $Kernel::OM->Get('Kernel::System::SysConfig');
    my $ConfigObject    = $Kernel::OM->Get('Kernel::Config');

    # Migrate time accounting notification SysConfig
    #   get setting content for time accounting SysConfig.
    my $Setting = $ConfigObject->Get('Frontend::NotifyModule');

    my @NewSettings;

    if ( $Setting->{'888-TimeAccounting'}->{Module} ) {

        # update module location
        $Setting->{'888-TimeAccounting'}->{Module} = "Kernel::Output::HTML::Notification::TimeAccounting";

        # set new setting
        push @NewSettings, {
            Name           => 'Frontend::NotifyModule###888-TimeAccounting',
            EffectiveValue => $Setting->{'TimeAccounting'},
        };
    }

    # Migrate time accounting tool bar SysConfig
    #   get setting content for time accounting SysConfig.
    $Setting = $ConfigObject->Get('Frontend::ToolBarModule');

    if ( $Setting->{'201-TimeAccounting::IncompleteWorkingDays'}->{Module} ) {

        # update module location
        $Setting->{'201-TimeAccounting::IncompleteWorkingDays'}->{Module}
            = "Kernel::Output::HTML::ToolBar::IncompleteWorkingDays";

        # set new setting
        push @NewSettings, {
            Name           => 'Frontend::ToolBarModule###201-TimeAccounting::IncompleteWorkingDays',
            EffectiveValue => $Setting->{'201-TimeAccounting::IncompleteWorkingDays'},
        };
    }

    return 1 if !@NewSettings;

    my $Success = $Kernel::OM->Get('Kernel::System::SysConfig')->SettingsSet(
        UserID   => 1,
        Comments => 'TimeAccounting - package setup function: MigrateConfigs',
        Settings => \@NewSettings
    );

    return 1;
}

=head2 _GetOTOBO5ConfigBackup()

Get the custom configurations made in the previous version, OTOBO 5.

    my $Result = $CodeObject->_GetOTOBO5ConfigBackup();

=cut

sub _GetOTOBO5ConfigBackup {
    my $Config = {};

    my $FileClass = 'Kernel::Config::Backups::ZZZAutoOTOBO5';
    delete $INC{$FileClass};

    if (
        $Kernel::OM->Get('Kernel::System::Main')->Require(
            $FileClass,
            Silent => 1,
        )
        )
    {
        $FileClass->Load($Config);
    }

    return $Config;
}

=head2 _MigratePermissions()

change permissions to match the old ones before the upgrade.

    my $Result = $CodeObject->_MigratePermissions();

=cut

sub _MigratePermissions {
    my ( $Self, %Param ) = @_;

    my $OldConfig = $Self->_GetOTOBO5ConfigBackup();
    my $NewConfig = $Kernel::OM->Get('Kernel::Config');

    my $GetConfig = sub {
        my $Source      = shift;
        my $SettingName = shift;

        my $Config = $Source;
        my @Keys   = split /###/, $SettingName;
        while ( my $Key = shift @Keys ) {
            $Config = $Config->{$Key};
        }

        return $Config;
    };

    my @NewSettings       = ();
    my @SettingsToMigrate = (
        {
            Name     => 'Frontend::Module###AgentTimeAccountingEdit',
            Defaults => {
                Group => [
                    'time_accounting'
                ],
                GroupRo => [
                    'time_accounting'
                ],
                NavBar => [
                    {
                        Block   => '',
                        GroupRo => [
                            'time_accounting'
                        ],
                        Name => 'Edit',
                    },
                ],
            },
        },

        {
            Name     => 'Frontend::Module###AgentTimeAccountingOverview',
            Defaults => {
                Group => [
                    'time_accounting'
                ],
                GroupRo => [
                    'time_accounting'
                ],
                NavBar => [
                    {
                        Block   => '',
                        GroupRo => [
                            'time_accounting'
                        ],
                        Name => 'Overview',
                    }
                ],
            },
        },

        {
            Name     => 'Frontend::Module###AgentTimeAccountingSetting',
            Defaults => {
                Description => 'Time accounting settings.',
                Group       => [
                    'time_accounting'
                ],
                GroupRo => [
                    'time_accounting'
                ],
                NavBar => [
                    {
                        Block => '',
                        Group => [
                            'time_accounting'
                        ],
                        Name => 'Settings',
                    },
                ],
            },
        },

        {
            Name     => 'Frontend::Module###AgentTimeAccountingReporting',
            Defaults => {
                Group => [
                    'time_accounting'
                ],
                GroupRo => [
                    'time_accounting'
                ],
                NavBar => [
                    {
                        Block => '',
                        Group => [
                            'time_accounting'
                        ],
                        Name => 'Reporting',
                    },
                ],
            },
        },

        {
            Name     => 'Frontend::Module###AgentTimeAccountingView',
            Defaults => {
                Group => [
                    'time_accounting'
                ],
                GroupRo => [
                    'time_accounting'
                ],
            },
        },
    );

    my $SysConfigObject = $Kernel::OM->Get('Kernel::System::SysConfig');

    SETTING:
    for my $Setting (@SettingsToMigrate) {
        my $SettingOldConfig = $GetConfig->( $OldConfig, $Setting->{Name}, );
        my $SettingDefaults  = $Setting->{Defaults};

        my @GroupGroupRo = qw( Group GroupRo );

        {
            my $NewSetting = $GetConfig->( $NewConfig, $Setting->{Name} );

            # Check for Group and GroupRo.
            for my $Key (@GroupGroupRo) {
                if ( defined $SettingOldConfig->{$Key} || defined $SettingDefaults->{$Key} ) {
                    $NewSetting->{$Key} = $SettingOldConfig->{$Key} // $SettingDefaults->{$Key};
                }
            }

            push @NewSettings, {
                Name           => $Setting->{Name},
                EffectiveValue => $NewSetting,
                IsValid        => 1,
            };
        }

        # Check for NavBar => Navigation.
        if ( $SettingOldConfig->{NavBar} || $SettingDefaults->{NavBar} ) {
            my ( undef, $Frontend ) = split /###/, $Setting->{Name};
            my $NewSetting = $GetConfig->( $NewConfig, "Frontend::Navigation###${ Frontend }" );

            for my $Index ( sort keys %{$NewSetting} ) {
                my $NewItems = $NewSetting->{$Index};
                for my $NewItem ( @{$NewItems} ) {

                    SOURCE:
                    for my $Source ( ( $SettingOldConfig->{NavBar}, $SettingDefaults->{NavBar} ) ) {
                        my $OldItem
                            = List::Util::first { $_->{Name} eq $NewItem->{Name} && $_->{Block} eq $NewItem->{Block} }
                        @{$Source};
                        next SOURCE if !$OldItem;

                        for my $Key (@GroupGroupRo) {
                            if ( defined $OldItem->{$Key} ) {
                                $NewItem->{$Key} = $OldItem->{$Key};
                            }
                        }
                        last SOURCE;
                    }
                }

                push @NewSettings, {
                    Name           => "Frontend::Navigation###${ Frontend }###${ Index }",
                    EffectiveValue => $NewSetting->{$Index},
                    IsValid        => 1,
                };
            }
        }
    }

    # Deploy the new settings.
    my $SettingsDeployed = $SysConfigObject->SettingsSet(
        UserID   => 1,
        Comments => 'TimeAccounting - package setup function: _MigratePermissions',
        Settings => \@NewSettings,
    );
    if ( !$SettingsDeployed ) {
        $Kernel::OM->Get('Kernel::System::Log')->Log(
            Message  => 'Error while deploying the migrated permissions!',
            Priority => 'error',
        );
    }

    return 1;
}

=head2 _AggregateTimeAccountTable()

aggregate rows of the 'time_account' table by ticket_id and article_id, into one single entry, such that:
    time_unit: is the sum of the 'time_unit' column of the aggregated rows
    create_by: is the 'create_by' column of the earlier aggregated row (the row with the lowest id)
    create_time: is the 'create_time' column of the earlier aggregated row
    change_by: is the 'change_by' column of the latest aggregated row (the row with the highest id)
    change_time: is the 'change_time' column of the latest aggregated row

    my $Result = $CodeObject->_AggregateTimeAccountTable();

=cut

sub _AggregateTimeAccountTable {    ## no critic qw(OTOBO::RequireCamelCase)
    my ( $Self, %Param ) = @_;

    # get database object
    my $DBObject = $Kernel::OM->Get('Kernel::System::DB');

    # db select
    return if !$DBObject->Prepare(
        SQL => 'SELECT * FROM time_accounting ORDER BY id',
    );

    # backup csv file for previous data
    open my $BackupFile, ">", "time_accounting_backup.sql";
    #print $BackupFile "id, ticket_id, article_id, time_unit, create_time, create_by, change_time, change_by\n";

    # fetch the data
    my %Data;
    my $LastID = -1;
    while ( my @Row = $DBObject->FetchrowArray() ) {
        my $Key = "$Row[1]-$Row[2]";
        if (!$Data{$Key}) {
            $Data{$Key} = {
                ticket_id   => $Row[1],
                article_id  => $Row[2],
                time_unit   => $Row[3],
                create_time => $Row[4],
                create_by   => $Row[5],
            };
        }
        else {
            $Data{$Key}->{time_unit} += $Row[3];
        }
        $Data{$Key}->{change_time} = $Row[6];
        $Data{$Key}->{change_by} = $Row[7];

        # the if condition is redundant, as the id field is supposed to always grow, but it increases code safety
        if ($Row[0] > $LastID) {
            $LastID = $Row[0];
        }

        print $BackupFile "INSERT INTO time_accounting VALUES('$Row[0]', '$Row[1]', '$Row[2]', '$Row[3]', '$Row[4]', '$Row[5]', '$Row[6]', '$Row[7]');\n";
    }

    close $BackupFile;

    for my $Key (sort keys %Data) {
        # insert project record
        return if !$DBObject->Do(
            SQL => 'INSERT INTO time_accounting(ticket_id, article_id, time_unit, create_time, create_by, change_time, change_by)
                    VALUES (?, ?, ?, ?, ?, ?, ?)',
            Bind => [ \$Data{$Key}->{ticket_id}, \$Data{$Key}->{article_id}, \$Data{$Key}->{time_unit},
                      \$Data{$Key}->{create_time}, \$Data{$Key}->{create_by}, \$Data{$Key}->{change_time}, \$Data{$Key}->{change_by} ],
        );
    }

    return if !$DBObject->Do(
        SQL => 'DELETE FROM time_accounting WHERE id <= ?',
        Bind => [ \$LastID ],
    );

    return 1;
}

1;

=head1 TERMS AND CONDITIONS

This software is part of the OTOBO project (L<https://otobo.org/>).

This software comes with ABSOLUTELY NO WARRANTY. For details, see
the enclosed file COPYING for license information (GPL). If you
did not receive this file, see L<https://www.gnu.org/licenses/gpl-3.0.txt>.

=cut
