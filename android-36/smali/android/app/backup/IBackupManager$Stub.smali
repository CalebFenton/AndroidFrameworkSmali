.class public abstract Landroid/app/backup/IBackupManager$Stub;
.super Landroid/os/Binder;
.source "IBackupManager.java"

# interfaces
.implements Landroid/app/backup/IBackupManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/backup/IBackupManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/backup/IBackupManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.app.backup.IBackupManager"

.field static final greylist-max-o TRANSACTION_acknowledgeFullBackupOrRestore:I = 0x17

.field static final blacklist TRANSACTION_acknowledgeFullBackupOrRestoreForUser:I = 0x16

.field static final greylist-max-o TRANSACTION_adbBackup:I = 0x13

.field static final greylist-max-o TRANSACTION_adbRestore:I = 0x15

.field static final greylist-max-o TRANSACTION_backupNow:I = 0x12

.field static final blacklist TRANSACTION_backupNowForUser:I = 0x11

.field static final blacklist TRANSACTION_beginRestoreSessionForUser:I = 0x2a

.field static final greylist-max-o TRANSACTION_cancelBackups:I = 0x36

.field static final blacklist TRANSACTION_cancelBackupsForUser:I = 0x35

.field static final greylist-max-o TRANSACTION_clearBackupData:I = 0x4

.field static final blacklist TRANSACTION_clearBackupDataForUser:I = 0x3

.field static final greylist-max-o TRANSACTION_dataChanged:I = 0x2

.field static final blacklist TRANSACTION_dataChangedForUser:I = 0x1

.field static final blacklist TRANSACTION_excludeKeysFromRestore:I = 0x39

.field static final blacklist TRANSACTION_filterAppsEligibleForBackupForUser:I = 0x32

.field static final blacklist TRANSACTION_fullTransportBackupForUser:I = 0x14

.field static final blacklist TRANSACTION_getAvailableRestoreTokenForUser:I = 0x30

.field static final greylist-max-o TRANSACTION_getConfigurationIntent:I = 0x24

.field static final blacklist TRANSACTION_getConfigurationIntentForUser:I = 0x23

.field static final greylist-max-o TRANSACTION_getCurrentTransport:I = 0x1a

.field static final blacklist TRANSACTION_getCurrentTransportComponentForUser:I = 0x1b

.field static final blacklist TRANSACTION_getCurrentTransportForUser:I = 0x19

.field static final greylist-max-o TRANSACTION_getDataManagementIntent:I = 0x28

.field static final blacklist TRANSACTION_getDataManagementIntentForUser:I = 0x27

.field static final blacklist TRANSACTION_getDataManagementLabelForUser:I = 0x29

.field static final greylist-max-o TRANSACTION_getDestinationString:I = 0x26

.field static final blacklist TRANSACTION_getDestinationStringForUser:I = 0x25

.field static final greylist-max-o TRANSACTION_getTransportWhitelist:I = 0x1f

.field static final blacklist TRANSACTION_getUserForAncestralSerialNumber:I = 0x37

.field static final greylist-max-o TRANSACTION_hasBackupPassword:I = 0x10

.field static final blacklist TRANSACTION_initializeTransportsForUser:I = 0x5

.field static final blacklist TRANSACTION_isAppEligibleForBackupForUser:I = 0x31

.field static final greylist-max-o TRANSACTION_isBackupEnabled:I = 0xe

.field static final blacklist TRANSACTION_isBackupEnabledForUser:I = 0xd

.field static final greylist-max-o TRANSACTION_isBackupServiceActive:I = 0x2e

.field static final blacklist TRANSACTION_isUserReadyForBackup:I = 0x2f

.field static final blacklist TRANSACTION_listAllTransportComponentsForUser:I = 0x1e

.field static final greylist-max-o TRANSACTION_listAllTransports:I = 0x1d

.field static final blacklist TRANSACTION_listAllTransportsForUser:I = 0x1c

.field static final greylist-max-o TRANSACTION_opComplete:I = 0x2c

.field static final blacklist TRANSACTION_opCompleteForUser:I = 0x2b

.field static final blacklist TRANSACTION_reportDelayedRestoreResult:I = 0x3a

.field static final greylist-max-o TRANSACTION_requestBackup:I = 0x34

.field static final blacklist TRANSACTION_requestBackupForUser:I = 0x33

.field static final greylist-max-o TRANSACTION_restoreAtInstall:I = 0x7

.field static final blacklist TRANSACTION_restoreAtInstallForUser:I = 0x6

.field static final greylist-max-o TRANSACTION_selectBackupTransport:I = 0x21

.field static final blacklist TRANSACTION_selectBackupTransportAsyncForUser:I = 0x22

.field static final blacklist TRANSACTION_selectBackupTransportForUser:I = 0x20

.field static final blacklist TRANSACTION_setAncestralSerialNumber:I = 0x38

.field static final greylist-max-o TRANSACTION_setAutoRestore:I = 0xc

.field static final blacklist TRANSACTION_setAutoRestoreForUser:I = 0xb

.field static final greylist-max-o TRANSACTION_setBackupEnabled:I = 0xa

.field static final blacklist TRANSACTION_setBackupEnabledForUser:I = 0x8

.field static final greylist-max-o TRANSACTION_setBackupPassword:I = 0xf

.field static final greylist-max-o TRANSACTION_setBackupServiceActive:I = 0x2d

.field static final blacklist TRANSACTION_setFrameworkSchedulingEnabledForUser:I = 0x9

.field static final blacklist TRANSACTION_updateTransportAttributesForUser:I = 0x18


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 749
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 750
    const-string v0, "android.app.backup.IBackupManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/backup/IBackupManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 751
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 758
    if-nez p0, :cond_4

    .line 759
    const/4 v0, 0x0

    return-object v0

    .line 761
    :cond_4
    const-string v0, "android.app.backup.IBackupManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 762
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/app/backup/IBackupManager;

    if-eqz v1, :cond_14

    .line 763
    move-object v1, v0

    check-cast v1, Landroid/app/backup/IBackupManager;

    return-object v1

    .line 765
    :cond_14
    new-instance v1, Landroid/app/backup/IBackupManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/backup/IBackupManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 774
    packed-switch p0, :pswitch_data_d2

    .line 1010
    const/4 v0, 0x0

    return-object v0

    .line 1006
    :pswitch_5
    const-string/jumbo v0, "reportDelayedRestoreResult"

    return-object v0

    .line 1002
    :pswitch_9
    const-string v0, "excludeKeysFromRestore"

    return-object v0

    .line 998
    :pswitch_c
    const-string/jumbo v0, "setAncestralSerialNumber"

    return-object v0

    .line 994
    :pswitch_10
    const-string/jumbo v0, "getUserForAncestralSerialNumber"

    return-object v0

    .line 990
    :pswitch_14
    const-string v0, "cancelBackups"

    return-object v0

    .line 986
    :pswitch_17
    const-string v0, "cancelBackupsForUser"

    return-object v0

    .line 982
    :pswitch_1a
    const-string/jumbo v0, "requestBackup"

    return-object v0

    .line 978
    :pswitch_1e
    const-string/jumbo v0, "requestBackupForUser"

    return-object v0

    .line 974
    :pswitch_22
    const-string v0, "filterAppsEligibleForBackupForUser"

    return-object v0

    .line 970
    :pswitch_25
    const-string/jumbo v0, "isAppEligibleForBackupForUser"

    return-object v0

    .line 966
    :pswitch_29
    const-string v0, "getAvailableRestoreTokenForUser"

    return-object v0

    .line 962
    :pswitch_2c
    const-string/jumbo v0, "isUserReadyForBackup"

    return-object v0

    .line 958
    :pswitch_30
    const-string/jumbo v0, "isBackupServiceActive"

    return-object v0

    .line 954
    :pswitch_34
    const-string/jumbo v0, "setBackupServiceActive"

    return-object v0

    .line 950
    :pswitch_38
    const-string/jumbo v0, "opComplete"

    return-object v0

    .line 946
    :pswitch_3c
    const-string/jumbo v0, "opCompleteForUser"

    return-object v0

    .line 942
    :pswitch_40
    const-string v0, "beginRestoreSessionForUser"

    return-object v0

    .line 938
    :pswitch_43
    const-string v0, "getDataManagementLabelForUser"

    return-object v0

    .line 934
    :pswitch_46
    const-string v0, "getDataManagementIntent"

    return-object v0

    .line 930
    :pswitch_49
    const-string v0, "getDataManagementIntentForUser"

    return-object v0

    .line 926
    :pswitch_4c
    const-string v0, "getDestinationString"

    return-object v0

    .line 922
    :pswitch_4f
    const-string v0, "getDestinationStringForUser"

    return-object v0

    .line 918
    :pswitch_52
    const-string v0, "getConfigurationIntent"

    return-object v0

    .line 914
    :pswitch_55
    const-string v0, "getConfigurationIntentForUser"

    return-object v0

    .line 910
    :pswitch_58
    const-string/jumbo v0, "selectBackupTransportAsyncForUser"

    return-object v0

    .line 906
    :pswitch_5c
    const-string/jumbo v0, "selectBackupTransport"

    return-object v0

    .line 902
    :pswitch_60
    const-string/jumbo v0, "selectBackupTransportForUser"

    return-object v0

    .line 898
    :pswitch_64
    const-string/jumbo v0, "getTransportWhitelist"

    return-object v0

    .line 894
    :pswitch_68
    const-string/jumbo v0, "listAllTransportComponentsForUser"

    return-object v0

    .line 890
    :pswitch_6c
    const-string/jumbo v0, "listAllTransports"

    return-object v0

    .line 886
    :pswitch_70
    const-string/jumbo v0, "listAllTransportsForUser"

    return-object v0

    .line 882
    :pswitch_74
    const-string v0, "getCurrentTransportComponentForUser"

    return-object v0

    .line 878
    :pswitch_77
    const-string v0, "getCurrentTransport"

    return-object v0

    .line 874
    :pswitch_7a
    const-string v0, "getCurrentTransportForUser"

    return-object v0

    .line 870
    :pswitch_7d
    const-string/jumbo v0, "updateTransportAttributesForUser"

    return-object v0

    .line 866
    :pswitch_81
    const-string v0, "acknowledgeFullBackupOrRestore"

    return-object v0

    .line 862
    :pswitch_84
    const-string v0, "acknowledgeFullBackupOrRestoreForUser"

    return-object v0

    .line 858
    :pswitch_87
    const-string v0, "adbRestore"

    return-object v0

    .line 854
    :pswitch_8a
    const-string v0, "fullTransportBackupForUser"

    return-object v0

    .line 850
    :pswitch_8d
    const-string v0, "adbBackup"

    return-object v0

    .line 846
    :pswitch_90
    const-string v0, "backupNow"

    return-object v0

    .line 842
    :pswitch_93
    const-string v0, "backupNowForUser"

    return-object v0

    .line 838
    :pswitch_96
    const-string/jumbo v0, "hasBackupPassword"

    return-object v0

    .line 834
    :pswitch_9a
    const-string/jumbo v0, "setBackupPassword"

    return-object v0

    .line 830
    :pswitch_9e
    const-string/jumbo v0, "isBackupEnabled"

    return-object v0

    .line 826
    :pswitch_a2
    const-string/jumbo v0, "isBackupEnabledForUser"

    return-object v0

    .line 822
    :pswitch_a6
    const-string/jumbo v0, "setAutoRestore"

    return-object v0

    .line 818
    :pswitch_aa
    const-string/jumbo v0, "setAutoRestoreForUser"

    return-object v0

    .line 814
    :pswitch_ae
    const-string/jumbo v0, "setBackupEnabled"

    return-object v0

    .line 810
    :pswitch_b2
    const-string/jumbo v0, "setFrameworkSchedulingEnabledForUser"

    return-object v0

    .line 806
    :pswitch_b6
    const-string/jumbo v0, "setBackupEnabledForUser"

    return-object v0

    .line 802
    :pswitch_ba
    const-string/jumbo v0, "restoreAtInstall"

    return-object v0

    .line 798
    :pswitch_be
    const-string/jumbo v0, "restoreAtInstallForUser"

    return-object v0

    .line 794
    :pswitch_c2
    const-string/jumbo v0, "initializeTransportsForUser"

    return-object v0

    .line 790
    :pswitch_c6
    const-string v0, "clearBackupData"

    return-object v0

    .line 786
    :pswitch_c9
    const-string v0, "clearBackupDataForUser"

    return-object v0

    .line 782
    :pswitch_cc
    const-string v0, "dataChanged"

    return-object v0

    .line 778
    :pswitch_cf
    const-string v0, "dataChangedForUser"

    return-object v0

    :pswitch_data_d2
    .packed-switch 0x1
        :pswitch_cf
        :pswitch_cc
        :pswitch_c9
        :pswitch_c6
        :pswitch_c2
        :pswitch_be
        :pswitch_ba
        :pswitch_b6
        :pswitch_b2
        :pswitch_ae
        :pswitch_aa
        :pswitch_a6
        :pswitch_a2
        :pswitch_9e
        :pswitch_9a
        :pswitch_96
        :pswitch_93
        :pswitch_90
        :pswitch_8d
        :pswitch_8a
        :pswitch_87
        :pswitch_84
        :pswitch_81
        :pswitch_7d
        :pswitch_7a
        :pswitch_77
        :pswitch_74
        :pswitch_70
        :pswitch_6c
        :pswitch_68
        :pswitch_64
        :pswitch_60
        :pswitch_5c
        :pswitch_58
        :pswitch_55
        :pswitch_52
        :pswitch_4f
        :pswitch_4c
        :pswitch_49
        :pswitch_46
        :pswitch_43
        :pswitch_40
        :pswitch_3c
        :pswitch_38
        :pswitch_34
        :pswitch_30
        :pswitch_2c
        :pswitch_29
        :pswitch_25
        :pswitch_22
        :pswitch_1e
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_10
        :pswitch_c
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 769
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 3314
    const/16 v0, 0x39

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 1017
    invoke-static {p1}, Landroid/app/backup/IBackupManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 22
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1021
    move-object/from16 v0, p0

    move/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    const-string v15, "android.app.backup.IBackupManager"

    .line 1022
    .local v15, "descriptor":Ljava/lang/String;
    const/4 v8, 0x1

    if-lt v12, v8, :cond_15

    const v1, 0xffffff

    if-gt v12, v1, :cond_15

    .line 1023
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1025
    :cond_15
    const v1, 0x5f4e5446

    if-ne v12, v1, :cond_1e

    .line 1026
    invoke-virtual {v14, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1027
    return v8

    .line 1029
    :cond_1e
    packed-switch v12, :pswitch_data_596

    .line 1699
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 1689
    :pswitch_26
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1691
    .local v1, "_arg0":Ljava/lang/String;
    sget-object v2, Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1692
    .local v2, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;>;"
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1693
    invoke-virtual {v0, v1, v2}, Landroid/app/backup/IBackupManager$Stub;->reportDelayedRestoreResult(Ljava/lang/String;Ljava/util/List;)V

    .line 1694
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1695
    move/from16 v16, v8

    goto/16 :goto_595

    .line 1678
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;>;"
    :pswitch_3d
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1680
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 1681
    .local v2, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1682
    invoke-virtual {v0, v1, v2}, Landroid/app/backup/IBackupManager$Stub;->excludeKeysFromRestore(Ljava/lang/String;Ljava/util/List;)V

    .line 1683
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1684
    move/from16 v16, v8

    goto/16 :goto_595

    .line 1669
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_52
    invoke-virtual {v13}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 1670
    .local v1, "_arg0":J
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1671
    invoke-virtual {v0, v1, v2}, Landroid/app/backup/IBackupManager$Stub;->setAncestralSerialNumber(J)V

    .line 1672
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1673
    move/from16 v16, v8

    goto/16 :goto_595

    .line 1659
    .end local v1    # "_arg0":J
    :pswitch_63
    invoke-virtual {v13}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 1660
    .restart local v1    # "_arg0":J
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1661
    invoke-virtual {v0, v1, v2}, Landroid/app/backup/IBackupManager$Stub;->getUserForAncestralSerialNumber(J)Landroid/os/UserHandle;

    move-result-object v3

    .line 1662
    .local v3, "_result":Landroid/os/UserHandle;
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1663
    invoke-virtual {v14, v3, v8}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1664
    move/from16 v16, v8

    goto/16 :goto_595

    .line 1652
    .end local v1    # "_arg0":J
    .end local v3    # "_result":Landroid/os/UserHandle;
    :pswitch_78
    invoke-virtual {v0}, Landroid/app/backup/IBackupManager$Stub;->cancelBackups()V

    .line 1653
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1654
    move/from16 v16, v8

    goto/16 :goto_595

    .line 1644
    :pswitch_82
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1645
    .local v1, "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1646
    invoke-virtual {v0, v1}, Landroid/app/backup/IBackupManager$Stub;->cancelBackupsForUser(I)V

    .line 1647
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1648
    move/from16 v16, v8

    goto/16 :goto_595

    .line 1628
    .end local v1    # "_arg0":I
    :pswitch_93
    invoke-virtual {v13}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 1630
    .local v1, "_arg0":[Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/backup/IBackupObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupObserver;

    move-result-object v2

    .line 1632
    .local v2, "_arg1":Landroid/app/backup/IBackupObserver;
    invoke-virtual {v13}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/backup/IBackupManagerMonitor$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v3

    .line 1634
    .local v3, "_arg2":Landroid/app/backup/IBackupManagerMonitor;
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1635
    .local v4, "_arg3":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1636
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/backup/IBackupManager$Stub;->requestBackup([Ljava/lang/String;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;I)I

    move-result v5

    .line 1637
    .local v5, "_result":I
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1638
    invoke-virtual {v14, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1639
    move/from16 v16, v8

    goto/16 :goto_595

    .line 1610
    .end local v1    # "_arg0":[Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/app/backup/IBackupObserver;
    .end local v3    # "_arg2":Landroid/app/backup/IBackupManagerMonitor;
    .end local v4    # "_arg3":I
    .end local v5    # "_result":I
    :pswitch_bc
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1612
    .local v1, "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 1614
    .local v2, "_arg1":[Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/backup/IBackupObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupObserver;

    move-result-object v3

    .line 1616
    .local v3, "_arg2":Landroid/app/backup/IBackupObserver;
    invoke-virtual {v13}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/backup/IBackupManagerMonitor$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v4

    .line 1618
    .local v4, "_arg3":Landroid/app/backup/IBackupManagerMonitor;
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1619
    .local v5, "_arg4":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1620
    invoke-virtual/range {v0 .. v5}, Landroid/app/backup/IBackupManager$Stub;->requestBackupForUser(I[Ljava/lang/String;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;I)I

    move-result v6

    .line 1621
    .local v6, "_result":I
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1622
    invoke-virtual {v14, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1623
    move/from16 v16, v8

    goto/16 :goto_595

    .line 1598
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/app/backup/IBackupObserver;
    .end local v4    # "_arg3":Landroid/app/backup/IBackupManagerMonitor;
    .end local v5    # "_arg4":I
    .end local v6    # "_result":I
    :pswitch_e9
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1600
    .restart local v1    # "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 1601
    .restart local v2    # "_arg1":[Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1602
    invoke-virtual {v0, v1, v2}, Landroid/app/backup/IBackupManager$Stub;->filterAppsEligibleForBackupForUser(I[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1603
    .local v3, "_result":[Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1604
    invoke-virtual {v14, v3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1605
    move/from16 v16, v8

    goto/16 :goto_595

    .line 1586
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[Ljava/lang/String;
    .end local v3    # "_result":[Ljava/lang/String;
    :pswitch_102
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1588
    .restart local v1    # "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1589
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1590
    invoke-virtual {v0, v1, v2}, Landroid/app/backup/IBackupManager$Stub;->isAppEligibleForBackupForUser(ILjava/lang/String;)Z

    move-result v3

    .line 1591
    .local v3, "_result":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1592
    invoke-virtual {v14, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1593
    move/from16 v16, v8

    goto/16 :goto_595

    .line 1574
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_11b
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1576
    .restart local v1    # "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1577
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1578
    invoke-virtual {v0, v1, v2}, Landroid/app/backup/IBackupManager$Stub;->getAvailableRestoreTokenForUser(ILjava/lang/String;)J

    move-result-wide v3

    .line 1579
    .local v3, "_result":J
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1580
    invoke-virtual {v14, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 1581
    move/from16 v16, v8

    goto/16 :goto_595

    .line 1564
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":J
    :pswitch_134
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1565
    .restart local v1    # "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1566
    invoke-virtual {v0, v1}, Landroid/app/backup/IBackupManager$Stub;->isUserReadyForBackup(I)Z

    move-result v2

    .line 1567
    .local v2, "_result":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1568
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1569
    move/from16 v16, v8

    goto/16 :goto_595

    .line 1554
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Z
    :pswitch_149
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1555
    .restart local v1    # "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1556
    invoke-virtual {v0, v1}, Landroid/app/backup/IBackupManager$Stub;->isBackupServiceActive(I)Z

    move-result v2

    .line 1557
    .restart local v2    # "_result":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1558
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1559
    move/from16 v16, v8

    goto/16 :goto_595

    .line 1543
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Z
    :pswitch_15e
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1545
    .restart local v1    # "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1546
    .local v2, "_arg1":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1547
    invoke-virtual {v0, v1, v2}, Landroid/app/backup/IBackupManager$Stub;->setBackupServiceActive(IZ)V

    .line 1548
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1549
    move/from16 v16, v8

    goto/16 :goto_595

    .line 1532
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Z
    :pswitch_173
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1534
    .restart local v1    # "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 1535
    .local v2, "_arg1":J
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1536
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/backup/IBackupManager$Stub;->opComplete(IJ)V

    .line 1537
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1538
    move/from16 v16, v8

    goto/16 :goto_595

    .line 1519
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":J
    :pswitch_188
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1521
    .restart local v1    # "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1523
    .local v2, "_arg1":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 1524
    .local v3, "_arg2":J
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1525
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/backup/IBackupManager$Stub;->opCompleteForUser(IIJ)V

    .line 1526
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1527
    move/from16 v16, v8

    goto/16 :goto_595

    .line 1505
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":J
    :pswitch_1a1
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1507
    .restart local v1    # "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1509
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1510
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1511
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/backup/IBackupManager$Stub;->beginRestoreSessionForUser(ILjava/lang/String;Ljava/lang/String;)Landroid/app/backup/IRestoreSession;

    move-result-object v4

    .line 1512
    .local v4, "_result":Landroid/app/backup/IRestoreSession;
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1513
    invoke-virtual {v14, v4}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 1514
    move/from16 v16, v8

    goto/16 :goto_595

    .line 1487
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_result":Landroid/app/backup/IRestoreSession;
    :pswitch_1be
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1489
    .restart local v1    # "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1490
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1491
    invoke-virtual {v0, v1, v2}, Landroid/app/backup/IBackupManager$Stub;->getDataManagementLabelForUser(ILjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1492
    .local v3, "_result":Ljava/lang/CharSequence;
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1493
    if-eqz v3, :cond_1dc

    .line 1494
    invoke-virtual {v14, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1495
    invoke-static {v3, v14, v8}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    move/from16 v16, v8

    goto/16 :goto_595

    .line 1498
    :cond_1dc
    const/4 v4, 0x0

    invoke-virtual {v14, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1500
    move/from16 v16, v8

    goto/16 :goto_595

    .line 1477
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/CharSequence;
    :pswitch_1e4
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1478
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1479
    invoke-virtual {v0, v1}, Landroid/app/backup/IBackupManager$Stub;->getDataManagementIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 1480
    .local v2, "_result":Landroid/content/Intent;
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1481
    invoke-virtual {v14, v2, v8}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1482
    move/from16 v16, v8

    goto/16 :goto_595

    .line 1465
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Landroid/content/Intent;
    :pswitch_1f9
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1467
    .local v1, "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1468
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1469
    invoke-virtual {v0, v1, v2}, Landroid/app/backup/IBackupManager$Stub;->getDataManagementIntentForUser(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 1470
    .local v3, "_result":Landroid/content/Intent;
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1471
    invoke-virtual {v14, v3, v8}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1472
    move/from16 v16, v8

    goto/16 :goto_595

    .line 1455
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Landroid/content/Intent;
    :pswitch_212
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1456
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1457
    invoke-virtual {v0, v1}, Landroid/app/backup/IBackupManager$Stub;->getDestinationString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1458
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1459
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1460
    move/from16 v16, v8

    goto/16 :goto_595

    .line 1443
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_227
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1445
    .local v1, "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1446
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1447
    invoke-virtual {v0, v1, v2}, Landroid/app/backup/IBackupManager$Stub;->getDestinationStringForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1448
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1449
    invoke-virtual {v14, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1450
    move/from16 v16, v8

    goto/16 :goto_595

    .line 1433
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_240
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1434
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1435
    invoke-virtual {v0, v1}, Landroid/app/backup/IBackupManager$Stub;->getConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 1436
    .local v2, "_result":Landroid/content/Intent;
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1437
    invoke-virtual {v14, v2, v8}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1438
    move/from16 v16, v8

    goto/16 :goto_595

    .line 1421
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Landroid/content/Intent;
    :pswitch_255
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1423
    .local v1, "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1424
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1425
    invoke-virtual {v0, v1, v2}, Landroid/app/backup/IBackupManager$Stub;->getConfigurationIntentForUser(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 1426
    .local v3, "_result":Landroid/content/Intent;
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1427
    invoke-virtual {v14, v3, v8}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1428
    move/from16 v16, v8

    goto/16 :goto_595

    .line 1408
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Landroid/content/Intent;
    :pswitch_26e
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1410
    .restart local v1    # "_arg0":I
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 1412
    .local v2, "_arg1":Landroid/content/ComponentName;
    invoke-virtual {v13}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/backup/ISelectBackupTransportCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/ISelectBackupTransportCallback;

    move-result-object v3

    .line 1413
    .local v3, "_arg2":Landroid/app/backup/ISelectBackupTransportCallback;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1414
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/backup/IBackupManager$Stub;->selectBackupTransportAsyncForUser(ILandroid/content/ComponentName;Landroid/app/backup/ISelectBackupTransportCallback;)V

    .line 1415
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1416
    move/from16 v16, v8

    goto/16 :goto_595

    .line 1398
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/content/ComponentName;
    .end local v3    # "_arg2":Landroid/app/backup/ISelectBackupTransportCallback;
    :pswitch_28f
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1399
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1400
    invoke-virtual {v0, v1}, Landroid/app/backup/IBackupManager$Stub;->selectBackupTransport(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1401
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1402
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1403
    move/from16 v16, v8

    goto/16 :goto_595

    .line 1386
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_2a4
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1388
    .local v1, "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1389
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1390
    invoke-virtual {v0, v1, v2}, Landroid/app/backup/IBackupManager$Stub;->selectBackupTransportForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1391
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1392
    invoke-virtual {v14, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1393
    move/from16 v16, v8

    goto/16 :goto_595

    .line 1378
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_2bd
    invoke-virtual {v0}, Landroid/app/backup/IBackupManager$Stub;->getTransportWhitelist()[Ljava/lang/String;

    move-result-object v1

    .line 1379
    .local v1, "_result":[Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1380
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1381
    move/from16 v16, v8

    goto/16 :goto_595

    .line 1369
    .end local v1    # "_result":[Ljava/lang/String;
    :pswitch_2cb
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1370
    .local v1, "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1371
    invoke-virtual {v0, v1}, Landroid/app/backup/IBackupManager$Stub;->listAllTransportComponentsForUser(I)[Landroid/content/ComponentName;

    move-result-object v2

    .line 1372
    .local v2, "_result":[Landroid/content/ComponentName;
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1373
    invoke-virtual {v14, v2, v8}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1374
    move/from16 v16, v8

    goto/16 :goto_595

    .line 1361
    .end local v1    # "_arg0":I
    .end local v2    # "_result":[Landroid/content/ComponentName;
    :pswitch_2e0
    invoke-virtual {v0}, Landroid/app/backup/IBackupManager$Stub;->listAllTransports()[Ljava/lang/String;

    move-result-object v1

    .line 1362
    .local v1, "_result":[Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1363
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1364
    move/from16 v16, v8

    goto/16 :goto_595

    .line 1352
    .end local v1    # "_result":[Ljava/lang/String;
    :pswitch_2ee
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1353
    .local v1, "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1354
    invoke-virtual {v0, v1}, Landroid/app/backup/IBackupManager$Stub;->listAllTransportsForUser(I)[Ljava/lang/String;

    move-result-object v2

    .line 1355
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1356
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1357
    move/from16 v16, v8

    goto/16 :goto_595

    .line 1342
    .end local v1    # "_arg0":I
    .end local v2    # "_result":[Ljava/lang/String;
    :pswitch_303
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1343
    .restart local v1    # "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1344
    invoke-virtual {v0, v1}, Landroid/app/backup/IBackupManager$Stub;->getCurrentTransportComponentForUser(I)Landroid/content/ComponentName;

    move-result-object v2

    .line 1345
    .local v2, "_result":Landroid/content/ComponentName;
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1346
    invoke-virtual {v14, v2, v8}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1347
    move/from16 v16, v8

    goto/16 :goto_595

    .line 1334
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Landroid/content/ComponentName;
    :pswitch_318
    invoke-virtual {v0}, Landroid/app/backup/IBackupManager$Stub;->getCurrentTransport()Ljava/lang/String;

    move-result-object v1

    .line 1335
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1336
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1337
    move/from16 v16, v8

    goto/16 :goto_595

    .line 1325
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_326
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1326
    .local v1, "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1327
    invoke-virtual {v0, v1}, Landroid/app/backup/IBackupManager$Stub;->getCurrentTransportForUser(I)Ljava/lang/String;

    move-result-object v2

    .line 1328
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1329
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1330
    move/from16 v16, v8

    goto/16 :goto_595

    .line 1304
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_33b
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1306
    .restart local v1    # "_arg0":I
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 1308
    .local v2, "_arg1":Landroid/content/ComponentName;
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1310
    .local v3, "_arg2":Ljava/lang/String;
    sget-object v4, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    .line 1312
    .local v4, "_arg3":Landroid/content/Intent;
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1314
    .local v5, "_arg4":Ljava/lang/String;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v6}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    .line 1316
    .local v6, "_arg5":Landroid/content/Intent;
    sget-object v7, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v7}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    .line 1317
    .local v7, "_arg6":Ljava/lang/CharSequence;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1318
    invoke-virtual/range {v0 .. v7}, Landroid/app/backup/IBackupManager$Stub;->updateTransportAttributesForUser(ILandroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/CharSequence;)V

    .line 1319
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1320
    move-object/from16 v0, p0

    move/from16 v16, v8

    goto/16 :goto_595

    .line 1287
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/content/ComponentName;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Landroid/content/Intent;
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_arg5":Landroid/content/Intent;
    .end local v7    # "_arg6":Ljava/lang/CharSequence;
    :pswitch_376
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1289
    .restart local v1    # "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1291
    .local v2, "_arg1":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1293
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1295
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/backup/IFullBackupRestoreObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IFullBackupRestoreObserver;

    move-result-object v5

    .line 1296
    .local v5, "_arg4":Landroid/app/backup/IFullBackupRestoreObserver;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1297
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/app/backup/IBackupManager$Stub;->acknowledgeFullBackupOrRestore(IZLjava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;)V

    .line 1298
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1299
    move/from16 v16, v8

    goto/16 :goto_595

    .line 1268
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Landroid/app/backup/IFullBackupRestoreObserver;
    :pswitch_39d
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1270
    .restart local v1    # "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1272
    .local v2, "_arg1":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1274
    .local v3, "_arg2":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1276
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1278
    .local v5, "_arg4":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/backup/IFullBackupRestoreObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IFullBackupRestoreObserver;

    move-result-object v6

    .line 1279
    .local v6, "_arg5":Landroid/app/backup/IFullBackupRestoreObserver;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1280
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/app/backup/IBackupManager$Stub;->acknowledgeFullBackupOrRestoreForUser(IIZLjava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;)V

    .line 1281
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1282
    move/from16 v16, v8

    goto/16 :goto_595

    .line 1257
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Z
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_arg5":Landroid/app/backup/IFullBackupRestoreObserver;
    :pswitch_3c8
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1259
    .restart local v1    # "_arg0":I
    sget-object v2, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    .line 1260
    .local v2, "_arg1":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1261
    invoke-virtual {v0, v1, v2}, Landroid/app/backup/IBackupManager$Stub;->adbRestore(ILandroid/os/ParcelFileDescriptor;)V

    .line 1262
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1263
    move/from16 v16, v8

    goto/16 :goto_595

    .line 1246
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/os/ParcelFileDescriptor;
    :pswitch_3e1
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1248
    .restart local v1    # "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 1249
    .local v2, "_arg1":[Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1250
    invoke-virtual {v0, v1, v2}, Landroid/app/backup/IBackupManager$Stub;->fullTransportBackupForUser(I[Ljava/lang/String;)V

    .line 1251
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1252
    move/from16 v16, v8

    goto/16 :goto_595

    .line 1217
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[Ljava/lang/String;
    :pswitch_3f6
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1219
    .restart local v1    # "_arg0":I
    sget-object v2, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    .line 1221
    .local v2, "_arg1":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1223
    .restart local v3    # "_arg2":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 1225
    .local v4, "_arg3":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 1227
    .local v5, "_arg4":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    .line 1229
    .local v6, "_arg5":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v7

    .line 1231
    .local v7, "_arg6":Z
    move v9, v8

    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v8

    .line 1233
    .local v8, "_arg7":Z
    move v10, v9

    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v9

    .line 1235
    .local v9, "_arg8":Z
    move v11, v10

    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v10

    .line 1237
    .local v10, "_arg9":Z
    move/from16 v16, v11

    invoke-virtual {v13}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v11

    .line 1238
    .local v11, "_arg10":[Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1239
    invoke-virtual/range {v0 .. v11}, Landroid/app/backup/IBackupManager$Stub;->adbBackup(ILandroid/os/ParcelFileDescriptor;ZZZZZZZZ[Ljava/lang/String;)V

    .line 1240
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1241
    goto/16 :goto_595

    .line 1210
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "_arg2":Z
    .end local v4    # "_arg3":Z
    .end local v5    # "_arg4":Z
    .end local v6    # "_arg5":Z
    .end local v7    # "_arg6":Z
    .end local v8    # "_arg7":Z
    .end local v9    # "_arg8":Z
    .end local v10    # "_arg9":Z
    .end local v11    # "_arg10":[Ljava/lang/String;
    :pswitch_436
    move/from16 v16, v8

    invoke-virtual {v0}, Landroid/app/backup/IBackupManager$Stub;->backupNow()V

    .line 1211
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1212
    goto/16 :goto_595

    .line 1202
    :pswitch_440
    move/from16 v16, v8

    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1203
    .restart local v1    # "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1204
    invoke-virtual {v0, v1}, Landroid/app/backup/IBackupManager$Stub;->backupNowForUser(I)V

    .line 1205
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1206
    goto/16 :goto_595

    .line 1194
    .end local v1    # "_arg0":I
    :pswitch_451
    move/from16 v16, v8

    invoke-virtual {v0}, Landroid/app/backup/IBackupManager$Stub;->hasBackupPassword()Z

    move-result v1

    .line 1195
    .local v1, "_result":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1196
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1197
    goto/16 :goto_595

    .line 1183
    .end local v1    # "_result":Z
    :pswitch_45f
    move/from16 v16, v8

    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1185
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1186
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1187
    invoke-virtual {v0, v1, v2}, Landroid/app/backup/IBackupManager$Stub;->setBackupPassword(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 1188
    .local v3, "_result":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1189
    invoke-virtual {v14, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1190
    goto/16 :goto_595

    .line 1175
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_478
    move/from16 v16, v8

    invoke-virtual {v0}, Landroid/app/backup/IBackupManager$Stub;->isBackupEnabled()Z

    move-result v1

    .line 1176
    .local v1, "_result":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1177
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1178
    goto/16 :goto_595

    .line 1166
    .end local v1    # "_result":Z
    :pswitch_486
    move/from16 v16, v8

    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1167
    .local v1, "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1168
    invoke-virtual {v0, v1}, Landroid/app/backup/IBackupManager$Stub;->isBackupEnabledForUser(I)Z

    move-result v2

    .line 1169
    .local v2, "_result":Z
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1170
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1171
    goto/16 :goto_595

    .line 1157
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Z
    :pswitch_49b
    move/from16 v16, v8

    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1158
    .local v1, "_arg0":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1159
    invoke-virtual {v0, v1}, Landroid/app/backup/IBackupManager$Stub;->setAutoRestore(Z)V

    .line 1160
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1161
    goto/16 :goto_595

    .line 1146
    .end local v1    # "_arg0":Z
    :pswitch_4ac
    move/from16 v16, v8

    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1148
    .local v1, "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1149
    .local v2, "_arg1":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1150
    invoke-virtual {v0, v1, v2}, Landroid/app/backup/IBackupManager$Stub;->setAutoRestoreForUser(IZ)V

    .line 1151
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1152
    goto/16 :goto_595

    .line 1137
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Z
    :pswitch_4c1
    move/from16 v16, v8

    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1138
    .local v1, "_arg0":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1139
    invoke-virtual {v0, v1}, Landroid/app/backup/IBackupManager$Stub;->setBackupEnabled(Z)V

    .line 1140
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1141
    goto/16 :goto_595

    .line 1126
    .end local v1    # "_arg0":Z
    :pswitch_4d2
    move/from16 v16, v8

    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1128
    .local v1, "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1129
    .restart local v2    # "_arg1":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1130
    invoke-virtual {v0, v1, v2}, Landroid/app/backup/IBackupManager$Stub;->setFrameworkSchedulingEnabledForUser(IZ)V

    .line 1131
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1132
    goto/16 :goto_595

    .line 1115
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Z
    :pswitch_4e7
    move/from16 v16, v8

    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1117
    .restart local v1    # "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1118
    .restart local v2    # "_arg1":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1119
    invoke-virtual {v0, v1, v2}, Landroid/app/backup/IBackupManager$Stub;->setBackupEnabledForUser(IZ)V

    .line 1120
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1121
    goto/16 :goto_595

    .line 1104
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Z
    :pswitch_4fc
    move/from16 v16, v8

    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1106
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1107
    .local v2, "_arg1":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1108
    invoke-virtual {v0, v1, v2}, Landroid/app/backup/IBackupManager$Stub;->restoreAtInstall(Ljava/lang/String;I)V

    .line 1109
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1110
    goto/16 :goto_595

    .line 1091
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :pswitch_511
    move/from16 v16, v8

    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1093
    .local v1, "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1095
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1096
    .local v3, "_arg2":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1097
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/backup/IBackupManager$Stub;->restoreAtInstallForUser(ILjava/lang/String;I)V

    .line 1098
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1099
    goto :goto_595

    .line 1078
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    :pswitch_529
    move/from16 v16, v8

    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1080
    .restart local v1    # "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 1082
    .local v2, "_arg1":[Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/backup/IBackupObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupObserver;

    move-result-object v3

    .line 1083
    .local v3, "_arg2":Landroid/app/backup/IBackupObserver;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1084
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/backup/IBackupManager$Stub;->initializeTransportsForUser(I[Ljava/lang/String;Landroid/app/backup/IBackupObserver;)V

    .line 1085
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1086
    goto :goto_595

    .line 1067
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/app/backup/IBackupObserver;
    :pswitch_545
    move/from16 v16, v8

    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1069
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1070
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1071
    invoke-virtual {v0, v1, v2}, Landroid/app/backup/IBackupManager$Stub;->clearBackupData(Ljava/lang/String;Ljava/lang/String;)V

    .line 1072
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1073
    goto :goto_595

    .line 1054
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    :pswitch_559
    move/from16 v16, v8

    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1056
    .local v1, "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1058
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1059
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1060
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/backup/IBackupManager$Stub;->clearBackupDataForUser(ILjava/lang/String;Ljava/lang/String;)V

    .line 1061
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1062
    goto :goto_595

    .line 1045
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    :pswitch_571
    move/from16 v16, v8

    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1046
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1047
    invoke-virtual {v0, v1}, Landroid/app/backup/IBackupManager$Stub;->dataChanged(Ljava/lang/String;)V

    .line 1048
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1049
    goto :goto_595

    .line 1034
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_581
    move/from16 v16, v8

    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1036
    .local v1, "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1037
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1038
    invoke-virtual {v0, v1, v2}, Landroid/app/backup/IBackupManager$Stub;->dataChangedForUser(ILjava/lang/String;)V

    .line 1039
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 1040
    nop

    .line 1702
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    :goto_595
    return v16

    :pswitch_data_596
    .packed-switch 0x1
        :pswitch_581
        :pswitch_571
        :pswitch_559
        :pswitch_545
        :pswitch_529
        :pswitch_511
        :pswitch_4fc
        :pswitch_4e7
        :pswitch_4d2
        :pswitch_4c1
        :pswitch_4ac
        :pswitch_49b
        :pswitch_486
        :pswitch_478
        :pswitch_45f
        :pswitch_451
        :pswitch_440
        :pswitch_436
        :pswitch_3f6
        :pswitch_3e1
        :pswitch_3c8
        :pswitch_39d
        :pswitch_376
        :pswitch_33b
        :pswitch_326
        :pswitch_318
        :pswitch_303
        :pswitch_2ee
        :pswitch_2e0
        :pswitch_2cb
        :pswitch_2bd
        :pswitch_2a4
        :pswitch_28f
        :pswitch_26e
        :pswitch_255
        :pswitch_240
        :pswitch_227
        :pswitch_212
        :pswitch_1f9
        :pswitch_1e4
        :pswitch_1be
        :pswitch_1a1
        :pswitch_188
        :pswitch_173
        :pswitch_15e
        :pswitch_149
        :pswitch_134
        :pswitch_11b
        :pswitch_102
        :pswitch_e9
        :pswitch_bc
        :pswitch_93
        :pswitch_82
        :pswitch_78
        :pswitch_63
        :pswitch_52
        :pswitch_3d
        :pswitch_26
    .end packed-switch
.end method
