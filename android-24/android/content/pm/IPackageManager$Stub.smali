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

.field static final TRANSACTION_addCrossProfileIntentFilter:I = 0x48

.field static final TRANSACTION_addOnPermissionsChangeListener:I = 0x97

.field static final TRANSACTION_addPermission:I = 0x14

.field static final TRANSACTION_addPermissionAsync:I = 0x7a

.field static final TRANSACTION_addPersistentPreferredActivity:I = 0x46

.field static final TRANSACTION_addPreferredActivity:I = 0x42

.field static final TRANSACTION_canForwardTo:I = 0x29

.field static final TRANSACTION_canonicalToCurrentPackageNames:I = 0x7

.field static final TRANSACTION_checkPackageStartable:I = 0x1

.field static final TRANSACTION_checkPermission:I = 0x12

.field static final TRANSACTION_checkSignatures:I = 0x1e

.field static final TRANSACTION_checkUidPermission:I = 0x13

.field static final TRANSACTION_checkUidSignatures:I = 0x1f

.field static final TRANSACTION_clearApplicationProfileData:I = 0x62

.field static final TRANSACTION_clearApplicationUserData:I = 0x61

.field static final TRANSACTION_clearCrossProfileIntentFilters:I = 0x49

.field static final TRANSACTION_clearPackagePersistentPreferredActivities:I = 0x47

.field static final TRANSACTION_clearPackagePreferredActivities:I = 0x44

.field static final TRANSACTION_currentToCanonicalPackageNames:I = 0x6

.field static final TRANSACTION_deleteApplicationCacheFiles:I = 0x5f

.field static final TRANSACTION_deleteApplicationCacheFilesAsUser:I = 0x60

.field static final TRANSACTION_deletePackage:I = 0x3d

.field static final TRANSACTION_deletePackageAsUser:I = 0x3c

.field static final TRANSACTION_dumpProfiles:I = 0x71

.field static final TRANSACTION_enterSafeMode:I = 0x67

.field static final TRANSACTION_extendVerificationTimeout:I = 0x7f

.field static final TRANSACTION_finishPackageInstall:I = 0x3a

.field static final TRANSACTION_flushPackageRestrictionsAsUser:I = 0x5b

.field static final TRANSACTION_forceDexOpt:I = 0x72

.field static final TRANSACTION_freeStorage:I = 0x5e

.field static final TRANSACTION_freeStorageAndNotify:I = 0x5d

.field static final TRANSACTION_getActivityInfo:I = 0xd

.field static final TRANSACTION_getAllIntentFilters:I = 0x84

.field static final TRANSACTION_getAllPackages:I = 0x20

.field static final TRANSACTION_getAllPermissionGroups:I = 0xb

.field static final TRANSACTION_getAppOpPermissionPackages:I = 0x27

.field static final TRANSACTION_getApplicationEnabledSetting:I = 0x59

.field static final TRANSACTION_getApplicationHiddenSettingAsUser:I = 0x8f

.field static final TRANSACTION_getApplicationInfo:I = 0xc

.field static final TRANSACTION_getBlockUninstallForUser:I = 0x92

.field static final TRANSACTION_getComponentEnabledSetting:I = 0x57

.field static final TRANSACTION_getDefaultAppsBackup:I = 0x4e

.field static final TRANSACTION_getDefaultBrowserPackageName:I = 0x86

.field static final TRANSACTION_getEphemeralApplicationCookie:I = 0x9d

.field static final TRANSACTION_getEphemeralApplicationIcon:I = 0x9f

.field static final TRANSACTION_getEphemeralApplications:I = 0x9c

.field static final TRANSACTION_getFlagsForUid:I = 0x24

.field static final TRANSACTION_getHomeActivities:I = 0x54

.field static final TRANSACTION_getInstallLocation:I = 0x7c

.field static final TRANSACTION_getInstalledApplications:I = 0x32

.field static final TRANSACTION_getInstalledPackages:I = 0x30

.field static final TRANSACTION_getInstallerPackageName:I = 0x3e

.field static final TRANSACTION_getInstrumentationInfo:I = 0x37

.field static final TRANSACTION_getIntentFilterVerificationBackup:I = 0x50

.field static final TRANSACTION_getIntentFilterVerifications:I = 0x83

.field static final TRANSACTION_getIntentVerificationStatus:I = 0x81

.field static final TRANSACTION_getKeySetByAlias:I = 0x93

.field static final TRANSACTION_getLastChosenActivity:I = 0x40

.field static final TRANSACTION_getMoveStatus:I = 0x75

.field static final TRANSACTION_getNameForUid:I = 0x22

.field static final TRANSACTION_getPackageGids:I = 0x5

.field static final TRANSACTION_getPackageInfo:I = 0x3

.field static final TRANSACTION_getPackageInstaller:I = 0x90

.field static final TRANSACTION_getPackageSizeInfo:I = 0x63

.field static final TRANSACTION_getPackageUid:I = 0x4

.field static final TRANSACTION_getPackagesForUid:I = 0x21

.field static final TRANSACTION_getPackagesHoldingPermissions:I = 0x31

.field static final TRANSACTION_getPermissionControllerPackageName:I = 0x9b

.field static final TRANSACTION_getPermissionFlags:I = 0x19

.field static final TRANSACTION_getPermissionGrantBackup:I = 0x52

.field static final TRANSACTION_getPermissionGroupInfo:I = 0xa

.field static final TRANSACTION_getPermissionInfo:I = 0x8

.field static final TRANSACTION_getPersistentApplications:I = 0x33

.field static final TRANSACTION_getPreferredActivities:I = 0x45

.field static final TRANSACTION_getPreferredActivityBackup:I = 0x4c

.field static final TRANSACTION_getPreviousCodePaths:I = 0xa5

.field static final TRANSACTION_getPrivateFlagsForUid:I = 0x25

.field static final TRANSACTION_getProviderInfo:I = 0x11

.field static final TRANSACTION_getReceiverInfo:I = 0xf

.field static final TRANSACTION_getServiceInfo:I = 0x10

.field static final TRANSACTION_getServicesSystemSharedLibraryPackageName:I = 0xa2

.field static final TRANSACTION_getSharedSystemSharedLibraryPackageName:I = 0xa3

.field static final TRANSACTION_getSigningKeySet:I = 0x94

.field static final TRANSACTION_getSystemAvailableFeatures:I = 0x65

.field static final TRANSACTION_getSystemSharedLibraryNames:I = 0x64

.field static final TRANSACTION_getUidForSharedUser:I = 0x23

.field static final TRANSACTION_getVerifierDeviceIdentity:I = 0x87

.field static final TRANSACTION_grantDefaultPermissionsToEnabledCarrierApps:I = 0x99

.field static final TRANSACTION_grantRuntimePermission:I = 0x16

.field static final TRANSACTION_hasSystemFeature:I = 0x66

.field static final TRANSACTION_hasSystemUidErrors:I = 0x6a

.field static final TRANSACTION_installExistingPackageAsUser:I = 0x7d

.field static final TRANSACTION_installPackageAsUser:I = 0x39

.field static final TRANSACTION_isEphemeralApplication:I = 0xa0

.field static final TRANSACTION_isFirstBoot:I = 0x88

.field static final TRANSACTION_isOnlyCoreApps:I = 0x89

.field static final TRANSACTION_isPackageAvailable:I = 0x2

.field static final TRANSACTION_isPackageDeviceAdminOnAnyUser:I = 0xa4

.field static final TRANSACTION_isPackageSignedByKeySet:I = 0x95

.field static final TRANSACTION_isPackageSignedByKeySetExactly:I = 0x96

.field static final TRANSACTION_isPackageSuspendedForUser:I = 0x4b

.field static final TRANSACTION_isPermissionEnforced:I = 0x8c

.field static final TRANSACTION_isPermissionRevokedByPolicy:I = 0x9a

.field static final TRANSACTION_isProtectedBroadcast:I = 0x1d

.field static final TRANSACTION_isSafeMode:I = 0x68

.field static final TRANSACTION_isStorageLow:I = 0x8d

.field static final TRANSACTION_isUidPrivileged:I = 0x26

.field static final TRANSACTION_isUpgrade:I = 0x8a

.field static final TRANSACTION_logAppProcessStartIfNeeded:I = 0x5a

.field static final TRANSACTION_movePackage:I = 0x78

.field static final TRANSACTION_movePrimaryStorage:I = 0x79

.field static final TRANSACTION_nextPackageToClean:I = 0x74

.field static final TRANSACTION_notifyPackageUse:I = 0x6d

.field static final TRANSACTION_performDexOpt:I = 0x6f

.field static final TRANSACTION_performDexOptIfNeeded:I = 0x6e

.field static final TRANSACTION_performDexOptMode:I = 0x70

.field static final TRANSACTION_performFstrimIfNeeded:I = 0x6b

.field static final TRANSACTION_queryContentProviders:I = 0x36

.field static final TRANSACTION_queryInstrumentation:I = 0x38

.field static final TRANSACTION_queryIntentActivities:I = 0x2a

.field static final TRANSACTION_queryIntentActivityOptions:I = 0x2b

.field static final TRANSACTION_queryIntentContentProviders:I = 0x2f

.field static final TRANSACTION_queryIntentReceivers:I = 0x2c

.field static final TRANSACTION_queryIntentServices:I = 0x2e

.field static final TRANSACTION_queryPermissionsByGroup:I = 0x9

.field static final TRANSACTION_querySyncProviders:I = 0x35

.field static final TRANSACTION_registerMoveCallback:I = 0x76

.field static final TRANSACTION_removeOnPermissionsChangeListener:I = 0x98

.field static final TRANSACTION_removePermission:I = 0x15

.field static final TRANSACTION_replacePreferredActivity:I = 0x43

.field static final TRANSACTION_resetApplicationPreferences:I = 0x3f

.field static final TRANSACTION_resetRuntimePermissions:I = 0x18

.field static final TRANSACTION_resolveContentProvider:I = 0x34

.field static final TRANSACTION_resolveIntent:I = 0x28

.field static final TRANSACTION_resolveService:I = 0x2d

.field static final TRANSACTION_restoreDefaultApps:I = 0x4f

.field static final TRANSACTION_restoreIntentFilterVerification:I = 0x51

.field static final TRANSACTION_restorePermissionGrants:I = 0x53

.field static final TRANSACTION_restorePreferredActivities:I = 0x4d

.field static final TRANSACTION_revokeRuntimePermission:I = 0x17

.field static final TRANSACTION_setApplicationEnabledSetting:I = 0x58

.field static final TRANSACTION_setApplicationHiddenSettingAsUser:I = 0x8e

.field static final TRANSACTION_setBlockUninstallForUser:I = 0x91

.field static final TRANSACTION_setComponentEnabledSetting:I = 0x56

.field static final TRANSACTION_setDefaultBrowserPackageName:I = 0x85

.field static final TRANSACTION_setEphemeralApplicationCookie:I = 0x9e

.field static final TRANSACTION_setHomeActivity:I = 0x55

.field static final TRANSACTION_setInstallLocation:I = 0x7b

.field static final TRANSACTION_setInstallerPackageName:I = 0x3b

.field static final TRANSACTION_setLastChosenActivity:I = 0x41

.field static final TRANSACTION_setPackageStoppedState:I = 0x5c

.field static final TRANSACTION_setPackagesSuspendedAsUser:I = 0x4a

.field static final TRANSACTION_setPermissionEnforced:I = 0x8b

.field static final TRANSACTION_setRequiredForSystemUser:I = 0xa1

.field static final TRANSACTION_shouldShowRequestPermissionRationale:I = 0x1c

.field static final TRANSACTION_systemReady:I = 0x69

.field static final TRANSACTION_unregisterMoveCallback:I = 0x77

.field static final TRANSACTION_updateExternalMediaStatus:I = 0x73

.field static final TRANSACTION_updateIntentVerificationStatus:I = 0x82

.field static final TRANSACTION_updatePackagesIfNeeded:I = 0x6c

.field static final TRANSACTION_updatePermissionFlags:I = 0x1a

.field static final TRANSACTION_updatePermissionFlagsForAllApps:I = 0x1b

.field static final TRANSACTION_verifyIntentFilter:I = 0x80

.field static final TRANSACTION_verifyPendingInstall:I = 0x7e


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
    .locals 96
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
    .line 2387
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
    .line 57
    .local v7, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@21
    move-result v34

    #@22
    .line 58
    .local v34, "_arg1":I
    move-object/from16 v0, p0

    #@24
    move/from16 v1, v34

    #@26
    invoke-virtual {v0, v7, v1}, Landroid/content/pm/IPackageManager$Stub;->checkPackageStartable(Ljava/lang/String;I)V

    #@29
    .line 59
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2c
    .line 60
    const/4 v6, 0x1

    #@2d
    return v6

    #@2e
    .line 64
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v34    # "_arg1":I
    :sswitch_2
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@31
    move-object/from16 v0, p2

    #@33
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@36
    .line 66
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@39
    move-result-object v7

    #@3a
    .line 68
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3d
    move-result v34

    #@3e
    .line 69
    .restart local v34    # "_arg1":I
    move-object/from16 v0, p0

    #@40
    move/from16 v1, v34

    #@42
    invoke-virtual {v0, v7, v1}, Landroid/content/pm/IPackageManager$Stub;->isPackageAvailable(Ljava/lang/String;I)Z

    #@45
    move-result v92

    #@46
    .line 70
    .local v92, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@49
    .line 71
    if-eqz v92, :cond_0

    #@4b
    const/4 v6, 0x1

    #@4c
    :goto_0
    move-object/from16 v0, p3

    #@4e
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@51
    .line 72
    const/4 v6, 0x1

    #@52
    return v6

    #@53
    .line 71
    :cond_0
    const/4 v6, 0x0

    #@54
    goto :goto_0

    #@55
    .line 76
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v34    # "_arg1":I
    .end local v92    # "_result":Z
    :sswitch_3
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@58
    move-object/from16 v0, p2

    #@5a
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5d
    .line 78
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@60
    move-result-object v7

    #@61
    .line 80
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@64
    move-result v34

    #@65
    .line 82
    .restart local v34    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@68
    move-result v9

    #@69
    .line 83
    .local v9, "_arg2":I
    move-object/from16 v0, p0

    #@6b
    move/from16 v1, v34

    #@6d
    invoke-virtual {v0, v7, v1, v9}, Landroid/content/pm/IPackageManager$Stub;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    #@70
    move-result-object v81

    #@71
    .line 84
    .local v81, "_result":Landroid/content/pm/PackageInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@74
    .line 85
    if-eqz v81, :cond_1

    #@76
    .line 86
    const/4 v6, 0x1

    #@77
    move-object/from16 v0, p3

    #@79
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@7c
    .line 87
    const/4 v6, 0x1

    #@7d
    move-object/from16 v0, v81

    #@7f
    move-object/from16 v1, p3

    #@81
    invoke-virtual {v0, v1, v6}, Landroid/content/pm/PackageInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@84
    .line 92
    :goto_1
    const/4 v6, 0x1

    #@85
    return v6

    #@86
    .line 90
    :cond_1
    const/4 v6, 0x0

    #@87
    move-object/from16 v0, p3

    #@89
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@8c
    goto :goto_1

    #@8d
    .line 96
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v34    # "_arg1":I
    .end local v81    # "_result":Landroid/content/pm/PackageInfo;
    :sswitch_4
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@90
    move-object/from16 v0, p2

    #@92
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@95
    .line 98
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@98
    move-result-object v7

    #@99
    .line 100
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@9c
    move-result v34

    #@9d
    .line 102
    .restart local v34    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@a0
    move-result v9

    #@a1
    .line 103
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    #@a3
    move/from16 v1, v34

    #@a5
    invoke-virtual {v0, v7, v1, v9}, Landroid/content/pm/IPackageManager$Stub;->getPackageUid(Ljava/lang/String;II)I

    #@a8
    move-result v73

    #@a9
    .line 104
    .local v73, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@ac
    .line 105
    move-object/from16 v0, p3

    #@ae
    move/from16 v1, v73

    #@b0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@b3
    .line 106
    const/4 v6, 0x1

    #@b4
    return v6

    #@b5
    .line 110
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v34    # "_arg1":I
    .end local v73    # "_result":I
    :sswitch_5
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@b8
    move-object/from16 v0, p2

    #@ba
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@bd
    .line 112
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@c0
    move-result-object v7

    #@c1
    .line 114
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@c4
    move-result v34

    #@c5
    .line 116
    .restart local v34    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@c8
    move-result v9

    #@c9
    .line 117
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    #@cb
    move/from16 v1, v34

    #@cd
    invoke-virtual {v0, v7, v1, v9}, Landroid/content/pm/IPackageManager$Stub;->getPackageGids(Ljava/lang/String;II)[I

    #@d0
    move-result-object v94

    #@d1
    .line 118
    .local v94, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@d4
    .line 119
    move-object/from16 v0, p3

    #@d6
    move-object/from16 v1, v94

    #@d8
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    #@db
    .line 120
    const/4 v6, 0x1

    #@dc
    return v6

    #@dd
    .line 124
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v34    # "_arg1":I
    .end local v94    # "_result":[I
    :sswitch_6
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@e0
    move-object/from16 v0, p2

    #@e2
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@e5
    .line 126
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@e8
    move-result-object v53

    #@e9
    .line 127
    .local v53, "_arg0":[Ljava/lang/String;
    move-object/from16 v0, p0

    #@eb
    move-object/from16 v1, v53

    #@ed
    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    #@f0
    move-result-object v95

    #@f1
    .line 128
    .local v95, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@f4
    .line 129
    move-object/from16 v0, p3

    #@f6
    move-object/from16 v1, v95

    #@f8
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@fb
    .line 130
    const/4 v6, 0x1

    #@fc
    return v6

    #@fd
    .line 134
    .end local v53    # "_arg0":[Ljava/lang/String;
    .end local v95    # "_result":[Ljava/lang/String;
    :sswitch_7
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@100
    move-object/from16 v0, p2

    #@102
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@105
    .line 136
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@108
    move-result-object v53

    #@109
    .line 137
    .restart local v53    # "_arg0":[Ljava/lang/String;
    move-object/from16 v0, p0

    #@10b
    move-object/from16 v1, v53

    #@10d
    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->canonicalToCurrentPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    #@110
    move-result-object v95

    #@111
    .line 138
    .restart local v95    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@114
    .line 139
    move-object/from16 v0, p3

    #@116
    move-object/from16 v1, v95

    #@118
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@11b
    .line 140
    const/4 v6, 0x1

    #@11c
    return v6

    #@11d
    .line 144
    .end local v53    # "_arg0":[Ljava/lang/String;
    .end local v95    # "_result":[Ljava/lang/String;
    :sswitch_8
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@120
    move-object/from16 v0, p2

    #@122
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@125
    .line 146
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@128
    move-result-object v7

    #@129
    .line 148
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@12c
    move-result v34

    #@12d
    .line 149
    .restart local v34    # "_arg1":I
    move-object/from16 v0, p0

    #@12f
    move/from16 v1, v34

    #@131
    invoke-virtual {v0, v7, v1}, Landroid/content/pm/IPackageManager$Stub;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    #@134
    move-result-object v84

    #@135
    .line 150
    .local v84, "_result":Landroid/content/pm/PermissionInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@138
    .line 151
    if-eqz v84, :cond_2

    #@13a
    .line 152
    const/4 v6, 0x1

    #@13b
    move-object/from16 v0, p3

    #@13d
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@140
    .line 153
    const/4 v6, 0x1

    #@141
    move-object/from16 v0, v84

    #@143
    move-object/from16 v1, p3

    #@145
    invoke-virtual {v0, v1, v6}, Landroid/content/pm/PermissionInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@148
    .line 158
    :goto_2
    const/4 v6, 0x1

    #@149
    return v6

    #@14a
    .line 156
    :cond_2
    const/4 v6, 0x0

    #@14b
    move-object/from16 v0, p3

    #@14d
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@150
    goto :goto_2

    #@151
    .line 162
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v34    # "_arg1":I
    .end local v84    # "_result":Landroid/content/pm/PermissionInfo;
    :sswitch_9
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@154
    move-object/from16 v0, p2

    #@156
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@159
    .line 164
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@15c
    move-result-object v7

    #@15d
    .line 166
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@160
    move-result v34

    #@161
    .line 167
    .restart local v34    # "_arg1":I
    move-object/from16 v0, p0

    #@163
    move/from16 v1, v34

    #@165
    invoke-virtual {v0, v7, v1}, Landroid/content/pm/IPackageManager$Stub;->queryPermissionsByGroup(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    #@168
    move-result-object v82

    #@169
    .line 168
    .local v82, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@16c
    .line 169
    if-eqz v82, :cond_3

    #@16e
    .line 170
    const/4 v6, 0x1

    #@16f
    move-object/from16 v0, p3

    #@171
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@174
    .line 171
    const/4 v6, 0x1

    #@175
    move-object/from16 v0, v82

    #@177
    move-object/from16 v1, p3

    #@179
    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    #@17c
    .line 176
    :goto_3
    const/4 v6, 0x1

    #@17d
    return v6

    #@17e
    .line 174
    :cond_3
    const/4 v6, 0x0

    #@17f
    move-object/from16 v0, p3

    #@181
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@184
    goto :goto_3

    #@185
    .line 180
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v34    # "_arg1":I
    .end local v82    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_a
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@188
    move-object/from16 v0, p2

    #@18a
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@18d
    .line 182
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@190
    move-result-object v7

    #@191
    .line 184
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@194
    move-result v34

    #@195
    .line 185
    .restart local v34    # "_arg1":I
    move-object/from16 v0, p0

    #@197
    move/from16 v1, v34

    #@199
    invoke-virtual {v0, v7, v1}, Landroid/content/pm/IPackageManager$Stub;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    #@19c
    move-result-object v83

    #@19d
    .line 186
    .local v83, "_result":Landroid/content/pm/PermissionGroupInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1a0
    .line 187
    if-eqz v83, :cond_4

    #@1a2
    .line 188
    const/4 v6, 0x1

    #@1a3
    move-object/from16 v0, p3

    #@1a5
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@1a8
    .line 189
    const/4 v6, 0x1

    #@1a9
    move-object/from16 v0, v83

    #@1ab
    move-object/from16 v1, p3

    #@1ad
    invoke-virtual {v0, v1, v6}, Landroid/content/pm/PermissionGroupInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@1b0
    .line 194
    :goto_4
    const/4 v6, 0x1

    #@1b1
    return v6

    #@1b2
    .line 192
    :cond_4
    const/4 v6, 0x0

    #@1b3
    move-object/from16 v0, p3

    #@1b5
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@1b8
    goto :goto_4

    #@1b9
    .line 198
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v34    # "_arg1":I
    .end local v83    # "_result":Landroid/content/pm/PermissionGroupInfo;
    :sswitch_b
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@1bc
    move-object/from16 v0, p2

    #@1be
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1c1
    .line 200
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1c4
    move-result v43

    #@1c5
    .line 201
    .local v43, "_arg0":I
    move-object/from16 v0, p0

    #@1c7
    move/from16 v1, v43

    #@1c9
    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getAllPermissionGroups(I)Landroid/content/pm/ParceledListSlice;

    #@1cc
    move-result-object v82

    #@1cd
    .line 202
    .restart local v82    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1d0
    .line 203
    if-eqz v82, :cond_5

    #@1d2
    .line 204
    const/4 v6, 0x1

    #@1d3
    move-object/from16 v0, p3

    #@1d5
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@1d8
    .line 205
    const/4 v6, 0x1

    #@1d9
    move-object/from16 v0, v82

    #@1db
    move-object/from16 v1, p3

    #@1dd
    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    #@1e0
    .line 210
    :goto_5
    const/4 v6, 0x1

    #@1e1
    return v6

    #@1e2
    .line 208
    :cond_5
    const/4 v6, 0x0

    #@1e3
    move-object/from16 v0, p3

    #@1e5
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@1e8
    goto :goto_5

    #@1e9
    .line 214
    .end local v43    # "_arg0":I
    .end local v82    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_c
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@1ec
    move-object/from16 v0, p2

    #@1ee
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1f1
    .line 216
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1f4
    move-result-object v7

    #@1f5
    .line 218
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1f8
    move-result v34

    #@1f9
    .line 220
    .restart local v34    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1fc
    move-result v9

    #@1fd
    .line 221
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    #@1ff
    move/from16 v1, v34

    #@201
    invoke-virtual {v0, v7, v1, v9}, Landroid/content/pm/IPackageManager$Stub;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    #@204
    move-result-object v76

    #@205
    .line 222
    .local v76, "_result":Landroid/content/pm/ApplicationInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@208
    .line 223
    if-eqz v76, :cond_6

    #@20a
    .line 224
    const/4 v6, 0x1

    #@20b
    move-object/from16 v0, p3

    #@20d
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@210
    .line 225
    const/4 v6, 0x1

    #@211
    move-object/from16 v0, v76

    #@213
    move-object/from16 v1, p3

    #@215
    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ApplicationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@218
    .line 230
    :goto_6
    const/4 v6, 0x1

    #@219
    return v6

    #@21a
    .line 228
    :cond_6
    const/4 v6, 0x0

    #@21b
    move-object/from16 v0, p3

    #@21d
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@220
    goto :goto_6

    #@221
    .line 234
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v34    # "_arg1":I
    .end local v76    # "_result":Landroid/content/pm/ApplicationInfo;
    :sswitch_d
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@224
    move-object/from16 v0, p2

    #@226
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@229
    .line 236
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@22c
    move-result v6

    #@22d
    if-eqz v6, :cond_7

    #@22f
    .line 237
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@231
    move-object/from16 v0, p2

    #@233
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@236
    move-result-object v13

    #@237
    check-cast v13, Landroid/content/ComponentName;

    #@239
    .line 243
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@23c
    move-result v34

    #@23d
    .line 245
    .restart local v34    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@240
    move-result v9

    #@241
    .line 246
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    #@243
    move/from16 v1, v34

    #@245
    invoke-virtual {v0, v13, v1, v9}, Landroid/content/pm/IPackageManager$Stub;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    #@248
    move-result-object v75

    #@249
    .line 247
    .local v75, "_result":Landroid/content/pm/ActivityInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@24c
    .line 248
    if-eqz v75, :cond_8

    #@24e
    .line 249
    const/4 v6, 0x1

    #@24f
    move-object/from16 v0, p3

    #@251
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@254
    .line 250
    const/4 v6, 0x1

    #@255
    move-object/from16 v0, v75

    #@257
    move-object/from16 v1, p3

    #@259
    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ActivityInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@25c
    .line 255
    :goto_8
    const/4 v6, 0x1

    #@25d
    return v6

    #@25e
    .line 240
    .end local v9    # "_arg2":I
    .end local v34    # "_arg1":I
    .end local v75    # "_result":Landroid/content/pm/ActivityInfo;
    :cond_7
    const/4 v13, 0x0

    #@25f
    .local v13, "_arg0":Landroid/content/ComponentName;
    goto :goto_7

    #@260
    .line 253
    .end local v13    # "_arg0":Landroid/content/ComponentName;
    .restart local v9    # "_arg2":I
    .restart local v34    # "_arg1":I
    .restart local v75    # "_result":Landroid/content/pm/ActivityInfo;
    :cond_8
    const/4 v6, 0x0

    #@261
    move-object/from16 v0, p3

    #@263
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@266
    goto :goto_8

    #@267
    .line 259
    .end local v9    # "_arg2":I
    .end local v34    # "_arg1":I
    .end local v75    # "_result":Landroid/content/pm/ActivityInfo;
    :sswitch_e
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@26a
    move-object/from16 v0, p2

    #@26c
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@26f
    .line 261
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@272
    move-result v6

    #@273
    if-eqz v6, :cond_9

    #@275
    .line 262
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@277
    move-object/from16 v0, p2

    #@279
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@27c
    move-result-object v13

    #@27d
    check-cast v13, Landroid/content/ComponentName;

    #@27f
    .line 268
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@282
    move-result v6

    #@283
    if-eqz v6, :cond_a

    #@285
    .line 269
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@287
    move-object/from16 v0, p2

    #@289
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@28c
    move-result-object v57

    #@28d
    check-cast v57, Landroid/content/Intent;

    #@28f
    .line 275
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@292
    move-result-object v40

    #@293
    .line 276
    .local v40, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    #@295
    move-object/from16 v1, v57

    #@297
    move-object/from16 v2, v40

    #@299
    invoke-virtual {v0, v13, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->activitySupportsIntent(Landroid/content/ComponentName;Landroid/content/Intent;Ljava/lang/String;)Z

    #@29c
    move-result v92

    #@29d
    .line 277
    .restart local v92    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2a0
    .line 278
    if-eqz v92, :cond_b

    #@2a2
    const/4 v6, 0x1

    #@2a3
    :goto_b
    move-object/from16 v0, p3

    #@2a5
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@2a8
    .line 279
    const/4 v6, 0x1

    #@2a9
    return v6

    #@2aa
    .line 265
    .end local v40    # "_arg2":Ljava/lang/String;
    .end local v92    # "_result":Z
    :cond_9
    const/4 v13, 0x0

    #@2ab
    .restart local v13    # "_arg0":Landroid/content/ComponentName;
    goto :goto_9

    #@2ac
    .line 272
    .end local v13    # "_arg0":Landroid/content/ComponentName;
    :cond_a
    const/16 v57, 0x0

    #@2ae
    .local v57, "_arg1":Landroid/content/Intent;
    goto :goto_a

    #@2af
    .line 278
    .end local v57    # "_arg1":Landroid/content/Intent;
    .restart local v40    # "_arg2":Ljava/lang/String;
    .restart local v92    # "_result":Z
    :cond_b
    const/4 v6, 0x0

    #@2b0
    goto :goto_b

    #@2b1
    .line 283
    .end local v40    # "_arg2":Ljava/lang/String;
    .end local v92    # "_result":Z
    :sswitch_f
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@2b4
    move-object/from16 v0, p2

    #@2b6
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2b9
    .line 285
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2bc
    move-result v6

    #@2bd
    if-eqz v6, :cond_c

    #@2bf
    .line 286
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2c1
    move-object/from16 v0, p2

    #@2c3
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2c6
    move-result-object v13

    #@2c7
    check-cast v13, Landroid/content/ComponentName;

    #@2c9
    .line 292
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2cc
    move-result v34

    #@2cd
    .line 294
    .restart local v34    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2d0
    move-result v9

    #@2d1
    .line 295
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    #@2d3
    move/from16 v1, v34

    #@2d5
    invoke-virtual {v0, v13, v1, v9}, Landroid/content/pm/IPackageManager$Stub;->getReceiverInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    #@2d8
    move-result-object v75

    #@2d9
    .line 296
    .restart local v75    # "_result":Landroid/content/pm/ActivityInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2dc
    .line 297
    if-eqz v75, :cond_d

    #@2de
    .line 298
    const/4 v6, 0x1

    #@2df
    move-object/from16 v0, p3

    #@2e1
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@2e4
    .line 299
    const/4 v6, 0x1

    #@2e5
    move-object/from16 v0, v75

    #@2e7
    move-object/from16 v1, p3

    #@2e9
    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ActivityInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@2ec
    .line 304
    :goto_d
    const/4 v6, 0x1

    #@2ed
    return v6

    #@2ee
    .line 289
    .end local v9    # "_arg2":I
    .end local v34    # "_arg1":I
    .end local v75    # "_result":Landroid/content/pm/ActivityInfo;
    :cond_c
    const/4 v13, 0x0

    #@2ef
    .restart local v13    # "_arg0":Landroid/content/ComponentName;
    goto :goto_c

    #@2f0
    .line 302
    .end local v13    # "_arg0":Landroid/content/ComponentName;
    .restart local v9    # "_arg2":I
    .restart local v34    # "_arg1":I
    .restart local v75    # "_result":Landroid/content/pm/ActivityInfo;
    :cond_d
    const/4 v6, 0x0

    #@2f1
    move-object/from16 v0, p3

    #@2f3
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@2f6
    goto :goto_d

    #@2f7
    .line 308
    .end local v9    # "_arg2":I
    .end local v34    # "_arg1":I
    .end local v75    # "_result":Landroid/content/pm/ActivityInfo;
    :sswitch_10
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@2fa
    move-object/from16 v0, p2

    #@2fc
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2ff
    .line 310
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@302
    move-result v6

    #@303
    if-eqz v6, :cond_e

    #@305
    .line 311
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@307
    move-object/from16 v0, p2

    #@309
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@30c
    move-result-object v13

    #@30d
    check-cast v13, Landroid/content/ComponentName;

    #@30f
    .line 317
    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@312
    move-result v34

    #@313
    .line 319
    .restart local v34    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@316
    move-result v9

    #@317
    .line 320
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    #@319
    move/from16 v1, v34

    #@31b
    invoke-virtual {v0, v13, v1, v9}, Landroid/content/pm/IPackageManager$Stub;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    #@31e
    move-result-object v87

    #@31f
    .line 321
    .local v87, "_result":Landroid/content/pm/ServiceInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@322
    .line 322
    if-eqz v87, :cond_f

    #@324
    .line 323
    const/4 v6, 0x1

    #@325
    move-object/from16 v0, p3

    #@327
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@32a
    .line 324
    const/4 v6, 0x1

    #@32b
    move-object/from16 v0, v87

    #@32d
    move-object/from16 v1, p3

    #@32f
    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ServiceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@332
    .line 329
    :goto_f
    const/4 v6, 0x1

    #@333
    return v6

    #@334
    .line 314
    .end local v9    # "_arg2":I
    .end local v34    # "_arg1":I
    .end local v87    # "_result":Landroid/content/pm/ServiceInfo;
    :cond_e
    const/4 v13, 0x0

    #@335
    .restart local v13    # "_arg0":Landroid/content/ComponentName;
    goto :goto_e

    #@336
    .line 327
    .end local v13    # "_arg0":Landroid/content/ComponentName;
    .restart local v9    # "_arg2":I
    .restart local v34    # "_arg1":I
    .restart local v87    # "_result":Landroid/content/pm/ServiceInfo;
    :cond_f
    const/4 v6, 0x0

    #@337
    move-object/from16 v0, p3

    #@339
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@33c
    goto :goto_f

    #@33d
    .line 333
    .end local v9    # "_arg2":I
    .end local v34    # "_arg1":I
    .end local v87    # "_result":Landroid/content/pm/ServiceInfo;
    :sswitch_11
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@340
    move-object/from16 v0, p2

    #@342
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@345
    .line 335
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@348
    move-result v6

    #@349
    if-eqz v6, :cond_10

    #@34b
    .line 336
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@34d
    move-object/from16 v0, p2

    #@34f
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@352
    move-result-object v13

    #@353
    check-cast v13, Landroid/content/ComponentName;

    #@355
    .line 342
    :goto_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@358
    move-result v34

    #@359
    .line 344
    .restart local v34    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@35c
    move-result v9

    #@35d
    .line 345
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    #@35f
    move/from16 v1, v34

    #@361
    invoke-virtual {v0, v13, v1, v9}, Landroid/content/pm/IPackageManager$Stub;->getProviderInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ProviderInfo;

    #@364
    move-result-object v85

    #@365
    .line 346
    .local v85, "_result":Landroid/content/pm/ProviderInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@368
    .line 347
    if-eqz v85, :cond_11

    #@36a
    .line 348
    const/4 v6, 0x1

    #@36b
    move-object/from16 v0, p3

    #@36d
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@370
    .line 349
    const/4 v6, 0x1

    #@371
    move-object/from16 v0, v85

    #@373
    move-object/from16 v1, p3

    #@375
    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ProviderInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@378
    .line 354
    :goto_11
    const/4 v6, 0x1

    #@379
    return v6

    #@37a
    .line 339
    .end local v9    # "_arg2":I
    .end local v34    # "_arg1":I
    .end local v85    # "_result":Landroid/content/pm/ProviderInfo;
    :cond_10
    const/4 v13, 0x0

    #@37b
    .restart local v13    # "_arg0":Landroid/content/ComponentName;
    goto :goto_10

    #@37c
    .line 352
    .end local v13    # "_arg0":Landroid/content/ComponentName;
    .restart local v9    # "_arg2":I
    .restart local v34    # "_arg1":I
    .restart local v85    # "_result":Landroid/content/pm/ProviderInfo;
    :cond_11
    const/4 v6, 0x0

    #@37d
    move-object/from16 v0, p3

    #@37f
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@382
    goto :goto_11

    #@383
    .line 358
    .end local v9    # "_arg2":I
    .end local v34    # "_arg1":I
    .end local v85    # "_result":Landroid/content/pm/ProviderInfo;
    :sswitch_12
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@386
    move-object/from16 v0, p2

    #@388
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@38b
    .line 360
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@38e
    move-result-object v7

    #@38f
    .line 362
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@392
    move-result-object v8

    #@393
    .line 364
    .local v8, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@396
    move-result v9

    #@397
    .line 365
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    #@399
    invoke-virtual {v0, v7, v8, v9}, Landroid/content/pm/IPackageManager$Stub;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    #@39c
    move-result v73

    #@39d
    .line 366
    .restart local v73    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3a0
    .line 367
    move-object/from16 v0, p3

    #@3a2
    move/from16 v1, v73

    #@3a4
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@3a7
    .line 368
    const/4 v6, 0x1

    #@3a8
    return v6

    #@3a9
    .line 372
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v73    # "_result":I
    :sswitch_13
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@3ac
    move-object/from16 v0, p2

    #@3ae
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3b1
    .line 374
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3b4
    move-result-object v7

    #@3b5
    .line 376
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3b8
    move-result v34

    #@3b9
    .line 377
    .restart local v34    # "_arg1":I
    move-object/from16 v0, p0

    #@3bb
    move/from16 v1, v34

    #@3bd
    invoke-virtual {v0, v7, v1}, Landroid/content/pm/IPackageManager$Stub;->checkUidPermission(Ljava/lang/String;I)I

    #@3c0
    move-result v73

    #@3c1
    .line 378
    .restart local v73    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3c4
    .line 379
    move-object/from16 v0, p3

    #@3c6
    move/from16 v1, v73

    #@3c8
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@3cb
    .line 380
    const/4 v6, 0x1

    #@3cc
    return v6

    #@3cd
    .line 384
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v34    # "_arg1":I
    .end local v73    # "_result":I
    :sswitch_14
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@3d0
    move-object/from16 v0, p2

    #@3d2
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3d5
    .line 386
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3d8
    move-result v6

    #@3d9
    if-eqz v6, :cond_12

    #@3db
    .line 387
    sget-object v6, Landroid/content/pm/PermissionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@3dd
    move-object/from16 v0, p2

    #@3df
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3e2
    move-result-object v47

    #@3e3
    check-cast v47, Landroid/content/pm/PermissionInfo;

    #@3e5
    .line 392
    :goto_12
    move-object/from16 v0, p0

    #@3e7
    move-object/from16 v1, v47

    #@3e9
    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->addPermission(Landroid/content/pm/PermissionInfo;)Z

    #@3ec
    move-result v92

    #@3ed
    .line 393
    .restart local v92    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3f0
    .line 394
    if-eqz v92, :cond_13

    #@3f2
    const/4 v6, 0x1

    #@3f3
    :goto_13
    move-object/from16 v0, p3

    #@3f5
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@3f8
    .line 395
    const/4 v6, 0x1

    #@3f9
    return v6

    #@3fa
    .line 390
    .end local v92    # "_result":Z
    :cond_12
    const/16 v47, 0x0

    #@3fc
    .local v47, "_arg0":Landroid/content/pm/PermissionInfo;
    goto :goto_12

    #@3fd
    .line 394
    .end local v47    # "_arg0":Landroid/content/pm/PermissionInfo;
    .restart local v92    # "_result":Z
    :cond_13
    const/4 v6, 0x0

    #@3fe
    goto :goto_13

    #@3ff
    .line 399
    .end local v92    # "_result":Z
    :sswitch_15
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@402
    move-object/from16 v0, p2

    #@404
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@407
    .line 401
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@40a
    move-result-object v7

    #@40b
    .line 402
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@40d
    invoke-virtual {v0, v7}, Landroid/content/pm/IPackageManager$Stub;->removePermission(Ljava/lang/String;)V

    #@410
    .line 403
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@413
    .line 404
    const/4 v6, 0x1

    #@414
    return v6

    #@415
    .line 408
    .end local v7    # "_arg0":Ljava/lang/String;
    :sswitch_16
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@418
    move-object/from16 v0, p2

    #@41a
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@41d
    .line 410
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@420
    move-result-object v7

    #@421
    .line 412
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@424
    move-result-object v8

    #@425
    .line 414
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@428
    move-result v9

    #@429
    .line 415
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    #@42b
    invoke-virtual {v0, v7, v8, v9}, Landroid/content/pm/IPackageManager$Stub;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V

    #@42e
    .line 416
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@431
    .line 417
    const/4 v6, 0x1

    #@432
    return v6

    #@433
    .line 421
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    :sswitch_17
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@436
    move-object/from16 v0, p2

    #@438
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@43b
    .line 423
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@43e
    move-result-object v7

    #@43f
    .line 425
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@442
    move-result-object v8

    #@443
    .line 427
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@446
    move-result v9

    #@447
    .line 428
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    #@449
    invoke-virtual {v0, v7, v8, v9}, Landroid/content/pm/IPackageManager$Stub;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V

    #@44c
    .line 429
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@44f
    .line 430
    const/4 v6, 0x1

    #@450
    return v6

    #@451
    .line 434
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    :sswitch_18
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@454
    move-object/from16 v0, p2

    #@456
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@459
    .line 435
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->resetRuntimePermissions()V

    #@45c
    .line 436
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@45f
    .line 437
    const/4 v6, 0x1

    #@460
    return v6

    #@461
    .line 441
    :sswitch_19
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@464
    move-object/from16 v0, p2

    #@466
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@469
    .line 443
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@46c
    move-result-object v7

    #@46d
    .line 445
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@470
    move-result-object v8

    #@471
    .line 447
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@474
    move-result v9

    #@475
    .line 448
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    #@477
    invoke-virtual {v0, v7, v8, v9}, Landroid/content/pm/IPackageManager$Stub;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;I)I

    #@47a
    move-result v73

    #@47b
    .line 449
    .restart local v73    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@47e
    .line 450
    move-object/from16 v0, p3

    #@480
    move/from16 v1, v73

    #@482
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@485
    .line 451
    const/4 v6, 0x1

    #@486
    return v6

    #@487
    .line 455
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v73    # "_result":I
    :sswitch_1a
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@48a
    move-object/from16 v0, p2

    #@48c
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@48f
    .line 457
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@492
    move-result-object v7

    #@493
    .line 459
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@496
    move-result-object v8

    #@497
    .line 461
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@49a
    move-result v9

    #@49b
    .line 463
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@49e
    move-result v10

    #@49f
    .line 465
    .local v10, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4a2
    move-result v11

    #@4a3
    .local v11, "_arg4":I
    move-object/from16 v6, p0

    #@4a5
    .line 466
    invoke-virtual/range {v6 .. v11}, Landroid/content/pm/IPackageManager$Stub;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;III)V

    #@4a8
    .line 467
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4ab
    .line 468
    const/4 v6, 0x1

    #@4ac
    return v6

    #@4ad
    .line 472
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v11    # "_arg4":I
    :sswitch_1b
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@4b0
    move-object/from16 v0, p2

    #@4b2
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4b5
    .line 474
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4b8
    move-result v43

    #@4b9
    .line 476
    .restart local v43    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4bc
    move-result v34

    #@4bd
    .line 478
    .restart local v34    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4c0
    move-result v9

    #@4c1
    .line 479
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    #@4c3
    move/from16 v1, v43

    #@4c5
    move/from16 v2, v34

    #@4c7
    invoke-virtual {v0, v1, v2, v9}, Landroid/content/pm/IPackageManager$Stub;->updatePermissionFlagsForAllApps(III)V

    #@4ca
    .line 480
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4cd
    .line 481
    const/4 v6, 0x1

    #@4ce
    return v6

    #@4cf
    .line 485
    .end local v9    # "_arg2":I
    .end local v34    # "_arg1":I
    .end local v43    # "_arg0":I
    :sswitch_1c
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@4d2
    move-object/from16 v0, p2

    #@4d4
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4d7
    .line 487
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@4da
    move-result-object v7

    #@4db
    .line 489
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@4de
    move-result-object v8

    #@4df
    .line 491
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4e2
    move-result v9

    #@4e3
    .line 492
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    #@4e5
    invoke-virtual {v0, v7, v8, v9}, Landroid/content/pm/IPackageManager$Stub;->shouldShowRequestPermissionRationale(Ljava/lang/String;Ljava/lang/String;I)Z

    #@4e8
    move-result v92

    #@4e9
    .line 493
    .restart local v92    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4ec
    .line 494
    if-eqz v92, :cond_14

    #@4ee
    const/4 v6, 0x1

    #@4ef
    :goto_14
    move-object/from16 v0, p3

    #@4f1
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@4f4
    .line 495
    const/4 v6, 0x1

    #@4f5
    return v6

    #@4f6
    .line 494
    :cond_14
    const/4 v6, 0x0

    #@4f7
    goto :goto_14

    #@4f8
    .line 499
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v92    # "_result":Z
    :sswitch_1d
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@4fb
    move-object/from16 v0, p2

    #@4fd
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@500
    .line 501
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@503
    move-result-object v7

    #@504
    .line 502
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@506
    invoke-virtual {v0, v7}, Landroid/content/pm/IPackageManager$Stub;->isProtectedBroadcast(Ljava/lang/String;)Z

    #@509
    move-result v92

    #@50a
    .line 503
    .restart local v92    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@50d
    .line 504
    if-eqz v92, :cond_15

    #@50f
    const/4 v6, 0x1

    #@510
    :goto_15
    move-object/from16 v0, p3

    #@512
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@515
    .line 505
    const/4 v6, 0x1

    #@516
    return v6

    #@517
    .line 504
    :cond_15
    const/4 v6, 0x0

    #@518
    goto :goto_15

    #@519
    .line 509
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v92    # "_result":Z
    :sswitch_1e
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@51c
    move-object/from16 v0, p2

    #@51e
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@521
    .line 511
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@524
    move-result-object v7

    #@525
    .line 513
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@528
    move-result-object v8

    #@529
    .line 514
    .restart local v8    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@52b
    invoke-virtual {v0, v7, v8}, Landroid/content/pm/IPackageManager$Stub;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    #@52e
    move-result v73

    #@52f
    .line 515
    .restart local v73    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@532
    .line 516
    move-object/from16 v0, p3

    #@534
    move/from16 v1, v73

    #@536
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@539
    .line 517
    const/4 v6, 0x1

    #@53a
    return v6

    #@53b
    .line 521
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v73    # "_result":I
    :sswitch_1f
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@53e
    move-object/from16 v0, p2

    #@540
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@543
    .line 523
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@546
    move-result v43

    #@547
    .line 525
    .restart local v43    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@54a
    move-result v34

    #@54b
    .line 526
    .restart local v34    # "_arg1":I
    move-object/from16 v0, p0

    #@54d
    move/from16 v1, v43

    #@54f
    move/from16 v2, v34

    #@551
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->checkUidSignatures(II)I

    #@554
    move-result v73

    #@555
    .line 527
    .restart local v73    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@558
    .line 528
    move-object/from16 v0, p3

    #@55a
    move/from16 v1, v73

    #@55c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@55f
    .line 529
    const/4 v6, 0x1

    #@560
    return v6

    #@561
    .line 533
    .end local v34    # "_arg1":I
    .end local v43    # "_arg0":I
    .end local v73    # "_result":I
    :sswitch_20
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@564
    move-object/from16 v0, p2

    #@566
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@569
    .line 534
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getAllPackages()Ljava/util/List;

    #@56c
    move-result-object v91

    #@56d
    .line 535
    .local v91, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@570
    .line 536
    move-object/from16 v0, p3

    #@572
    move-object/from16 v1, v91

    #@574
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    #@577
    .line 537
    const/4 v6, 0x1

    #@578
    return v6

    #@579
    .line 541
    .end local v91    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_21
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@57c
    move-object/from16 v0, p2

    #@57e
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@581
    .line 543
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@584
    move-result v43

    #@585
    .line 544
    .restart local v43    # "_arg0":I
    move-object/from16 v0, p0

    #@587
    move/from16 v1, v43

    #@589
    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getPackagesForUid(I)[Ljava/lang/String;

    #@58c
    move-result-object v95

    #@58d
    .line 545
    .restart local v95    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@590
    .line 546
    move-object/from16 v0, p3

    #@592
    move-object/from16 v1, v95

    #@594
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@597
    .line 547
    const/4 v6, 0x1

    #@598
    return v6

    #@599
    .line 551
    .end local v43    # "_arg0":I
    .end local v95    # "_result":[Ljava/lang/String;
    :sswitch_22
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@59c
    move-object/from16 v0, p2

    #@59e
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5a1
    .line 553
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5a4
    move-result v43

    #@5a5
    .line 554
    .restart local v43    # "_arg0":I
    move-object/from16 v0, p0

    #@5a7
    move/from16 v1, v43

    #@5a9
    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getNameForUid(I)Ljava/lang/String;

    #@5ac
    move-result-object v90

    #@5ad
    .line 555
    .local v90, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@5b0
    .line 556
    move-object/from16 v0, p3

    #@5b2
    move-object/from16 v1, v90

    #@5b4
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@5b7
    .line 557
    const/4 v6, 0x1

    #@5b8
    return v6

    #@5b9
    .line 561
    .end local v43    # "_arg0":I
    .end local v90    # "_result":Ljava/lang/String;
    :sswitch_23
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@5bc
    move-object/from16 v0, p2

    #@5be
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5c1
    .line 563
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@5c4
    move-result-object v7

    #@5c5
    .line 564
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@5c7
    invoke-virtual {v0, v7}, Landroid/content/pm/IPackageManager$Stub;->getUidForSharedUser(Ljava/lang/String;)I

    #@5ca
    move-result v73

    #@5cb
    .line 565
    .restart local v73    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@5ce
    .line 566
    move-object/from16 v0, p3

    #@5d0
    move/from16 v1, v73

    #@5d2
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@5d5
    .line 567
    const/4 v6, 0x1

    #@5d6
    return v6

    #@5d7
    .line 571
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v73    # "_result":I
    :sswitch_24
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@5da
    move-object/from16 v0, p2

    #@5dc
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5df
    .line 573
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5e2
    move-result v43

    #@5e3
    .line 574
    .restart local v43    # "_arg0":I
    move-object/from16 v0, p0

    #@5e5
    move/from16 v1, v43

    #@5e7
    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getFlagsForUid(I)I

    #@5ea
    move-result v73

    #@5eb
    .line 575
    .restart local v73    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@5ee
    .line 576
    move-object/from16 v0, p3

    #@5f0
    move/from16 v1, v73

    #@5f2
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@5f5
    .line 577
    const/4 v6, 0x1

    #@5f6
    return v6

    #@5f7
    .line 581
    .end local v43    # "_arg0":I
    .end local v73    # "_result":I
    :sswitch_25
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@5fa
    move-object/from16 v0, p2

    #@5fc
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5ff
    .line 583
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@602
    move-result v43

    #@603
    .line 584
    .restart local v43    # "_arg0":I
    move-object/from16 v0, p0

    #@605
    move/from16 v1, v43

    #@607
    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getPrivateFlagsForUid(I)I

    #@60a
    move-result v73

    #@60b
    .line 585
    .restart local v73    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@60e
    .line 586
    move-object/from16 v0, p3

    #@610
    move/from16 v1, v73

    #@612
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@615
    .line 587
    const/4 v6, 0x1

    #@616
    return v6

    #@617
    .line 591
    .end local v43    # "_arg0":I
    .end local v73    # "_result":I
    :sswitch_26
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@61a
    move-object/from16 v0, p2

    #@61c
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@61f
    .line 593
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@622
    move-result v43

    #@623
    .line 594
    .restart local v43    # "_arg0":I
    move-object/from16 v0, p0

    #@625
    move/from16 v1, v43

    #@627
    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->isUidPrivileged(I)Z

    #@62a
    move-result v92

    #@62b
    .line 595
    .restart local v92    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@62e
    .line 596
    if-eqz v92, :cond_16

    #@630
    const/4 v6, 0x1

    #@631
    :goto_16
    move-object/from16 v0, p3

    #@633
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@636
    .line 597
    const/4 v6, 0x1

    #@637
    return v6

    #@638
    .line 596
    :cond_16
    const/4 v6, 0x0

    #@639
    goto :goto_16

    #@63a
    .line 601
    .end local v43    # "_arg0":I
    .end local v92    # "_result":Z
    :sswitch_27
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@63d
    move-object/from16 v0, p2

    #@63f
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@642
    .line 603
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@645
    move-result-object v7

    #@646
    .line 604
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@648
    invoke-virtual {v0, v7}, Landroid/content/pm/IPackageManager$Stub;->getAppOpPermissionPackages(Ljava/lang/String;)[Ljava/lang/String;

    #@64b
    move-result-object v95

    #@64c
    .line 605
    .restart local v95    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@64f
    .line 606
    move-object/from16 v0, p3

    #@651
    move-object/from16 v1, v95

    #@653
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@656
    .line 607
    const/4 v6, 0x1

    #@657
    return v6

    #@658
    .line 611
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v95    # "_result":[Ljava/lang/String;
    :sswitch_28
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@65b
    move-object/from16 v0, p2

    #@65d
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@660
    .line 613
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@663
    move-result v6

    #@664
    if-eqz v6, :cond_17

    #@666
    .line 614
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@668
    move-object/from16 v0, p2

    #@66a
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@66d
    move-result-object v26

    #@66e
    check-cast v26, Landroid/content/Intent;

    #@670
    .line 620
    :goto_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@673
    move-result-object v8

    #@674
    .line 622
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@677
    move-result v9

    #@678
    .line 624
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@67b
    move-result v10

    #@67c
    .line 625
    .restart local v10    # "_arg3":I
    move-object/from16 v0, p0

    #@67e
    move-object/from16 v1, v26

    #@680
    invoke-virtual {v0, v1, v8, v9, v10}, Landroid/content/pm/IPackageManager$Stub;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    #@683
    move-result-object v86

    #@684
    .line 626
    .local v86, "_result":Landroid/content/pm/ResolveInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@687
    .line 627
    if-eqz v86, :cond_18

    #@689
    .line 628
    const/4 v6, 0x1

    #@68a
    move-object/from16 v0, p3

    #@68c
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@68f
    .line 629
    const/4 v6, 0x1

    #@690
    move-object/from16 v0, v86

    #@692
    move-object/from16 v1, p3

    #@694
    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@697
    .line 634
    :goto_18
    const/4 v6, 0x1

    #@698
    return v6

    #@699
    .line 617
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v86    # "_result":Landroid/content/pm/ResolveInfo;
    :cond_17
    const/16 v26, 0x0

    #@69b
    .local v26, "_arg0":Landroid/content/Intent;
    goto :goto_17

    #@69c
    .line 632
    .end local v26    # "_arg0":Landroid/content/Intent;
    .restart local v8    # "_arg1":Ljava/lang/String;
    .restart local v9    # "_arg2":I
    .restart local v10    # "_arg3":I
    .restart local v86    # "_result":Landroid/content/pm/ResolveInfo;
    :cond_18
    const/4 v6, 0x0

    #@69d
    move-object/from16 v0, p3

    #@69f
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@6a2
    goto :goto_18

    #@6a3
    .line 638
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v86    # "_result":Landroid/content/pm/ResolveInfo;
    :sswitch_29
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@6a6
    move-object/from16 v0, p2

    #@6a8
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6ab
    .line 640
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@6ae
    move-result v6

    #@6af
    if-eqz v6, :cond_19

    #@6b1
    .line 641
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@6b3
    move-object/from16 v0, p2

    #@6b5
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@6b8
    move-result-object v26

    #@6b9
    check-cast v26, Landroid/content/Intent;

    #@6bb
    .line 647
    :goto_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@6be
    move-result-object v8

    #@6bf
    .line 649
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@6c2
    move-result v9

    #@6c3
    .line 651
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@6c6
    move-result v10

    #@6c7
    .line 652
    .restart local v10    # "_arg3":I
    move-object/from16 v0, p0

    #@6c9
    move-object/from16 v1, v26

    #@6cb
    invoke-virtual {v0, v1, v8, v9, v10}, Landroid/content/pm/IPackageManager$Stub;->canForwardTo(Landroid/content/Intent;Ljava/lang/String;II)Z

    #@6ce
    move-result v92

    #@6cf
    .line 653
    .restart local v92    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@6d2
    .line 654
    if-eqz v92, :cond_1a

    #@6d4
    const/4 v6, 0x1

    #@6d5
    :goto_1a
    move-object/from16 v0, p3

    #@6d7
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@6da
    .line 655
    const/4 v6, 0x1

    #@6db
    return v6

    #@6dc
    .line 644
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v92    # "_result":Z
    :cond_19
    const/16 v26, 0x0

    #@6de
    .restart local v26    # "_arg0":Landroid/content/Intent;
    goto :goto_19

    #@6df
    .line 654
    .end local v26    # "_arg0":Landroid/content/Intent;
    .restart local v8    # "_arg1":Ljava/lang/String;
    .restart local v9    # "_arg2":I
    .restart local v10    # "_arg3":I
    .restart local v92    # "_result":Z
    :cond_1a
    const/4 v6, 0x0

    #@6e0
    goto :goto_1a

    #@6e1
    .line 659
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v92    # "_result":Z
    :sswitch_2a
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@6e4
    move-object/from16 v0, p2

    #@6e6
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6e9
    .line 661
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@6ec
    move-result v6

    #@6ed
    if-eqz v6, :cond_1b

    #@6ef
    .line 662
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@6f1
    move-object/from16 v0, p2

    #@6f3
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@6f6
    move-result-object v26

    #@6f7
    check-cast v26, Landroid/content/Intent;

    #@6f9
    .line 668
    :goto_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@6fc
    move-result-object v8

    #@6fd
    .line 670
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@700
    move-result v9

    #@701
    .line 672
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@704
    move-result v10

    #@705
    .line 673
    .restart local v10    # "_arg3":I
    move-object/from16 v0, p0

    #@707
    move-object/from16 v1, v26

    #@709
    invoke-virtual {v0, v1, v8, v9, v10}, Landroid/content/pm/IPackageManager$Stub;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    #@70c
    move-result-object v82

    #@70d
    .line 674
    .restart local v82    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@710
    .line 675
    if-eqz v82, :cond_1c

    #@712
    .line 676
    const/4 v6, 0x1

    #@713
    move-object/from16 v0, p3

    #@715
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@718
    .line 677
    const/4 v6, 0x1

    #@719
    move-object/from16 v0, v82

    #@71b
    move-object/from16 v1, p3

    #@71d
    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    #@720
    .line 682
    :goto_1c
    const/4 v6, 0x1

    #@721
    return v6

    #@722
    .line 665
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v82    # "_result":Landroid/content/pm/ParceledListSlice;
    :cond_1b
    const/16 v26, 0x0

    #@724
    .restart local v26    # "_arg0":Landroid/content/Intent;
    goto :goto_1b

    #@725
    .line 680
    .end local v26    # "_arg0":Landroid/content/Intent;
    .restart local v8    # "_arg1":Ljava/lang/String;
    .restart local v9    # "_arg2":I
    .restart local v10    # "_arg3":I
    .restart local v82    # "_result":Landroid/content/pm/ParceledListSlice;
    :cond_1c
    const/4 v6, 0x0

    #@726
    move-object/from16 v0, p3

    #@728
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@72b
    goto :goto_1c

    #@72c
    .line 686
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v82    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_2b
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@72f
    move-object/from16 v0, p2

    #@731
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@734
    .line 688
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@737
    move-result v6

    #@738
    if-eqz v6, :cond_1d

    #@73a
    .line 689
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@73c
    move-object/from16 v0, p2

    #@73e
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@741
    move-result-object v13

    #@742
    check-cast v13, Landroid/content/ComponentName;

    #@744
    .line 695
    :goto_1d
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@746
    move-object/from16 v0, p2

    #@748
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@74b
    move-result-object v14

    #@74c
    check-cast v14, [Landroid/content/Intent;

    #@74e
    .line 697
    .local v14, "_arg1":[Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@751
    move-result-object v15

    #@752
    .line 699
    .local v15, "_arg2":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@755
    move-result v6

    #@756
    if-eqz v6, :cond_1e

    #@758
    .line 700
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@75a
    move-object/from16 v0, p2

    #@75c
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@75f
    move-result-object v16

    #@760
    check-cast v16, Landroid/content/Intent;

    #@762
    .line 706
    :goto_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@765
    move-result-object v17

    #@766
    .line 708
    .local v17, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@769
    move-result v18

    #@76a
    .line 710
    .local v18, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@76d
    move-result v19

    #@76e
    .local v19, "_arg6":I
    move-object/from16 v12, p0

    #@770
    .line 711
    invoke-virtual/range {v12 .. v19}, Landroid/content/pm/IPackageManager$Stub;->queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;[Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    #@773
    move-result-object v82

    #@774
    .line 712
    .restart local v82    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@777
    .line 713
    if-eqz v82, :cond_1f

    #@779
    .line 714
    const/4 v6, 0x1

    #@77a
    move-object/from16 v0, p3

    #@77c
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@77f
    .line 715
    const/4 v6, 0x1

    #@780
    move-object/from16 v0, v82

    #@782
    move-object/from16 v1, p3

    #@784
    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    #@787
    .line 720
    :goto_1f
    const/4 v6, 0x1

    #@788
    return v6

    #@789
    .line 692
    .end local v14    # "_arg1":[Landroid/content/Intent;
    .end local v15    # "_arg2":[Ljava/lang/String;
    .end local v17    # "_arg4":Ljava/lang/String;
    .end local v18    # "_arg5":I
    .end local v19    # "_arg6":I
    .end local v82    # "_result":Landroid/content/pm/ParceledListSlice;
    :cond_1d
    const/4 v13, 0x0

    #@78a
    .restart local v13    # "_arg0":Landroid/content/ComponentName;
    goto :goto_1d

    #@78b
    .line 703
    .end local v13    # "_arg0":Landroid/content/ComponentName;
    .restart local v14    # "_arg1":[Landroid/content/Intent;
    .restart local v15    # "_arg2":[Ljava/lang/String;
    :cond_1e
    const/16 v16, 0x0

    #@78d
    .local v16, "_arg3":Landroid/content/Intent;
    goto :goto_1e

    #@78e
    .line 718
    .end local v16    # "_arg3":Landroid/content/Intent;
    .restart local v17    # "_arg4":Ljava/lang/String;
    .restart local v18    # "_arg5":I
    .restart local v19    # "_arg6":I
    .restart local v82    # "_result":Landroid/content/pm/ParceledListSlice;
    :cond_1f
    const/4 v6, 0x0

    #@78f
    move-object/from16 v0, p3

    #@791
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@794
    goto :goto_1f

    #@795
    .line 724
    .end local v14    # "_arg1":[Landroid/content/Intent;
    .end local v15    # "_arg2":[Ljava/lang/String;
    .end local v17    # "_arg4":Ljava/lang/String;
    .end local v18    # "_arg5":I
    .end local v19    # "_arg6":I
    .end local v82    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_2c
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@798
    move-object/from16 v0, p2

    #@79a
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@79d
    .line 726
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@7a0
    move-result v6

    #@7a1
    if-eqz v6, :cond_20

    #@7a3
    .line 727
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7a5
    move-object/from16 v0, p2

    #@7a7
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@7aa
    move-result-object v26

    #@7ab
    check-cast v26, Landroid/content/Intent;

    #@7ad
    .line 733
    :goto_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@7b0
    move-result-object v8

    #@7b1
    .line 735
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@7b4
    move-result v9

    #@7b5
    .line 737
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@7b8
    move-result v10

    #@7b9
    .line 738
    .restart local v10    # "_arg3":I
    move-object/from16 v0, p0

    #@7bb
    move-object/from16 v1, v26

    #@7bd
    invoke-virtual {v0, v1, v8, v9, v10}, Landroid/content/pm/IPackageManager$Stub;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    #@7c0
    move-result-object v82

    #@7c1
    .line 739
    .restart local v82    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@7c4
    .line 740
    if-eqz v82, :cond_21

    #@7c6
    .line 741
    const/4 v6, 0x1

    #@7c7
    move-object/from16 v0, p3

    #@7c9
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@7cc
    .line 742
    const/4 v6, 0x1

    #@7cd
    move-object/from16 v0, v82

    #@7cf
    move-object/from16 v1, p3

    #@7d1
    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    #@7d4
    .line 747
    :goto_21
    const/4 v6, 0x1

    #@7d5
    return v6

    #@7d6
    .line 730
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v82    # "_result":Landroid/content/pm/ParceledListSlice;
    :cond_20
    const/16 v26, 0x0

    #@7d8
    .restart local v26    # "_arg0":Landroid/content/Intent;
    goto :goto_20

    #@7d9
    .line 745
    .end local v26    # "_arg0":Landroid/content/Intent;
    .restart local v8    # "_arg1":Ljava/lang/String;
    .restart local v9    # "_arg2":I
    .restart local v10    # "_arg3":I
    .restart local v82    # "_result":Landroid/content/pm/ParceledListSlice;
    :cond_21
    const/4 v6, 0x0

    #@7da
    move-object/from16 v0, p3

    #@7dc
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@7df
    goto :goto_21

    #@7e0
    .line 751
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v82    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_2d
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@7e3
    move-object/from16 v0, p2

    #@7e5
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7e8
    .line 753
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@7eb
    move-result v6

    #@7ec
    if-eqz v6, :cond_22

    #@7ee
    .line 754
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7f0
    move-object/from16 v0, p2

    #@7f2
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@7f5
    move-result-object v26

    #@7f6
    check-cast v26, Landroid/content/Intent;

    #@7f8
    .line 760
    :goto_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@7fb
    move-result-object v8

    #@7fc
    .line 762
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@7ff
    move-result v9

    #@800
    .line 764
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@803
    move-result v10

    #@804
    .line 765
    .restart local v10    # "_arg3":I
    move-object/from16 v0, p0

    #@806
    move-object/from16 v1, v26

    #@808
    invoke-virtual {v0, v1, v8, v9, v10}, Landroid/content/pm/IPackageManager$Stub;->resolveService(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    #@80b
    move-result-object v86

    #@80c
    .line 766
    .restart local v86    # "_result":Landroid/content/pm/ResolveInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@80f
    .line 767
    if-eqz v86, :cond_23

    #@811
    .line 768
    const/4 v6, 0x1

    #@812
    move-object/from16 v0, p3

    #@814
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@817
    .line 769
    const/4 v6, 0x1

    #@818
    move-object/from16 v0, v86

    #@81a
    move-object/from16 v1, p3

    #@81c
    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@81f
    .line 774
    :goto_23
    const/4 v6, 0x1

    #@820
    return v6

    #@821
    .line 757
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v86    # "_result":Landroid/content/pm/ResolveInfo;
    :cond_22
    const/16 v26, 0x0

    #@823
    .restart local v26    # "_arg0":Landroid/content/Intent;
    goto :goto_22

    #@824
    .line 772
    .end local v26    # "_arg0":Landroid/content/Intent;
    .restart local v8    # "_arg1":Ljava/lang/String;
    .restart local v9    # "_arg2":I
    .restart local v10    # "_arg3":I
    .restart local v86    # "_result":Landroid/content/pm/ResolveInfo;
    :cond_23
    const/4 v6, 0x0

    #@825
    move-object/from16 v0, p3

    #@827
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@82a
    goto :goto_23

    #@82b
    .line 778
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v86    # "_result":Landroid/content/pm/ResolveInfo;
    :sswitch_2e
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@82e
    move-object/from16 v0, p2

    #@830
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@833
    .line 780
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@836
    move-result v6

    #@837
    if-eqz v6, :cond_24

    #@839
    .line 781
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@83b
    move-object/from16 v0, p2

    #@83d
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@840
    move-result-object v26

    #@841
    check-cast v26, Landroid/content/Intent;

    #@843
    .line 787
    :goto_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@846
    move-result-object v8

    #@847
    .line 789
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@84a
    move-result v9

    #@84b
    .line 791
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@84e
    move-result v10

    #@84f
    .line 792
    .restart local v10    # "_arg3":I
    move-object/from16 v0, p0

    #@851
    move-object/from16 v1, v26

    #@853
    invoke-virtual {v0, v1, v8, v9, v10}, Landroid/content/pm/IPackageManager$Stub;->queryIntentServices(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    #@856
    move-result-object v82

    #@857
    .line 793
    .restart local v82    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@85a
    .line 794
    if-eqz v82, :cond_25

    #@85c
    .line 795
    const/4 v6, 0x1

    #@85d
    move-object/from16 v0, p3

    #@85f
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@862
    .line 796
    const/4 v6, 0x1

    #@863
    move-object/from16 v0, v82

    #@865
    move-object/from16 v1, p3

    #@867
    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    #@86a
    .line 801
    :goto_25
    const/4 v6, 0x1

    #@86b
    return v6

    #@86c
    .line 784
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v82    # "_result":Landroid/content/pm/ParceledListSlice;
    :cond_24
    const/16 v26, 0x0

    #@86e
    .restart local v26    # "_arg0":Landroid/content/Intent;
    goto :goto_24

    #@86f
    .line 799
    .end local v26    # "_arg0":Landroid/content/Intent;
    .restart local v8    # "_arg1":Ljava/lang/String;
    .restart local v9    # "_arg2":I
    .restart local v10    # "_arg3":I
    .restart local v82    # "_result":Landroid/content/pm/ParceledListSlice;
    :cond_25
    const/4 v6, 0x0

    #@870
    move-object/from16 v0, p3

    #@872
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@875
    goto :goto_25

    #@876
    .line 805
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v82    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_2f
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@879
    move-object/from16 v0, p2

    #@87b
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@87e
    .line 807
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@881
    move-result v6

    #@882
    if-eqz v6, :cond_26

    #@884
    .line 808
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@886
    move-object/from16 v0, p2

    #@888
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@88b
    move-result-object v26

    #@88c
    check-cast v26, Landroid/content/Intent;

    #@88e
    .line 814
    :goto_26
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@891
    move-result-object v8

    #@892
    .line 816
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@895
    move-result v9

    #@896
    .line 818
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@899
    move-result v10

    #@89a
    .line 819
    .restart local v10    # "_arg3":I
    move-object/from16 v0, p0

    #@89c
    move-object/from16 v1, v26

    #@89e
    invoke-virtual {v0, v1, v8, v9, v10}, Landroid/content/pm/IPackageManager$Stub;->queryIntentContentProviders(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    #@8a1
    move-result-object v82

    #@8a2
    .line 820
    .restart local v82    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@8a5
    .line 821
    if-eqz v82, :cond_27

    #@8a7
    .line 822
    const/4 v6, 0x1

    #@8a8
    move-object/from16 v0, p3

    #@8aa
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@8ad
    .line 823
    const/4 v6, 0x1

    #@8ae
    move-object/from16 v0, v82

    #@8b0
    move-object/from16 v1, p3

    #@8b2
    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    #@8b5
    .line 828
    :goto_27
    const/4 v6, 0x1

    #@8b6
    return v6

    #@8b7
    .line 811
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v82    # "_result":Landroid/content/pm/ParceledListSlice;
    :cond_26
    const/16 v26, 0x0

    #@8b9
    .restart local v26    # "_arg0":Landroid/content/Intent;
    goto :goto_26

    #@8ba
    .line 826
    .end local v26    # "_arg0":Landroid/content/Intent;
    .restart local v8    # "_arg1":Ljava/lang/String;
    .restart local v9    # "_arg2":I
    .restart local v10    # "_arg3":I
    .restart local v82    # "_result":Landroid/content/pm/ParceledListSlice;
    :cond_27
    const/4 v6, 0x0

    #@8bb
    move-object/from16 v0, p3

    #@8bd
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@8c0
    goto :goto_27

    #@8c1
    .line 832
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v82    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_30
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@8c4
    move-object/from16 v0, p2

    #@8c6
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@8c9
    .line 834
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@8cc
    move-result v43

    #@8cd
    .line 836
    .restart local v43    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@8d0
    move-result v34

    #@8d1
    .line 837
    .restart local v34    # "_arg1":I
    move-object/from16 v0, p0

    #@8d3
    move/from16 v1, v43

    #@8d5
    move/from16 v2, v34

    #@8d7
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->getInstalledPackages(II)Landroid/content/pm/ParceledListSlice;

    #@8da
    move-result-object v82

    #@8db
    .line 838
    .restart local v82    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@8de
    .line 839
    if-eqz v82, :cond_28

    #@8e0
    .line 840
    const/4 v6, 0x1

    #@8e1
    move-object/from16 v0, p3

    #@8e3
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@8e6
    .line 841
    const/4 v6, 0x1

    #@8e7
    move-object/from16 v0, v82

    #@8e9
    move-object/from16 v1, p3

    #@8eb
    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    #@8ee
    .line 846
    :goto_28
    const/4 v6, 0x1

    #@8ef
    return v6

    #@8f0
    .line 844
    :cond_28
    const/4 v6, 0x0

    #@8f1
    move-object/from16 v0, p3

    #@8f3
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@8f6
    goto :goto_28

    #@8f7
    .line 850
    .end local v34    # "_arg1":I
    .end local v43    # "_arg0":I
    .end local v82    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_31
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@8fa
    move-object/from16 v0, p2

    #@8fc
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@8ff
    .line 852
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@902
    move-result-object v53

    #@903
    .line 854
    .restart local v53    # "_arg0":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@906
    move-result v34

    #@907
    .line 856
    .restart local v34    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@90a
    move-result v9

    #@90b
    .line 857
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    #@90d
    move-object/from16 v1, v53

    #@90f
    move/from16 v2, v34

    #@911
    invoke-virtual {v0, v1, v2, v9}, Landroid/content/pm/IPackageManager$Stub;->getPackagesHoldingPermissions([Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    #@914
    move-result-object v82

    #@915
    .line 858
    .restart local v82    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@918
    .line 859
    if-eqz v82, :cond_29

    #@91a
    .line 860
    const/4 v6, 0x1

    #@91b
    move-object/from16 v0, p3

    #@91d
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@920
    .line 861
    const/4 v6, 0x1

    #@921
    move-object/from16 v0, v82

    #@923
    move-object/from16 v1, p3

    #@925
    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    #@928
    .line 866
    :goto_29
    const/4 v6, 0x1

    #@929
    return v6

    #@92a
    .line 864
    :cond_29
    const/4 v6, 0x0

    #@92b
    move-object/from16 v0, p3

    #@92d
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@930
    goto :goto_29

    #@931
    .line 870
    .end local v9    # "_arg2":I
    .end local v34    # "_arg1":I
    .end local v53    # "_arg0":[Ljava/lang/String;
    .end local v82    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_32
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@934
    move-object/from16 v0, p2

    #@936
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@939
    .line 872
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@93c
    move-result v43

    #@93d
    .line 874
    .restart local v43    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@940
    move-result v34

    #@941
    .line 875
    .restart local v34    # "_arg1":I
    move-object/from16 v0, p0

    #@943
    move/from16 v1, v43

    #@945
    move/from16 v2, v34

    #@947
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->getInstalledApplications(II)Landroid/content/pm/ParceledListSlice;

    #@94a
    move-result-object v82

    #@94b
    .line 876
    .restart local v82    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@94e
    .line 877
    if-eqz v82, :cond_2a

    #@950
    .line 878
    const/4 v6, 0x1

    #@951
    move-object/from16 v0, p3

    #@953
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@956
    .line 879
    const/4 v6, 0x1

    #@957
    move-object/from16 v0, v82

    #@959
    move-object/from16 v1, p3

    #@95b
    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    #@95e
    .line 884
    :goto_2a
    const/4 v6, 0x1

    #@95f
    return v6

    #@960
    .line 882
    :cond_2a
    const/4 v6, 0x0

    #@961
    move-object/from16 v0, p3

    #@963
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@966
    goto :goto_2a

    #@967
    .line 888
    .end local v34    # "_arg1":I
    .end local v43    # "_arg0":I
    .end local v82    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_33
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@96a
    move-object/from16 v0, p2

    #@96c
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@96f
    .line 890
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@972
    move-result v43

    #@973
    .line 891
    .restart local v43    # "_arg0":I
    move-object/from16 v0, p0

    #@975
    move/from16 v1, v43

    #@977
    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getPersistentApplications(I)Landroid/content/pm/ParceledListSlice;

    #@97a
    move-result-object v82

    #@97b
    .line 892
    .restart local v82    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@97e
    .line 893
    if-eqz v82, :cond_2b

    #@980
    .line 894
    const/4 v6, 0x1

    #@981
    move-object/from16 v0, p3

    #@983
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@986
    .line 895
    const/4 v6, 0x1

    #@987
    move-object/from16 v0, v82

    #@989
    move-object/from16 v1, p3

    #@98b
    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    #@98e
    .line 900
    :goto_2b
    const/4 v6, 0x1

    #@98f
    return v6

    #@990
    .line 898
    :cond_2b
    const/4 v6, 0x0

    #@991
    move-object/from16 v0, p3

    #@993
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@996
    goto :goto_2b

    #@997
    .line 904
    .end local v43    # "_arg0":I
    .end local v82    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_34
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@99a
    move-object/from16 v0, p2

    #@99c
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@99f
    .line 906
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@9a2
    move-result-object v7

    #@9a3
    .line 908
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@9a6
    move-result v34

    #@9a7
    .line 910
    .restart local v34    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@9aa
    move-result v9

    #@9ab
    .line 911
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    #@9ad
    move/from16 v1, v34

    #@9af
    invoke-virtual {v0, v7, v1, v9}, Landroid/content/pm/IPackageManager$Stub;->resolveContentProvider(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    #@9b2
    move-result-object v85

    #@9b3
    .line 912
    .restart local v85    # "_result":Landroid/content/pm/ProviderInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@9b6
    .line 913
    if-eqz v85, :cond_2c

    #@9b8
    .line 914
    const/4 v6, 0x1

    #@9b9
    move-object/from16 v0, p3

    #@9bb
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@9be
    .line 915
    const/4 v6, 0x1

    #@9bf
    move-object/from16 v0, v85

    #@9c1
    move-object/from16 v1, p3

    #@9c3
    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ProviderInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@9c6
    .line 920
    :goto_2c
    const/4 v6, 0x1

    #@9c7
    return v6

    #@9c8
    .line 918
    :cond_2c
    const/4 v6, 0x0

    #@9c9
    move-object/from16 v0, p3

    #@9cb
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@9ce
    goto :goto_2c

    #@9cf
    .line 924
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v34    # "_arg1":I
    .end local v85    # "_result":Landroid/content/pm/ProviderInfo;
    :sswitch_35
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@9d2
    move-object/from16 v0, p2

    #@9d4
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@9d7
    .line 926
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    #@9da
    move-result-object v50

    #@9db
    .line 928
    .local v50, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v6, Landroid/content/pm/ProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@9dd
    move-object/from16 v0, p2

    #@9df
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    #@9e2
    move-result-object v63

    #@9e3
    .line 929
    .local v63, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    move-object/from16 v0, p0

    #@9e5
    move-object/from16 v1, v50

    #@9e7
    move-object/from16 v2, v63

    #@9e9
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->querySyncProviders(Ljava/util/List;Ljava/util/List;)V

    #@9ec
    .line 930
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@9ef
    .line 931
    move-object/from16 v0, p3

    #@9f1
    move-object/from16 v1, v50

    #@9f3
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    #@9f6
    .line 932
    move-object/from16 v0, p3

    #@9f8
    move-object/from16 v1, v63

    #@9fa
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@9fd
    .line 933
    const/4 v6, 0x1

    #@9fe
    return v6

    #@9ff
    .line 937
    .end local v50    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v63    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    :sswitch_36
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@a02
    move-object/from16 v0, p2

    #@a04
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a07
    .line 939
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@a0a
    move-result-object v7

    #@a0b
    .line 941
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@a0e
    move-result v34

    #@a0f
    .line 943
    .restart local v34    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@a12
    move-result v9

    #@a13
    .line 944
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    #@a15
    move/from16 v1, v34

    #@a17
    invoke-virtual {v0, v7, v1, v9}, Landroid/content/pm/IPackageManager$Stub;->queryContentProviders(Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    #@a1a
    move-result-object v82

    #@a1b
    .line 945
    .restart local v82    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@a1e
    .line 946
    if-eqz v82, :cond_2d

    #@a20
    .line 947
    const/4 v6, 0x1

    #@a21
    move-object/from16 v0, p3

    #@a23
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@a26
    .line 948
    const/4 v6, 0x1

    #@a27
    move-object/from16 v0, v82

    #@a29
    move-object/from16 v1, p3

    #@a2b
    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    #@a2e
    .line 953
    :goto_2d
    const/4 v6, 0x1

    #@a2f
    return v6

    #@a30
    .line 951
    :cond_2d
    const/4 v6, 0x0

    #@a31
    move-object/from16 v0, p3

    #@a33
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@a36
    goto :goto_2d

    #@a37
    .line 957
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v34    # "_arg1":I
    .end local v82    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_37
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@a3a
    move-object/from16 v0, p2

    #@a3c
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a3f
    .line 959
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@a42
    move-result v6

    #@a43
    if-eqz v6, :cond_2e

    #@a45
    .line 960
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@a47
    move-object/from16 v0, p2

    #@a49
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@a4c
    move-result-object v13

    #@a4d
    check-cast v13, Landroid/content/ComponentName;

    #@a4f
    .line 966
    :goto_2e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@a52
    move-result v34

    #@a53
    .line 967
    .restart local v34    # "_arg1":I
    move-object/from16 v0, p0

    #@a55
    move/from16 v1, v34

    #@a57
    invoke-virtual {v0, v13, v1}, Landroid/content/pm/IPackageManager$Stub;->getInstrumentationInfo(Landroid/content/ComponentName;I)Landroid/content/pm/InstrumentationInfo;

    #@a5a
    move-result-object v78

    #@a5b
    .line 968
    .local v78, "_result":Landroid/content/pm/InstrumentationInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@a5e
    .line 969
    if-eqz v78, :cond_2f

    #@a60
    .line 970
    const/4 v6, 0x1

    #@a61
    move-object/from16 v0, p3

    #@a63
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@a66
    .line 971
    const/4 v6, 0x1

    #@a67
    move-object/from16 v0, v78

    #@a69
    move-object/from16 v1, p3

    #@a6b
    invoke-virtual {v0, v1, v6}, Landroid/content/pm/InstrumentationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@a6e
    .line 976
    :goto_2f
    const/4 v6, 0x1

    #@a6f
    return v6

    #@a70
    .line 963
    .end local v34    # "_arg1":I
    .end local v78    # "_result":Landroid/content/pm/InstrumentationInfo;
    :cond_2e
    const/4 v13, 0x0

    #@a71
    .restart local v13    # "_arg0":Landroid/content/ComponentName;
    goto :goto_2e

    #@a72
    .line 974
    .end local v13    # "_arg0":Landroid/content/ComponentName;
    .restart local v34    # "_arg1":I
    .restart local v78    # "_result":Landroid/content/pm/InstrumentationInfo;
    :cond_2f
    const/4 v6, 0x0

    #@a73
    move-object/from16 v0, p3

    #@a75
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@a78
    goto :goto_2f

    #@a79
    .line 980
    .end local v34    # "_arg1":I
    .end local v78    # "_result":Landroid/content/pm/InstrumentationInfo;
    :sswitch_38
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@a7c
    move-object/from16 v0, p2

    #@a7e
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a81
    .line 982
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@a84
    move-result-object v7

    #@a85
    .line 984
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@a88
    move-result v34

    #@a89
    .line 985
    .restart local v34    # "_arg1":I
    move-object/from16 v0, p0

    #@a8b
    move/from16 v1, v34

    #@a8d
    invoke-virtual {v0, v7, v1}, Landroid/content/pm/IPackageManager$Stub;->queryInstrumentation(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    #@a90
    move-result-object v82

    #@a91
    .line 986
    .restart local v82    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@a94
    .line 987
    if-eqz v82, :cond_30

    #@a96
    .line 988
    const/4 v6, 0x1

    #@a97
    move-object/from16 v0, p3

    #@a99
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@a9c
    .line 989
    const/4 v6, 0x1

    #@a9d
    move-object/from16 v0, v82

    #@a9f
    move-object/from16 v1, p3

    #@aa1
    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    #@aa4
    .line 994
    :goto_30
    const/4 v6, 0x1

    #@aa5
    return v6

    #@aa6
    .line 992
    :cond_30
    const/4 v6, 0x0

    #@aa7
    move-object/from16 v0, p3

    #@aa9
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@aac
    goto :goto_30

    #@aad
    .line 998
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v34    # "_arg1":I
    .end local v82    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_39
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@ab0
    move-object/from16 v0, p2

    #@ab2
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ab5
    .line 1000
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@ab8
    move-result-object v7

    #@ab9
    .line 1002
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@abc
    move-result-object v6

    #@abd
    invoke-static {v6}, Landroid/content/pm/IPackageInstallObserver2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageInstallObserver2;

    #@ac0
    move-result-object v22

    #@ac1
    .line 1004
    .local v22, "_arg1":Landroid/content/pm/IPackageInstallObserver2;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@ac4
    move-result v9

    #@ac5
    .line 1006
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@ac8
    move-result-object v24

    #@ac9
    .line 1008
    .local v24, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@acc
    move-result v11

    #@acd
    .restart local v11    # "_arg4":I
    move-object/from16 v20, p0

    #@acf
    move-object/from16 v21, v7

    #@ad1
    move/from16 v23, v9

    #@ad3
    move/from16 v25, v11

    #@ad5
    .line 1009
    invoke-virtual/range {v20 .. v25}, Landroid/content/pm/IPackageManager$Stub;->installPackageAsUser(Ljava/lang/String;Landroid/content/pm/IPackageInstallObserver2;ILjava/lang/String;I)V

    #@ad8
    .line 1010
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@adb
    .line 1011
    const/4 v6, 0x1

    #@adc
    return v6

    #@add
    .line 1015
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v11    # "_arg4":I
    .end local v22    # "_arg1":Landroid/content/pm/IPackageInstallObserver2;
    .end local v24    # "_arg3":Ljava/lang/String;
    :sswitch_3a
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@ae0
    move-object/from16 v0, p2

    #@ae2
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ae5
    .line 1017
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@ae8
    move-result v43

    #@ae9
    .line 1019
    .restart local v43    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@aec
    move-result v6

    #@aed
    if-eqz v6, :cond_31

    #@aef
    const/16 v64, 0x1

    #@af1
    .line 1020
    .local v64, "_arg1":Z
    :goto_31
    move-object/from16 v0, p0

    #@af3
    move/from16 v1, v43

    #@af5
    move/from16 v2, v64

    #@af7
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->finishPackageInstall(IZ)V

    #@afa
    .line 1021
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@afd
    .line 1022
    const/4 v6, 0x1

    #@afe
    return v6

    #@aff
    .line 1019
    .end local v64    # "_arg1":Z
    :cond_31
    const/16 v64, 0x0

    #@b01
    goto :goto_31

    #@b02
    .line 1026
    .end local v43    # "_arg0":I
    :sswitch_3b
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@b05
    move-object/from16 v0, p2

    #@b07
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b0a
    .line 1028
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@b0d
    move-result-object v7

    #@b0e
    .line 1030
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@b11
    move-result-object v8

    #@b12
    .line 1031
    .restart local v8    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@b14
    invoke-virtual {v0, v7, v8}, Landroid/content/pm/IPackageManager$Stub;->setInstallerPackageName(Ljava/lang/String;Ljava/lang/String;)V

    #@b17
    .line 1032
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@b1a
    .line 1033
    const/4 v6, 0x1

    #@b1b
    return v6

    #@b1c
    .line 1037
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    :sswitch_3c
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@b1f
    move-object/from16 v0, p2

    #@b21
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b24
    .line 1039
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@b27
    move-result-object v7

    #@b28
    .line 1041
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@b2b
    move-result-object v6

    #@b2c
    invoke-static {v6}, Landroid/content/pm/IPackageDeleteObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDeleteObserver;

    #@b2f
    move-result-object v60

    #@b30
    .line 1043
    .local v60, "_arg1":Landroid/content/pm/IPackageDeleteObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@b33
    move-result v9

    #@b34
    .line 1045
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@b37
    move-result v10

    #@b38
    .line 1046
    .restart local v10    # "_arg3":I
    move-object/from16 v0, p0

    #@b3a
    move-object/from16 v1, v60

    #@b3c
    invoke-virtual {v0, v7, v1, v9, v10}, Landroid/content/pm/IPackageManager$Stub;->deletePackageAsUser(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;II)V

    #@b3f
    .line 1047
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@b42
    .line 1048
    const/4 v6, 0x1

    #@b43
    return v6

    #@b44
    .line 1052
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v60    # "_arg1":Landroid/content/pm/IPackageDeleteObserver;
    :sswitch_3d
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@b47
    move-object/from16 v0, p2

    #@b49
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b4c
    .line 1054
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@b4f
    move-result-object v7

    #@b50
    .line 1056
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@b53
    move-result-object v6

    #@b54
    invoke-static {v6}, Landroid/content/pm/IPackageDeleteObserver2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDeleteObserver2;

    #@b57
    move-result-object v59

    #@b58
    .line 1058
    .local v59, "_arg1":Landroid/content/pm/IPackageDeleteObserver2;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@b5b
    move-result v9

    #@b5c
    .line 1060
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@b5f
    move-result v10

    #@b60
    .line 1061
    .restart local v10    # "_arg3":I
    move-object/from16 v0, p0

    #@b62
    move-object/from16 v1, v59

    #@b64
    invoke-virtual {v0, v7, v1, v9, v10}, Landroid/content/pm/IPackageManager$Stub;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver2;II)V

    #@b67
    .line 1062
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@b6a
    .line 1063
    const/4 v6, 0x1

    #@b6b
    return v6

    #@b6c
    .line 1067
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v59    # "_arg1":Landroid/content/pm/IPackageDeleteObserver2;
    :sswitch_3e
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@b6f
    move-object/from16 v0, p2

    #@b71
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b74
    .line 1069
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@b77
    move-result-object v7

    #@b78
    .line 1070
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@b7a
    invoke-virtual {v0, v7}, Landroid/content/pm/IPackageManager$Stub;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    #@b7d
    move-result-object v90

    #@b7e
    .line 1071
    .restart local v90    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@b81
    .line 1072
    move-object/from16 v0, p3

    #@b83
    move-object/from16 v1, v90

    #@b85
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@b88
    .line 1073
    const/4 v6, 0x1

    #@b89
    return v6

    #@b8a
    .line 1077
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v90    # "_result":Ljava/lang/String;
    :sswitch_3f
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@b8d
    move-object/from16 v0, p2

    #@b8f
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b92
    .line 1079
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@b95
    move-result v43

    #@b96
    .line 1080
    .restart local v43    # "_arg0":I
    move-object/from16 v0, p0

    #@b98
    move/from16 v1, v43

    #@b9a
    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->resetApplicationPreferences(I)V

    #@b9d
    .line 1081
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@ba0
    .line 1082
    const/4 v6, 0x1

    #@ba1
    return v6

    #@ba2
    .line 1086
    .end local v43    # "_arg0":I
    :sswitch_40
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@ba5
    move-object/from16 v0, p2

    #@ba7
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@baa
    .line 1088
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@bad
    move-result v6

    #@bae
    if-eqz v6, :cond_32

    #@bb0
    .line 1089
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@bb2
    move-object/from16 v0, p2

    #@bb4
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@bb7
    move-result-object v26

    #@bb8
    check-cast v26, Landroid/content/Intent;

    #@bba
    .line 1095
    :goto_32
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@bbd
    move-result-object v8

    #@bbe
    .line 1097
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@bc1
    move-result v9

    #@bc2
    .line 1098
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    #@bc4
    move-object/from16 v1, v26

    #@bc6
    invoke-virtual {v0, v1, v8, v9}, Landroid/content/pm/IPackageManager$Stub;->getLastChosenActivity(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;

    #@bc9
    move-result-object v86

    #@bca
    .line 1099
    .restart local v86    # "_result":Landroid/content/pm/ResolveInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@bcd
    .line 1100
    if-eqz v86, :cond_33

    #@bcf
    .line 1101
    const/4 v6, 0x1

    #@bd0
    move-object/from16 v0, p3

    #@bd2
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@bd5
    .line 1102
    const/4 v6, 0x1

    #@bd6
    move-object/from16 v0, v86

    #@bd8
    move-object/from16 v1, p3

    #@bda
    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@bdd
    .line 1107
    :goto_33
    const/4 v6, 0x1

    #@bde
    return v6

    #@bdf
    .line 1092
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v86    # "_result":Landroid/content/pm/ResolveInfo;
    :cond_32
    const/16 v26, 0x0

    #@be1
    .restart local v26    # "_arg0":Landroid/content/Intent;
    goto :goto_32

    #@be2
    .line 1105
    .end local v26    # "_arg0":Landroid/content/Intent;
    .restart local v8    # "_arg1":Ljava/lang/String;
    .restart local v9    # "_arg2":I
    .restart local v86    # "_result":Landroid/content/pm/ResolveInfo;
    :cond_33
    const/4 v6, 0x0

    #@be3
    move-object/from16 v0, p3

    #@be5
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@be8
    goto :goto_33

    #@be9
    .line 1111
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v86    # "_result":Landroid/content/pm/ResolveInfo;
    :sswitch_41
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@bec
    move-object/from16 v0, p2

    #@bee
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@bf1
    .line 1113
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@bf4
    move-result v6

    #@bf5
    if-eqz v6, :cond_34

    #@bf7
    .line 1114
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@bf9
    move-object/from16 v0, p2

    #@bfb
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@bfe
    move-result-object v26

    #@bff
    check-cast v26, Landroid/content/Intent;

    #@c01
    .line 1120
    :goto_34
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@c04
    move-result-object v8

    #@c05
    .line 1122
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@c08
    move-result v9

    #@c09
    .line 1124
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@c0c
    move-result v6

    #@c0d
    if-eqz v6, :cond_35

    #@c0f
    .line 1125
    sget-object v6, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    #@c11
    move-object/from16 v0, p2

    #@c13
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@c16
    move-result-object v29

    #@c17
    check-cast v29, Landroid/content/IntentFilter;

    #@c19
    .line 1131
    :goto_35
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@c1c
    move-result v11

    #@c1d
    .line 1133
    .restart local v11    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@c20
    move-result v6

    #@c21
    if-eqz v6, :cond_36

    #@c23
    .line 1134
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@c25
    move-object/from16 v0, p2

    #@c27
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@c2a
    move-result-object v31

    #@c2b
    check-cast v31, Landroid/content/ComponentName;

    #@c2d
    :goto_36
    move-object/from16 v25, p0

    #@c2f
    move-object/from16 v27, v8

    #@c31
    move/from16 v28, v9

    #@c33
    move/from16 v30, v11

    #@c35
    .line 1139
    invoke-virtual/range {v25 .. v31}, Landroid/content/pm/IPackageManager$Stub;->setLastChosenActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/IntentFilter;ILandroid/content/ComponentName;)V

    #@c38
    .line 1140
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@c3b
    .line 1141
    const/4 v6, 0x1

    #@c3c
    return v6

    #@c3d
    .line 1117
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v11    # "_arg4":I
    :cond_34
    const/16 v26, 0x0

    #@c3f
    .restart local v26    # "_arg0":Landroid/content/Intent;
    goto :goto_34

    #@c40
    .line 1128
    .end local v26    # "_arg0":Landroid/content/Intent;
    .restart local v8    # "_arg1":Ljava/lang/String;
    .restart local v9    # "_arg2":I
    :cond_35
    const/16 v29, 0x0

    #@c42
    .local v29, "_arg3":Landroid/content/IntentFilter;
    goto :goto_35

    #@c43
    .line 1137
    .end local v29    # "_arg3":Landroid/content/IntentFilter;
    .restart local v11    # "_arg4":I
    :cond_36
    const/16 v31, 0x0

    #@c45
    .local v31, "_arg5":Landroid/content/ComponentName;
    goto :goto_36

    #@c46
    .line 1145
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v11    # "_arg4":I
    .end local v31    # "_arg5":Landroid/content/ComponentName;
    :sswitch_42
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@c49
    move-object/from16 v0, p2

    #@c4b
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@c4e
    .line 1147
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@c51
    move-result v6

    #@c52
    if-eqz v6, :cond_37

    #@c54
    .line 1148
    sget-object v6, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    #@c56
    move-object/from16 v0, p2

    #@c58
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@c5b
    move-result-object v33

    #@c5c
    check-cast v33, Landroid/content/IntentFilter;

    #@c5e
    .line 1154
    :goto_37
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@c61
    move-result v34

    #@c62
    .line 1156
    .restart local v34    # "_arg1":I
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@c64
    move-object/from16 v0, p2

    #@c66
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@c69
    move-result-object v35

    #@c6a
    check-cast v35, [Landroid/content/ComponentName;

    #@c6c
    .line 1158
    .local v35, "_arg2":[Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@c6f
    move-result v6

    #@c70
    if-eqz v6, :cond_38

    #@c72
    .line 1159
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@c74
    move-object/from16 v0, p2

    #@c76
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@c79
    move-result-object v36

    #@c7a
    check-cast v36, Landroid/content/ComponentName;

    #@c7c
    .line 1165
    :goto_38
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@c7f
    move-result v11

    #@c80
    .restart local v11    # "_arg4":I
    move-object/from16 v32, p0

    #@c82
    move/from16 v37, v11

    #@c84
    .line 1166
    invoke-virtual/range {v32 .. v37}, Landroid/content/pm/IPackageManager$Stub;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;I)V

    #@c87
    .line 1167
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@c8a
    .line 1168
    const/4 v6, 0x1

    #@c8b
    return v6

    #@c8c
    .line 1151
    .end local v11    # "_arg4":I
    .end local v34    # "_arg1":I
    .end local v35    # "_arg2":[Landroid/content/ComponentName;
    :cond_37
    const/16 v33, 0x0

    #@c8e
    .local v33, "_arg0":Landroid/content/IntentFilter;
    goto :goto_37

    #@c8f
    .line 1162
    .end local v33    # "_arg0":Landroid/content/IntentFilter;
    .restart local v34    # "_arg1":I
    .restart local v35    # "_arg2":[Landroid/content/ComponentName;
    :cond_38
    const/16 v36, 0x0

    #@c91
    .local v36, "_arg3":Landroid/content/ComponentName;
    goto :goto_38

    #@c92
    .line 1172
    .end local v34    # "_arg1":I
    .end local v35    # "_arg2":[Landroid/content/ComponentName;
    .end local v36    # "_arg3":Landroid/content/ComponentName;
    :sswitch_43
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@c95
    move-object/from16 v0, p2

    #@c97
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@c9a
    .line 1174
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@c9d
    move-result v6

    #@c9e
    if-eqz v6, :cond_39

    #@ca0
    .line 1175
    sget-object v6, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    #@ca2
    move-object/from16 v0, p2

    #@ca4
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@ca7
    move-result-object v33

    #@ca8
    check-cast v33, Landroid/content/IntentFilter;

    #@caa
    .line 1181
    :goto_39
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@cad
    move-result v34

    #@cae
    .line 1183
    .restart local v34    # "_arg1":I
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@cb0
    move-object/from16 v0, p2

    #@cb2
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@cb5
    move-result-object v35

    #@cb6
    check-cast v35, [Landroid/content/ComponentName;

    #@cb8
    .line 1185
    .restart local v35    # "_arg2":[Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@cbb
    move-result v6

    #@cbc
    if-eqz v6, :cond_3a

    #@cbe
    .line 1186
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@cc0
    move-object/from16 v0, p2

    #@cc2
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@cc5
    move-result-object v36

    #@cc6
    check-cast v36, Landroid/content/ComponentName;

    #@cc8
    .line 1192
    :goto_3a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@ccb
    move-result v11

    #@ccc
    .restart local v11    # "_arg4":I
    move-object/from16 v32, p0

    #@cce
    move/from16 v37, v11

    #@cd0
    .line 1193
    invoke-virtual/range {v32 .. v37}, Landroid/content/pm/IPackageManager$Stub;->replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;I)V

    #@cd3
    .line 1194
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@cd6
    .line 1195
    const/4 v6, 0x1

    #@cd7
    return v6

    #@cd8
    .line 1178
    .end local v11    # "_arg4":I
    .end local v34    # "_arg1":I
    .end local v35    # "_arg2":[Landroid/content/ComponentName;
    :cond_39
    const/16 v33, 0x0

    #@cda
    .restart local v33    # "_arg0":Landroid/content/IntentFilter;
    goto :goto_39

    #@cdb
    .line 1189
    .end local v33    # "_arg0":Landroid/content/IntentFilter;
    .restart local v34    # "_arg1":I
    .restart local v35    # "_arg2":[Landroid/content/ComponentName;
    :cond_3a
    const/16 v36, 0x0

    #@cdd
    .restart local v36    # "_arg3":Landroid/content/ComponentName;
    goto :goto_3a

    #@cde
    .line 1199
    .end local v34    # "_arg1":I
    .end local v35    # "_arg2":[Landroid/content/ComponentName;
    .end local v36    # "_arg3":Landroid/content/ComponentName;
    :sswitch_44
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@ce1
    move-object/from16 v0, p2

    #@ce3
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ce6
    .line 1201
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@ce9
    move-result-object v7

    #@cea
    .line 1202
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@cec
    invoke-virtual {v0, v7}, Landroid/content/pm/IPackageManager$Stub;->clearPackagePreferredActivities(Ljava/lang/String;)V

    #@cef
    .line 1203
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@cf2
    .line 1204
    const/4 v6, 0x1

    #@cf3
    return v6

    #@cf4
    .line 1208
    .end local v7    # "_arg0":Ljava/lang/String;
    :sswitch_45
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@cf7
    move-object/from16 v0, p2

    #@cf9
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@cfc
    .line 1210
    new-instance v48, Ljava/util/ArrayList;

    #@cfe
    invoke-direct/range {v48 .. v48}, Ljava/util/ArrayList;-><init>()V

    #@d01
    .line 1212
    .local v48, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    new-instance v62, Ljava/util/ArrayList;

    #@d03
    invoke-direct/range {v62 .. v62}, Ljava/util/ArrayList;-><init>()V

    #@d06
    .line 1214
    .local v62, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@d09
    move-result-object v40

    #@d0a
    .line 1215
    .restart local v40    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    #@d0c
    move-object/from16 v1, v48

    #@d0e
    move-object/from16 v2, v62

    #@d10
    move-object/from16 v3, v40

    #@d12
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    #@d15
    move-result v73

    #@d16
    .line 1216
    .restart local v73    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@d19
    .line 1217
    move-object/from16 v0, p3

    #@d1b
    move/from16 v1, v73

    #@d1d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@d20
    .line 1218
    move-object/from16 v0, p3

    #@d22
    move-object/from16 v1, v48

    #@d24
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@d27
    .line 1219
    move-object/from16 v0, p3

    #@d29
    move-object/from16 v1, v62

    #@d2b
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@d2e
    .line 1220
    const/4 v6, 0x1

    #@d2f
    return v6

    #@d30
    .line 1224
    .end local v40    # "_arg2":Ljava/lang/String;
    .end local v48    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    .end local v62    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v73    # "_result":I
    :sswitch_46
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@d33
    move-object/from16 v0, p2

    #@d35
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@d38
    .line 1226
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@d3b
    move-result v6

    #@d3c
    if-eqz v6, :cond_3b

    #@d3e
    .line 1227
    sget-object v6, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    #@d40
    move-object/from16 v0, p2

    #@d42
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@d45
    move-result-object v33

    #@d46
    check-cast v33, Landroid/content/IntentFilter;

    #@d48
    .line 1233
    :goto_3b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@d4b
    move-result v6

    #@d4c
    if-eqz v6, :cond_3c

    #@d4e
    .line 1234
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@d50
    move-object/from16 v0, p2

    #@d52
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@d55
    move-result-object v56

    #@d56
    check-cast v56, Landroid/content/ComponentName;

    #@d58
    .line 1240
    :goto_3c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@d5b
    move-result v9

    #@d5c
    .line 1241
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    #@d5e
    move-object/from16 v1, v33

    #@d60
    move-object/from16 v2, v56

    #@d62
    invoke-virtual {v0, v1, v2, v9}, Landroid/content/pm/IPackageManager$Stub;->addPersistentPreferredActivity(Landroid/content/IntentFilter;Landroid/content/ComponentName;I)V

    #@d65
    .line 1242
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@d68
    .line 1243
    const/4 v6, 0x1

    #@d69
    return v6

    #@d6a
    .line 1230
    .end local v9    # "_arg2":I
    :cond_3b
    const/16 v33, 0x0

    #@d6c
    .restart local v33    # "_arg0":Landroid/content/IntentFilter;
    goto :goto_3b

    #@d6d
    .line 1237
    .end local v33    # "_arg0":Landroid/content/IntentFilter;
    :cond_3c
    const/16 v56, 0x0

    #@d6f
    .local v56, "_arg1":Landroid/content/ComponentName;
    goto :goto_3c

    #@d70
    .line 1247
    .end local v56    # "_arg1":Landroid/content/ComponentName;
    :sswitch_47
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@d73
    move-object/from16 v0, p2

    #@d75
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@d78
    .line 1249
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@d7b
    move-result-object v7

    #@d7c
    .line 1251
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@d7f
    move-result v34

    #@d80
    .line 1252
    .restart local v34    # "_arg1":I
    move-object/from16 v0, p0

    #@d82
    move/from16 v1, v34

    #@d84
    invoke-virtual {v0, v7, v1}, Landroid/content/pm/IPackageManager$Stub;->clearPackagePersistentPreferredActivities(Ljava/lang/String;I)V

    #@d87
    .line 1253
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@d8a
    .line 1254
    const/4 v6, 0x1

    #@d8b
    return v6

    #@d8c
    .line 1258
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v34    # "_arg1":I
    :sswitch_48
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@d8f
    move-object/from16 v0, p2

    #@d91
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@d94
    .line 1260
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@d97
    move-result v6

    #@d98
    if-eqz v6, :cond_3d

    #@d9a
    .line 1261
    sget-object v6, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    #@d9c
    move-object/from16 v0, p2

    #@d9e
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@da1
    move-result-object v33

    #@da2
    check-cast v33, Landroid/content/IntentFilter;

    #@da4
    .line 1267
    :goto_3d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@da7
    move-result-object v8

    #@da8
    .line 1269
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@dab
    move-result v9

    #@dac
    .line 1271
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@daf
    move-result v10

    #@db0
    .line 1273
    .restart local v10    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@db3
    move-result v11

    #@db4
    .restart local v11    # "_arg4":I
    move-object/from16 v37, p0

    #@db6
    move-object/from16 v38, v33

    #@db8
    move-object/from16 v39, v8

    #@dba
    move/from16 v40, v9

    #@dbc
    move/from16 v41, v10

    #@dbe
    move/from16 v42, v11

    #@dc0
    .line 1274
    invoke-virtual/range {v37 .. v42}, Landroid/content/pm/IPackageManager$Stub;->addCrossProfileIntentFilter(Landroid/content/IntentFilter;Ljava/lang/String;III)V

    #@dc3
    .line 1275
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@dc6
    .line 1276
    const/4 v6, 0x1

    #@dc7
    return v6

    #@dc8
    .line 1264
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v11    # "_arg4":I
    :cond_3d
    const/16 v33, 0x0

    #@dca
    .restart local v33    # "_arg0":Landroid/content/IntentFilter;
    goto :goto_3d

    #@dcb
    .line 1280
    .end local v33    # "_arg0":Landroid/content/IntentFilter;
    :sswitch_49
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@dce
    move-object/from16 v0, p2

    #@dd0
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@dd3
    .line 1282
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@dd6
    move-result v43

    #@dd7
    .line 1284
    .restart local v43    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@dda
    move-result-object v8

    #@ddb
    .line 1285
    .restart local v8    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@ddd
    move/from16 v1, v43

    #@ddf
    invoke-virtual {v0, v1, v8}, Landroid/content/pm/IPackageManager$Stub;->clearCrossProfileIntentFilters(ILjava/lang/String;)V

    #@de2
    .line 1286
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@de5
    .line 1287
    const/4 v6, 0x1

    #@de6
    return v6

    #@de7
    .line 1291
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v43    # "_arg0":I
    :sswitch_4a
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@dea
    move-object/from16 v0, p2

    #@dec
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@def
    .line 1293
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@df2
    move-result-object v53

    #@df3
    .line 1295
    .restart local v53    # "_arg0":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@df6
    move-result v6

    #@df7
    if-eqz v6, :cond_3e

    #@df9
    const/16 v64, 0x1

    #@dfb
    .line 1297
    .local v64, "_arg1":Z
    :goto_3e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@dfe
    move-result v9

    #@dff
    .line 1298
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    #@e01
    move-object/from16 v1, v53

    #@e03
    move/from16 v2, v64

    #@e05
    invoke-virtual {v0, v1, v2, v9}, Landroid/content/pm/IPackageManager$Stub;->setPackagesSuspendedAsUser([Ljava/lang/String;ZI)[Ljava/lang/String;

    #@e08
    move-result-object v95

    #@e09
    .line 1299
    .restart local v95    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@e0c
    .line 1300
    move-object/from16 v0, p3

    #@e0e
    move-object/from16 v1, v95

    #@e10
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@e13
    .line 1301
    const/4 v6, 0x1

    #@e14
    return v6

    #@e15
    .line 1295
    .end local v9    # "_arg2":I
    .end local v64    # "_arg1":Z
    .end local v95    # "_result":[Ljava/lang/String;
    :cond_3e
    const/16 v64, 0x0

    #@e17
    .restart local v64    # "_arg1":Z
    goto :goto_3e

    #@e18
    .line 1305
    .end local v53    # "_arg0":[Ljava/lang/String;
    .end local v64    # "_arg1":Z
    :sswitch_4b
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@e1b
    move-object/from16 v0, p2

    #@e1d
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@e20
    .line 1307
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@e23
    move-result-object v7

    #@e24
    .line 1309
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@e27
    move-result v34

    #@e28
    .line 1310
    .restart local v34    # "_arg1":I
    move-object/from16 v0, p0

    #@e2a
    move/from16 v1, v34

    #@e2c
    invoke-virtual {v0, v7, v1}, Landroid/content/pm/IPackageManager$Stub;->isPackageSuspendedForUser(Ljava/lang/String;I)Z

    #@e2f
    move-result v92

    #@e30
    .line 1311
    .restart local v92    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@e33
    .line 1312
    if-eqz v92, :cond_3f

    #@e35
    const/4 v6, 0x1

    #@e36
    :goto_3f
    move-object/from16 v0, p3

    #@e38
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@e3b
    .line 1313
    const/4 v6, 0x1

    #@e3c
    return v6

    #@e3d
    .line 1312
    :cond_3f
    const/4 v6, 0x0

    #@e3e
    goto :goto_3f

    #@e3f
    .line 1317
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v34    # "_arg1":I
    .end local v92    # "_result":Z
    :sswitch_4c
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@e42
    move-object/from16 v0, p2

    #@e44
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@e47
    .line 1319
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@e4a
    move-result v43

    #@e4b
    .line 1320
    .restart local v43    # "_arg0":I
    move-object/from16 v0, p0

    #@e4d
    move/from16 v1, v43

    #@e4f
    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getPreferredActivityBackup(I)[B

    #@e52
    move-result-object v93

    #@e53
    .line 1321
    .local v93, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@e56
    .line 1322
    move-object/from16 v0, p3

    #@e58
    move-object/from16 v1, v93

    #@e5a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    #@e5d
    .line 1323
    const/4 v6, 0x1

    #@e5e
    return v6

    #@e5f
    .line 1327
    .end local v43    # "_arg0":I
    .end local v93    # "_result":[B
    :sswitch_4d
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@e62
    move-object/from16 v0, p2

    #@e64
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@e67
    .line 1329
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    #@e6a
    move-result-object v52

    #@e6b
    .line 1331
    .local v52, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@e6e
    move-result v34

    #@e6f
    .line 1332
    .restart local v34    # "_arg1":I
    move-object/from16 v0, p0

    #@e71
    move-object/from16 v1, v52

    #@e73
    move/from16 v2, v34

    #@e75
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->restorePreferredActivities([BI)V

    #@e78
    .line 1333
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@e7b
    .line 1334
    const/4 v6, 0x1

    #@e7c
    return v6

    #@e7d
    .line 1338
    .end local v34    # "_arg1":I
    .end local v52    # "_arg0":[B
    :sswitch_4e
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@e80
    move-object/from16 v0, p2

    #@e82
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@e85
    .line 1340
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@e88
    move-result v43

    #@e89
    .line 1341
    .restart local v43    # "_arg0":I
    move-object/from16 v0, p0

    #@e8b
    move/from16 v1, v43

    #@e8d
    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getDefaultAppsBackup(I)[B

    #@e90
    move-result-object v93

    #@e91
    .line 1342
    .restart local v93    # "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@e94
    .line 1343
    move-object/from16 v0, p3

    #@e96
    move-object/from16 v1, v93

    #@e98
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    #@e9b
    .line 1344
    const/4 v6, 0x1

    #@e9c
    return v6

    #@e9d
    .line 1348
    .end local v43    # "_arg0":I
    .end local v93    # "_result":[B
    :sswitch_4f
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@ea0
    move-object/from16 v0, p2

    #@ea2
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ea5
    .line 1350
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    #@ea8
    move-result-object v52

    #@ea9
    .line 1352
    .restart local v52    # "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@eac
    move-result v34

    #@ead
    .line 1353
    .restart local v34    # "_arg1":I
    move-object/from16 v0, p0

    #@eaf
    move-object/from16 v1, v52

    #@eb1
    move/from16 v2, v34

    #@eb3
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->restoreDefaultApps([BI)V

    #@eb6
    .line 1354
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@eb9
    .line 1355
    const/4 v6, 0x1

    #@eba
    return v6

    #@ebb
    .line 1359
    .end local v34    # "_arg1":I
    .end local v52    # "_arg0":[B
    :sswitch_50
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@ebe
    move-object/from16 v0, p2

    #@ec0
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ec3
    .line 1361
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@ec6
    move-result v43

    #@ec7
    .line 1362
    .restart local v43    # "_arg0":I
    move-object/from16 v0, p0

    #@ec9
    move/from16 v1, v43

    #@ecb
    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getIntentFilterVerificationBackup(I)[B

    #@ece
    move-result-object v93

    #@ecf
    .line 1363
    .restart local v93    # "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@ed2
    .line 1364
    move-object/from16 v0, p3

    #@ed4
    move-object/from16 v1, v93

    #@ed6
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    #@ed9
    .line 1365
    const/4 v6, 0x1

    #@eda
    return v6

    #@edb
    .line 1369
    .end local v43    # "_arg0":I
    .end local v93    # "_result":[B
    :sswitch_51
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@ede
    move-object/from16 v0, p2

    #@ee0
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ee3
    .line 1371
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    #@ee6
    move-result-object v52

    #@ee7
    .line 1373
    .restart local v52    # "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@eea
    move-result v34

    #@eeb
    .line 1374
    .restart local v34    # "_arg1":I
    move-object/from16 v0, p0

    #@eed
    move-object/from16 v1, v52

    #@eef
    move/from16 v2, v34

    #@ef1
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->restoreIntentFilterVerification([BI)V

    #@ef4
    .line 1375
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@ef7
    .line 1376
    const/4 v6, 0x1

    #@ef8
    return v6

    #@ef9
    .line 1380
    .end local v34    # "_arg1":I
    .end local v52    # "_arg0":[B
    :sswitch_52
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@efc
    move-object/from16 v0, p2

    #@efe
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@f01
    .line 1382
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@f04
    move-result v43

    #@f05
    .line 1383
    .restart local v43    # "_arg0":I
    move-object/from16 v0, p0

    #@f07
    move/from16 v1, v43

    #@f09
    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getPermissionGrantBackup(I)[B

    #@f0c
    move-result-object v93

    #@f0d
    .line 1384
    .restart local v93    # "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@f10
    .line 1385
    move-object/from16 v0, p3

    #@f12
    move-object/from16 v1, v93

    #@f14
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    #@f17
    .line 1386
    const/4 v6, 0x1

    #@f18
    return v6

    #@f19
    .line 1390
    .end local v43    # "_arg0":I
    .end local v93    # "_result":[B
    :sswitch_53
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@f1c
    move-object/from16 v0, p2

    #@f1e
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@f21
    .line 1392
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    #@f24
    move-result-object v52

    #@f25
    .line 1394
    .restart local v52    # "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@f28
    move-result v34

    #@f29
    .line 1395
    .restart local v34    # "_arg1":I
    move-object/from16 v0, p0

    #@f2b
    move-object/from16 v1, v52

    #@f2d
    move/from16 v2, v34

    #@f2f
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->restorePermissionGrants([BI)V

    #@f32
    .line 1396
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@f35
    .line 1397
    const/4 v6, 0x1

    #@f36
    return v6

    #@f37
    .line 1401
    .end local v34    # "_arg1":I
    .end local v52    # "_arg0":[B
    :sswitch_54
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@f3a
    move-object/from16 v0, p2

    #@f3c
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@f3f
    .line 1403
    new-instance v49, Ljava/util/ArrayList;

    #@f41
    invoke-direct/range {v49 .. v49}, Ljava/util/ArrayList;-><init>()V

    #@f44
    .line 1404
    .local v49, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v0, p0

    #@f46
    move-object/from16 v1, v49

    #@f48
    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    #@f4b
    move-result-object v74

    #@f4c
    .line 1405
    .local v74, "_result":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@f4f
    .line 1406
    if-eqz v74, :cond_40

    #@f51
    .line 1407
    const/4 v6, 0x1

    #@f52
    move-object/from16 v0, p3

    #@f54
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@f57
    .line 1408
    const/4 v6, 0x1

    #@f58
    move-object/from16 v0, v74

    #@f5a
    move-object/from16 v1, p3

    #@f5c
    invoke-virtual {v0, v1, v6}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    #@f5f
    .line 1413
    :goto_40
    move-object/from16 v0, p3

    #@f61
    move-object/from16 v1, v49

    #@f63
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@f66
    .line 1414
    const/4 v6, 0x1

    #@f67
    return v6

    #@f68
    .line 1411
    :cond_40
    const/4 v6, 0x0

    #@f69
    move-object/from16 v0, p3

    #@f6b
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@f6e
    goto :goto_40

    #@f6f
    .line 1418
    .end local v49    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v74    # "_result":Landroid/content/ComponentName;
    :sswitch_55
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@f72
    move-object/from16 v0, p2

    #@f74
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@f77
    .line 1420
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@f7a
    move-result v6

    #@f7b
    if-eqz v6, :cond_41

    #@f7d
    .line 1421
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@f7f
    move-object/from16 v0, p2

    #@f81
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@f84
    move-result-object v13

    #@f85
    check-cast v13, Landroid/content/ComponentName;

    #@f87
    .line 1427
    :goto_41
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@f8a
    move-result v34

    #@f8b
    .line 1428
    .restart local v34    # "_arg1":I
    move-object/from16 v0, p0

    #@f8d
    move/from16 v1, v34

    #@f8f
    invoke-virtual {v0, v13, v1}, Landroid/content/pm/IPackageManager$Stub;->setHomeActivity(Landroid/content/ComponentName;I)V

    #@f92
    .line 1429
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@f95
    .line 1430
    const/4 v6, 0x1

    #@f96
    return v6

    #@f97
    .line 1424
    .end local v34    # "_arg1":I
    :cond_41
    const/4 v13, 0x0

    #@f98
    .restart local v13    # "_arg0":Landroid/content/ComponentName;
    goto :goto_41

    #@f99
    .line 1434
    .end local v13    # "_arg0":Landroid/content/ComponentName;
    :sswitch_56
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@f9c
    move-object/from16 v0, p2

    #@f9e
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@fa1
    .line 1436
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@fa4
    move-result v6

    #@fa5
    if-eqz v6, :cond_42

    #@fa7
    .line 1437
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@fa9
    move-object/from16 v0, p2

    #@fab
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@fae
    move-result-object v13

    #@faf
    check-cast v13, Landroid/content/ComponentName;

    #@fb1
    .line 1443
    :goto_42
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@fb4
    move-result v34

    #@fb5
    .line 1445
    .restart local v34    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@fb8
    move-result v9

    #@fb9
    .line 1447
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@fbc
    move-result v10

    #@fbd
    .line 1448
    .restart local v10    # "_arg3":I
    move-object/from16 v0, p0

    #@fbf
    move/from16 v1, v34

    #@fc1
    invoke-virtual {v0, v13, v1, v9, v10}, Landroid/content/pm/IPackageManager$Stub;->setComponentEnabledSetting(Landroid/content/ComponentName;III)V

    #@fc4
    .line 1449
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@fc7
    .line 1450
    const/4 v6, 0x1

    #@fc8
    return v6

    #@fc9
    .line 1440
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v34    # "_arg1":I
    :cond_42
    const/4 v13, 0x0

    #@fca
    .restart local v13    # "_arg0":Landroid/content/ComponentName;
    goto :goto_42

    #@fcb
    .line 1454
    .end local v13    # "_arg0":Landroid/content/ComponentName;
    :sswitch_57
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@fce
    move-object/from16 v0, p2

    #@fd0
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@fd3
    .line 1456
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@fd6
    move-result v6

    #@fd7
    if-eqz v6, :cond_43

    #@fd9
    .line 1457
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@fdb
    move-object/from16 v0, p2

    #@fdd
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@fe0
    move-result-object v13

    #@fe1
    check-cast v13, Landroid/content/ComponentName;

    #@fe3
    .line 1463
    :goto_43
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@fe6
    move-result v34

    #@fe7
    .line 1464
    .restart local v34    # "_arg1":I
    move-object/from16 v0, p0

    #@fe9
    move/from16 v1, v34

    #@feb
    invoke-virtual {v0, v13, v1}, Landroid/content/pm/IPackageManager$Stub;->getComponentEnabledSetting(Landroid/content/ComponentName;I)I

    #@fee
    move-result v73

    #@fef
    .line 1465
    .restart local v73    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@ff2
    .line 1466
    move-object/from16 v0, p3

    #@ff4
    move/from16 v1, v73

    #@ff6
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@ff9
    .line 1467
    const/4 v6, 0x1

    #@ffa
    return v6

    #@ffb
    .line 1460
    .end local v34    # "_arg1":I
    .end local v73    # "_result":I
    :cond_43
    const/4 v13, 0x0

    #@ffc
    .restart local v13    # "_arg0":Landroid/content/ComponentName;
    goto :goto_43

    #@ffd
    .line 1471
    .end local v13    # "_arg0":Landroid/content/ComponentName;
    :sswitch_58
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@1000
    move-object/from16 v0, p2

    #@1002
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1005
    .line 1473
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1008
    move-result-object v7

    #@1009
    .line 1475
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@100c
    move-result v34

    #@100d
    .line 1477
    .restart local v34    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1010
    move-result v9

    #@1011
    .line 1479
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1014
    move-result v10

    #@1015
    .line 1481
    .restart local v10    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1018
    move-result-object v17

    #@1019
    .restart local v17    # "_arg4":Ljava/lang/String;
    move-object/from16 v37, p0

    #@101b
    move-object/from16 v38, v7

    #@101d
    move/from16 v39, v34

    #@101f
    move/from16 v40, v9

    #@1021
    move/from16 v41, v10

    #@1023
    move-object/from16 v42, v17

    #@1025
    .line 1482
    invoke-virtual/range {v37 .. v42}, Landroid/content/pm/IPackageManager$Stub;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V

    #@1028
    .line 1483
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@102b
    .line 1484
    const/4 v6, 0x1

    #@102c
    return v6

    #@102d
    .line 1488
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v17    # "_arg4":Ljava/lang/String;
    .end local v34    # "_arg1":I
    :sswitch_59
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@1030
    move-object/from16 v0, p2

    #@1032
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1035
    .line 1490
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1038
    move-result-object v7

    #@1039
    .line 1492
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@103c
    move-result v34

    #@103d
    .line 1493
    .restart local v34    # "_arg1":I
    move-object/from16 v0, p0

    #@103f
    move/from16 v1, v34

    #@1041
    invoke-virtual {v0, v7, v1}, Landroid/content/pm/IPackageManager$Stub;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    #@1044
    move-result v73

    #@1045
    .line 1494
    .restart local v73    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1048
    .line 1495
    move-object/from16 v0, p3

    #@104a
    move/from16 v1, v73

    #@104c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@104f
    .line 1496
    const/4 v6, 0x1

    #@1050
    return v6

    #@1051
    .line 1500
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v34    # "_arg1":I
    .end local v73    # "_result":I
    :sswitch_5a
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@1054
    move-object/from16 v0, p2

    #@1056
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1059
    .line 1502
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@105c
    move-result-object v7

    #@105d
    .line 1504
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1060
    move-result v34

    #@1061
    .line 1506
    .restart local v34    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1064
    move-result-object v40

    #@1065
    .line 1508
    .restart local v40    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1068
    move-result-object v24

    #@1069
    .line 1510
    .restart local v24    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@106c
    move-result v11

    #@106d
    .restart local v11    # "_arg4":I
    move-object/from16 v37, p0

    #@106f
    move-object/from16 v38, v7

    #@1071
    move/from16 v39, v34

    #@1073
    move-object/from16 v41, v24

    #@1075
    move/from16 v42, v11

    #@1077
    .line 1511
    invoke-virtual/range {v37 .. v42}, Landroid/content/pm/IPackageManager$Stub;->logAppProcessStartIfNeeded(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    #@107a
    .line 1512
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@107d
    .line 1513
    const/4 v6, 0x1

    #@107e
    return v6

    #@107f
    .line 1517
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v11    # "_arg4":I
    .end local v24    # "_arg3":Ljava/lang/String;
    .end local v34    # "_arg1":I
    .end local v40    # "_arg2":Ljava/lang/String;
    :sswitch_5b
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@1082
    move-object/from16 v0, p2

    #@1084
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1087
    .line 1519
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@108a
    move-result v43

    #@108b
    .line 1520
    .restart local v43    # "_arg0":I
    move-object/from16 v0, p0

    #@108d
    move/from16 v1, v43

    #@108f
    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->flushPackageRestrictionsAsUser(I)V

    #@1092
    .line 1521
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1095
    .line 1522
    const/4 v6, 0x1

    #@1096
    return v6

    #@1097
    .line 1526
    .end local v43    # "_arg0":I
    :sswitch_5c
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@109a
    move-object/from16 v0, p2

    #@109c
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@109f
    .line 1528
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@10a2
    move-result-object v7

    #@10a3
    .line 1530
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@10a6
    move-result v6

    #@10a7
    if-eqz v6, :cond_44

    #@10a9
    const/16 v64, 0x1

    #@10ab
    .line 1532
    .restart local v64    # "_arg1":Z
    :goto_44
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@10ae
    move-result v9

    #@10af
    .line 1533
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    #@10b1
    move/from16 v1, v64

    #@10b3
    invoke-virtual {v0, v7, v1, v9}, Landroid/content/pm/IPackageManager$Stub;->setPackageStoppedState(Ljava/lang/String;ZI)V

    #@10b6
    .line 1534
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@10b9
    .line 1535
    const/4 v6, 0x1

    #@10ba
    return v6

    #@10bb
    .line 1530
    .end local v9    # "_arg2":I
    .end local v64    # "_arg1":Z
    :cond_44
    const/16 v64, 0x0

    #@10bd
    .restart local v64    # "_arg1":Z
    goto :goto_44

    #@10be
    .line 1539
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v64    # "_arg1":Z
    :sswitch_5d
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@10c1
    move-object/from16 v0, p2

    #@10c3
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@10c6
    .line 1541
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@10c9
    move-result-object v7

    #@10ca
    .line 1543
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@10cd
    move-result-wide v54

    #@10ce
    .line 1545
    .local v54, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@10d1
    move-result-object v6

    #@10d2
    invoke-static {v6}, Landroid/content/pm/IPackageDataObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDataObserver;

    #@10d5
    move-result-object v69

    #@10d6
    .line 1546
    .local v69, "_arg2":Landroid/content/pm/IPackageDataObserver;
    move-object/from16 v0, p0

    #@10d8
    move-wide/from16 v1, v54

    #@10da
    move-object/from16 v3, v69

    #@10dc
    invoke-virtual {v0, v7, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->freeStorageAndNotify(Ljava/lang/String;JLandroid/content/pm/IPackageDataObserver;)V

    #@10df
    .line 1547
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@10e2
    .line 1548
    const/4 v6, 0x1

    #@10e3
    return v6

    #@10e4
    .line 1552
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v54    # "_arg1":J
    .end local v69    # "_arg2":Landroid/content/pm/IPackageDataObserver;
    :sswitch_5e
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@10e7
    move-object/from16 v0, p2

    #@10e9
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@10ec
    .line 1554
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@10ef
    move-result-object v7

    #@10f0
    .line 1556
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@10f3
    move-result-wide v54

    #@10f4
    .line 1558
    .restart local v54    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@10f7
    move-result v6

    #@10f8
    if-eqz v6, :cond_45

    #@10fa
    .line 1559
    sget-object v6, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    #@10fc
    move-object/from16 v0, p2

    #@10fe
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1101
    move-result-object v68

    #@1102
    check-cast v68, Landroid/content/IntentSender;

    #@1104
    .line 1564
    :goto_45
    move-object/from16 v0, p0

    #@1106
    move-wide/from16 v1, v54

    #@1108
    move-object/from16 v3, v68

    #@110a
    invoke-virtual {v0, v7, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->freeStorage(Ljava/lang/String;JLandroid/content/IntentSender;)V

    #@110d
    .line 1565
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1110
    .line 1566
    const/4 v6, 0x1

    #@1111
    return v6

    #@1112
    .line 1562
    :cond_45
    const/16 v68, 0x0

    #@1114
    .local v68, "_arg2":Landroid/content/IntentSender;
    goto :goto_45

    #@1115
    .line 1570
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v54    # "_arg1":J
    .end local v68    # "_arg2":Landroid/content/IntentSender;
    :sswitch_5f
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@1118
    move-object/from16 v0, p2

    #@111a
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@111d
    .line 1572
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1120
    move-result-object v7

    #@1121
    .line 1574
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1124
    move-result-object v6

    #@1125
    invoke-static {v6}, Landroid/content/pm/IPackageDataObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDataObserver;

    #@1128
    move-result-object v58

    #@1129
    .line 1575
    .local v58, "_arg1":Landroid/content/pm/IPackageDataObserver;
    move-object/from16 v0, p0

    #@112b
    move-object/from16 v1, v58

    #@112d
    invoke-virtual {v0, v7, v1}, Landroid/content/pm/IPackageManager$Stub;->deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V

    #@1130
    .line 1576
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1133
    .line 1577
    const/4 v6, 0x1

    #@1134
    return v6

    #@1135
    .line 1581
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v58    # "_arg1":Landroid/content/pm/IPackageDataObserver;
    :sswitch_60
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@1138
    move-object/from16 v0, p2

    #@113a
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@113d
    .line 1583
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1140
    move-result-object v7

    #@1141
    .line 1585
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1144
    move-result v34

    #@1145
    .line 1587
    .restart local v34    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1148
    move-result-object v6

    #@1149
    invoke-static {v6}, Landroid/content/pm/IPackageDataObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDataObserver;

    #@114c
    move-result-object v69

    #@114d
    .line 1588
    .restart local v69    # "_arg2":Landroid/content/pm/IPackageDataObserver;
    move-object/from16 v0, p0

    #@114f
    move/from16 v1, v34

    #@1151
    move-object/from16 v2, v69

    #@1153
    invoke-virtual {v0, v7, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->deleteApplicationCacheFilesAsUser(Ljava/lang/String;ILandroid/content/pm/IPackageDataObserver;)V

    #@1156
    .line 1589
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1159
    .line 1590
    const/4 v6, 0x1

    #@115a
    return v6

    #@115b
    .line 1594
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v34    # "_arg1":I
    .end local v69    # "_arg2":Landroid/content/pm/IPackageDataObserver;
    :sswitch_61
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@115e
    move-object/from16 v0, p2

    #@1160
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1163
    .line 1596
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1166
    move-result-object v7

    #@1167
    .line 1598
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@116a
    move-result-object v6

    #@116b
    invoke-static {v6}, Landroid/content/pm/IPackageDataObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDataObserver;

    #@116e
    move-result-object v58

    #@116f
    .line 1600
    .restart local v58    # "_arg1":Landroid/content/pm/IPackageDataObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1172
    move-result v9

    #@1173
    .line 1601
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    #@1175
    move-object/from16 v1, v58

    #@1177
    invoke-virtual {v0, v7, v1, v9}, Landroid/content/pm/IPackageManager$Stub;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;I)V

    #@117a
    .line 1602
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@117d
    .line 1603
    const/4 v6, 0x1

    #@117e
    return v6

    #@117f
    .line 1607
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v58    # "_arg1":Landroid/content/pm/IPackageDataObserver;
    :sswitch_62
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@1182
    move-object/from16 v0, p2

    #@1184
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1187
    .line 1609
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@118a
    move-result-object v7

    #@118b
    .line 1610
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@118d
    invoke-virtual {v0, v7}, Landroid/content/pm/IPackageManager$Stub;->clearApplicationProfileData(Ljava/lang/String;)V

    #@1190
    .line 1611
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1193
    .line 1612
    const/4 v6, 0x1

    #@1194
    return v6

    #@1195
    .line 1616
    .end local v7    # "_arg0":Ljava/lang/String;
    :sswitch_63
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@1198
    move-object/from16 v0, p2

    #@119a
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@119d
    .line 1618
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@11a0
    move-result-object v7

    #@11a1
    .line 1620
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@11a4
    move-result v34

    #@11a5
    .line 1622
    .restart local v34    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@11a8
    move-result-object v6

    #@11a9
    invoke-static {v6}, Landroid/content/pm/IPackageStatsObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageStatsObserver;

    #@11ac
    move-result-object v70

    #@11ad
    .line 1623
    .local v70, "_arg2":Landroid/content/pm/IPackageStatsObserver;
    move-object/from16 v0, p0

    #@11af
    move/from16 v1, v34

    #@11b1
    move-object/from16 v2, v70

    #@11b3
    invoke-virtual {v0, v7, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->getPackageSizeInfo(Ljava/lang/String;ILandroid/content/pm/IPackageStatsObserver;)V

    #@11b6
    .line 1624
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@11b9
    .line 1625
    const/4 v6, 0x1

    #@11ba
    return v6

    #@11bb
    .line 1629
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v34    # "_arg1":I
    .end local v70    # "_arg2":Landroid/content/pm/IPackageStatsObserver;
    :sswitch_64
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@11be
    move-object/from16 v0, p2

    #@11c0
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@11c3
    .line 1630
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getSystemSharedLibraryNames()[Ljava/lang/String;

    #@11c6
    move-result-object v95

    #@11c7
    .line 1631
    .restart local v95    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@11ca
    .line 1632
    move-object/from16 v0, p3

    #@11cc
    move-object/from16 v1, v95

    #@11ce
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@11d1
    .line 1633
    const/4 v6, 0x1

    #@11d2
    return v6

    #@11d3
    .line 1637
    .end local v95    # "_result":[Ljava/lang/String;
    :sswitch_65
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@11d6
    move-object/from16 v0, p2

    #@11d8
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@11db
    .line 1638
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getSystemAvailableFeatures()Landroid/content/pm/ParceledListSlice;

    #@11de
    move-result-object v82

    #@11df
    .line 1639
    .restart local v82    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@11e2
    .line 1640
    if-eqz v82, :cond_46

    #@11e4
    .line 1641
    const/4 v6, 0x1

    #@11e5
    move-object/from16 v0, p3

    #@11e7
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@11ea
    .line 1642
    const/4 v6, 0x1

    #@11eb
    move-object/from16 v0, v82

    #@11ed
    move-object/from16 v1, p3

    #@11ef
    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    #@11f2
    .line 1647
    :goto_46
    const/4 v6, 0x1

    #@11f3
    return v6

    #@11f4
    .line 1645
    :cond_46
    const/4 v6, 0x0

    #@11f5
    move-object/from16 v0, p3

    #@11f7
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@11fa
    goto :goto_46

    #@11fb
    .line 1651
    .end local v82    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_66
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@11fe
    move-object/from16 v0, p2

    #@1200
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1203
    .line 1653
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1206
    move-result-object v7

    #@1207
    .line 1655
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@120a
    move-result v34

    #@120b
    .line 1656
    .restart local v34    # "_arg1":I
    move-object/from16 v0, p0

    #@120d
    move/from16 v1, v34

    #@120f
    invoke-virtual {v0, v7, v1}, Landroid/content/pm/IPackageManager$Stub;->hasSystemFeature(Ljava/lang/String;I)Z

    #@1212
    move-result v92

    #@1213
    .line 1657
    .restart local v92    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1216
    .line 1658
    if-eqz v92, :cond_47

    #@1218
    const/4 v6, 0x1

    #@1219
    :goto_47
    move-object/from16 v0, p3

    #@121b
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@121e
    .line 1659
    const/4 v6, 0x1

    #@121f
    return v6

    #@1220
    .line 1658
    :cond_47
    const/4 v6, 0x0

    #@1221
    goto :goto_47

    #@1222
    .line 1663
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v34    # "_arg1":I
    .end local v92    # "_result":Z
    :sswitch_67
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@1225
    move-object/from16 v0, p2

    #@1227
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@122a
    .line 1664
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->enterSafeMode()V

    #@122d
    .line 1665
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1230
    .line 1666
    const/4 v6, 0x1

    #@1231
    return v6

    #@1232
    .line 1670
    :sswitch_68
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@1235
    move-object/from16 v0, p2

    #@1237
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@123a
    .line 1671
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->isSafeMode()Z

    #@123d
    move-result v92

    #@123e
    .line 1672
    .restart local v92    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1241
    .line 1673
    if-eqz v92, :cond_48

    #@1243
    const/4 v6, 0x1

    #@1244
    :goto_48
    move-object/from16 v0, p3

    #@1246
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@1249
    .line 1674
    const/4 v6, 0x1

    #@124a
    return v6

    #@124b
    .line 1673
    :cond_48
    const/4 v6, 0x0

    #@124c
    goto :goto_48

    #@124d
    .line 1678
    .end local v92    # "_result":Z
    :sswitch_69
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@1250
    move-object/from16 v0, p2

    #@1252
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1255
    .line 1679
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->systemReady()V

    #@1258
    .line 1680
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@125b
    .line 1681
    const/4 v6, 0x1

    #@125c
    return v6

    #@125d
    .line 1685
    :sswitch_6a
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@1260
    move-object/from16 v0, p2

    #@1262
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1265
    .line 1686
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->hasSystemUidErrors()Z

    #@1268
    move-result v92

    #@1269
    .line 1687
    .restart local v92    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@126c
    .line 1688
    if-eqz v92, :cond_49

    #@126e
    const/4 v6, 0x1

    #@126f
    :goto_49
    move-object/from16 v0, p3

    #@1271
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@1274
    .line 1689
    const/4 v6, 0x1

    #@1275
    return v6

    #@1276
    .line 1688
    :cond_49
    const/4 v6, 0x0

    #@1277
    goto :goto_49

    #@1278
    .line 1693
    .end local v92    # "_result":Z
    :sswitch_6b
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@127b
    move-object/from16 v0, p2

    #@127d
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1280
    .line 1694
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->performFstrimIfNeeded()V

    #@1283
    .line 1695
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1286
    .line 1696
    const/4 v6, 0x1

    #@1287
    return v6

    #@1288
    .line 1700
    :sswitch_6c
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@128b
    move-object/from16 v0, p2

    #@128d
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1290
    .line 1701
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->updatePackagesIfNeeded()V

    #@1293
    .line 1702
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1296
    .line 1703
    const/4 v6, 0x1

    #@1297
    return v6

    #@1298
    .line 1707
    :sswitch_6d
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@129b
    move-object/from16 v0, p2

    #@129d
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@12a0
    .line 1709
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@12a3
    move-result-object v7

    #@12a4
    .line 1711
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@12a7
    move-result v34

    #@12a8
    .line 1712
    .restart local v34    # "_arg1":I
    move-object/from16 v0, p0

    #@12aa
    move/from16 v1, v34

    #@12ac
    invoke-virtual {v0, v7, v1}, Landroid/content/pm/IPackageManager$Stub;->notifyPackageUse(Ljava/lang/String;I)V

    #@12af
    .line 1713
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@12b2
    .line 1714
    const/4 v6, 0x1

    #@12b3
    return v6

    #@12b4
    .line 1718
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v34    # "_arg1":I
    :sswitch_6e
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@12b7
    move-object/from16 v0, p2

    #@12b9
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@12bc
    .line 1720
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@12bf
    move-result-object v7

    #@12c0
    .line 1721
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@12c2
    invoke-virtual {v0, v7}, Landroid/content/pm/IPackageManager$Stub;->performDexOptIfNeeded(Ljava/lang/String;)Z

    #@12c5
    move-result v92

    #@12c6
    .line 1722
    .restart local v92    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@12c9
    .line 1723
    if-eqz v92, :cond_4a

    #@12cb
    const/4 v6, 0x1

    #@12cc
    :goto_4a
    move-object/from16 v0, p3

    #@12ce
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@12d1
    .line 1724
    const/4 v6, 0x1

    #@12d2
    return v6

    #@12d3
    .line 1723
    :cond_4a
    const/4 v6, 0x0

    #@12d4
    goto :goto_4a

    #@12d5
    .line 1728
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v92    # "_result":Z
    :sswitch_6f
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@12d8
    move-object/from16 v0, p2

    #@12da
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@12dd
    .line 1730
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@12e0
    move-result-object v7

    #@12e1
    .line 1732
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@12e4
    move-result v6

    #@12e5
    if-eqz v6, :cond_4b

    #@12e7
    const/16 v64, 0x1

    #@12e9
    .line 1734
    .restart local v64    # "_arg1":Z
    :goto_4b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@12ec
    move-result v9

    #@12ed
    .line 1736
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@12f0
    move-result v6

    #@12f1
    if-eqz v6, :cond_4c

    #@12f3
    const/16 v72, 0x1

    #@12f5
    .line 1737
    .local v72, "_arg3":Z
    :goto_4c
    move-object/from16 v0, p0

    #@12f7
    move/from16 v1, v64

    #@12f9
    move/from16 v2, v72

    #@12fb
    invoke-virtual {v0, v7, v1, v9, v2}, Landroid/content/pm/IPackageManager$Stub;->performDexOpt(Ljava/lang/String;ZIZ)Z

    #@12fe
    move-result v92

    #@12ff
    .line 1738
    .restart local v92    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1302
    .line 1739
    if-eqz v92, :cond_4d

    #@1304
    const/4 v6, 0x1

    #@1305
    :goto_4d
    move-object/from16 v0, p3

    #@1307
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@130a
    .line 1740
    const/4 v6, 0x1

    #@130b
    return v6

    #@130c
    .line 1732
    .end local v9    # "_arg2":I
    .end local v64    # "_arg1":Z
    .end local v72    # "_arg3":Z
    .end local v92    # "_result":Z
    :cond_4b
    const/16 v64, 0x0

    #@130e
    .restart local v64    # "_arg1":Z
    goto :goto_4b

    #@130f
    .line 1736
    .restart local v9    # "_arg2":I
    :cond_4c
    const/16 v72, 0x0

    #@1311
    goto :goto_4c

    #@1312
    .line 1739
    .restart local v72    # "_arg3":Z
    .restart local v92    # "_result":Z
    :cond_4d
    const/4 v6, 0x0

    #@1313
    goto :goto_4d

    #@1314
    .line 1744
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v64    # "_arg1":Z
    .end local v72    # "_arg3":Z
    .end local v92    # "_result":Z
    :sswitch_70
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@1317
    move-object/from16 v0, p2

    #@1319
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@131c
    .line 1746
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@131f
    move-result-object v7

    #@1320
    .line 1748
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1323
    move-result v6

    #@1324
    if-eqz v6, :cond_4e

    #@1326
    const/16 v64, 0x1

    #@1328
    .line 1750
    .restart local v64    # "_arg1":Z
    :goto_4e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@132b
    move-result-object v40

    #@132c
    .line 1752
    .restart local v40    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@132f
    move-result v6

    #@1330
    if-eqz v6, :cond_4f

    #@1332
    const/16 v72, 0x1

    #@1334
    .line 1753
    .restart local v72    # "_arg3":Z
    :goto_4f
    move-object/from16 v0, p0

    #@1336
    move/from16 v1, v64

    #@1338
    move-object/from16 v2, v40

    #@133a
    move/from16 v3, v72

    #@133c
    invoke-virtual {v0, v7, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->performDexOptMode(Ljava/lang/String;ZLjava/lang/String;Z)Z

    #@133f
    move-result v92

    #@1340
    .line 1754
    .restart local v92    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1343
    .line 1755
    if-eqz v92, :cond_50

    #@1345
    const/4 v6, 0x1

    #@1346
    :goto_50
    move-object/from16 v0, p3

    #@1348
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@134b
    .line 1756
    const/4 v6, 0x1

    #@134c
    return v6

    #@134d
    .line 1748
    .end local v40    # "_arg2":Ljava/lang/String;
    .end local v64    # "_arg1":Z
    .end local v72    # "_arg3":Z
    .end local v92    # "_result":Z
    :cond_4e
    const/16 v64, 0x0

    #@134f
    .restart local v64    # "_arg1":Z
    goto :goto_4e

    #@1350
    .line 1752
    .restart local v40    # "_arg2":Ljava/lang/String;
    :cond_4f
    const/16 v72, 0x0

    #@1352
    goto :goto_4f

    #@1353
    .line 1755
    .restart local v72    # "_arg3":Z
    .restart local v92    # "_result":Z
    :cond_50
    const/4 v6, 0x0

    #@1354
    goto :goto_50

    #@1355
    .line 1760
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v40    # "_arg2":Ljava/lang/String;
    .end local v64    # "_arg1":Z
    .end local v72    # "_arg3":Z
    .end local v92    # "_result":Z
    :sswitch_71
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@1358
    move-object/from16 v0, p2

    #@135a
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@135d
    .line 1762
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1360
    move-result-object v7

    #@1361
    .line 1763
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@1363
    invoke-virtual {v0, v7}, Landroid/content/pm/IPackageManager$Stub;->dumpProfiles(Ljava/lang/String;)V

    #@1366
    .line 1764
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1369
    .line 1765
    const/4 v6, 0x1

    #@136a
    return v6

    #@136b
    .line 1769
    .end local v7    # "_arg0":Ljava/lang/String;
    :sswitch_72
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@136e
    move-object/from16 v0, p2

    #@1370
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1373
    .line 1771
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1376
    move-result-object v7

    #@1377
    .line 1772
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@1379
    invoke-virtual {v0, v7}, Landroid/content/pm/IPackageManager$Stub;->forceDexOpt(Ljava/lang/String;)V

    #@137c
    .line 1773
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@137f
    .line 1774
    const/4 v6, 0x1

    #@1380
    return v6

    #@1381
    .line 1778
    .end local v7    # "_arg0":Ljava/lang/String;
    :sswitch_73
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@1384
    move-object/from16 v0, p2

    #@1386
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1389
    .line 1780
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@138c
    move-result v6

    #@138d
    if-eqz v6, :cond_51

    #@138f
    const/16 v51, 0x1

    #@1391
    .line 1782
    .local v51, "_arg0":Z
    :goto_51
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1394
    move-result v6

    #@1395
    if-eqz v6, :cond_52

    #@1397
    const/16 v64, 0x1

    #@1399
    .line 1783
    .local v64, "_arg1":Z
    :goto_52
    move-object/from16 v0, p0

    #@139b
    move/from16 v1, v51

    #@139d
    move/from16 v2, v64

    #@139f
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->updateExternalMediaStatus(ZZ)V

    #@13a2
    .line 1784
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@13a5
    .line 1785
    const/4 v6, 0x1

    #@13a6
    return v6

    #@13a7
    .line 1780
    .end local v51    # "_arg0":Z
    .end local v64    # "_arg1":Z
    :cond_51
    const/16 v51, 0x0

    #@13a9
    .restart local v51    # "_arg0":Z
    goto :goto_51

    #@13aa
    .line 1782
    :cond_52
    const/16 v64, 0x0

    #@13ac
    goto :goto_52

    #@13ad
    .line 1789
    .end local v51    # "_arg0":Z
    :sswitch_74
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@13b0
    move-object/from16 v0, p2

    #@13b2
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@13b5
    .line 1791
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@13b8
    move-result v6

    #@13b9
    if-eqz v6, :cond_53

    #@13bb
    .line 1792
    sget-object v6, Landroid/content/pm/PackageCleanItem;->CREATOR:Landroid/os/Parcelable$Creator;

    #@13bd
    move-object/from16 v0, p2

    #@13bf
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@13c2
    move-result-object v46

    #@13c3
    check-cast v46, Landroid/content/pm/PackageCleanItem;

    #@13c5
    .line 1797
    :goto_53
    move-object/from16 v0, p0

    #@13c7
    move-object/from16 v1, v46

    #@13c9
    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->nextPackageToClean(Landroid/content/pm/PackageCleanItem;)Landroid/content/pm/PackageCleanItem;

    #@13cc
    move-result-object v80

    #@13cd
    .line 1798
    .local v80, "_result":Landroid/content/pm/PackageCleanItem;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@13d0
    .line 1799
    if-eqz v80, :cond_54

    #@13d2
    .line 1800
    const/4 v6, 0x1

    #@13d3
    move-object/from16 v0, p3

    #@13d5
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@13d8
    .line 1801
    const/4 v6, 0x1

    #@13d9
    move-object/from16 v0, v80

    #@13db
    move-object/from16 v1, p3

    #@13dd
    invoke-virtual {v0, v1, v6}, Landroid/content/pm/PackageCleanItem;->writeToParcel(Landroid/os/Parcel;I)V

    #@13e0
    .line 1806
    :goto_54
    const/4 v6, 0x1

    #@13e1
    return v6

    #@13e2
    .line 1795
    .end local v80    # "_result":Landroid/content/pm/PackageCleanItem;
    :cond_53
    const/16 v46, 0x0

    #@13e4
    .local v46, "_arg0":Landroid/content/pm/PackageCleanItem;
    goto :goto_53

    #@13e5
    .line 1804
    .end local v46    # "_arg0":Landroid/content/pm/PackageCleanItem;
    .restart local v80    # "_result":Landroid/content/pm/PackageCleanItem;
    :cond_54
    const/4 v6, 0x0

    #@13e6
    move-object/from16 v0, p3

    #@13e8
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@13eb
    goto :goto_54

    #@13ec
    .line 1810
    .end local v80    # "_result":Landroid/content/pm/PackageCleanItem;
    :sswitch_75
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@13ef
    move-object/from16 v0, p2

    #@13f1
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@13f4
    .line 1812
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@13f7
    move-result v43

    #@13f8
    .line 1813
    .restart local v43    # "_arg0":I
    move-object/from16 v0, p0

    #@13fa
    move/from16 v1, v43

    #@13fc
    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getMoveStatus(I)I

    #@13ff
    move-result v73

    #@1400
    .line 1814
    .restart local v73    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1403
    .line 1815
    move-object/from16 v0, p3

    #@1405
    move/from16 v1, v73

    #@1407
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@140a
    .line 1816
    const/4 v6, 0x1

    #@140b
    return v6

    #@140c
    .line 1820
    .end local v43    # "_arg0":I
    .end local v73    # "_result":I
    :sswitch_76
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@140f
    move-object/from16 v0, p2

    #@1411
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1414
    .line 1822
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1417
    move-result-object v6

    #@1418
    invoke-static {v6}, Landroid/content/pm/IPackageMoveObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageMoveObserver;

    #@141b
    move-result-object v45

    #@141c
    .line 1823
    .local v45, "_arg0":Landroid/content/pm/IPackageMoveObserver;
    move-object/from16 v0, p0

    #@141e
    move-object/from16 v1, v45

    #@1420
    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->registerMoveCallback(Landroid/content/pm/IPackageMoveObserver;)V

    #@1423
    .line 1824
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1426
    .line 1825
    const/4 v6, 0x1

    #@1427
    return v6

    #@1428
    .line 1829
    .end local v45    # "_arg0":Landroid/content/pm/IPackageMoveObserver;
    :sswitch_77
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@142b
    move-object/from16 v0, p2

    #@142d
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1430
    .line 1831
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1433
    move-result-object v6

    #@1434
    invoke-static {v6}, Landroid/content/pm/IPackageMoveObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageMoveObserver;

    #@1437
    move-result-object v45

    #@1438
    .line 1832
    .restart local v45    # "_arg0":Landroid/content/pm/IPackageMoveObserver;
    move-object/from16 v0, p0

    #@143a
    move-object/from16 v1, v45

    #@143c
    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->unregisterMoveCallback(Landroid/content/pm/IPackageMoveObserver;)V

    #@143f
    .line 1833
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1442
    .line 1834
    const/4 v6, 0x1

    #@1443
    return v6

    #@1444
    .line 1838
    .end local v45    # "_arg0":Landroid/content/pm/IPackageMoveObserver;
    :sswitch_78
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@1447
    move-object/from16 v0, p2

    #@1449
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@144c
    .line 1840
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@144f
    move-result-object v7

    #@1450
    .line 1842
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1453
    move-result-object v8

    #@1454
    .line 1843
    .restart local v8    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@1456
    invoke-virtual {v0, v7, v8}, Landroid/content/pm/IPackageManager$Stub;->movePackage(Ljava/lang/String;Ljava/lang/String;)I

    #@1459
    move-result v73

    #@145a
    .line 1844
    .restart local v73    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@145d
    .line 1845
    move-object/from16 v0, p3

    #@145f
    move/from16 v1, v73

    #@1461
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1464
    .line 1846
    const/4 v6, 0x1

    #@1465
    return v6

    #@1466
    .line 1850
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v73    # "_result":I
    :sswitch_79
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@1469
    move-object/from16 v0, p2

    #@146b
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@146e
    .line 1852
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1471
    move-result-object v7

    #@1472
    .line 1853
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@1474
    invoke-virtual {v0, v7}, Landroid/content/pm/IPackageManager$Stub;->movePrimaryStorage(Ljava/lang/String;)I

    #@1477
    move-result v73

    #@1478
    .line 1854
    .restart local v73    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@147b
    .line 1855
    move-object/from16 v0, p3

    #@147d
    move/from16 v1, v73

    #@147f
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1482
    .line 1856
    const/4 v6, 0x1

    #@1483
    return v6

    #@1484
    .line 1860
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v73    # "_result":I
    :sswitch_7a
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@1487
    move-object/from16 v0, p2

    #@1489
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@148c
    .line 1862
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@148f
    move-result v6

    #@1490
    if-eqz v6, :cond_55

    #@1492
    .line 1863
    sget-object v6, Landroid/content/pm/PermissionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1494
    move-object/from16 v0, p2

    #@1496
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1499
    move-result-object v47

    #@149a
    check-cast v47, Landroid/content/pm/PermissionInfo;

    #@149c
    .line 1868
    :goto_55
    move-object/from16 v0, p0

    #@149e
    move-object/from16 v1, v47

    #@14a0
    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->addPermissionAsync(Landroid/content/pm/PermissionInfo;)Z

    #@14a3
    move-result v92

    #@14a4
    .line 1869
    .restart local v92    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@14a7
    .line 1870
    if-eqz v92, :cond_56

    #@14a9
    const/4 v6, 0x1

    #@14aa
    :goto_56
    move-object/from16 v0, p3

    #@14ac
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@14af
    .line 1871
    const/4 v6, 0x1

    #@14b0
    return v6

    #@14b1
    .line 1866
    .end local v92    # "_result":Z
    :cond_55
    const/16 v47, 0x0

    #@14b3
    .restart local v47    # "_arg0":Landroid/content/pm/PermissionInfo;
    goto :goto_55

    #@14b4
    .line 1870
    .end local v47    # "_arg0":Landroid/content/pm/PermissionInfo;
    .restart local v92    # "_result":Z
    :cond_56
    const/4 v6, 0x0

    #@14b5
    goto :goto_56

    #@14b6
    .line 1875
    .end local v92    # "_result":Z
    :sswitch_7b
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@14b9
    move-object/from16 v0, p2

    #@14bb
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@14be
    .line 1877
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@14c1
    move-result v43

    #@14c2
    .line 1878
    .restart local v43    # "_arg0":I
    move-object/from16 v0, p0

    #@14c4
    move/from16 v1, v43

    #@14c6
    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->setInstallLocation(I)Z

    #@14c9
    move-result v92

    #@14ca
    .line 1879
    .restart local v92    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@14cd
    .line 1880
    if-eqz v92, :cond_57

    #@14cf
    const/4 v6, 0x1

    #@14d0
    :goto_57
    move-object/from16 v0, p3

    #@14d2
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@14d5
    .line 1881
    const/4 v6, 0x1

    #@14d6
    return v6

    #@14d7
    .line 1880
    :cond_57
    const/4 v6, 0x0

    #@14d8
    goto :goto_57

    #@14d9
    .line 1885
    .end local v43    # "_arg0":I
    .end local v92    # "_result":Z
    :sswitch_7c
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@14dc
    move-object/from16 v0, p2

    #@14de
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@14e1
    .line 1886
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getInstallLocation()I

    #@14e4
    move-result v73

    #@14e5
    .line 1887
    .restart local v73    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@14e8
    .line 1888
    move-object/from16 v0, p3

    #@14ea
    move/from16 v1, v73

    #@14ec
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@14ef
    .line 1889
    const/4 v6, 0x1

    #@14f0
    return v6

    #@14f1
    .line 1893
    .end local v73    # "_result":I
    :sswitch_7d
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@14f4
    move-object/from16 v0, p2

    #@14f6
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@14f9
    .line 1895
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@14fc
    move-result-object v7

    #@14fd
    .line 1897
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1500
    move-result v34

    #@1501
    .line 1898
    .restart local v34    # "_arg1":I
    move-object/from16 v0, p0

    #@1503
    move/from16 v1, v34

    #@1505
    invoke-virtual {v0, v7, v1}, Landroid/content/pm/IPackageManager$Stub;->installExistingPackageAsUser(Ljava/lang/String;I)I

    #@1508
    move-result v73

    #@1509
    .line 1899
    .restart local v73    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@150c
    .line 1900
    move-object/from16 v0, p3

    #@150e
    move/from16 v1, v73

    #@1510
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1513
    .line 1901
    const/4 v6, 0x1

    #@1514
    return v6

    #@1515
    .line 1905
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v34    # "_arg1":I
    .end local v73    # "_result":I
    :sswitch_7e
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@1518
    move-object/from16 v0, p2

    #@151a
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@151d
    .line 1907
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1520
    move-result v43

    #@1521
    .line 1909
    .restart local v43    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1524
    move-result v34

    #@1525
    .line 1910
    .restart local v34    # "_arg1":I
    move-object/from16 v0, p0

    #@1527
    move/from16 v1, v43

    #@1529
    move/from16 v2, v34

    #@152b
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->verifyPendingInstall(II)V

    #@152e
    .line 1911
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1531
    .line 1912
    const/4 v6, 0x1

    #@1532
    return v6

    #@1533
    .line 1916
    .end local v34    # "_arg1":I
    .end local v43    # "_arg0":I
    :sswitch_7f
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@1536
    move-object/from16 v0, p2

    #@1538
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@153b
    .line 1918
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@153e
    move-result v43

    #@153f
    .line 1920
    .restart local v43    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1542
    move-result v34

    #@1543
    .line 1922
    .restart local v34    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@1546
    move-result-wide v66

    #@1547
    .line 1923
    .local v66, "_arg2":J
    move-object/from16 v0, p0

    #@1549
    move/from16 v1, v43

    #@154b
    move/from16 v2, v34

    #@154d
    move-wide/from16 v3, v66

    #@154f
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/pm/IPackageManager$Stub;->extendVerificationTimeout(IIJ)V

    #@1552
    .line 1924
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1555
    .line 1925
    const/4 v6, 0x1

    #@1556
    return v6

    #@1557
    .line 1929
    .end local v34    # "_arg1":I
    .end local v43    # "_arg0":I
    .end local v66    # "_arg2":J
    :sswitch_80
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@155a
    move-object/from16 v0, p2

    #@155c
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@155f
    .line 1931
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1562
    move-result v43

    #@1563
    .line 1933
    .restart local v43    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1566
    move-result v34

    #@1567
    .line 1935
    .restart local v34    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    #@156a
    move-result-object v71

    #@156b
    .line 1936
    .local v71, "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    #@156d
    move/from16 v1, v43

    #@156f
    move/from16 v2, v34

    #@1571
    move-object/from16 v3, v71

    #@1573
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->verifyIntentFilter(IILjava/util/List;)V

    #@1576
    .line 1937
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1579
    .line 1938
    const/4 v6, 0x1

    #@157a
    return v6

    #@157b
    .line 1942
    .end local v34    # "_arg1":I
    .end local v43    # "_arg0":I
    .end local v71    # "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_81
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@157e
    move-object/from16 v0, p2

    #@1580
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1583
    .line 1944
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1586
    move-result-object v7

    #@1587
    .line 1946
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@158a
    move-result v34

    #@158b
    .line 1947
    .restart local v34    # "_arg1":I
    move-object/from16 v0, p0

    #@158d
    move/from16 v1, v34

    #@158f
    invoke-virtual {v0, v7, v1}, Landroid/content/pm/IPackageManager$Stub;->getIntentVerificationStatus(Ljava/lang/String;I)I

    #@1592
    move-result v73

    #@1593
    .line 1948
    .restart local v73    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1596
    .line 1949
    move-object/from16 v0, p3

    #@1598
    move/from16 v1, v73

    #@159a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@159d
    .line 1950
    const/4 v6, 0x1

    #@159e
    return v6

    #@159f
    .line 1954
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v34    # "_arg1":I
    .end local v73    # "_result":I
    :sswitch_82
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@15a2
    move-object/from16 v0, p2

    #@15a4
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@15a7
    .line 1956
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@15aa
    move-result-object v7

    #@15ab
    .line 1958
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@15ae
    move-result v34

    #@15af
    .line 1960
    .restart local v34    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@15b2
    move-result v9

    #@15b3
    .line 1961
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    #@15b5
    move/from16 v1, v34

    #@15b7
    invoke-virtual {v0, v7, v1, v9}, Landroid/content/pm/IPackageManager$Stub;->updateIntentVerificationStatus(Ljava/lang/String;II)Z

    #@15ba
    move-result v92

    #@15bb
    .line 1962
    .restart local v92    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@15be
    .line 1963
    if-eqz v92, :cond_58

    #@15c0
    const/4 v6, 0x1

    #@15c1
    :goto_58
    move-object/from16 v0, p3

    #@15c3
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@15c6
    .line 1964
    const/4 v6, 0x1

    #@15c7
    return v6

    #@15c8
    .line 1963
    :cond_58
    const/4 v6, 0x0

    #@15c9
    goto :goto_58

    #@15ca
    .line 1968
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v34    # "_arg1":I
    .end local v92    # "_result":Z
    :sswitch_83
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@15cd
    move-object/from16 v0, p2

    #@15cf
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@15d2
    .line 1970
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@15d5
    move-result-object v7

    #@15d6
    .line 1971
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@15d8
    invoke-virtual {v0, v7}, Landroid/content/pm/IPackageManager$Stub;->getIntentFilterVerifications(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    #@15db
    move-result-object v82

    #@15dc
    .line 1972
    .restart local v82    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@15df
    .line 1973
    if-eqz v82, :cond_59

    #@15e1
    .line 1974
    const/4 v6, 0x1

    #@15e2
    move-object/from16 v0, p3

    #@15e4
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@15e7
    .line 1975
    const/4 v6, 0x1

    #@15e8
    move-object/from16 v0, v82

    #@15ea
    move-object/from16 v1, p3

    #@15ec
    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    #@15ef
    .line 1980
    :goto_59
    const/4 v6, 0x1

    #@15f0
    return v6

    #@15f1
    .line 1978
    :cond_59
    const/4 v6, 0x0

    #@15f2
    move-object/from16 v0, p3

    #@15f4
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@15f7
    goto :goto_59

    #@15f8
    .line 1984
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v82    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_84
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@15fb
    move-object/from16 v0, p2

    #@15fd
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1600
    .line 1986
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1603
    move-result-object v7

    #@1604
    .line 1987
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@1606
    invoke-virtual {v0, v7}, Landroid/content/pm/IPackageManager$Stub;->getAllIntentFilters(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    #@1609
    move-result-object v82

    #@160a
    .line 1988
    .restart local v82    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@160d
    .line 1989
    if-eqz v82, :cond_5a

    #@160f
    .line 1990
    const/4 v6, 0x1

    #@1610
    move-object/from16 v0, p3

    #@1612
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@1615
    .line 1991
    const/4 v6, 0x1

    #@1616
    move-object/from16 v0, v82

    #@1618
    move-object/from16 v1, p3

    #@161a
    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    #@161d
    .line 1996
    :goto_5a
    const/4 v6, 0x1

    #@161e
    return v6

    #@161f
    .line 1994
    :cond_5a
    const/4 v6, 0x0

    #@1620
    move-object/from16 v0, p3

    #@1622
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@1625
    goto :goto_5a

    #@1626
    .line 2000
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v82    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_85
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@1629
    move-object/from16 v0, p2

    #@162b
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@162e
    .line 2002
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1631
    move-result-object v7

    #@1632
    .line 2004
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1635
    move-result v34

    #@1636
    .line 2005
    .restart local v34    # "_arg1":I
    move-object/from16 v0, p0

    #@1638
    move/from16 v1, v34

    #@163a
    invoke-virtual {v0, v7, v1}, Landroid/content/pm/IPackageManager$Stub;->setDefaultBrowserPackageName(Ljava/lang/String;I)Z

    #@163d
    move-result v92

    #@163e
    .line 2006
    .restart local v92    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1641
    .line 2007
    if-eqz v92, :cond_5b

    #@1643
    const/4 v6, 0x1

    #@1644
    :goto_5b
    move-object/from16 v0, p3

    #@1646
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@1649
    .line 2008
    const/4 v6, 0x1

    #@164a
    return v6

    #@164b
    .line 2007
    :cond_5b
    const/4 v6, 0x0

    #@164c
    goto :goto_5b

    #@164d
    .line 2012
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v34    # "_arg1":I
    .end local v92    # "_result":Z
    :sswitch_86
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@1650
    move-object/from16 v0, p2

    #@1652
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1655
    .line 2014
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1658
    move-result v43

    #@1659
    .line 2015
    .restart local v43    # "_arg0":I
    move-object/from16 v0, p0

    #@165b
    move/from16 v1, v43

    #@165d
    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getDefaultBrowserPackageName(I)Ljava/lang/String;

    #@1660
    move-result-object v90

    #@1661
    .line 2016
    .restart local v90    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1664
    .line 2017
    move-object/from16 v0, p3

    #@1666
    move-object/from16 v1, v90

    #@1668
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@166b
    .line 2018
    const/4 v6, 0x1

    #@166c
    return v6

    #@166d
    .line 2022
    .end local v43    # "_arg0":I
    .end local v90    # "_result":Ljava/lang/String;
    :sswitch_87
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@1670
    move-object/from16 v0, p2

    #@1672
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1675
    .line 2023
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getVerifierDeviceIdentity()Landroid/content/pm/VerifierDeviceIdentity;

    #@1678
    move-result-object v88

    #@1679
    .line 2024
    .local v88, "_result":Landroid/content/pm/VerifierDeviceIdentity;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@167c
    .line 2025
    if-eqz v88, :cond_5c

    #@167e
    .line 2026
    const/4 v6, 0x1

    #@167f
    move-object/from16 v0, p3

    #@1681
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@1684
    .line 2027
    const/4 v6, 0x1

    #@1685
    move-object/from16 v0, v88

    #@1687
    move-object/from16 v1, p3

    #@1689
    invoke-virtual {v0, v1, v6}, Landroid/content/pm/VerifierDeviceIdentity;->writeToParcel(Landroid/os/Parcel;I)V

    #@168c
    .line 2032
    :goto_5c
    const/4 v6, 0x1

    #@168d
    return v6

    #@168e
    .line 2030
    :cond_5c
    const/4 v6, 0x0

    #@168f
    move-object/from16 v0, p3

    #@1691
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@1694
    goto :goto_5c

    #@1695
    .line 2036
    .end local v88    # "_result":Landroid/content/pm/VerifierDeviceIdentity;
    :sswitch_88
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@1698
    move-object/from16 v0, p2

    #@169a
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@169d
    .line 2037
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->isFirstBoot()Z

    #@16a0
    move-result v92

    #@16a1
    .line 2038
    .restart local v92    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@16a4
    .line 2039
    if-eqz v92, :cond_5d

    #@16a6
    const/4 v6, 0x1

    #@16a7
    :goto_5d
    move-object/from16 v0, p3

    #@16a9
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@16ac
    .line 2040
    const/4 v6, 0x1

    #@16ad
    return v6

    #@16ae
    .line 2039
    :cond_5d
    const/4 v6, 0x0

    #@16af
    goto :goto_5d

    #@16b0
    .line 2044
    .end local v92    # "_result":Z
    :sswitch_89
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@16b3
    move-object/from16 v0, p2

    #@16b5
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16b8
    .line 2045
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->isOnlyCoreApps()Z

    #@16bb
    move-result v92

    #@16bc
    .line 2046
    .restart local v92    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@16bf
    .line 2047
    if-eqz v92, :cond_5e

    #@16c1
    const/4 v6, 0x1

    #@16c2
    :goto_5e
    move-object/from16 v0, p3

    #@16c4
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@16c7
    .line 2048
    const/4 v6, 0x1

    #@16c8
    return v6

    #@16c9
    .line 2047
    :cond_5e
    const/4 v6, 0x0

    #@16ca
    goto :goto_5e

    #@16cb
    .line 2052
    .end local v92    # "_result":Z
    :sswitch_8a
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@16ce
    move-object/from16 v0, p2

    #@16d0
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16d3
    .line 2053
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->isUpgrade()Z

    #@16d6
    move-result v92

    #@16d7
    .line 2054
    .restart local v92    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@16da
    .line 2055
    if-eqz v92, :cond_5f

    #@16dc
    const/4 v6, 0x1

    #@16dd
    :goto_5f
    move-object/from16 v0, p3

    #@16df
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@16e2
    .line 2056
    const/4 v6, 0x1

    #@16e3
    return v6

    #@16e4
    .line 2055
    :cond_5f
    const/4 v6, 0x0

    #@16e5
    goto :goto_5f

    #@16e6
    .line 2060
    .end local v92    # "_result":Z
    :sswitch_8b
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@16e9
    move-object/from16 v0, p2

    #@16eb
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16ee
    .line 2062
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@16f1
    move-result-object v7

    #@16f2
    .line 2064
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@16f5
    move-result v6

    #@16f6
    if-eqz v6, :cond_60

    #@16f8
    const/16 v64, 0x1

    #@16fa
    .line 2065
    .restart local v64    # "_arg1":Z
    :goto_60
    move-object/from16 v0, p0

    #@16fc
    move/from16 v1, v64

    #@16fe
    invoke-virtual {v0, v7, v1}, Landroid/content/pm/IPackageManager$Stub;->setPermissionEnforced(Ljava/lang/String;Z)V

    #@1701
    .line 2066
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1704
    .line 2067
    const/4 v6, 0x1

    #@1705
    return v6

    #@1706
    .line 2064
    .end local v64    # "_arg1":Z
    :cond_60
    const/16 v64, 0x0

    #@1708
    goto :goto_60

    #@1709
    .line 2071
    .end local v7    # "_arg0":Ljava/lang/String;
    :sswitch_8c
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@170c
    move-object/from16 v0, p2

    #@170e
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1711
    .line 2073
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1714
    move-result-object v7

    #@1715
    .line 2074
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@1717
    invoke-virtual {v0, v7}, Landroid/content/pm/IPackageManager$Stub;->isPermissionEnforced(Ljava/lang/String;)Z

    #@171a
    move-result v92

    #@171b
    .line 2075
    .restart local v92    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@171e
    .line 2076
    if-eqz v92, :cond_61

    #@1720
    const/4 v6, 0x1

    #@1721
    :goto_61
    move-object/from16 v0, p3

    #@1723
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@1726
    .line 2077
    const/4 v6, 0x1

    #@1727
    return v6

    #@1728
    .line 2076
    :cond_61
    const/4 v6, 0x0

    #@1729
    goto :goto_61

    #@172a
    .line 2081
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v92    # "_result":Z
    :sswitch_8d
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@172d
    move-object/from16 v0, p2

    #@172f
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1732
    .line 2082
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->isStorageLow()Z

    #@1735
    move-result v92

    #@1736
    .line 2083
    .restart local v92    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1739
    .line 2084
    if-eqz v92, :cond_62

    #@173b
    const/4 v6, 0x1

    #@173c
    :goto_62
    move-object/from16 v0, p3

    #@173e
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@1741
    .line 2085
    const/4 v6, 0x1

    #@1742
    return v6

    #@1743
    .line 2084
    :cond_62
    const/4 v6, 0x0

    #@1744
    goto :goto_62

    #@1745
    .line 2089
    .end local v92    # "_result":Z
    :sswitch_8e
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@1748
    move-object/from16 v0, p2

    #@174a
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@174d
    .line 2091
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1750
    move-result-object v7

    #@1751
    .line 2093
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1754
    move-result v6

    #@1755
    if-eqz v6, :cond_63

    #@1757
    const/16 v64, 0x1

    #@1759
    .line 2095
    .local v64, "_arg1":Z
    :goto_63
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@175c
    move-result v9

    #@175d
    .line 2096
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    #@175f
    move/from16 v1, v64

    #@1761
    invoke-virtual {v0, v7, v1, v9}, Landroid/content/pm/IPackageManager$Stub;->setApplicationHiddenSettingAsUser(Ljava/lang/String;ZI)Z

    #@1764
    move-result v92

    #@1765
    .line 2097
    .restart local v92    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1768
    .line 2098
    if-eqz v92, :cond_64

    #@176a
    const/4 v6, 0x1

    #@176b
    :goto_64
    move-object/from16 v0, p3

    #@176d
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@1770
    .line 2099
    const/4 v6, 0x1

    #@1771
    return v6

    #@1772
    .line 2093
    .end local v9    # "_arg2":I
    .end local v64    # "_arg1":Z
    .end local v92    # "_result":Z
    :cond_63
    const/16 v64, 0x0

    #@1774
    .restart local v64    # "_arg1":Z
    goto :goto_63

    #@1775
    .line 2098
    .restart local v9    # "_arg2":I
    .restart local v92    # "_result":Z
    :cond_64
    const/4 v6, 0x0

    #@1776
    goto :goto_64

    #@1777
    .line 2103
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v64    # "_arg1":Z
    .end local v92    # "_result":Z
    :sswitch_8f
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@177a
    move-object/from16 v0, p2

    #@177c
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@177f
    .line 2105
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1782
    move-result-object v7

    #@1783
    .line 2107
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1786
    move-result v34

    #@1787
    .line 2108
    .restart local v34    # "_arg1":I
    move-object/from16 v0, p0

    #@1789
    move/from16 v1, v34

    #@178b
    invoke-virtual {v0, v7, v1}, Landroid/content/pm/IPackageManager$Stub;->getApplicationHiddenSettingAsUser(Ljava/lang/String;I)Z

    #@178e
    move-result v92

    #@178f
    .line 2109
    .restart local v92    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1792
    .line 2110
    if-eqz v92, :cond_65

    #@1794
    const/4 v6, 0x1

    #@1795
    :goto_65
    move-object/from16 v0, p3

    #@1797
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@179a
    .line 2111
    const/4 v6, 0x1

    #@179b
    return v6

    #@179c
    .line 2110
    :cond_65
    const/4 v6, 0x0

    #@179d
    goto :goto_65

    #@179e
    .line 2115
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v34    # "_arg1":I
    .end local v92    # "_result":Z
    :sswitch_90
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@17a1
    move-object/from16 v0, p2

    #@17a3
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@17a6
    .line 2116
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    #@17a9
    move-result-object v77

    #@17aa
    .line 2117
    .local v77, "_result":Landroid/content/pm/IPackageInstaller;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@17ad
    .line 2118
    if-eqz v77, :cond_66

    #@17af
    invoke-interface/range {v77 .. v77}, Landroid/content/pm/IPackageInstaller;->asBinder()Landroid/os/IBinder;

    #@17b2
    move-result-object v6

    #@17b3
    :goto_66
    move-object/from16 v0, p3

    #@17b5
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@17b8
    .line 2119
    const/4 v6, 0x1

    #@17b9
    return v6

    #@17ba
    .line 2118
    :cond_66
    const/4 v6, 0x0

    #@17bb
    goto :goto_66

    #@17bc
    .line 2123
    .end local v77    # "_result":Landroid/content/pm/IPackageInstaller;
    :sswitch_91
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@17bf
    move-object/from16 v0, p2

    #@17c1
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@17c4
    .line 2125
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@17c7
    move-result-object v7

    #@17c8
    .line 2127
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@17cb
    move-result v6

    #@17cc
    if-eqz v6, :cond_67

    #@17ce
    const/16 v64, 0x1

    #@17d0
    .line 2129
    .restart local v64    # "_arg1":Z
    :goto_67
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@17d3
    move-result v9

    #@17d4
    .line 2130
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    #@17d6
    move/from16 v1, v64

    #@17d8
    invoke-virtual {v0, v7, v1, v9}, Landroid/content/pm/IPackageManager$Stub;->setBlockUninstallForUser(Ljava/lang/String;ZI)Z

    #@17db
    move-result v92

    #@17dc
    .line 2131
    .restart local v92    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@17df
    .line 2132
    if-eqz v92, :cond_68

    #@17e1
    const/4 v6, 0x1

    #@17e2
    :goto_68
    move-object/from16 v0, p3

    #@17e4
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@17e7
    .line 2133
    const/4 v6, 0x1

    #@17e8
    return v6

    #@17e9
    .line 2127
    .end local v9    # "_arg2":I
    .end local v64    # "_arg1":Z
    .end local v92    # "_result":Z
    :cond_67
    const/16 v64, 0x0

    #@17eb
    .restart local v64    # "_arg1":Z
    goto :goto_67

    #@17ec
    .line 2132
    .restart local v9    # "_arg2":I
    .restart local v92    # "_result":Z
    :cond_68
    const/4 v6, 0x0

    #@17ed
    goto :goto_68

    #@17ee
    .line 2137
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v64    # "_arg1":Z
    .end local v92    # "_result":Z
    :sswitch_92
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@17f1
    move-object/from16 v0, p2

    #@17f3
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@17f6
    .line 2139
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@17f9
    move-result-object v7

    #@17fa
    .line 2141
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@17fd
    move-result v34

    #@17fe
    .line 2142
    .restart local v34    # "_arg1":I
    move-object/from16 v0, p0

    #@1800
    move/from16 v1, v34

    #@1802
    invoke-virtual {v0, v7, v1}, Landroid/content/pm/IPackageManager$Stub;->getBlockUninstallForUser(Ljava/lang/String;I)Z

    #@1805
    move-result v92

    #@1806
    .line 2143
    .restart local v92    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1809
    .line 2144
    if-eqz v92, :cond_69

    #@180b
    const/4 v6, 0x1

    #@180c
    :goto_69
    move-object/from16 v0, p3

    #@180e
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@1811
    .line 2145
    const/4 v6, 0x1

    #@1812
    return v6

    #@1813
    .line 2144
    :cond_69
    const/4 v6, 0x0

    #@1814
    goto :goto_69

    #@1815
    .line 2149
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v34    # "_arg1":I
    .end local v92    # "_result":Z
    :sswitch_93
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@1818
    move-object/from16 v0, p2

    #@181a
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@181d
    .line 2151
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1820
    move-result-object v7

    #@1821
    .line 2153
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1824
    move-result-object v8

    #@1825
    .line 2154
    .restart local v8    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@1827
    invoke-virtual {v0, v7, v8}, Landroid/content/pm/IPackageManager$Stub;->getKeySetByAlias(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/KeySet;

    #@182a
    move-result-object v79

    #@182b
    .line 2155
    .local v79, "_result":Landroid/content/pm/KeySet;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@182e
    .line 2156
    if-eqz v79, :cond_6a

    #@1830
    .line 2157
    const/4 v6, 0x1

    #@1831
    move-object/from16 v0, p3

    #@1833
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@1836
    .line 2158
    const/4 v6, 0x1

    #@1837
    move-object/from16 v0, v79

    #@1839
    move-object/from16 v1, p3

    #@183b
    invoke-virtual {v0, v1, v6}, Landroid/content/pm/KeySet;->writeToParcel(Landroid/os/Parcel;I)V

    #@183e
    .line 2163
    :goto_6a
    const/4 v6, 0x1

    #@183f
    return v6

    #@1840
    .line 2161
    :cond_6a
    const/4 v6, 0x0

    #@1841
    move-object/from16 v0, p3

    #@1843
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@1846
    goto :goto_6a

    #@1847
    .line 2167
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v79    # "_result":Landroid/content/pm/KeySet;
    :sswitch_94
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@184a
    move-object/from16 v0, p2

    #@184c
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@184f
    .line 2169
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1852
    move-result-object v7

    #@1853
    .line 2170
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@1855
    invoke-virtual {v0, v7}, Landroid/content/pm/IPackageManager$Stub;->getSigningKeySet(Ljava/lang/String;)Landroid/content/pm/KeySet;

    #@1858
    move-result-object v79

    #@1859
    .line 2171
    .restart local v79    # "_result":Landroid/content/pm/KeySet;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@185c
    .line 2172
    if-eqz v79, :cond_6b

    #@185e
    .line 2173
    const/4 v6, 0x1

    #@185f
    move-object/from16 v0, p3

    #@1861
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@1864
    .line 2174
    const/4 v6, 0x1

    #@1865
    move-object/from16 v0, v79

    #@1867
    move-object/from16 v1, p3

    #@1869
    invoke-virtual {v0, v1, v6}, Landroid/content/pm/KeySet;->writeToParcel(Landroid/os/Parcel;I)V

    #@186c
    .line 2179
    :goto_6b
    const/4 v6, 0x1

    #@186d
    return v6

    #@186e
    .line 2177
    :cond_6b
    const/4 v6, 0x0

    #@186f
    move-object/from16 v0, p3

    #@1871
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@1874
    goto :goto_6b

    #@1875
    .line 2183
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v79    # "_result":Landroid/content/pm/KeySet;
    :sswitch_95
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@1878
    move-object/from16 v0, p2

    #@187a
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@187d
    .line 2185
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1880
    move-result-object v7

    #@1881
    .line 2187
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1884
    move-result v6

    #@1885
    if-eqz v6, :cond_6c

    #@1887
    .line 2188
    sget-object v6, Landroid/content/pm/KeySet;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1889
    move-object/from16 v0, p2

    #@188b
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@188e
    move-result-object v61

    #@188f
    check-cast v61, Landroid/content/pm/KeySet;

    #@1891
    .line 2193
    :goto_6c
    move-object/from16 v0, p0

    #@1893
    move-object/from16 v1, v61

    #@1895
    invoke-virtual {v0, v7, v1}, Landroid/content/pm/IPackageManager$Stub;->isPackageSignedByKeySet(Ljava/lang/String;Landroid/content/pm/KeySet;)Z

    #@1898
    move-result v92

    #@1899
    .line 2194
    .restart local v92    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@189c
    .line 2195
    if-eqz v92, :cond_6d

    #@189e
    const/4 v6, 0x1

    #@189f
    :goto_6d
    move-object/from16 v0, p3

    #@18a1
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@18a4
    .line 2196
    const/4 v6, 0x1

    #@18a5
    return v6

    #@18a6
    .line 2191
    .end local v92    # "_result":Z
    :cond_6c
    const/16 v61, 0x0

    #@18a8
    .local v61, "_arg1":Landroid/content/pm/KeySet;
    goto :goto_6c

    #@18a9
    .line 2195
    .end local v61    # "_arg1":Landroid/content/pm/KeySet;
    .restart local v92    # "_result":Z
    :cond_6d
    const/4 v6, 0x0

    #@18aa
    goto :goto_6d

    #@18ab
    .line 2200
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v92    # "_result":Z
    :sswitch_96
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@18ae
    move-object/from16 v0, p2

    #@18b0
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@18b3
    .line 2202
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@18b6
    move-result-object v7

    #@18b7
    .line 2204
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@18ba
    move-result v6

    #@18bb
    if-eqz v6, :cond_6e

    #@18bd
    .line 2205
    sget-object v6, Landroid/content/pm/KeySet;->CREATOR:Landroid/os/Parcelable$Creator;

    #@18bf
    move-object/from16 v0, p2

    #@18c1
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@18c4
    move-result-object v61

    #@18c5
    check-cast v61, Landroid/content/pm/KeySet;

    #@18c7
    .line 2210
    :goto_6e
    move-object/from16 v0, p0

    #@18c9
    move-object/from16 v1, v61

    #@18cb
    invoke-virtual {v0, v7, v1}, Landroid/content/pm/IPackageManager$Stub;->isPackageSignedByKeySetExactly(Ljava/lang/String;Landroid/content/pm/KeySet;)Z

    #@18ce
    move-result v92

    #@18cf
    .line 2211
    .restart local v92    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@18d2
    .line 2212
    if-eqz v92, :cond_6f

    #@18d4
    const/4 v6, 0x1

    #@18d5
    :goto_6f
    move-object/from16 v0, p3

    #@18d7
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@18da
    .line 2213
    const/4 v6, 0x1

    #@18db
    return v6

    #@18dc
    .line 2208
    .end local v92    # "_result":Z
    :cond_6e
    const/16 v61, 0x0

    #@18de
    .restart local v61    # "_arg1":Landroid/content/pm/KeySet;
    goto :goto_6e

    #@18df
    .line 2212
    .end local v61    # "_arg1":Landroid/content/pm/KeySet;
    .restart local v92    # "_result":Z
    :cond_6f
    const/4 v6, 0x0

    #@18e0
    goto :goto_6f

    #@18e1
    .line 2217
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v92    # "_result":Z
    :sswitch_97
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@18e4
    move-object/from16 v0, p2

    #@18e6
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@18e9
    .line 2219
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@18ec
    move-result-object v6

    #@18ed
    invoke-static {v6}, Landroid/content/pm/IOnPermissionsChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IOnPermissionsChangeListener;

    #@18f0
    move-result-object v44

    #@18f1
    .line 2220
    .local v44, "_arg0":Landroid/content/pm/IOnPermissionsChangeListener;
    move-object/from16 v0, p0

    #@18f3
    move-object/from16 v1, v44

    #@18f5
    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->addOnPermissionsChangeListener(Landroid/content/pm/IOnPermissionsChangeListener;)V

    #@18f8
    .line 2221
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@18fb
    .line 2222
    const/4 v6, 0x1

    #@18fc
    return v6

    #@18fd
    .line 2226
    .end local v44    # "_arg0":Landroid/content/pm/IOnPermissionsChangeListener;
    :sswitch_98
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@1900
    move-object/from16 v0, p2

    #@1902
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1905
    .line 2228
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1908
    move-result-object v6

    #@1909
    invoke-static {v6}, Landroid/content/pm/IOnPermissionsChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IOnPermissionsChangeListener;

    #@190c
    move-result-object v44

    #@190d
    .line 2229
    .restart local v44    # "_arg0":Landroid/content/pm/IOnPermissionsChangeListener;
    move-object/from16 v0, p0

    #@190f
    move-object/from16 v1, v44

    #@1911
    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->removeOnPermissionsChangeListener(Landroid/content/pm/IOnPermissionsChangeListener;)V

    #@1914
    .line 2230
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1917
    .line 2231
    const/4 v6, 0x1

    #@1918
    return v6

    #@1919
    .line 2235
    .end local v44    # "_arg0":Landroid/content/pm/IOnPermissionsChangeListener;
    :sswitch_99
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@191c
    move-object/from16 v0, p2

    #@191e
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1921
    .line 2237
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@1924
    move-result-object v53

    #@1925
    .line 2239
    .restart local v53    # "_arg0":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1928
    move-result v34

    #@1929
    .line 2240
    .restart local v34    # "_arg1":I
    move-object/from16 v0, p0

    #@192b
    move-object/from16 v1, v53

    #@192d
    move/from16 v2, v34

    #@192f
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->grantDefaultPermissionsToEnabledCarrierApps([Ljava/lang/String;I)V

    #@1932
    .line 2241
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1935
    .line 2242
    const/4 v6, 0x1

    #@1936
    return v6

    #@1937
    .line 2246
    .end local v34    # "_arg1":I
    .end local v53    # "_arg0":[Ljava/lang/String;
    :sswitch_9a
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@193a
    move-object/from16 v0, p2

    #@193c
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@193f
    .line 2248
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1942
    move-result-object v7

    #@1943
    .line 2250
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1946
    move-result-object v8

    #@1947
    .line 2252
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@194a
    move-result v9

    #@194b
    .line 2253
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    #@194d
    invoke-virtual {v0, v7, v8, v9}, Landroid/content/pm/IPackageManager$Stub;->isPermissionRevokedByPolicy(Ljava/lang/String;Ljava/lang/String;I)Z

    #@1950
    move-result v92

    #@1951
    .line 2254
    .restart local v92    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1954
    .line 2255
    if-eqz v92, :cond_70

    #@1956
    const/4 v6, 0x1

    #@1957
    :goto_70
    move-object/from16 v0, p3

    #@1959
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@195c
    .line 2256
    const/4 v6, 0x1

    #@195d
    return v6

    #@195e
    .line 2255
    :cond_70
    const/4 v6, 0x0

    #@195f
    goto :goto_70

    #@1960
    .line 2260
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v92    # "_result":Z
    :sswitch_9b
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@1963
    move-object/from16 v0, p2

    #@1965
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1968
    .line 2261
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getPermissionControllerPackageName()Ljava/lang/String;

    #@196b
    move-result-object v90

    #@196c
    .line 2262
    .restart local v90    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@196f
    .line 2263
    move-object/from16 v0, p3

    #@1971
    move-object/from16 v1, v90

    #@1973
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1976
    .line 2264
    const/4 v6, 0x1

    #@1977
    return v6

    #@1978
    .line 2268
    .end local v90    # "_result":Ljava/lang/String;
    :sswitch_9c
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@197b
    move-object/from16 v0, p2

    #@197d
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1980
    .line 2270
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1983
    move-result v43

    #@1984
    .line 2271
    .restart local v43    # "_arg0":I
    move-object/from16 v0, p0

    #@1986
    move/from16 v1, v43

    #@1988
    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getEphemeralApplications(I)Landroid/content/pm/ParceledListSlice;

    #@198b
    move-result-object v82

    #@198c
    .line 2272
    .restart local v82    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@198f
    .line 2273
    if-eqz v82, :cond_71

    #@1991
    .line 2274
    const/4 v6, 0x1

    #@1992
    move-object/from16 v0, p3

    #@1994
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@1997
    .line 2275
    const/4 v6, 0x1

    #@1998
    move-object/from16 v0, v82

    #@199a
    move-object/from16 v1, p3

    #@199c
    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    #@199f
    .line 2280
    :goto_71
    const/4 v6, 0x1

    #@19a0
    return v6

    #@19a1
    .line 2278
    :cond_71
    const/4 v6, 0x0

    #@19a2
    move-object/from16 v0, p3

    #@19a4
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@19a7
    goto :goto_71

    #@19a8
    .line 2284
    .end local v43    # "_arg0":I
    .end local v82    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_9d
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@19ab
    move-object/from16 v0, p2

    #@19ad
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@19b0
    .line 2286
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@19b3
    move-result-object v7

    #@19b4
    .line 2288
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@19b7
    move-result v34

    #@19b8
    .line 2289
    .restart local v34    # "_arg1":I
    move-object/from16 v0, p0

    #@19ba
    move/from16 v1, v34

    #@19bc
    invoke-virtual {v0, v7, v1}, Landroid/content/pm/IPackageManager$Stub;->getEphemeralApplicationCookie(Ljava/lang/String;I)[B

    #@19bf
    move-result-object v93

    #@19c0
    .line 2290
    .restart local v93    # "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@19c3
    .line 2291
    move-object/from16 v0, p3

    #@19c5
    move-object/from16 v1, v93

    #@19c7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    #@19ca
    .line 2292
    const/4 v6, 0x1

    #@19cb
    return v6

    #@19cc
    .line 2296
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v34    # "_arg1":I
    .end local v93    # "_result":[B
    :sswitch_9e
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@19cf
    move-object/from16 v0, p2

    #@19d1
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@19d4
    .line 2298
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@19d7
    move-result-object v7

    #@19d8
    .line 2300
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    #@19db
    move-result-object v65

    #@19dc
    .line 2302
    .local v65, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@19df
    move-result v9

    #@19e0
    .line 2303
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    #@19e2
    move-object/from16 v1, v65

    #@19e4
    invoke-virtual {v0, v7, v1, v9}, Landroid/content/pm/IPackageManager$Stub;->setEphemeralApplicationCookie(Ljava/lang/String;[BI)Z

    #@19e7
    move-result v92

    #@19e8
    .line 2304
    .restart local v92    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@19eb
    .line 2305
    if-eqz v92, :cond_72

    #@19ed
    const/4 v6, 0x1

    #@19ee
    :goto_72
    move-object/from16 v0, p3

    #@19f0
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@19f3
    .line 2306
    const/4 v6, 0x1

    #@19f4
    return v6

    #@19f5
    .line 2305
    :cond_72
    const/4 v6, 0x0

    #@19f6
    goto :goto_72

    #@19f7
    .line 2310
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v65    # "_arg1":[B
    .end local v92    # "_result":Z
    :sswitch_9f
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@19fa
    move-object/from16 v0, p2

    #@19fc
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@19ff
    .line 2312
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1a02
    move-result-object v7

    #@1a03
    .line 2314
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1a06
    move-result v34

    #@1a07
    .line 2315
    .restart local v34    # "_arg1":I
    move-object/from16 v0, p0

    #@1a09
    move/from16 v1, v34

    #@1a0b
    invoke-virtual {v0, v7, v1}, Landroid/content/pm/IPackageManager$Stub;->getEphemeralApplicationIcon(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    #@1a0e
    move-result-object v89

    #@1a0f
    .line 2316
    .local v89, "_result":Landroid/graphics/Bitmap;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1a12
    .line 2317
    if-eqz v89, :cond_73

    #@1a14
    .line 2318
    const/4 v6, 0x1

    #@1a15
    move-object/from16 v0, p3

    #@1a17
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@1a1a
    .line 2319
    const/4 v6, 0x1

    #@1a1b
    move-object/from16 v0, v89

    #@1a1d
    move-object/from16 v1, p3

    #@1a1f
    invoke-virtual {v0, v1, v6}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    #@1a22
    .line 2324
    :goto_73
    const/4 v6, 0x1

    #@1a23
    return v6

    #@1a24
    .line 2322
    :cond_73
    const/4 v6, 0x0

    #@1a25
    move-object/from16 v0, p3

    #@1a27
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@1a2a
    goto :goto_73

    #@1a2b
    .line 2328
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v34    # "_arg1":I
    .end local v89    # "_result":Landroid/graphics/Bitmap;
    :sswitch_a0
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@1a2e
    move-object/from16 v0, p2

    #@1a30
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a33
    .line 2330
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1a36
    move-result-object v7

    #@1a37
    .line 2332
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1a3a
    move-result v34

    #@1a3b
    .line 2333
    .restart local v34    # "_arg1":I
    move-object/from16 v0, p0

    #@1a3d
    move/from16 v1, v34

    #@1a3f
    invoke-virtual {v0, v7, v1}, Landroid/content/pm/IPackageManager$Stub;->isEphemeralApplication(Ljava/lang/String;I)Z

    #@1a42
    move-result v92

    #@1a43
    .line 2334
    .restart local v92    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1a46
    .line 2335
    if-eqz v92, :cond_74

    #@1a48
    const/4 v6, 0x1

    #@1a49
    :goto_74
    move-object/from16 v0, p3

    #@1a4b
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@1a4e
    .line 2336
    const/4 v6, 0x1

    #@1a4f
    return v6

    #@1a50
    .line 2335
    :cond_74
    const/4 v6, 0x0

    #@1a51
    goto :goto_74

    #@1a52
    .line 2340
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v34    # "_arg1":I
    .end local v92    # "_result":Z
    :sswitch_a1
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@1a55
    move-object/from16 v0, p2

    #@1a57
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a5a
    .line 2342
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1a5d
    move-result-object v7

    #@1a5e
    .line 2344
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1a61
    move-result v6

    #@1a62
    if-eqz v6, :cond_75

    #@1a64
    const/16 v64, 0x1

    #@1a66
    .line 2345
    .local v64, "_arg1":Z
    :goto_75
    move-object/from16 v0, p0

    #@1a68
    move/from16 v1, v64

    #@1a6a
    invoke-virtual {v0, v7, v1}, Landroid/content/pm/IPackageManager$Stub;->setRequiredForSystemUser(Ljava/lang/String;Z)Z

    #@1a6d
    move-result v92

    #@1a6e
    .line 2346
    .restart local v92    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1a71
    .line 2347
    if-eqz v92, :cond_76

    #@1a73
    const/4 v6, 0x1

    #@1a74
    :goto_76
    move-object/from16 v0, p3

    #@1a76
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@1a79
    .line 2348
    const/4 v6, 0x1

    #@1a7a
    return v6

    #@1a7b
    .line 2344
    .end local v64    # "_arg1":Z
    .end local v92    # "_result":Z
    :cond_75
    const/16 v64, 0x0

    #@1a7d
    goto :goto_75

    #@1a7e
    .line 2347
    .restart local v64    # "_arg1":Z
    .restart local v92    # "_result":Z
    :cond_76
    const/4 v6, 0x0

    #@1a7f
    goto :goto_76

    #@1a80
    .line 2352
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v64    # "_arg1":Z
    .end local v92    # "_result":Z
    :sswitch_a2
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@1a83
    move-object/from16 v0, p2

    #@1a85
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a88
    .line 2353
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getServicesSystemSharedLibraryPackageName()Ljava/lang/String;

    #@1a8b
    move-result-object v90

    #@1a8c
    .line 2354
    .restart local v90    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1a8f
    .line 2355
    move-object/from16 v0, p3

    #@1a91
    move-object/from16 v1, v90

    #@1a93
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1a96
    .line 2356
    const/4 v6, 0x1

    #@1a97
    return v6

    #@1a98
    .line 2360
    .end local v90    # "_result":Ljava/lang/String;
    :sswitch_a3
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@1a9b
    move-object/from16 v0, p2

    #@1a9d
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1aa0
    .line 2361
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getSharedSystemSharedLibraryPackageName()Ljava/lang/String;

    #@1aa3
    move-result-object v90

    #@1aa4
    .line 2362
    .restart local v90    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1aa7
    .line 2363
    move-object/from16 v0, p3

    #@1aa9
    move-object/from16 v1, v90

    #@1aab
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1aae
    .line 2364
    const/4 v6, 0x1

    #@1aaf
    return v6

    #@1ab0
    .line 2368
    .end local v90    # "_result":Ljava/lang/String;
    :sswitch_a4
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@1ab3
    move-object/from16 v0, p2

    #@1ab5
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1ab8
    .line 2370
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1abb
    move-result-object v7

    #@1abc
    .line 2371
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@1abe
    invoke-virtual {v0, v7}, Landroid/content/pm/IPackageManager$Stub;->isPackageDeviceAdminOnAnyUser(Ljava/lang/String;)Z

    #@1ac1
    move-result v92

    #@1ac2
    .line 2372
    .restart local v92    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1ac5
    .line 2373
    if-eqz v92, :cond_77

    #@1ac7
    const/4 v6, 0x1

    #@1ac8
    :goto_77
    move-object/from16 v0, p3

    #@1aca
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@1acd
    .line 2374
    const/4 v6, 0x1

    #@1ace
    return v6

    #@1acf
    .line 2373
    :cond_77
    const/4 v6, 0x0

    #@1ad0
    goto :goto_77

    #@1ad1
    .line 2378
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v92    # "_result":Z
    :sswitch_a5
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    #@1ad4
    move-object/from16 v0, p2

    #@1ad6
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1ad9
    .line 2380
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1adc
    move-result-object v7

    #@1add
    .line 2381
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@1adf
    invoke-virtual {v0, v7}, Landroid/content/pm/IPackageManager$Stub;->getPreviousCodePaths(Ljava/lang/String;)Ljava/util/List;

    #@1ae2
    move-result-object v91

    #@1ae3
    .line 2382
    .restart local v91    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1ae6
    .line 2383
    move-object/from16 v0, p3

    #@1ae8
    move-object/from16 v1, v91

    #@1aea
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    #@1aed
    .line 2384
    const/4 v6, 0x1

    #@1aee
    return v6

    #@1aef
    .line 44
    nop

    #@1af0
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
        0x91 -> :sswitch_91
        0x92 -> :sswitch_92
        0x93 -> :sswitch_93
        0x94 -> :sswitch_94
        0x95 -> :sswitch_95
        0x96 -> :sswitch_96
        0x97 -> :sswitch_97
        0x98 -> :sswitch_98
        0x99 -> :sswitch_99
        0x9a -> :sswitch_9a
        0x9b -> :sswitch_9b
        0x9c -> :sswitch_9c
        0x9d -> :sswitch_9d
        0x9e -> :sswitch_9e
        0x9f -> :sswitch_9f
        0xa0 -> :sswitch_a0
        0xa1 -> :sswitch_a1
        0xa2 -> :sswitch_a2
        0xa3 -> :sswitch_a3
        0xa4 -> :sswitch_a4
        0xa5 -> :sswitch_a5
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
