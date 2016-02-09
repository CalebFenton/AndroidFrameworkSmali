.class public abstract Landroid/content/pm/IPackageManager$Stub;
.super Landroid/os/Binder;
.source "IPackageManager.java"

# interfaces
.implements Landroid/content/pm/IPackageManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/IPackageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/IPackageManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.content.pm.IPackageManager"

.field static final TRANSACTION_activitySupportsIntent:I = 0xe

.field static final TRANSACTION_addCrossProfileIntentFilter:I = 0x4b

.field static final TRANSACTION_addOnPermissionsChangeListener:I = 0x8c

.field static final TRANSACTION_addPackageToPreferred:I = 0x3f

.field static final TRANSACTION_addPermission:I = 0x14

.field static final TRANSACTION_addPermissionAsync:I = 0x6f

.field static final TRANSACTION_addPersistentPreferredActivity:I = 0x49

.field static final TRANSACTION_addPreferredActivity:I = 0x45

.field static final TRANSACTION_canForwardTo:I = 0x28

.field static final TRANSACTION_canonicalToCurrentPackageNames:I = 0x7

.field static final TRANSACTION_checkPermission:I = 0x12

.field static final TRANSACTION_checkSignatures:I = 0x1e

.field static final TRANSACTION_checkUidPermission:I = 0x13

.field static final TRANSACTION_checkUidSignatures:I = 0x1f

.field static final TRANSACTION_clearApplicationUserData:I = 0x5c

.field static final TRANSACTION_clearCrossProfileIntentFilters:I = 0x4c

.field static final TRANSACTION_clearPackagePersistentPreferredActivities:I = 0x4a

.field static final TRANSACTION_clearPackagePreferredActivities:I = 0x47

.field static final TRANSACTION_currentToCanonicalPackageNames:I = 0x6

.field static final TRANSACTION_deleteApplicationCacheFiles:I = 0x5b

.field static final TRANSACTION_deletePackage:I = 0x3d

.field static final TRANSACTION_deletePackageAsUser:I = 0x3c

.field static final TRANSACTION_enterSafeMode:I = 0x61

.field static final TRANSACTION_extendVerificationTimeout:I = 0x74

.field static final TRANSACTION_finishPackageInstall:I = 0x3a

.field static final TRANSACTION_forceDexOpt:I = 0x67

.field static final TRANSACTION_freeStorage:I = 0x5a

.field static final TRANSACTION_freeStorageAndNotify:I = 0x59

.field static final TRANSACTION_getActivityInfo:I = 0xd

.field static final TRANSACTION_getAllIntentFilters:I = 0x79

.field static final TRANSACTION_getAllPermissionGroups:I = 0xb

.field static final TRANSACTION_getAppOpPermissionPackages:I = 0x26

.field static final TRANSACTION_getApplicationEnabledSetting:I = 0x57

.field static final TRANSACTION_getApplicationHiddenSettingAsUser:I = 0x84

.field static final TRANSACTION_getApplicationInfo:I = 0xc

.field static final TRANSACTION_getBlockUninstallForUser:I = 0x87

.field static final TRANSACTION_getComponentEnabledSetting:I = 0x55

.field static final TRANSACTION_getDefaultAppsBackup:I = 0x4f

.field static final TRANSACTION_getDefaultBrowserPackageName:I = 0x7b

.field static final TRANSACTION_getFlagsForUid:I = 0x23

.field static final TRANSACTION_getHomeActivities:I = 0x53

.field static final TRANSACTION_getInstallLocation:I = 0x71

.field static final TRANSACTION_getInstalledApplications:I = 0x31

.field static final TRANSACTION_getInstalledPackages:I = 0x2f

.field static final TRANSACTION_getInstallerPackageName:I = 0x3e

.field static final TRANSACTION_getInstrumentationInfo:I = 0x36

.field static final TRANSACTION_getIntentFilterVerificationBackup:I = 0x51

.field static final TRANSACTION_getIntentFilterVerifications:I = 0x78

.field static final TRANSACTION_getIntentVerificationStatus:I = 0x76

.field static final TRANSACTION_getKeySetByAlias:I = 0x88

.field static final TRANSACTION_getLastChosenActivity:I = 0x43

.field static final TRANSACTION_getMoveStatus:I = 0x6a

.field static final TRANSACTION_getNameForUid:I = 0x21

.field static final TRANSACTION_getPackageGids:I = 0x5

.field static final TRANSACTION_getPackageInfo:I = 0x3

.field static final TRANSACTION_getPackageInstaller:I = 0x85

.field static final TRANSACTION_getPackageSizeInfo:I = 0x5d

.field static final TRANSACTION_getPackageUid:I = 0x4

.field static final TRANSACTION_getPackagesForUid:I = 0x20

.field static final TRANSACTION_getPackagesHoldingPermissions:I = 0x30

.field static final TRANSACTION_getPermissionControllerPackageName:I = 0x90

.field static final TRANSACTION_getPermissionFlags:I = 0x19

.field static final TRANSACTION_getPermissionGroupInfo:I = 0xa

.field static final TRANSACTION_getPermissionInfo:I = 0x8

.field static final TRANSACTION_getPersistentApplications:I = 0x32

.field static final TRANSACTION_getPreferredActivities:I = 0x48

.field static final TRANSACTION_getPreferredActivityBackup:I = 0x4d

.field static final TRANSACTION_getPreferredPackages:I = 0x41

.field static final TRANSACTION_getPrivateFlagsForUid:I = 0x24

.field static final TRANSACTION_getProviderInfo:I = 0x11

.field static final TRANSACTION_getReceiverInfo:I = 0xf

.field static final TRANSACTION_getServiceInfo:I = 0x10

.field static final TRANSACTION_getSigningKeySet:I = 0x89

.field static final TRANSACTION_getSystemAvailableFeatures:I = 0x5f

.field static final TRANSACTION_getSystemSharedLibraryNames:I = 0x5e

.field static final TRANSACTION_getUidForSharedUser:I = 0x22

.field static final TRANSACTION_getVerifierDeviceIdentity:I = 0x7c

.field static final TRANSACTION_grantDefaultPermissionsToEnabledCarrierApps:I = 0x8e

.field static final TRANSACTION_grantRuntimePermission:I = 0x16

.field static final TRANSACTION_hasSystemFeature:I = 0x60

.field static final TRANSACTION_hasSystemUidErrors:I = 0x64

.field static final TRANSACTION_installExistingPackageAsUser:I = 0x72

.field static final TRANSACTION_installPackage:I = 0x38

.field static final TRANSACTION_installPackageAsUser:I = 0x39

.field static final TRANSACTION_isFirstBoot:I = 0x7d

.field static final TRANSACTION_isOnlyCoreApps:I = 0x7e

.field static final TRANSACTION_isPackageAvailable:I = 0x2

.field static final TRANSACTION_isPackageFrozen:I = 0x1

.field static final TRANSACTION_isPackageSignedByKeySet:I = 0x8a

.field static final TRANSACTION_isPackageSignedByKeySetExactly:I = 0x8b

.field static final TRANSACTION_isPermissionEnforced:I = 0x81

.field static final TRANSACTION_isPermissionRevokedByPolicy:I = 0x8f

.field static final TRANSACTION_isProtectedBroadcast:I = 0x1d

.field static final TRANSACTION_isSafeMode:I = 0x62

.field static final TRANSACTION_isStorageLow:I = 0x82

.field static final TRANSACTION_isUidPrivileged:I = 0x25

.field static final TRANSACTION_isUpgrade:I = 0x7f

.field static final TRANSACTION_movePackage:I = 0x6d

.field static final TRANSACTION_movePrimaryStorage:I = 0x6e

.field static final TRANSACTION_nextPackageToClean:I = 0x69

.field static final TRANSACTION_performBootDexOpt:I = 0x65

.field static final TRANSACTION_performDexOptIfNeeded:I = 0x66

.field static final TRANSACTION_queryContentProviders:I = 0x35

.field static final TRANSACTION_queryInstrumentation:I = 0x37

.field static final TRANSACTION_queryIntentActivities:I = 0x29

.field static final TRANSACTION_queryIntentActivityOptions:I = 0x2a

.field static final TRANSACTION_queryIntentContentProviders:I = 0x2e

.field static final TRANSACTION_queryIntentReceivers:I = 0x2b

.field static final TRANSACTION_queryIntentServices:I = 0x2d

.field static final TRANSACTION_queryPermissionsByGroup:I = 0x9

.field static final TRANSACTION_querySyncProviders:I = 0x34

.field static final TRANSACTION_registerMoveCallback:I = 0x6b

.field static final TRANSACTION_removeOnPermissionsChangeListener:I = 0x8d

.field static final TRANSACTION_removePackageFromPreferred:I = 0x40

.field static final TRANSACTION_removePermission:I = 0x15

.field static final TRANSACTION_replacePreferredActivity:I = 0x46

.field static final TRANSACTION_resetApplicationPreferences:I = 0x42

.field static final TRANSACTION_resetRuntimePermissions:I = 0x18

.field static final TRANSACTION_resolveContentProvider:I = 0x33

.field static final TRANSACTION_resolveIntent:I = 0x27

.field static final TRANSACTION_resolveService:I = 0x2c

.field static final TRANSACTION_restoreDefaultApps:I = 0x50

.field static final TRANSACTION_restoreIntentFilterVerification:I = 0x52

.field static final TRANSACTION_restorePreferredActivities:I = 0x4e

.field static final TRANSACTION_revokeRuntimePermission:I = 0x17

.field static final TRANSACTION_setApplicationEnabledSetting:I = 0x56

.field static final TRANSACTION_setApplicationHiddenSettingAsUser:I = 0x83

.field static final TRANSACTION_setBlockUninstallForUser:I = 0x86

.field static final TRANSACTION_setComponentEnabledSetting:I = 0x54

.field static final TRANSACTION_setDefaultBrowserPackageName:I = 0x7a

.field static final TRANSACTION_setInstallLocation:I = 0x70

.field static final TRANSACTION_setInstallerPackageName:I = 0x3b

.field static final TRANSACTION_setLastChosenActivity:I = 0x44

.field static final TRANSACTION_setPackageStoppedState:I = 0x58

.field static final TRANSACTION_setPermissionEnforced:I = 0x80

.field static final TRANSACTION_shouldShowRequestPermissionRationale:I = 0x1c

.field static final TRANSACTION_systemReady:I = 0x63

.field static final TRANSACTION_unregisterMoveCallback:I = 0x6c

.field static final TRANSACTION_updateExternalMediaStatus:I = 0x68

.field static final TRANSACTION_updateIntentVerificationStatus:I = 0x77

.field static final TRANSACTION_updatePermissionFlags:I = 0x1a

.field static final TRANSACTION_updatePermissionFlagsForAllApps:I = 0x1b

.field static final TRANSACTION_verifyIntentFilter:I = 0x75

.field static final TRANSACTION_verifyPendingInstall:I = 0x73


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 21
    const-string/jumbo v0, "android.content.pm.IPackageManager"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/content/pm/IPackageManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 29
    if-nez p0, :cond_0

    #@3
    .line 30
    return-object v1

    #@4
    .line 32
    :cond_0
    const-string/jumbo v1, "android.content.pm.IPackageManager"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 33
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/content/pm/IPackageManager;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 34
    check-cast v0, Landroid/content/pm/IPackageManager;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 36
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/content/pm/IPackageManager$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@19
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 40
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 104
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 44
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 2071
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v6

    #@7
    return v6

    #@8
    .line 48
    :sswitch_0
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@b
    move-object/from16 v0, p3

    #@d
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 49
    const/4 v6, 0x1

    #@11
    return v6

    #@12
    .line 53
    :sswitch_1
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@15
    move-object/from16 v0, p2

    #@17
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a
    .line 55
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1d
    move-result-object v7

    #@1e
    .line 56
    .local v7, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@20
    invoke-virtual {v0, v7}, Landroid/content/pm/IPackageManager$Stub;->isPackageFrozen(Ljava/lang/String;)Z

    #@23
    move-result v99

    #@24
    .line 57
    .local v99, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@27
    .line 58
    if-eqz v99, :cond_0

    #@29
    const/4 v6, 0x1

    #@2a
    :goto_0
    move-object/from16 v0, p3

    #@2c
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@2f
    .line 59
    const/4 v6, 0x1

    #@30
    return v6

    #@31
    .line 58
    :cond_0
    const/4 v6, 0x0

    #@32
    goto :goto_0

    #@33
    .line 63
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v99    # "_result":Z
    :sswitch_2
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@36
    move-object/from16 v0, p2

    #@38
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3b
    .line 65
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3e
    move-result-object v7

    #@3f
    .line 67
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@42
    move-result v36

    #@43
    .line 68
    .local v36, "_arg1":I
    move-object/from16 v0, p0

    #@45
    move/from16 v1, v36

    #@47
    invoke-virtual {v0, v7, v1}, Landroid/content/pm/IPackageManager$Stub;->isPackageAvailable(Ljava/lang/String;I)Z

    #@4a
    move-result v99

    #@4b
    .line 69
    .restart local v99    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4e
    .line 70
    if-eqz v99, :cond_1

    #@50
    const/4 v6, 0x1

    #@51
    :goto_1
    move-object/from16 v0, p3

    #@53
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@56
    .line 71
    const/4 v6, 0x1

    #@57
    return v6

    #@58
    .line 70
    :cond_1
    const/4 v6, 0x0

    #@59
    goto :goto_1

    #@5a
    .line 75
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v36    # "_arg1":I
    .end local v99    # "_result":Z
    :sswitch_3
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@5d
    move-object/from16 v0, p2

    #@5f
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@62
    .line 77
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@65
    move-result-object v7

    #@66
    .line 79
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@69
    move-result v36

    #@6a
    .line 81
    .restart local v36    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@6d
    move-result v9

    #@6e
    .line 82
    .local v9, "_arg2":I
    move-object/from16 v0, p0

    #@70
    move/from16 v1, v36

    #@72
    invoke-virtual {v0, v7, v1, v9}, Landroid/content/pm/IPackageManager$Stub;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    #@75
    move-result-object v82

    #@76
    .line 83
    .local v82, "_result":Landroid/content/pm/PackageInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@79
    .line 84
    if-eqz v82, :cond_2

    #@7b
    .line 85
    const/4 v6, 0x1

    #@7c
    move-object/from16 v0, p3

    #@7e
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@81
    .line 86
    const/4 v6, 0x1

    #@82
    move-object/from16 v0, v82

    #@84
    move-object/from16 v1, p3

    #@86
    invoke-virtual {v0, v1, v6}, Landroid/content/pm/PackageInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@89
    .line 91
    :goto_2
    const/4 v6, 0x1

    #@8a
    return v6

    #@8b
    .line 89
    :cond_2
    const/4 v6, 0x0

    #@8c
    move-object/from16 v0, p3

    #@8e
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@91
    goto :goto_2

    #@92
    .line 95
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v36    # "_arg1":I
    .end local v82    # "_result":Landroid/content/pm/PackageInfo;
    :sswitch_4
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@95
    move-object/from16 v0, p2

    #@97
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@9a
    .line 97
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@9d
    move-result-object v7

    #@9e
    .line 99
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@a1
    move-result v36

    #@a2
    .line 100
    .restart local v36    # "_arg1":I
    move-object/from16 v0, p0

    #@a4
    move/from16 v1, v36

    #@a6
    invoke-virtual {v0, v7, v1}, Landroid/content/pm/IPackageManager$Stub;->getPackageUid(Ljava/lang/String;I)I

    #@a9
    move-result v74

    #@aa
    .line 101
    .local v74, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@ad
    .line 102
    move-object/from16 v0, p3

    #@af
    move/from16 v1, v74

    #@b1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@b4
    .line 103
    const/4 v6, 0x1

    #@b5
    return v6

    #@b6
    .line 107
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v36    # "_arg1":I
    .end local v74    # "_result":I
    :sswitch_5
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@b9
    move-object/from16 v0, p2

    #@bb
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@be
    .line 109
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@c1
    move-result-object v7

    #@c2
    .line 111
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@c5
    move-result v36

    #@c6
    .line 112
    .restart local v36    # "_arg1":I
    move-object/from16 v0, p0

    #@c8
    move/from16 v1, v36

    #@ca
    invoke-virtual {v0, v7, v1}, Landroid/content/pm/IPackageManager$Stub;->getPackageGids(Ljava/lang/String;I)[I

    #@cd
    move-result-object v101

    #@ce
    .line 113
    .local v101, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@d1
    .line 114
    move-object/from16 v0, p3

    #@d3
    move-object/from16 v1, v101

    #@d5
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    #@d8
    .line 115
    const/4 v6, 0x1

    #@d9
    return v6

    #@da
    .line 119
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v36    # "_arg1":I
    .end local v101    # "_result":[I
    :sswitch_6
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@dd
    move-object/from16 v0, p2

    #@df
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@e2
    .line 121
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@e5
    move-result-object v55

    #@e6
    .line 122
    .local v55, "_arg0":[Ljava/lang/String;
    move-object/from16 v0, p0

    #@e8
    move-object/from16 v1, v55

    #@ea
    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    #@ed
    move-result-object v103

    #@ee
    .line 123
    .local v103, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@f1
    .line 124
    move-object/from16 v0, p3

    #@f3
    move-object/from16 v1, v103

    #@f5
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@f8
    .line 125
    const/4 v6, 0x1

    #@f9
    return v6

    #@fa
    .line 129
    .end local v55    # "_arg0":[Ljava/lang/String;
    .end local v103    # "_result":[Ljava/lang/String;
    :sswitch_7
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@fd
    move-object/from16 v0, p2

    #@ff
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@102
    .line 131
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@105
    move-result-object v55

    #@106
    .line 132
    .restart local v55    # "_arg0":[Ljava/lang/String;
    move-object/from16 v0, p0

    #@108
    move-object/from16 v1, v55

    #@10a
    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->canonicalToCurrentPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    #@10d
    move-result-object v103

    #@10e
    .line 133
    .restart local v103    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@111
    .line 134
    move-object/from16 v0, p3

    #@113
    move-object/from16 v1, v103

    #@115
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@118
    .line 135
    const/4 v6, 0x1

    #@119
    return v6

    #@11a
    .line 139
    .end local v55    # "_arg0":[Ljava/lang/String;
    .end local v103    # "_result":[Ljava/lang/String;
    :sswitch_8
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@11d
    move-object/from16 v0, p2

    #@11f
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@122
    .line 141
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@125
    move-result-object v7

    #@126
    .line 143
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@129
    move-result v36

    #@12a
    .line 144
    .restart local v36    # "_arg1":I
    move-object/from16 v0, p0

    #@12c
    move/from16 v1, v36

    #@12e
    invoke-virtual {v0, v7, v1}, Landroid/content/pm/IPackageManager$Stub;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    #@131
    move-result-object v85

    #@132
    .line 145
    .local v85, "_result":Landroid/content/pm/PermissionInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@135
    .line 146
    if-eqz v85, :cond_3

    #@137
    .line 147
    const/4 v6, 0x1

    #@138
    move-object/from16 v0, p3

    #@13a
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@13d
    .line 148
    const/4 v6, 0x1

    #@13e
    move-object/from16 v0, v85

    #@140
    move-object/from16 v1, p3

    #@142
    invoke-virtual {v0, v1, v6}, Landroid/content/pm/PermissionInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@145
    .line 153
    :goto_3
    const/4 v6, 0x1

    #@146
    return v6

    #@147
    .line 151
    :cond_3
    const/4 v6, 0x0

    #@148
    move-object/from16 v0, p3

    #@14a
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@14d
    goto :goto_3

    #@14e
    .line 157
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v36    # "_arg1":I
    .end local v85    # "_result":Landroid/content/pm/PermissionInfo;
    :sswitch_9
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@151
    move-object/from16 v0, p2

    #@153
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@156
    .line 159
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@159
    move-result-object v7

    #@15a
    .line 161
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@15d
    move-result v36

    #@15e
    .line 162
    .restart local v36    # "_arg1":I
    move-object/from16 v0, p0

    #@160
    move/from16 v1, v36

    #@162
    invoke-virtual {v0, v7, v1}, Landroid/content/pm/IPackageManager$Stub;->queryPermissionsByGroup(Ljava/lang/String;I)Ljava/util/List;

    #@165
    move-result-object v97

    #@166
    .line 163
    .local v97, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@169
    .line 164
    move-object/from16 v0, p3

    #@16b
    move-object/from16 v1, v97

    #@16d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@170
    .line 165
    const/4 v6, 0x1

    #@171
    return v6

    #@172
    .line 169
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v36    # "_arg1":I
    .end local v97    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    :sswitch_a
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@175
    move-object/from16 v0, p2

    #@177
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@17a
    .line 171
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@17d
    move-result-object v7

    #@17e
    .line 173
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@181
    move-result v36

    #@182
    .line 174
    .restart local v36    # "_arg1":I
    move-object/from16 v0, p0

    #@184
    move/from16 v1, v36

    #@186
    invoke-virtual {v0, v7, v1}, Landroid/content/pm/IPackageManager$Stub;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    #@189
    move-result-object v84

    #@18a
    .line 175
    .local v84, "_result":Landroid/content/pm/PermissionGroupInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@18d
    .line 176
    if-eqz v84, :cond_4

    #@18f
    .line 177
    const/4 v6, 0x1

    #@190
    move-object/from16 v0, p3

    #@192
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@195
    .line 178
    const/4 v6, 0x1

    #@196
    move-object/from16 v0, v84

    #@198
    move-object/from16 v1, p3

    #@19a
    invoke-virtual {v0, v1, v6}, Landroid/content/pm/PermissionGroupInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@19d
    .line 183
    :goto_4
    const/4 v6, 0x1

    #@19e
    return v6

    #@19f
    .line 181
    :cond_4
    const/4 v6, 0x0

    #@1a0
    move-object/from16 v0, p3

    #@1a2
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@1a5
    goto :goto_4

    #@1a6
    .line 187
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v36    # "_arg1":I
    .end local v84    # "_result":Landroid/content/pm/PermissionGroupInfo;
    :sswitch_b
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@1a9
    move-object/from16 v0, p2

    #@1ab
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1ae
    .line 189
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1b1
    move-result v45

    #@1b2
    .line 190
    .local v45, "_arg0":I
    move-object/from16 v0, p0

    #@1b4
    move/from16 v1, v45

    #@1b6
    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getAllPermissionGroups(I)Ljava/util/List;

    #@1b9
    move-result-object v96

    #@1ba
    .line 191
    .local v96, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionGroupInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1bd
    .line 192
    move-object/from16 v0, p3

    #@1bf
    move-object/from16 v1, v96

    #@1c1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@1c4
    .line 193
    const/4 v6, 0x1

    #@1c5
    return v6

    #@1c6
    .line 197
    .end local v45    # "_arg0":I
    .end local v96    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionGroupInfo;>;"
    :sswitch_c
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@1c9
    move-object/from16 v0, p2

    #@1cb
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1ce
    .line 199
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1d1
    move-result-object v7

    #@1d2
    .line 201
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1d5
    move-result v36

    #@1d6
    .line 203
    .restart local v36    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1d9
    move-result v9

    #@1da
    .line 204
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    #@1dc
    move/from16 v1, v36

    #@1de
    invoke-virtual {v0, v7, v1, v9}, Landroid/content/pm/IPackageManager$Stub;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    #@1e1
    move-result-object v77

    #@1e2
    .line 205
    .local v77, "_result":Landroid/content/pm/ApplicationInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1e5
    .line 206
    if-eqz v77, :cond_5

    #@1e7
    .line 207
    const/4 v6, 0x1

    #@1e8
    move-object/from16 v0, p3

    #@1ea
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@1ed
    .line 208
    const/4 v6, 0x1

    #@1ee
    move-object/from16 v0, v77

    #@1f0
    move-object/from16 v1, p3

    #@1f2
    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ApplicationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@1f5
    .line 213
    :goto_5
    const/4 v6, 0x1

    #@1f6
    return v6

    #@1f7
    .line 211
    :cond_5
    const/4 v6, 0x0

    #@1f8
    move-object/from16 v0, p3

    #@1fa
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@1fd
    goto :goto_5

    #@1fe
    .line 217
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v36    # "_arg1":I
    .end local v77    # "_result":Landroid/content/pm/ApplicationInfo;
    :sswitch_d
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@201
    move-object/from16 v0, p2

    #@203
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@206
    .line 219
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@209
    move-result v6

    #@20a
    if-eqz v6, :cond_6

    #@20c
    .line 220
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@20e
    move-object/from16 v0, p2

    #@210
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@213
    move-result-object v13

    #@214
    check-cast v13, Landroid/content/ComponentName;

    #@216
    .line 226
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@219
    move-result v36

    #@21a
    .line 228
    .restart local v36    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@21d
    move-result v9

    #@21e
    .line 229
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    #@220
    move/from16 v1, v36

    #@222
    invoke-virtual {v0, v13, v1, v9}, Landroid/content/pm/IPackageManager$Stub;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    #@225
    move-result-object v76

    #@226
    .line 230
    .local v76, "_result":Landroid/content/pm/ActivityInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@229
    .line 231
    if-eqz v76, :cond_7

    #@22b
    .line 232
    const/4 v6, 0x1

    #@22c
    move-object/from16 v0, p3

    #@22e
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@231
    .line 233
    const/4 v6, 0x1

    #@232
    move-object/from16 v0, v76

    #@234
    move-object/from16 v1, p3

    #@236
    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ActivityInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@239
    .line 238
    :goto_7
    const/4 v6, 0x1

    #@23a
    return v6

    #@23b
    .line 223
    .end local v9    # "_arg2":I
    .end local v36    # "_arg1":I
    .end local v76    # "_result":Landroid/content/pm/ActivityInfo;
    :cond_6
    const/4 v13, 0x0

    #@23c
    .local v13, "_arg0":Landroid/content/ComponentName;
    goto :goto_6

    #@23d
    .line 236
    .end local v13    # "_arg0":Landroid/content/ComponentName;
    .restart local v9    # "_arg2":I
    .restart local v36    # "_arg1":I
    .restart local v76    # "_result":Landroid/content/pm/ActivityInfo;
    :cond_7
    const/4 v6, 0x0

    #@23e
    move-object/from16 v0, p3

    #@240
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@243
    goto :goto_7

    #@244
    .line 242
    .end local v9    # "_arg2":I
    .end local v36    # "_arg1":I
    .end local v76    # "_result":Landroid/content/pm/ActivityInfo;
    :sswitch_e
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@247
    move-object/from16 v0, p2

    #@249
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@24c
    .line 244
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@24f
    move-result v6

    #@250
    if-eqz v6, :cond_8

    #@252
    .line 245
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@254
    move-object/from16 v0, p2

    #@256
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@259
    move-result-object v13

    #@25a
    check-cast v13, Landroid/content/ComponentName;

    #@25c
    .line 251
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@25f
    move-result v6

    #@260
    if-eqz v6, :cond_9

    #@262
    .line 252
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@264
    move-object/from16 v0, p2

    #@266
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@269
    move-result-object v59

    #@26a
    check-cast v59, Landroid/content/Intent;

    #@26c
    .line 258
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@26f
    move-result-object v72

    #@270
    .line 259
    .local v72, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    #@272
    move-object/from16 v1, v59

    #@274
    move-object/from16 v2, v72

    #@276
    invoke-virtual {v0, v13, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->activitySupportsIntent(Landroid/content/ComponentName;Landroid/content/Intent;Ljava/lang/String;)Z

    #@279
    move-result v99

    #@27a
    .line 260
    .restart local v99    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@27d
    .line 261
    if-eqz v99, :cond_a

    #@27f
    const/4 v6, 0x1

    #@280
    :goto_a
    move-object/from16 v0, p3

    #@282
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@285
    .line 262
    const/4 v6, 0x1

    #@286
    return v6

    #@287
    .line 248
    .end local v72    # "_arg2":Ljava/lang/String;
    .end local v99    # "_result":Z
    :cond_8
    const/4 v13, 0x0

    #@288
    .restart local v13    # "_arg0":Landroid/content/ComponentName;
    goto :goto_8

    #@289
    .line 255
    .end local v13    # "_arg0":Landroid/content/ComponentName;
    :cond_9
    const/16 v59, 0x0

    #@28b
    .local v59, "_arg1":Landroid/content/Intent;
    goto :goto_9

    #@28c
    .line 261
    .end local v59    # "_arg1":Landroid/content/Intent;
    .restart local v72    # "_arg2":Ljava/lang/String;
    .restart local v99    # "_result":Z
    :cond_a
    const/4 v6, 0x0

    #@28d
    goto :goto_a

    #@28e
    .line 266
    .end local v72    # "_arg2":Ljava/lang/String;
    .end local v99    # "_result":Z
    :sswitch_f
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@291
    move-object/from16 v0, p2

    #@293
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@296
    .line 268
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@299
    move-result v6

    #@29a
    if-eqz v6, :cond_b

    #@29c
    .line 269
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@29e
    move-object/from16 v0, p2

    #@2a0
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2a3
    move-result-object v13

    #@2a4
    check-cast v13, Landroid/content/ComponentName;

    #@2a6
    .line 275
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2a9
    move-result v36

    #@2aa
    .line 277
    .restart local v36    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2ad
    move-result v9

    #@2ae
    .line 278
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    #@2b0
    move/from16 v1, v36

    #@2b2
    invoke-virtual {v0, v13, v1, v9}, Landroid/content/pm/IPackageManager$Stub;->getReceiverInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    #@2b5
    move-result-object v76

    #@2b6
    .line 279
    .restart local v76    # "_result":Landroid/content/pm/ActivityInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2b9
    .line 280
    if-eqz v76, :cond_c

    #@2bb
    .line 281
    const/4 v6, 0x1

    #@2bc
    move-object/from16 v0, p3

    #@2be
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@2c1
    .line 282
    const/4 v6, 0x1

    #@2c2
    move-object/from16 v0, v76

    #@2c4
    move-object/from16 v1, p3

    #@2c6
    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ActivityInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@2c9
    .line 287
    :goto_c
    const/4 v6, 0x1

    #@2ca
    return v6

    #@2cb
    .line 272
    .end local v9    # "_arg2":I
    .end local v36    # "_arg1":I
    .end local v76    # "_result":Landroid/content/pm/ActivityInfo;
    :cond_b
    const/4 v13, 0x0

    #@2cc
    .restart local v13    # "_arg0":Landroid/content/ComponentName;
    goto :goto_b

    #@2cd
    .line 285
    .end local v13    # "_arg0":Landroid/content/ComponentName;
    .restart local v9    # "_arg2":I
    .restart local v36    # "_arg1":I
    .restart local v76    # "_result":Landroid/content/pm/ActivityInfo;
    :cond_c
    const/4 v6, 0x0

    #@2ce
    move-object/from16 v0, p3

    #@2d0
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@2d3
    goto :goto_c

    #@2d4
    .line 291
    .end local v9    # "_arg2":I
    .end local v36    # "_arg1":I
    .end local v76    # "_result":Landroid/content/pm/ActivityInfo;
    :sswitch_10
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@2d7
    move-object/from16 v0, p2

    #@2d9
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2dc
    .line 293
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2df
    move-result v6

    #@2e0
    if-eqz v6, :cond_d

    #@2e2
    .line 294
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2e4
    move-object/from16 v0, p2

    #@2e6
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2e9
    move-result-object v13

    #@2ea
    check-cast v13, Landroid/content/ComponentName;

    #@2ec
    .line 300
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2ef
    move-result v36

    #@2f0
    .line 302
    .restart local v36    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2f3
    move-result v9

    #@2f4
    .line 303
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    #@2f6
    move/from16 v1, v36

    #@2f8
    invoke-virtual {v0, v13, v1, v9}, Landroid/content/pm/IPackageManager$Stub;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    #@2fb
    move-result-object v88

    #@2fc
    .line 304
    .local v88, "_result":Landroid/content/pm/ServiceInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2ff
    .line 305
    if-eqz v88, :cond_e

    #@301
    .line 306
    const/4 v6, 0x1

    #@302
    move-object/from16 v0, p3

    #@304
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@307
    .line 307
    const/4 v6, 0x1

    #@308
    move-object/from16 v0, v88

    #@30a
    move-object/from16 v1, p3

    #@30c
    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ServiceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@30f
    .line 312
    :goto_e
    const/4 v6, 0x1

    #@310
    return v6

    #@311
    .line 297
    .end local v9    # "_arg2":I
    .end local v36    # "_arg1":I
    .end local v88    # "_result":Landroid/content/pm/ServiceInfo;
    :cond_d
    const/4 v13, 0x0

    #@312
    .restart local v13    # "_arg0":Landroid/content/ComponentName;
    goto :goto_d

    #@313
    .line 310
    .end local v13    # "_arg0":Landroid/content/ComponentName;
    .restart local v9    # "_arg2":I
    .restart local v36    # "_arg1":I
    .restart local v88    # "_result":Landroid/content/pm/ServiceInfo;
    :cond_e
    const/4 v6, 0x0

    #@314
    move-object/from16 v0, p3

    #@316
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@319
    goto :goto_e

    #@31a
    .line 316
    .end local v9    # "_arg2":I
    .end local v36    # "_arg1":I
    .end local v88    # "_result":Landroid/content/pm/ServiceInfo;
    :sswitch_11
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@31d
    move-object/from16 v0, p2

    #@31f
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@322
    .line 318
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@325
    move-result v6

    #@326
    if-eqz v6, :cond_f

    #@328
    .line 319
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@32a
    move-object/from16 v0, p2

    #@32c
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@32f
    move-result-object v13

    #@330
    check-cast v13, Landroid/content/ComponentName;

    #@332
    .line 325
    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@335
    move-result v36

    #@336
    .line 327
    .restart local v36    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@339
    move-result v9

    #@33a
    .line 328
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    #@33c
    move/from16 v1, v36

    #@33e
    invoke-virtual {v0, v13, v1, v9}, Landroid/content/pm/IPackageManager$Stub;->getProviderInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ProviderInfo;

    #@341
    move-result-object v86

    #@342
    .line 329
    .local v86, "_result":Landroid/content/pm/ProviderInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@345
    .line 330
    if-eqz v86, :cond_10

    #@347
    .line 331
    const/4 v6, 0x1

    #@348
    move-object/from16 v0, p3

    #@34a
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@34d
    .line 332
    const/4 v6, 0x1

    #@34e
    move-object/from16 v0, v86

    #@350
    move-object/from16 v1, p3

    #@352
    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ProviderInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@355
    .line 337
    :goto_10
    const/4 v6, 0x1

    #@356
    return v6

    #@357
    .line 322
    .end local v9    # "_arg2":I
    .end local v36    # "_arg1":I
    .end local v86    # "_result":Landroid/content/pm/ProviderInfo;
    :cond_f
    const/4 v13, 0x0

    #@358
    .restart local v13    # "_arg0":Landroid/content/ComponentName;
    goto :goto_f

    #@359
    .line 335
    .end local v13    # "_arg0":Landroid/content/ComponentName;
    .restart local v9    # "_arg2":I
    .restart local v36    # "_arg1":I
    .restart local v86    # "_result":Landroid/content/pm/ProviderInfo;
    :cond_10
    const/4 v6, 0x0

    #@35a
    move-object/from16 v0, p3

    #@35c
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@35f
    goto :goto_10

    #@360
    .line 341
    .end local v9    # "_arg2":I
    .end local v36    # "_arg1":I
    .end local v86    # "_result":Landroid/content/pm/ProviderInfo;
    :sswitch_12
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@363
    move-object/from16 v0, p2

    #@365
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@368
    .line 343
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@36b
    move-result-object v7

    #@36c
    .line 345
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@36f
    move-result-object v8

    #@370
    .line 347
    .local v8, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@373
    move-result v9

    #@374
    .line 348
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    #@376
    invoke-virtual {v0, v7, v8, v9}, Landroid/content/pm/IPackageManager$Stub;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    #@379
    move-result v74

    #@37a
    .line 349
    .restart local v74    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@37d
    .line 350
    move-object/from16 v0, p3

    #@37f
    move/from16 v1, v74

    #@381
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@384
    .line 351
    const/4 v6, 0x1

    #@385
    return v6

    #@386
    .line 355
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v74    # "_result":I
    :sswitch_13
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@389
    move-object/from16 v0, p2

    #@38b
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@38e
    .line 357
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@391
    move-result-object v7

    #@392
    .line 359
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@395
    move-result v36

    #@396
    .line 360
    .restart local v36    # "_arg1":I
    move-object/from16 v0, p0

    #@398
    move/from16 v1, v36

    #@39a
    invoke-virtual {v0, v7, v1}, Landroid/content/pm/IPackageManager$Stub;->checkUidPermission(Ljava/lang/String;I)I

    #@39d
    move-result v74

    #@39e
    .line 361
    .restart local v74    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3a1
    .line 362
    move-object/from16 v0, p3

    #@3a3
    move/from16 v1, v74

    #@3a5
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@3a8
    .line 363
    const/4 v6, 0x1

    #@3a9
    return v6

    #@3aa
    .line 367
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v36    # "_arg1":I
    .end local v74    # "_result":I
    :sswitch_14
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@3ad
    move-object/from16 v0, p2

    #@3af
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3b2
    .line 369
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3b5
    move-result v6

    #@3b6
    if-eqz v6, :cond_11

    #@3b8
    .line 370
    sget-object v6, Landroid/content/pm/PermissionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@3ba
    move-object/from16 v0, p2

    #@3bc
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3bf
    move-result-object v49

    #@3c0
    check-cast v49, Landroid/content/pm/PermissionInfo;

    #@3c2
    .line 375
    :goto_11
    move-object/from16 v0, p0

    #@3c4
    move-object/from16 v1, v49

    #@3c6
    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->addPermission(Landroid/content/pm/PermissionInfo;)Z

    #@3c9
    move-result v99

    #@3ca
    .line 376
    .restart local v99    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3cd
    .line 377
    if-eqz v99, :cond_12

    #@3cf
    const/4 v6, 0x1

    #@3d0
    :goto_12
    move-object/from16 v0, p3

    #@3d2
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@3d5
    .line 378
    const/4 v6, 0x1

    #@3d6
    return v6

    #@3d7
    .line 373
    .end local v99    # "_result":Z
    :cond_11
    const/16 v49, 0x0

    #@3d9
    .local v49, "_arg0":Landroid/content/pm/PermissionInfo;
    goto :goto_11

    #@3da
    .line 377
    .end local v49    # "_arg0":Landroid/content/pm/PermissionInfo;
    .restart local v99    # "_result":Z
    :cond_12
    const/4 v6, 0x0

    #@3db
    goto :goto_12

    #@3dc
    .line 382
    .end local v99    # "_result":Z
    :sswitch_15
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@3df
    move-object/from16 v0, p2

    #@3e1
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3e4
    .line 384
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3e7
    move-result-object v7

    #@3e8
    .line 385
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@3ea
    invoke-virtual {v0, v7}, Landroid/content/pm/IPackageManager$Stub;->removePermission(Ljava/lang/String;)V

    #@3ed
    .line 386
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3f0
    .line 387
    const/4 v6, 0x1

    #@3f1
    return v6

    #@3f2
    .line 391
    .end local v7    # "_arg0":Ljava/lang/String;
    :sswitch_16
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@3f5
    move-object/from16 v0, p2

    #@3f7
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3fa
    .line 393
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3fd
    move-result-object v7

    #@3fe
    .line 395
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@401
    move-result-object v8

    #@402
    .line 397
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@405
    move-result v9

    #@406
    .line 398
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    #@408
    invoke-virtual {v0, v7, v8, v9}, Landroid/content/pm/IPackageManager$Stub;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V

    #@40b
    .line 399
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@40e
    .line 400
    const/4 v6, 0x1

    #@40f
    return v6

    #@410
    .line 404
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    :sswitch_17
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@413
    move-object/from16 v0, p2

    #@415
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@418
    .line 406
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@41b
    move-result-object v7

    #@41c
    .line 408
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@41f
    move-result-object v8

    #@420
    .line 410
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@423
    move-result v9

    #@424
    .line 411
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    #@426
    invoke-virtual {v0, v7, v8, v9}, Landroid/content/pm/IPackageManager$Stub;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V

    #@429
    .line 412
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@42c
    .line 413
    const/4 v6, 0x1

    #@42d
    return v6

    #@42e
    .line 417
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    :sswitch_18
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@431
    move-object/from16 v0, p2

    #@433
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@436
    .line 418
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->resetRuntimePermissions()V

    #@439
    .line 419
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@43c
    .line 420
    const/4 v6, 0x1

    #@43d
    return v6

    #@43e
    .line 424
    :sswitch_19
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@441
    move-object/from16 v0, p2

    #@443
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@446
    .line 426
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@449
    move-result-object v7

    #@44a
    .line 428
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@44d
    move-result-object v8

    #@44e
    .line 430
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@451
    move-result v9

    #@452
    .line 431
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    #@454
    invoke-virtual {v0, v7, v8, v9}, Landroid/content/pm/IPackageManager$Stub;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;I)I

    #@457
    move-result v74

    #@458
    .line 432
    .restart local v74    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@45b
    .line 433
    move-object/from16 v0, p3

    #@45d
    move/from16 v1, v74

    #@45f
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@462
    .line 434
    const/4 v6, 0x1

    #@463
    return v6

    #@464
    .line 438
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v74    # "_result":I
    :sswitch_1a
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@467
    move-object/from16 v0, p2

    #@469
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@46c
    .line 440
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@46f
    move-result-object v7

    #@470
    .line 442
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@473
    move-result-object v8

    #@474
    .line 444
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@477
    move-result v9

    #@478
    .line 446
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@47b
    move-result v10

    #@47c
    .line 448
    .local v10, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@47f
    move-result v11

    #@480
    .local v11, "_arg4":I
    move-object/from16 v6, p0

    #@482
    .line 449
    invoke-virtual/range {v6 .. v11}, Landroid/content/pm/IPackageManager$Stub;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;III)V

    #@485
    .line 450
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@488
    .line 451
    const/4 v6, 0x1

    #@489
    return v6

    #@48a
    .line 455
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v11    # "_arg4":I
    :sswitch_1b
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@48d
    move-object/from16 v0, p2

    #@48f
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@492
    .line 457
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@495
    move-result v45

    #@496
    .line 459
    .restart local v45    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@499
    move-result v36

    #@49a
    .line 461
    .restart local v36    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@49d
    move-result v9

    #@49e
    .line 462
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    #@4a0
    move/from16 v1, v45

    #@4a2
    move/from16 v2, v36

    #@4a4
    invoke-virtual {v0, v1, v2, v9}, Landroid/content/pm/IPackageManager$Stub;->updatePermissionFlagsForAllApps(III)V

    #@4a7
    .line 463
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4aa
    .line 464
    const/4 v6, 0x1

    #@4ab
    return v6

    #@4ac
    .line 468
    .end local v9    # "_arg2":I
    .end local v36    # "_arg1":I
    .end local v45    # "_arg0":I
    :sswitch_1c
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@4af
    move-object/from16 v0, p2

    #@4b1
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4b4
    .line 470
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@4b7
    move-result-object v7

    #@4b8
    .line 472
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@4bb
    move-result-object v8

    #@4bc
    .line 474
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4bf
    move-result v9

    #@4c0
    .line 475
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    #@4c2
    invoke-virtual {v0, v7, v8, v9}, Landroid/content/pm/IPackageManager$Stub;->shouldShowRequestPermissionRationale(Ljava/lang/String;Ljava/lang/String;I)Z

    #@4c5
    move-result v99

    #@4c6
    .line 476
    .restart local v99    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4c9
    .line 477
    if-eqz v99, :cond_13

    #@4cb
    const/4 v6, 0x1

    #@4cc
    :goto_13
    move-object/from16 v0, p3

    #@4ce
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@4d1
    .line 478
    const/4 v6, 0x1

    #@4d2
    return v6

    #@4d3
    .line 477
    :cond_13
    const/4 v6, 0x0

    #@4d4
    goto :goto_13

    #@4d5
    .line 482
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v99    # "_result":Z
    :sswitch_1d
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@4d8
    move-object/from16 v0, p2

    #@4da
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4dd
    .line 484
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@4e0
    move-result-object v7

    #@4e1
    .line 485
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@4e3
    invoke-virtual {v0, v7}, Landroid/content/pm/IPackageManager$Stub;->isProtectedBroadcast(Ljava/lang/String;)Z

    #@4e6
    move-result v99

    #@4e7
    .line 486
    .restart local v99    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4ea
    .line 487
    if-eqz v99, :cond_14

    #@4ec
    const/4 v6, 0x1

    #@4ed
    :goto_14
    move-object/from16 v0, p3

    #@4ef
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@4f2
    .line 488
    const/4 v6, 0x1

    #@4f3
    return v6

    #@4f4
    .line 487
    :cond_14
    const/4 v6, 0x0

    #@4f5
    goto :goto_14

    #@4f6
    .line 492
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v99    # "_result":Z
    :sswitch_1e
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@4f9
    move-object/from16 v0, p2

    #@4fb
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4fe
    .line 494
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@501
    move-result-object v7

    #@502
    .line 496
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@505
    move-result-object v8

    #@506
    .line 497
    .restart local v8    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@508
    invoke-virtual {v0, v7, v8}, Landroid/content/pm/IPackageManager$Stub;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    #@50b
    move-result v74

    #@50c
    .line 498
    .restart local v74    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@50f
    .line 499
    move-object/from16 v0, p3

    #@511
    move/from16 v1, v74

    #@513
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@516
    .line 500
    const/4 v6, 0x1

    #@517
    return v6

    #@518
    .line 504
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v74    # "_result":I
    :sswitch_1f
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@51b
    move-object/from16 v0, p2

    #@51d
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@520
    .line 506
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@523
    move-result v45

    #@524
    .line 508
    .restart local v45    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@527
    move-result v36

    #@528
    .line 509
    .restart local v36    # "_arg1":I
    move-object/from16 v0, p0

    #@52a
    move/from16 v1, v45

    #@52c
    move/from16 v2, v36

    #@52e
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->checkUidSignatures(II)I

    #@531
    move-result v74

    #@532
    .line 510
    .restart local v74    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@535
    .line 511
    move-object/from16 v0, p3

    #@537
    move/from16 v1, v74

    #@539
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@53c
    .line 512
    const/4 v6, 0x1

    #@53d
    return v6

    #@53e
    .line 516
    .end local v36    # "_arg1":I
    .end local v45    # "_arg0":I
    .end local v74    # "_result":I
    :sswitch_20
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@541
    move-object/from16 v0, p2

    #@543
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@546
    .line 518
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@549
    move-result v45

    #@54a
    .line 519
    .restart local v45    # "_arg0":I
    move-object/from16 v0, p0

    #@54c
    move/from16 v1, v45

    #@54e
    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getPackagesForUid(I)[Ljava/lang/String;

    #@551
    move-result-object v103

    #@552
    .line 520
    .restart local v103    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@555
    .line 521
    move-object/from16 v0, p3

    #@557
    move-object/from16 v1, v103

    #@559
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@55c
    .line 522
    const/4 v6, 0x1

    #@55d
    return v6

    #@55e
    .line 526
    .end local v45    # "_arg0":I
    .end local v103    # "_result":[Ljava/lang/String;
    :sswitch_21
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@561
    move-object/from16 v0, p2

    #@563
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@566
    .line 528
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@569
    move-result v45

    #@56a
    .line 529
    .restart local v45    # "_arg0":I
    move-object/from16 v0, p0

    #@56c
    move/from16 v1, v45

    #@56e
    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getNameForUid(I)Ljava/lang/String;

    #@571
    move-result-object v90

    #@572
    .line 530
    .local v90, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@575
    .line 531
    move-object/from16 v0, p3

    #@577
    move-object/from16 v1, v90

    #@579
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@57c
    .line 532
    const/4 v6, 0x1

    #@57d
    return v6

    #@57e
    .line 536
    .end local v45    # "_arg0":I
    .end local v90    # "_result":Ljava/lang/String;
    :sswitch_22
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@581
    move-object/from16 v0, p2

    #@583
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@586
    .line 538
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@589
    move-result-object v7

    #@58a
    .line 539
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@58c
    invoke-virtual {v0, v7}, Landroid/content/pm/IPackageManager$Stub;->getUidForSharedUser(Ljava/lang/String;)I

    #@58f
    move-result v74

    #@590
    .line 540
    .restart local v74    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@593
    .line 541
    move-object/from16 v0, p3

    #@595
    move/from16 v1, v74

    #@597
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@59a
    .line 542
    const/4 v6, 0x1

    #@59b
    return v6

    #@59c
    .line 546
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v74    # "_result":I
    :sswitch_23
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@59f
    move-object/from16 v0, p2

    #@5a1
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5a4
    .line 548
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5a7
    move-result v45

    #@5a8
    .line 549
    .restart local v45    # "_arg0":I
    move-object/from16 v0, p0

    #@5aa
    move/from16 v1, v45

    #@5ac
    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getFlagsForUid(I)I

    #@5af
    move-result v74

    #@5b0
    .line 550
    .restart local v74    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@5b3
    .line 551
    move-object/from16 v0, p3

    #@5b5
    move/from16 v1, v74

    #@5b7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@5ba
    .line 552
    const/4 v6, 0x1

    #@5bb
    return v6

    #@5bc
    .line 556
    .end local v45    # "_arg0":I
    .end local v74    # "_result":I
    :sswitch_24
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@5bf
    move-object/from16 v0, p2

    #@5c1
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5c4
    .line 558
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5c7
    move-result v45

    #@5c8
    .line 559
    .restart local v45    # "_arg0":I
    move-object/from16 v0, p0

    #@5ca
    move/from16 v1, v45

    #@5cc
    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getPrivateFlagsForUid(I)I

    #@5cf
    move-result v74

    #@5d0
    .line 560
    .restart local v74    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@5d3
    .line 561
    move-object/from16 v0, p3

    #@5d5
    move/from16 v1, v74

    #@5d7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@5da
    .line 562
    const/4 v6, 0x1

    #@5db
    return v6

    #@5dc
    .line 566
    .end local v45    # "_arg0":I
    .end local v74    # "_result":I
    :sswitch_25
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@5df
    move-object/from16 v0, p2

    #@5e1
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5e4
    .line 568
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5e7
    move-result v45

    #@5e8
    .line 569
    .restart local v45    # "_arg0":I
    move-object/from16 v0, p0

    #@5ea
    move/from16 v1, v45

    #@5ec
    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->isUidPrivileged(I)Z

    #@5ef
    move-result v99

    #@5f0
    .line 570
    .restart local v99    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@5f3
    .line 571
    if-eqz v99, :cond_15

    #@5f5
    const/4 v6, 0x1

    #@5f6
    :goto_15
    move-object/from16 v0, p3

    #@5f8
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@5fb
    .line 572
    const/4 v6, 0x1

    #@5fc
    return v6

    #@5fd
    .line 571
    :cond_15
    const/4 v6, 0x0

    #@5fe
    goto :goto_15

    #@5ff
    .line 576
    .end local v45    # "_arg0":I
    .end local v99    # "_result":Z
    :sswitch_26
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@602
    move-object/from16 v0, p2

    #@604
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@607
    .line 578
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@60a
    move-result-object v7

    #@60b
    .line 579
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@60d
    invoke-virtual {v0, v7}, Landroid/content/pm/IPackageManager$Stub;->getAppOpPermissionPackages(Ljava/lang/String;)[Ljava/lang/String;

    #@610
    move-result-object v103

    #@611
    .line 580
    .restart local v103    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@614
    .line 581
    move-object/from16 v0, p3

    #@616
    move-object/from16 v1, v103

    #@618
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@61b
    .line 582
    const/4 v6, 0x1

    #@61c
    return v6

    #@61d
    .line 586
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v103    # "_result":[Ljava/lang/String;
    :sswitch_27
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@620
    move-object/from16 v0, p2

    #@622
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@625
    .line 588
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@628
    move-result v6

    #@629
    if-eqz v6, :cond_16

    #@62b
    .line 589
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@62d
    move-object/from16 v0, p2

    #@62f
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@632
    move-result-object v28

    #@633
    check-cast v28, Landroid/content/Intent;

    #@635
    .line 595
    :goto_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@638
    move-result-object v8

    #@639
    .line 597
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@63c
    move-result v9

    #@63d
    .line 599
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@640
    move-result v10

    #@641
    .line 600
    .restart local v10    # "_arg3":I
    move-object/from16 v0, p0

    #@643
    move-object/from16 v1, v28

    #@645
    invoke-virtual {v0, v1, v8, v9, v10}, Landroid/content/pm/IPackageManager$Stub;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    #@648
    move-result-object v87

    #@649
    .line 601
    .local v87, "_result":Landroid/content/pm/ResolveInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@64c
    .line 602
    if-eqz v87, :cond_17

    #@64e
    .line 603
    const/4 v6, 0x1

    #@64f
    move-object/from16 v0, p3

    #@651
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@654
    .line 604
    const/4 v6, 0x1

    #@655
    move-object/from16 v0, v87

    #@657
    move-object/from16 v1, p3

    #@659
    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@65c
    .line 609
    :goto_17
    const/4 v6, 0x1

    #@65d
    return v6

    #@65e
    .line 592
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v87    # "_result":Landroid/content/pm/ResolveInfo;
    :cond_16
    const/16 v28, 0x0

    #@660
    .local v28, "_arg0":Landroid/content/Intent;
    goto :goto_16

    #@661
    .line 607
    .end local v28    # "_arg0":Landroid/content/Intent;
    .restart local v8    # "_arg1":Ljava/lang/String;
    .restart local v9    # "_arg2":I
    .restart local v10    # "_arg3":I
    .restart local v87    # "_result":Landroid/content/pm/ResolveInfo;
    :cond_17
    const/4 v6, 0x0

    #@662
    move-object/from16 v0, p3

    #@664
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@667
    goto :goto_17

    #@668
    .line 613
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v87    # "_result":Landroid/content/pm/ResolveInfo;
    :sswitch_28
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@66b
    move-object/from16 v0, p2

    #@66d
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@670
    .line 615
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@673
    move-result v6

    #@674
    if-eqz v6, :cond_18

    #@676
    .line 616
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@678
    move-object/from16 v0, p2

    #@67a
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@67d
    move-result-object v28

    #@67e
    check-cast v28, Landroid/content/Intent;

    #@680
    .line 622
    :goto_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@683
    move-result-object v8

    #@684
    .line 624
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@687
    move-result v9

    #@688
    .line 626
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@68b
    move-result v10

    #@68c
    .line 627
    .restart local v10    # "_arg3":I
    move-object/from16 v0, p0

    #@68e
    move-object/from16 v1, v28

    #@690
    invoke-virtual {v0, v1, v8, v9, v10}, Landroid/content/pm/IPackageManager$Stub;->canForwardTo(Landroid/content/Intent;Ljava/lang/String;II)Z

    #@693
    move-result v99

    #@694
    .line 628
    .restart local v99    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@697
    .line 629
    if-eqz v99, :cond_19

    #@699
    const/4 v6, 0x1

    #@69a
    :goto_19
    move-object/from16 v0, p3

    #@69c
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@69f
    .line 630
    const/4 v6, 0x1

    #@6a0
    return v6

    #@6a1
    .line 619
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v99    # "_result":Z
    :cond_18
    const/16 v28, 0x0

    #@6a3
    .restart local v28    # "_arg0":Landroid/content/Intent;
    goto :goto_18

    #@6a4
    .line 629
    .end local v28    # "_arg0":Landroid/content/Intent;
    .restart local v8    # "_arg1":Ljava/lang/String;
    .restart local v9    # "_arg2":I
    .restart local v10    # "_arg3":I
    .restart local v99    # "_result":Z
    :cond_19
    const/4 v6, 0x0

    #@6a5
    goto :goto_19

    #@6a6
    .line 634
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v99    # "_result":Z
    :sswitch_29
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@6a9
    move-object/from16 v0, p2

    #@6ab
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6ae
    .line 636
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@6b1
    move-result v6

    #@6b2
    if-eqz v6, :cond_1a

    #@6b4
    .line 637
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@6b6
    move-object/from16 v0, p2

    #@6b8
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@6bb
    move-result-object v28

    #@6bc
    check-cast v28, Landroid/content/Intent;

    #@6be
    .line 643
    :goto_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@6c1
    move-result-object v8

    #@6c2
    .line 645
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@6c5
    move-result v9

    #@6c6
    .line 647
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@6c9
    move-result v10

    #@6ca
    .line 648
    .restart local v10    # "_arg3":I
    move-object/from16 v0, p0

    #@6cc
    move-object/from16 v1, v28

    #@6ce
    invoke-virtual {v0, v1, v8, v9, v10}, Landroid/content/pm/IPackageManager$Stub;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    #@6d1
    move-result-object v98

    #@6d2
    .line 649
    .local v98, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@6d5
    .line 650
    move-object/from16 v0, p3

    #@6d7
    move-object/from16 v1, v98

    #@6d9
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@6dc
    .line 651
    const/4 v6, 0x1

    #@6dd
    return v6

    #@6de
    .line 640
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v98    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_1a
    const/16 v28, 0x0

    #@6e0
    .restart local v28    # "_arg0":Landroid/content/Intent;
    goto :goto_1a

    #@6e1
    .line 655
    .end local v28    # "_arg0":Landroid/content/Intent;
    :sswitch_2a
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@6e4
    move-object/from16 v0, p2

    #@6e6
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6e9
    .line 657
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@6ec
    move-result v6

    #@6ed
    if-eqz v6, :cond_1b

    #@6ef
    .line 658
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@6f1
    move-object/from16 v0, p2

    #@6f3
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@6f6
    move-result-object v13

    #@6f7
    check-cast v13, Landroid/content/ComponentName;

    #@6f9
    .line 664
    :goto_1b
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@6fb
    move-object/from16 v0, p2

    #@6fd
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@700
    move-result-object v14

    #@701
    check-cast v14, [Landroid/content/Intent;

    #@703
    .line 666
    .local v14, "_arg1":[Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@706
    move-result-object v15

    #@707
    .line 668
    .local v15, "_arg2":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@70a
    move-result v6

    #@70b
    if-eqz v6, :cond_1c

    #@70d
    .line 669
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@70f
    move-object/from16 v0, p2

    #@711
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@714
    move-result-object v16

    #@715
    check-cast v16, Landroid/content/Intent;

    #@717
    .line 675
    :goto_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@71a
    move-result-object v17

    #@71b
    .line 677
    .local v17, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@71e
    move-result v18

    #@71f
    .line 679
    .local v18, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@722
    move-result v19

    #@723
    .local v19, "_arg6":I
    move-object/from16 v12, p0

    #@725
    .line 680
    invoke-virtual/range {v12 .. v19}, Landroid/content/pm/IPackageManager$Stub;->queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;[Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    #@728
    move-result-object v98

    #@729
    .line 681
    .restart local v98    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@72c
    .line 682
    move-object/from16 v0, p3

    #@72e
    move-object/from16 v1, v98

    #@730
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@733
    .line 683
    const/4 v6, 0x1

    #@734
    return v6

    #@735
    .line 661
    .end local v14    # "_arg1":[Landroid/content/Intent;
    .end local v15    # "_arg2":[Ljava/lang/String;
    .end local v17    # "_arg4":Ljava/lang/String;
    .end local v18    # "_arg5":I
    .end local v19    # "_arg6":I
    .end local v98    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_1b
    const/4 v13, 0x0

    #@736
    .restart local v13    # "_arg0":Landroid/content/ComponentName;
    goto :goto_1b

    #@737
    .line 672
    .end local v13    # "_arg0":Landroid/content/ComponentName;
    .restart local v14    # "_arg1":[Landroid/content/Intent;
    .restart local v15    # "_arg2":[Ljava/lang/String;
    :cond_1c
    const/16 v16, 0x0

    #@739
    .local v16, "_arg3":Landroid/content/Intent;
    goto :goto_1c

    #@73a
    .line 687
    .end local v14    # "_arg1":[Landroid/content/Intent;
    .end local v15    # "_arg2":[Ljava/lang/String;
    .end local v16    # "_arg3":Landroid/content/Intent;
    :sswitch_2b
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@73d
    move-object/from16 v0, p2

    #@73f
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@742
    .line 689
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@745
    move-result v6

    #@746
    if-eqz v6, :cond_1d

    #@748
    .line 690
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@74a
    move-object/from16 v0, p2

    #@74c
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@74f
    move-result-object v28

    #@750
    check-cast v28, Landroid/content/Intent;

    #@752
    .line 696
    :goto_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@755
    move-result-object v8

    #@756
    .line 698
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@759
    move-result v9

    #@75a
    .line 700
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@75d
    move-result v10

    #@75e
    .line 701
    .restart local v10    # "_arg3":I
    move-object/from16 v0, p0

    #@760
    move-object/from16 v1, v28

    #@762
    invoke-virtual {v0, v1, v8, v9, v10}, Landroid/content/pm/IPackageManager$Stub;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    #@765
    move-result-object v98

    #@766
    .line 702
    .restart local v98    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@769
    .line 703
    move-object/from16 v0, p3

    #@76b
    move-object/from16 v1, v98

    #@76d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@770
    .line 704
    const/4 v6, 0x1

    #@771
    return v6

    #@772
    .line 693
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v98    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_1d
    const/16 v28, 0x0

    #@774
    .restart local v28    # "_arg0":Landroid/content/Intent;
    goto :goto_1d

    #@775
    .line 708
    .end local v28    # "_arg0":Landroid/content/Intent;
    :sswitch_2c
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@778
    move-object/from16 v0, p2

    #@77a
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@77d
    .line 710
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@780
    move-result v6

    #@781
    if-eqz v6, :cond_1e

    #@783
    .line 711
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@785
    move-object/from16 v0, p2

    #@787
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@78a
    move-result-object v28

    #@78b
    check-cast v28, Landroid/content/Intent;

    #@78d
    .line 717
    :goto_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@790
    move-result-object v8

    #@791
    .line 719
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@794
    move-result v9

    #@795
    .line 721
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@798
    move-result v10

    #@799
    .line 722
    .restart local v10    # "_arg3":I
    move-object/from16 v0, p0

    #@79b
    move-object/from16 v1, v28

    #@79d
    invoke-virtual {v0, v1, v8, v9, v10}, Landroid/content/pm/IPackageManager$Stub;->resolveService(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    #@7a0
    move-result-object v87

    #@7a1
    .line 723
    .restart local v87    # "_result":Landroid/content/pm/ResolveInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@7a4
    .line 724
    if-eqz v87, :cond_1f

    #@7a6
    .line 725
    const/4 v6, 0x1

    #@7a7
    move-object/from16 v0, p3

    #@7a9
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@7ac
    .line 726
    const/4 v6, 0x1

    #@7ad
    move-object/from16 v0, v87

    #@7af
    move-object/from16 v1, p3

    #@7b1
    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@7b4
    .line 731
    :goto_1f
    const/4 v6, 0x1

    #@7b5
    return v6

    #@7b6
    .line 714
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v87    # "_result":Landroid/content/pm/ResolveInfo;
    :cond_1e
    const/16 v28, 0x0

    #@7b8
    .restart local v28    # "_arg0":Landroid/content/Intent;
    goto :goto_1e

    #@7b9
    .line 729
    .end local v28    # "_arg0":Landroid/content/Intent;
    .restart local v8    # "_arg1":Ljava/lang/String;
    .restart local v9    # "_arg2":I
    .restart local v10    # "_arg3":I
    .restart local v87    # "_result":Landroid/content/pm/ResolveInfo;
    :cond_1f
    const/4 v6, 0x0

    #@7ba
    move-object/from16 v0, p3

    #@7bc
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@7bf
    goto :goto_1f

    #@7c0
    .line 735
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v87    # "_result":Landroid/content/pm/ResolveInfo;
    :sswitch_2d
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@7c3
    move-object/from16 v0, p2

    #@7c5
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7c8
    .line 737
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@7cb
    move-result v6

    #@7cc
    if-eqz v6, :cond_20

    #@7ce
    .line 738
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7d0
    move-object/from16 v0, p2

    #@7d2
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@7d5
    move-result-object v28

    #@7d6
    check-cast v28, Landroid/content/Intent;

    #@7d8
    .line 744
    :goto_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@7db
    move-result-object v8

    #@7dc
    .line 746
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@7df
    move-result v9

    #@7e0
    .line 748
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@7e3
    move-result v10

    #@7e4
    .line 749
    .restart local v10    # "_arg3":I
    move-object/from16 v0, p0

    #@7e6
    move-object/from16 v1, v28

    #@7e8
    invoke-virtual {v0, v1, v8, v9, v10}, Landroid/content/pm/IPackageManager$Stub;->queryIntentServices(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    #@7eb
    move-result-object v98

    #@7ec
    .line 750
    .restart local v98    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@7ef
    .line 751
    move-object/from16 v0, p3

    #@7f1
    move-object/from16 v1, v98

    #@7f3
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@7f6
    .line 752
    const/4 v6, 0x1

    #@7f7
    return v6

    #@7f8
    .line 741
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v98    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_20
    const/16 v28, 0x0

    #@7fa
    .restart local v28    # "_arg0":Landroid/content/Intent;
    goto :goto_20

    #@7fb
    .line 756
    .end local v28    # "_arg0":Landroid/content/Intent;
    :sswitch_2e
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@7fe
    move-object/from16 v0, p2

    #@800
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@803
    .line 758
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@806
    move-result v6

    #@807
    if-eqz v6, :cond_21

    #@809
    .line 759
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@80b
    move-object/from16 v0, p2

    #@80d
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@810
    move-result-object v28

    #@811
    check-cast v28, Landroid/content/Intent;

    #@813
    .line 765
    :goto_21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@816
    move-result-object v8

    #@817
    .line 767
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@81a
    move-result v9

    #@81b
    .line 769
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@81e
    move-result v10

    #@81f
    .line 770
    .restart local v10    # "_arg3":I
    move-object/from16 v0, p0

    #@821
    move-object/from16 v1, v28

    #@823
    invoke-virtual {v0, v1, v8, v9, v10}, Landroid/content/pm/IPackageManager$Stub;->queryIntentContentProviders(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    #@826
    move-result-object v98

    #@827
    .line 771
    .restart local v98    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@82a
    .line 772
    move-object/from16 v0, p3

    #@82c
    move-object/from16 v1, v98

    #@82e
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@831
    .line 773
    const/4 v6, 0x1

    #@832
    return v6

    #@833
    .line 762
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v98    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_21
    const/16 v28, 0x0

    #@835
    .restart local v28    # "_arg0":Landroid/content/Intent;
    goto :goto_21

    #@836
    .line 777
    .end local v28    # "_arg0":Landroid/content/Intent;
    :sswitch_2f
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@839
    move-object/from16 v0, p2

    #@83b
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@83e
    .line 779
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@841
    move-result v45

    #@842
    .line 781
    .restart local v45    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@845
    move-result v36

    #@846
    .line 782
    .restart local v36    # "_arg1":I
    move-object/from16 v0, p0

    #@848
    move/from16 v1, v45

    #@84a
    move/from16 v2, v36

    #@84c
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->getInstalledPackages(II)Landroid/content/pm/ParceledListSlice;

    #@84f
    move-result-object v83

    #@850
    .line 783
    .local v83, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@853
    .line 784
    if-eqz v83, :cond_22

    #@855
    .line 785
    const/4 v6, 0x1

    #@856
    move-object/from16 v0, p3

    #@858
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@85b
    .line 786
    const/4 v6, 0x1

    #@85c
    move-object/from16 v0, v83

    #@85e
    move-object/from16 v1, p3

    #@860
    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    #@863
    .line 791
    :goto_22
    const/4 v6, 0x1

    #@864
    return v6

    #@865
    .line 789
    :cond_22
    const/4 v6, 0x0

    #@866
    move-object/from16 v0, p3

    #@868
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@86b
    goto :goto_22

    #@86c
    .line 795
    .end local v36    # "_arg1":I
    .end local v45    # "_arg0":I
    .end local v83    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_30
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@86f
    move-object/from16 v0, p2

    #@871
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@874
    .line 797
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@877
    move-result-object v55

    #@878
    .line 799
    .restart local v55    # "_arg0":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@87b
    move-result v36

    #@87c
    .line 801
    .restart local v36    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@87f
    move-result v9

    #@880
    .line 802
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    #@882
    move-object/from16 v1, v55

    #@884
    move/from16 v2, v36

    #@886
    invoke-virtual {v0, v1, v2, v9}, Landroid/content/pm/IPackageManager$Stub;->getPackagesHoldingPermissions([Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    #@889
    move-result-object v83

    #@88a
    .line 803
    .restart local v83    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@88d
    .line 804
    if-eqz v83, :cond_23

    #@88f
    .line 805
    const/4 v6, 0x1

    #@890
    move-object/from16 v0, p3

    #@892
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@895
    .line 806
    const/4 v6, 0x1

    #@896
    move-object/from16 v0, v83

    #@898
    move-object/from16 v1, p3

    #@89a
    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    #@89d
    .line 811
    :goto_23
    const/4 v6, 0x1

    #@89e
    return v6

    #@89f
    .line 809
    :cond_23
    const/4 v6, 0x0

    #@8a0
    move-object/from16 v0, p3

    #@8a2
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@8a5
    goto :goto_23

    #@8a6
    .line 815
    .end local v9    # "_arg2":I
    .end local v36    # "_arg1":I
    .end local v55    # "_arg0":[Ljava/lang/String;
    .end local v83    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_31
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@8a9
    move-object/from16 v0, p2

    #@8ab
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@8ae
    .line 817
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@8b1
    move-result v45

    #@8b2
    .line 819
    .restart local v45    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@8b5
    move-result v36

    #@8b6
    .line 820
    .restart local v36    # "_arg1":I
    move-object/from16 v0, p0

    #@8b8
    move/from16 v1, v45

    #@8ba
    move/from16 v2, v36

    #@8bc
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->getInstalledApplications(II)Landroid/content/pm/ParceledListSlice;

    #@8bf
    move-result-object v83

    #@8c0
    .line 821
    .restart local v83    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@8c3
    .line 822
    if-eqz v83, :cond_24

    #@8c5
    .line 823
    const/4 v6, 0x1

    #@8c6
    move-object/from16 v0, p3

    #@8c8
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@8cb
    .line 824
    const/4 v6, 0x1

    #@8cc
    move-object/from16 v0, v83

    #@8ce
    move-object/from16 v1, p3

    #@8d0
    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    #@8d3
    .line 829
    :goto_24
    const/4 v6, 0x1

    #@8d4
    return v6

    #@8d5
    .line 827
    :cond_24
    const/4 v6, 0x0

    #@8d6
    move-object/from16 v0, p3

    #@8d8
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@8db
    goto :goto_24

    #@8dc
    .line 833
    .end local v36    # "_arg1":I
    .end local v45    # "_arg0":I
    .end local v83    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_32
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@8df
    move-object/from16 v0, p2

    #@8e1
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@8e4
    .line 835
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@8e7
    move-result v45

    #@8e8
    .line 836
    .restart local v45    # "_arg0":I
    move-object/from16 v0, p0

    #@8ea
    move/from16 v1, v45

    #@8ec
    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getPersistentApplications(I)Ljava/util/List;

    #@8ef
    move-result-object v92

    #@8f0
    .line 837
    .local v92, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@8f3
    .line 838
    move-object/from16 v0, p3

    #@8f5
    move-object/from16 v1, v92

    #@8f7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@8fa
    .line 839
    const/4 v6, 0x1

    #@8fb
    return v6

    #@8fc
    .line 843
    .end local v45    # "_arg0":I
    .end local v92    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :sswitch_33
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@8ff
    move-object/from16 v0, p2

    #@901
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@904
    .line 845
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@907
    move-result-object v7

    #@908
    .line 847
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@90b
    move-result v36

    #@90c
    .line 849
    .restart local v36    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@90f
    move-result v9

    #@910
    .line 850
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    #@912
    move/from16 v1, v36

    #@914
    invoke-virtual {v0, v7, v1, v9}, Landroid/content/pm/IPackageManager$Stub;->resolveContentProvider(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    #@917
    move-result-object v86

    #@918
    .line 851
    .restart local v86    # "_result":Landroid/content/pm/ProviderInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@91b
    .line 852
    if-eqz v86, :cond_25

    #@91d
    .line 853
    const/4 v6, 0x1

    #@91e
    move-object/from16 v0, p3

    #@920
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@923
    .line 854
    const/4 v6, 0x1

    #@924
    move-object/from16 v0, v86

    #@926
    move-object/from16 v1, p3

    #@928
    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ProviderInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@92b
    .line 859
    :goto_25
    const/4 v6, 0x1

    #@92c
    return v6

    #@92d
    .line 857
    :cond_25
    const/4 v6, 0x0

    #@92e
    move-object/from16 v0, p3

    #@930
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@933
    goto :goto_25

    #@934
    .line 863
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v36    # "_arg1":I
    .end local v86    # "_result":Landroid/content/pm/ProviderInfo;
    :sswitch_34
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@937
    move-object/from16 v0, p2

    #@939
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@93c
    .line 865
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    #@93f
    move-result-object v52

    #@940
    .line 867
    .local v52, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v6, Landroid/content/pm/ProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@942
    move-object/from16 v0, p2

    #@944
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    #@947
    move-result-object v65

    #@948
    .line 868
    .local v65, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    move-object/from16 v0, p0

    #@94a
    move-object/from16 v1, v52

    #@94c
    move-object/from16 v2, v65

    #@94e
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->querySyncProviders(Ljava/util/List;Ljava/util/List;)V

    #@951
    .line 869
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@954
    .line 870
    move-object/from16 v0, p3

    #@956
    move-object/from16 v1, v52

    #@958
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    #@95b
    .line 871
    move-object/from16 v0, p3

    #@95d
    move-object/from16 v1, v65

    #@95f
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@962
    .line 872
    const/4 v6, 0x1

    #@963
    return v6

    #@964
    .line 876
    .end local v52    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v65    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    :sswitch_35
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@967
    move-object/from16 v0, p2

    #@969
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@96c
    .line 878
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@96f
    move-result-object v7

    #@970
    .line 880
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@973
    move-result v36

    #@974
    .line 882
    .restart local v36    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@977
    move-result v9

    #@978
    .line 883
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    #@97a
    move/from16 v1, v36

    #@97c
    invoke-virtual {v0, v7, v1, v9}, Landroid/content/pm/IPackageManager$Stub;->queryContentProviders(Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    #@97f
    move-result-object v83

    #@980
    .line 884
    .restart local v83    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@983
    .line 885
    if-eqz v83, :cond_26

    #@985
    .line 886
    const/4 v6, 0x1

    #@986
    move-object/from16 v0, p3

    #@988
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@98b
    .line 887
    const/4 v6, 0x1

    #@98c
    move-object/from16 v0, v83

    #@98e
    move-object/from16 v1, p3

    #@990
    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    #@993
    .line 892
    :goto_26
    const/4 v6, 0x1

    #@994
    return v6

    #@995
    .line 890
    :cond_26
    const/4 v6, 0x0

    #@996
    move-object/from16 v0, p3

    #@998
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@99b
    goto :goto_26

    #@99c
    .line 896
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v36    # "_arg1":I
    .end local v83    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_36
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@99f
    move-object/from16 v0, p2

    #@9a1
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@9a4
    .line 898
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@9a7
    move-result v6

    #@9a8
    if-eqz v6, :cond_27

    #@9aa
    .line 899
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@9ac
    move-object/from16 v0, p2

    #@9ae
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@9b1
    move-result-object v13

    #@9b2
    check-cast v13, Landroid/content/ComponentName;

    #@9b4
    .line 905
    :goto_27
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@9b7
    move-result v36

    #@9b8
    .line 906
    .restart local v36    # "_arg1":I
    move-object/from16 v0, p0

    #@9ba
    move/from16 v1, v36

    #@9bc
    invoke-virtual {v0, v13, v1}, Landroid/content/pm/IPackageManager$Stub;->getInstrumentationInfo(Landroid/content/ComponentName;I)Landroid/content/pm/InstrumentationInfo;

    #@9bf
    move-result-object v79

    #@9c0
    .line 907
    .local v79, "_result":Landroid/content/pm/InstrumentationInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@9c3
    .line 908
    if-eqz v79, :cond_28

    #@9c5
    .line 909
    const/4 v6, 0x1

    #@9c6
    move-object/from16 v0, p3

    #@9c8
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@9cb
    .line 910
    const/4 v6, 0x1

    #@9cc
    move-object/from16 v0, v79

    #@9ce
    move-object/from16 v1, p3

    #@9d0
    invoke-virtual {v0, v1, v6}, Landroid/content/pm/InstrumentationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@9d3
    .line 915
    :goto_28
    const/4 v6, 0x1

    #@9d4
    return v6

    #@9d5
    .line 902
    .end local v36    # "_arg1":I
    .end local v79    # "_result":Landroid/content/pm/InstrumentationInfo;
    :cond_27
    const/4 v13, 0x0

    #@9d6
    .restart local v13    # "_arg0":Landroid/content/ComponentName;
    goto :goto_27

    #@9d7
    .line 913
    .end local v13    # "_arg0":Landroid/content/ComponentName;
    .restart local v36    # "_arg1":I
    .restart local v79    # "_result":Landroid/content/pm/InstrumentationInfo;
    :cond_28
    const/4 v6, 0x0

    #@9d8
    move-object/from16 v0, p3

    #@9da
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@9dd
    goto :goto_28

    #@9de
    .line 919
    .end local v36    # "_arg1":I
    .end local v79    # "_result":Landroid/content/pm/InstrumentationInfo;
    :sswitch_37
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@9e1
    move-object/from16 v0, p2

    #@9e3
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@9e6
    .line 921
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@9e9
    move-result-object v7

    #@9ea
    .line 923
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@9ed
    move-result v36

    #@9ee
    .line 924
    .restart local v36    # "_arg1":I
    move-object/from16 v0, p0

    #@9f0
    move/from16 v1, v36

    #@9f2
    invoke-virtual {v0, v7, v1}, Landroid/content/pm/IPackageManager$Stub;->queryInstrumentation(Ljava/lang/String;I)Ljava/util/List;

    #@9f5
    move-result-object v93

    #@9f6
    .line 925
    .local v93, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstrumentationInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@9f9
    .line 926
    move-object/from16 v0, p3

    #@9fb
    move-object/from16 v1, v93

    #@9fd
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@a00
    .line 927
    const/4 v6, 0x1

    #@a01
    return v6

    #@a02
    .line 931
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v36    # "_arg1":I
    .end local v93    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstrumentationInfo;>;"
    :sswitch_38
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@a05
    move-object/from16 v0, p2

    #@a07
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a0a
    .line 933
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@a0d
    move-result-object v7

    #@a0e
    .line 935
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@a11
    move-result-object v6

    #@a12
    invoke-static {v6}, Landroid/content/pm/IPackageInstallObserver2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageInstallObserver2;

    #@a15
    move-result-object v22

    #@a16
    .line 937
    .local v22, "_arg1":Landroid/content/pm/IPackageInstallObserver2;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@a19
    move-result v9

    #@a1a
    .line 939
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@a1d
    move-result-object v24

    #@a1e
    .line 941
    .local v24, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@a21
    move-result v6

    #@a22
    if-eqz v6, :cond_29

    #@a24
    .line 942
    sget-object v6, Landroid/content/pm/VerificationParams;->CREATOR:Landroid/os/Parcelable$Creator;

    #@a26
    move-object/from16 v0, p2

    #@a28
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@a2b
    move-result-object v25

    #@a2c
    check-cast v25, Landroid/content/pm/VerificationParams;

    #@a2e
    .line 948
    :goto_29
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@a31
    move-result-object v26

    #@a32
    .local v26, "_arg5":Ljava/lang/String;
    move-object/from16 v20, p0

    #@a34
    move-object/from16 v21, v7

    #@a36
    move/from16 v23, v9

    #@a38
    .line 949
    invoke-virtual/range {v20 .. v26}, Landroid/content/pm/IPackageManager$Stub;->installPackage(Ljava/lang/String;Landroid/content/pm/IPackageInstallObserver2;ILjava/lang/String;Landroid/content/pm/VerificationParams;Ljava/lang/String;)V

    #@a3b
    .line 950
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@a3e
    .line 951
    const/4 v6, 0x1

    #@a3f
    return v6

    #@a40
    .line 945
    .end local v26    # "_arg5":Ljava/lang/String;
    :cond_29
    const/16 v25, 0x0

    #@a42
    .local v25, "_arg4":Landroid/content/pm/VerificationParams;
    goto :goto_29

    #@a43
    .line 955
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v22    # "_arg1":Landroid/content/pm/IPackageInstallObserver2;
    .end local v24    # "_arg3":Ljava/lang/String;
    .end local v25    # "_arg4":Landroid/content/pm/VerificationParams;
    :sswitch_39
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@a46
    move-object/from16 v0, p2

    #@a48
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a4b
    .line 957
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@a4e
    move-result-object v7

    #@a4f
    .line 959
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@a52
    move-result-object v6

    #@a53
    invoke-static {v6}, Landroid/content/pm/IPackageInstallObserver2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageInstallObserver2;

    #@a56
    move-result-object v22

    #@a57
    .line 961
    .restart local v22    # "_arg1":Landroid/content/pm/IPackageInstallObserver2;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@a5a
    move-result v9

    #@a5b
    .line 963
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@a5e
    move-result-object v24

    #@a5f
    .line 965
    .restart local v24    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@a62
    move-result v6

    #@a63
    if-eqz v6, :cond_2a

    #@a65
    .line 966
    sget-object v6, Landroid/content/pm/VerificationParams;->CREATOR:Landroid/os/Parcelable$Creator;

    #@a67
    move-object/from16 v0, p2

    #@a69
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@a6c
    move-result-object v25

    #@a6d
    check-cast v25, Landroid/content/pm/VerificationParams;

    #@a6f
    .line 972
    :goto_2a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@a72
    move-result-object v26

    #@a73
    .line 974
    .restart local v26    # "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@a76
    move-result v19

    #@a77
    .restart local v19    # "_arg6":I
    move-object/from16 v20, p0

    #@a79
    move-object/from16 v21, v7

    #@a7b
    move/from16 v23, v9

    #@a7d
    move/from16 v27, v19

    #@a7f
    .line 975
    invoke-virtual/range {v20 .. v27}, Landroid/content/pm/IPackageManager$Stub;->installPackageAsUser(Ljava/lang/String;Landroid/content/pm/IPackageInstallObserver2;ILjava/lang/String;Landroid/content/pm/VerificationParams;Ljava/lang/String;I)V

    #@a82
    .line 976
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@a85
    .line 977
    const/4 v6, 0x1

    #@a86
    return v6

    #@a87
    .line 969
    .end local v19    # "_arg6":I
    .end local v26    # "_arg5":Ljava/lang/String;
    :cond_2a
    const/16 v25, 0x0

    #@a89
    .restart local v25    # "_arg4":Landroid/content/pm/VerificationParams;
    goto :goto_2a

    #@a8a
    .line 981
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v22    # "_arg1":Landroid/content/pm/IPackageInstallObserver2;
    .end local v24    # "_arg3":Ljava/lang/String;
    .end local v25    # "_arg4":Landroid/content/pm/VerificationParams;
    :sswitch_3a
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@a8d
    move-object/from16 v0, p2

    #@a8f
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a92
    .line 983
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@a95
    move-result v45

    #@a96
    .line 984
    .restart local v45    # "_arg0":I
    move-object/from16 v0, p0

    #@a98
    move/from16 v1, v45

    #@a9a
    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->finishPackageInstall(I)V

    #@a9d
    .line 985
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@aa0
    .line 986
    const/4 v6, 0x1

    #@aa1
    return v6

    #@aa2
    .line 990
    .end local v45    # "_arg0":I
    :sswitch_3b
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@aa5
    move-object/from16 v0, p2

    #@aa7
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@aaa
    .line 992
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@aad
    move-result-object v7

    #@aae
    .line 994
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@ab1
    move-result-object v8

    #@ab2
    .line 995
    .restart local v8    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@ab4
    invoke-virtual {v0, v7, v8}, Landroid/content/pm/IPackageManager$Stub;->setInstallerPackageName(Ljava/lang/String;Ljava/lang/String;)V

    #@ab7
    .line 996
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@aba
    .line 997
    const/4 v6, 0x1

    #@abb
    return v6

    #@abc
    .line 1001
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    :sswitch_3c
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@abf
    move-object/from16 v0, p2

    #@ac1
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ac4
    .line 1003
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@ac7
    move-result-object v7

    #@ac8
    .line 1005
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@acb
    move-result-object v6

    #@acc
    invoke-static {v6}, Landroid/content/pm/IPackageDeleteObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDeleteObserver;

    #@acf
    move-result-object v62

    #@ad0
    .line 1007
    .local v62, "_arg1":Landroid/content/pm/IPackageDeleteObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@ad3
    move-result v9

    #@ad4
    .line 1009
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@ad7
    move-result v10

    #@ad8
    .line 1010
    .restart local v10    # "_arg3":I
    move-object/from16 v0, p0

    #@ada
    move-object/from16 v1, v62

    #@adc
    invoke-virtual {v0, v7, v1, v9, v10}, Landroid/content/pm/IPackageManager$Stub;->deletePackageAsUser(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;II)V

    #@adf
    .line 1011
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@ae2
    .line 1012
    const/4 v6, 0x1

    #@ae3
    return v6

    #@ae4
    .line 1016
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v62    # "_arg1":Landroid/content/pm/IPackageDeleteObserver;
    :sswitch_3d
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@ae7
    move-object/from16 v0, p2

    #@ae9
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@aec
    .line 1018
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@aef
    move-result-object v7

    #@af0
    .line 1020
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@af3
    move-result-object v6

    #@af4
    invoke-static {v6}, Landroid/content/pm/IPackageDeleteObserver2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDeleteObserver2;

    #@af7
    move-result-object v61

    #@af8
    .line 1022
    .local v61, "_arg1":Landroid/content/pm/IPackageDeleteObserver2;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@afb
    move-result v9

    #@afc
    .line 1024
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@aff
    move-result v10

    #@b00
    .line 1025
    .restart local v10    # "_arg3":I
    move-object/from16 v0, p0

    #@b02
    move-object/from16 v1, v61

    #@b04
    invoke-virtual {v0, v7, v1, v9, v10}, Landroid/content/pm/IPackageManager$Stub;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver2;II)V

    #@b07
    .line 1026
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@b0a
    .line 1027
    const/4 v6, 0x1

    #@b0b
    return v6

    #@b0c
    .line 1031
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v61    # "_arg1":Landroid/content/pm/IPackageDeleteObserver2;
    :sswitch_3e
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@b0f
    move-object/from16 v0, p2

    #@b11
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b14
    .line 1033
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@b17
    move-result-object v7

    #@b18
    .line 1034
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@b1a
    invoke-virtual {v0, v7}, Landroid/content/pm/IPackageManager$Stub;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    #@b1d
    move-result-object v90

    #@b1e
    .line 1035
    .restart local v90    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@b21
    .line 1036
    move-object/from16 v0, p3

    #@b23
    move-object/from16 v1, v90

    #@b25
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@b28
    .line 1037
    const/4 v6, 0x1

    #@b29
    return v6

    #@b2a
    .line 1041
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v90    # "_result":Ljava/lang/String;
    :sswitch_3f
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@b2d
    move-object/from16 v0, p2

    #@b2f
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b32
    .line 1043
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@b35
    move-result-object v7

    #@b36
    .line 1044
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@b38
    invoke-virtual {v0, v7}, Landroid/content/pm/IPackageManager$Stub;->addPackageToPreferred(Ljava/lang/String;)V

    #@b3b
    .line 1045
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@b3e
    .line 1046
    const/4 v6, 0x1

    #@b3f
    return v6

    #@b40
    .line 1050
    .end local v7    # "_arg0":Ljava/lang/String;
    :sswitch_40
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@b43
    move-object/from16 v0, p2

    #@b45
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b48
    .line 1052
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@b4b
    move-result-object v7

    #@b4c
    .line 1053
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@b4e
    invoke-virtual {v0, v7}, Landroid/content/pm/IPackageManager$Stub;->removePackageFromPreferred(Ljava/lang/String;)V

    #@b51
    .line 1054
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@b54
    .line 1055
    const/4 v6, 0x1

    #@b55
    return v6

    #@b56
    .line 1059
    .end local v7    # "_arg0":Ljava/lang/String;
    :sswitch_41
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@b59
    move-object/from16 v0, p2

    #@b5b
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b5e
    .line 1061
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@b61
    move-result v45

    #@b62
    .line 1062
    .restart local v45    # "_arg0":I
    move-object/from16 v0, p0

    #@b64
    move/from16 v1, v45

    #@b66
    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getPreferredPackages(I)Ljava/util/List;

    #@b69
    move-result-object v95

    #@b6a
    .line 1063
    .local v95, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@b6d
    .line 1064
    move-object/from16 v0, p3

    #@b6f
    move-object/from16 v1, v95

    #@b71
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@b74
    .line 1065
    const/4 v6, 0x1

    #@b75
    return v6

    #@b76
    .line 1069
    .end local v45    # "_arg0":I
    .end local v95    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :sswitch_42
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@b79
    move-object/from16 v0, p2

    #@b7b
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b7e
    .line 1071
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@b81
    move-result v45

    #@b82
    .line 1072
    .restart local v45    # "_arg0":I
    move-object/from16 v0, p0

    #@b84
    move/from16 v1, v45

    #@b86
    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->resetApplicationPreferences(I)V

    #@b89
    .line 1073
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@b8c
    .line 1074
    const/4 v6, 0x1

    #@b8d
    return v6

    #@b8e
    .line 1078
    .end local v45    # "_arg0":I
    :sswitch_43
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@b91
    move-object/from16 v0, p2

    #@b93
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b96
    .line 1080
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@b99
    move-result v6

    #@b9a
    if-eqz v6, :cond_2b

    #@b9c
    .line 1081
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@b9e
    move-object/from16 v0, p2

    #@ba0
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@ba3
    move-result-object v28

    #@ba4
    check-cast v28, Landroid/content/Intent;

    #@ba6
    .line 1087
    :goto_2b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@ba9
    move-result-object v8

    #@baa
    .line 1089
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@bad
    move-result v9

    #@bae
    .line 1090
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    #@bb0
    move-object/from16 v1, v28

    #@bb2
    invoke-virtual {v0, v1, v8, v9}, Landroid/content/pm/IPackageManager$Stub;->getLastChosenActivity(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;

    #@bb5
    move-result-object v87

    #@bb6
    .line 1091
    .restart local v87    # "_result":Landroid/content/pm/ResolveInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@bb9
    .line 1092
    if-eqz v87, :cond_2c

    #@bbb
    .line 1093
    const/4 v6, 0x1

    #@bbc
    move-object/from16 v0, p3

    #@bbe
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@bc1
    .line 1094
    const/4 v6, 0x1

    #@bc2
    move-object/from16 v0, v87

    #@bc4
    move-object/from16 v1, p3

    #@bc6
    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@bc9
    .line 1099
    :goto_2c
    const/4 v6, 0x1

    #@bca
    return v6

    #@bcb
    .line 1084
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v87    # "_result":Landroid/content/pm/ResolveInfo;
    :cond_2b
    const/16 v28, 0x0

    #@bcd
    .restart local v28    # "_arg0":Landroid/content/Intent;
    goto :goto_2b

    #@bce
    .line 1097
    .end local v28    # "_arg0":Landroid/content/Intent;
    .restart local v8    # "_arg1":Ljava/lang/String;
    .restart local v9    # "_arg2":I
    .restart local v87    # "_result":Landroid/content/pm/ResolveInfo;
    :cond_2c
    const/4 v6, 0x0

    #@bcf
    move-object/from16 v0, p3

    #@bd1
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@bd4
    goto :goto_2c

    #@bd5
    .line 1103
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v87    # "_result":Landroid/content/pm/ResolveInfo;
    :sswitch_44
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@bd8
    move-object/from16 v0, p2

    #@bda
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@bdd
    .line 1105
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@be0
    move-result v6

    #@be1
    if-eqz v6, :cond_2d

    #@be3
    .line 1106
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@be5
    move-object/from16 v0, p2

    #@be7
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@bea
    move-result-object v28

    #@beb
    check-cast v28, Landroid/content/Intent;

    #@bed
    .line 1112
    :goto_2d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@bf0
    move-result-object v8

    #@bf1
    .line 1114
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@bf4
    move-result v9

    #@bf5
    .line 1116
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@bf8
    move-result v6

    #@bf9
    if-eqz v6, :cond_2e

    #@bfb
    .line 1117
    sget-object v6, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    #@bfd
    move-object/from16 v0, p2

    #@bff
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@c02
    move-result-object v31

    #@c03
    check-cast v31, Landroid/content/IntentFilter;

    #@c05
    .line 1123
    :goto_2e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@c08
    move-result v11

    #@c09
    .line 1125
    .restart local v11    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@c0c
    move-result v6

    #@c0d
    if-eqz v6, :cond_2f

    #@c0f
    .line 1126
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@c11
    move-object/from16 v0, p2

    #@c13
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@c16
    move-result-object v33

    #@c17
    check-cast v33, Landroid/content/ComponentName;

    #@c19
    :goto_2f
    move-object/from16 v27, p0

    #@c1b
    move-object/from16 v29, v8

    #@c1d
    move/from16 v30, v9

    #@c1f
    move/from16 v32, v11

    #@c21
    .line 1131
    invoke-virtual/range {v27 .. v33}, Landroid/content/pm/IPackageManager$Stub;->setLastChosenActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/IntentFilter;ILandroid/content/ComponentName;)V

    #@c24
    .line 1132
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@c27
    .line 1133
    const/4 v6, 0x1

    #@c28
    return v6

    #@c29
    .line 1109
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v11    # "_arg4":I
    :cond_2d
    const/16 v28, 0x0

    #@c2b
    .restart local v28    # "_arg0":Landroid/content/Intent;
    goto :goto_2d

    #@c2c
    .line 1120
    .end local v28    # "_arg0":Landroid/content/Intent;
    .restart local v8    # "_arg1":Ljava/lang/String;
    .restart local v9    # "_arg2":I
    :cond_2e
    const/16 v31, 0x0

    #@c2e
    .local v31, "_arg3":Landroid/content/IntentFilter;
    goto :goto_2e

    #@c2f
    .line 1129
    .end local v31    # "_arg3":Landroid/content/IntentFilter;
    .restart local v11    # "_arg4":I
    :cond_2f
    const/16 v33, 0x0

    #@c31
    .local v33, "_arg5":Landroid/content/ComponentName;
    goto :goto_2f

    #@c32
    .line 1137
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v11    # "_arg4":I
    .end local v33    # "_arg5":Landroid/content/ComponentName;
    :sswitch_45
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@c35
    move-object/from16 v0, p2

    #@c37
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@c3a
    .line 1139
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@c3d
    move-result v6

    #@c3e
    if-eqz v6, :cond_30

    #@c40
    .line 1140
    sget-object v6, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    #@c42
    move-object/from16 v0, p2

    #@c44
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@c47
    move-result-object v35

    #@c48
    check-cast v35, Landroid/content/IntentFilter;

    #@c4a
    .line 1146
    :goto_30
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@c4d
    move-result v36

    #@c4e
    .line 1148
    .restart local v36    # "_arg1":I
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@c50
    move-object/from16 v0, p2

    #@c52
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@c55
    move-result-object v37

    #@c56
    check-cast v37, [Landroid/content/ComponentName;

    #@c58
    .line 1150
    .local v37, "_arg2":[Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@c5b
    move-result v6

    #@c5c
    if-eqz v6, :cond_31

    #@c5e
    .line 1151
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@c60
    move-object/from16 v0, p2

    #@c62
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@c65
    move-result-object v38

    #@c66
    check-cast v38, Landroid/content/ComponentName;

    #@c68
    .line 1157
    :goto_31
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@c6b
    move-result v11

    #@c6c
    .restart local v11    # "_arg4":I
    move-object/from16 v34, p0

    #@c6e
    move/from16 v39, v11

    #@c70
    .line 1158
    invoke-virtual/range {v34 .. v39}, Landroid/content/pm/IPackageManager$Stub;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;I)V

    #@c73
    .line 1159
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@c76
    .line 1160
    const/4 v6, 0x1

    #@c77
    return v6

    #@c78
    .line 1143
    .end local v11    # "_arg4":I
    .end local v36    # "_arg1":I
    .end local v37    # "_arg2":[Landroid/content/ComponentName;
    :cond_30
    const/16 v35, 0x0

    #@c7a
    .local v35, "_arg0":Landroid/content/IntentFilter;
    goto :goto_30

    #@c7b
    .line 1154
    .end local v35    # "_arg0":Landroid/content/IntentFilter;
    .restart local v36    # "_arg1":I
    .restart local v37    # "_arg2":[Landroid/content/ComponentName;
    :cond_31
    const/16 v38, 0x0

    #@c7d
    .local v38, "_arg3":Landroid/content/ComponentName;
    goto :goto_31

    #@c7e
    .line 1164
    .end local v36    # "_arg1":I
    .end local v37    # "_arg2":[Landroid/content/ComponentName;
    .end local v38    # "_arg3":Landroid/content/ComponentName;
    :sswitch_46
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@c81
    move-object/from16 v0, p2

    #@c83
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@c86
    .line 1166
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@c89
    move-result v6

    #@c8a
    if-eqz v6, :cond_32

    #@c8c
    .line 1167
    sget-object v6, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    #@c8e
    move-object/from16 v0, p2

    #@c90
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@c93
    move-result-object v35

    #@c94
    check-cast v35, Landroid/content/IntentFilter;

    #@c96
    .line 1173
    :goto_32
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@c99
    move-result v36

    #@c9a
    .line 1175
    .restart local v36    # "_arg1":I
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@c9c
    move-object/from16 v0, p2

    #@c9e
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@ca1
    move-result-object v37

    #@ca2
    check-cast v37, [Landroid/content/ComponentName;

    #@ca4
    .line 1177
    .restart local v37    # "_arg2":[Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@ca7
    move-result v6

    #@ca8
    if-eqz v6, :cond_33

    #@caa
    .line 1178
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@cac
    move-object/from16 v0, p2

    #@cae
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@cb1
    move-result-object v38

    #@cb2
    check-cast v38, Landroid/content/ComponentName;

    #@cb4
    .line 1184
    :goto_33
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@cb7
    move-result v11

    #@cb8
    .restart local v11    # "_arg4":I
    move-object/from16 v34, p0

    #@cba
    move/from16 v39, v11

    #@cbc
    .line 1185
    invoke-virtual/range {v34 .. v39}, Landroid/content/pm/IPackageManager$Stub;->replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;I)V

    #@cbf
    .line 1186
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@cc2
    .line 1187
    const/4 v6, 0x1

    #@cc3
    return v6

    #@cc4
    .line 1170
    .end local v11    # "_arg4":I
    .end local v36    # "_arg1":I
    .end local v37    # "_arg2":[Landroid/content/ComponentName;
    :cond_32
    const/16 v35, 0x0

    #@cc6
    .restart local v35    # "_arg0":Landroid/content/IntentFilter;
    goto :goto_32

    #@cc7
    .line 1181
    .end local v35    # "_arg0":Landroid/content/IntentFilter;
    .restart local v36    # "_arg1":I
    .restart local v37    # "_arg2":[Landroid/content/ComponentName;
    :cond_33
    const/16 v38, 0x0

    #@cc9
    .restart local v38    # "_arg3":Landroid/content/ComponentName;
    goto :goto_33

    #@cca
    .line 1191
    .end local v36    # "_arg1":I
    .end local v37    # "_arg2":[Landroid/content/ComponentName;
    .end local v38    # "_arg3":Landroid/content/ComponentName;
    :sswitch_47
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@ccd
    move-object/from16 v0, p2

    #@ccf
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@cd2
    .line 1193
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@cd5
    move-result-object v7

    #@cd6
    .line 1194
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@cd8
    invoke-virtual {v0, v7}, Landroid/content/pm/IPackageManager$Stub;->clearPackagePreferredActivities(Ljava/lang/String;)V

    #@cdb
    .line 1195
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@cde
    .line 1196
    const/4 v6, 0x1

    #@cdf
    return v6

    #@ce0
    .line 1200
    .end local v7    # "_arg0":Ljava/lang/String;
    :sswitch_48
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@ce3
    move-object/from16 v0, p2

    #@ce5
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ce8
    .line 1202
    new-instance v50, Ljava/util/ArrayList;

    #@cea
    invoke-direct/range {v50 .. v50}, Ljava/util/ArrayList;-><init>()V

    #@ced
    .line 1204
    .local v50, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    new-instance v64, Ljava/util/ArrayList;

    #@cef
    invoke-direct/range {v64 .. v64}, Ljava/util/ArrayList;-><init>()V

    #@cf2
    .line 1206
    .local v64, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@cf5
    move-result-object v72

    #@cf6
    .line 1207
    .restart local v72    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    #@cf8
    move-object/from16 v1, v50

    #@cfa
    move-object/from16 v2, v64

    #@cfc
    move-object/from16 v3, v72

    #@cfe
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    #@d01
    move-result v74

    #@d02
    .line 1208
    .restart local v74    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@d05
    .line 1209
    move-object/from16 v0, p3

    #@d07
    move/from16 v1, v74

    #@d09
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@d0c
    .line 1210
    move-object/from16 v0, p3

    #@d0e
    move-object/from16 v1, v50

    #@d10
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@d13
    .line 1211
    move-object/from16 v0, p3

    #@d15
    move-object/from16 v1, v64

    #@d17
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@d1a
    .line 1212
    const/4 v6, 0x1

    #@d1b
    return v6

    #@d1c
    .line 1216
    .end local v50    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    .end local v64    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v72    # "_arg2":Ljava/lang/String;
    .end local v74    # "_result":I
    :sswitch_49
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@d1f
    move-object/from16 v0, p2

    #@d21
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@d24
    .line 1218
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@d27
    move-result v6

    #@d28
    if-eqz v6, :cond_34

    #@d2a
    .line 1219
    sget-object v6, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    #@d2c
    move-object/from16 v0, p2

    #@d2e
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@d31
    move-result-object v35

    #@d32
    check-cast v35, Landroid/content/IntentFilter;

    #@d34
    .line 1225
    :goto_34
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@d37
    move-result v6

    #@d38
    if-eqz v6, :cond_35

    #@d3a
    .line 1226
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@d3c
    move-object/from16 v0, p2

    #@d3e
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@d41
    move-result-object v58

    #@d42
    check-cast v58, Landroid/content/ComponentName;

    #@d44
    .line 1232
    :goto_35
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@d47
    move-result v9

    #@d48
    .line 1233
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    #@d4a
    move-object/from16 v1, v35

    #@d4c
    move-object/from16 v2, v58

    #@d4e
    invoke-virtual {v0, v1, v2, v9}, Landroid/content/pm/IPackageManager$Stub;->addPersistentPreferredActivity(Landroid/content/IntentFilter;Landroid/content/ComponentName;I)V

    #@d51
    .line 1234
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@d54
    .line 1235
    const/4 v6, 0x1

    #@d55
    return v6

    #@d56
    .line 1222
    .end local v9    # "_arg2":I
    :cond_34
    const/16 v35, 0x0

    #@d58
    .restart local v35    # "_arg0":Landroid/content/IntentFilter;
    goto :goto_34

    #@d59
    .line 1229
    .end local v35    # "_arg0":Landroid/content/IntentFilter;
    :cond_35
    const/16 v58, 0x0

    #@d5b
    .local v58, "_arg1":Landroid/content/ComponentName;
    goto :goto_35

    #@d5c
    .line 1239
    .end local v58    # "_arg1":Landroid/content/ComponentName;
    :sswitch_4a
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@d5f
    move-object/from16 v0, p2

    #@d61
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@d64
    .line 1241
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@d67
    move-result-object v7

    #@d68
    .line 1243
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@d6b
    move-result v36

    #@d6c
    .line 1244
    .restart local v36    # "_arg1":I
    move-object/from16 v0, p0

    #@d6e
    move/from16 v1, v36

    #@d70
    invoke-virtual {v0, v7, v1}, Landroid/content/pm/IPackageManager$Stub;->clearPackagePersistentPreferredActivities(Ljava/lang/String;I)V

    #@d73
    .line 1245
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@d76
    .line 1246
    const/4 v6, 0x1

    #@d77
    return v6

    #@d78
    .line 1250
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v36    # "_arg1":I
    :sswitch_4b
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@d7b
    move-object/from16 v0, p2

    #@d7d
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@d80
    .line 1252
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@d83
    move-result v6

    #@d84
    if-eqz v6, :cond_36

    #@d86
    .line 1253
    sget-object v6, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    #@d88
    move-object/from16 v0, p2

    #@d8a
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@d8d
    move-result-object v35

    #@d8e
    check-cast v35, Landroid/content/IntentFilter;

    #@d90
    .line 1259
    :goto_36
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@d93
    move-result-object v8

    #@d94
    .line 1261
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@d97
    move-result v9

    #@d98
    .line 1263
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@d9b
    move-result v10

    #@d9c
    .line 1265
    .restart local v10    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@d9f
    move-result v11

    #@da0
    .restart local v11    # "_arg4":I
    move-object/from16 v39, p0

    #@da2
    move-object/from16 v40, v35

    #@da4
    move-object/from16 v41, v8

    #@da6
    move/from16 v42, v9

    #@da8
    move/from16 v43, v10

    #@daa
    move/from16 v44, v11

    #@dac
    .line 1266
    invoke-virtual/range {v39 .. v44}, Landroid/content/pm/IPackageManager$Stub;->addCrossProfileIntentFilter(Landroid/content/IntentFilter;Ljava/lang/String;III)V

    #@daf
    .line 1267
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@db2
    .line 1268
    const/4 v6, 0x1

    #@db3
    return v6

    #@db4
    .line 1256
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v11    # "_arg4":I
    :cond_36
    const/16 v35, 0x0

    #@db6
    .restart local v35    # "_arg0":Landroid/content/IntentFilter;
    goto :goto_36

    #@db7
    .line 1272
    .end local v35    # "_arg0":Landroid/content/IntentFilter;
    :sswitch_4c
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@dba
    move-object/from16 v0, p2

    #@dbc
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@dbf
    .line 1274
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@dc2
    move-result v45

    #@dc3
    .line 1276
    .restart local v45    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@dc6
    move-result-object v8

    #@dc7
    .line 1277
    .restart local v8    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@dc9
    move/from16 v1, v45

    #@dcb
    invoke-virtual {v0, v1, v8}, Landroid/content/pm/IPackageManager$Stub;->clearCrossProfileIntentFilters(ILjava/lang/String;)V

    #@dce
    .line 1278
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@dd1
    .line 1279
    const/4 v6, 0x1

    #@dd2
    return v6

    #@dd3
    .line 1283
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v45    # "_arg0":I
    :sswitch_4d
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@dd6
    move-object/from16 v0, p2

    #@dd8
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ddb
    .line 1285
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@dde
    move-result v45

    #@ddf
    .line 1286
    .restart local v45    # "_arg0":I
    move-object/from16 v0, p0

    #@de1
    move/from16 v1, v45

    #@de3
    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getPreferredActivityBackup(I)[B

    #@de6
    move-result-object v100

    #@de7
    .line 1287
    .local v100, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@dea
    .line 1288
    move-object/from16 v0, p3

    #@dec
    move-object/from16 v1, v100

    #@dee
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    #@df1
    .line 1289
    const/4 v6, 0x1

    #@df2
    return v6

    #@df3
    .line 1293
    .end local v45    # "_arg0":I
    .end local v100    # "_result":[B
    :sswitch_4e
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@df6
    move-object/from16 v0, p2

    #@df8
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@dfb
    .line 1295
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    #@dfe
    move-result-object v54

    #@dff
    .line 1297
    .local v54, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@e02
    move-result v36

    #@e03
    .line 1298
    .restart local v36    # "_arg1":I
    move-object/from16 v0, p0

    #@e05
    move-object/from16 v1, v54

    #@e07
    move/from16 v2, v36

    #@e09
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->restorePreferredActivities([BI)V

    #@e0c
    .line 1299
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@e0f
    .line 1300
    const/4 v6, 0x1

    #@e10
    return v6

    #@e11
    .line 1304
    .end local v36    # "_arg1":I
    .end local v54    # "_arg0":[B
    :sswitch_4f
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@e14
    move-object/from16 v0, p2

    #@e16
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@e19
    .line 1306
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@e1c
    move-result v45

    #@e1d
    .line 1307
    .restart local v45    # "_arg0":I
    move-object/from16 v0, p0

    #@e1f
    move/from16 v1, v45

    #@e21
    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getDefaultAppsBackup(I)[B

    #@e24
    move-result-object v100

    #@e25
    .line 1308
    .restart local v100    # "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@e28
    .line 1309
    move-object/from16 v0, p3

    #@e2a
    move-object/from16 v1, v100

    #@e2c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    #@e2f
    .line 1310
    const/4 v6, 0x1

    #@e30
    return v6

    #@e31
    .line 1314
    .end local v45    # "_arg0":I
    .end local v100    # "_result":[B
    :sswitch_50
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@e34
    move-object/from16 v0, p2

    #@e36
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@e39
    .line 1316
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    #@e3c
    move-result-object v54

    #@e3d
    .line 1318
    .restart local v54    # "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@e40
    move-result v36

    #@e41
    .line 1319
    .restart local v36    # "_arg1":I
    move-object/from16 v0, p0

    #@e43
    move-object/from16 v1, v54

    #@e45
    move/from16 v2, v36

    #@e47
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->restoreDefaultApps([BI)V

    #@e4a
    .line 1320
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@e4d
    .line 1321
    const/4 v6, 0x1

    #@e4e
    return v6

    #@e4f
    .line 1325
    .end local v36    # "_arg1":I
    .end local v54    # "_arg0":[B
    :sswitch_51
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@e52
    move-object/from16 v0, p2

    #@e54
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@e57
    .line 1327
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@e5a
    move-result v45

    #@e5b
    .line 1328
    .restart local v45    # "_arg0":I
    move-object/from16 v0, p0

    #@e5d
    move/from16 v1, v45

    #@e5f
    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getIntentFilterVerificationBackup(I)[B

    #@e62
    move-result-object v100

    #@e63
    .line 1329
    .restart local v100    # "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@e66
    .line 1330
    move-object/from16 v0, p3

    #@e68
    move-object/from16 v1, v100

    #@e6a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    #@e6d
    .line 1331
    const/4 v6, 0x1

    #@e6e
    return v6

    #@e6f
    .line 1335
    .end local v45    # "_arg0":I
    .end local v100    # "_result":[B
    :sswitch_52
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@e72
    move-object/from16 v0, p2

    #@e74
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@e77
    .line 1337
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    #@e7a
    move-result-object v54

    #@e7b
    .line 1339
    .restart local v54    # "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@e7e
    move-result v36

    #@e7f
    .line 1340
    .restart local v36    # "_arg1":I
    move-object/from16 v0, p0

    #@e81
    move-object/from16 v1, v54

    #@e83
    move/from16 v2, v36

    #@e85
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->restoreIntentFilterVerification([BI)V

    #@e88
    .line 1341
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@e8b
    .line 1342
    const/4 v6, 0x1

    #@e8c
    return v6

    #@e8d
    .line 1346
    .end local v36    # "_arg1":I
    .end local v54    # "_arg0":[B
    :sswitch_53
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@e90
    move-object/from16 v0, p2

    #@e92
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@e95
    .line 1348
    new-instance v51, Ljava/util/ArrayList;

    #@e97
    invoke-direct/range {v51 .. v51}, Ljava/util/ArrayList;-><init>()V

    #@e9a
    .line 1349
    .local v51, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v0, p0

    #@e9c
    move-object/from16 v1, v51

    #@e9e
    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    #@ea1
    move-result-object v75

    #@ea2
    .line 1350
    .local v75, "_result":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@ea5
    .line 1351
    if-eqz v75, :cond_37

    #@ea7
    .line 1352
    const/4 v6, 0x1

    #@ea8
    move-object/from16 v0, p3

    #@eaa
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@ead
    .line 1353
    const/4 v6, 0x1

    #@eae
    move-object/from16 v0, v75

    #@eb0
    move-object/from16 v1, p3

    #@eb2
    invoke-virtual {v0, v1, v6}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    #@eb5
    .line 1358
    :goto_37
    move-object/from16 v0, p3

    #@eb7
    move-object/from16 v1, v51

    #@eb9
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@ebc
    .line 1359
    const/4 v6, 0x1

    #@ebd
    return v6

    #@ebe
    .line 1356
    :cond_37
    const/4 v6, 0x0

    #@ebf
    move-object/from16 v0, p3

    #@ec1
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@ec4
    goto :goto_37

    #@ec5
    .line 1363
    .end local v51    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v75    # "_result":Landroid/content/ComponentName;
    :sswitch_54
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@ec8
    move-object/from16 v0, p2

    #@eca
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ecd
    .line 1365
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@ed0
    move-result v6

    #@ed1
    if-eqz v6, :cond_38

    #@ed3
    .line 1366
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@ed5
    move-object/from16 v0, p2

    #@ed7
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@eda
    move-result-object v13

    #@edb
    check-cast v13, Landroid/content/ComponentName;

    #@edd
    .line 1372
    :goto_38
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@ee0
    move-result v36

    #@ee1
    .line 1374
    .restart local v36    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@ee4
    move-result v9

    #@ee5
    .line 1376
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@ee8
    move-result v10

    #@ee9
    .line 1377
    .restart local v10    # "_arg3":I
    move-object/from16 v0, p0

    #@eeb
    move/from16 v1, v36

    #@eed
    invoke-virtual {v0, v13, v1, v9, v10}, Landroid/content/pm/IPackageManager$Stub;->setComponentEnabledSetting(Landroid/content/ComponentName;III)V

    #@ef0
    .line 1378
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@ef3
    .line 1379
    const/4 v6, 0x1

    #@ef4
    return v6

    #@ef5
    .line 1369
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v36    # "_arg1":I
    :cond_38
    const/4 v13, 0x0

    #@ef6
    .restart local v13    # "_arg0":Landroid/content/ComponentName;
    goto :goto_38

    #@ef7
    .line 1383
    .end local v13    # "_arg0":Landroid/content/ComponentName;
    :sswitch_55
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@efa
    move-object/from16 v0, p2

    #@efc
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@eff
    .line 1385
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@f02
    move-result v6

    #@f03
    if-eqz v6, :cond_39

    #@f05
    .line 1386
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@f07
    move-object/from16 v0, p2

    #@f09
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@f0c
    move-result-object v13

    #@f0d
    check-cast v13, Landroid/content/ComponentName;

    #@f0f
    .line 1392
    :goto_39
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@f12
    move-result v36

    #@f13
    .line 1393
    .restart local v36    # "_arg1":I
    move-object/from16 v0, p0

    #@f15
    move/from16 v1, v36

    #@f17
    invoke-virtual {v0, v13, v1}, Landroid/content/pm/IPackageManager$Stub;->getComponentEnabledSetting(Landroid/content/ComponentName;I)I

    #@f1a
    move-result v74

    #@f1b
    .line 1394
    .restart local v74    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@f1e
    .line 1395
    move-object/from16 v0, p3

    #@f20
    move/from16 v1, v74

    #@f22
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@f25
    .line 1396
    const/4 v6, 0x1

    #@f26
    return v6

    #@f27
    .line 1389
    .end local v36    # "_arg1":I
    .end local v74    # "_result":I
    :cond_39
    const/4 v13, 0x0

    #@f28
    .restart local v13    # "_arg0":Landroid/content/ComponentName;
    goto :goto_39

    #@f29
    .line 1400
    .end local v13    # "_arg0":Landroid/content/ComponentName;
    :sswitch_56
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@f2c
    move-object/from16 v0, p2

    #@f2e
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@f31
    .line 1402
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@f34
    move-result-object v7

    #@f35
    .line 1404
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@f38
    move-result v36

    #@f39
    .line 1406
    .restart local v36    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@f3c
    move-result v9

    #@f3d
    .line 1408
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@f40
    move-result v10

    #@f41
    .line 1410
    .restart local v10    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@f44
    move-result-object v17

    #@f45
    .restart local v17    # "_arg4":Ljava/lang/String;
    move-object/from16 v39, p0

    #@f47
    move-object/from16 v40, v7

    #@f49
    move/from16 v41, v36

    #@f4b
    move/from16 v42, v9

    #@f4d
    move/from16 v43, v10

    #@f4f
    move-object/from16 v44, v17

    #@f51
    .line 1411
    invoke-virtual/range {v39 .. v44}, Landroid/content/pm/IPackageManager$Stub;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V

    #@f54
    .line 1412
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@f57
    .line 1413
    const/4 v6, 0x1

    #@f58
    return v6

    #@f59
    .line 1417
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v17    # "_arg4":Ljava/lang/String;
    .end local v36    # "_arg1":I
    :sswitch_57
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@f5c
    move-object/from16 v0, p2

    #@f5e
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@f61
    .line 1419
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@f64
    move-result-object v7

    #@f65
    .line 1421
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@f68
    move-result v36

    #@f69
    .line 1422
    .restart local v36    # "_arg1":I
    move-object/from16 v0, p0

    #@f6b
    move/from16 v1, v36

    #@f6d
    invoke-virtual {v0, v7, v1}, Landroid/content/pm/IPackageManager$Stub;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    #@f70
    move-result v74

    #@f71
    .line 1423
    .restart local v74    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@f74
    .line 1424
    move-object/from16 v0, p3

    #@f76
    move/from16 v1, v74

    #@f78
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@f7b
    .line 1425
    const/4 v6, 0x1

    #@f7c
    return v6

    #@f7d
    .line 1429
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v36    # "_arg1":I
    .end local v74    # "_result":I
    :sswitch_58
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@f80
    move-object/from16 v0, p2

    #@f82
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@f85
    .line 1431
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@f88
    move-result-object v7

    #@f89
    .line 1433
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@f8c
    move-result v6

    #@f8d
    if-eqz v6, :cond_3a

    #@f8f
    const/16 v66, 0x1

    #@f91
    .line 1435
    .local v66, "_arg1":Z
    :goto_3a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@f94
    move-result v9

    #@f95
    .line 1436
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    #@f97
    move/from16 v1, v66

    #@f99
    invoke-virtual {v0, v7, v1, v9}, Landroid/content/pm/IPackageManager$Stub;->setPackageStoppedState(Ljava/lang/String;ZI)V

    #@f9c
    .line 1437
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@f9f
    .line 1438
    const/4 v6, 0x1

    #@fa0
    return v6

    #@fa1
    .line 1433
    .end local v9    # "_arg2":I
    .end local v66    # "_arg1":Z
    :cond_3a
    const/16 v66, 0x0

    #@fa3
    .restart local v66    # "_arg1":Z
    goto :goto_3a

    #@fa4
    .line 1442
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v66    # "_arg1":Z
    :sswitch_59
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@fa7
    move-object/from16 v0, p2

    #@fa9
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@fac
    .line 1444
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@faf
    move-result-object v7

    #@fb0
    .line 1446
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@fb3
    move-result-wide v56

    #@fb4
    .line 1448
    .local v56, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@fb7
    move-result-object v6

    #@fb8
    invoke-static {v6}, Landroid/content/pm/IPackageDataObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDataObserver;

    #@fbb
    move-result-object v70

    #@fbc
    .line 1449
    .local v70, "_arg2":Landroid/content/pm/IPackageDataObserver;
    move-object/from16 v0, p0

    #@fbe
    move-wide/from16 v1, v56

    #@fc0
    move-object/from16 v3, v70

    #@fc2
    invoke-virtual {v0, v7, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->freeStorageAndNotify(Ljava/lang/String;JLandroid/content/pm/IPackageDataObserver;)V

    #@fc5
    .line 1450
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@fc8
    .line 1451
    const/4 v6, 0x1

    #@fc9
    return v6

    #@fca
    .line 1455
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v56    # "_arg1":J
    .end local v70    # "_arg2":Landroid/content/pm/IPackageDataObserver;
    :sswitch_5a
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@fcd
    move-object/from16 v0, p2

    #@fcf
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@fd2
    .line 1457
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@fd5
    move-result-object v7

    #@fd6
    .line 1459
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@fd9
    move-result-wide v56

    #@fda
    .line 1461
    .restart local v56    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@fdd
    move-result v6

    #@fde
    if-eqz v6, :cond_3b

    #@fe0
    .line 1462
    sget-object v6, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    #@fe2
    move-object/from16 v0, p2

    #@fe4
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@fe7
    move-result-object v67

    #@fe8
    check-cast v67, Landroid/content/IntentSender;

    #@fea
    .line 1467
    :goto_3b
    move-object/from16 v0, p0

    #@fec
    move-wide/from16 v1, v56

    #@fee
    move-object/from16 v3, v67

    #@ff0
    invoke-virtual {v0, v7, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->freeStorage(Ljava/lang/String;JLandroid/content/IntentSender;)V

    #@ff3
    .line 1468
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@ff6
    .line 1469
    const/4 v6, 0x1

    #@ff7
    return v6

    #@ff8
    .line 1465
    :cond_3b
    const/16 v67, 0x0

    #@ffa
    .local v67, "_arg2":Landroid/content/IntentSender;
    goto :goto_3b

    #@ffb
    .line 1473
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v56    # "_arg1":J
    .end local v67    # "_arg2":Landroid/content/IntentSender;
    :sswitch_5b
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@ffe
    move-object/from16 v0, p2

    #@1000
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1003
    .line 1475
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1006
    move-result-object v7

    #@1007
    .line 1477
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@100a
    move-result-object v6

    #@100b
    invoke-static {v6}, Landroid/content/pm/IPackageDataObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDataObserver;

    #@100e
    move-result-object v60

    #@100f
    .line 1478
    .local v60, "_arg1":Landroid/content/pm/IPackageDataObserver;
    move-object/from16 v0, p0

    #@1011
    move-object/from16 v1, v60

    #@1013
    invoke-virtual {v0, v7, v1}, Landroid/content/pm/IPackageManager$Stub;->deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V

    #@1016
    .line 1479
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1019
    .line 1480
    const/4 v6, 0x1

    #@101a
    return v6

    #@101b
    .line 1484
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v60    # "_arg1":Landroid/content/pm/IPackageDataObserver;
    :sswitch_5c
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@101e
    move-object/from16 v0, p2

    #@1020
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1023
    .line 1486
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1026
    move-result-object v7

    #@1027
    .line 1488
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@102a
    move-result-object v6

    #@102b
    invoke-static {v6}, Landroid/content/pm/IPackageDataObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDataObserver;

    #@102e
    move-result-object v60

    #@102f
    .line 1490
    .restart local v60    # "_arg1":Landroid/content/pm/IPackageDataObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1032
    move-result v9

    #@1033
    .line 1491
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    #@1035
    move-object/from16 v1, v60

    #@1037
    invoke-virtual {v0, v7, v1, v9}, Landroid/content/pm/IPackageManager$Stub;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;I)V

    #@103a
    .line 1492
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@103d
    .line 1493
    const/4 v6, 0x1

    #@103e
    return v6

    #@103f
    .line 1497
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v60    # "_arg1":Landroid/content/pm/IPackageDataObserver;
    :sswitch_5d
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@1042
    move-object/from16 v0, p2

    #@1044
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1047
    .line 1499
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@104a
    move-result-object v7

    #@104b
    .line 1501
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@104e
    move-result v36

    #@104f
    .line 1503
    .restart local v36    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1052
    move-result-object v6

    #@1053
    invoke-static {v6}, Landroid/content/pm/IPackageStatsObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageStatsObserver;

    #@1056
    move-result-object v71

    #@1057
    .line 1504
    .local v71, "_arg2":Landroid/content/pm/IPackageStatsObserver;
    move-object/from16 v0, p0

    #@1059
    move/from16 v1, v36

    #@105b
    move-object/from16 v2, v71

    #@105d
    invoke-virtual {v0, v7, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->getPackageSizeInfo(Ljava/lang/String;ILandroid/content/pm/IPackageStatsObserver;)V

    #@1060
    .line 1505
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1063
    .line 1506
    const/4 v6, 0x1

    #@1064
    return v6

    #@1065
    .line 1510
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v36    # "_arg1":I
    .end local v71    # "_arg2":Landroid/content/pm/IPackageStatsObserver;
    :sswitch_5e
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@1068
    move-object/from16 v0, p2

    #@106a
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@106d
    .line 1511
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getSystemSharedLibraryNames()[Ljava/lang/String;

    #@1070
    move-result-object v103

    #@1071
    .line 1512
    .restart local v103    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1074
    .line 1513
    move-object/from16 v0, p3

    #@1076
    move-object/from16 v1, v103

    #@1078
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@107b
    .line 1514
    const/4 v6, 0x1

    #@107c
    return v6

    #@107d
    .line 1518
    .end local v103    # "_result":[Ljava/lang/String;
    :sswitch_5f
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@1080
    move-object/from16 v0, p2

    #@1082
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1085
    .line 1519
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getSystemAvailableFeatures()[Landroid/content/pm/FeatureInfo;

    #@1088
    move-result-object v102

    #@1089
    .line 1520
    .local v102, "_result":[Landroid/content/pm/FeatureInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@108c
    .line 1521
    const/4 v6, 0x1

    #@108d
    move-object/from16 v0, p3

    #@108f
    move-object/from16 v1, v102

    #@1091
    invoke-virtual {v0, v1, v6}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    #@1094
    .line 1522
    const/4 v6, 0x1

    #@1095
    return v6

    #@1096
    .line 1526
    .end local v102    # "_result":[Landroid/content/pm/FeatureInfo;
    :sswitch_60
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@1099
    move-object/from16 v0, p2

    #@109b
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@109e
    .line 1528
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@10a1
    move-result-object v7

    #@10a2
    .line 1529
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@10a4
    invoke-virtual {v0, v7}, Landroid/content/pm/IPackageManager$Stub;->hasSystemFeature(Ljava/lang/String;)Z

    #@10a7
    move-result v99

    #@10a8
    .line 1530
    .restart local v99    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@10ab
    .line 1531
    if-eqz v99, :cond_3c

    #@10ad
    const/4 v6, 0x1

    #@10ae
    :goto_3c
    move-object/from16 v0, p3

    #@10b0
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@10b3
    .line 1532
    const/4 v6, 0x1

    #@10b4
    return v6

    #@10b5
    .line 1531
    :cond_3c
    const/4 v6, 0x0

    #@10b6
    goto :goto_3c

    #@10b7
    .line 1536
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v99    # "_result":Z
    :sswitch_61
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@10ba
    move-object/from16 v0, p2

    #@10bc
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@10bf
    .line 1537
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->enterSafeMode()V

    #@10c2
    .line 1538
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@10c5
    .line 1539
    const/4 v6, 0x1

    #@10c6
    return v6

    #@10c7
    .line 1543
    :sswitch_62
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@10ca
    move-object/from16 v0, p2

    #@10cc
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@10cf
    .line 1544
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->isSafeMode()Z

    #@10d2
    move-result v99

    #@10d3
    .line 1545
    .restart local v99    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@10d6
    .line 1546
    if-eqz v99, :cond_3d

    #@10d8
    const/4 v6, 0x1

    #@10d9
    :goto_3d
    move-object/from16 v0, p3

    #@10db
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@10de
    .line 1547
    const/4 v6, 0x1

    #@10df
    return v6

    #@10e0
    .line 1546
    :cond_3d
    const/4 v6, 0x0

    #@10e1
    goto :goto_3d

    #@10e2
    .line 1551
    .end local v99    # "_result":Z
    :sswitch_63
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@10e5
    move-object/from16 v0, p2

    #@10e7
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@10ea
    .line 1552
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->systemReady()V

    #@10ed
    .line 1553
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@10f0
    .line 1554
    const/4 v6, 0x1

    #@10f1
    return v6

    #@10f2
    .line 1558
    :sswitch_64
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@10f5
    move-object/from16 v0, p2

    #@10f7
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@10fa
    .line 1559
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->hasSystemUidErrors()Z

    #@10fd
    move-result v99

    #@10fe
    .line 1560
    .restart local v99    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1101
    .line 1561
    if-eqz v99, :cond_3e

    #@1103
    const/4 v6, 0x1

    #@1104
    :goto_3e
    move-object/from16 v0, p3

    #@1106
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@1109
    .line 1562
    const/4 v6, 0x1

    #@110a
    return v6

    #@110b
    .line 1561
    :cond_3e
    const/4 v6, 0x0

    #@110c
    goto :goto_3e

    #@110d
    .line 1566
    .end local v99    # "_result":Z
    :sswitch_65
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@1110
    move-object/from16 v0, p2

    #@1112
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1115
    .line 1567
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->performBootDexOpt()V

    #@1118
    .line 1568
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@111b
    .line 1569
    const/4 v6, 0x1

    #@111c
    return v6

    #@111d
    .line 1573
    :sswitch_66
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@1120
    move-object/from16 v0, p2

    #@1122
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1125
    .line 1575
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1128
    move-result-object v7

    #@1129
    .line 1577
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@112c
    move-result-object v8

    #@112d
    .line 1578
    .restart local v8    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@112f
    invoke-virtual {v0, v7, v8}, Landroid/content/pm/IPackageManager$Stub;->performDexOptIfNeeded(Ljava/lang/String;Ljava/lang/String;)Z

    #@1132
    move-result v99

    #@1133
    .line 1579
    .restart local v99    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1136
    .line 1580
    if-eqz v99, :cond_3f

    #@1138
    const/4 v6, 0x1

    #@1139
    :goto_3f
    move-object/from16 v0, p3

    #@113b
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@113e
    .line 1581
    const/4 v6, 0x1

    #@113f
    return v6

    #@1140
    .line 1580
    :cond_3f
    const/4 v6, 0x0

    #@1141
    goto :goto_3f

    #@1142
    .line 1585
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v99    # "_result":Z
    :sswitch_67
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@1145
    move-object/from16 v0, p2

    #@1147
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@114a
    .line 1587
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@114d
    move-result-object v7

    #@114e
    .line 1588
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@1150
    invoke-virtual {v0, v7}, Landroid/content/pm/IPackageManager$Stub;->forceDexOpt(Ljava/lang/String;)V

    #@1153
    .line 1589
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1156
    .line 1590
    const/4 v6, 0x1

    #@1157
    return v6

    #@1158
    .line 1594
    .end local v7    # "_arg0":Ljava/lang/String;
    :sswitch_68
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@115b
    move-object/from16 v0, p2

    #@115d
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1160
    .line 1596
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1163
    move-result v6

    #@1164
    if-eqz v6, :cond_40

    #@1166
    const/16 v53, 0x1

    #@1168
    .line 1598
    .local v53, "_arg0":Z
    :goto_40
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@116b
    move-result v6

    #@116c
    if-eqz v6, :cond_41

    #@116e
    const/16 v66, 0x1

    #@1170
    .line 1599
    .restart local v66    # "_arg1":Z
    :goto_41
    move-object/from16 v0, p0

    #@1172
    move/from16 v1, v53

    #@1174
    move/from16 v2, v66

    #@1176
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->updateExternalMediaStatus(ZZ)V

    #@1179
    .line 1600
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@117c
    .line 1601
    const/4 v6, 0x1

    #@117d
    return v6

    #@117e
    .line 1596
    .end local v53    # "_arg0":Z
    .end local v66    # "_arg1":Z
    :cond_40
    const/16 v53, 0x0

    #@1180
    .restart local v53    # "_arg0":Z
    goto :goto_40

    #@1181
    .line 1598
    :cond_41
    const/16 v66, 0x0

    #@1183
    .restart local v66    # "_arg1":Z
    goto :goto_41

    #@1184
    .line 1605
    .end local v53    # "_arg0":Z
    .end local v66    # "_arg1":Z
    :sswitch_69
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@1187
    move-object/from16 v0, p2

    #@1189
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@118c
    .line 1607
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@118f
    move-result v6

    #@1190
    if-eqz v6, :cond_42

    #@1192
    .line 1608
    sget-object v6, Landroid/content/pm/PackageCleanItem;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1194
    move-object/from16 v0, p2

    #@1196
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1199
    move-result-object v48

    #@119a
    check-cast v48, Landroid/content/pm/PackageCleanItem;

    #@119c
    .line 1613
    :goto_42
    move-object/from16 v0, p0

    #@119e
    move-object/from16 v1, v48

    #@11a0
    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->nextPackageToClean(Landroid/content/pm/PackageCleanItem;)Landroid/content/pm/PackageCleanItem;

    #@11a3
    move-result-object v81

    #@11a4
    .line 1614
    .local v81, "_result":Landroid/content/pm/PackageCleanItem;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@11a7
    .line 1615
    if-eqz v81, :cond_43

    #@11a9
    .line 1616
    const/4 v6, 0x1

    #@11aa
    move-object/from16 v0, p3

    #@11ac
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@11af
    .line 1617
    const/4 v6, 0x1

    #@11b0
    move-object/from16 v0, v81

    #@11b2
    move-object/from16 v1, p3

    #@11b4
    invoke-virtual {v0, v1, v6}, Landroid/content/pm/PackageCleanItem;->writeToParcel(Landroid/os/Parcel;I)V

    #@11b7
    .line 1622
    :goto_43
    const/4 v6, 0x1

    #@11b8
    return v6

    #@11b9
    .line 1611
    .end local v81    # "_result":Landroid/content/pm/PackageCleanItem;
    :cond_42
    const/16 v48, 0x0

    #@11bb
    .local v48, "_arg0":Landroid/content/pm/PackageCleanItem;
    goto :goto_42

    #@11bc
    .line 1620
    .end local v48    # "_arg0":Landroid/content/pm/PackageCleanItem;
    .restart local v81    # "_result":Landroid/content/pm/PackageCleanItem;
    :cond_43
    const/4 v6, 0x0

    #@11bd
    move-object/from16 v0, p3

    #@11bf
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@11c2
    goto :goto_43

    #@11c3
    .line 1626
    .end local v81    # "_result":Landroid/content/pm/PackageCleanItem;
    :sswitch_6a
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@11c6
    move-object/from16 v0, p2

    #@11c8
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@11cb
    .line 1628
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@11ce
    move-result v45

    #@11cf
    .line 1629
    .restart local v45    # "_arg0":I
    move-object/from16 v0, p0

    #@11d1
    move/from16 v1, v45

    #@11d3
    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getMoveStatus(I)I

    #@11d6
    move-result v74

    #@11d7
    .line 1630
    .restart local v74    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@11da
    .line 1631
    move-object/from16 v0, p3

    #@11dc
    move/from16 v1, v74

    #@11de
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@11e1
    .line 1632
    const/4 v6, 0x1

    #@11e2
    return v6

    #@11e3
    .line 1636
    .end local v45    # "_arg0":I
    .end local v74    # "_result":I
    :sswitch_6b
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@11e6
    move-object/from16 v0, p2

    #@11e8
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@11eb
    .line 1638
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@11ee
    move-result-object v6

    #@11ef
    invoke-static {v6}, Landroid/content/pm/IPackageMoveObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageMoveObserver;

    #@11f2
    move-result-object v47

    #@11f3
    .line 1639
    .local v47, "_arg0":Landroid/content/pm/IPackageMoveObserver;
    move-object/from16 v0, p0

    #@11f5
    move-object/from16 v1, v47

    #@11f7
    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->registerMoveCallback(Landroid/content/pm/IPackageMoveObserver;)V

    #@11fa
    .line 1640
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@11fd
    .line 1641
    const/4 v6, 0x1

    #@11fe
    return v6

    #@11ff
    .line 1645
    .end local v47    # "_arg0":Landroid/content/pm/IPackageMoveObserver;
    :sswitch_6c
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@1202
    move-object/from16 v0, p2

    #@1204
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1207
    .line 1647
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@120a
    move-result-object v6

    #@120b
    invoke-static {v6}, Landroid/content/pm/IPackageMoveObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageMoveObserver;

    #@120e
    move-result-object v47

    #@120f
    .line 1648
    .restart local v47    # "_arg0":Landroid/content/pm/IPackageMoveObserver;
    move-object/from16 v0, p0

    #@1211
    move-object/from16 v1, v47

    #@1213
    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->unregisterMoveCallback(Landroid/content/pm/IPackageMoveObserver;)V

    #@1216
    .line 1649
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1219
    .line 1650
    const/4 v6, 0x1

    #@121a
    return v6

    #@121b
    .line 1654
    .end local v47    # "_arg0":Landroid/content/pm/IPackageMoveObserver;
    :sswitch_6d
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@121e
    move-object/from16 v0, p2

    #@1220
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1223
    .line 1656
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1226
    move-result-object v7

    #@1227
    .line 1658
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@122a
    move-result-object v8

    #@122b
    .line 1659
    .restart local v8    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@122d
    invoke-virtual {v0, v7, v8}, Landroid/content/pm/IPackageManager$Stub;->movePackage(Ljava/lang/String;Ljava/lang/String;)I

    #@1230
    move-result v74

    #@1231
    .line 1660
    .restart local v74    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1234
    .line 1661
    move-object/from16 v0, p3

    #@1236
    move/from16 v1, v74

    #@1238
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@123b
    .line 1662
    const/4 v6, 0x1

    #@123c
    return v6

    #@123d
    .line 1666
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v74    # "_result":I
    :sswitch_6e
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@1240
    move-object/from16 v0, p2

    #@1242
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1245
    .line 1668
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1248
    move-result-object v7

    #@1249
    .line 1669
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@124b
    invoke-virtual {v0, v7}, Landroid/content/pm/IPackageManager$Stub;->movePrimaryStorage(Ljava/lang/String;)I

    #@124e
    move-result v74

    #@124f
    .line 1670
    .restart local v74    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1252
    .line 1671
    move-object/from16 v0, p3

    #@1254
    move/from16 v1, v74

    #@1256
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1259
    .line 1672
    const/4 v6, 0x1

    #@125a
    return v6

    #@125b
    .line 1676
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v74    # "_result":I
    :sswitch_6f
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@125e
    move-object/from16 v0, p2

    #@1260
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1263
    .line 1678
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1266
    move-result v6

    #@1267
    if-eqz v6, :cond_44

    #@1269
    .line 1679
    sget-object v6, Landroid/content/pm/PermissionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@126b
    move-object/from16 v0, p2

    #@126d
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1270
    move-result-object v49

    #@1271
    check-cast v49, Landroid/content/pm/PermissionInfo;

    #@1273
    .line 1684
    :goto_44
    move-object/from16 v0, p0

    #@1275
    move-object/from16 v1, v49

    #@1277
    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->addPermissionAsync(Landroid/content/pm/PermissionInfo;)Z

    #@127a
    move-result v99

    #@127b
    .line 1685
    .restart local v99    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@127e
    .line 1686
    if-eqz v99, :cond_45

    #@1280
    const/4 v6, 0x1

    #@1281
    :goto_45
    move-object/from16 v0, p3

    #@1283
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@1286
    .line 1687
    const/4 v6, 0x1

    #@1287
    return v6

    #@1288
    .line 1682
    .end local v99    # "_result":Z
    :cond_44
    const/16 v49, 0x0

    #@128a
    .restart local v49    # "_arg0":Landroid/content/pm/PermissionInfo;
    goto :goto_44

    #@128b
    .line 1686
    .end local v49    # "_arg0":Landroid/content/pm/PermissionInfo;
    .restart local v99    # "_result":Z
    :cond_45
    const/4 v6, 0x0

    #@128c
    goto :goto_45

    #@128d
    .line 1691
    .end local v99    # "_result":Z
    :sswitch_70
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@1290
    move-object/from16 v0, p2

    #@1292
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1295
    .line 1693
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1298
    move-result v45

    #@1299
    .line 1694
    .restart local v45    # "_arg0":I
    move-object/from16 v0, p0

    #@129b
    move/from16 v1, v45

    #@129d
    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->setInstallLocation(I)Z

    #@12a0
    move-result v99

    #@12a1
    .line 1695
    .restart local v99    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@12a4
    .line 1696
    if-eqz v99, :cond_46

    #@12a6
    const/4 v6, 0x1

    #@12a7
    :goto_46
    move-object/from16 v0, p3

    #@12a9
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@12ac
    .line 1697
    const/4 v6, 0x1

    #@12ad
    return v6

    #@12ae
    .line 1696
    :cond_46
    const/4 v6, 0x0

    #@12af
    goto :goto_46

    #@12b0
    .line 1701
    .end local v45    # "_arg0":I
    .end local v99    # "_result":Z
    :sswitch_71
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@12b3
    move-object/from16 v0, p2

    #@12b5
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@12b8
    .line 1702
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getInstallLocation()I

    #@12bb
    move-result v74

    #@12bc
    .line 1703
    .restart local v74    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@12bf
    .line 1704
    move-object/from16 v0, p3

    #@12c1
    move/from16 v1, v74

    #@12c3
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@12c6
    .line 1705
    const/4 v6, 0x1

    #@12c7
    return v6

    #@12c8
    .line 1709
    .end local v74    # "_result":I
    :sswitch_72
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@12cb
    move-object/from16 v0, p2

    #@12cd
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@12d0
    .line 1711
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@12d3
    move-result-object v7

    #@12d4
    .line 1713
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@12d7
    move-result v36

    #@12d8
    .line 1714
    .restart local v36    # "_arg1":I
    move-object/from16 v0, p0

    #@12da
    move/from16 v1, v36

    #@12dc
    invoke-virtual {v0, v7, v1}, Landroid/content/pm/IPackageManager$Stub;->installExistingPackageAsUser(Ljava/lang/String;I)I

    #@12df
    move-result v74

    #@12e0
    .line 1715
    .restart local v74    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@12e3
    .line 1716
    move-object/from16 v0, p3

    #@12e5
    move/from16 v1, v74

    #@12e7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@12ea
    .line 1717
    const/4 v6, 0x1

    #@12eb
    return v6

    #@12ec
    .line 1721
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v36    # "_arg1":I
    .end local v74    # "_result":I
    :sswitch_73
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@12ef
    move-object/from16 v0, p2

    #@12f1
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@12f4
    .line 1723
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@12f7
    move-result v45

    #@12f8
    .line 1725
    .restart local v45    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@12fb
    move-result v36

    #@12fc
    .line 1726
    .restart local v36    # "_arg1":I
    move-object/from16 v0, p0

    #@12fe
    move/from16 v1, v45

    #@1300
    move/from16 v2, v36

    #@1302
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->verifyPendingInstall(II)V

    #@1305
    .line 1727
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1308
    .line 1728
    const/4 v6, 0x1

    #@1309
    return v6

    #@130a
    .line 1732
    .end local v36    # "_arg1":I
    .end local v45    # "_arg0":I
    :sswitch_74
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@130d
    move-object/from16 v0, p2

    #@130f
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1312
    .line 1734
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1315
    move-result v45

    #@1316
    .line 1736
    .restart local v45    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1319
    move-result v36

    #@131a
    .line 1738
    .restart local v36    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@131d
    move-result-wide v68

    #@131e
    .line 1739
    .local v68, "_arg2":J
    move-object/from16 v0, p0

    #@1320
    move/from16 v1, v45

    #@1322
    move/from16 v2, v36

    #@1324
    move-wide/from16 v3, v68

    #@1326
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/pm/IPackageManager$Stub;->extendVerificationTimeout(IIJ)V

    #@1329
    .line 1740
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@132c
    .line 1741
    const/4 v6, 0x1

    #@132d
    return v6

    #@132e
    .line 1745
    .end local v36    # "_arg1":I
    .end local v45    # "_arg0":I
    .end local v68    # "_arg2":J
    :sswitch_75
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@1331
    move-object/from16 v0, p2

    #@1333
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1336
    .line 1747
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1339
    move-result v45

    #@133a
    .line 1749
    .restart local v45    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@133d
    move-result v36

    #@133e
    .line 1751
    .restart local v36    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    #@1341
    move-result-object v73

    #@1342
    .line 1752
    .local v73, "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    #@1344
    move/from16 v1, v45

    #@1346
    move/from16 v2, v36

    #@1348
    move-object/from16 v3, v73

    #@134a
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->verifyIntentFilter(IILjava/util/List;)V

    #@134d
    .line 1753
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1350
    .line 1754
    const/4 v6, 0x1

    #@1351
    return v6

    #@1352
    .line 1758
    .end local v36    # "_arg1":I
    .end local v45    # "_arg0":I
    .end local v73    # "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_76
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@1355
    move-object/from16 v0, p2

    #@1357
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@135a
    .line 1760
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@135d
    move-result-object v7

    #@135e
    .line 1762
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1361
    move-result v36

    #@1362
    .line 1763
    .restart local v36    # "_arg1":I
    move-object/from16 v0, p0

    #@1364
    move/from16 v1, v36

    #@1366
    invoke-virtual {v0, v7, v1}, Landroid/content/pm/IPackageManager$Stub;->getIntentVerificationStatus(Ljava/lang/String;I)I

    #@1369
    move-result v74

    #@136a
    .line 1764
    .restart local v74    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@136d
    .line 1765
    move-object/from16 v0, p3

    #@136f
    move/from16 v1, v74

    #@1371
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1374
    .line 1766
    const/4 v6, 0x1

    #@1375
    return v6

    #@1376
    .line 1770
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v36    # "_arg1":I
    .end local v74    # "_result":I
    :sswitch_77
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@1379
    move-object/from16 v0, p2

    #@137b
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@137e
    .line 1772
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1381
    move-result-object v7

    #@1382
    .line 1774
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1385
    move-result v36

    #@1386
    .line 1776
    .restart local v36    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1389
    move-result v9

    #@138a
    .line 1777
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    #@138c
    move/from16 v1, v36

    #@138e
    invoke-virtual {v0, v7, v1, v9}, Landroid/content/pm/IPackageManager$Stub;->updateIntentVerificationStatus(Ljava/lang/String;II)Z

    #@1391
    move-result v99

    #@1392
    .line 1778
    .restart local v99    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1395
    .line 1779
    if-eqz v99, :cond_47

    #@1397
    const/4 v6, 0x1

    #@1398
    :goto_47
    move-object/from16 v0, p3

    #@139a
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@139d
    .line 1780
    const/4 v6, 0x1

    #@139e
    return v6

    #@139f
    .line 1779
    :cond_47
    const/4 v6, 0x0

    #@13a0
    goto :goto_47

    #@13a1
    .line 1784
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v36    # "_arg1":I
    .end local v99    # "_result":Z
    :sswitch_78
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@13a4
    move-object/from16 v0, p2

    #@13a6
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@13a9
    .line 1786
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@13ac
    move-result-object v7

    #@13ad
    .line 1787
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@13af
    invoke-virtual {v0, v7}, Landroid/content/pm/IPackageManager$Stub;->getIntentFilterVerifications(Ljava/lang/String;)Ljava/util/List;

    #@13b2
    move-result-object v94

    #@13b3
    .line 1788
    .local v94, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/IntentFilterVerificationInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@13b6
    .line 1789
    move-object/from16 v0, p3

    #@13b8
    move-object/from16 v1, v94

    #@13ba
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@13bd
    .line 1790
    const/4 v6, 0x1

    #@13be
    return v6

    #@13bf
    .line 1794
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v94    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/IntentFilterVerificationInfo;>;"
    :sswitch_79
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@13c2
    move-object/from16 v0, p2

    #@13c4
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@13c7
    .line 1796
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@13ca
    move-result-object v7

    #@13cb
    .line 1797
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@13cd
    invoke-virtual {v0, v7}, Landroid/content/pm/IPackageManager$Stub;->getAllIntentFilters(Ljava/lang/String;)Ljava/util/List;

    #@13d0
    move-result-object v91

    #@13d1
    .line 1798
    .local v91, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@13d4
    .line 1799
    move-object/from16 v0, p3

    #@13d6
    move-object/from16 v1, v91

    #@13d8
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@13db
    .line 1800
    const/4 v6, 0x1

    #@13dc
    return v6

    #@13dd
    .line 1804
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v91    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    :sswitch_7a
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@13e0
    move-object/from16 v0, p2

    #@13e2
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@13e5
    .line 1806
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@13e8
    move-result-object v7

    #@13e9
    .line 1808
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@13ec
    move-result v36

    #@13ed
    .line 1809
    .restart local v36    # "_arg1":I
    move-object/from16 v0, p0

    #@13ef
    move/from16 v1, v36

    #@13f1
    invoke-virtual {v0, v7, v1}, Landroid/content/pm/IPackageManager$Stub;->setDefaultBrowserPackageName(Ljava/lang/String;I)Z

    #@13f4
    move-result v99

    #@13f5
    .line 1810
    .restart local v99    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@13f8
    .line 1811
    if-eqz v99, :cond_48

    #@13fa
    const/4 v6, 0x1

    #@13fb
    :goto_48
    move-object/from16 v0, p3

    #@13fd
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@1400
    .line 1812
    const/4 v6, 0x1

    #@1401
    return v6

    #@1402
    .line 1811
    :cond_48
    const/4 v6, 0x0

    #@1403
    goto :goto_48

    #@1404
    .line 1816
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v36    # "_arg1":I
    .end local v99    # "_result":Z
    :sswitch_7b
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@1407
    move-object/from16 v0, p2

    #@1409
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@140c
    .line 1818
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@140f
    move-result v45

    #@1410
    .line 1819
    .restart local v45    # "_arg0":I
    move-object/from16 v0, p0

    #@1412
    move/from16 v1, v45

    #@1414
    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getDefaultBrowserPackageName(I)Ljava/lang/String;

    #@1417
    move-result-object v90

    #@1418
    .line 1820
    .restart local v90    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@141b
    .line 1821
    move-object/from16 v0, p3

    #@141d
    move-object/from16 v1, v90

    #@141f
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1422
    .line 1822
    const/4 v6, 0x1

    #@1423
    return v6

    #@1424
    .line 1826
    .end local v45    # "_arg0":I
    .end local v90    # "_result":Ljava/lang/String;
    :sswitch_7c
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@1427
    move-object/from16 v0, p2

    #@1429
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@142c
    .line 1827
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getVerifierDeviceIdentity()Landroid/content/pm/VerifierDeviceIdentity;

    #@142f
    move-result-object v89

    #@1430
    .line 1828
    .local v89, "_result":Landroid/content/pm/VerifierDeviceIdentity;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1433
    .line 1829
    if-eqz v89, :cond_49

    #@1435
    .line 1830
    const/4 v6, 0x1

    #@1436
    move-object/from16 v0, p3

    #@1438
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@143b
    .line 1831
    const/4 v6, 0x1

    #@143c
    move-object/from16 v0, v89

    #@143e
    move-object/from16 v1, p3

    #@1440
    invoke-virtual {v0, v1, v6}, Landroid/content/pm/VerifierDeviceIdentity;->writeToParcel(Landroid/os/Parcel;I)V

    #@1443
    .line 1836
    :goto_49
    const/4 v6, 0x1

    #@1444
    return v6

    #@1445
    .line 1834
    :cond_49
    const/4 v6, 0x0

    #@1446
    move-object/from16 v0, p3

    #@1448
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@144b
    goto :goto_49

    #@144c
    .line 1840
    .end local v89    # "_result":Landroid/content/pm/VerifierDeviceIdentity;
    :sswitch_7d
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@144f
    move-object/from16 v0, p2

    #@1451
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1454
    .line 1841
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->isFirstBoot()Z

    #@1457
    move-result v99

    #@1458
    .line 1842
    .restart local v99    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@145b
    .line 1843
    if-eqz v99, :cond_4a

    #@145d
    const/4 v6, 0x1

    #@145e
    :goto_4a
    move-object/from16 v0, p3

    #@1460
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@1463
    .line 1844
    const/4 v6, 0x1

    #@1464
    return v6

    #@1465
    .line 1843
    :cond_4a
    const/4 v6, 0x0

    #@1466
    goto :goto_4a

    #@1467
    .line 1848
    .end local v99    # "_result":Z
    :sswitch_7e
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@146a
    move-object/from16 v0, p2

    #@146c
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@146f
    .line 1849
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->isOnlyCoreApps()Z

    #@1472
    move-result v99

    #@1473
    .line 1850
    .restart local v99    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1476
    .line 1851
    if-eqz v99, :cond_4b

    #@1478
    const/4 v6, 0x1

    #@1479
    :goto_4b
    move-object/from16 v0, p3

    #@147b
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@147e
    .line 1852
    const/4 v6, 0x1

    #@147f
    return v6

    #@1480
    .line 1851
    :cond_4b
    const/4 v6, 0x0

    #@1481
    goto :goto_4b

    #@1482
    .line 1856
    .end local v99    # "_result":Z
    :sswitch_7f
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@1485
    move-object/from16 v0, p2

    #@1487
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@148a
    .line 1857
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->isUpgrade()Z

    #@148d
    move-result v99

    #@148e
    .line 1858
    .restart local v99    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1491
    .line 1859
    if-eqz v99, :cond_4c

    #@1493
    const/4 v6, 0x1

    #@1494
    :goto_4c
    move-object/from16 v0, p3

    #@1496
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@1499
    .line 1860
    const/4 v6, 0x1

    #@149a
    return v6

    #@149b
    .line 1859
    :cond_4c
    const/4 v6, 0x0

    #@149c
    goto :goto_4c

    #@149d
    .line 1864
    .end local v99    # "_result":Z
    :sswitch_80
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@14a0
    move-object/from16 v0, p2

    #@14a2
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@14a5
    .line 1866
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@14a8
    move-result-object v7

    #@14a9
    .line 1868
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@14ac
    move-result v6

    #@14ad
    if-eqz v6, :cond_4d

    #@14af
    const/16 v66, 0x1

    #@14b1
    .line 1869
    .restart local v66    # "_arg1":Z
    :goto_4d
    move-object/from16 v0, p0

    #@14b3
    move/from16 v1, v66

    #@14b5
    invoke-virtual {v0, v7, v1}, Landroid/content/pm/IPackageManager$Stub;->setPermissionEnforced(Ljava/lang/String;Z)V

    #@14b8
    .line 1870
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@14bb
    .line 1871
    const/4 v6, 0x1

    #@14bc
    return v6

    #@14bd
    .line 1868
    .end local v66    # "_arg1":Z
    :cond_4d
    const/16 v66, 0x0

    #@14bf
    .restart local v66    # "_arg1":Z
    goto :goto_4d

    #@14c0
    .line 1875
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v66    # "_arg1":Z
    :sswitch_81
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@14c3
    move-object/from16 v0, p2

    #@14c5
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@14c8
    .line 1877
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@14cb
    move-result-object v7

    #@14cc
    .line 1878
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@14ce
    invoke-virtual {v0, v7}, Landroid/content/pm/IPackageManager$Stub;->isPermissionEnforced(Ljava/lang/String;)Z

    #@14d1
    move-result v99

    #@14d2
    .line 1879
    .restart local v99    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@14d5
    .line 1880
    if-eqz v99, :cond_4e

    #@14d7
    const/4 v6, 0x1

    #@14d8
    :goto_4e
    move-object/from16 v0, p3

    #@14da
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@14dd
    .line 1881
    const/4 v6, 0x1

    #@14de
    return v6

    #@14df
    .line 1880
    :cond_4e
    const/4 v6, 0x0

    #@14e0
    goto :goto_4e

    #@14e1
    .line 1885
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v99    # "_result":Z
    :sswitch_82
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@14e4
    move-object/from16 v0, p2

    #@14e6
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@14e9
    .line 1886
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->isStorageLow()Z

    #@14ec
    move-result v99

    #@14ed
    .line 1887
    .restart local v99    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@14f0
    .line 1888
    if-eqz v99, :cond_4f

    #@14f2
    const/4 v6, 0x1

    #@14f3
    :goto_4f
    move-object/from16 v0, p3

    #@14f5
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@14f8
    .line 1889
    const/4 v6, 0x1

    #@14f9
    return v6

    #@14fa
    .line 1888
    :cond_4f
    const/4 v6, 0x0

    #@14fb
    goto :goto_4f

    #@14fc
    .line 1893
    .end local v99    # "_result":Z
    :sswitch_83
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@14ff
    move-object/from16 v0, p2

    #@1501
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1504
    .line 1895
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1507
    move-result-object v7

    #@1508
    .line 1897
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@150b
    move-result v6

    #@150c
    if-eqz v6, :cond_50

    #@150e
    const/16 v66, 0x1

    #@1510
    .line 1899
    .restart local v66    # "_arg1":Z
    :goto_50
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1513
    move-result v9

    #@1514
    .line 1900
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    #@1516
    move/from16 v1, v66

    #@1518
    invoke-virtual {v0, v7, v1, v9}, Landroid/content/pm/IPackageManager$Stub;->setApplicationHiddenSettingAsUser(Ljava/lang/String;ZI)Z

    #@151b
    move-result v99

    #@151c
    .line 1901
    .restart local v99    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@151f
    .line 1902
    if-eqz v99, :cond_51

    #@1521
    const/4 v6, 0x1

    #@1522
    :goto_51
    move-object/from16 v0, p3

    #@1524
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@1527
    .line 1903
    const/4 v6, 0x1

    #@1528
    return v6

    #@1529
    .line 1897
    .end local v9    # "_arg2":I
    .end local v66    # "_arg1":Z
    .end local v99    # "_result":Z
    :cond_50
    const/16 v66, 0x0

    #@152b
    .restart local v66    # "_arg1":Z
    goto :goto_50

    #@152c
    .line 1902
    .restart local v9    # "_arg2":I
    .restart local v99    # "_result":Z
    :cond_51
    const/4 v6, 0x0

    #@152d
    goto :goto_51

    #@152e
    .line 1907
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v66    # "_arg1":Z
    .end local v99    # "_result":Z
    :sswitch_84
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@1531
    move-object/from16 v0, p2

    #@1533
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1536
    .line 1909
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1539
    move-result-object v7

    #@153a
    .line 1911
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@153d
    move-result v36

    #@153e
    .line 1912
    .restart local v36    # "_arg1":I
    move-object/from16 v0, p0

    #@1540
    move/from16 v1, v36

    #@1542
    invoke-virtual {v0, v7, v1}, Landroid/content/pm/IPackageManager$Stub;->getApplicationHiddenSettingAsUser(Ljava/lang/String;I)Z

    #@1545
    move-result v99

    #@1546
    .line 1913
    .restart local v99    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1549
    .line 1914
    if-eqz v99, :cond_52

    #@154b
    const/4 v6, 0x1

    #@154c
    :goto_52
    move-object/from16 v0, p3

    #@154e
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@1551
    .line 1915
    const/4 v6, 0x1

    #@1552
    return v6

    #@1553
    .line 1914
    :cond_52
    const/4 v6, 0x0

    #@1554
    goto :goto_52

    #@1555
    .line 1919
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v36    # "_arg1":I
    .end local v99    # "_result":Z
    :sswitch_85
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@1558
    move-object/from16 v0, p2

    #@155a
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@155d
    .line 1920
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    #@1560
    move-result-object v78

    #@1561
    .line 1921
    .local v78, "_result":Landroid/content/pm/IPackageInstaller;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1564
    .line 1922
    if-eqz v78, :cond_53

    #@1566
    invoke-interface/range {v78 .. v78}, Landroid/content/pm/IPackageInstaller;->asBinder()Landroid/os/IBinder;

    #@1569
    move-result-object v6

    #@156a
    :goto_53
    move-object/from16 v0, p3

    #@156c
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@156f
    .line 1923
    const/4 v6, 0x1

    #@1570
    return v6

    #@1571
    .line 1922
    :cond_53
    const/4 v6, 0x0

    #@1572
    goto :goto_53

    #@1573
    .line 1927
    .end local v78    # "_result":Landroid/content/pm/IPackageInstaller;
    :sswitch_86
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@1576
    move-object/from16 v0, p2

    #@1578
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@157b
    .line 1929
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@157e
    move-result-object v7

    #@157f
    .line 1931
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1582
    move-result v6

    #@1583
    if-eqz v6, :cond_54

    #@1585
    const/16 v66, 0x1

    #@1587
    .line 1933
    .restart local v66    # "_arg1":Z
    :goto_54
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@158a
    move-result v9

    #@158b
    .line 1934
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    #@158d
    move/from16 v1, v66

    #@158f
    invoke-virtual {v0, v7, v1, v9}, Landroid/content/pm/IPackageManager$Stub;->setBlockUninstallForUser(Ljava/lang/String;ZI)Z

    #@1592
    move-result v99

    #@1593
    .line 1935
    .restart local v99    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1596
    .line 1936
    if-eqz v99, :cond_55

    #@1598
    const/4 v6, 0x1

    #@1599
    :goto_55
    move-object/from16 v0, p3

    #@159b
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@159e
    .line 1937
    const/4 v6, 0x1

    #@159f
    return v6

    #@15a0
    .line 1931
    .end local v9    # "_arg2":I
    .end local v66    # "_arg1":Z
    .end local v99    # "_result":Z
    :cond_54
    const/16 v66, 0x0

    #@15a2
    .restart local v66    # "_arg1":Z
    goto :goto_54

    #@15a3
    .line 1936
    .restart local v9    # "_arg2":I
    .restart local v99    # "_result":Z
    :cond_55
    const/4 v6, 0x0

    #@15a4
    goto :goto_55

    #@15a5
    .line 1941
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v66    # "_arg1":Z
    .end local v99    # "_result":Z
    :sswitch_87
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@15a8
    move-object/from16 v0, p2

    #@15aa
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@15ad
    .line 1943
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@15b0
    move-result-object v7

    #@15b1
    .line 1945
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@15b4
    move-result v36

    #@15b5
    .line 1946
    .restart local v36    # "_arg1":I
    move-object/from16 v0, p0

    #@15b7
    move/from16 v1, v36

    #@15b9
    invoke-virtual {v0, v7, v1}, Landroid/content/pm/IPackageManager$Stub;->getBlockUninstallForUser(Ljava/lang/String;I)Z

    #@15bc
    move-result v99

    #@15bd
    .line 1947
    .restart local v99    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@15c0
    .line 1948
    if-eqz v99, :cond_56

    #@15c2
    const/4 v6, 0x1

    #@15c3
    :goto_56
    move-object/from16 v0, p3

    #@15c5
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@15c8
    .line 1949
    const/4 v6, 0x1

    #@15c9
    return v6

    #@15ca
    .line 1948
    :cond_56
    const/4 v6, 0x0

    #@15cb
    goto :goto_56

    #@15cc
    .line 1953
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v36    # "_arg1":I
    .end local v99    # "_result":Z
    :sswitch_88
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@15cf
    move-object/from16 v0, p2

    #@15d1
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@15d4
    .line 1955
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@15d7
    move-result-object v7

    #@15d8
    .line 1957
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@15db
    move-result-object v8

    #@15dc
    .line 1958
    .restart local v8    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@15de
    invoke-virtual {v0, v7, v8}, Landroid/content/pm/IPackageManager$Stub;->getKeySetByAlias(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/KeySet;

    #@15e1
    move-result-object v80

    #@15e2
    .line 1959
    .local v80, "_result":Landroid/content/pm/KeySet;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@15e5
    .line 1960
    if-eqz v80, :cond_57

    #@15e7
    .line 1961
    const/4 v6, 0x1

    #@15e8
    move-object/from16 v0, p3

    #@15ea
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@15ed
    .line 1962
    const/4 v6, 0x1

    #@15ee
    move-object/from16 v0, v80

    #@15f0
    move-object/from16 v1, p3

    #@15f2
    invoke-virtual {v0, v1, v6}, Landroid/content/pm/KeySet;->writeToParcel(Landroid/os/Parcel;I)V

    #@15f5
    .line 1967
    :goto_57
    const/4 v6, 0x1

    #@15f6
    return v6

    #@15f7
    .line 1965
    :cond_57
    const/4 v6, 0x0

    #@15f8
    move-object/from16 v0, p3

    #@15fa
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@15fd
    goto :goto_57

    #@15fe
    .line 1971
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v80    # "_result":Landroid/content/pm/KeySet;
    :sswitch_89
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@1601
    move-object/from16 v0, p2

    #@1603
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1606
    .line 1973
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1609
    move-result-object v7

    #@160a
    .line 1974
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@160c
    invoke-virtual {v0, v7}, Landroid/content/pm/IPackageManager$Stub;->getSigningKeySet(Ljava/lang/String;)Landroid/content/pm/KeySet;

    #@160f
    move-result-object v80

    #@1610
    .line 1975
    .restart local v80    # "_result":Landroid/content/pm/KeySet;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1613
    .line 1976
    if-eqz v80, :cond_58

    #@1615
    .line 1977
    const/4 v6, 0x1

    #@1616
    move-object/from16 v0, p3

    #@1618
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@161b
    .line 1978
    const/4 v6, 0x1

    #@161c
    move-object/from16 v0, v80

    #@161e
    move-object/from16 v1, p3

    #@1620
    invoke-virtual {v0, v1, v6}, Landroid/content/pm/KeySet;->writeToParcel(Landroid/os/Parcel;I)V

    #@1623
    .line 1983
    :goto_58
    const/4 v6, 0x1

    #@1624
    return v6

    #@1625
    .line 1981
    :cond_58
    const/4 v6, 0x0

    #@1626
    move-object/from16 v0, p3

    #@1628
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@162b
    goto :goto_58

    #@162c
    .line 1987
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v80    # "_result":Landroid/content/pm/KeySet;
    :sswitch_8a
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@162f
    move-object/from16 v0, p2

    #@1631
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1634
    .line 1989
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1637
    move-result-object v7

    #@1638
    .line 1991
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@163b
    move-result v6

    #@163c
    if-eqz v6, :cond_59

    #@163e
    .line 1992
    sget-object v6, Landroid/content/pm/KeySet;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1640
    move-object/from16 v0, p2

    #@1642
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1645
    move-result-object v63

    #@1646
    check-cast v63, Landroid/content/pm/KeySet;

    #@1648
    .line 1997
    :goto_59
    move-object/from16 v0, p0

    #@164a
    move-object/from16 v1, v63

    #@164c
    invoke-virtual {v0, v7, v1}, Landroid/content/pm/IPackageManager$Stub;->isPackageSignedByKeySet(Ljava/lang/String;Landroid/content/pm/KeySet;)Z

    #@164f
    move-result v99

    #@1650
    .line 1998
    .restart local v99    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1653
    .line 1999
    if-eqz v99, :cond_5a

    #@1655
    const/4 v6, 0x1

    #@1656
    :goto_5a
    move-object/from16 v0, p3

    #@1658
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@165b
    .line 2000
    const/4 v6, 0x1

    #@165c
    return v6

    #@165d
    .line 1995
    .end local v99    # "_result":Z
    :cond_59
    const/16 v63, 0x0

    #@165f
    .local v63, "_arg1":Landroid/content/pm/KeySet;
    goto :goto_59

    #@1660
    .line 1999
    .end local v63    # "_arg1":Landroid/content/pm/KeySet;
    .restart local v99    # "_result":Z
    :cond_5a
    const/4 v6, 0x0

    #@1661
    goto :goto_5a

    #@1662
    .line 2004
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v99    # "_result":Z
    :sswitch_8b
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@1665
    move-object/from16 v0, p2

    #@1667
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@166a
    .line 2006
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@166d
    move-result-object v7

    #@166e
    .line 2008
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1671
    move-result v6

    #@1672
    if-eqz v6, :cond_5b

    #@1674
    .line 2009
    sget-object v6, Landroid/content/pm/KeySet;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1676
    move-object/from16 v0, p2

    #@1678
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@167b
    move-result-object v63

    #@167c
    check-cast v63, Landroid/content/pm/KeySet;

    #@167e
    .line 2014
    :goto_5b
    move-object/from16 v0, p0

    #@1680
    move-object/from16 v1, v63

    #@1682
    invoke-virtual {v0, v7, v1}, Landroid/content/pm/IPackageManager$Stub;->isPackageSignedByKeySetExactly(Ljava/lang/String;Landroid/content/pm/KeySet;)Z

    #@1685
    move-result v99

    #@1686
    .line 2015
    .restart local v99    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1689
    .line 2016
    if-eqz v99, :cond_5c

    #@168b
    const/4 v6, 0x1

    #@168c
    :goto_5c
    move-object/from16 v0, p3

    #@168e
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@1691
    .line 2017
    const/4 v6, 0x1

    #@1692
    return v6

    #@1693
    .line 2012
    .end local v99    # "_result":Z
    :cond_5b
    const/16 v63, 0x0

    #@1695
    .restart local v63    # "_arg1":Landroid/content/pm/KeySet;
    goto :goto_5b

    #@1696
    .line 2016
    .end local v63    # "_arg1":Landroid/content/pm/KeySet;
    .restart local v99    # "_result":Z
    :cond_5c
    const/4 v6, 0x0

    #@1697
    goto :goto_5c

    #@1698
    .line 2021
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v99    # "_result":Z
    :sswitch_8c
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@169b
    move-object/from16 v0, p2

    #@169d
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16a0
    .line 2023
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@16a3
    move-result-object v6

    #@16a4
    invoke-static {v6}, Landroid/content/pm/IOnPermissionsChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IOnPermissionsChangeListener;

    #@16a7
    move-result-object v46

    #@16a8
    .line 2024
    .local v46, "_arg0":Landroid/content/pm/IOnPermissionsChangeListener;
    move-object/from16 v0, p0

    #@16aa
    move-object/from16 v1, v46

    #@16ac
    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->addOnPermissionsChangeListener(Landroid/content/pm/IOnPermissionsChangeListener;)V

    #@16af
    .line 2025
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@16b2
    .line 2026
    const/4 v6, 0x1

    #@16b3
    return v6

    #@16b4
    .line 2030
    .end local v46    # "_arg0":Landroid/content/pm/IOnPermissionsChangeListener;
    :sswitch_8d
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@16b7
    move-object/from16 v0, p2

    #@16b9
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16bc
    .line 2032
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@16bf
    move-result-object v6

    #@16c0
    invoke-static {v6}, Landroid/content/pm/IOnPermissionsChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IOnPermissionsChangeListener;

    #@16c3
    move-result-object v46

    #@16c4
    .line 2033
    .restart local v46    # "_arg0":Landroid/content/pm/IOnPermissionsChangeListener;
    move-object/from16 v0, p0

    #@16c6
    move-object/from16 v1, v46

    #@16c8
    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->removeOnPermissionsChangeListener(Landroid/content/pm/IOnPermissionsChangeListener;)V

    #@16cb
    .line 2034
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@16ce
    .line 2035
    const/4 v6, 0x1

    #@16cf
    return v6

    #@16d0
    .line 2039
    .end local v46    # "_arg0":Landroid/content/pm/IOnPermissionsChangeListener;
    :sswitch_8e
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@16d3
    move-object/from16 v0, p2

    #@16d5
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16d8
    .line 2041
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@16db
    move-result-object v55

    #@16dc
    .line 2043
    .restart local v55    # "_arg0":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@16df
    move-result v36

    #@16e0
    .line 2044
    .restart local v36    # "_arg1":I
    move-object/from16 v0, p0

    #@16e2
    move-object/from16 v1, v55

    #@16e4
    move/from16 v2, v36

    #@16e6
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->grantDefaultPermissionsToEnabledCarrierApps([Ljava/lang/String;I)V

    #@16e9
    .line 2045
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@16ec
    .line 2046
    const/4 v6, 0x1

    #@16ed
    return v6

    #@16ee
    .line 2050
    .end local v36    # "_arg1":I
    .end local v55    # "_arg0":[Ljava/lang/String;
    :sswitch_8f
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@16f1
    move-object/from16 v0, p2

    #@16f3
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16f6
    .line 2052
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@16f9
    move-result-object v7

    #@16fa
    .line 2054
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@16fd
    move-result-object v8

    #@16fe
    .line 2056
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1701
    move-result v9

    #@1702
    .line 2057
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    #@1704
    invoke-virtual {v0, v7, v8, v9}, Landroid/content/pm/IPackageManager$Stub;->isPermissionRevokedByPolicy(Ljava/lang/String;Ljava/lang/String;I)Z

    #@1707
    move-result v99

    #@1708
    .line 2058
    .restart local v99    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@170b
    .line 2059
    if-eqz v99, :cond_5d

    #@170d
    const/4 v6, 0x1

    #@170e
    :goto_5d
    move-object/from16 v0, p3

    #@1710
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@1713
    .line 2060
    const/4 v6, 0x1

    #@1714
    return v6

    #@1715
    .line 2059
    :cond_5d
    const/4 v6, 0x0

    #@1716
    goto :goto_5d

    #@1717
    .line 2064
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v99    # "_result":Z
    :sswitch_90
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@171a
    move-object/from16 v0, p2

    #@171c
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@171f
    .line 2065
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getPermissionControllerPackageName()Ljava/lang/String;

    #@1722
    move-result-object v90

    #@1723
    .line 2066
    .restart local v90    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1726
    .line 2067
    move-object/from16 v0, p3

    #@1728
    move-object/from16 v1, v90

    #@172a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@172d
    .line 2068
    const/4 v6, 0x1

    #@172e
    return v6

    #@172f
    .line 44
    nop

    #@1730
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x3b -> :sswitch_3b
        0x3c -> :sswitch_3c
        0x3d -> :sswitch_3d
        0x3e -> :sswitch_3e
        0x3f -> :sswitch_3f
        0x40 -> :sswitch_40
        0x41 -> :sswitch_41
        0x42 -> :sswitch_42
        0x43 -> :sswitch_43
        0x44 -> :sswitch_44
        0x45 -> :sswitch_45
        0x46 -> :sswitch_46
        0x47 -> :sswitch_47
        0x48 -> :sswitch_48
        0x49 -> :sswitch_49
        0x4a -> :sswitch_4a
        0x4b -> :sswitch_4b
        0x4c -> :sswitch_4c
        0x4d -> :sswitch_4d
        0x4e -> :sswitch_4e
        0x4f -> :sswitch_4f
        0x50 -> :sswitch_50
        0x51 -> :sswitch_51
        0x52 -> :sswitch_52
        0x53 -> :sswitch_53
        0x54 -> :sswitch_54
        0x55 -> :sswitch_55
        0x56 -> :sswitch_56
        0x57 -> :sswitch_57
        0x58 -> :sswitch_58
        0x59 -> :sswitch_59
        0x5a -> :sswitch_5a
        0x5b -> :sswitch_5b
        0x5c -> :sswitch_5c
        0x5d -> :sswitch_5d
        0x5e -> :sswitch_5e
        0x5f -> :sswitch_5f
        0x60 -> :sswitch_60
        0x61 -> :sswitch_61
        0x62 -> :sswitch_62
        0x63 -> :sswitch_63
        0x64 -> :sswitch_64
        0x65 -> :sswitch_65
        0x66 -> :sswitch_66
        0x67 -> :sswitch_67
        0x68 -> :sswitch_68
        0x69 -> :sswitch_69
        0x6a -> :sswitch_6a
        0x6b -> :sswitch_6b
        0x6c -> :sswitch_6c
        0x6d -> :sswitch_6d
        0x6e -> :sswitch_6e
        0x6f -> :sswitch_6f
        0x70 -> :sswitch_70
        0x71 -> :sswitch_71
        0x72 -> :sswitch_72
        0x73 -> :sswitch_73
        0x74 -> :sswitch_74
        0x75 -> :sswitch_75
        0x76 -> :sswitch_76
        0x77 -> :sswitch_77
        0x78 -> :sswitch_78
        0x79 -> :sswitch_79
        0x7a -> :sswitch_7a
        0x7b -> :sswitch_7b
        0x7c -> :sswitch_7c
        0x7d -> :sswitch_7d
        0x7e -> :sswitch_7e
        0x7f -> :sswitch_7f
        0x80 -> :sswitch_80
        0x81 -> :sswitch_81
        0x82 -> :sswitch_82
        0x83 -> :sswitch_83
        0x84 -> :sswitch_84
        0x85 -> :sswitch_85
        0x86 -> :sswitch_86
        0x87 -> :sswitch_87
        0x88 -> :sswitch_88
        0x89 -> :sswitch_89
        0x8a -> :sswitch_8a
        0x8b -> :sswitch_8b
        0x8c -> :sswitch_8c
        0x8d -> :sswitch_8d
        0x8e -> :sswitch_8e
        0x8f -> :sswitch_8f
        0x90 -> :sswitch_90
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
