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
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.content.pm.IPackageManager"

.field static final blacklist TRANSACTION_activitySupportsIntentAsUser:I = 0xc

.field static final greylist-max-o TRANSACTION_addCrossProfileIntentFilter:I = 0x42

.field static final greylist-max-o TRANSACTION_addPermission:I = 0xc0

.field static final greylist-max-o TRANSACTION_addPermissionAsync:I = 0xc1

.field static final greylist-max-o TRANSACTION_addPersistentPreferredActivity:I = 0x3f

.field static final greylist-max-o TRANSACTION_addPreferredActivity:I = 0x3b

.field static final greylist-max-o TRANSACTION_canForwardTo:I = 0x1d

.field static final blacklist TRANSACTION_canPackageQuery:I = 0xd4

.field static final greylist-max-o TRANSACTION_canRequestPackageInstalls:I = 0xa1

.field static final greylist-max-o TRANSACTION_canonicalToCurrentPackageNames:I = 0x8

.field static final greylist-max-o TRANSACTION_checkPackageStartable:I = 0x1

.field static final greylist-max-o TRANSACTION_checkPermission:I = 0xc3

.field static final greylist-max-o TRANSACTION_checkSignatures:I = 0x11

.field static final greylist-max-o TRANSACTION_checkUidPermission:I = 0xc5

.field static final greylist-max-o TRANSACTION_checkUidSignatures:I = 0x12

.field static final greylist-max-o TRANSACTION_clearApplicationProfileData:I = 0x64

.field static final greylist-max-o TRANSACTION_clearApplicationUserData:I = 0x63

.field static final greylist-max-o TRANSACTION_clearCrossProfileIntentFilters:I = 0x44

.field static final greylist-max-o TRANSACTION_clearPackagePersistentPreferredActivities:I = 0x40

.field static final greylist-max-o TRANSACTION_clearPackagePreferredActivities:I = 0x3d

.field static final blacklist TRANSACTION_clearPersistentPreferredActivity:I = 0x41

.field static final greylist-max-o TRANSACTION_currentToCanonicalPackageNames:I = 0x7

.field static final greylist-max-o TRANSACTION_deleteApplicationCacheFiles:I = 0x61

.field static final greylist-max-o TRANSACTION_deleteApplicationCacheFilesAsUser:I = 0x62

.field static final blacklist TRANSACTION_deleteExistingPackageAsUser:I = 0x35

.field static final greylist-max-o TRANSACTION_deletePackageAsUser:I = 0x33

.field static final greylist-max-o TRANSACTION_deletePackageVersioned:I = 0x34

.field static final greylist-max-o TRANSACTION_deletePreloadsFileCache:I = 0xa2

.field static final greylist-max-o TRANSACTION_enterSafeMode:I = 0x6b

.field static final greylist-max-o TRANSACTION_extendVerificationTimeout:I = 0x7c

.field static final greylist-max-o TRANSACTION_findPersistentPreferredActivity:I = 0x1c

.field static final greylist-max-o TRANSACTION_finishPackageInstall:I = 0x2f

.field static final greylist-max-o TRANSACTION_flushPackageRestrictionsAsUser:I = 0x5d

.field static final greylist-max-o TRANSACTION_freeStorage:I = 0x60

.field static final greylist-max-o TRANSACTION_freeStorageAndNotify:I = 0x5f

.field static final greylist-max-o TRANSACTION_getActivityInfo:I = 0xb

.field static final blacklist TRANSACTION_getAllApexDirectories:I = 0xe0

.field static final greylist-max-o TRANSACTION_getAllIntentFilters:I = 0x81

.field static final greylist-max-o TRANSACTION_getAllPackages:I = 0x13

.field static final blacklist TRANSACTION_getAppMetadataFd:I = 0x25

.field static final blacklist TRANSACTION_getAppMetadataSource:I = 0xdb

.field static final greylist-max-o TRANSACTION_getAppOpPermissionPackages:I = 0xbe

.field static final blacklist TRANSACTION_getAppPredictionServicePackageName:I = 0xb1

.field static final greylist-max-o TRANSACTION_getApplicationEnabledSetting:I = 0x5b

.field static final greylist-max-o TRANSACTION_getApplicationHiddenSettingAsUser:I = 0x87

.field static final greylist-max-r TRANSACTION_getApplicationInfo:I = 0x9

.field static final blacklist TRANSACTION_getArchivedAppIcon:I = 0xd9

.field static final blacklist TRANSACTION_getArchivedPackage:I = 0xd8

.field static final greylist-max-o TRANSACTION_getArtManager:I = 0xa7

.field static final blacklist TRANSACTION_getAttentionServicePackageName:I = 0xae

.field static final greylist-max-o TRANSACTION_getBlockUninstallForUser:I = 0x8c

.field static final greylist-max-o TRANSACTION_getChangedPackages:I = 0x9c

.field static final greylist-max-o TRANSACTION_getComponentEnabledSetting:I = 0x59

.field static final blacklist TRANSACTION_getDeclaredSharedLibraries:I = 0xa0

.field static final greylist-max-o TRANSACTION_getDefaultAppsBackup:I = 0x4f

.field static final blacklist TRANSACTION_getDefaultTextClassifierPackageName:I = 0xac

.field static final blacklist TRANSACTION_getDomainVerificationAgent:I = 0xdc

.field static final blacklist TRANSACTION_getDomainVerificationBackup:I = 0x51

.field static final greylist-max-o TRANSACTION_getFlagsForUid:I = 0x18

.field static final greylist-max-o TRANSACTION_getHarmfulAppWarning:I = 0xa9

.field static final blacklist TRANSACTION_getHoldLockToken:I = 0xcf

.field static final greylist-max-o TRANSACTION_getHomeActivities:I = 0x53

.field static final blacklist TRANSACTION_getIncidentReportApproverPackageName:I = 0xb4

.field static final blacklist TRANSACTION_getInitialNonStoppedSystemPackages:I = 0x6a

.field static final greylist-max-o TRANSACTION_getInstallLocation:I = 0x79

.field static final greylist-max-o TRANSACTION_getInstallReason:I = 0x9e

.field static final blacklist TRANSACTION_getInstallSourceInfo:I = 0x37

.field static final greylist-max-o TRANSACTION_getInstalledApplications:I = 0x27

.field static final blacklist TRANSACTION_getInstalledModules:I = 0xb7

.field static final greylist-max-o TRANSACTION_getInstalledPackages:I = 0x24

.field static final greylist-max-o TRANSACTION_getInstallerPackageName:I = 0x36

.field static final greylist-max-o TRANSACTION_getInstantAppAndroidId:I = 0xa6

.field static final greylist-max-o TRANSACTION_getInstantAppCookie:I = 0x94

.field static final greylist-max-o TRANSACTION_getInstantAppIcon:I = 0x96

.field static final greylist-max-o TRANSACTION_getInstantAppInstallerComponent:I = 0xa5

.field static final greylist-max-o TRANSACTION_getInstantAppResolverComponent:I = 0xa3

.field static final greylist-max-o TRANSACTION_getInstantAppResolverSettingsComponent:I = 0xa4

.field static final greylist-max-o TRANSACTION_getInstantApps:I = 0x93

.field static final blacklist TRANSACTION_getInstrumentationInfoAsUser:I = 0x2d

.field static final greylist-max-o TRANSACTION_getIntentFilterVerifications:I = 0x80

.field static final greylist-max-o TRANSACTION_getIntentVerificationStatus:I = 0x7e

.field static final greylist-max-o TRANSACTION_getKeySetByAlias:I = 0x8d

.field static final greylist-max-o TRANSACTION_getLastChosenActivity:I = 0x39

.field static final blacklist TRANSACTION_getLaunchIntentSenderForPackage:I = 0xbd

.field static final blacklist TRANSACTION_getMimeGroup:I = 0xcb

.field static final blacklist TRANSACTION_getModuleInfo:I = 0xb8

.field static final greylist-max-o TRANSACTION_getMoveStatus:I = 0x73

.field static final greylist-max-o TRANSACTION_getNameForUid:I = 0x15

.field static final greylist-max-o TRANSACTION_getNamesForUids:I = 0x16

.field static final greylist-max-o TRANSACTION_getPackageGids:I = 0x6

.field static final greylist-max-o TRANSACTION_getPackageInfo:I = 0x3

.field static final greylist-max-o TRANSACTION_getPackageInfoVersioned:I = 0x4

.field static final greylist-max-o TRANSACTION_getPackageInstaller:I = 0x8a

.field static final greylist-max-o TRANSACTION_getPackageSizeInfo:I = 0x65

.field static final greylist-max-o TRANSACTION_getPackageUid:I = 0x5

.field static final greylist-max-o TRANSACTION_getPackagesForUid:I = 0x14

.field static final greylist-max-o TRANSACTION_getPackagesHoldingPermissions:I = 0x26

.field static final blacklist TRANSACTION_getPageSizeCompatWarningMessage:I = 0xdf

.field static final greylist-max-o TRANSACTION_getPermissionControllerPackageName:I = 0x91

.field static final greylist-max-o TRANSACTION_getPermissionGroupInfo:I = 0xbf

.field static final greylist-max-o TRANSACTION_getPersistentApplications:I = 0x28

.field static final greylist-max-o TRANSACTION_getPreferredActivities:I = 0x3e

.field static final greylist-max-o TRANSACTION_getPreferredActivityBackup:I = 0x4d

.field static final greylist-max-o TRANSACTION_getPrivateFlagsForUid:I = 0x19

.field static final blacklist TRANSACTION_getPropertyAsUser:I = 0xd1

.field static final greylist-max-o TRANSACTION_getProviderInfo:I = 0xf

.field static final greylist-max-o TRANSACTION_getReceiverInfo:I = 0xd

.field static final blacklist TRANSACTION_getRotationResolverPackageName:I = 0xaf

.field static final blacklist TRANSACTION_getRuntimePermissionsVersion:I = 0xb9

.field static final blacklist TRANSACTION_getSdkSandboxPackageName:I = 0x92

.field static final greylist-max-o TRANSACTION_getServiceInfo:I = 0xe

.field static final greylist-max-o TRANSACTION_getServicesSystemSharedLibraryPackageName:I = 0x9a

.field static final blacklist TRANSACTION_getSetupWizardPackageName:I = 0xb3

.field static final greylist-max-o TRANSACTION_getSharedLibraries:I = 0x9f

.field static final greylist-max-o TRANSACTION_getSharedSystemSharedLibraryPackageName:I = 0x9b

.field static final greylist-max-o TRANSACTION_getSigningKeySet:I = 0x8e

.field static final blacklist TRANSACTION_getSplashScreenTheme:I = 0xc7

.field static final greylist-max-o TRANSACTION_getSuspendedPackageAppExtras:I = 0x4b

.field static final blacklist TRANSACTION_getSuspendingPackage:I = 0x4c

.field static final greylist-max-o TRANSACTION_getSystemAvailableFeatures:I = 0x68

.field static final blacklist TRANSACTION_getSystemCaptionsServicePackageName:I = 0xb2

.field static final greylist-max-o TRANSACTION_getSystemSharedLibraryNames:I = 0x66

.field static final blacklist TRANSACTION_getSystemSharedLibraryNamesAndPaths:I = 0x67

.field static final greylist-max-o TRANSACTION_getSystemTextClassifierPackageName:I = 0xad

.field static final blacklist TRANSACTION_getTargetSdkVersion:I = 0xa

.field static final greylist-max-o TRANSACTION_getUidForSharedUser:I = 0x17

.field static final blacklist TRANSACTION_getUnsuspendablePackagesForUser:I = 0x47

.field static final blacklist TRANSACTION_getUserMinAspectRatio:I = 0xc9

.field static final greylist-max-o TRANSACTION_getVerifierDeviceIdentity:I = 0x82

.field static final blacklist TRANSACTION_getWellbeingPackageName:I = 0xb0

.field static final greylist-max-o TRANSACTION_grantRuntimePermission:I = 0xc4

.field static final greylist-max-o TRANSACTION_hasSigningCertificate:I = 0xaa

.field static final greylist-max-o TRANSACTION_hasSystemFeature:I = 0x69

.field static final greylist-max-o TRANSACTION_hasSystemUidErrors:I = 0x6d

.field static final greylist-max-o TRANSACTION_hasUidSigningCertificate:I = 0xab

.field static final blacklist TRANSACTION_holdLock:I = 0xd0

.field static final greylist-max-o TRANSACTION_installExistingPackageAsUser:I = 0x7a

.field static final blacklist TRANSACTION_isAppArchivable:I = 0xda

.field static final blacklist TRANSACTION_isAutoRevokeWhitelisted:I = 0xcc

.field static final blacklist TRANSACTION_isDeviceUpgrading:I = 0x84

.field static final greylist-max-o TRANSACTION_isFirstBoot:I = 0x83

.field static final greylist-max-o TRANSACTION_isInstantApp:I = 0x97

.field static final greylist-max-o TRANSACTION_isPackageAvailable:I = 0x2

.field static final greylist-max-o TRANSACTION_isPackageDeviceAdminOnAnyUser:I = 0x9d

.field static final blacklist TRANSACTION_isPackageQuarantinedForUser:I = 0x49

.field static final greylist-max-o TRANSACTION_isPackageSignedByKeySet:I = 0x8f

.field static final greylist-max-o TRANSACTION_isPackageSignedByKeySetExactly:I = 0x90

.field static final greylist-max-o TRANSACTION_isPackageStateProtected:I = 0xb5

.field static final blacklist TRANSACTION_isPackageStoppedForUser:I = 0x4a

.field static final greylist-max-o TRANSACTION_isPackageSuspendedForUser:I = 0x48

.field static final blacklist TRANSACTION_isPageSizeCompatEnabled:I = 0xde

.field static final greylist-max-o TRANSACTION_isProtectedBroadcast:I = 0x10

.field static final greylist-max-o TRANSACTION_isSafeMode:I = 0x6c

.field static final greylist-max-o TRANSACTION_isStorageLow:I = 0x85

.field static final greylist-max-o TRANSACTION_isUidPrivileged:I = 0x1a

.field static final greylist-max-o TRANSACTION_logAppProcessStartIfNeeded:I = 0x5c

.field static final blacklist TRANSACTION_makeProviderVisible:I = 0xcd

.field static final blacklist TRANSACTION_makeUidVisible:I = 0xce

.field static final greylist-max-o TRANSACTION_movePackage:I = 0x76

.field static final greylist-max-o TRANSACTION_movePrimaryStorage:I = 0x77

.field static final greylist-max-o TRANSACTION_notifyDexLoad:I = 0x6f

.field static final greylist-max-o TRANSACTION_notifyPackageUse:I = 0x6e

.field static final blacklist TRANSACTION_notifyPackagesReplacedReceived:I = 0xbb

.field static final blacklist TRANSACTION_overrideLabelAndIcon:I = 0x55

.field static final greylist-max-o TRANSACTION_performDexOptMode:I = 0x71

.field static final greylist-max-o TRANSACTION_performDexOptSecondary:I = 0x72

.field static final greylist-max-o TRANSACTION_queryContentProviders:I = 0x2c

.field static final blacklist TRANSACTION_queryInstrumentationAsUser:I = 0x2e

.field static final greylist-max-o TRANSACTION_queryIntentActivities:I = 0x1e

.field static final greylist-max-o TRANSACTION_queryIntentActivityOptions:I = 0x1f

.field static final greylist-max-o TRANSACTION_queryIntentContentProviders:I = 0x23

.field static final greylist-max-o TRANSACTION_queryIntentReceivers:I = 0x20

.field static final greylist-max-o TRANSACTION_queryIntentServices:I = 0x22

.field static final blacklist TRANSACTION_queryProperty:I = 0xd2

.field static final greylist-max-o TRANSACTION_querySyncProviders:I = 0x2b

.field static final greylist-max-o TRANSACTION_registerDexModule:I = 0x70

.field static final greylist-max-o TRANSACTION_registerMoveCallback:I = 0x74

.field static final blacklist TRANSACTION_registerPackageMonitorCallback:I = 0xd6

.field static final blacklist TRANSACTION_relinquishUpdateOwnership:I = 0x31

.field static final blacklist TRANSACTION_removeCrossProfileIntentFilter:I = 0x43

.field static final greylist-max-o TRANSACTION_removePermission:I = 0xc2

.field static final greylist-max-o TRANSACTION_replacePreferredActivity:I = 0x3c

.field static final blacklist TRANSACTION_requestPackageChecksums:I = 0xbc

.field static final greylist-max-o TRANSACTION_resetApplicationPreferences:I = 0x38

.field static final greylist-max-o TRANSACTION_resolveContentProvider:I = 0x29

.field static final blacklist TRANSACTION_resolveContentProviderForUid:I = 0x2a

.field static final greylist-max-o TRANSACTION_resolveIntent:I = 0x1b

.field static final greylist-max-o TRANSACTION_resolveService:I = 0x21

.field static final greylist-max-o TRANSACTION_restoreDefaultApps:I = 0x50

.field static final blacklist TRANSACTION_restoreDomainVerification:I = 0x52

.field static final blacklist TRANSACTION_restoreLabelAndIcon:I = 0x56

.field static final greylist-max-o TRANSACTION_restorePreferredActivities:I = 0x4e

.field static final blacklist TRANSACTION_sendDeviceCustomizationReadyBroadcast:I = 0xb6

.field static final greylist-max-o TRANSACTION_setApplicationCategoryHint:I = 0x32

.field static final greylist-max-o TRANSACTION_setApplicationEnabledSetting:I = 0x5a

.field static final greylist-max-o TRANSACTION_setApplicationHiddenSettingAsUser:I = 0x86

.field static final greylist-max-o TRANSACTION_setBlockUninstallForUser:I = 0x8b

.field static final greylist-max-o TRANSACTION_setComponentEnabledSetting:I = 0x57

.field static final blacklist TRANSACTION_setComponentEnabledSettings:I = 0x58

.field static final blacklist TRANSACTION_setDistractingPackageRestrictionsAsUser:I = 0x45

.field static final greylist-max-o TRANSACTION_setHarmfulAppWarning:I = 0xa8

.field static final greylist-max-o TRANSACTION_setHomeActivity:I = 0x54

.field static final greylist-max-o TRANSACTION_setInstallLocation:I = 0x78

.field static final greylist-max-o TRANSACTION_setInstallerPackageName:I = 0x30

.field static final greylist-max-o TRANSACTION_setInstantAppCookie:I = 0x95

.field static final blacklist TRANSACTION_setKeepUninstalledPackages:I = 0xd3

.field static final greylist-max-o TRANSACTION_setLastChosenActivity:I = 0x3a

.field static final blacklist TRANSACTION_setMimeGroup:I = 0xc6

.field static final greylist-max-o TRANSACTION_setPackageStoppedState:I = 0x5e

.field static final greylist-max-o TRANSACTION_setPackagesSuspendedAsUser:I = 0x46

.field static final blacklist TRANSACTION_setPageSizeAppCompatFlagsSettingsOverride:I = 0xdd

.field static final greylist-max-o TRANSACTION_setRequiredForSystemUser:I = 0x98

.field static final blacklist TRANSACTION_setRuntimePermissionsVersion:I = 0xba

.field static final blacklist TRANSACTION_setSplashScreenTheme:I = 0xc8

.field static final blacklist TRANSACTION_setSystemAppHiddenUntilInstalled:I = 0x88

.field static final blacklist TRANSACTION_setSystemAppInstallState:I = 0x89

.field static final greylist-max-o TRANSACTION_setUpdateAvailable:I = 0x99

.field static final blacklist TRANSACTION_setUserMinAspectRatio:I = 0xca

.field static final greylist-max-o TRANSACTION_unregisterMoveCallback:I = 0x75

.field static final blacklist TRANSACTION_unregisterPackageMonitorCallback:I = 0xd7

.field static final greylist-max-o TRANSACTION_updateIntentVerificationStatus:I = 0x7f

.field static final greylist-max-o TRANSACTION_verifyIntentFilter:I = 0x7d

.field static final greylist-max-o TRANSACTION_verifyPendingInstall:I = 0x7b

.field static final blacklist TRANSACTION_waitForHandler:I = 0xd5


# instance fields
.field private final blacklist mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1129
    nop

    .line 1130
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    .line 1129
    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/pm/IPackageManager$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 1131
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PermissionEnforcer;)V
    .registers 4
    .param p1, "enforcer"    # Landroid/os/PermissionEnforcer;

    .line 1119
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 1120
    const-string v0, "android.content.pm.IPackageManager"

    invoke-virtual {p0, p0, v0}, Landroid/content/pm/IPackageManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 1121
    if-eqz p1, :cond_d

    .line 1124
    iput-object p1, p0, Landroid/content/pm/IPackageManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    .line 1125
    return-void

    .line 1122
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "enforcer cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 1138
    if-nez p0, :cond_4

    .line 1139
    const/4 v0, 0x0

    return-object v0

    .line 1141
    :cond_4
    const-string v0, "android.content.pm.IPackageManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 1142
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/content/pm/IPackageManager;

    if-eqz v1, :cond_14

    .line 1143
    move-object v1, v0

    check-cast v1, Landroid/content/pm/IPackageManager;

    return-object v1

    .line 1145
    :cond_14
    new-instance v1, Landroid/content/pm/IPackageManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 1154
    packed-switch p0, :pswitch_data_314

    .line 2054
    const/4 v0, 0x0

    return-object v0

    .line 2050
    :pswitch_5
    const-string v0, "getAllApexDirectories"

    return-object v0

    .line 2046
    :pswitch_8
    const-string v0, "getPageSizeCompatWarningMessage"

    return-object v0

    .line 2042
    :pswitch_b
    const-string/jumbo v0, "isPageSizeCompatEnabled"

    return-object v0

    .line 2038
    :pswitch_f
    const-string/jumbo v0, "setPageSizeAppCompatFlagsSettingsOverride"

    return-object v0

    .line 2034
    :pswitch_13
    const-string v0, "getDomainVerificationAgent"

    return-object v0

    .line 2030
    :pswitch_16
    const-string v0, "getAppMetadataSource"

    return-object v0

    .line 2026
    :pswitch_19
    const-string/jumbo v0, "isAppArchivable"

    return-object v0

    .line 2022
    :pswitch_1d
    const-string v0, "getArchivedAppIcon"

    return-object v0

    .line 2018
    :pswitch_20
    const-string v0, "getArchivedPackage"

    return-object v0

    .line 2014
    :pswitch_23
    const-string/jumbo v0, "unregisterPackageMonitorCallback"

    return-object v0

    .line 2010
    :pswitch_27
    const-string/jumbo v0, "registerPackageMonitorCallback"

    return-object v0

    .line 2006
    :pswitch_2b
    const-string/jumbo v0, "waitForHandler"

    return-object v0

    .line 2002
    :pswitch_2f
    const-string v0, "canPackageQuery"

    return-object v0

    .line 1998
    :pswitch_32
    const-string/jumbo v0, "setKeepUninstalledPackages"

    return-object v0

    .line 1994
    :pswitch_36
    const-string/jumbo v0, "queryProperty"

    return-object v0

    .line 1990
    :pswitch_3a
    const-string v0, "getPropertyAsUser"

    return-object v0

    .line 1986
    :pswitch_3d
    const-string/jumbo v0, "holdLock"

    return-object v0

    .line 1982
    :pswitch_41
    const-string v0, "getHoldLockToken"

    return-object v0

    .line 1978
    :pswitch_44
    const-string/jumbo v0, "makeUidVisible"

    return-object v0

    .line 1974
    :pswitch_48
    const-string/jumbo v0, "makeProviderVisible"

    return-object v0

    .line 1970
    :pswitch_4c
    const-string/jumbo v0, "isAutoRevokeWhitelisted"

    return-object v0

    .line 1966
    :pswitch_50
    const-string v0, "getMimeGroup"

    return-object v0

    .line 1962
    :pswitch_53
    const-string/jumbo v0, "setUserMinAspectRatio"

    return-object v0

    .line 1958
    :pswitch_57
    const-string/jumbo v0, "getUserMinAspectRatio"

    return-object v0

    .line 1954
    :pswitch_5b
    const-string/jumbo v0, "setSplashScreenTheme"

    return-object v0

    .line 1950
    :pswitch_5f
    const-string/jumbo v0, "getSplashScreenTheme"

    return-object v0

    .line 1946
    :pswitch_63
    const-string/jumbo v0, "setMimeGroup"

    return-object v0

    .line 1942
    :pswitch_67
    const-string v0, "checkUidPermission"

    return-object v0

    .line 1938
    :pswitch_6a
    const-string/jumbo v0, "grantRuntimePermission"

    return-object v0

    .line 1934
    :pswitch_6e
    const-string v0, "checkPermission"

    return-object v0

    .line 1930
    :pswitch_71
    const-string/jumbo v0, "removePermission"

    return-object v0

    .line 1926
    :pswitch_75
    const-string v0, "addPermissionAsync"

    return-object v0

    .line 1922
    :pswitch_78
    const-string v0, "addPermission"

    return-object v0

    .line 1918
    :pswitch_7b
    const-string v0, "getPermissionGroupInfo"

    return-object v0

    .line 1914
    :pswitch_7e
    const-string v0, "getAppOpPermissionPackages"

    return-object v0

    .line 1910
    :pswitch_81
    const-string v0, "getLaunchIntentSenderForPackage"

    return-object v0

    .line 1906
    :pswitch_84
    const-string/jumbo v0, "requestPackageChecksums"

    return-object v0

    .line 1902
    :pswitch_88
    const-string/jumbo v0, "notifyPackagesReplacedReceived"

    return-object v0

    .line 1898
    :pswitch_8c
    const-string/jumbo v0, "setRuntimePermissionsVersion"

    return-object v0

    .line 1894
    :pswitch_90
    const-string v0, "getRuntimePermissionsVersion"

    return-object v0

    .line 1890
    :pswitch_93
    const-string v0, "getModuleInfo"

    return-object v0

    .line 1886
    :pswitch_96
    const-string v0, "getInstalledModules"

    return-object v0

    .line 1882
    :pswitch_99
    const-string/jumbo v0, "sendDeviceCustomizationReadyBroadcast"

    return-object v0

    .line 1878
    :pswitch_9d
    const-string/jumbo v0, "isPackageStateProtected"

    return-object v0

    .line 1874
    :pswitch_a1
    const-string v0, "getIncidentReportApproverPackageName"

    return-object v0

    .line 1870
    :pswitch_a4
    const-string v0, "getSetupWizardPackageName"

    return-object v0

    .line 1866
    :pswitch_a7
    const-string/jumbo v0, "getSystemCaptionsServicePackageName"

    return-object v0

    .line 1862
    :pswitch_ab
    const-string v0, "getAppPredictionServicePackageName"

    return-object v0

    .line 1858
    :pswitch_ae
    const-string/jumbo v0, "getWellbeingPackageName"

    return-object v0

    .line 1854
    :pswitch_b2
    const-string v0, "getRotationResolverPackageName"

    return-object v0

    .line 1850
    :pswitch_b5
    const-string v0, "getAttentionServicePackageName"

    return-object v0

    .line 1846
    :pswitch_b8
    const-string/jumbo v0, "getSystemTextClassifierPackageName"

    return-object v0

    .line 1842
    :pswitch_bc
    const-string v0, "getDefaultTextClassifierPackageName"

    return-object v0

    .line 1838
    :pswitch_bf
    const-string/jumbo v0, "hasUidSigningCertificate"

    return-object v0

    .line 1834
    :pswitch_c3
    const-string/jumbo v0, "hasSigningCertificate"

    return-object v0

    .line 1830
    :pswitch_c7
    const-string v0, "getHarmfulAppWarning"

    return-object v0

    .line 1826
    :pswitch_ca
    const-string/jumbo v0, "setHarmfulAppWarning"

    return-object v0

    .line 1822
    :pswitch_ce
    const-string v0, "getArtManager"

    return-object v0

    .line 1818
    :pswitch_d1
    const-string v0, "getInstantAppAndroidId"

    return-object v0

    .line 1814
    :pswitch_d4
    const-string v0, "getInstantAppInstallerComponent"

    return-object v0

    .line 1810
    :pswitch_d7
    const-string v0, "getInstantAppResolverSettingsComponent"

    return-object v0

    .line 1806
    :pswitch_da
    const-string v0, "getInstantAppResolverComponent"

    return-object v0

    .line 1802
    :pswitch_dd
    const-string v0, "deletePreloadsFileCache"

    return-object v0

    .line 1798
    :pswitch_e0
    const-string v0, "canRequestPackageInstalls"

    return-object v0

    .line 1794
    :pswitch_e3
    const-string v0, "getDeclaredSharedLibraries"

    return-object v0

    .line 1790
    :pswitch_e6
    const-string v0, "getSharedLibraries"

    return-object v0

    .line 1786
    :pswitch_e9
    const-string v0, "getInstallReason"

    return-object v0

    .line 1782
    :pswitch_ec
    const-string/jumbo v0, "isPackageDeviceAdminOnAnyUser"

    return-object v0

    .line 1778
    :pswitch_f0
    const-string v0, "getChangedPackages"

    return-object v0

    .line 1774
    :pswitch_f3
    const-string/jumbo v0, "getSharedSystemSharedLibraryPackageName"

    return-object v0

    .line 1770
    :pswitch_f7
    const-string v0, "getServicesSystemSharedLibraryPackageName"

    return-object v0

    .line 1766
    :pswitch_fa
    const-string/jumbo v0, "setUpdateAvailable"

    return-object v0

    .line 1762
    :pswitch_fe
    const-string/jumbo v0, "setRequiredForSystemUser"

    return-object v0

    .line 1758
    :pswitch_102
    const-string/jumbo v0, "isInstantApp"

    return-object v0

    .line 1754
    :pswitch_106
    const-string v0, "getInstantAppIcon"

    return-object v0

    .line 1750
    :pswitch_109
    const-string/jumbo v0, "setInstantAppCookie"

    return-object v0

    .line 1746
    :pswitch_10d
    const-string v0, "getInstantAppCookie"

    return-object v0

    .line 1742
    :pswitch_110
    const-string v0, "getInstantApps"

    return-object v0

    .line 1738
    :pswitch_113
    const-string v0, "getSdkSandboxPackageName"

    return-object v0

    .line 1734
    :pswitch_116
    const-string v0, "getPermissionControllerPackageName"

    return-object v0

    .line 1730
    :pswitch_119
    const-string/jumbo v0, "isPackageSignedByKeySetExactly"

    return-object v0

    .line 1726
    :pswitch_11d
    const-string/jumbo v0, "isPackageSignedByKeySet"

    return-object v0

    .line 1722
    :pswitch_121
    const-string/jumbo v0, "getSigningKeySet"

    return-object v0

    .line 1718
    :pswitch_125
    const-string v0, "getKeySetByAlias"

    return-object v0

    .line 1714
    :pswitch_128
    const-string v0, "getBlockUninstallForUser"

    return-object v0

    .line 1710
    :pswitch_12b
    const-string/jumbo v0, "setBlockUninstallForUser"

    return-object v0

    .line 1706
    :pswitch_12f
    const-string v0, "getPackageInstaller"

    return-object v0

    .line 1702
    :pswitch_132
    const-string/jumbo v0, "setSystemAppInstallState"

    return-object v0

    .line 1698
    :pswitch_136
    const-string/jumbo v0, "setSystemAppHiddenUntilInstalled"

    return-object v0

    .line 1694
    :pswitch_13a
    const-string v0, "getApplicationHiddenSettingAsUser"

    return-object v0

    .line 1690
    :pswitch_13d
    const-string/jumbo v0, "setApplicationHiddenSettingAsUser"

    return-object v0

    .line 1686
    :pswitch_141
    const-string/jumbo v0, "isStorageLow"

    return-object v0

    .line 1682
    :pswitch_145
    const-string/jumbo v0, "isDeviceUpgrading"

    return-object v0

    .line 1678
    :pswitch_149
    const-string/jumbo v0, "isFirstBoot"

    return-object v0

    .line 1674
    :pswitch_14d
    const-string/jumbo v0, "getVerifierDeviceIdentity"

    return-object v0

    .line 1670
    :pswitch_151
    const-string v0, "getAllIntentFilters"

    return-object v0

    .line 1666
    :pswitch_154
    const-string v0, "getIntentFilterVerifications"

    return-object v0

    .line 1662
    :pswitch_157
    const-string/jumbo v0, "updateIntentVerificationStatus"

    return-object v0

    .line 1658
    :pswitch_15b
    const-string v0, "getIntentVerificationStatus"

    return-object v0

    .line 1654
    :pswitch_15e
    const-string/jumbo v0, "verifyIntentFilter"

    return-object v0

    .line 1650
    :pswitch_162
    const-string v0, "extendVerificationTimeout"

    return-object v0

    .line 1646
    :pswitch_165
    const-string/jumbo v0, "verifyPendingInstall"

    return-object v0

    .line 1642
    :pswitch_169
    const-string/jumbo v0, "installExistingPackageAsUser"

    return-object v0

    .line 1638
    :pswitch_16d
    const-string v0, "getInstallLocation"

    return-object v0

    .line 1634
    :pswitch_170
    const-string/jumbo v0, "setInstallLocation"

    return-object v0

    .line 1630
    :pswitch_174
    const-string/jumbo v0, "movePrimaryStorage"

    return-object v0

    .line 1626
    :pswitch_178
    const-string/jumbo v0, "movePackage"

    return-object v0

    .line 1622
    :pswitch_17c
    const-string/jumbo v0, "unregisterMoveCallback"

    return-object v0

    .line 1618
    :pswitch_180
    const-string/jumbo v0, "registerMoveCallback"

    return-object v0

    .line 1614
    :pswitch_184
    const-string v0, "getMoveStatus"

    return-object v0

    .line 1610
    :pswitch_187
    const-string/jumbo v0, "performDexOptSecondary"

    return-object v0

    .line 1606
    :pswitch_18b
    const-string/jumbo v0, "performDexOptMode"

    return-object v0

    .line 1602
    :pswitch_18f
    const-string/jumbo v0, "registerDexModule"

    return-object v0

    .line 1598
    :pswitch_193
    const-string/jumbo v0, "notifyDexLoad"

    return-object v0

    .line 1594
    :pswitch_197
    const-string/jumbo v0, "notifyPackageUse"

    return-object v0

    .line 1590
    :pswitch_19b
    const-string/jumbo v0, "hasSystemUidErrors"

    return-object v0

    .line 1586
    :pswitch_19f
    const-string/jumbo v0, "isSafeMode"

    return-object v0

    .line 1582
    :pswitch_1a3
    const-string v0, "enterSafeMode"

    return-object v0

    .line 1578
    :pswitch_1a6
    const-string v0, "getInitialNonStoppedSystemPackages"

    return-object v0

    .line 1574
    :pswitch_1a9
    const-string/jumbo v0, "hasSystemFeature"

    return-object v0

    .line 1570
    :pswitch_1ad
    const-string/jumbo v0, "getSystemAvailableFeatures"

    return-object v0

    .line 1566
    :pswitch_1b1
    const-string/jumbo v0, "getSystemSharedLibraryNamesAndPaths"

    return-object v0

    .line 1562
    :pswitch_1b5
    const-string/jumbo v0, "getSystemSharedLibraryNames"

    return-object v0

    .line 1558
    :pswitch_1b9
    const-string v0, "getPackageSizeInfo"

    return-object v0

    .line 1554
    :pswitch_1bc
    const-string v0, "clearApplicationProfileData"

    return-object v0

    .line 1550
    :pswitch_1bf
    const-string v0, "clearApplicationUserData"

    return-object v0

    .line 1546
    :pswitch_1c2
    const-string v0, "deleteApplicationCacheFilesAsUser"

    return-object v0

    .line 1542
    :pswitch_1c5
    const-string v0, "deleteApplicationCacheFiles"

    return-object v0

    .line 1538
    :pswitch_1c8
    const-string v0, "freeStorage"

    return-object v0

    .line 1534
    :pswitch_1cb
    const-string v0, "freeStorageAndNotify"

    return-object v0

    .line 1530
    :pswitch_1ce
    const-string/jumbo v0, "setPackageStoppedState"

    return-object v0

    .line 1526
    :pswitch_1d2
    const-string v0, "flushPackageRestrictionsAsUser"

    return-object v0

    .line 1522
    :pswitch_1d5
    const-string/jumbo v0, "logAppProcessStartIfNeeded"

    return-object v0

    .line 1518
    :pswitch_1d9
    const-string v0, "getApplicationEnabledSetting"

    return-object v0

    .line 1514
    :pswitch_1dc
    const-string/jumbo v0, "setApplicationEnabledSetting"

    return-object v0

    .line 1510
    :pswitch_1e0
    const-string v0, "getComponentEnabledSetting"

    return-object v0

    .line 1506
    :pswitch_1e3
    const-string/jumbo v0, "setComponentEnabledSettings"

    return-object v0

    .line 1502
    :pswitch_1e7
    const-string/jumbo v0, "setComponentEnabledSetting"

    return-object v0

    .line 1498
    :pswitch_1eb
    const-string/jumbo v0, "restoreLabelAndIcon"

    return-object v0

    .line 1494
    :pswitch_1ef
    const-string/jumbo v0, "overrideLabelAndIcon"

    return-object v0

    .line 1490
    :pswitch_1f3
    const-string/jumbo v0, "setHomeActivity"

    return-object v0

    .line 1486
    :pswitch_1f7
    const-string v0, "getHomeActivities"

    return-object v0

    .line 1482
    :pswitch_1fa
    const-string/jumbo v0, "restoreDomainVerification"

    return-object v0

    .line 1478
    :pswitch_1fe
    const-string v0, "getDomainVerificationBackup"

    return-object v0

    .line 1474
    :pswitch_201
    const-string/jumbo v0, "restoreDefaultApps"

    return-object v0

    .line 1470
    :pswitch_205
    const-string v0, "getDefaultAppsBackup"

    return-object v0

    .line 1466
    :pswitch_208
    const-string/jumbo v0, "restorePreferredActivities"

    return-object v0

    .line 1462
    :pswitch_20c
    const-string v0, "getPreferredActivityBackup"

    return-object v0

    .line 1458
    :pswitch_20f
    const-string/jumbo v0, "getSuspendingPackage"

    return-object v0

    .line 1454
    :pswitch_213
    const-string/jumbo v0, "getSuspendedPackageAppExtras"

    return-object v0

    .line 1450
    :pswitch_217
    const-string/jumbo v0, "isPackageStoppedForUser"

    return-object v0

    .line 1446
    :pswitch_21b
    const-string/jumbo v0, "isPackageQuarantinedForUser"

    return-object v0

    .line 1442
    :pswitch_21f
    const-string/jumbo v0, "isPackageSuspendedForUser"

    return-object v0

    .line 1438
    :pswitch_223
    const-string/jumbo v0, "getUnsuspendablePackagesForUser"

    return-object v0

    .line 1434
    :pswitch_227
    const-string/jumbo v0, "setPackagesSuspendedAsUser"

    return-object v0

    .line 1430
    :pswitch_22b
    const-string/jumbo v0, "setDistractingPackageRestrictionsAsUser"

    return-object v0

    .line 1426
    :pswitch_22f
    const-string v0, "clearCrossProfileIntentFilters"

    return-object v0

    .line 1422
    :pswitch_232
    const-string/jumbo v0, "removeCrossProfileIntentFilter"

    return-object v0

    .line 1418
    :pswitch_236
    const-string v0, "addCrossProfileIntentFilter"

    return-object v0

    .line 1414
    :pswitch_239
    const-string v0, "clearPersistentPreferredActivity"

    return-object v0

    .line 1410
    :pswitch_23c
    const-string v0, "clearPackagePersistentPreferredActivities"

    return-object v0

    .line 1406
    :pswitch_23f
    const-string v0, "addPersistentPreferredActivity"

    return-object v0

    .line 1402
    :pswitch_242
    const-string v0, "getPreferredActivities"

    return-object v0

    .line 1398
    :pswitch_245
    const-string v0, "clearPackagePreferredActivities"

    return-object v0

    .line 1394
    :pswitch_248
    const-string/jumbo v0, "replacePreferredActivity"

    return-object v0

    .line 1390
    :pswitch_24c
    const-string v0, "addPreferredActivity"

    return-object v0

    .line 1386
    :pswitch_24f
    const-string/jumbo v0, "setLastChosenActivity"

    return-object v0

    .line 1382
    :pswitch_253
    const-string v0, "getLastChosenActivity"

    return-object v0

    .line 1378
    :pswitch_256
    const-string/jumbo v0, "resetApplicationPreferences"

    return-object v0

    .line 1374
    :pswitch_25a
    const-string v0, "getInstallSourceInfo"

    return-object v0

    .line 1370
    :pswitch_25d
    const-string v0, "getInstallerPackageName"

    return-object v0

    .line 1366
    :pswitch_260
    const-string v0, "deleteExistingPackageAsUser"

    return-object v0

    .line 1362
    :pswitch_263
    const-string v0, "deletePackageVersioned"

    return-object v0

    .line 1358
    :pswitch_266
    const-string v0, "deletePackageAsUser"

    return-object v0

    .line 1354
    :pswitch_269
    const-string/jumbo v0, "setApplicationCategoryHint"

    return-object v0

    .line 1350
    :pswitch_26d
    const-string/jumbo v0, "relinquishUpdateOwnership"

    return-object v0

    .line 1346
    :pswitch_271
    const-string/jumbo v0, "setInstallerPackageName"

    return-object v0

    .line 1342
    :pswitch_275
    const-string v0, "finishPackageInstall"

    return-object v0

    .line 1338
    :pswitch_278
    const-string/jumbo v0, "queryInstrumentationAsUser"

    return-object v0

    .line 1334
    :pswitch_27c
    const-string v0, "getInstrumentationInfoAsUser"

    return-object v0

    .line 1330
    :pswitch_27f
    const-string/jumbo v0, "queryContentProviders"

    return-object v0

    .line 1326
    :pswitch_283
    const-string/jumbo v0, "querySyncProviders"

    return-object v0

    .line 1322
    :pswitch_287
    const-string/jumbo v0, "resolveContentProviderForUid"

    return-object v0

    .line 1318
    :pswitch_28b
    const-string/jumbo v0, "resolveContentProvider"

    return-object v0

    .line 1314
    :pswitch_28f
    const-string v0, "getPersistentApplications"

    return-object v0

    .line 1310
    :pswitch_292
    const-string v0, "getInstalledApplications"

    return-object v0

    .line 1306
    :pswitch_295
    const-string v0, "getPackagesHoldingPermissions"

    return-object v0

    .line 1302
    :pswitch_298
    const-string v0, "getAppMetadataFd"

    return-object v0

    .line 1298
    :pswitch_29b
    const-string v0, "getInstalledPackages"

    return-object v0

    .line 1294
    :pswitch_29e
    const-string/jumbo v0, "queryIntentContentProviders"

    return-object v0

    .line 1290
    :pswitch_2a2
    const-string/jumbo v0, "queryIntentServices"

    return-object v0

    .line 1286
    :pswitch_2a6
    const-string/jumbo v0, "resolveService"

    return-object v0

    .line 1282
    :pswitch_2aa
    const-string/jumbo v0, "queryIntentReceivers"

    return-object v0

    .line 1278
    :pswitch_2ae
    const-string/jumbo v0, "queryIntentActivityOptions"

    return-object v0

    .line 1274
    :pswitch_2b2
    const-string/jumbo v0, "queryIntentActivities"

    return-object v0

    .line 1270
    :pswitch_2b6
    const-string v0, "canForwardTo"

    return-object v0

    .line 1266
    :pswitch_2b9
    const-string v0, "findPersistentPreferredActivity"

    return-object v0

    .line 1262
    :pswitch_2bc
    const-string/jumbo v0, "resolveIntent"

    return-object v0

    .line 1258
    :pswitch_2c0
    const-string/jumbo v0, "isUidPrivileged"

    return-object v0

    .line 1254
    :pswitch_2c4
    const-string v0, "getPrivateFlagsForUid"

    return-object v0

    .line 1250
    :pswitch_2c7
    const-string v0, "getFlagsForUid"

    return-object v0

    .line 1246
    :pswitch_2ca
    const-string/jumbo v0, "getUidForSharedUser"

    return-object v0

    .line 1242
    :pswitch_2ce
    const-string v0, "getNamesForUids"

    return-object v0

    .line 1238
    :pswitch_2d1
    const-string v0, "getNameForUid"

    return-object v0

    .line 1234
    :pswitch_2d4
    const-string v0, "getPackagesForUid"

    return-object v0

    .line 1230
    :pswitch_2d7
    const-string v0, "getAllPackages"

    return-object v0

    .line 1226
    :pswitch_2da
    const-string v0, "checkUidSignatures"

    return-object v0

    .line 1222
    :pswitch_2dd
    const-string v0, "checkSignatures"

    return-object v0

    .line 1218
    :pswitch_2e0
    const-string/jumbo v0, "isProtectedBroadcast"

    return-object v0

    .line 1214
    :pswitch_2e4
    const-string v0, "getProviderInfo"

    return-object v0

    .line 1210
    :pswitch_2e7
    const-string v0, "getServiceInfo"

    return-object v0

    .line 1206
    :pswitch_2ea
    const-string v0, "getReceiverInfo"

    return-object v0

    .line 1202
    :pswitch_2ed
    const-string v0, "activitySupportsIntentAsUser"

    return-object v0

    .line 1198
    :pswitch_2f0
    const-string v0, "getActivityInfo"

    return-object v0

    .line 1194
    :pswitch_2f3
    const-string/jumbo v0, "getTargetSdkVersion"

    return-object v0

    .line 1190
    :pswitch_2f7
    const-string v0, "getApplicationInfo"

    return-object v0

    .line 1186
    :pswitch_2fa
    const-string v0, "canonicalToCurrentPackageNames"

    return-object v0

    .line 1182
    :pswitch_2fd
    const-string v0, "currentToCanonicalPackageNames"

    return-object v0

    .line 1178
    :pswitch_300
    const-string v0, "getPackageGids"

    return-object v0

    .line 1174
    :pswitch_303
    const-string v0, "getPackageUid"

    return-object v0

    .line 1170
    :pswitch_306
    const-string v0, "getPackageInfoVersioned"

    return-object v0

    .line 1166
    :pswitch_309
    const-string v0, "getPackageInfo"

    return-object v0

    .line 1162
    :pswitch_30c
    const-string/jumbo v0, "isPackageAvailable"

    return-object v0

    .line 1158
    :pswitch_310
    const-string v0, "checkPackageStartable"

    return-object v0

    nop

    :pswitch_data_314
    .packed-switch 0x1
        :pswitch_310
        :pswitch_30c
        :pswitch_309
        :pswitch_306
        :pswitch_303
        :pswitch_300
        :pswitch_2fd
        :pswitch_2fa
        :pswitch_2f7
        :pswitch_2f3
        :pswitch_2f0
        :pswitch_2ed
        :pswitch_2ea
        :pswitch_2e7
        :pswitch_2e4
        :pswitch_2e0
        :pswitch_2dd
        :pswitch_2da
        :pswitch_2d7
        :pswitch_2d4
        :pswitch_2d1
        :pswitch_2ce
        :pswitch_2ca
        :pswitch_2c7
        :pswitch_2c4
        :pswitch_2c0
        :pswitch_2bc
        :pswitch_2b9
        :pswitch_2b6
        :pswitch_2b2
        :pswitch_2ae
        :pswitch_2aa
        :pswitch_2a6
        :pswitch_2a2
        :pswitch_29e
        :pswitch_29b
        :pswitch_298
        :pswitch_295
        :pswitch_292
        :pswitch_28f
        :pswitch_28b
        :pswitch_287
        :pswitch_283
        :pswitch_27f
        :pswitch_27c
        :pswitch_278
        :pswitch_275
        :pswitch_271
        :pswitch_26d
        :pswitch_269
        :pswitch_266
        :pswitch_263
        :pswitch_260
        :pswitch_25d
        :pswitch_25a
        :pswitch_256
        :pswitch_253
        :pswitch_24f
        :pswitch_24c
        :pswitch_248
        :pswitch_245
        :pswitch_242
        :pswitch_23f
        :pswitch_23c
        :pswitch_239
        :pswitch_236
        :pswitch_232
        :pswitch_22f
        :pswitch_22b
        :pswitch_227
        :pswitch_223
        :pswitch_21f
        :pswitch_21b
        :pswitch_217
        :pswitch_213
        :pswitch_20f
        :pswitch_20c
        :pswitch_208
        :pswitch_205
        :pswitch_201
        :pswitch_1fe
        :pswitch_1fa
        :pswitch_1f7
        :pswitch_1f3
        :pswitch_1ef
        :pswitch_1eb
        :pswitch_1e7
        :pswitch_1e3
        :pswitch_1e0
        :pswitch_1dc
        :pswitch_1d9
        :pswitch_1d5
        :pswitch_1d2
        :pswitch_1ce
        :pswitch_1cb
        :pswitch_1c8
        :pswitch_1c5
        :pswitch_1c2
        :pswitch_1bf
        :pswitch_1bc
        :pswitch_1b9
        :pswitch_1b5
        :pswitch_1b1
        :pswitch_1ad
        :pswitch_1a9
        :pswitch_1a6
        :pswitch_1a3
        :pswitch_19f
        :pswitch_19b
        :pswitch_197
        :pswitch_193
        :pswitch_18f
        :pswitch_18b
        :pswitch_187
        :pswitch_184
        :pswitch_180
        :pswitch_17c
        :pswitch_178
        :pswitch_174
        :pswitch_170
        :pswitch_16d
        :pswitch_169
        :pswitch_165
        :pswitch_162
        :pswitch_15e
        :pswitch_15b
        :pswitch_157
        :pswitch_154
        :pswitch_151
        :pswitch_14d
        :pswitch_149
        :pswitch_145
        :pswitch_141
        :pswitch_13d
        :pswitch_13a
        :pswitch_136
        :pswitch_132
        :pswitch_12f
        :pswitch_12b
        :pswitch_128
        :pswitch_125
        :pswitch_121
        :pswitch_11d
        :pswitch_119
        :pswitch_116
        :pswitch_113
        :pswitch_110
        :pswitch_10d
        :pswitch_109
        :pswitch_106
        :pswitch_102
        :pswitch_fe
        :pswitch_fa
        :pswitch_f7
        :pswitch_f3
        :pswitch_f0
        :pswitch_ec
        :pswitch_e9
        :pswitch_e6
        :pswitch_e3
        :pswitch_e0
        :pswitch_dd
        :pswitch_da
        :pswitch_d7
        :pswitch_d4
        :pswitch_d1
        :pswitch_ce
        :pswitch_ca
        :pswitch_c7
        :pswitch_c3
        :pswitch_bf
        :pswitch_bc
        :pswitch_b8
        :pswitch_b5
        :pswitch_b2
        :pswitch_ae
        :pswitch_ab
        :pswitch_a7
        :pswitch_a4
        :pswitch_a1
        :pswitch_9d
        :pswitch_99
        :pswitch_96
        :pswitch_93
        :pswitch_90
        :pswitch_8c
        :pswitch_88
        :pswitch_84
        :pswitch_81
        :pswitch_7e
        :pswitch_7b
        :pswitch_78
        :pswitch_75
        :pswitch_71
        :pswitch_6e
        :pswitch_6a
        :pswitch_67
        :pswitch_63
        :pswitch_5f
        :pswitch_5b
        :pswitch_57
        :pswitch_53
        :pswitch_50
        :pswitch_4c
        :pswitch_48
        :pswitch_44
        :pswitch_41
        :pswitch_3d
        :pswitch_3a
        :pswitch_36
        :pswitch_32
        :pswitch_2f
        :pswitch_2b
        :pswitch_27
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_19
        :pswitch_16
        :pswitch_13
        :pswitch_f
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method static synthetic blacklist lambda$onTransact$0(Landroid/os/Parcel;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "reply"    # Landroid/os/Parcel;
    .param p1, "k"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/String;

    .line 3411
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3412
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3413
    return-void
.end method

.method static synthetic blacklist lambda$onTransact$1(Landroid/os/Parcel;Ljava/util/Map;I)V
    .registers 5
    .param p0, "data"    # Landroid/os/Parcel;
    .param p1, "_arg1"    # Ljava/util/Map;
    .param p2, "i"    # I

    .line 3482
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3484
    .local v0, "k":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3485
    .local v1, "v":Ljava/lang/String;
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3486
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 1149
    return-object p0
.end method

.method protected blacklist clearApplicationUserData_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9222
    iget-object v0, p0, Landroid/content/pm/IPackageManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/content/pm/IPackageManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/content/pm/IPackageManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CLEAR_APP_USER_DATA"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9223
    return-void
.end method

.method protected blacklist clearCrossProfileIntentFilters_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9179
    iget-object v0, p0, Landroid/content/pm/IPackageManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/content/pm/IPackageManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/content/pm/IPackageManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9180
    return-void
.end method

.method protected blacklist freeStorageAndNotify_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9210
    iget-object v0, p0, Landroid/content/pm/IPackageManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/content/pm/IPackageManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/content/pm/IPackageManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CLEAR_APP_CACHE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9211
    return-void
.end method

.method protected blacklist freeStorage_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9215
    iget-object v0, p0, Landroid/content/pm/IPackageManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/content/pm/IPackageManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/content/pm/IPackageManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CLEAR_APP_CACHE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9216
    return-void
.end method

.method protected blacklist getAppMetadataFd_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9140
    iget-object v0, p0, Landroid/content/pm/IPackageManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/content/pm/IPackageManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/content/pm/IPackageManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.GET_APP_METADATA"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9141
    return-void
.end method

.method protected blacklist getAppMetadataSource_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9398
    iget-object v0, p0, Landroid/content/pm/IPackageManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/content/pm/IPackageManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/content/pm/IPackageManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.GET_APP_METADATA"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9399
    return-void
.end method

.method protected blacklist getInstantAppAndroidId_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9333
    iget-object v0, p0, Landroid/content/pm/IPackageManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/content/pm/IPackageManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/content/pm/IPackageManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCESS_INSTANT_APPS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9334
    return-void
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 9408
    const/16 v0, 0xdf

    return v0
.end method

.method protected blacklist getMoveStatus_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9242
    iget-object v0, p0, Landroid/content/pm/IPackageManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/content/pm/IPackageManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/content/pm/IPackageManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9243
    return-void
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 2061
    invoke-static {p1}, Landroid/content/pm/IPackageManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist getVerifierDeviceIdentity_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9281
    iget-object v0, p0, Landroid/content/pm/IPackageManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/content/pm/IPackageManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/content/pm/IPackageManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.PACKAGE_VERIFICATION_AGENT"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9282
    return-void
.end method

.method protected blacklist makeUidVisible_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9381
    iget-object v0, p0, Landroid/content/pm/IPackageManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/content/pm/IPackageManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/content/pm/IPackageManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MAKE_UID_VISIBLE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9382
    return-void
.end method

.method protected blacklist movePackage_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9257
    iget-object v0, p0, Landroid/content/pm/IPackageManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/content/pm/IPackageManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/content/pm/IPackageManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MOVE_PACKAGE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9258
    return-void
.end method

.method protected blacklist movePrimaryStorage_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9262
    iget-object v0, p0, Landroid/content/pm/IPackageManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/content/pm/IPackageManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/content/pm/IPackageManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MOVE_PACKAGE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9263
    return-void
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 21
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2065
    move-object/from16 v0, p0

    move/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    const-string v13, "android.content.pm.IPackageManager"

    .line 2066
    .local v13, "descriptor":Ljava/lang/String;
    const/4 v14, 0x1

    if-lt v10, v14, :cond_15

    const v1, 0xffffff

    if-gt v10, v1, :cond_15

    .line 2067
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2069
    :cond_15
    const v1, 0x5f4e5446

    if-ne v10, v1, :cond_1e

    .line 2070
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2071
    return v14

    .line 2073
    :cond_1e
    const/4 v1, 0x0

    packed-switch v10, :pswitch_data_1496

    .line 4729
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 4722
    :pswitch_27
    invoke-virtual {v0}, Landroid/content/pm/IPackageManager$Stub;->getAllApexDirectories()Ljava/util/List;

    move-result-object v1

    .line 4723
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 4724
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 4725
    goto/16 :goto_1495

    .line 4713
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_33
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4714
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4715
    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getPageSizeCompatWarningMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4716
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 4717
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4718
    goto/16 :goto_1495

    .line 4703
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_46
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4704
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4705
    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->isPageSizeCompatEnabled(Ljava/lang/String;)Z

    move-result v2

    .line 4706
    .local v2, "_result":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 4707
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4708
    goto/16 :goto_1495

    .line 4692
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_59
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4694
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 4695
    .local v2, "_arg1":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4696
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->setPageSizeAppCompatFlagsSettingsOverride(Ljava/lang/String;Z)V

    .line 4697
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 4698
    goto/16 :goto_1495

    .line 4682
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Z
    :pswitch_6c
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4683
    .local v1, "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4684
    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getDomainVerificationAgent(I)Landroid/content/ComponentName;

    move-result-object v2

    .line 4685
    .local v2, "_result":Landroid/content/ComponentName;
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 4686
    invoke-virtual {v12, v2, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4687
    goto/16 :goto_1495

    .line 4670
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Landroid/content/ComponentName;
    :pswitch_7f
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4672
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4673
    .local v2, "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4674
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->getAppMetadataSource(Ljava/lang/String;I)I

    move-result v3

    .line 4675
    .local v3, "_result":I
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 4676
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4677
    goto/16 :goto_1495

    .line 4658
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":I
    :pswitch_96
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4660
    .restart local v1    # "_arg0":Ljava/lang/String;
    sget-object v2, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 4661
    .local v2, "_arg1":Landroid/os/UserHandle;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4662
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->isAppArchivable(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v3

    .line 4663
    .local v3, "_result":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 4664
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4665
    goto/16 :goto_1495

    .line 4644
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/os/UserHandle;
    .end local v3    # "_result":Z
    :pswitch_b1
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4646
    .restart local v1    # "_arg0":Ljava/lang/String;
    sget-object v2, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 4648
    .restart local v2    # "_arg1":Landroid/os/UserHandle;
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4649
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4650
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->getArchivedAppIcon(Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 4651
    .local v4, "_result":Landroid/graphics/Bitmap;
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 4652
    invoke-virtual {v12, v4, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4653
    goto/16 :goto_1495

    .line 4632
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/os/UserHandle;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_result":Landroid/graphics/Bitmap;
    :pswitch_d0
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4634
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4635
    .local v2, "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4636
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->getArchivedPackage(Ljava/lang/String;I)Landroid/content/pm/ArchivedPackageParcel;

    move-result-object v3

    .line 4637
    .local v3, "_result":Landroid/content/pm/ArchivedPackageParcel;
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 4638
    invoke-virtual {v12, v3, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4639
    goto/16 :goto_1495

    .line 4623
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Landroid/content/pm/ArchivedPackageParcel;
    :pswitch_e7
    invoke-virtual {v11}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v1

    .line 4624
    .local v1, "_arg0":Landroid/os/IRemoteCallback;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4625
    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->unregisterPackageMonitorCallback(Landroid/os/IRemoteCallback;)V

    .line 4626
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 4627
    goto/16 :goto_1495

    .line 4612
    .end local v1    # "_arg0":Landroid/os/IRemoteCallback;
    :pswitch_fa
    invoke-virtual {v11}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v1

    .line 4614
    .restart local v1    # "_arg0":Landroid/os/IRemoteCallback;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4615
    .restart local v2    # "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4616
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->registerPackageMonitorCallback(Landroid/os/IRemoteCallback;I)V

    .line 4617
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 4618
    goto/16 :goto_1495

    .line 4600
    .end local v1    # "_arg0":Landroid/os/IRemoteCallback;
    .end local v2    # "_arg1":I
    :pswitch_111
    invoke-virtual {v11}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 4602
    .local v1, "_arg0":J
    invoke-virtual {v11}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 4603
    .local v3, "_arg1":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4604
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->waitForHandler(JZ)Z

    move-result v4

    .line 4605
    .local v4, "_result":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 4606
    invoke-virtual {v12, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4607
    goto/16 :goto_1495

    .line 4586
    .end local v1    # "_arg0":J
    .end local v3    # "_arg1":Z
    .end local v4    # "_result":Z
    :pswitch_128
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4588
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 4590
    .local v2, "_arg1":[Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 4591
    .local v3, "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4592
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->canPackageQuery(Ljava/lang/String;[Ljava/lang/String;I)[Z

    move-result-object v4

    .line 4593
    .local v4, "_result":[Z
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 4594
    invoke-virtual {v12, v4}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 4595
    goto/16 :goto_1495

    .line 4577
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":[Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_result":[Z
    :pswitch_143
    invoke-virtual {v11}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 4578
    .local v1, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4579
    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->setKeepUninstalledPackages(Ljava/util/List;)V

    .line 4580
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 4581
    goto/16 :goto_1495

    .line 4565
    .end local v1    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_152
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4567
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4568
    .local v2, "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4569
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->queryProperty(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v3

    .line 4570
    .local v3, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 4571
    invoke-virtual {v12, v3, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4572
    goto/16 :goto_1495

    .line 4549
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_169
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4551
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4553
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4555
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 4556
    .local v4, "_arg3":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4557
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/pm/IPackageManager$Stub;->getPropertyAsUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/PackageManager$Property;

    move-result-object v5

    .line 4558
    .local v5, "_result":Landroid/content/pm/PackageManager$Property;
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 4559
    invoke-virtual {v12, v5, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4560
    goto/16 :goto_1495

    .line 4538
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":I
    .end local v5    # "_result":Landroid/content/pm/PackageManager$Property;
    :pswitch_188
    invoke-virtual {v11}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 4540
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4541
    .local v2, "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4542
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->holdLock(Landroid/os/IBinder;I)V

    .line 4543
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 4544
    goto/16 :goto_1495

    .line 4530
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":I
    :pswitch_19b
    invoke-virtual {v0}, Landroid/content/pm/IPackageManager$Stub;->getHoldLockToken()Landroid/os/IBinder;

    move-result-object v1

    .line 4531
    .local v1, "_result":Landroid/os/IBinder;
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 4532
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4533
    goto/16 :goto_1495

    .line 4520
    .end local v1    # "_result":Landroid/os/IBinder;
    :pswitch_1a7
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4522
    .local v1, "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4523
    .restart local v2    # "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4524
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->makeUidVisible(II)V

    .line 4525
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 4526
    goto/16 :goto_1495

    .line 4509
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :pswitch_1ba
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4511
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4512
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4513
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->makeProviderVisible(ILjava/lang/String;)V

    .line 4514
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 4515
    goto/16 :goto_1495

    .line 4499
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    :pswitch_1cd
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4500
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4501
    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->isAutoRevokeWhitelisted(Ljava/lang/String;)Z

    move-result v2

    .line 4502
    .local v2, "_result":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 4503
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4504
    goto/16 :goto_1495

    .line 4487
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_1e0
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4489
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4490
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4491
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->getMimeGroup(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 4492
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 4493
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 4494
    goto/16 :goto_1495

    .line 4474
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_1f7
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4476
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4478
    .local v2, "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 4479
    .local v3, "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4480
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->setUserMinAspectRatio(Ljava/lang/String;II)V

    .line 4481
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 4482
    goto/16 :goto_1495

    .line 4462
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :pswitch_20e
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4464
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4465
    .restart local v2    # "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4466
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->getUserMinAspectRatio(Ljava/lang/String;I)I

    move-result v3

    .line 4467
    .local v3, "_result":I
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 4468
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4469
    goto/16 :goto_1495

    .line 4449
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":I
    :pswitch_225
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4451
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4453
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 4454
    .local v3, "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4455
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->setSplashScreenTheme(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4456
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 4457
    goto/16 :goto_1495

    .line 4437
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    :pswitch_23c
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4439
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4440
    .local v2, "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4441
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->getSplashScreenTheme(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 4442
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 4443
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4444
    goto/16 :goto_1495

    .line 4424
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_253
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4426
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4428
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 4429
    .local v3, "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4430
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->setMimeGroup(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 4431
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 4432
    goto/16 :goto_1495

    .line 4412
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_26a
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4414
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4415
    .local v2, "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4416
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->checkUidPermission(Ljava/lang/String;I)I

    move-result v3

    .line 4417
    .local v3, "_result":I
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 4418
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4419
    goto/16 :goto_1495

    .line 4399
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":I
    :pswitch_281
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4401
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4403
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 4404
    .local v3, "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4405
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4406
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 4407
    goto/16 :goto_1495

    .line 4385
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    :pswitch_298
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4387
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4389
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 4390
    .restart local v3    # "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4391
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    .line 4392
    .local v4, "_result":I
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 4393
    invoke-virtual {v12, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4394
    goto/16 :goto_1495

    .line 4376
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_result":I
    :pswitch_2b3
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4377
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4378
    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->removePermission(Ljava/lang/String;)V

    .line 4379
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 4380
    goto/16 :goto_1495

    .line 4366
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_2c2
    sget-object v1, Landroid/content/pm/PermissionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PermissionInfo;

    .line 4367
    .local v1, "_arg0":Landroid/content/pm/PermissionInfo;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4368
    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->addPermissionAsync(Landroid/content/pm/PermissionInfo;)Z

    move-result v2

    .line 4369
    .local v2, "_result":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 4370
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4371
    goto/16 :goto_1495

    .line 4356
    .end local v1    # "_arg0":Landroid/content/pm/PermissionInfo;
    .end local v2    # "_result":Z
    :pswitch_2d9
    sget-object v1, Landroid/content/pm/PermissionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PermissionInfo;

    .line 4357
    .restart local v1    # "_arg0":Landroid/content/pm/PermissionInfo;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4358
    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->addPermission(Landroid/content/pm/PermissionInfo;)Z

    move-result v2

    .line 4359
    .restart local v2    # "_result":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 4360
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4361
    goto/16 :goto_1495

    .line 4344
    .end local v1    # "_arg0":Landroid/content/pm/PermissionInfo;
    .end local v2    # "_result":Z
    :pswitch_2f0
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4346
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4347
    .local v2, "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4348
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v3

    .line 4349
    .local v3, "_result":Landroid/content/pm/PermissionGroupInfo;
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 4350
    invoke-virtual {v12, v3, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4351
    goto/16 :goto_1495

    .line 4332
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Landroid/content/pm/PermissionGroupInfo;
    :pswitch_307
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4334
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4335
    .restart local v2    # "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4336
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->getAppOpPermissionPackages(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 4337
    .local v3, "_result":[Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 4338
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 4339
    goto/16 :goto_1495

    .line 4316
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":[Ljava/lang/String;
    :pswitch_31e
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4318
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4320
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4322
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 4323
    .local v4, "_arg3":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4324
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/pm/IPackageManager$Stub;->getLaunchIntentSenderForPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/IntentSender;

    move-result-object v5

    .line 4325
    .local v5, "_result":Landroid/content/IntentSender;
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 4326
    invoke-virtual {v12, v5, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4327
    goto/16 :goto_1495

    .line 4294
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":I
    .end local v5    # "_result":Landroid/content/IntentSender;
    :pswitch_33d
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4296
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 4298
    .local v2, "_arg1":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 4300
    .local v3, "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 4302
    .restart local v4    # "_arg3":I
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    .line 4303
    .local v8, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {v11, v8}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v5

    .line 4305
    .local v5, "_arg4":Ljava/util/List;
    invoke-virtual {v11}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/pm/IOnChecksumsReadyListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IOnChecksumsReadyListener;

    move-result-object v6

    .line 4307
    .local v6, "_arg5":Landroid/content/pm/IOnChecksumsReadyListener;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 4308
    .local v7, "_arg6":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4309
    invoke-virtual/range {v0 .. v7}, Landroid/content/pm/IPackageManager$Stub;->requestPackageChecksums(Ljava/lang/String;ZIILjava/util/List;Landroid/content/pm/IOnChecksumsReadyListener;I)V

    .line 4310
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 4311
    goto/16 :goto_1495

    .line 4285
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":Ljava/util/List;
    .end local v6    # "_arg5":Landroid/content/pm/IOnChecksumsReadyListener;
    .end local v7    # "_arg6":I
    .end local v8    # "cl":Ljava/lang/ClassLoader;
    :pswitch_370
    invoke-virtual {v11}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 4286
    .local v1, "_arg0":[Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4287
    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->notifyPackagesReplacedReceived([Ljava/lang/String;)V

    .line 4288
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 4289
    goto/16 :goto_1495

    .line 4274
    .end local v1    # "_arg0":[Ljava/lang/String;
    :pswitch_37f
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4276
    .local v1, "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4277
    .local v2, "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4278
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->setRuntimePermissionsVersion(II)V

    .line 4279
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 4280
    goto/16 :goto_1495

    .line 4264
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :pswitch_392
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4265
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4266
    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getRuntimePermissionsVersion(I)I

    move-result v2

    .line 4267
    .local v2, "_result":I
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 4268
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4269
    goto/16 :goto_1495

    .line 4252
    .end local v1    # "_arg0":I
    .end local v2    # "_result":I
    :pswitch_3a5
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4254
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4255
    .local v2, "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4256
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->getModuleInfo(Ljava/lang/String;I)Landroid/content/pm/ModuleInfo;

    move-result-object v3

    .line 4257
    .local v3, "_result":Landroid/content/pm/ModuleInfo;
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 4258
    invoke-virtual {v12, v3, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4259
    goto/16 :goto_1495

    .line 4242
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Landroid/content/pm/ModuleInfo;
    :pswitch_3bc
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4243
    .local v1, "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4244
    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getInstalledModules(I)Ljava/util/List;

    move-result-object v2

    .line 4245
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ModuleInfo;>;"
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 4246
    invoke-virtual {v12, v2, v14}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 4247
    goto/16 :goto_1495

    .line 4235
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ModuleInfo;>;"
    :pswitch_3cf
    invoke-virtual {v0}, Landroid/content/pm/IPackageManager$Stub;->sendDeviceCustomizationReadyBroadcast()V

    .line 4236
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 4237
    goto/16 :goto_1495

    .line 4224
    :pswitch_3d7
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4226
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4227
    .local v2, "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4228
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->isPackageStateProtected(Ljava/lang/String;I)Z

    move-result v3

    .line 4229
    .local v3, "_result":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 4230
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4231
    goto/16 :goto_1495

    .line 4216
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Z
    :pswitch_3ee
    invoke-virtual {v0}, Landroid/content/pm/IPackageManager$Stub;->getIncidentReportApproverPackageName()Ljava/lang/String;

    move-result-object v1

    .line 4217
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 4218
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4219
    goto/16 :goto_1495

    .line 4209
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_3fa
    invoke-virtual {v0}, Landroid/content/pm/IPackageManager$Stub;->getSetupWizardPackageName()Ljava/lang/String;

    move-result-object v1

    .line 4210
    .restart local v1    # "_result":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 4211
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4212
    goto/16 :goto_1495

    .line 4202
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_406
    invoke-virtual {v0}, Landroid/content/pm/IPackageManager$Stub;->getSystemCaptionsServicePackageName()Ljava/lang/String;

    move-result-object v1

    .line 4203
    .restart local v1    # "_result":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 4204
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4205
    goto/16 :goto_1495

    .line 4195
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_412
    invoke-virtual {v0}, Landroid/content/pm/IPackageManager$Stub;->getAppPredictionServicePackageName()Ljava/lang/String;

    move-result-object v1

    .line 4196
    .restart local v1    # "_result":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 4197
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4198
    goto/16 :goto_1495

    .line 4188
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_41e
    invoke-virtual {v0}, Landroid/content/pm/IPackageManager$Stub;->getWellbeingPackageName()Ljava/lang/String;

    move-result-object v1

    .line 4189
    .restart local v1    # "_result":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 4190
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4191
    goto/16 :goto_1495

    .line 4181
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_42a
    invoke-virtual {v0}, Landroid/content/pm/IPackageManager$Stub;->getRotationResolverPackageName()Ljava/lang/String;

    move-result-object v1

    .line 4182
    .restart local v1    # "_result":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 4183
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4184
    goto/16 :goto_1495

    .line 4174
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_436
    invoke-virtual {v0}, Landroid/content/pm/IPackageManager$Stub;->getAttentionServicePackageName()Ljava/lang/String;

    move-result-object v1

    .line 4175
    .restart local v1    # "_result":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 4176
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4177
    goto/16 :goto_1495

    .line 4167
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_442
    invoke-virtual {v0}, Landroid/content/pm/IPackageManager$Stub;->getSystemTextClassifierPackageName()Ljava/lang/String;

    move-result-object v1

    .line 4168
    .restart local v1    # "_result":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 4169
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4170
    goto/16 :goto_1495

    .line 4160
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_44e
    invoke-virtual {v0}, Landroid/content/pm/IPackageManager$Stub;->getDefaultTextClassifierPackageName()Ljava/lang/String;

    move-result-object v1

    .line 4161
    .restart local v1    # "_result":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 4162
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4163
    goto/16 :goto_1495

    .line 4147
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_45a
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4149
    .local v1, "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 4151
    .local v2, "_arg1":[B
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 4152
    .local v3, "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4153
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->hasUidSigningCertificate(I[BI)Z

    move-result v4

    .line 4154
    .local v4, "_result":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 4155
    invoke-virtual {v12, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4156
    goto/16 :goto_1495

    .line 4133
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg2":I
    .end local v4    # "_result":Z
    :pswitch_475
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4135
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 4137
    .restart local v2    # "_arg1":[B
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 4138
    .restart local v3    # "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4139
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->hasSigningCertificate(Ljava/lang/String;[BI)Z

    move-result v4

    .line 4140
    .restart local v4    # "_result":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 4141
    invoke-virtual {v12, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4142
    goto/16 :goto_1495

    .line 4115
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg2":I
    .end local v4    # "_result":Z
    :pswitch_490
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4117
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 4118
    .local v3, "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4119
    invoke-virtual {v0, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->getHarmfulAppWarning(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 4120
    .local v4, "_result":Ljava/lang/CharSequence;
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 4121
    if-eqz v4, :cond_4ac

    .line 4122
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 4123
    invoke-static {v4, v12, v14}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto/16 :goto_1495

    .line 4126
    :cond_4ac
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4128
    goto/16 :goto_1495

    .line 4102
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Ljava/lang/CharSequence;
    :pswitch_4b1
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4104
    .restart local v1    # "_arg0":Ljava/lang/String;
    sget-object v2, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 4106
    .local v2, "_arg1":Ljava/lang/CharSequence;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 4107
    .local v3, "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4108
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->setHarmfulAppWarning(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 4109
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 4110
    goto/16 :goto_1495

    .line 4094
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/CharSequence;
    .end local v3    # "_arg2":I
    :pswitch_4cc
    invoke-virtual {v0}, Landroid/content/pm/IPackageManager$Stub;->getArtManager()Landroid/content/pm/dex/IArtManager;

    move-result-object v1

    .line 4095
    .local v1, "_result":Landroid/content/pm/dex/IArtManager;
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 4096
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 4097
    goto/16 :goto_1495

    .line 4083
    .end local v1    # "_result":Landroid/content/pm/dex/IArtManager;
    :pswitch_4d8
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4085
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4086
    .local v2, "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4087
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->getInstantAppAndroidId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 4088
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 4089
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4090
    goto/16 :goto_1495

    .line 4075
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_4ef
    invoke-virtual {v0}, Landroid/content/pm/IPackageManager$Stub;->getInstantAppInstallerComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 4076
    .local v1, "_result":Landroid/content/ComponentName;
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 4077
    invoke-virtual {v12, v1, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4078
    goto/16 :goto_1495

    .line 4068
    .end local v1    # "_result":Landroid/content/ComponentName;
    :pswitch_4fb
    invoke-virtual {v0}, Landroid/content/pm/IPackageManager$Stub;->getInstantAppResolverSettingsComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 4069
    .restart local v1    # "_result":Landroid/content/ComponentName;
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 4070
    invoke-virtual {v12, v1, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4071
    goto/16 :goto_1495

    .line 4061
    .end local v1    # "_result":Landroid/content/ComponentName;
    :pswitch_507
    invoke-virtual {v0}, Landroid/content/pm/IPackageManager$Stub;->getInstantAppResolverComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 4062
    .restart local v1    # "_result":Landroid/content/ComponentName;
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 4063
    invoke-virtual {v12, v1, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4064
    goto/16 :goto_1495

    .line 4055
    .end local v1    # "_result":Landroid/content/ComponentName;
    :pswitch_513
    invoke-virtual {v0}, Landroid/content/pm/IPackageManager$Stub;->deletePreloadsFileCache()V

    .line 4056
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 4057
    goto/16 :goto_1495

    .line 4044
    :pswitch_51b
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4046
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4047
    .restart local v2    # "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4048
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->canRequestPackageInstalls(Ljava/lang/String;I)Z

    move-result v3

    .line 4049
    .local v3, "_result":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 4050
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4051
    goto/16 :goto_1495

    .line 4030
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Z
    :pswitch_532
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4032
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 4034
    .local v2, "_arg1":J
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 4035
    .local v4, "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4036
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/pm/IPackageManager$Stub;->getDeclaredSharedLibraries(Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v5

    .line 4037
    .local v5, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 4038
    invoke-virtual {v12, v5, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4039
    goto/16 :goto_1495

    .line 4016
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":J
    .end local v4    # "_arg2":I
    .end local v5    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_54d
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4018
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 4020
    .restart local v2    # "_arg1":J
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 4021
    .restart local v4    # "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4022
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/pm/IPackageManager$Stub;->getSharedLibraries(Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v5

    .line 4023
    .restart local v5    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 4024
    invoke-virtual {v12, v5, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4025
    goto/16 :goto_1495

    .line 4004
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":J
    .end local v4    # "_arg2":I
    .end local v5    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_568
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4006
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4007
    .local v2, "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4008
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->getInstallReason(Ljava/lang/String;I)I

    move-result v3

    .line 4009
    .local v3, "_result":I
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 4010
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4011
    goto/16 :goto_1495

    .line 3994
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":I
    :pswitch_57f
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3995
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3996
    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->isPackageDeviceAdminOnAnyUser(Ljava/lang/String;)Z

    move-result v2

    .line 3997
    .local v2, "_result":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 3998
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3999
    goto/16 :goto_1495

    .line 3982
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_592
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3984
    .local v1, "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3985
    .local v2, "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3986
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->getChangedPackages(II)Landroid/content/pm/ChangedPackages;

    move-result-object v3

    .line 3987
    .local v3, "_result":Landroid/content/pm/ChangedPackages;
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 3988
    invoke-virtual {v12, v3, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3989
    goto/16 :goto_1495

    .line 3974
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Landroid/content/pm/ChangedPackages;
    :pswitch_5a9
    invoke-virtual {v0}, Landroid/content/pm/IPackageManager$Stub;->getSharedSystemSharedLibraryPackageName()Ljava/lang/String;

    move-result-object v1

    .line 3975
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 3976
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3977
    goto/16 :goto_1495

    .line 3967
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_5b5
    invoke-virtual {v0}, Landroid/content/pm/IPackageManager$Stub;->getServicesSystemSharedLibraryPackageName()Ljava/lang/String;

    move-result-object v1

    .line 3968
    .restart local v1    # "_result":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 3969
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3970
    goto/16 :goto_1495

    .line 3957
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_5c1
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3959
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 3960
    .local v2, "_arg1":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3961
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->setUpdateAvailable(Ljava/lang/String;Z)V

    .line 3962
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 3963
    goto/16 :goto_1495

    .line 3945
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Z
    :pswitch_5d4
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3947
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 3948
    .restart local v2    # "_arg1":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3949
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->setRequiredForSystemUser(Ljava/lang/String;Z)Z

    move-result v3

    .line 3950
    .local v3, "_result":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 3951
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3952
    goto/16 :goto_1495

    .line 3933
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Z
    .end local v3    # "_result":Z
    :pswitch_5eb
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3935
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3936
    .local v2, "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3937
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->isInstantApp(Ljava/lang/String;I)Z

    move-result v3

    .line 3938
    .restart local v3    # "_result":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 3939
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3940
    goto/16 :goto_1495

    .line 3921
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Z
    :pswitch_602
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3923
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3924
    .restart local v2    # "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3925
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->getInstantAppIcon(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 3926
    .local v3, "_result":Landroid/graphics/Bitmap;
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 3927
    invoke-virtual {v12, v3, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3928
    goto/16 :goto_1495

    .line 3907
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Landroid/graphics/Bitmap;
    :pswitch_619
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3909
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 3911
    .local v2, "_arg1":[B
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3912
    .local v3, "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3913
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->setInstantAppCookie(Ljava/lang/String;[BI)Z

    move-result v4

    .line 3914
    .local v4, "_result":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 3915
    invoke-virtual {v12, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3916
    goto/16 :goto_1495

    .line 3895
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg2":I
    .end local v4    # "_result":Z
    :pswitch_634
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3897
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3898
    .local v2, "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3899
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->getInstantAppCookie(Ljava/lang/String;I)[B

    move-result-object v3

    .line 3900
    .local v3, "_result":[B
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 3901
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 3902
    goto/16 :goto_1495

    .line 3885
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":[B
    :pswitch_64b
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3886
    .local v1, "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3887
    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getInstantApps(I)Landroid/content/pm/ParceledListSlice;

    move-result-object v2

    .line 3888
    .local v2, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 3889
    invoke-virtual {v12, v2, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3890
    goto/16 :goto_1495

    .line 3877
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_65e
    invoke-virtual {v0}, Landroid/content/pm/IPackageManager$Stub;->getSdkSandboxPackageName()Ljava/lang/String;

    move-result-object v1

    .line 3878
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 3879
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3880
    goto/16 :goto_1495

    .line 3870
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_66a
    invoke-virtual {v0}, Landroid/content/pm/IPackageManager$Stub;->getPermissionControllerPackageName()Ljava/lang/String;

    move-result-object v1

    .line 3871
    .restart local v1    # "_result":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 3872
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3873
    goto/16 :goto_1495

    .line 3859
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_676
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3861
    .local v1, "_arg0":Ljava/lang/String;
    sget-object v2, Landroid/content/pm/KeySet;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/KeySet;

    .line 3862
    .local v2, "_arg1":Landroid/content/pm/KeySet;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3863
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->isPackageSignedByKeySetExactly(Ljava/lang/String;Landroid/content/pm/KeySet;)Z

    move-result v3

    .line 3864
    .local v3, "_result":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 3865
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3866
    goto/16 :goto_1495

    .line 3847
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/content/pm/KeySet;
    .end local v3    # "_result":Z
    :pswitch_691
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3849
    .restart local v1    # "_arg0":Ljava/lang/String;
    sget-object v2, Landroid/content/pm/KeySet;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/KeySet;

    .line 3850
    .restart local v2    # "_arg1":Landroid/content/pm/KeySet;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3851
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->isPackageSignedByKeySet(Ljava/lang/String;Landroid/content/pm/KeySet;)Z

    move-result v3

    .line 3852
    .restart local v3    # "_result":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 3853
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3854
    goto/16 :goto_1495

    .line 3837
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/content/pm/KeySet;
    .end local v3    # "_result":Z
    :pswitch_6ac
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3838
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3839
    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getSigningKeySet(Ljava/lang/String;)Landroid/content/pm/KeySet;

    move-result-object v2

    .line 3840
    .local v2, "_result":Landroid/content/pm/KeySet;
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 3841
    invoke-virtual {v12, v2, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3842
    goto/16 :goto_1495

    .line 3825
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Landroid/content/pm/KeySet;
    :pswitch_6bf
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3827
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3828
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3829
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->getKeySetByAlias(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/KeySet;

    move-result-object v3

    .line 3830
    .local v3, "_result":Landroid/content/pm/KeySet;
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 3831
    invoke-virtual {v12, v3, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3832
    goto/16 :goto_1495

    .line 3813
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Landroid/content/pm/KeySet;
    :pswitch_6d6
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3815
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3816
    .local v2, "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3817
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->getBlockUninstallForUser(Ljava/lang/String;I)Z

    move-result v3

    .line 3818
    .local v3, "_result":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 3819
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3820
    goto/16 :goto_1495

    .line 3799
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Z
    :pswitch_6ed
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3801
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 3803
    .local v2, "_arg1":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3804
    .local v3, "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3805
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->setBlockUninstallForUser(Ljava/lang/String;ZI)Z

    move-result v4

    .line 3806
    .restart local v4    # "_result":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 3807
    invoke-virtual {v12, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3808
    goto/16 :goto_1495

    .line 3791
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":I
    .end local v4    # "_result":Z
    :pswitch_708
    invoke-virtual {v0}, Landroid/content/pm/IPackageManager$Stub;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v1

    .line 3792
    .local v1, "_result":Landroid/content/pm/IPackageInstaller;
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 3793
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 3794
    goto/16 :goto_1495

    .line 3778
    .end local v1    # "_result":Landroid/content/pm/IPackageInstaller;
    :pswitch_714
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3780
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 3782
    .restart local v2    # "_arg1":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3783
    .restart local v3    # "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3784
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->setSystemAppInstallState(Ljava/lang/String;ZI)Z

    move-result v4

    .line 3785
    .restart local v4    # "_result":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 3786
    invoke-virtual {v12, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3787
    goto/16 :goto_1495

    .line 3767
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":I
    .end local v4    # "_result":Z
    :pswitch_72f
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3769
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 3770
    .restart local v2    # "_arg1":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3771
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->setSystemAppHiddenUntilInstalled(Ljava/lang/String;Z)V

    .line 3772
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 3773
    goto/16 :goto_1495

    .line 3755
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Z
    :pswitch_742
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3757
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3758
    .local v2, "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3759
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->getApplicationHiddenSettingAsUser(Ljava/lang/String;I)Z

    move-result v3

    .line 3760
    .local v3, "_result":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 3761
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3762
    goto/16 :goto_1495

    .line 3741
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Z
    :pswitch_759
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3743
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 3745
    .local v2, "_arg1":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3746
    .local v3, "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3747
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->setApplicationHiddenSettingAsUser(Ljava/lang/String;ZI)Z

    move-result v4

    .line 3748
    .restart local v4    # "_result":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 3749
    invoke-virtual {v12, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3750
    goto/16 :goto_1495

    .line 3733
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":I
    .end local v4    # "_result":Z
    :pswitch_774
    invoke-virtual {v0}, Landroid/content/pm/IPackageManager$Stub;->isStorageLow()Z

    move-result v1

    .line 3734
    .local v1, "_result":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 3735
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3736
    goto/16 :goto_1495

    .line 3726
    .end local v1    # "_result":Z
    :pswitch_780
    invoke-virtual {v0}, Landroid/content/pm/IPackageManager$Stub;->isDeviceUpgrading()Z

    move-result v1

    .line 3727
    .restart local v1    # "_result":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 3728
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3729
    goto/16 :goto_1495

    .line 3719
    .end local v1    # "_result":Z
    :pswitch_78c
    invoke-virtual {v0}, Landroid/content/pm/IPackageManager$Stub;->isFirstBoot()Z

    move-result v1

    .line 3720
    .restart local v1    # "_result":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 3721
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3722
    goto/16 :goto_1495

    .line 3712
    .end local v1    # "_result":Z
    :pswitch_798
    invoke-virtual {v0}, Landroid/content/pm/IPackageManager$Stub;->getVerifierDeviceIdentity()Landroid/content/pm/VerifierDeviceIdentity;

    move-result-object v1

    .line 3713
    .local v1, "_result":Landroid/content/pm/VerifierDeviceIdentity;
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 3714
    invoke-virtual {v12, v1, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3715
    goto/16 :goto_1495

    .line 3703
    .end local v1    # "_result":Landroid/content/pm/VerifierDeviceIdentity;
    :pswitch_7a4
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3704
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3705
    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getAllIntentFilters(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v2

    .line 3706
    .local v2, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 3707
    invoke-virtual {v12, v2, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3708
    goto/16 :goto_1495

    .line 3693
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_7b7
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3694
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3695
    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getIntentFilterVerifications(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v2

    .line 3696
    .restart local v2    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 3697
    invoke-virtual {v12, v2, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3698
    goto/16 :goto_1495

    .line 3679
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_7ca
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3681
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3683
    .local v2, "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3684
    .restart local v3    # "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3685
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->updateIntentVerificationStatus(Ljava/lang/String;II)Z

    move-result v4

    .line 3686
    .restart local v4    # "_result":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 3687
    invoke-virtual {v12, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3688
    goto/16 :goto_1495

    .line 3667
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_result":Z
    :pswitch_7e5
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3669
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3670
    .restart local v2    # "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3671
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->getIntentVerificationStatus(Ljava/lang/String;I)I

    move-result v3

    .line 3672
    .local v3, "_result":I
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 3673
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3674
    goto/16 :goto_1495

    .line 3654
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":I
    :pswitch_7fc
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3656
    .local v1, "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3658
    .restart local v2    # "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 3659
    .local v3, "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3660
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->verifyIntentFilter(IILjava/util/List;)V

    .line 3661
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 3662
    goto/16 :goto_1495

    .line 3641
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_813
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3643
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3645
    .restart local v2    # "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 3646
    .local v3, "_arg2":J
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3647
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/pm/IPackageManager$Stub;->extendVerificationTimeout(IIJ)V

    .line 3648
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 3649
    goto/16 :goto_1495

    .line 3630
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":J
    :pswitch_82a
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3632
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3633
    .restart local v2    # "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3634
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->verifyPendingInstall(II)V

    .line 3635
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 3636
    goto/16 :goto_1495

    .line 3612
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :pswitch_83d
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3614
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3616
    .restart local v2    # "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3618
    .local v3, "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 3620
    .local v4, "_arg3":I
    invoke-virtual {v11}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v5

    .line 3621
    .local v5, "_arg4":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3622
    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/IPackageManager$Stub;->installExistingPackageAsUser(Ljava/lang/String;IIILjava/util/List;)I

    move-result v6

    .line 3623
    .local v6, "_result":I
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 3624
    invoke-virtual {v12, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 3625
    goto/16 :goto_1495

    .line 3604
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "_result":I
    :pswitch_860
    invoke-virtual {v0}, Landroid/content/pm/IPackageManager$Stub;->getInstallLocation()I

    move-result v1

    .line 3605
    .local v1, "_result":I
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 3606
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3607
    goto/16 :goto_1495

    .line 3595
    .end local v1    # "_result":I
    :pswitch_86c
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3596
    .local v1, "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3597
    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->setInstallLocation(I)Z

    move-result v2

    .line 3598
    .local v2, "_result":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 3599
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3600
    goto/16 :goto_1495

    .line 3585
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Z
    :pswitch_87f
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3586
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3587
    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->movePrimaryStorage(Ljava/lang/String;)I

    move-result v2

    .line 3588
    .local v2, "_result":I
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 3589
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3590
    goto/16 :goto_1495

    .line 3573
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":I
    :pswitch_892
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3575
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3576
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3577
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->movePackage(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 3578
    .local v3, "_result":I
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 3579
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3580
    goto/16 :goto_1495

    .line 3564
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":I
    :pswitch_8a9
    invoke-virtual {v11}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/pm/IPackageMoveObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageMoveObserver;

    move-result-object v1

    .line 3565
    .local v1, "_arg0":Landroid/content/pm/IPackageMoveObserver;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3566
    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->unregisterMoveCallback(Landroid/content/pm/IPackageMoveObserver;)V

    .line 3567
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 3568
    goto/16 :goto_1495

    .line 3555
    .end local v1    # "_arg0":Landroid/content/pm/IPackageMoveObserver;
    :pswitch_8bc
    invoke-virtual {v11}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/pm/IPackageMoveObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageMoveObserver;

    move-result-object v1

    .line 3556
    .restart local v1    # "_arg0":Landroid/content/pm/IPackageMoveObserver;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3557
    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->registerMoveCallback(Landroid/content/pm/IPackageMoveObserver;)V

    .line 3558
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 3559
    goto/16 :goto_1495

    .line 3545
    .end local v1    # "_arg0":Landroid/content/pm/IPackageMoveObserver;
    :pswitch_8cf
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3546
    .local v1, "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3547
    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getMoveStatus(I)I

    move-result v2

    .line 3548
    .local v2, "_result":I
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 3549
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3550
    goto/16 :goto_1495

    .line 3531
    .end local v1    # "_arg0":I
    .end local v2    # "_result":I
    :pswitch_8e2
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3533
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3535
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 3536
    .local v3, "_arg2":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3537
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->performDexOptSecondary(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    .line 3538
    .local v4, "_result":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 3539
    invoke-virtual {v12, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3540
    goto/16 :goto_1495

    .line 3511
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Z
    .end local v4    # "_result":Z
    :pswitch_8fd
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3513
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 3515
    .local v2, "_arg1":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3517
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 3519
    .local v4, "_arg3":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 3521
    .local v5, "_arg4":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 3522
    .local v6, "_arg5":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3523
    invoke-virtual/range {v0 .. v6}, Landroid/content/pm/IPackageManager$Stub;->performDexOptMode(Ljava/lang/String;ZLjava/lang/String;ZZLjava/lang/String;)Z

    move-result v7

    .line 3524
    .local v7, "_result":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 3525
    invoke-virtual {v12, v7}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3526
    goto/16 :goto_1495

    .line 3497
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Z
    .end local v5    # "_arg4":Z
    .end local v6    # "_arg5":Ljava/lang/String;
    .end local v7    # "_result":Z
    :pswitch_924
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3499
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3501
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 3503
    .local v3, "_arg2":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/content/pm/IDexModuleRegisterCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IDexModuleRegisterCallback;

    move-result-object v4

    .line 3504
    .local v4, "_arg3":Landroid/content/pm/IDexModuleRegisterCallback;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3505
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/pm/IPackageManager$Stub;->registerDexModule(Ljava/lang/String;Ljava/lang/String;ZLandroid/content/pm/IDexModuleRegisterCallback;)V

    .line 3506
    goto/16 :goto_1495

    .line 3476
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Z
    .end local v4    # "_arg3":Landroid/content/pm/IDexModuleRegisterCallback;
    :pswitch_940
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3479
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3480
    .local v3, "N":I
    if-gez v3, :cond_94c

    const/4 v4, 0x0

    goto :goto_951

    :cond_94c
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 3481
    .local v4, "_arg1":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_951
    invoke-static {v1, v3}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v1

    new-instance v5, Landroid/content/pm/IPackageManager$Stub$$ExternalSyntheticLambda1;

    invoke-direct {v5, v11, v4}, Landroid/content/pm/IPackageManager$Stub$$ExternalSyntheticLambda1;-><init>(Landroid/os/Parcel;Ljava/util/Map;)V

    invoke-interface {v1, v5}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    .line 3489
    .end local v3    # "N":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3490
    .local v1, "_arg2":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3491
    invoke-virtual {v0, v2, v4, v1}, Landroid/content/pm/IPackageManager$Stub;->notifyDexLoad(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 3492
    goto/16 :goto_1495

    .line 3466
    .end local v1    # "_arg2":Ljava/lang/String;
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :pswitch_969
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3468
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3469
    .local v2, "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3470
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->notifyPackageUse(Ljava/lang/String;I)V

    .line 3471
    goto/16 :goto_1495

    .line 3458
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :pswitch_979
    invoke-virtual {v0}, Landroid/content/pm/IPackageManager$Stub;->hasSystemUidErrors()Z

    move-result v1

    .line 3459
    .local v1, "_result":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 3460
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3461
    goto/16 :goto_1495

    .line 3451
    .end local v1    # "_result":Z
    :pswitch_985
    invoke-virtual {v0}, Landroid/content/pm/IPackageManager$Stub;->isSafeMode()Z

    move-result v1

    .line 3452
    .restart local v1    # "_result":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 3453
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3454
    goto/16 :goto_1495

    .line 3445
    .end local v1    # "_result":Z
    :pswitch_991
    invoke-virtual {v0}, Landroid/content/pm/IPackageManager$Stub;->enterSafeMode()V

    .line 3446
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 3447
    goto/16 :goto_1495

    .line 3438
    :pswitch_999
    invoke-virtual {v0}, Landroid/content/pm/IPackageManager$Stub;->getInitialNonStoppedSystemPackages()Ljava/util/List;

    move-result-object v1

    .line 3439
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 3440
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 3441
    goto/16 :goto_1495

    .line 3427
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_9a5
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3429
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3430
    .restart local v2    # "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3431
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v3

    .line 3432
    .local v3, "_result":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 3433
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3434
    goto/16 :goto_1495

    .line 3419
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Z
    :pswitch_9bc
    invoke-virtual {v0}, Landroid/content/pm/IPackageManager$Stub;->getSystemAvailableFeatures()Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    .line 3420
    .local v1, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 3421
    invoke-virtual {v12, v1, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3422
    goto/16 :goto_1495

    .line 3404
    .end local v1    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_9c8
    invoke-virtual {v0}, Landroid/content/pm/IPackageManager$Stub;->getSystemSharedLibraryNamesAndPaths()Ljava/util/Map;

    move-result-object v1

    .line 3405
    .local v1, "_result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 3406
    if-nez v1, :cond_9d7

    .line 3407
    const/4 v2, -0x1

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1495

    .line 3409
    :cond_9d7
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3410
    new-instance v2, Landroid/content/pm/IPackageManager$Stub$$ExternalSyntheticLambda0;

    invoke-direct {v2, v12}, Landroid/content/pm/IPackageManager$Stub$$ExternalSyntheticLambda0;-><init>(Landroid/os/Parcel;)V

    invoke-interface {v1, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 3415
    goto/16 :goto_1495

    .line 3397
    .end local v1    # "_result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :pswitch_9e8
    invoke-virtual {v0}, Landroid/content/pm/IPackageManager$Stub;->getSystemSharedLibraryNames()[Ljava/lang/String;

    move-result-object v1

    .line 3398
    .local v1, "_result":[Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 3399
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 3400
    goto/16 :goto_1495

    .line 3385
    .end local v1    # "_result":[Ljava/lang/String;
    :pswitch_9f4
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3387
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3389
    .restart local v2    # "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/content/pm/IPackageStatsObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageStatsObserver;

    move-result-object v3

    .line 3390
    .local v3, "_arg2":Landroid/content/pm/IPackageStatsObserver;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3391
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->getPackageSizeInfo(Ljava/lang/String;ILandroid/content/pm/IPackageStatsObserver;)V

    .line 3392
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 3393
    goto/16 :goto_1495

    .line 3376
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/content/pm/IPackageStatsObserver;
    :pswitch_a0f
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3377
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3378
    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->clearApplicationProfileData(Ljava/lang/String;)V

    .line 3379
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 3380
    goto/16 :goto_1495

    .line 3363
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_a1e
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3365
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/pm/IPackageDataObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDataObserver;

    move-result-object v2

    .line 3367
    .local v2, "_arg1":Landroid/content/pm/IPackageDataObserver;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3368
    .local v3, "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3369
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;I)V

    .line 3370
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 3371
    goto/16 :goto_1495

    .line 3350
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/content/pm/IPackageDataObserver;
    .end local v3    # "_arg2":I
    :pswitch_a39
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3352
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3354
    .local v2, "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/content/pm/IPackageDataObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDataObserver;

    move-result-object v3

    .line 3355
    .local v3, "_arg2":Landroid/content/pm/IPackageDataObserver;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3356
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->deleteApplicationCacheFilesAsUser(Ljava/lang/String;ILandroid/content/pm/IPackageDataObserver;)V

    .line 3357
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 3358
    goto/16 :goto_1495

    .line 3339
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/content/pm/IPackageDataObserver;
    :pswitch_a54
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3341
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/pm/IPackageDataObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDataObserver;

    move-result-object v2

    .line 3342
    .local v2, "_arg1":Landroid/content/pm/IPackageDataObserver;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3343
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V

    .line 3344
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 3345
    goto/16 :goto_1495

    .line 3324
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/content/pm/IPackageDataObserver;
    :pswitch_a6b
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3326
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 3328
    .local v2, "_arg1":J
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 3330
    .local v4, "_arg2":I
    sget-object v5, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/IntentSender;

    .line 3331
    .local v5, "_arg3":Landroid/content/IntentSender;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3332
    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/IPackageManager$Stub;->freeStorage(Ljava/lang/String;JILandroid/content/IntentSender;)V

    .line 3333
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 3334
    move-object/from16 v0, p0

    goto/16 :goto_1495

    .line 3309
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":J
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Landroid/content/IntentSender;
    :pswitch_a8c
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3311
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 3313
    .restart local v2    # "_arg1":J
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 3315
    .restart local v4    # "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageDataObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDataObserver;

    move-result-object v5

    .line 3316
    .local v5, "_arg3":Landroid/content/pm/IPackageDataObserver;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3317
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/IPackageManager$Stub;->freeStorageAndNotify(Ljava/lang/String;JILandroid/content/pm/IPackageDataObserver;)V

    .line 3318
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 3319
    goto/16 :goto_1495

    .line 3296
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":J
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Landroid/content/pm/IPackageDataObserver;
    :pswitch_aad
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3298
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 3300
    .local v2, "_arg1":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3301
    .local v3, "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3302
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->setPackageStoppedState(Ljava/lang/String;ZI)V

    .line 3303
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 3304
    goto/16 :goto_1495

    .line 3287
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":I
    :pswitch_ac4
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3288
    .local v1, "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3289
    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->flushPackageRestrictionsAsUser(I)V

    .line 3290
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 3291
    goto/16 :goto_1495

    .line 3268
    .end local v1    # "_arg0":I
    :pswitch_ad3
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3270
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3272
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3274
    .restart local v3    # "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 3276
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 3278
    .local v5, "_arg4":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 3279
    .local v6, "_arg5":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3280
    invoke-virtual/range {v0 .. v6}, Landroid/content/pm/IPackageManager$Stub;->logAppProcessStartIfNeeded(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 3281
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 3282
    goto/16 :goto_1495

    .line 3256
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_arg5":I
    :pswitch_af6
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3258
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3259
    .local v2, "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3260
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result v3

    .line 3261
    .local v3, "_result":I
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 3262
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3263
    goto/16 :goto_1495

    .line 3239
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":I
    :pswitch_b0d
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3241
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3243
    .restart local v2    # "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3245
    .local v3, "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 3247
    .local v4, "_arg3":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 3248
    .restart local v5    # "_arg4":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3249
    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/IPackageManager$Stub;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V

    .line 3250
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 3251
    goto/16 :goto_1495

    .line 3227
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":Ljava/lang/String;
    :pswitch_b2c
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 3229
    .local v1, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3230
    .restart local v2    # "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3231
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->getComponentEnabledSetting(Landroid/content/ComponentName;I)I

    move-result v3

    .line 3232
    .local v3, "_result":I
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 3233
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3234
    goto/16 :goto_1495

    .line 3214
    .end local v1    # "_arg0":Landroid/content/ComponentName;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":I
    :pswitch_b47
    sget-object v1, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 3216
    .local v1, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageManager$ComponentEnabledSetting;>;"
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3218
    .restart local v2    # "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3219
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3220
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->setComponentEnabledSettings(Ljava/util/List;ILjava/lang/String;)V

    .line 3221
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 3222
    goto/16 :goto_1495

    .line 3197
    .end local v1    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageManager$ComponentEnabledSetting;>;"
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    :pswitch_b60
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 3199
    .local v1, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3201
    .restart local v2    # "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3203
    .local v3, "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 3205
    .restart local v4    # "_arg3":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 3206
    .restart local v5    # "_arg4":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3207
    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/IPackageManager$Stub;->setComponentEnabledSetting(Landroid/content/ComponentName;IIILjava/lang/String;)V

    .line 3208
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 3209
    goto/16 :goto_1495

    .line 3186
    .end local v1    # "_arg0":Landroid/content/ComponentName;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":Ljava/lang/String;
    :pswitch_b83
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 3188
    .restart local v1    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3189
    .restart local v2    # "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3190
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->restoreLabelAndIcon(Landroid/content/ComponentName;I)V

    .line 3191
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 3192
    goto/16 :goto_1495

    .line 3171
    .end local v1    # "_arg0":Landroid/content/ComponentName;
    .end local v2    # "_arg1":I
    :pswitch_b9a
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 3173
    .restart local v1    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3175
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3177
    .restart local v3    # "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 3178
    .restart local v4    # "_arg3":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3179
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/pm/IPackageManager$Stub;->overrideLabelAndIcon(Landroid/content/ComponentName;Ljava/lang/String;II)V

    .line 3180
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 3181
    goto/16 :goto_1495

    .line 3160
    .end local v1    # "_arg0":Landroid/content/ComponentName;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    :pswitch_bb9
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 3162
    .restart local v1    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3163
    .local v2, "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3164
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->setHomeActivity(Landroid/content/ComponentName;I)V

    .line 3165
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 3166
    goto/16 :goto_1495

    .line 3149
    .end local v1    # "_arg0":Landroid/content/ComponentName;
    .end local v2    # "_arg1":I
    :pswitch_bd0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3150
    .local v1, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3151
    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v2

    .line 3152
    .local v2, "_result":Landroid/content/ComponentName;
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 3153
    invoke-virtual {v12, v2, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3154
    invoke-virtual {v12, v1, v14}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 3155
    goto/16 :goto_1495

    .line 3138
    .end local v1    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v2    # "_result":Landroid/content/ComponentName;
    :pswitch_be7
    invoke-virtual {v11}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 3140
    .local v1, "_arg0":[B
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3141
    .local v2, "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3142
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->restoreDomainVerification([BI)V

    .line 3143
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 3144
    goto/16 :goto_1495

    .line 3128
    .end local v1    # "_arg0":[B
    .end local v2    # "_arg1":I
    :pswitch_bfa
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3129
    .local v1, "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3130
    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getDomainVerificationBackup(I)[B

    move-result-object v2

    .line 3131
    .local v2, "_result":[B
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 3132
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 3133
    goto/16 :goto_1495

    .line 3117
    .end local v1    # "_arg0":I
    .end local v2    # "_result":[B
    :pswitch_c0d
    invoke-virtual {v11}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 3119
    .local v1, "_arg0":[B
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3120
    .local v2, "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3121
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->restoreDefaultApps([BI)V

    .line 3122
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 3123
    goto/16 :goto_1495

    .line 3107
    .end local v1    # "_arg0":[B
    .end local v2    # "_arg1":I
    :pswitch_c20
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3108
    .local v1, "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3109
    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getDefaultAppsBackup(I)[B

    move-result-object v2

    .line 3110
    .local v2, "_result":[B
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 3111
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 3112
    goto/16 :goto_1495

    .line 3096
    .end local v1    # "_arg0":I
    .end local v2    # "_result":[B
    :pswitch_c33
    invoke-virtual {v11}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 3098
    .local v1, "_arg0":[B
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3099
    .local v2, "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3100
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->restorePreferredActivities([BI)V

    .line 3101
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 3102
    goto/16 :goto_1495

    .line 3086
    .end local v1    # "_arg0":[B
    .end local v2    # "_arg1":I
    :pswitch_c46
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3087
    .local v1, "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3088
    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getPreferredActivityBackup(I)[B

    move-result-object v2

    .line 3089
    .local v2, "_result":[B
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 3090
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 3091
    goto/16 :goto_1495

    .line 3074
    .end local v1    # "_arg0":I
    .end local v2    # "_result":[B
    :pswitch_c59
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3076
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3077
    .local v2, "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3078
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->getSuspendingPackage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 3079
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 3080
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3081
    goto/16 :goto_1495

    .line 3062
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_c70
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3064
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3065
    .restart local v2    # "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3066
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->getSuspendedPackageAppExtras(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v3

    .line 3067
    .local v3, "_result":Landroid/os/Bundle;
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 3068
    invoke-virtual {v12, v3, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3069
    goto/16 :goto_1495

    .line 3050
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Landroid/os/Bundle;
    :pswitch_c87
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3052
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3053
    .restart local v2    # "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3054
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->isPackageStoppedForUser(Ljava/lang/String;I)Z

    move-result v3

    .line 3055
    .local v3, "_result":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 3056
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3057
    goto/16 :goto_1495

    .line 3038
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Z
    :pswitch_c9e
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3040
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3041
    .restart local v2    # "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3042
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->isPackageQuarantinedForUser(Ljava/lang/String;I)Z

    move-result v3

    .line 3043
    .restart local v3    # "_result":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 3044
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3045
    goto/16 :goto_1495

    .line 3026
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Z
    :pswitch_cb5
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3028
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3029
    .restart local v2    # "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3030
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->isPackageSuspendedForUser(Ljava/lang/String;I)Z

    move-result v3

    .line 3031
    .restart local v3    # "_result":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 3032
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3033
    goto/16 :goto_1495

    .line 3014
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Z
    :pswitch_ccc
    invoke-virtual {v11}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 3016
    .local v1, "_arg0":[Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3017
    .restart local v2    # "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3018
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->getUnsuspendablePackagesForUser([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 3019
    .local v3, "_result":[Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 3020
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 3021
    goto/16 :goto_1495

    .line 2988
    .end local v1    # "_arg0":[Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":[Ljava/lang/String;
    :pswitch_ce3
    invoke-virtual {v11}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 2990
    .restart local v1    # "_arg0":[Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 2992
    .local v2, "_arg1":Z
    sget-object v3, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PersistableBundle;

    .line 2994
    .local v3, "_arg2":Landroid/os/PersistableBundle;
    sget-object v4, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PersistableBundle;

    .line 2996
    .local v4, "_arg3":Landroid/os/PersistableBundle;
    sget-object v5, Landroid/content/pm/SuspendDialogInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/SuspendDialogInfo;

    .line 2998
    .local v5, "_arg4":Landroid/content/pm/SuspendDialogInfo;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 3000
    .restart local v6    # "_arg5":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 3002
    .local v7, "_arg6":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 3004
    .local v8, "_arg7":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 3005
    .local v9, "_arg8":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3006
    invoke-virtual/range {v0 .. v9}, Landroid/content/pm/IPackageManager$Stub;->setPackagesSuspendedAsUser([Ljava/lang/String;ZLandroid/os/PersistableBundle;Landroid/os/PersistableBundle;Landroid/content/pm/SuspendDialogInfo;ILjava/lang/String;II)[Ljava/lang/String;

    move-result-object v15

    .line 3007
    .local v15, "_result":[Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 3008
    invoke-virtual {v12, v15}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 3009
    goto/16 :goto_1495

    .line 2974
    .end local v1    # "_arg0":[Ljava/lang/String;
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":Landroid/os/PersistableBundle;
    .end local v4    # "_arg3":Landroid/os/PersistableBundle;
    .end local v5    # "_arg4":Landroid/content/pm/SuspendDialogInfo;
    .end local v6    # "_arg5":I
    .end local v7    # "_arg6":Ljava/lang/String;
    .end local v8    # "_arg7":I
    .end local v9    # "_arg8":I
    .end local v15    # "_result":[Ljava/lang/String;
    :pswitch_d22
    invoke-virtual {v11}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 2976
    .restart local v1    # "_arg0":[Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2978
    .local v2, "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2979
    .local v3, "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2980
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->setDistractingPackageRestrictionsAsUser([Ljava/lang/String;II)[Ljava/lang/String;

    move-result-object v4

    .line 2981
    .local v4, "_result":[Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 2982
    invoke-virtual {v12, v4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 2983
    goto/16 :goto_1495

    .line 2963
    .end local v1    # "_arg0":[Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_result":[Ljava/lang/String;
    :pswitch_d3d
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2965
    .local v1, "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2966
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2967
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->clearCrossProfileIntentFilters(ILjava/lang/String;)V

    .line 2968
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 2969
    goto/16 :goto_1495

    .line 2945
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    :pswitch_d50
    sget-object v1, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/IntentFilter;

    .line 2947
    .local v1, "_arg0":Landroid/content/IntentFilter;
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2949
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2951
    .restart local v3    # "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2953
    .local v4, "_arg3":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 2954
    .local v5, "_arg4":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2955
    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/IPackageManager$Stub;->removeCrossProfileIntentFilter(Landroid/content/IntentFilter;Ljava/lang/String;III)Z

    move-result v6

    .line 2956
    .local v6, "_result":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 2957
    invoke-virtual {v12, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2958
    move-object/from16 v0, p0

    goto/16 :goto_1495

    .line 2928
    .end local v1    # "_arg0":Landroid/content/IntentFilter;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    .end local v6    # "_result":Z
    :pswitch_d79
    sget-object v0, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/IntentFilter;

    .line 2930
    .restart local v1    # "_arg0":Landroid/content/IntentFilter;
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2932
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2934
    .restart local v3    # "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2936
    .restart local v4    # "_arg3":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 2937
    .restart local v5    # "_arg4":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2938
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/IPackageManager$Stub;->addCrossProfileIntentFilter(Landroid/content/IntentFilter;Ljava/lang/String;III)V

    .line 2939
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 2940
    goto/16 :goto_1495

    .line 2917
    .end local v1    # "_arg0":Landroid/content/IntentFilter;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    :pswitch_d9f
    sget-object v1, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/IntentFilter;

    .line 2919
    .restart local v1    # "_arg0":Landroid/content/IntentFilter;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2920
    .local v2, "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2921
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->clearPersistentPreferredActivity(Landroid/content/IntentFilter;I)V

    .line 2922
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 2923
    goto/16 :goto_1495

    .line 2906
    .end local v1    # "_arg0":Landroid/content/IntentFilter;
    .end local v2    # "_arg1":I
    :pswitch_db6
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2908
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2909
    .restart local v2    # "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2910
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->clearPackagePersistentPreferredActivities(Ljava/lang/String;I)V

    .line 2911
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 2912
    goto/16 :goto_1495

    .line 2893
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :pswitch_dc9
    sget-object v1, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/IntentFilter;

    .line 2895
    .local v1, "_arg0":Landroid/content/IntentFilter;
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 2897
    .local v2, "_arg1":Landroid/content/ComponentName;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2898
    .restart local v3    # "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2899
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->addPersistentPreferredActivity(Landroid/content/IntentFilter;Landroid/content/ComponentName;I)V

    .line 2900
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 2901
    goto/16 :goto_1495

    .line 2877
    .end local v1    # "_arg0":Landroid/content/IntentFilter;
    .end local v2    # "_arg1":Landroid/content/ComponentName;
    .end local v3    # "_arg2":I
    :pswitch_de8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2879
    .local v1, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2881
    .local v2, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2882
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2883
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    move-result v4

    .line 2884
    .local v4, "_result":I
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 2885
    invoke-virtual {v12, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2886
    invoke-virtual {v12, v1, v14}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 2887
    invoke-virtual {v12, v2, v14}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 2888
    goto/16 :goto_1495

    .line 2868
    .end local v1    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    .end local v2    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_e0b
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2869
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2870
    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->clearPackagePreferredActivities(Ljava/lang/String;)V

    .line 2871
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 2872
    goto/16 :goto_1495

    .line 2851
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_e1a
    sget-object v1, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/IntentFilter;

    .line 2853
    .local v1, "_arg0":Landroid/content/IntentFilter;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2855
    .local v2, "_arg1":I
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/content/ComponentName;

    .line 2857
    .local v3, "_arg2":[Landroid/content/ComponentName;
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 2859
    .local v4, "_arg3":Landroid/content/ComponentName;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 2860
    .restart local v5    # "_arg4":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2861
    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/IPackageManager$Stub;->replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;I)V

    .line 2862
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 2863
    move-object/from16 v0, p0

    goto/16 :goto_1495

    .line 2832
    .end local v1    # "_arg0":Landroid/content/IntentFilter;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":[Landroid/content/ComponentName;
    .end local v4    # "_arg3":Landroid/content/ComponentName;
    .end local v5    # "_arg4":I
    :pswitch_e47
    sget-object v0, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/IntentFilter;

    .line 2834
    .restart local v1    # "_arg0":Landroid/content/IntentFilter;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2836
    .restart local v2    # "_arg1":I
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, [Landroid/content/ComponentName;

    .line 2838
    .restart local v3    # "_arg2":[Landroid/content/ComponentName;
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/content/ComponentName;

    .line 2840
    .restart local v4    # "_arg3":Landroid/content/ComponentName;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 2842
    .restart local v5    # "_arg4":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    .line 2843
    .local v6, "_arg5":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2844
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/content/pm/IPackageManager$Stub;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;IZ)V

    .line 2845
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 2846
    goto/16 :goto_1495

    .line 2813
    .end local v1    # "_arg0":Landroid/content/IntentFilter;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":[Landroid/content/ComponentName;
    .end local v4    # "_arg3":Landroid/content/ComponentName;
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":Z
    :pswitch_e7b
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Intent;

    .line 2815
    .local v1, "_arg0":Landroid/content/Intent;
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2817
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2819
    .local v3, "_arg2":I
    sget-object v0, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/content/IntentFilter;

    .line 2821
    .local v4, "_arg3":Landroid/content/IntentFilter;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 2823
    .restart local v5    # "_arg4":I
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/content/ComponentName;

    .line 2824
    .local v6, "_arg5":Landroid/content/ComponentName;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2825
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/content/pm/IPackageManager$Stub;->setLastChosenActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/IntentFilter;ILandroid/content/ComponentName;)V

    .line 2826
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 2827
    goto/16 :goto_1495

    .line 2799
    .end local v1    # "_arg0":Landroid/content/Intent;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Landroid/content/IntentFilter;
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":Landroid/content/ComponentName;
    :pswitch_eaf
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 2801
    .restart local v1    # "_arg0":Landroid/content/Intent;
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2803
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2804
    .restart local v3    # "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2805
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->getLastChosenActivity(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    .line 2806
    .local v4, "_result":Landroid/content/pm/ResolveInfo;
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 2807
    invoke-virtual {v12, v4, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2808
    goto/16 :goto_1495

    .line 2790
    .end local v1    # "_arg0":Landroid/content/Intent;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_result":Landroid/content/pm/ResolveInfo;
    :pswitch_ece
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2791
    .local v1, "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2792
    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->resetApplicationPreferences(I)V

    .line 2793
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 2794
    goto/16 :goto_1495

    .line 2778
    .end local v1    # "_arg0":I
    :pswitch_edd
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2780
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2781
    .local v2, "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2782
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->getInstallSourceInfo(Ljava/lang/String;I)Landroid/content/pm/InstallSourceInfo;

    move-result-object v3

    .line 2783
    .local v3, "_result":Landroid/content/pm/InstallSourceInfo;
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 2784
    invoke-virtual {v12, v3, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2785
    goto/16 :goto_1495

    .line 2768
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Landroid/content/pm/InstallSourceInfo;
    :pswitch_ef4
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2769
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2770
    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2771
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 2772
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2773
    goto/16 :goto_1495

    .line 2755
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_f07
    sget-object v1, Landroid/content/pm/VersionedPackage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/VersionedPackage;

    .line 2757
    .local v1, "_arg0":Landroid/content/pm/VersionedPackage;
    invoke-virtual {v11}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/pm/IPackageDeleteObserver2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDeleteObserver2;

    move-result-object v2

    .line 2759
    .local v2, "_arg1":Landroid/content/pm/IPackageDeleteObserver2;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2760
    .local v3, "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2761
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->deleteExistingPackageAsUser(Landroid/content/pm/VersionedPackage;Landroid/content/pm/IPackageDeleteObserver2;I)V

    .line 2762
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 2763
    goto/16 :goto_1495

    .line 2740
    .end local v1    # "_arg0":Landroid/content/pm/VersionedPackage;
    .end local v2    # "_arg1":Landroid/content/pm/IPackageDeleteObserver2;
    .end local v3    # "_arg2":I
    :pswitch_f26
    sget-object v1, Landroid/content/pm/VersionedPackage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/VersionedPackage;

    .line 2742
    .restart local v1    # "_arg0":Landroid/content/pm/VersionedPackage;
    invoke-virtual {v11}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/pm/IPackageDeleteObserver2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDeleteObserver2;

    move-result-object v2

    .line 2744
    .restart local v2    # "_arg1":Landroid/content/pm/IPackageDeleteObserver2;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2746
    .restart local v3    # "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2747
    .local v4, "_arg3":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2748
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/pm/IPackageManager$Stub;->deletePackageVersioned(Landroid/content/pm/VersionedPackage;Landroid/content/pm/IPackageDeleteObserver2;II)V

    .line 2749
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 2750
    goto/16 :goto_1495

    .line 2723
    .end local v1    # "_arg0":Landroid/content/pm/VersionedPackage;
    .end local v2    # "_arg1":Landroid/content/pm/IPackageDeleteObserver2;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    :pswitch_f49
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2725
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2727
    .local v2, "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/content/pm/IPackageDeleteObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDeleteObserver;

    move-result-object v3

    .line 2729
    .local v3, "_arg2":Landroid/content/pm/IPackageDeleteObserver;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2731
    .restart local v4    # "_arg3":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 2732
    .restart local v5    # "_arg4":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2733
    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/IPackageManager$Stub;->deletePackageAsUser(Ljava/lang/String;ILandroid/content/pm/IPackageDeleteObserver;II)V

    .line 2734
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 2735
    goto/16 :goto_1495

    .line 2710
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/content/pm/IPackageDeleteObserver;
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    :pswitch_f6c
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2712
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2714
    .restart local v2    # "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2715
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2716
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->setApplicationCategoryHint(Ljava/lang/String;ILjava/lang/String;)V

    .line 2717
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 2718
    goto/16 :goto_1495

    .line 2701
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    :pswitch_f83
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2702
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2703
    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->relinquishUpdateOwnership(Ljava/lang/String;)V

    .line 2704
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 2705
    goto/16 :goto_1495

    .line 2690
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_f92
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2692
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2693
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2694
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->setInstallerPackageName(Ljava/lang/String;Ljava/lang/String;)V

    .line 2695
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 2696
    goto/16 :goto_1495

    .line 2679
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    :pswitch_fa5
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2681
    .local v1, "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 2682
    .local v2, "_arg1":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2683
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->finishPackageInstall(IZ)V

    .line 2684
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 2685
    goto/16 :goto_1495

    .line 2665
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Z
    :pswitch_fb8
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2667
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2669
    .local v2, "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2670
    .local v3, "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2671
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->queryInstrumentationAsUser(Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v4

    .line 2672
    .local v4, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 2673
    invoke-virtual {v12, v4, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2674
    goto/16 :goto_1495

    .line 2651
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_fd3
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 2653
    .local v1, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2655
    .restart local v2    # "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2656
    .restart local v3    # "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2657
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->getInstrumentationInfoAsUser(Landroid/content/ComponentName;II)Landroid/content/pm/InstrumentationInfo;

    move-result-object v4

    .line 2658
    .local v4, "_result":Landroid/content/pm/InstrumentationInfo;
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 2659
    invoke-virtual {v12, v4, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2660
    goto/16 :goto_1495

    .line 2635
    .end local v1    # "_arg0":Landroid/content/ComponentName;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_result":Landroid/content/pm/InstrumentationInfo;
    :pswitch_ff2
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2637
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2639
    .restart local v2    # "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 2641
    .local v3, "_arg2":J
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 2642
    .local v5, "_arg3":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2643
    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/IPackageManager$Stub;->queryContentProviders(Ljava/lang/String;IJLjava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v6

    .line 2644
    .local v6, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 2645
    invoke-virtual {v12, v6, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2646
    goto/16 :goto_1495

    .line 2622
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":J
    .end local v5    # "_arg3":Ljava/lang/String;
    .end local v6    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_1011
    invoke-virtual {v11}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 2624
    .local v1, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v2, Landroid/content/pm/ProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 2625
    .local v2, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2626
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->querySyncProviders(Ljava/util/List;Ljava/util/List;)V

    .line 2627
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 2628
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 2629
    invoke-virtual {v12, v2, v14}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 2630
    goto/16 :goto_1495

    .line 2606
    .end local v1    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    :pswitch_102c
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2608
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 2610
    .local v2, "_arg1":J
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2612
    .local v4, "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 2613
    .local v5, "_arg3":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2614
    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/IPackageManager$Stub;->resolveContentProviderForUid(Ljava/lang/String;JII)Landroid/content/pm/ProviderInfo;

    move-result-object v6

    .line 2615
    .local v6, "_result":Landroid/content/pm/ProviderInfo;
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 2616
    invoke-virtual {v12, v6, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2617
    goto/16 :goto_1495

    .line 2592
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":J
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":I
    .end local v6    # "_result":Landroid/content/pm/ProviderInfo;
    :pswitch_104b
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2594
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 2596
    .restart local v2    # "_arg1":J
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2597
    .restart local v4    # "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2598
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/pm/IPackageManager$Stub;->resolveContentProvider(Ljava/lang/String;JI)Landroid/content/pm/ProviderInfo;

    move-result-object v5

    .line 2599
    .local v5, "_result":Landroid/content/pm/ProviderInfo;
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 2600
    invoke-virtual {v12, v5, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2601
    goto/16 :goto_1495

    .line 2582
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":J
    .end local v4    # "_arg2":I
    .end local v5    # "_result":Landroid/content/pm/ProviderInfo;
    :pswitch_1066
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2583
    .local v1, "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2584
    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getPersistentApplications(I)Landroid/content/pm/ParceledListSlice;

    move-result-object v2

    .line 2585
    .local v2, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 2586
    invoke-virtual {v12, v2, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2587
    goto/16 :goto_1495

    .line 2570
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_1079
    invoke-virtual {v11}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 2572
    .local v1, "_arg0":J
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2573
    .local v3, "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2574
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->getInstalledApplications(JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v4

    .line 2575
    .local v4, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 2576
    invoke-virtual {v12, v4, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2577
    goto/16 :goto_1495

    .line 2556
    .end local v1    # "_arg0":J
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_1090
    invoke-virtual {v11}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 2558
    .local v1, "_arg0":[Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 2560
    .local v2, "_arg1":J
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2561
    .local v4, "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2562
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/pm/IPackageManager$Stub;->getPackagesHoldingPermissions([Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v5

    .line 2563
    .local v5, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 2564
    invoke-virtual {v12, v5, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2565
    goto/16 :goto_1495

    .line 2544
    .end local v1    # "_arg0":[Ljava/lang/String;
    .end local v2    # "_arg1":J
    .end local v4    # "_arg2":I
    .end local v5    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_10ab
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2546
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2547
    .local v2, "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2548
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->getAppMetadataFd(Ljava/lang/String;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 2549
    .local v3, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 2550
    invoke-virtual {v12, v3, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2551
    goto/16 :goto_1495

    .line 2532
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Landroid/os/ParcelFileDescriptor;
    :pswitch_10c2
    invoke-virtual {v11}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 2534
    .local v1, "_arg0":J
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2535
    .local v3, "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2536
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->getInstalledPackages(JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v4

    .line 2537
    .local v4, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 2538
    invoke-virtual {v12, v4, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2539
    goto/16 :goto_1495

    .line 2516
    .end local v1    # "_arg0":J
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_10d9
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 2518
    .local v1, "_arg0":Landroid/content/Intent;
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2520
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 2522
    .local v3, "_arg2":J
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 2523
    .local v5, "_arg3":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2524
    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/IPackageManager$Stub;->queryIntentContentProviders(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v6

    .line 2525
    .local v6, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 2526
    invoke-virtual {v12, v6, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2527
    move-object/from16 v0, p0

    goto/16 :goto_1495

    .line 2500
    .end local v1    # "_arg0":Landroid/content/Intent;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":J
    .end local v5    # "_arg3":I
    .end local v6    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_10fe
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Intent;

    .line 2502
    .restart local v1    # "_arg0":Landroid/content/Intent;
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2504
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 2506
    .restart local v3    # "_arg2":J
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 2507
    .restart local v5    # "_arg3":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2508
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/IPackageManager$Stub;->queryIntentServices(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v6

    .line 2509
    .restart local v6    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 2510
    invoke-virtual {v12, v6, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2511
    goto/16 :goto_1495

    .line 2484
    .end local v1    # "_arg0":Landroid/content/Intent;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":J
    .end local v5    # "_arg3":I
    .end local v6    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_1124
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Intent;

    .line 2486
    .restart local v1    # "_arg0":Landroid/content/Intent;
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2488
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 2490
    .restart local v3    # "_arg2":J
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 2491
    .restart local v5    # "_arg3":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2492
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/IPackageManager$Stub;->resolveService(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    .line 2493
    .local v6, "_result":Landroid/content/pm/ResolveInfo;
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 2494
    invoke-virtual {v12, v6, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2495
    goto/16 :goto_1495

    .line 2468
    .end local v1    # "_arg0":Landroid/content/Intent;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":J
    .end local v5    # "_arg3":I
    .end local v6    # "_result":Landroid/content/pm/ResolveInfo;
    :pswitch_114a
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Intent;

    .line 2470
    .restart local v1    # "_arg0":Landroid/content/Intent;
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2472
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 2474
    .restart local v3    # "_arg2":J
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 2475
    .restart local v5    # "_arg3":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2476
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/IPackageManager$Stub;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v6

    .line 2477
    .local v6, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 2478
    invoke-virtual {v12, v6, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2479
    goto/16 :goto_1495

    .line 2446
    .end local v1    # "_arg0":Landroid/content/Intent;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":J
    .end local v5    # "_arg3":I
    .end local v6    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_1170
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/ComponentName;

    .line 2448
    .local v1, "_arg0":Landroid/content/ComponentName;
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, [Landroid/content/Intent;

    .line 2450
    .local v2, "_arg1":[Landroid/content/Intent;
    invoke-virtual {v11}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 2452
    .local v3, "_arg2":[Ljava/lang/String;
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/content/Intent;

    .line 2454
    .local v4, "_arg3":Landroid/content/Intent;
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 2456
    .local v5, "_arg4":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 2458
    .local v6, "_arg5":J
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 2459
    .local v8, "_arg6":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2460
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v8}, Landroid/content/pm/IPackageManager$Stub;->queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;[Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v9

    .line 2461
    .local v9, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 2462
    invoke-virtual {v12, v9, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2463
    goto/16 :goto_1495

    .line 2430
    .end local v1    # "_arg0":Landroid/content/ComponentName;
    .end local v2    # "_arg1":[Landroid/content/Intent;
    .end local v3    # "_arg2":[Ljava/lang/String;
    .end local v4    # "_arg3":Landroid/content/Intent;
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_arg5":J
    .end local v8    # "_arg6":I
    .end local v9    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_11ac
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Intent;

    .line 2432
    .local v1, "_arg0":Landroid/content/Intent;
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2434
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 2436
    .local v3, "_arg2":J
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 2437
    .local v5, "_arg3":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2438
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/IPackageManager$Stub;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v6

    .line 2439
    .local v6, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 2440
    invoke-virtual {v12, v6, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2441
    goto/16 :goto_1495

    .line 2414
    .end local v1    # "_arg0":Landroid/content/Intent;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":J
    .end local v5    # "_arg3":I
    .end local v6    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_11d2
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 2416
    .restart local v1    # "_arg0":Landroid/content/Intent;
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2418
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2420
    .local v3, "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2421
    .local v4, "_arg3":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2422
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/pm/IPackageManager$Stub;->canForwardTo(Landroid/content/Intent;Ljava/lang/String;II)Z

    move-result v5

    .line 2423
    .local v5, "_result":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 2424
    invoke-virtual {v12, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2425
    goto/16 :goto_1495

    .line 2402
    .end local v1    # "_arg0":Landroid/content/Intent;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_result":Z
    :pswitch_11f5
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 2404
    .restart local v1    # "_arg0":Landroid/content/Intent;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2405
    .local v2, "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2406
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->findPersistentPreferredActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 2407
    .local v3, "_result":Landroid/content/pm/ResolveInfo;
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 2408
    invoke-virtual {v12, v3, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2409
    goto/16 :goto_1495

    .line 2386
    .end local v1    # "_arg0":Landroid/content/Intent;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Landroid/content/pm/ResolveInfo;
    :pswitch_1210
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 2388
    .restart local v1    # "_arg0":Landroid/content/Intent;
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2390
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 2392
    .local v3, "_arg2":J
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 2393
    .local v5, "_arg3":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2394
    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/IPackageManager$Stub;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    .line 2395
    .local v6, "_result":Landroid/content/pm/ResolveInfo;
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 2396
    invoke-virtual {v12, v6, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2397
    goto/16 :goto_1495

    .line 2376
    .end local v1    # "_arg0":Landroid/content/Intent;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":J
    .end local v5    # "_arg3":I
    .end local v6    # "_result":Landroid/content/pm/ResolveInfo;
    :pswitch_1233
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2377
    .local v1, "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2378
    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->isUidPrivileged(I)Z

    move-result v2

    .line 2379
    .local v2, "_result":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 2380
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2381
    goto/16 :goto_1495

    .line 2366
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Z
    :pswitch_1246
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2367
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2368
    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getPrivateFlagsForUid(I)I

    move-result v2

    .line 2369
    .local v2, "_result":I
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 2370
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2371
    goto/16 :goto_1495

    .line 2356
    .end local v1    # "_arg0":I
    .end local v2    # "_result":I
    :pswitch_1259
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2357
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2358
    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getFlagsForUid(I)I

    move-result v2

    .line 2359
    .restart local v2    # "_result":I
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 2360
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2361
    goto/16 :goto_1495

    .line 2346
    .end local v1    # "_arg0":I
    .end local v2    # "_result":I
    :pswitch_126c
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2347
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2348
    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getUidForSharedUser(Ljava/lang/String;)I

    move-result v2

    .line 2349
    .restart local v2    # "_result":I
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 2350
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2351
    goto/16 :goto_1495

    .line 2336
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":I
    :pswitch_127f
    invoke-virtual {v11}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 2337
    .local v1, "_arg0":[I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2338
    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getNamesForUids([I)[Ljava/lang/String;

    move-result-object v2

    .line 2339
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 2340
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 2341
    goto/16 :goto_1495

    .line 2326
    .end local v1    # "_arg0":[I
    .end local v2    # "_result":[Ljava/lang/String;
    :pswitch_1292
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2327
    .local v1, "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2328
    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getNameForUid(I)Ljava/lang/String;

    move-result-object v2

    .line 2329
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 2330
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2331
    goto/16 :goto_1495

    .line 2316
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_12a5
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2317
    .restart local v1    # "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2318
    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .line 2319
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 2320
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 2321
    goto/16 :goto_1495

    .line 2308
    .end local v1    # "_arg0":I
    .end local v2    # "_result":[Ljava/lang/String;
    :pswitch_12b8
    invoke-virtual {v0}, Landroid/content/pm/IPackageManager$Stub;->getAllPackages()Ljava/util/List;

    move-result-object v1

    .line 2309
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 2310
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 2311
    goto/16 :goto_1495

    .line 2297
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_12c4
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2299
    .local v1, "_arg0":I
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2300
    .local v2, "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2301
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->checkUidSignatures(II)I

    move-result v3

    .line 2302
    .local v3, "_result":I
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 2303
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2304
    goto/16 :goto_1495

    .line 2283
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_result":I
    :pswitch_12db
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2285
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2287
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2288
    .local v3, "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2289
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->checkSignatures(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    .line 2290
    .local v4, "_result":I
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 2291
    invoke-virtual {v12, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2292
    goto/16 :goto_1495

    .line 2273
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_result":I
    :pswitch_12f6
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2274
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2275
    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->isProtectedBroadcast(Ljava/lang/String;)Z

    move-result v2

    .line 2276
    .local v2, "_result":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 2277
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2278
    goto/16 :goto_1495

    .line 2259
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_1309
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 2261
    .local v1, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {v11}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 2263
    .local v2, "_arg1":J
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2264
    .local v4, "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2265
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/pm/IPackageManager$Stub;->getProviderInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ProviderInfo;

    move-result-object v5

    .line 2266
    .local v5, "_result":Landroid/content/pm/ProviderInfo;
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 2267
    invoke-virtual {v12, v5, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2268
    goto/16 :goto_1495

    .line 2245
    .end local v1    # "_arg0":Landroid/content/ComponentName;
    .end local v2    # "_arg1":J
    .end local v4    # "_arg2":I
    .end local v5    # "_result":Landroid/content/pm/ProviderInfo;
    :pswitch_1328
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 2247
    .restart local v1    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {v11}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 2249
    .restart local v2    # "_arg1":J
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2250
    .restart local v4    # "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2251
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/pm/IPackageManager$Stub;->getServiceInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ServiceInfo;

    move-result-object v5

    .line 2252
    .local v5, "_result":Landroid/content/pm/ServiceInfo;
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 2253
    invoke-virtual {v12, v5, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2254
    goto/16 :goto_1495

    .line 2231
    .end local v1    # "_arg0":Landroid/content/ComponentName;
    .end local v2    # "_arg1":J
    .end local v4    # "_arg2":I
    .end local v5    # "_result":Landroid/content/pm/ServiceInfo;
    :pswitch_1347
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 2233
    .restart local v1    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {v11}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 2235
    .restart local v2    # "_arg1":J
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2236
    .restart local v4    # "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2237
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/pm/IPackageManager$Stub;->getReceiverInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;

    move-result-object v5

    .line 2238
    .local v5, "_result":Landroid/content/pm/ActivityInfo;
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 2239
    invoke-virtual {v12, v5, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2240
    goto/16 :goto_1495

    .line 2215
    .end local v1    # "_arg0":Landroid/content/ComponentName;
    .end local v2    # "_arg1":J
    .end local v4    # "_arg2":I
    .end local v5    # "_result":Landroid/content/pm/ActivityInfo;
    :pswitch_1366
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 2217
    .restart local v1    # "_arg0":Landroid/content/ComponentName;
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 2219
    .local v2, "_arg1":Landroid/content/Intent;
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2221
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2222
    .local v4, "_arg3":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2223
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/pm/IPackageManager$Stub;->activitySupportsIntentAsUser(Landroid/content/ComponentName;Landroid/content/Intent;Ljava/lang/String;I)Z

    move-result v5

    .line 2224
    .local v5, "_result":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 2225
    invoke-virtual {v12, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2226
    goto/16 :goto_1495

    .line 2201
    .end local v1    # "_arg0":Landroid/content/ComponentName;
    .end local v2    # "_arg1":Landroid/content/Intent;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":I
    .end local v5    # "_result":Z
    :pswitch_138d
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 2203
    .restart local v1    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {v11}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 2205
    .local v2, "_arg1":J
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2206
    .local v4, "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2207
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/pm/IPackageManager$Stub;->getActivityInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;

    move-result-object v5

    .line 2208
    .local v5, "_result":Landroid/content/pm/ActivityInfo;
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 2209
    invoke-virtual {v12, v5, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2210
    goto/16 :goto_1495

    .line 2191
    .end local v1    # "_arg0":Landroid/content/ComponentName;
    .end local v2    # "_arg1":J
    .end local v4    # "_arg2":I
    .end local v5    # "_result":Landroid/content/pm/ActivityInfo;
    :pswitch_13ac
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2192
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2193
    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getTargetSdkVersion(Ljava/lang/String;)I

    move-result v2

    .line 2194
    .local v2, "_result":I
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 2195
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2196
    goto/16 :goto_1495

    .line 2177
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":I
    :pswitch_13bf
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2179
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 2181
    .local v2, "_arg1":J
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2182
    .restart local v4    # "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2183
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/pm/IPackageManager$Stub;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 2184
    .local v5, "_result":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 2185
    invoke-virtual {v12, v5, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2186
    goto/16 :goto_1495

    .line 2167
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":J
    .end local v4    # "_arg2":I
    .end local v5    # "_result":Landroid/content/pm/ApplicationInfo;
    :pswitch_13da
    invoke-virtual {v11}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 2168
    .local v1, "_arg0":[Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2169
    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->canonicalToCurrentPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2170
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 2171
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 2172
    goto/16 :goto_1495

    .line 2157
    .end local v1    # "_arg0":[Ljava/lang/String;
    .end local v2    # "_result":[Ljava/lang/String;
    :pswitch_13ed
    invoke-virtual {v11}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 2158
    .restart local v1    # "_arg0":[Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2159
    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2160
    .restart local v2    # "_result":[Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 2161
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 2162
    goto/16 :goto_1495

    .line 2143
    .end local v1    # "_arg0":[Ljava/lang/String;
    .end local v2    # "_result":[Ljava/lang/String;
    :pswitch_1400
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2145
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 2147
    .local v2, "_arg1":J
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2148
    .restart local v4    # "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2149
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/pm/IPackageManager$Stub;->getPackageGids(Ljava/lang/String;JI)[I

    move-result-object v5

    .line 2150
    .local v5, "_result":[I
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 2151
    invoke-virtual {v12, v5}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 2152
    goto/16 :goto_1495

    .line 2129
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":J
    .end local v4    # "_arg2":I
    .end local v5    # "_result":[I
    :pswitch_141b
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2131
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 2133
    .restart local v2    # "_arg1":J
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2134
    .restart local v4    # "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2135
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/pm/IPackageManager$Stub;->getPackageUid(Ljava/lang/String;JI)I

    move-result v5

    .line 2136
    .local v5, "_result":I
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 2137
    invoke-virtual {v12, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 2138
    goto :goto_1495

    .line 2115
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":J
    .end local v4    # "_arg2":I
    .end local v5    # "_result":I
    :pswitch_1435
    sget-object v1, Landroid/content/pm/VersionedPackage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/VersionedPackage;

    .line 2117
    .local v1, "_arg0":Landroid/content/pm/VersionedPackage;
    invoke-virtual {v11}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 2119
    .restart local v2    # "_arg1":J
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2120
    .restart local v4    # "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2121
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/pm/IPackageManager$Stub;->getPackageInfoVersioned(Landroid/content/pm/VersionedPackage;JI)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 2122
    .local v5, "_result":Landroid/content/pm/PackageInfo;
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 2123
    invoke-virtual {v12, v5, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2124
    goto :goto_1495

    .line 2101
    .end local v1    # "_arg0":Landroid/content/pm/VersionedPackage;
    .end local v2    # "_arg1":J
    .end local v4    # "_arg2":I
    .end local v5    # "_result":Landroid/content/pm/PackageInfo;
    :pswitch_1453
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2103
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 2105
    .restart local v2    # "_arg1":J
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2106
    .restart local v4    # "_arg2":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2107
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/pm/IPackageManager$Stub;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 2108
    .restart local v5    # "_result":Landroid/content/pm/PackageInfo;
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 2109
    invoke-virtual {v12, v5, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2110
    goto :goto_1495

    .line 2089
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":J
    .end local v4    # "_arg2":I
    .end local v5    # "_result":Landroid/content/pm/PackageInfo;
    :pswitch_146d
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2091
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2092
    .local v2, "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2093
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->isPackageAvailable(Ljava/lang/String;I)Z

    move-result v3

    .line 2094
    .local v3, "_result":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 2095
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2096
    goto :goto_1495

    .line 2078
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Z
    :pswitch_1483
    invoke-virtual {v11}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2080
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2081
    .restart local v2    # "_arg1":I
    invoke-virtual {v11}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2082
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->checkPackageStartable(Ljava/lang/String;I)V

    .line 2083
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 2084
    nop

    .line 4732
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :goto_1495
    return v14

    :pswitch_data_1496
    .packed-switch 0x1
        :pswitch_1483
        :pswitch_146d
        :pswitch_1453
        :pswitch_1435
        :pswitch_141b
        :pswitch_1400
        :pswitch_13ed
        :pswitch_13da
        :pswitch_13bf
        :pswitch_13ac
        :pswitch_138d
        :pswitch_1366
        :pswitch_1347
        :pswitch_1328
        :pswitch_1309
        :pswitch_12f6
        :pswitch_12db
        :pswitch_12c4
        :pswitch_12b8
        :pswitch_12a5
        :pswitch_1292
        :pswitch_127f
        :pswitch_126c
        :pswitch_1259
        :pswitch_1246
        :pswitch_1233
        :pswitch_1210
        :pswitch_11f5
        :pswitch_11d2
        :pswitch_11ac
        :pswitch_1170
        :pswitch_114a
        :pswitch_1124
        :pswitch_10fe
        :pswitch_10d9
        :pswitch_10c2
        :pswitch_10ab
        :pswitch_1090
        :pswitch_1079
        :pswitch_1066
        :pswitch_104b
        :pswitch_102c
        :pswitch_1011
        :pswitch_ff2
        :pswitch_fd3
        :pswitch_fb8
        :pswitch_fa5
        :pswitch_f92
        :pswitch_f83
        :pswitch_f6c
        :pswitch_f49
        :pswitch_f26
        :pswitch_f07
        :pswitch_ef4
        :pswitch_edd
        :pswitch_ece
        :pswitch_eaf
        :pswitch_e7b
        :pswitch_e47
        :pswitch_e1a
        :pswitch_e0b
        :pswitch_de8
        :pswitch_dc9
        :pswitch_db6
        :pswitch_d9f
        :pswitch_d79
        :pswitch_d50
        :pswitch_d3d
        :pswitch_d22
        :pswitch_ce3
        :pswitch_ccc
        :pswitch_cb5
        :pswitch_c9e
        :pswitch_c87
        :pswitch_c70
        :pswitch_c59
        :pswitch_c46
        :pswitch_c33
        :pswitch_c20
        :pswitch_c0d
        :pswitch_bfa
        :pswitch_be7
        :pswitch_bd0
        :pswitch_bb9
        :pswitch_b9a
        :pswitch_b83
        :pswitch_b60
        :pswitch_b47
        :pswitch_b2c
        :pswitch_b0d
        :pswitch_af6
        :pswitch_ad3
        :pswitch_ac4
        :pswitch_aad
        :pswitch_a8c
        :pswitch_a6b
        :pswitch_a54
        :pswitch_a39
        :pswitch_a1e
        :pswitch_a0f
        :pswitch_9f4
        :pswitch_9e8
        :pswitch_9c8
        :pswitch_9bc
        :pswitch_9a5
        :pswitch_999
        :pswitch_991
        :pswitch_985
        :pswitch_979
        :pswitch_969
        :pswitch_940
        :pswitch_924
        :pswitch_8fd
        :pswitch_8e2
        :pswitch_8cf
        :pswitch_8bc
        :pswitch_8a9
        :pswitch_892
        :pswitch_87f
        :pswitch_86c
        :pswitch_860
        :pswitch_83d
        :pswitch_82a
        :pswitch_813
        :pswitch_7fc
        :pswitch_7e5
        :pswitch_7ca
        :pswitch_7b7
        :pswitch_7a4
        :pswitch_798
        :pswitch_78c
        :pswitch_780
        :pswitch_774
        :pswitch_759
        :pswitch_742
        :pswitch_72f
        :pswitch_714
        :pswitch_708
        :pswitch_6ed
        :pswitch_6d6
        :pswitch_6bf
        :pswitch_6ac
        :pswitch_691
        :pswitch_676
        :pswitch_66a
        :pswitch_65e
        :pswitch_64b
        :pswitch_634
        :pswitch_619
        :pswitch_602
        :pswitch_5eb
        :pswitch_5d4
        :pswitch_5c1
        :pswitch_5b5
        :pswitch_5a9
        :pswitch_592
        :pswitch_57f
        :pswitch_568
        :pswitch_54d
        :pswitch_532
        :pswitch_51b
        :pswitch_513
        :pswitch_507
        :pswitch_4fb
        :pswitch_4ef
        :pswitch_4d8
        :pswitch_4cc
        :pswitch_4b1
        :pswitch_490
        :pswitch_475
        :pswitch_45a
        :pswitch_44e
        :pswitch_442
        :pswitch_436
        :pswitch_42a
        :pswitch_41e
        :pswitch_412
        :pswitch_406
        :pswitch_3fa
        :pswitch_3ee
        :pswitch_3d7
        :pswitch_3cf
        :pswitch_3bc
        :pswitch_3a5
        :pswitch_392
        :pswitch_37f
        :pswitch_370
        :pswitch_33d
        :pswitch_31e
        :pswitch_307
        :pswitch_2f0
        :pswitch_2d9
        :pswitch_2c2
        :pswitch_2b3
        :pswitch_298
        :pswitch_281
        :pswitch_26a
        :pswitch_253
        :pswitch_23c
        :pswitch_225
        :pswitch_20e
        :pswitch_1f7
        :pswitch_1e0
        :pswitch_1cd
        :pswitch_1ba
        :pswitch_1a7
        :pswitch_19b
        :pswitch_188
        :pswitch_169
        :pswitch_152
        :pswitch_143
        :pswitch_128
        :pswitch_111
        :pswitch_fa
        :pswitch_e7
        :pswitch_d0
        :pswitch_b1
        :pswitch_96
        :pswitch_7f
        :pswitch_6c
        :pswitch_59
        :pswitch_46
        :pswitch_33
        :pswitch_27
    .end packed-switch
.end method

.method protected blacklist registerMoveCallback_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9247
    iget-object v0, p0, Landroid/content/pm/IPackageManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/content/pm/IPackageManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/content/pm/IPackageManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9248
    return-void
.end method

.method protected blacklist removeCrossProfileIntentFilter_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9174
    iget-object v0, p0, Landroid/content/pm/IPackageManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/content/pm/IPackageManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/content/pm/IPackageManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9175
    return-void
.end method

.method protected blacklist setApplicationHiddenSettingAsUser_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9289
    iget-object v0, p0, Landroid/content/pm/IPackageManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/content/pm/IPackageManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/content/pm/IPackageManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_USERS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9290
    return-void
.end method

.method protected blacklist setBlockUninstallForUser_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9298
    iget-object v0, p0, Landroid/content/pm/IPackageManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/content/pm/IPackageManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/content/pm/IPackageManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.DELETE_PACKAGES"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9299
    return-void
.end method

.method protected blacklist setInstallLocation_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9267
    iget-object v0, p0, Landroid/content/pm/IPackageManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/content/pm/IPackageManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/content/pm/IPackageManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9268
    return-void
.end method

.method protected blacklist setUpdateAvailable_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9316
    iget-object v0, p0, Landroid/content/pm/IPackageManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/content/pm/IPackageManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/content/pm/IPackageManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.INSTALL_PACKAGES"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9317
    return-void
.end method

.method protected blacklist setUserMinAspectRatio_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9373
    iget-object v0, p0, Landroid/content/pm/IPackageManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/content/pm/IPackageManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/content/pm/IPackageManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.INSTALL_PACKAGES"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9374
    return-void
.end method

.method protected blacklist unregisterMoveCallback_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9252
    iget-object v0, p0, Landroid/content/pm/IPackageManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/content/pm/IPackageManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/content/pm/IPackageManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9253
    return-void
.end method
