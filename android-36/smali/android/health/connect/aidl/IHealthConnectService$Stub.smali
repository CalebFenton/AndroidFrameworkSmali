.class public abstract Landroid/health/connect/aidl/IHealthConnectService$Stub;
.super Landroid/os/Binder;
.source "IHealthConnectService.java"

# interfaces
.implements Landroid/health/connect/aidl/IHealthConnectService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/health/connect/aidl/IHealthConnectService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/health/connect/aidl/IHealthConnectService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_aggregateRecords:I = 0x9

.field static final blacklist TRANSACTION_canRestore:I = 0x38

.field static final blacklist TRANSACTION_configureScheduledExport:I = 0x22

.field static final blacklist TRANSACTION_createMedicalDataSource:I = 0x2a

.field static final blacklist TRANSACTION_deleteAllStagedRemoteData:I = 0x1e

.field static final blacklist TRANSACTION_deleteMedicalDataSourceWithData:I = 0x2d

.field static final blacklist TRANSACTION_deleteMedicalResourcesByIds:I = 0x32

.field static final blacklist TRANSACTION_deleteMedicalResourcesByRequest:I = 0x33

.field static final blacklist TRANSACTION_deleteUsingFilters:I = 0xe

.field static final blacklist TRANSACTION_finishMigration:I = 0x18

.field static final blacklist TRANSACTION_getActivityDates:I = 0x16

.field static final blacklist TRANSACTION_getAllBackupFileNames:I = 0x1d

.field static final blacklist TRANSACTION_getAllDataForBackup:I = 0x1c

.field static final blacklist TRANSACTION_getChangeLogToken:I = 0xc

.field static final blacklist TRANSACTION_getChangeLogs:I = 0xd

.field static final blacklist TRANSACTION_getChangesForBackup:I = 0x35

.field static final blacklist TRANSACTION_getContributorApplicationsInfo:I = 0x13

.field static final blacklist TRANSACTION_getCurrentPriority:I = 0xf

.field static final blacklist TRANSACTION_getGrantedHealthPermissions:I = 0x4

.field static final blacklist TRANSACTION_getHealthConnectDataState:I = 0x20

.field static final blacklist TRANSACTION_getHealthConnectMigrationUiState:I = 0x21

.field static final blacklist TRANSACTION_getHealthPermissionsFlags:I = 0x5

.field static final blacklist TRANSACTION_getHistoricalAccessStartDateInMilliseconds:I = 0x7

.field static final blacklist TRANSACTION_getImportStatus:I = 0x27

.field static final blacklist TRANSACTION_getLatestMetadataForBackup:I = 0x36

.field static final blacklist TRANSACTION_getMedicalDataSourcesByIds:I = 0x2b

.field static final blacklist TRANSACTION_getMedicalDataSourcesByRequest:I = 0x2c

.field static final blacklist TRANSACTION_getRecordRetentionPeriodInDays:I = 0x12

.field static final blacklist TRANSACTION_getScheduledExportPeriodInDays:I = 0x23

.field static final blacklist TRANSACTION_getScheduledExportStatus:I = 0x25

.field static final blacklist TRANSACTION_grantHealthPermission:I = 0x1

.field static final blacklist TRANSACTION_insertMinDataMigrationSdkExtensionVersion:I = 0x1a

.field static final blacklist TRANSACTION_insertRecords:I = 0x8

.field static final blacklist TRANSACTION_queryAccessLogs:I = 0x15

.field static final blacklist TRANSACTION_queryAllMedicalResourceTypeInfos:I = 0x34

.field static final blacklist TRANSACTION_queryAllRecordTypesInfo:I = 0x14

.field static final blacklist TRANSACTION_queryDocumentProviders:I = 0x24

.field static final blacklist TRANSACTION_readMedicalResourcesByIds:I = 0x30

.field static final blacklist TRANSACTION_readMedicalResourcesByRequest:I = 0x31

.field static final blacklist TRANSACTION_readRecords:I = 0xa

.field static final blacklist TRANSACTION_restoreChanges:I = 0x39

.field static final blacklist TRANSACTION_restoreLatestMetadata:I = 0x37

.field static final blacklist TRANSACTION_revokeAllHealthPermissions:I = 0x3

.field static final blacklist TRANSACTION_revokeHealthPermission:I = 0x2

.field static final blacklist TRANSACTION_runImmediateExport:I = 0x29

.field static final blacklist TRANSACTION_runImport:I = 0x28

.field static final blacklist TRANSACTION_setHealthPermissionsUserFixedFlagValue:I = 0x6

.field static final blacklist TRANSACTION_setLowerRateLimitsForTesting:I = 0x26

.field static final blacklist TRANSACTION_setRecordRetentionPeriodInDays:I = 0x11

.field static final blacklist TRANSACTION_stageAllHealthConnectRemoteData:I = 0x1b

.field static final blacklist TRANSACTION_startMigration:I = 0x17

.field static final blacklist TRANSACTION_updateDataDownloadState:I = 0x1f

.field static final blacklist TRANSACTION_updatePriority:I = 0x10

.field static final blacklist TRANSACTION_updateRecords:I = 0xb

.field static final blacklist TRANSACTION_upsertMedicalResources:I = 0x2e

.field static final blacklist TRANSACTION_upsertMedicalResourcesFromRequestsParcel:I = 0x2f

.field static final blacklist TRANSACTION_writeMigrationData:I = 0x19


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 528
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 529
    const-string v0, "android.health.connect.aidl.IHealthConnectService"

    invoke-virtual {p0, p0, v0}, Landroid/health/connect/aidl/IHealthConnectService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 530
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/health/connect/aidl/IHealthConnectService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 537
    if-nez p0, :cond_4

    .line 538
    const/4 v0, 0x0

    return-object v0

    .line 540
    :cond_4
    const-string v0, "android.health.connect.aidl.IHealthConnectService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 541
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/health/connect/aidl/IHealthConnectService;

    if-eqz v1, :cond_14

    .line 542
    move-object v1, v0

    check-cast v1, Landroid/health/connect/aidl/IHealthConnectService;

    return-object v1

    .line 544
    :cond_14
    new-instance v1, Landroid/health/connect/aidl/IHealthConnectService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/health/connect/aidl/IHealthConnectService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 553
    packed-switch p0, :pswitch_data_b0

    .line 785
    const/4 v0, 0x0

    return-object v0

    .line 781
    :pswitch_5
    const-string v0, "restoreChanges"

    return-object v0

    .line 777
    :pswitch_8
    const-string v0, "canRestore"

    return-object v0

    .line 773
    :pswitch_b
    const-string v0, "restoreLatestMetadata"

    return-object v0

    .line 769
    :pswitch_e
    const-string v0, "getLatestMetadataForBackup"

    return-object v0

    .line 765
    :pswitch_11
    const-string v0, "getChangesForBackup"

    return-object v0

    .line 761
    :pswitch_14
    const-string v0, "queryAllMedicalResourceTypeInfos"

    return-object v0

    .line 757
    :pswitch_17
    const-string v0, "deleteMedicalResourcesByRequest"

    return-object v0

    .line 753
    :pswitch_1a
    const-string v0, "deleteMedicalResourcesByIds"

    return-object v0

    .line 749
    :pswitch_1d
    const-string v0, "readMedicalResourcesByRequest"

    return-object v0

    .line 745
    :pswitch_20
    const-string v0, "readMedicalResourcesByIds"

    return-object v0

    .line 741
    :pswitch_23
    const-string v0, "upsertMedicalResourcesFromRequestsParcel"

    return-object v0

    .line 737
    :pswitch_26
    const-string v0, "upsertMedicalResources"

    return-object v0

    .line 733
    :pswitch_29
    const-string v0, "deleteMedicalDataSourceWithData"

    return-object v0

    .line 729
    :pswitch_2c
    const-string v0, "getMedicalDataSourcesByRequest"

    return-object v0

    .line 725
    :pswitch_2f
    const-string v0, "getMedicalDataSourcesByIds"

    return-object v0

    .line 721
    :pswitch_32
    const-string v0, "createMedicalDataSource"

    return-object v0

    .line 717
    :pswitch_35
    const-string v0, "runImmediateExport"

    return-object v0

    .line 713
    :pswitch_38
    const-string v0, "runImport"

    return-object v0

    .line 709
    :pswitch_3b
    const-string v0, "getImportStatus"

    return-object v0

    .line 705
    :pswitch_3e
    const-string v0, "setLowerRateLimitsForTesting"

    return-object v0

    .line 701
    :pswitch_41
    const-string v0, "getScheduledExportStatus"

    return-object v0

    .line 697
    :pswitch_44
    const-string v0, "queryDocumentProviders"

    return-object v0

    .line 693
    :pswitch_47
    const-string v0, "getScheduledExportPeriodInDays"

    return-object v0

    .line 689
    :pswitch_4a
    const-string v0, "configureScheduledExport"

    return-object v0

    .line 685
    :pswitch_4d
    const-string v0, "getHealthConnectMigrationUiState"

    return-object v0

    .line 681
    :pswitch_50
    const-string v0, "getHealthConnectDataState"

    return-object v0

    .line 677
    :pswitch_53
    const-string v0, "updateDataDownloadState"

    return-object v0

    .line 673
    :pswitch_56
    const-string v0, "deleteAllStagedRemoteData"

    return-object v0

    .line 669
    :pswitch_59
    const-string v0, "getAllBackupFileNames"

    return-object v0

    .line 665
    :pswitch_5c
    const-string v0, "getAllDataForBackup"

    return-object v0

    .line 661
    :pswitch_5f
    const-string v0, "stageAllHealthConnectRemoteData"

    return-object v0

    .line 657
    :pswitch_62
    const-string v0, "insertMinDataMigrationSdkExtensionVersion"

    return-object v0

    .line 653
    :pswitch_65
    const-string v0, "writeMigrationData"

    return-object v0

    .line 649
    :pswitch_68
    const-string v0, "finishMigration"

    return-object v0

    .line 645
    :pswitch_6b
    const-string v0, "startMigration"

    return-object v0

    .line 641
    :pswitch_6e
    const-string v0, "getActivityDates"

    return-object v0

    .line 637
    :pswitch_71
    const-string v0, "queryAccessLogs"

    return-object v0

    .line 633
    :pswitch_74
    const-string v0, "queryAllRecordTypesInfo"

    return-object v0

    .line 629
    :pswitch_77
    const-string v0, "getContributorApplicationsInfo"

    return-object v0

    .line 625
    :pswitch_7a
    const-string v0, "getRecordRetentionPeriodInDays"

    return-object v0

    .line 621
    :pswitch_7d
    const-string v0, "setRecordRetentionPeriodInDays"

    return-object v0

    .line 617
    :pswitch_80
    const-string v0, "updatePriority"

    return-object v0

    .line 613
    :pswitch_83
    const-string v0, "getCurrentPriority"

    return-object v0

    .line 609
    :pswitch_86
    const-string v0, "deleteUsingFilters"

    return-object v0

    .line 605
    :pswitch_89
    const-string v0, "getChangeLogs"

    return-object v0

    .line 601
    :pswitch_8c
    const-string v0, "getChangeLogToken"

    return-object v0

    .line 597
    :pswitch_8f
    const-string v0, "updateRecords"

    return-object v0

    .line 593
    :pswitch_92
    const-string v0, "readRecords"

    return-object v0

    .line 589
    :pswitch_95
    const-string v0, "aggregateRecords"

    return-object v0

    .line 585
    :pswitch_98
    const-string v0, "insertRecords"

    return-object v0

    .line 581
    :pswitch_9b
    const-string v0, "getHistoricalAccessStartDateInMilliseconds"

    return-object v0

    .line 577
    :pswitch_9e
    const-string v0, "setHealthPermissionsUserFixedFlagValue"

    return-object v0

    .line 573
    :pswitch_a1
    const-string v0, "getHealthPermissionsFlags"

    return-object v0

    .line 569
    :pswitch_a4
    const-string v0, "getGrantedHealthPermissions"

    return-object v0

    .line 565
    :pswitch_a7
    const-string v0, "revokeAllHealthPermissions"

    return-object v0

    .line 561
    :pswitch_aa
    const-string v0, "revokeHealthPermission"

    return-object v0

    .line 557
    :pswitch_ad
    const-string v0, "grantHealthPermission"

    return-object v0

    :pswitch_data_b0
    .packed-switch 0x1
        :pswitch_ad
        :pswitch_aa
        :pswitch_a7
        :pswitch_a4
        :pswitch_a1
        :pswitch_9e
        :pswitch_9b
        :pswitch_98
        :pswitch_95
        :pswitch_92
        :pswitch_8f
        :pswitch_8c
        :pswitch_89
        :pswitch_86
        :pswitch_83
        :pswitch_80
        :pswitch_7d
        :pswitch_7a
        :pswitch_77
        :pswitch_74
        :pswitch_71
        :pswitch_6e
        :pswitch_6b
        :pswitch_68
        :pswitch_65
        :pswitch_62
        :pswitch_5f
        :pswitch_5c
        :pswitch_59
        :pswitch_56
        :pswitch_53
        :pswitch_50
        :pswitch_4d
        :pswitch_4a
        :pswitch_47
        :pswitch_44
        :pswitch_41
        :pswitch_3e
        :pswitch_3b
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 548
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 2825
    const/16 v0, 0x38

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 792
    invoke-static {p1}, Landroid/health/connect/aidl/IHealthConnectService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 796
    const-string v0, "android.health.connect.aidl.IHealthConnectService"

    .line 797
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 798
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 800
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 801
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 802
    return v1

    .line 804
    :cond_16
    packed-switch p1, :pswitch_data_642

    .line 1475
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 1465
    :pswitch_1e
    sget-object v2, Landroid/health/connect/backuprestore/RestoreChange;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1467
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/health/connect/backuprestore/RestoreChange;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/health/connect/aidl/IEmptyResponseCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/health/connect/aidl/IEmptyResponseCallback;

    move-result-object v3

    .line 1468
    .local v3, "_arg1":Landroid/health/connect/aidl/IEmptyResponseCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1469
    invoke-virtual {p0, v2, v3}, Landroid/health/connect/aidl/IHealthConnectService$Stub;->restoreChanges(Ljava/util/List;Landroid/health/connect/aidl/IEmptyResponseCallback;)V

    .line 1470
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1471
    goto/16 :goto_640

    .line 1454
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/health/connect/backuprestore/RestoreChange;>;"
    .end local v3    # "_arg1":Landroid/health/connect/aidl/IEmptyResponseCallback;
    :pswitch_37
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1456
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/health/connect/aidl/ICanRestoreResponseCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/health/connect/aidl/ICanRestoreResponseCallback;

    move-result-object v3

    .line 1457
    .local v3, "_arg1":Landroid/health/connect/aidl/ICanRestoreResponseCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1458
    invoke-virtual {p0, v2, v3}, Landroid/health/connect/aidl/IHealthConnectService$Stub;->canRestore(ILandroid/health/connect/aidl/ICanRestoreResponseCallback;)V

    .line 1459
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1460
    goto/16 :goto_640

    .line 1443
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/health/connect/aidl/ICanRestoreResponseCallback;
    :pswitch_4e
    sget-object v2, Landroid/health/connect/backuprestore/BackupMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/health/connect/backuprestore/BackupMetadata;

    .line 1445
    .local v2, "_arg0":Landroid/health/connect/backuprestore/BackupMetadata;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/health/connect/aidl/IEmptyResponseCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/health/connect/aidl/IEmptyResponseCallback;

    move-result-object v3

    .line 1446
    .local v3, "_arg1":Landroid/health/connect/aidl/IEmptyResponseCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1447
    invoke-virtual {p0, v2, v3}, Landroid/health/connect/aidl/IHealthConnectService$Stub;->restoreLatestMetadata(Landroid/health/connect/backuprestore/BackupMetadata;Landroid/health/connect/aidl/IEmptyResponseCallback;)V

    .line 1448
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1449
    goto/16 :goto_640

    .line 1434
    .end local v2    # "_arg0":Landroid/health/connect/backuprestore/BackupMetadata;
    .end local v3    # "_arg1":Landroid/health/connect/aidl/IEmptyResponseCallback;
    :pswitch_69
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/health/connect/aidl/IGetLatestMetadataForBackupResponseCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/health/connect/aidl/IGetLatestMetadataForBackupResponseCallback;

    move-result-object v2

    .line 1435
    .local v2, "_arg0":Landroid/health/connect/aidl/IGetLatestMetadataForBackupResponseCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1436
    invoke-virtual {p0, v2}, Landroid/health/connect/aidl/IHealthConnectService$Stub;->getLatestMetadataForBackup(Landroid/health/connect/aidl/IGetLatestMetadataForBackupResponseCallback;)V

    .line 1437
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1438
    goto/16 :goto_640

    .line 1423
    .end local v2    # "_arg0":Landroid/health/connect/aidl/IGetLatestMetadataForBackupResponseCallback;
    :pswitch_7c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1425
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/health/connect/aidl/IGetChangesForBackupResponseCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/health/connect/aidl/IGetChangesForBackupResponseCallback;

    move-result-object v3

    .line 1426
    .local v3, "_arg1":Landroid/health/connect/aidl/IGetChangesForBackupResponseCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1427
    invoke-virtual {p0, v2, v3}, Landroid/health/connect/aidl/IHealthConnectService$Stub;->getChangesForBackup(Ljava/lang/String;Landroid/health/connect/aidl/IGetChangesForBackupResponseCallback;)V

    .line 1428
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1429
    goto/16 :goto_640

    .line 1414
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/health/connect/aidl/IGetChangesForBackupResponseCallback;
    :pswitch_93
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/health/connect/aidl/IMedicalResourceTypeInfosCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/health/connect/aidl/IMedicalResourceTypeInfosCallback;

    move-result-object v2

    .line 1415
    .local v2, "_arg0":Landroid/health/connect/aidl/IMedicalResourceTypeInfosCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1416
    invoke-virtual {p0, v2}, Landroid/health/connect/aidl/IHealthConnectService$Stub;->queryAllMedicalResourceTypeInfos(Landroid/health/connect/aidl/IMedicalResourceTypeInfosCallback;)V

    .line 1417
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1418
    goto/16 :goto_640

    .line 1401
    .end local v2    # "_arg0":Landroid/health/connect/aidl/IMedicalResourceTypeInfosCallback;
    :pswitch_a6
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 1403
    .local v2, "_arg0":Landroid/content/AttributionSource;
    sget-object v3, Landroid/health/connect/DeleteMedicalResourcesRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/health/connect/DeleteMedicalResourcesRequest;

    .line 1405
    .local v3, "_arg1":Landroid/health/connect/DeleteMedicalResourcesRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/health/connect/aidl/IEmptyResponseCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/health/connect/aidl/IEmptyResponseCallback;

    move-result-object v4

    .line 1406
    .local v4, "_arg2":Landroid/health/connect/aidl/IEmptyResponseCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1407
    invoke-virtual {p0, v2, v3, v4}, Landroid/health/connect/aidl/IHealthConnectService$Stub;->deleteMedicalResourcesByRequest(Landroid/content/AttributionSource;Landroid/health/connect/DeleteMedicalResourcesRequest;Landroid/health/connect/aidl/IEmptyResponseCallback;)V

    .line 1408
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1409
    goto/16 :goto_640

    .line 1388
    .end local v2    # "_arg0":Landroid/content/AttributionSource;
    .end local v3    # "_arg1":Landroid/health/connect/DeleteMedicalResourcesRequest;
    .end local v4    # "_arg2":Landroid/health/connect/aidl/IEmptyResponseCallback;
    :pswitch_c9
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 1390
    .restart local v2    # "_arg0":Landroid/content/AttributionSource;
    sget-object v3, Landroid/health/connect/MedicalResourceId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1392
    .local v3, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/health/connect/MedicalResourceId;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/health/connect/aidl/IEmptyResponseCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/health/connect/aidl/IEmptyResponseCallback;

    move-result-object v4

    .line 1393
    .restart local v4    # "_arg2":Landroid/health/connect/aidl/IEmptyResponseCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1394
    invoke-virtual {p0, v2, v3, v4}, Landroid/health/connect/aidl/IHealthConnectService$Stub;->deleteMedicalResourcesByIds(Landroid/content/AttributionSource;Ljava/util/List;Landroid/health/connect/aidl/IEmptyResponseCallback;)V

    .line 1395
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1396
    goto/16 :goto_640

    .line 1375
    .end local v2    # "_arg0":Landroid/content/AttributionSource;
    .end local v3    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/health/connect/MedicalResourceId;>;"
    .end local v4    # "_arg2":Landroid/health/connect/aidl/IEmptyResponseCallback;
    :pswitch_ea
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 1377
    .restart local v2    # "_arg0":Landroid/content/AttributionSource;
    sget-object v3, Landroid/health/connect/aidl/ReadMedicalResourcesRequestParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/health/connect/aidl/ReadMedicalResourcesRequestParcel;

    .line 1379
    .local v3, "_arg1":Landroid/health/connect/aidl/ReadMedicalResourcesRequestParcel;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/health/connect/aidl/IReadMedicalResourcesResponseCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/health/connect/aidl/IReadMedicalResourcesResponseCallback;

    move-result-object v4

    .line 1380
    .local v4, "_arg2":Landroid/health/connect/aidl/IReadMedicalResourcesResponseCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1381
    invoke-virtual {p0, v2, v3, v4}, Landroid/health/connect/aidl/IHealthConnectService$Stub;->readMedicalResourcesByRequest(Landroid/content/AttributionSource;Landroid/health/connect/aidl/ReadMedicalResourcesRequestParcel;Landroid/health/connect/aidl/IReadMedicalResourcesResponseCallback;)V

    .line 1382
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1383
    goto/16 :goto_640

    .line 1362
    .end local v2    # "_arg0":Landroid/content/AttributionSource;
    .end local v3    # "_arg1":Landroid/health/connect/aidl/ReadMedicalResourcesRequestParcel;
    .end local v4    # "_arg2":Landroid/health/connect/aidl/IReadMedicalResourcesResponseCallback;
    :pswitch_10d
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 1364
    .restart local v2    # "_arg0":Landroid/content/AttributionSource;
    sget-object v3, Landroid/health/connect/MedicalResourceId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1366
    .local v3, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/health/connect/MedicalResourceId;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/health/connect/aidl/IReadMedicalResourcesResponseCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/health/connect/aidl/IReadMedicalResourcesResponseCallback;

    move-result-object v4

    .line 1367
    .restart local v4    # "_arg2":Landroid/health/connect/aidl/IReadMedicalResourcesResponseCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1368
    invoke-virtual {p0, v2, v3, v4}, Landroid/health/connect/aidl/IHealthConnectService$Stub;->readMedicalResourcesByIds(Landroid/content/AttributionSource;Ljava/util/List;Landroid/health/connect/aidl/IReadMedicalResourcesResponseCallback;)V

    .line 1369
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1370
    goto/16 :goto_640

    .line 1349
    .end local v2    # "_arg0":Landroid/content/AttributionSource;
    .end local v3    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/health/connect/MedicalResourceId;>;"
    .end local v4    # "_arg2":Landroid/health/connect/aidl/IReadMedicalResourcesResponseCallback;
    :pswitch_12e
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 1351
    .restart local v2    # "_arg0":Landroid/content/AttributionSource;
    sget-object v3, Landroid/health/connect/aidl/UpsertMedicalResourceRequestsParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/health/connect/aidl/UpsertMedicalResourceRequestsParcel;

    .line 1353
    .local v3, "_arg1":Landroid/health/connect/aidl/UpsertMedicalResourceRequestsParcel;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/health/connect/aidl/IMedicalResourceListParcelResponseCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/health/connect/aidl/IMedicalResourceListParcelResponseCallback;

    move-result-object v4

    .line 1354
    .local v4, "_arg2":Landroid/health/connect/aidl/IMedicalResourceListParcelResponseCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1355
    invoke-virtual {p0, v2, v3, v4}, Landroid/health/connect/aidl/IHealthConnectService$Stub;->upsertMedicalResourcesFromRequestsParcel(Landroid/content/AttributionSource;Landroid/health/connect/aidl/UpsertMedicalResourceRequestsParcel;Landroid/health/connect/aidl/IMedicalResourceListParcelResponseCallback;)V

    .line 1356
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1357
    goto/16 :goto_640

    .line 1336
    .end local v2    # "_arg0":Landroid/content/AttributionSource;
    .end local v3    # "_arg1":Landroid/health/connect/aidl/UpsertMedicalResourceRequestsParcel;
    .end local v4    # "_arg2":Landroid/health/connect/aidl/IMedicalResourceListParcelResponseCallback;
    :pswitch_151
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 1338
    .restart local v2    # "_arg0":Landroid/content/AttributionSource;
    sget-object v3, Landroid/health/connect/UpsertMedicalResourceRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1340
    .local v3, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/health/connect/UpsertMedicalResourceRequest;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/health/connect/aidl/IMedicalResourcesResponseCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/health/connect/aidl/IMedicalResourcesResponseCallback;

    move-result-object v4

    .line 1341
    .local v4, "_arg2":Landroid/health/connect/aidl/IMedicalResourcesResponseCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1342
    invoke-virtual {p0, v2, v3, v4}, Landroid/health/connect/aidl/IHealthConnectService$Stub;->upsertMedicalResources(Landroid/content/AttributionSource;Ljava/util/List;Landroid/health/connect/aidl/IMedicalResourcesResponseCallback;)V

    .line 1343
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1344
    goto/16 :goto_640

    .line 1323
    .end local v2    # "_arg0":Landroid/content/AttributionSource;
    .end local v3    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/health/connect/UpsertMedicalResourceRequest;>;"
    .end local v4    # "_arg2":Landroid/health/connect/aidl/IMedicalResourcesResponseCallback;
    :pswitch_172
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 1325
    .restart local v2    # "_arg0":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1327
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/health/connect/aidl/IEmptyResponseCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/health/connect/aidl/IEmptyResponseCallback;

    move-result-object v4

    .line 1328
    .local v4, "_arg2":Landroid/health/connect/aidl/IEmptyResponseCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1329
    invoke-virtual {p0, v2, v3, v4}, Landroid/health/connect/aidl/IHealthConnectService$Stub;->deleteMedicalDataSourceWithData(Landroid/content/AttributionSource;Ljava/lang/String;Landroid/health/connect/aidl/IEmptyResponseCallback;)V

    .line 1330
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1331
    goto/16 :goto_640

    .line 1310
    .end local v2    # "_arg0":Landroid/content/AttributionSource;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Landroid/health/connect/aidl/IEmptyResponseCallback;
    :pswitch_191
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 1312
    .restart local v2    # "_arg0":Landroid/content/AttributionSource;
    sget-object v3, Landroid/health/connect/GetMedicalDataSourcesRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/health/connect/GetMedicalDataSourcesRequest;

    .line 1314
    .local v3, "_arg1":Landroid/health/connect/GetMedicalDataSourcesRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/health/connect/aidl/IMedicalDataSourcesResponseCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/health/connect/aidl/IMedicalDataSourcesResponseCallback;

    move-result-object v4

    .line 1315
    .local v4, "_arg2":Landroid/health/connect/aidl/IMedicalDataSourcesResponseCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1316
    invoke-virtual {p0, v2, v3, v4}, Landroid/health/connect/aidl/IHealthConnectService$Stub;->getMedicalDataSourcesByRequest(Landroid/content/AttributionSource;Landroid/health/connect/GetMedicalDataSourcesRequest;Landroid/health/connect/aidl/IMedicalDataSourcesResponseCallback;)V

    .line 1317
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1318
    goto/16 :goto_640

    .line 1297
    .end local v2    # "_arg0":Landroid/content/AttributionSource;
    .end local v3    # "_arg1":Landroid/health/connect/GetMedicalDataSourcesRequest;
    .end local v4    # "_arg2":Landroid/health/connect/aidl/IMedicalDataSourcesResponseCallback;
    :pswitch_1b4
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 1299
    .restart local v2    # "_arg0":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 1301
    .local v3, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/health/connect/aidl/IMedicalDataSourcesResponseCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/health/connect/aidl/IMedicalDataSourcesResponseCallback;

    move-result-object v4

    .line 1302
    .restart local v4    # "_arg2":Landroid/health/connect/aidl/IMedicalDataSourcesResponseCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1303
    invoke-virtual {p0, v2, v3, v4}, Landroid/health/connect/aidl/IHealthConnectService$Stub;->getMedicalDataSourcesByIds(Landroid/content/AttributionSource;Ljava/util/List;Landroid/health/connect/aidl/IMedicalDataSourcesResponseCallback;)V

    .line 1304
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1305
    goto/16 :goto_640

    .line 1284
    .end local v2    # "_arg0":Landroid/content/AttributionSource;
    .end local v3    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "_arg2":Landroid/health/connect/aidl/IMedicalDataSourcesResponseCallback;
    :pswitch_1d3
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 1286
    .restart local v2    # "_arg0":Landroid/content/AttributionSource;
    sget-object v3, Landroid/health/connect/CreateMedicalDataSourceRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/health/connect/CreateMedicalDataSourceRequest;

    .line 1288
    .local v3, "_arg1":Landroid/health/connect/CreateMedicalDataSourceRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/health/connect/aidl/IMedicalDataSourceResponseCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/health/connect/aidl/IMedicalDataSourceResponseCallback;

    move-result-object v4

    .line 1289
    .local v4, "_arg2":Landroid/health/connect/aidl/IMedicalDataSourceResponseCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1290
    invoke-virtual {p0, v2, v3, v4}, Landroid/health/connect/aidl/IHealthConnectService$Stub;->createMedicalDataSource(Landroid/content/AttributionSource;Landroid/health/connect/CreateMedicalDataSourceRequest;Landroid/health/connect/aidl/IMedicalDataSourceResponseCallback;)V

    .line 1291
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1292
    goto/16 :goto_640

    .line 1273
    .end local v2    # "_arg0":Landroid/content/AttributionSource;
    .end local v3    # "_arg1":Landroid/health/connect/CreateMedicalDataSourceRequest;
    .end local v4    # "_arg2":Landroid/health/connect/aidl/IMedicalDataSourceResponseCallback;
    :pswitch_1f6
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 1275
    .local v2, "_arg0":Landroid/net/Uri;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/health/connect/aidl/IEmptyResponseCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/health/connect/aidl/IEmptyResponseCallback;

    move-result-object v3

    .line 1276
    .local v3, "_arg1":Landroid/health/connect/aidl/IEmptyResponseCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1277
    invoke-virtual {p0, v2, v3}, Landroid/health/connect/aidl/IHealthConnectService$Stub;->runImmediateExport(Landroid/net/Uri;Landroid/health/connect/aidl/IEmptyResponseCallback;)V

    .line 1278
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1279
    goto/16 :goto_640

    .line 1260
    .end local v2    # "_arg0":Landroid/net/Uri;
    .end local v3    # "_arg1":Landroid/health/connect/aidl/IEmptyResponseCallback;
    :pswitch_211
    sget-object v2, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 1262
    .local v2, "_arg0":Landroid/os/UserHandle;
    sget-object v3, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 1264
    .local v3, "_arg1":Landroid/net/Uri;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/health/connect/aidl/IEmptyResponseCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/health/connect/aidl/IEmptyResponseCallback;

    move-result-object v4

    .line 1265
    .local v4, "_arg2":Landroid/health/connect/aidl/IEmptyResponseCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1266
    invoke-virtual {p0, v2, v3, v4}, Landroid/health/connect/aidl/IHealthConnectService$Stub;->runImport(Landroid/os/UserHandle;Landroid/net/Uri;Landroid/health/connect/aidl/IEmptyResponseCallback;)V

    .line 1267
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1268
    goto/16 :goto_640

    .line 1249
    .end local v2    # "_arg0":Landroid/os/UserHandle;
    .end local v3    # "_arg1":Landroid/net/Uri;
    .end local v4    # "_arg2":Landroid/health/connect/aidl/IEmptyResponseCallback;
    :pswitch_234
    sget-object v2, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 1251
    .restart local v2    # "_arg0":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/health/connect/exportimport/IImportStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/health/connect/exportimport/IImportStatusCallback;

    move-result-object v3

    .line 1252
    .local v3, "_arg1":Landroid/health/connect/exportimport/IImportStatusCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1253
    invoke-virtual {p0, v2, v3}, Landroid/health/connect/aidl/IHealthConnectService$Stub;->getImportStatus(Landroid/os/UserHandle;Landroid/health/connect/exportimport/IImportStatusCallback;)V

    .line 1254
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1255
    goto/16 :goto_640

    .line 1240
    .end local v2    # "_arg0":Landroid/os/UserHandle;
    .end local v3    # "_arg1":Landroid/health/connect/exportimport/IImportStatusCallback;
    :pswitch_24f
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1241
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1242
    invoke-virtual {p0, v2}, Landroid/health/connect/aidl/IHealthConnectService$Stub;->setLowerRateLimitsForTesting(Z)V

    .line 1243
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1244
    goto/16 :goto_640

    .line 1229
    .end local v2    # "_arg0":Z
    :pswitch_25e
    sget-object v2, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 1231
    .local v2, "_arg0":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/health/connect/exportimport/IScheduledExportStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/health/connect/exportimport/IScheduledExportStatusCallback;

    move-result-object v3

    .line 1232
    .local v3, "_arg1":Landroid/health/connect/exportimport/IScheduledExportStatusCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1233
    invoke-virtual {p0, v2, v3}, Landroid/health/connect/aidl/IHealthConnectService$Stub;->getScheduledExportStatus(Landroid/os/UserHandle;Landroid/health/connect/exportimport/IScheduledExportStatusCallback;)V

    .line 1234
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1235
    goto/16 :goto_640

    .line 1218
    .end local v2    # "_arg0":Landroid/os/UserHandle;
    .end local v3    # "_arg1":Landroid/health/connect/exportimport/IScheduledExportStatusCallback;
    :pswitch_279
    sget-object v2, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 1220
    .restart local v2    # "_arg0":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/health/connect/exportimport/IQueryDocumentProvidersCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/health/connect/exportimport/IQueryDocumentProvidersCallback;

    move-result-object v3

    .line 1221
    .local v3, "_arg1":Landroid/health/connect/exportimport/IQueryDocumentProvidersCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1222
    invoke-virtual {p0, v2, v3}, Landroid/health/connect/aidl/IHealthConnectService$Stub;->queryDocumentProviders(Landroid/os/UserHandle;Landroid/health/connect/exportimport/IQueryDocumentProvidersCallback;)V

    .line 1223
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1224
    goto/16 :goto_640

    .line 1208
    .end local v2    # "_arg0":Landroid/os/UserHandle;
    .end local v3    # "_arg1":Landroid/health/connect/exportimport/IQueryDocumentProvidersCallback;
    :pswitch_294
    sget-object v2, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 1209
    .restart local v2    # "_arg0":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1210
    invoke-virtual {p0, v2}, Landroid/health/connect/aidl/IHealthConnectService$Stub;->getScheduledExportPeriodInDays(Landroid/os/UserHandle;)I

    move-result v3

    .line 1211
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1212
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1213
    goto/16 :goto_640

    .line 1197
    .end local v2    # "_arg0":Landroid/os/UserHandle;
    .end local v3    # "_result":I
    :pswitch_2ab
    sget-object v2, Landroid/health/connect/exportimport/ScheduledExportSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/health/connect/exportimport/ScheduledExportSettings;

    .line 1199
    .local v2, "_arg0":Landroid/health/connect/exportimport/ScheduledExportSettings;
    sget-object v3, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    .line 1200
    .local v3, "_arg1":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1201
    invoke-virtual {p0, v2, v3}, Landroid/health/connect/aidl/IHealthConnectService$Stub;->configureScheduledExport(Landroid/health/connect/exportimport/ScheduledExportSettings;Landroid/os/UserHandle;)V

    .line 1202
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1203
    goto/16 :goto_640

    .line 1188
    .end local v2    # "_arg0":Landroid/health/connect/exportimport/ScheduledExportSettings;
    .end local v3    # "_arg1":Landroid/os/UserHandle;
    :pswitch_2c6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/health/connect/aidl/IGetHealthConnectMigrationUiStateCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/health/connect/aidl/IGetHealthConnectMigrationUiStateCallback;

    move-result-object v2

    .line 1189
    .local v2, "_arg0":Landroid/health/connect/aidl/IGetHealthConnectMigrationUiStateCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1190
    invoke-virtual {p0, v2}, Landroid/health/connect/aidl/IHealthConnectService$Stub;->getHealthConnectMigrationUiState(Landroid/health/connect/aidl/IGetHealthConnectMigrationUiStateCallback;)V

    .line 1191
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1192
    goto/16 :goto_640

    .line 1179
    .end local v2    # "_arg0":Landroid/health/connect/aidl/IGetHealthConnectMigrationUiStateCallback;
    :pswitch_2d9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/health/connect/aidl/IGetHealthConnectDataStateCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/health/connect/aidl/IGetHealthConnectDataStateCallback;

    move-result-object v2

    .line 1180
    .local v2, "_arg0":Landroid/health/connect/aidl/IGetHealthConnectDataStateCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1181
    invoke-virtual {p0, v2}, Landroid/health/connect/aidl/IHealthConnectService$Stub;->getHealthConnectDataState(Landroid/health/connect/aidl/IGetHealthConnectDataStateCallback;)V

    .line 1182
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1183
    goto/16 :goto_640

    .line 1170
    .end local v2    # "_arg0":Landroid/health/connect/aidl/IGetHealthConnectDataStateCallback;
    :pswitch_2ec
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1171
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1172
    invoke-virtual {p0, v2}, Landroid/health/connect/aidl/IHealthConnectService$Stub;->updateDataDownloadState(I)V

    .line 1173
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1174
    goto/16 :goto_640

    .line 1161
    .end local v2    # "_arg0":I
    :pswitch_2fb
    sget-object v2, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 1162
    .local v2, "_arg0":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1163
    invoke-virtual {p0, v2}, Landroid/health/connect/aidl/IHealthConnectService$Stub;->deleteAllStagedRemoteData(Landroid/os/UserHandle;)V

    .line 1164
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1165
    goto/16 :goto_640

    .line 1151
    .end local v2    # "_arg0":Landroid/os/UserHandle;
    :pswitch_30e
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1152
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1153
    invoke-virtual {p0, v2}, Landroid/health/connect/aidl/IHealthConnectService$Stub;->getAllBackupFileNames(Z)Landroid/health/connect/restore/BackupFileNamesSet;

    move-result-object v3

    .line 1154
    .local v3, "_result":Landroid/health/connect/restore/BackupFileNamesSet;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1155
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1156
    goto/16 :goto_640

    .line 1140
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":Landroid/health/connect/restore/BackupFileNamesSet;
    :pswitch_321
    sget-object v2, Landroid/health/connect/restore/StageRemoteDataRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/health/connect/restore/StageRemoteDataRequest;

    .line 1142
    .local v2, "_arg0":Landroid/health/connect/restore/StageRemoteDataRequest;
    sget-object v3, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    .line 1143
    .local v3, "_arg1":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1144
    invoke-virtual {p0, v2, v3}, Landroid/health/connect/aidl/IHealthConnectService$Stub;->getAllDataForBackup(Landroid/health/connect/restore/StageRemoteDataRequest;Landroid/os/UserHandle;)V

    .line 1145
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1146
    goto/16 :goto_640

    .line 1127
    .end local v2    # "_arg0":Landroid/health/connect/restore/StageRemoteDataRequest;
    .end local v3    # "_arg1":Landroid/os/UserHandle;
    :pswitch_33c
    sget-object v2, Landroid/health/connect/restore/StageRemoteDataRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/health/connect/restore/StageRemoteDataRequest;

    .line 1129
    .restart local v2    # "_arg0":Landroid/health/connect/restore/StageRemoteDataRequest;
    sget-object v3, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    .line 1131
    .restart local v3    # "_arg1":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/health/connect/aidl/IDataStagingFinishedCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/health/connect/aidl/IDataStagingFinishedCallback;

    move-result-object v4

    .line 1132
    .local v4, "_arg2":Landroid/health/connect/aidl/IDataStagingFinishedCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1133
    invoke-virtual {p0, v2, v3, v4}, Landroid/health/connect/aidl/IHealthConnectService$Stub;->stageAllHealthConnectRemoteData(Landroid/health/connect/restore/StageRemoteDataRequest;Landroid/os/UserHandle;Landroid/health/connect/aidl/IDataStagingFinishedCallback;)V

    .line 1134
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1135
    goto/16 :goto_640

    .line 1114
    .end local v2    # "_arg0":Landroid/health/connect/restore/StageRemoteDataRequest;
    .end local v3    # "_arg1":Landroid/os/UserHandle;
    .end local v4    # "_arg2":Landroid/health/connect/aidl/IDataStagingFinishedCallback;
    :pswitch_35f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1116
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1118
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/health/connect/aidl/IMigrationCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/health/connect/aidl/IMigrationCallback;

    move-result-object v4

    .line 1119
    .local v4, "_arg2":Landroid/health/connect/aidl/IMigrationCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1120
    invoke-virtual {p0, v2, v3, v4}, Landroid/health/connect/aidl/IHealthConnectService$Stub;->insertMinDataMigrationSdkExtensionVersion(Ljava/lang/String;ILandroid/health/connect/aidl/IMigrationCallback;)V

    .line 1121
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1122
    goto/16 :goto_640

    .line 1101
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/health/connect/aidl/IMigrationCallback;
    :pswitch_37a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1103
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/health/connect/migration/MigrationEntityParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/health/connect/migration/MigrationEntityParcel;

    .line 1105
    .local v3, "_arg1":Landroid/health/connect/migration/MigrationEntityParcel;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/health/connect/aidl/IMigrationCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/health/connect/aidl/IMigrationCallback;

    move-result-object v4

    .line 1106
    .restart local v4    # "_arg2":Landroid/health/connect/aidl/IMigrationCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1107
    invoke-virtual {p0, v2, v3, v4}, Landroid/health/connect/aidl/IHealthConnectService$Stub;->writeMigrationData(Ljava/lang/String;Landroid/health/connect/migration/MigrationEntityParcel;Landroid/health/connect/aidl/IMigrationCallback;)V

    .line 1108
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1109
    goto/16 :goto_640

    .line 1090
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/health/connect/migration/MigrationEntityParcel;
    .end local v4    # "_arg2":Landroid/health/connect/aidl/IMigrationCallback;
    :pswitch_399
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1092
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/health/connect/aidl/IMigrationCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/health/connect/aidl/IMigrationCallback;

    move-result-object v3

    .line 1093
    .local v3, "_arg1":Landroid/health/connect/aidl/IMigrationCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1094
    invoke-virtual {p0, v2, v3}, Landroid/health/connect/aidl/IHealthConnectService$Stub;->finishMigration(Ljava/lang/String;Landroid/health/connect/aidl/IMigrationCallback;)V

    .line 1095
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1096
    goto/16 :goto_640

    .line 1079
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/health/connect/aidl/IMigrationCallback;
    :pswitch_3b0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1081
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/health/connect/aidl/IMigrationCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/health/connect/aidl/IMigrationCallback;

    move-result-object v3

    .line 1082
    .restart local v3    # "_arg1":Landroid/health/connect/aidl/IMigrationCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1083
    invoke-virtual {p0, v2, v3}, Landroid/health/connect/aidl/IHealthConnectService$Stub;->startMigration(Ljava/lang/String;Landroid/health/connect/aidl/IMigrationCallback;)V

    .line 1084
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1085
    goto/16 :goto_640

    .line 1068
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/health/connect/aidl/IMigrationCallback;
    :pswitch_3c7
    sget-object v2, Landroid/health/connect/aidl/ActivityDatesRequestParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/health/connect/aidl/ActivityDatesRequestParcel;

    .line 1070
    .local v2, "_arg0":Landroid/health/connect/aidl/ActivityDatesRequestParcel;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/health/connect/aidl/IActivityDatesResponseCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/health/connect/aidl/IActivityDatesResponseCallback;

    move-result-object v3

    .line 1071
    .local v3, "_arg1":Landroid/health/connect/aidl/IActivityDatesResponseCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1072
    invoke-virtual {p0, v2, v3}, Landroid/health/connect/aidl/IHealthConnectService$Stub;->getActivityDates(Landroid/health/connect/aidl/ActivityDatesRequestParcel;Landroid/health/connect/aidl/IActivityDatesResponseCallback;)V

    .line 1073
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1074
    goto/16 :goto_640

    .line 1057
    .end local v2    # "_arg0":Landroid/health/connect/aidl/ActivityDatesRequestParcel;
    .end local v3    # "_arg1":Landroid/health/connect/aidl/IActivityDatesResponseCallback;
    :pswitch_3e2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1059
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/health/connect/aidl/IAccessLogsResponseCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/health/connect/aidl/IAccessLogsResponseCallback;

    move-result-object v3

    .line 1060
    .local v3, "_arg1":Landroid/health/connect/aidl/IAccessLogsResponseCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1061
    invoke-virtual {p0, v2, v3}, Landroid/health/connect/aidl/IHealthConnectService$Stub;->queryAccessLogs(Ljava/lang/String;Landroid/health/connect/aidl/IAccessLogsResponseCallback;)V

    .line 1062
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1063
    goto/16 :goto_640

    .line 1048
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/health/connect/aidl/IAccessLogsResponseCallback;
    :pswitch_3f9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/health/connect/aidl/IRecordTypeInfoResponseCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/health/connect/aidl/IRecordTypeInfoResponseCallback;

    move-result-object v2

    .line 1049
    .local v2, "_arg0":Landroid/health/connect/aidl/IRecordTypeInfoResponseCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1050
    invoke-virtual {p0, v2}, Landroid/health/connect/aidl/IHealthConnectService$Stub;->queryAllRecordTypesInfo(Landroid/health/connect/aidl/IRecordTypeInfoResponseCallback;)V

    .line 1051
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1052
    goto/16 :goto_640

    .line 1039
    .end local v2    # "_arg0":Landroid/health/connect/aidl/IRecordTypeInfoResponseCallback;
    :pswitch_40c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/health/connect/aidl/IApplicationInfoResponseCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/health/connect/aidl/IApplicationInfoResponseCallback;

    move-result-object v2

    .line 1040
    .local v2, "_arg0":Landroid/health/connect/aidl/IApplicationInfoResponseCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1041
    invoke-virtual {p0, v2}, Landroid/health/connect/aidl/IHealthConnectService$Stub;->getContributorApplicationsInfo(Landroid/health/connect/aidl/IApplicationInfoResponseCallback;)V

    .line 1042
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1043
    goto/16 :goto_640

    .line 1029
    .end local v2    # "_arg0":Landroid/health/connect/aidl/IApplicationInfoResponseCallback;
    :pswitch_41f
    sget-object v2, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 1030
    .local v2, "_arg0":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1031
    invoke-virtual {p0, v2}, Landroid/health/connect/aidl/IHealthConnectService$Stub;->getRecordRetentionPeriodInDays(Landroid/os/UserHandle;)I

    move-result v3

    .line 1032
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1033
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1034
    goto/16 :goto_640

    .line 1016
    .end local v2    # "_arg0":Landroid/os/UserHandle;
    .end local v3    # "_result":I
    :pswitch_436
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1018
    .local v2, "_arg0":I
    sget-object v3, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    .line 1020
    .local v3, "_arg1":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/health/connect/aidl/IEmptyResponseCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/health/connect/aidl/IEmptyResponseCallback;

    move-result-object v4

    .line 1021
    .local v4, "_arg2":Landroid/health/connect/aidl/IEmptyResponseCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1022
    invoke-virtual {p0, v2, v3, v4}, Landroid/health/connect/aidl/IHealthConnectService$Stub;->setRecordRetentionPeriodInDays(ILandroid/os/UserHandle;Landroid/health/connect/aidl/IEmptyResponseCallback;)V

    .line 1023
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1024
    goto/16 :goto_640

    .line 1005
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/os/UserHandle;
    .end local v4    # "_arg2":Landroid/health/connect/aidl/IEmptyResponseCallback;
    :pswitch_455
    sget-object v2, Landroid/health/connect/aidl/UpdatePriorityRequestParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/health/connect/aidl/UpdatePriorityRequestParcel;

    .line 1007
    .local v2, "_arg0":Landroid/health/connect/aidl/UpdatePriorityRequestParcel;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/health/connect/aidl/IEmptyResponseCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/health/connect/aidl/IEmptyResponseCallback;

    move-result-object v3

    .line 1008
    .local v3, "_arg1":Landroid/health/connect/aidl/IEmptyResponseCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1009
    invoke-virtual {p0, v2, v3}, Landroid/health/connect/aidl/IHealthConnectService$Stub;->updatePriority(Landroid/health/connect/aidl/UpdatePriorityRequestParcel;Landroid/health/connect/aidl/IEmptyResponseCallback;)V

    .line 1010
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1011
    goto/16 :goto_640

    .line 994
    .end local v2    # "_arg0":Landroid/health/connect/aidl/UpdatePriorityRequestParcel;
    .end local v3    # "_arg1":Landroid/health/connect/aidl/IEmptyResponseCallback;
    :pswitch_470
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 996
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/health/connect/aidl/IGetPriorityResponseCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/health/connect/aidl/IGetPriorityResponseCallback;

    move-result-object v3

    .line 997
    .local v3, "_arg1":Landroid/health/connect/aidl/IGetPriorityResponseCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 998
    invoke-virtual {p0, v2, v3}, Landroid/health/connect/aidl/IHealthConnectService$Stub;->getCurrentPriority(ILandroid/health/connect/aidl/IGetPriorityResponseCallback;)V

    .line 999
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1000
    goto/16 :goto_640

    .line 981
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/health/connect/aidl/IGetPriorityResponseCallback;
    :pswitch_487
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 983
    .local v2, "_arg0":Landroid/content/AttributionSource;
    sget-object v3, Landroid/health/connect/aidl/DeleteUsingFiltersRequestParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/health/connect/aidl/DeleteUsingFiltersRequestParcel;

    .line 985
    .local v3, "_arg1":Landroid/health/connect/aidl/DeleteUsingFiltersRequestParcel;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/health/connect/aidl/IEmptyResponseCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/health/connect/aidl/IEmptyResponseCallback;

    move-result-object v4

    .line 986
    .restart local v4    # "_arg2":Landroid/health/connect/aidl/IEmptyResponseCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 987
    invoke-virtual {p0, v2, v3, v4}, Landroid/health/connect/aidl/IHealthConnectService$Stub;->deleteUsingFilters(Landroid/content/AttributionSource;Landroid/health/connect/aidl/DeleteUsingFiltersRequestParcel;Landroid/health/connect/aidl/IEmptyResponseCallback;)V

    .line 988
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 989
    goto/16 :goto_640

    .line 968
    .end local v2    # "_arg0":Landroid/content/AttributionSource;
    .end local v3    # "_arg1":Landroid/health/connect/aidl/DeleteUsingFiltersRequestParcel;
    .end local v4    # "_arg2":Landroid/health/connect/aidl/IEmptyResponseCallback;
    :pswitch_4aa
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 970
    .restart local v2    # "_arg0":Landroid/content/AttributionSource;
    sget-object v3, Landroid/health/connect/changelog/ChangeLogsRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/health/connect/changelog/ChangeLogsRequest;

    .line 972
    .local v3, "_arg1":Landroid/health/connect/changelog/ChangeLogsRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/health/connect/aidl/IChangeLogsResponseCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/health/connect/aidl/IChangeLogsResponseCallback;

    move-result-object v4

    .line 973
    .local v4, "_arg2":Landroid/health/connect/aidl/IChangeLogsResponseCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 974
    invoke-virtual {p0, v2, v3, v4}, Landroid/health/connect/aidl/IHealthConnectService$Stub;->getChangeLogs(Landroid/content/AttributionSource;Landroid/health/connect/changelog/ChangeLogsRequest;Landroid/health/connect/aidl/IChangeLogsResponseCallback;)V

    .line 975
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 976
    goto/16 :goto_640

    .line 955
    .end local v2    # "_arg0":Landroid/content/AttributionSource;
    .end local v3    # "_arg1":Landroid/health/connect/changelog/ChangeLogsRequest;
    .end local v4    # "_arg2":Landroid/health/connect/aidl/IChangeLogsResponseCallback;
    :pswitch_4cd
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 957
    .restart local v2    # "_arg0":Landroid/content/AttributionSource;
    sget-object v3, Landroid/health/connect/changelog/ChangeLogTokenRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/health/connect/changelog/ChangeLogTokenRequest;

    .line 959
    .local v3, "_arg1":Landroid/health/connect/changelog/ChangeLogTokenRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/health/connect/aidl/IGetChangeLogTokenCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/health/connect/aidl/IGetChangeLogTokenCallback;

    move-result-object v4

    .line 960
    .local v4, "_arg2":Landroid/health/connect/aidl/IGetChangeLogTokenCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 961
    invoke-virtual {p0, v2, v3, v4}, Landroid/health/connect/aidl/IHealthConnectService$Stub;->getChangeLogToken(Landroid/content/AttributionSource;Landroid/health/connect/changelog/ChangeLogTokenRequest;Landroid/health/connect/aidl/IGetChangeLogTokenCallback;)V

    .line 962
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 963
    goto/16 :goto_640

    .line 942
    .end local v2    # "_arg0":Landroid/content/AttributionSource;
    .end local v3    # "_arg1":Landroid/health/connect/changelog/ChangeLogTokenRequest;
    .end local v4    # "_arg2":Landroid/health/connect/aidl/IGetChangeLogTokenCallback;
    :pswitch_4f0
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 944
    .restart local v2    # "_arg0":Landroid/content/AttributionSource;
    sget-object v3, Landroid/health/connect/aidl/RecordsParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/health/connect/aidl/RecordsParcel;

    .line 946
    .local v3, "_arg1":Landroid/health/connect/aidl/RecordsParcel;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/health/connect/aidl/IEmptyResponseCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/health/connect/aidl/IEmptyResponseCallback;

    move-result-object v4

    .line 947
    .local v4, "_arg2":Landroid/health/connect/aidl/IEmptyResponseCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 948
    invoke-virtual {p0, v2, v3, v4}, Landroid/health/connect/aidl/IHealthConnectService$Stub;->updateRecords(Landroid/content/AttributionSource;Landroid/health/connect/aidl/RecordsParcel;Landroid/health/connect/aidl/IEmptyResponseCallback;)V

    .line 949
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 950
    goto/16 :goto_640

    .line 929
    .end local v2    # "_arg0":Landroid/content/AttributionSource;
    .end local v3    # "_arg1":Landroid/health/connect/aidl/RecordsParcel;
    .end local v4    # "_arg2":Landroid/health/connect/aidl/IEmptyResponseCallback;
    :pswitch_513
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 931
    .restart local v2    # "_arg0":Landroid/content/AttributionSource;
    sget-object v3, Landroid/health/connect/aidl/ReadRecordsRequestParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/health/connect/aidl/ReadRecordsRequestParcel;

    .line 933
    .local v3, "_arg1":Landroid/health/connect/aidl/ReadRecordsRequestParcel;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/health/connect/aidl/IReadRecordsResponseCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/health/connect/aidl/IReadRecordsResponseCallback;

    move-result-object v4

    .line 934
    .local v4, "_arg2":Landroid/health/connect/aidl/IReadRecordsResponseCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 935
    invoke-virtual {p0, v2, v3, v4}, Landroid/health/connect/aidl/IHealthConnectService$Stub;->readRecords(Landroid/content/AttributionSource;Landroid/health/connect/aidl/ReadRecordsRequestParcel;Landroid/health/connect/aidl/IReadRecordsResponseCallback;)V

    .line 936
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 937
    goto/16 :goto_640

    .line 916
    .end local v2    # "_arg0":Landroid/content/AttributionSource;
    .end local v3    # "_arg1":Landroid/health/connect/aidl/ReadRecordsRequestParcel;
    .end local v4    # "_arg2":Landroid/health/connect/aidl/IReadRecordsResponseCallback;
    :pswitch_536
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 918
    .restart local v2    # "_arg0":Landroid/content/AttributionSource;
    sget-object v3, Landroid/health/connect/aidl/AggregateDataRequestParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/health/connect/aidl/AggregateDataRequestParcel;

    .line 920
    .local v3, "_arg1":Landroid/health/connect/aidl/AggregateDataRequestParcel;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/health/connect/aidl/IAggregateRecordsResponseCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/health/connect/aidl/IAggregateRecordsResponseCallback;

    move-result-object v4

    .line 921
    .local v4, "_arg2":Landroid/health/connect/aidl/IAggregateRecordsResponseCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 922
    invoke-virtual {p0, v2, v3, v4}, Landroid/health/connect/aidl/IHealthConnectService$Stub;->aggregateRecords(Landroid/content/AttributionSource;Landroid/health/connect/aidl/AggregateDataRequestParcel;Landroid/health/connect/aidl/IAggregateRecordsResponseCallback;)V

    .line 923
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 924
    goto/16 :goto_640

    .line 903
    .end local v2    # "_arg0":Landroid/content/AttributionSource;
    .end local v3    # "_arg1":Landroid/health/connect/aidl/AggregateDataRequestParcel;
    .end local v4    # "_arg2":Landroid/health/connect/aidl/IAggregateRecordsResponseCallback;
    :pswitch_559
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 905
    .restart local v2    # "_arg0":Landroid/content/AttributionSource;
    sget-object v3, Landroid/health/connect/aidl/RecordsParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/health/connect/aidl/RecordsParcel;

    .line 907
    .local v3, "_arg1":Landroid/health/connect/aidl/RecordsParcel;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/health/connect/aidl/IInsertRecordsResponseCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/health/connect/aidl/IInsertRecordsResponseCallback;

    move-result-object v4

    .line 908
    .local v4, "_arg2":Landroid/health/connect/aidl/IInsertRecordsResponseCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 909
    invoke-virtual {p0, v2, v3, v4}, Landroid/health/connect/aidl/IHealthConnectService$Stub;->insertRecords(Landroid/content/AttributionSource;Landroid/health/connect/aidl/RecordsParcel;Landroid/health/connect/aidl/IInsertRecordsResponseCallback;)V

    .line 910
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 911
    goto/16 :goto_640

    .line 891
    .end local v2    # "_arg0":Landroid/content/AttributionSource;
    .end local v3    # "_arg1":Landroid/health/connect/aidl/RecordsParcel;
    .end local v4    # "_arg2":Landroid/health/connect/aidl/IInsertRecordsResponseCallback;
    :pswitch_57c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 893
    .local v2, "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    .line 894
    .local v3, "_arg1":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 895
    invoke-virtual {p0, v2, v3}, Landroid/health/connect/aidl/IHealthConnectService$Stub;->getHistoricalAccessStartDateInMilliseconds(Ljava/lang/String;Landroid/os/UserHandle;)J

    move-result-wide v4

    .line 896
    .local v4, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 897
    invoke-virtual {p3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 898
    goto/16 :goto_640

    .line 876
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/os/UserHandle;
    .end local v4    # "_result":J
    :pswitch_597
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 878
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    .line 880
    .restart local v3    # "_arg1":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 882
    .local v4, "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 883
    .local v5, "_arg3":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 884
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/health/connect/aidl/IHealthConnectService$Stub;->setHealthPermissionsUserFixedFlagValue(Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/List;Z)V

    .line 885
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 886
    goto/16 :goto_640

    .line 862
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/os/UserHandle;
    .end local v4    # "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "_arg3":Z
    :pswitch_5b6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 864
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    .line 866
    .restart local v3    # "_arg1":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 867
    .restart local v4    # "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 868
    invoke-virtual {p0, v2, v3, v4}, Landroid/health/connect/aidl/IHealthConnectService$Stub;->getHealthPermissionsFlags(Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/List;)Ljava/util/Map;

    move-result-object v5

    .line 869
    .local v5, "_result":Ljava/util/Map;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 870
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 871
    goto :goto_640

    .line 850
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/os/UserHandle;
    .end local v4    # "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "_result":Ljava/util/Map;
    :pswitch_5d4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 852
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    .line 853
    .restart local v3    # "_arg1":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 854
    invoke-virtual {p0, v2, v3}, Landroid/health/connect/aidl/IHealthConnectService$Stub;->getGrantedHealthPermissions(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v4

    .line 855
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 856
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 857
    goto :goto_640

    .line 837
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/os/UserHandle;
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_5ee
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 839
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 841
    .local v3, "_arg1":Ljava/lang/String;
    sget-object v4, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserHandle;

    .line 842
    .local v4, "_arg2":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 843
    invoke-virtual {p0, v2, v3, v4}, Landroid/health/connect/aidl/IHealthConnectService$Stub;->revokeAllHealthPermissions(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 844
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 845
    goto :goto_640

    .line 822
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Landroid/os/UserHandle;
    :pswitch_608
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 824
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 826
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 828
    .local v4, "_arg2":Ljava/lang/String;
    sget-object v5, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserHandle;

    .line 829
    .local v5, "_arg3":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 830
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/health/connect/aidl/IHealthConnectService$Stub;->revokeHealthPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 831
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 832
    goto :goto_640

    .line 809
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_arg3":Landroid/os/UserHandle;
    :pswitch_626
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 811
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 813
    .restart local v3    # "_arg1":Ljava/lang/String;
    sget-object v4, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserHandle;

    .line 814
    .local v4, "_arg2":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 815
    invoke-virtual {p0, v2, v3, v4}, Landroid/health/connect/aidl/IHealthConnectService$Stub;->grantHealthPermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 816
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 817
    nop

    .line 1478
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Landroid/os/UserHandle;
    :goto_640
    return v1

    nop

    :pswitch_data_642
    .packed-switch 0x1
        :pswitch_626
        :pswitch_608
        :pswitch_5ee
        :pswitch_5d4
        :pswitch_5b6
        :pswitch_597
        :pswitch_57c
        :pswitch_559
        :pswitch_536
        :pswitch_513
        :pswitch_4f0
        :pswitch_4cd
        :pswitch_4aa
        :pswitch_487
        :pswitch_470
        :pswitch_455
        :pswitch_436
        :pswitch_41f
        :pswitch_40c
        :pswitch_3f9
        :pswitch_3e2
        :pswitch_3c7
        :pswitch_3b0
        :pswitch_399
        :pswitch_37a
        :pswitch_35f
        :pswitch_33c
        :pswitch_321
        :pswitch_30e
        :pswitch_2fb
        :pswitch_2ec
        :pswitch_2d9
        :pswitch_2c6
        :pswitch_2ab
        :pswitch_294
        :pswitch_279
        :pswitch_25e
        :pswitch_24f
        :pswitch_234
        :pswitch_211
        :pswitch_1f6
        :pswitch_1d3
        :pswitch_1b4
        :pswitch_191
        :pswitch_172
        :pswitch_151
        :pswitch_12e
        :pswitch_10d
        :pswitch_ea
        :pswitch_c9
        :pswitch_a6
        :pswitch_93
        :pswitch_7c
        :pswitch_69
        :pswitch_4e
        :pswitch_37
        :pswitch_1e
    .end packed-switch
.end method
