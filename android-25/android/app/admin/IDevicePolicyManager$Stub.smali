.class public abstract Landroid/app/admin/IDevicePolicyManager$Stub;
.super Landroid/os/Binder;
.source "IDevicePolicyManager.java"

# interfaces
.implements Landroid/app/admin/IDevicePolicyManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/IDevicePolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.admin.IDevicePolicyManager"

.field static final TRANSACTION_addCrossProfileIntentFilter:I = 0x67

.field static final TRANSACTION_addCrossProfileWidgetProvider:I = 0x91

.field static final TRANSACTION_addPersistentPreferredActivity:I = 0x5c

.field static final TRANSACTION_approveCaCert:I = 0x53

.field static final TRANSACTION_choosePrivateKeyAlias:I = 0x57

.field static final TRANSACTION_clearCrossProfileIntentFilters:I = 0x68

.field static final TRANSACTION_clearDeviceOwner:I = 0x43

.field static final TRANSACTION_clearPackagePersistentPreferredActivities:I = 0x5d

.field static final TRANSACTION_clearProfileOwner:I = 0x4a

.field static final TRANSACTION_createAndManageUser:I = 0x73

.field static final TRANSACTION_enableSystemApp:I = 0x76

.field static final TRANSACTION_enableSystemAppWithIntent:I = 0x77

.field static final TRANSACTION_enforceCanManageCaCerts:I = 0x52

.field static final TRANSACTION_forceRemoveActiveAdmin:I = 0x37

.field static final TRANSACTION_getAccountTypesWithManagementDisabled:I = 0x79

.field static final TRANSACTION_getAccountTypesWithManagementDisabledAsUser:I = 0x7a

.field static final TRANSACTION_getActiveAdmins:I = 0x33

.field static final TRANSACTION_getAlwaysOnVpnPackage:I = 0x5b

.field static final TRANSACTION_getApplicationRestrictions:I = 0x5f

.field static final TRANSACTION_getApplicationRestrictionsManagingPackage:I = 0x61

.field static final TRANSACTION_getAutoTimeRequired:I = 0x95

.field static final TRANSACTION_getBluetoothContactSharingDisabled:I = 0x8d

.field static final TRANSACTION_getBluetoothContactSharingDisabledForUser:I = 0x8e

.field static final TRANSACTION_getCameraDisabled:I = 0x2c

.field static final TRANSACTION_getCertInstallerPackage:I = 0x59

.field static final TRANSACTION_getCrossProfileCallerIdDisabled:I = 0x86

.field static final TRANSACTION_getCrossProfileCallerIdDisabledForUser:I = 0x87

.field static final TRANSACTION_getCrossProfileContactsSearchDisabled:I = 0x89

.field static final TRANSACTION_getCrossProfileContactsSearchDisabledForUser:I = 0x8a

.field static final TRANSACTION_getCrossProfileWidgetProviders:I = 0x93

.field static final TRANSACTION_getCurrentFailedPasswordAttempts:I = 0x18

.field static final TRANSACTION_getDeviceOwnerComponent:I = 0x41

.field static final TRANSACTION_getDeviceOwnerLockScreenInfo:I = 0x4d

.field static final TRANSACTION_getDeviceOwnerName:I = 0x42

.field static final TRANSACTION_getDeviceOwnerUserId:I = 0x44

.field static final TRANSACTION_getDoNotAskCredentialsOnBoot:I = 0x9e

.field static final TRANSACTION_getForceEphemeralUsers:I = 0x97

.field static final TRANSACTION_getGlobalProxyAdmin:I = 0x25

.field static final TRANSACTION_getKeepUninstalledPackages:I = 0xa6

.field static final TRANSACTION_getKeyguardDisabledFeatures:I = 0x30

.field static final TRANSACTION_getLockTaskPackages:I = 0x7c

.field static final TRANSACTION_getLongSupportMessage:I = 0xae

.field static final TRANSACTION_getLongSupportMessageForUser:I = 0xb0

.field static final TRANSACTION_getMaximumFailedPasswordsForWipe:I = 0x1b

.field static final TRANSACTION_getMaximumTimeToLock:I = 0x1e

.field static final TRANSACTION_getMaximumTimeToLockForUserAndProfiles:I = 0x1f

.field static final TRANSACTION_getOrganizationColor:I = 0xb4

.field static final TRANSACTION_getOrganizationColorForUser:I = 0xb5

.field static final TRANSACTION_getOrganizationName:I = 0xb7

.field static final TRANSACTION_getOrganizationNameForUser:I = 0xb8

.field static final TRANSACTION_getPasswordExpiration:I = 0x15

.field static final TRANSACTION_getPasswordExpirationTimeout:I = 0x14

.field static final TRANSACTION_getPasswordHistoryLength:I = 0x12

.field static final TRANSACTION_getPasswordMinimumLength:I = 0x4

.field static final TRANSACTION_getPasswordMinimumLetters:I = 0xa

.field static final TRANSACTION_getPasswordMinimumLowerCase:I = 0x8

.field static final TRANSACTION_getPasswordMinimumNonLetter:I = 0x10

.field static final TRANSACTION_getPasswordMinimumNumeric:I = 0xc

.field static final TRANSACTION_getPasswordMinimumSymbols:I = 0xe

.field static final TRANSACTION_getPasswordMinimumUpperCase:I = 0x6

.field static final TRANSACTION_getPasswordQuality:I = 0x2

.field static final TRANSACTION_getPermissionGrantState:I = 0xa3

.field static final TRANSACTION_getPermissionPolicy:I = 0xa1

.field static final TRANSACTION_getPermittedAccessibilityServices:I = 0x6a

.field static final TRANSACTION_getPermittedAccessibilityServicesForUser:I = 0x6b

.field static final TRANSACTION_getPermittedInputMethods:I = 0x6e

.field static final TRANSACTION_getPermittedInputMethodsForCurrentUser:I = 0x6f

.field static final TRANSACTION_getProfileOwner:I = 0x46

.field static final TRANSACTION_getProfileOwnerName:I = 0x47

.field static final TRANSACTION_getProfileWithMinimumFailedPasswordsForWipe:I = 0x19

.field static final TRANSACTION_getRemoveWarning:I = 0x35

.field static final TRANSACTION_getRequiredStrongAuthTimeout:I = 0x21

.field static final TRANSACTION_getRestrictionsProvider:I = 0x64

.field static final TRANSACTION_getScreenCaptureDisabled:I = 0x2e

.field static final TRANSACTION_getShortSupportMessage:I = 0xac

.field static final TRANSACTION_getShortSupportMessageForUser:I = 0xaf

.field static final TRANSACTION_getStorageEncryption:I = 0x28

.field static final TRANSACTION_getStorageEncryptionStatus:I = 0x29

.field static final TRANSACTION_getSystemUpdatePolicy:I = 0x9b

.field static final TRANSACTION_getTrustAgentConfiguration:I = 0x90

.field static final TRANSACTION_getUserProvisioningState:I = 0xb9

.field static final TRANSACTION_getUserRestrictions:I = 0x66

.field static final TRANSACTION_getWifiMacAddress:I = 0xa9

.field static final TRANSACTION_hasGrantedPolicy:I = 0x38

.field static final TRANSACTION_hasUserSetupCompleted:I = 0x4b

.field static final TRANSACTION_installCaCert:I = 0x50

.field static final TRANSACTION_installKeyPair:I = 0x55

.field static final TRANSACTION_isAccessibilityServicePermittedByAdmin:I = 0x6c

.field static final TRANSACTION_isActivePasswordSufficient:I = 0x16

.field static final TRANSACTION_isAdminActive:I = 0x32

.field static final TRANSACTION_isAffiliatedUser:I = 0xbc

.field static final TRANSACTION_isApplicationHidden:I = 0x72

.field static final TRANSACTION_isBackupServiceEnabled:I = 0xc7

.field static final TRANSACTION_isCaCertApproved:I = 0x54

.field static final TRANSACTION_isCallerApplicationRestrictionsManagingPackage:I = 0x62

.field static final TRANSACTION_isDeviceProvisioned:I = 0xc3

.field static final TRANSACTION_isDeviceProvisioningConfigApplied:I = 0xc4

.field static final TRANSACTION_isInputMethodPermittedByAdmin:I = 0x70

.field static final TRANSACTION_isLockTaskPermitted:I = 0x7d

.field static final TRANSACTION_isManagedProfile:I = 0xa7

.field static final TRANSACTION_isMasterVolumeMuted:I = 0x81

.field static final TRANSACTION_isPackageSuspended:I = 0x4f

.field static final TRANSACTION_isProfileActivePasswordSufficientForParent:I = 0x17

.field static final TRANSACTION_isProvisioningAllowed:I = 0xa4

.field static final TRANSACTION_isRemovingAdmin:I = 0x98

.field static final TRANSACTION_isSecurityLoggingEnabled:I = 0xbe

.field static final TRANSACTION_isSeparateProfileChallengeAllowed:I = 0xb1

.field static final TRANSACTION_isSystemOnlyUser:I = 0xa8

.field static final TRANSACTION_isUninstallBlocked:I = 0x84

.field static final TRANSACTION_isUninstallInQueue:I = 0xc1

.field static final TRANSACTION_lockNow:I = 0x22

.field static final TRANSACTION_notifyLockTaskModeChanged:I = 0x82

.field static final TRANSACTION_notifyPendingSystemUpdate:I = 0x9f

.field static final TRANSACTION_packageHasActiveAdmins:I = 0x34

.field static final TRANSACTION_reboot:I = 0xaa

.field static final TRANSACTION_removeActiveAdmin:I = 0x36

.field static final TRANSACTION_removeCrossProfileWidgetProvider:I = 0x92

.field static final TRANSACTION_removeKeyPair:I = 0x56

.field static final TRANSACTION_removeUser:I = 0x74

.field static final TRANSACTION_reportFailedFingerprintAttempt:I = 0x3c

.field static final TRANSACTION_reportFailedPasswordAttempt:I = 0x3a

.field static final TRANSACTION_reportKeyguardDismissed:I = 0x3e

.field static final TRANSACTION_reportKeyguardSecured:I = 0x3f

.field static final TRANSACTION_reportSuccessfulFingerprintAttempt:I = 0x3d

.field static final TRANSACTION_reportSuccessfulPasswordAttempt:I = 0x3b

.field static final TRANSACTION_requestBugreport:I = 0x2a

.field static final TRANSACTION_resetPassword:I = 0x1c

.field static final TRANSACTION_retrievePreRebootSecurityLogs:I = 0xc0

.field static final TRANSACTION_retrieveSecurityLogs:I = 0xbf

.field static final TRANSACTION_setAccountManagementDisabled:I = 0x78

.field static final TRANSACTION_setActiveAdmin:I = 0x31

.field static final TRANSACTION_setActivePasswordState:I = 0x39

.field static final TRANSACTION_setAffiliationIds:I = 0xbb

.field static final TRANSACTION_setAlwaysOnVpnPackage:I = 0x5a

.field static final TRANSACTION_setApplicationHidden:I = 0x71

.field static final TRANSACTION_setApplicationRestrictions:I = 0x5e

.field static final TRANSACTION_setApplicationRestrictionsManagingPackage:I = 0x60

.field static final TRANSACTION_setAutoTimeRequired:I = 0x94

.field static final TRANSACTION_setBackupServiceEnabled:I = 0xc6

.field static final TRANSACTION_setBluetoothContactSharingDisabled:I = 0x8c

.field static final TRANSACTION_setCameraDisabled:I = 0x2b

.field static final TRANSACTION_setCertInstallerPackage:I = 0x58

.field static final TRANSACTION_setCrossProfileCallerIdDisabled:I = 0x85

.field static final TRANSACTION_setCrossProfileContactsSearchDisabled:I = 0x88

.field static final TRANSACTION_setDeviceOwner:I = 0x40

.field static final TRANSACTION_setDeviceOwnerLockScreenInfo:I = 0x4c

.field static final TRANSACTION_setDeviceProvisioningConfigApplied:I = 0xc5

.field static final TRANSACTION_setForceEphemeralUsers:I = 0x96

.field static final TRANSACTION_setGlobalProxy:I = 0x24

.field static final TRANSACTION_setGlobalSetting:I = 0x7e

.field static final TRANSACTION_setKeepUninstalledPackages:I = 0xa5

.field static final TRANSACTION_setKeyguardDisabled:I = 0x9c

.field static final TRANSACTION_setKeyguardDisabledFeatures:I = 0x2f

.field static final TRANSACTION_setLockTaskPackages:I = 0x7b

.field static final TRANSACTION_setLongSupportMessage:I = 0xad

.field static final TRANSACTION_setMasterVolumeMuted:I = 0x80

.field static final TRANSACTION_setMaximumFailedPasswordsForWipe:I = 0x1a

.field static final TRANSACTION_setMaximumTimeToLock:I = 0x1d

.field static final TRANSACTION_setOrganizationColor:I = 0xb2

.field static final TRANSACTION_setOrganizationColorForUser:I = 0xb3

.field static final TRANSACTION_setOrganizationName:I = 0xb6

.field static final TRANSACTION_setPackagesSuspended:I = 0x4e

.field static final TRANSACTION_setPasswordExpirationTimeout:I = 0x13

.field static final TRANSACTION_setPasswordHistoryLength:I = 0x11

.field static final TRANSACTION_setPasswordMinimumLength:I = 0x3

.field static final TRANSACTION_setPasswordMinimumLetters:I = 0x9

.field static final TRANSACTION_setPasswordMinimumLowerCase:I = 0x7

.field static final TRANSACTION_setPasswordMinimumNonLetter:I = 0xf

.field static final TRANSACTION_setPasswordMinimumNumeric:I = 0xb

.field static final TRANSACTION_setPasswordMinimumSymbols:I = 0xd

.field static final TRANSACTION_setPasswordMinimumUpperCase:I = 0x5

.field static final TRANSACTION_setPasswordQuality:I = 0x1

.field static final TRANSACTION_setPermissionGrantState:I = 0xa2

.field static final TRANSACTION_setPermissionPolicy:I = 0xa0

.field static final TRANSACTION_setPermittedAccessibilityServices:I = 0x69

.field static final TRANSACTION_setPermittedInputMethods:I = 0x6d

.field static final TRANSACTION_setProfileEnabled:I = 0x48

.field static final TRANSACTION_setProfileName:I = 0x49

.field static final TRANSACTION_setProfileOwner:I = 0x45

.field static final TRANSACTION_setRecommendedGlobalProxy:I = 0x26

.field static final TRANSACTION_setRequiredStrongAuthTimeout:I = 0x20

.field static final TRANSACTION_setRestrictionsProvider:I = 0x63

.field static final TRANSACTION_setScreenCaptureDisabled:I = 0x2d

.field static final TRANSACTION_setSecureSetting:I = 0x7f

.field static final TRANSACTION_setSecurityLoggingEnabled:I = 0xbd

.field static final TRANSACTION_setShortSupportMessage:I = 0xab

.field static final TRANSACTION_setStatusBarDisabled:I = 0x9d

.field static final TRANSACTION_setStorageEncryption:I = 0x27

.field static final TRANSACTION_setSystemUpdatePolicy:I = 0x9a

.field static final TRANSACTION_setTrustAgentConfiguration:I = 0x8f

.field static final TRANSACTION_setUninstallBlocked:I = 0x83

.field static final TRANSACTION_setUserIcon:I = 0x99

.field static final TRANSACTION_setUserProvisioningState:I = 0xba

.field static final TRANSACTION_setUserRestriction:I = 0x65

.field static final TRANSACTION_startManagedQuickContact:I = 0x8b

.field static final TRANSACTION_switchUser:I = 0x75

.field static final TRANSACTION_uninstallCaCerts:I = 0x51

.field static final TRANSACTION_uninstallPackageWithActiveAdmins:I = 0xc2

.field static final TRANSACTION_wipeData:I = 0x23


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 19
    const-string/jumbo v0, "android.app.admin.IDevicePolicyManager"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 27
    if-nez p0, :cond_0

    #@3
    .line 28
    return-object v1

    #@4
    .line 30
    :cond_0
    const-string/jumbo v1, "android.app.admin.IDevicePolicyManager"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/app/admin/IDevicePolicyManager;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 32
    check-cast v0, Landroid/app/admin/IDevicePolicyManager;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 34
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@19
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 73
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
    .line 42
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 3253
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v4

    #@7
    return v4

    #@8
    .line 46
    :sswitch_0
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@b
    move-object/from16 v0, p3

    #@d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 47
    const/4 v4, 0x1

    #@11
    return v4

    #@12
    .line 51
    :sswitch_1
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@15
    move-object/from16 v0, p2

    #@17
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a
    .line 53
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1d
    move-result v4

    #@1e
    if-eqz v4, :cond_0

    #@20
    .line 54
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@22
    move-object/from16 v0, p2

    #@24
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@27
    move-result-object v15

    #@28
    check-cast v15, Landroid/content/ComponentName;

    #@2a
    .line 60
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2d
    move-result v6

    #@2e
    .line 62
    .local v6, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@31
    move-result v4

    #@32
    if-eqz v4, :cond_1

    #@34
    const/16 v30, 0x1

    #@36
    .line 63
    .local v30, "_arg2":Z
    :goto_1
    move-object/from16 v0, p0

    #@38
    move/from16 v1, v30

    #@3a
    invoke-virtual {v0, v15, v6, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordQuality(Landroid/content/ComponentName;IZ)V

    #@3d
    .line 64
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@40
    .line 65
    const/4 v4, 0x1

    #@41
    return v4

    #@42
    .line 57
    .end local v6    # "_arg1":I
    .end local v30    # "_arg2":Z
    :cond_0
    const/4 v15, 0x0

    #@43
    .local v15, "_arg0":Landroid/content/ComponentName;
    goto :goto_0

    #@44
    .line 62
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v6    # "_arg1":I
    :cond_1
    const/16 v30, 0x0

    #@46
    goto :goto_1

    #@47
    .line 69
    .end local v6    # "_arg1":I
    :sswitch_2
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@4a
    move-object/from16 v0, p2

    #@4c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4f
    .line 71
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@52
    move-result v4

    #@53
    if-eqz v4, :cond_2

    #@55
    .line 72
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@57
    move-object/from16 v0, p2

    #@59
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@5c
    move-result-object v15

    #@5d
    check-cast v15, Landroid/content/ComponentName;

    #@5f
    .line 78
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@62
    move-result v6

    #@63
    .line 80
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@66
    move-result v4

    #@67
    if-eqz v4, :cond_3

    #@69
    const/16 v30, 0x1

    #@6b
    .line 81
    .restart local v30    # "_arg2":Z
    :goto_3
    move-object/from16 v0, p0

    #@6d
    move/from16 v1, v30

    #@6f
    invoke-virtual {v0, v15, v6, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordQuality(Landroid/content/ComponentName;IZ)I

    #@72
    move-result v56

    #@73
    .line 82
    .local v56, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@76
    .line 83
    move-object/from16 v0, p3

    #@78
    move/from16 v1, v56

    #@7a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@7d
    .line 84
    const/4 v4, 0x1

    #@7e
    return v4

    #@7f
    .line 75
    .end local v6    # "_arg1":I
    .end local v30    # "_arg2":Z
    .end local v56    # "_result":I
    :cond_2
    const/4 v15, 0x0

    #@80
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_2

    #@81
    .line 80
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v6    # "_arg1":I
    :cond_3
    const/16 v30, 0x0

    #@83
    goto :goto_3

    #@84
    .line 88
    .end local v6    # "_arg1":I
    :sswitch_3
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@87
    move-object/from16 v0, p2

    #@89
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@8c
    .line 90
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@8f
    move-result v4

    #@90
    if-eqz v4, :cond_4

    #@92
    .line 91
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@94
    move-object/from16 v0, p2

    #@96
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@99
    move-result-object v15

    #@9a
    check-cast v15, Landroid/content/ComponentName;

    #@9c
    .line 97
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@9f
    move-result v6

    #@a0
    .line 99
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@a3
    move-result v4

    #@a4
    if-eqz v4, :cond_5

    #@a6
    const/16 v30, 0x1

    #@a8
    .line 100
    .restart local v30    # "_arg2":Z
    :goto_5
    move-object/from16 v0, p0

    #@aa
    move/from16 v1, v30

    #@ac
    invoke-virtual {v0, v15, v6, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumLength(Landroid/content/ComponentName;IZ)V

    #@af
    .line 101
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@b2
    .line 102
    const/4 v4, 0x1

    #@b3
    return v4

    #@b4
    .line 94
    .end local v6    # "_arg1":I
    .end local v30    # "_arg2":Z
    :cond_4
    const/4 v15, 0x0

    #@b5
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_4

    #@b6
    .line 99
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v6    # "_arg1":I
    :cond_5
    const/16 v30, 0x0

    #@b8
    goto :goto_5

    #@b9
    .line 106
    .end local v6    # "_arg1":I
    :sswitch_4
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@bc
    move-object/from16 v0, p2

    #@be
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@c1
    .line 108
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@c4
    move-result v4

    #@c5
    if-eqz v4, :cond_6

    #@c7
    .line 109
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@c9
    move-object/from16 v0, p2

    #@cb
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@ce
    move-result-object v15

    #@cf
    check-cast v15, Landroid/content/ComponentName;

    #@d1
    .line 115
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@d4
    move-result v6

    #@d5
    .line 117
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@d8
    move-result v4

    #@d9
    if-eqz v4, :cond_7

    #@db
    const/16 v30, 0x1

    #@dd
    .line 118
    .restart local v30    # "_arg2":Z
    :goto_7
    move-object/from16 v0, p0

    #@df
    move/from16 v1, v30

    #@e1
    invoke-virtual {v0, v15, v6, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumLength(Landroid/content/ComponentName;IZ)I

    #@e4
    move-result v56

    #@e5
    .line 119
    .restart local v56    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@e8
    .line 120
    move-object/from16 v0, p3

    #@ea
    move/from16 v1, v56

    #@ec
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@ef
    .line 121
    const/4 v4, 0x1

    #@f0
    return v4

    #@f1
    .line 112
    .end local v6    # "_arg1":I
    .end local v30    # "_arg2":Z
    .end local v56    # "_result":I
    :cond_6
    const/4 v15, 0x0

    #@f2
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_6

    #@f3
    .line 117
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v6    # "_arg1":I
    :cond_7
    const/16 v30, 0x0

    #@f5
    goto :goto_7

    #@f6
    .line 125
    .end local v6    # "_arg1":I
    :sswitch_5
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@f9
    move-object/from16 v0, p2

    #@fb
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@fe
    .line 127
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@101
    move-result v4

    #@102
    if-eqz v4, :cond_8

    #@104
    .line 128
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@106
    move-object/from16 v0, p2

    #@108
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@10b
    move-result-object v15

    #@10c
    check-cast v15, Landroid/content/ComponentName;

    #@10e
    .line 134
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@111
    move-result v6

    #@112
    .line 136
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@115
    move-result v4

    #@116
    if-eqz v4, :cond_9

    #@118
    const/16 v30, 0x1

    #@11a
    .line 137
    .restart local v30    # "_arg2":Z
    :goto_9
    move-object/from16 v0, p0

    #@11c
    move/from16 v1, v30

    #@11e
    invoke-virtual {v0, v15, v6, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumUpperCase(Landroid/content/ComponentName;IZ)V

    #@121
    .line 138
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@124
    .line 139
    const/4 v4, 0x1

    #@125
    return v4

    #@126
    .line 131
    .end local v6    # "_arg1":I
    .end local v30    # "_arg2":Z
    :cond_8
    const/4 v15, 0x0

    #@127
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_8

    #@128
    .line 136
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v6    # "_arg1":I
    :cond_9
    const/16 v30, 0x0

    #@12a
    goto :goto_9

    #@12b
    .line 143
    .end local v6    # "_arg1":I
    :sswitch_6
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@12e
    move-object/from16 v0, p2

    #@130
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@133
    .line 145
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@136
    move-result v4

    #@137
    if-eqz v4, :cond_a

    #@139
    .line 146
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@13b
    move-object/from16 v0, p2

    #@13d
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@140
    move-result-object v15

    #@141
    check-cast v15, Landroid/content/ComponentName;

    #@143
    .line 152
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@146
    move-result v6

    #@147
    .line 154
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@14a
    move-result v4

    #@14b
    if-eqz v4, :cond_b

    #@14d
    const/16 v30, 0x1

    #@14f
    .line 155
    .restart local v30    # "_arg2":Z
    :goto_b
    move-object/from16 v0, p0

    #@151
    move/from16 v1, v30

    #@153
    invoke-virtual {v0, v15, v6, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumUpperCase(Landroid/content/ComponentName;IZ)I

    #@156
    move-result v56

    #@157
    .line 156
    .restart local v56    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@15a
    .line 157
    move-object/from16 v0, p3

    #@15c
    move/from16 v1, v56

    #@15e
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@161
    .line 158
    const/4 v4, 0x1

    #@162
    return v4

    #@163
    .line 149
    .end local v6    # "_arg1":I
    .end local v30    # "_arg2":Z
    .end local v56    # "_result":I
    :cond_a
    const/4 v15, 0x0

    #@164
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_a

    #@165
    .line 154
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v6    # "_arg1":I
    :cond_b
    const/16 v30, 0x0

    #@167
    goto :goto_b

    #@168
    .line 162
    .end local v6    # "_arg1":I
    :sswitch_7
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@16b
    move-object/from16 v0, p2

    #@16d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@170
    .line 164
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@173
    move-result v4

    #@174
    if-eqz v4, :cond_c

    #@176
    .line 165
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@178
    move-object/from16 v0, p2

    #@17a
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@17d
    move-result-object v15

    #@17e
    check-cast v15, Landroid/content/ComponentName;

    #@180
    .line 171
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@183
    move-result v6

    #@184
    .line 173
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@187
    move-result v4

    #@188
    if-eqz v4, :cond_d

    #@18a
    const/16 v30, 0x1

    #@18c
    .line 174
    .restart local v30    # "_arg2":Z
    :goto_d
    move-object/from16 v0, p0

    #@18e
    move/from16 v1, v30

    #@190
    invoke-virtual {v0, v15, v6, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumLowerCase(Landroid/content/ComponentName;IZ)V

    #@193
    .line 175
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@196
    .line 176
    const/4 v4, 0x1

    #@197
    return v4

    #@198
    .line 168
    .end local v6    # "_arg1":I
    .end local v30    # "_arg2":Z
    :cond_c
    const/4 v15, 0x0

    #@199
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_c

    #@19a
    .line 173
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v6    # "_arg1":I
    :cond_d
    const/16 v30, 0x0

    #@19c
    goto :goto_d

    #@19d
    .line 180
    .end local v6    # "_arg1":I
    :sswitch_8
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@1a0
    move-object/from16 v0, p2

    #@1a2
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a5
    .line 182
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1a8
    move-result v4

    #@1a9
    if-eqz v4, :cond_e

    #@1ab
    .line 183
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1ad
    move-object/from16 v0, p2

    #@1af
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1b2
    move-result-object v15

    #@1b3
    check-cast v15, Landroid/content/ComponentName;

    #@1b5
    .line 189
    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1b8
    move-result v6

    #@1b9
    .line 191
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1bc
    move-result v4

    #@1bd
    if-eqz v4, :cond_f

    #@1bf
    const/16 v30, 0x1

    #@1c1
    .line 192
    .restart local v30    # "_arg2":Z
    :goto_f
    move-object/from16 v0, p0

    #@1c3
    move/from16 v1, v30

    #@1c5
    invoke-virtual {v0, v15, v6, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumLowerCase(Landroid/content/ComponentName;IZ)I

    #@1c8
    move-result v56

    #@1c9
    .line 193
    .restart local v56    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1cc
    .line 194
    move-object/from16 v0, p3

    #@1ce
    move/from16 v1, v56

    #@1d0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1d3
    .line 195
    const/4 v4, 0x1

    #@1d4
    return v4

    #@1d5
    .line 186
    .end local v6    # "_arg1":I
    .end local v30    # "_arg2":Z
    .end local v56    # "_result":I
    :cond_e
    const/4 v15, 0x0

    #@1d6
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_e

    #@1d7
    .line 191
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v6    # "_arg1":I
    :cond_f
    const/16 v30, 0x0

    #@1d9
    goto :goto_f

    #@1da
    .line 199
    .end local v6    # "_arg1":I
    :sswitch_9
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@1dd
    move-object/from16 v0, p2

    #@1df
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1e2
    .line 201
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1e5
    move-result v4

    #@1e6
    if-eqz v4, :cond_10

    #@1e8
    .line 202
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1ea
    move-object/from16 v0, p2

    #@1ec
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1ef
    move-result-object v15

    #@1f0
    check-cast v15, Landroid/content/ComponentName;

    #@1f2
    .line 208
    :goto_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1f5
    move-result v6

    #@1f6
    .line 210
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1f9
    move-result v4

    #@1fa
    if-eqz v4, :cond_11

    #@1fc
    const/16 v30, 0x1

    #@1fe
    .line 211
    .restart local v30    # "_arg2":Z
    :goto_11
    move-object/from16 v0, p0

    #@200
    move/from16 v1, v30

    #@202
    invoke-virtual {v0, v15, v6, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumLetters(Landroid/content/ComponentName;IZ)V

    #@205
    .line 212
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@208
    .line 213
    const/4 v4, 0x1

    #@209
    return v4

    #@20a
    .line 205
    .end local v6    # "_arg1":I
    .end local v30    # "_arg2":Z
    :cond_10
    const/4 v15, 0x0

    #@20b
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_10

    #@20c
    .line 210
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v6    # "_arg1":I
    :cond_11
    const/16 v30, 0x0

    #@20e
    goto :goto_11

    #@20f
    .line 217
    .end local v6    # "_arg1":I
    :sswitch_a
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@212
    move-object/from16 v0, p2

    #@214
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@217
    .line 219
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@21a
    move-result v4

    #@21b
    if-eqz v4, :cond_12

    #@21d
    .line 220
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@21f
    move-object/from16 v0, p2

    #@221
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@224
    move-result-object v15

    #@225
    check-cast v15, Landroid/content/ComponentName;

    #@227
    .line 226
    :goto_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@22a
    move-result v6

    #@22b
    .line 228
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@22e
    move-result v4

    #@22f
    if-eqz v4, :cond_13

    #@231
    const/16 v30, 0x1

    #@233
    .line 229
    .restart local v30    # "_arg2":Z
    :goto_13
    move-object/from16 v0, p0

    #@235
    move/from16 v1, v30

    #@237
    invoke-virtual {v0, v15, v6, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumLetters(Landroid/content/ComponentName;IZ)I

    #@23a
    move-result v56

    #@23b
    .line 230
    .restart local v56    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@23e
    .line 231
    move-object/from16 v0, p3

    #@240
    move/from16 v1, v56

    #@242
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@245
    .line 232
    const/4 v4, 0x1

    #@246
    return v4

    #@247
    .line 223
    .end local v6    # "_arg1":I
    .end local v30    # "_arg2":Z
    .end local v56    # "_result":I
    :cond_12
    const/4 v15, 0x0

    #@248
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_12

    #@249
    .line 228
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v6    # "_arg1":I
    :cond_13
    const/16 v30, 0x0

    #@24b
    goto :goto_13

    #@24c
    .line 236
    .end local v6    # "_arg1":I
    :sswitch_b
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@24f
    move-object/from16 v0, p2

    #@251
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@254
    .line 238
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@257
    move-result v4

    #@258
    if-eqz v4, :cond_14

    #@25a
    .line 239
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@25c
    move-object/from16 v0, p2

    #@25e
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@261
    move-result-object v15

    #@262
    check-cast v15, Landroid/content/ComponentName;

    #@264
    .line 245
    :goto_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@267
    move-result v6

    #@268
    .line 247
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@26b
    move-result v4

    #@26c
    if-eqz v4, :cond_15

    #@26e
    const/16 v30, 0x1

    #@270
    .line 248
    .restart local v30    # "_arg2":Z
    :goto_15
    move-object/from16 v0, p0

    #@272
    move/from16 v1, v30

    #@274
    invoke-virtual {v0, v15, v6, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumNumeric(Landroid/content/ComponentName;IZ)V

    #@277
    .line 249
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@27a
    .line 250
    const/4 v4, 0x1

    #@27b
    return v4

    #@27c
    .line 242
    .end local v6    # "_arg1":I
    .end local v30    # "_arg2":Z
    :cond_14
    const/4 v15, 0x0

    #@27d
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_14

    #@27e
    .line 247
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v6    # "_arg1":I
    :cond_15
    const/16 v30, 0x0

    #@280
    goto :goto_15

    #@281
    .line 254
    .end local v6    # "_arg1":I
    :sswitch_c
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@284
    move-object/from16 v0, p2

    #@286
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@289
    .line 256
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@28c
    move-result v4

    #@28d
    if-eqz v4, :cond_16

    #@28f
    .line 257
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@291
    move-object/from16 v0, p2

    #@293
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@296
    move-result-object v15

    #@297
    check-cast v15, Landroid/content/ComponentName;

    #@299
    .line 263
    :goto_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@29c
    move-result v6

    #@29d
    .line 265
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2a0
    move-result v4

    #@2a1
    if-eqz v4, :cond_17

    #@2a3
    const/16 v30, 0x1

    #@2a5
    .line 266
    .restart local v30    # "_arg2":Z
    :goto_17
    move-object/from16 v0, p0

    #@2a7
    move/from16 v1, v30

    #@2a9
    invoke-virtual {v0, v15, v6, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumNumeric(Landroid/content/ComponentName;IZ)I

    #@2ac
    move-result v56

    #@2ad
    .line 267
    .restart local v56    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2b0
    .line 268
    move-object/from16 v0, p3

    #@2b2
    move/from16 v1, v56

    #@2b4
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@2b7
    .line 269
    const/4 v4, 0x1

    #@2b8
    return v4

    #@2b9
    .line 260
    .end local v6    # "_arg1":I
    .end local v30    # "_arg2":Z
    .end local v56    # "_result":I
    :cond_16
    const/4 v15, 0x0

    #@2ba
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_16

    #@2bb
    .line 265
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v6    # "_arg1":I
    :cond_17
    const/16 v30, 0x0

    #@2bd
    goto :goto_17

    #@2be
    .line 273
    .end local v6    # "_arg1":I
    :sswitch_d
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@2c1
    move-object/from16 v0, p2

    #@2c3
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2c6
    .line 275
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2c9
    move-result v4

    #@2ca
    if-eqz v4, :cond_18

    #@2cc
    .line 276
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2ce
    move-object/from16 v0, p2

    #@2d0
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2d3
    move-result-object v15

    #@2d4
    check-cast v15, Landroid/content/ComponentName;

    #@2d6
    .line 282
    :goto_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2d9
    move-result v6

    #@2da
    .line 284
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2dd
    move-result v4

    #@2de
    if-eqz v4, :cond_19

    #@2e0
    const/16 v30, 0x1

    #@2e2
    .line 285
    .restart local v30    # "_arg2":Z
    :goto_19
    move-object/from16 v0, p0

    #@2e4
    move/from16 v1, v30

    #@2e6
    invoke-virtual {v0, v15, v6, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumSymbols(Landroid/content/ComponentName;IZ)V

    #@2e9
    .line 286
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2ec
    .line 287
    const/4 v4, 0x1

    #@2ed
    return v4

    #@2ee
    .line 279
    .end local v6    # "_arg1":I
    .end local v30    # "_arg2":Z
    :cond_18
    const/4 v15, 0x0

    #@2ef
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_18

    #@2f0
    .line 284
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v6    # "_arg1":I
    :cond_19
    const/16 v30, 0x0

    #@2f2
    goto :goto_19

    #@2f3
    .line 291
    .end local v6    # "_arg1":I
    :sswitch_e
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@2f6
    move-object/from16 v0, p2

    #@2f8
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2fb
    .line 293
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2fe
    move-result v4

    #@2ff
    if-eqz v4, :cond_1a

    #@301
    .line 294
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@303
    move-object/from16 v0, p2

    #@305
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@308
    move-result-object v15

    #@309
    check-cast v15, Landroid/content/ComponentName;

    #@30b
    .line 300
    :goto_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@30e
    move-result v6

    #@30f
    .line 302
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@312
    move-result v4

    #@313
    if-eqz v4, :cond_1b

    #@315
    const/16 v30, 0x1

    #@317
    .line 303
    .restart local v30    # "_arg2":Z
    :goto_1b
    move-object/from16 v0, p0

    #@319
    move/from16 v1, v30

    #@31b
    invoke-virtual {v0, v15, v6, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumSymbols(Landroid/content/ComponentName;IZ)I

    #@31e
    move-result v56

    #@31f
    .line 304
    .restart local v56    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@322
    .line 305
    move-object/from16 v0, p3

    #@324
    move/from16 v1, v56

    #@326
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@329
    .line 306
    const/4 v4, 0x1

    #@32a
    return v4

    #@32b
    .line 297
    .end local v6    # "_arg1":I
    .end local v30    # "_arg2":Z
    .end local v56    # "_result":I
    :cond_1a
    const/4 v15, 0x0

    #@32c
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_1a

    #@32d
    .line 302
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v6    # "_arg1":I
    :cond_1b
    const/16 v30, 0x0

    #@32f
    goto :goto_1b

    #@330
    .line 310
    .end local v6    # "_arg1":I
    :sswitch_f
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@333
    move-object/from16 v0, p2

    #@335
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@338
    .line 312
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@33b
    move-result v4

    #@33c
    if-eqz v4, :cond_1c

    #@33e
    .line 313
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@340
    move-object/from16 v0, p2

    #@342
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@345
    move-result-object v15

    #@346
    check-cast v15, Landroid/content/ComponentName;

    #@348
    .line 319
    :goto_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@34b
    move-result v6

    #@34c
    .line 321
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@34f
    move-result v4

    #@350
    if-eqz v4, :cond_1d

    #@352
    const/16 v30, 0x1

    #@354
    .line 322
    .restart local v30    # "_arg2":Z
    :goto_1d
    move-object/from16 v0, p0

    #@356
    move/from16 v1, v30

    #@358
    invoke-virtual {v0, v15, v6, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumNonLetter(Landroid/content/ComponentName;IZ)V

    #@35b
    .line 323
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@35e
    .line 324
    const/4 v4, 0x1

    #@35f
    return v4

    #@360
    .line 316
    .end local v6    # "_arg1":I
    .end local v30    # "_arg2":Z
    :cond_1c
    const/4 v15, 0x0

    #@361
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_1c

    #@362
    .line 321
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v6    # "_arg1":I
    :cond_1d
    const/16 v30, 0x0

    #@364
    goto :goto_1d

    #@365
    .line 328
    .end local v6    # "_arg1":I
    :sswitch_10
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@368
    move-object/from16 v0, p2

    #@36a
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@36d
    .line 330
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@370
    move-result v4

    #@371
    if-eqz v4, :cond_1e

    #@373
    .line 331
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@375
    move-object/from16 v0, p2

    #@377
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@37a
    move-result-object v15

    #@37b
    check-cast v15, Landroid/content/ComponentName;

    #@37d
    .line 337
    :goto_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@380
    move-result v6

    #@381
    .line 339
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@384
    move-result v4

    #@385
    if-eqz v4, :cond_1f

    #@387
    const/16 v30, 0x1

    #@389
    .line 340
    .restart local v30    # "_arg2":Z
    :goto_1f
    move-object/from16 v0, p0

    #@38b
    move/from16 v1, v30

    #@38d
    invoke-virtual {v0, v15, v6, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumNonLetter(Landroid/content/ComponentName;IZ)I

    #@390
    move-result v56

    #@391
    .line 341
    .restart local v56    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@394
    .line 342
    move-object/from16 v0, p3

    #@396
    move/from16 v1, v56

    #@398
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@39b
    .line 343
    const/4 v4, 0x1

    #@39c
    return v4

    #@39d
    .line 334
    .end local v6    # "_arg1":I
    .end local v30    # "_arg2":Z
    .end local v56    # "_result":I
    :cond_1e
    const/4 v15, 0x0

    #@39e
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_1e

    #@39f
    .line 339
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v6    # "_arg1":I
    :cond_1f
    const/16 v30, 0x0

    #@3a1
    goto :goto_1f

    #@3a2
    .line 347
    .end local v6    # "_arg1":I
    :sswitch_11
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@3a5
    move-object/from16 v0, p2

    #@3a7
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3aa
    .line 349
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3ad
    move-result v4

    #@3ae
    if-eqz v4, :cond_20

    #@3b0
    .line 350
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@3b2
    move-object/from16 v0, p2

    #@3b4
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3b7
    move-result-object v15

    #@3b8
    check-cast v15, Landroid/content/ComponentName;

    #@3ba
    .line 356
    :goto_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3bd
    move-result v6

    #@3be
    .line 358
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3c1
    move-result v4

    #@3c2
    if-eqz v4, :cond_21

    #@3c4
    const/16 v30, 0x1

    #@3c6
    .line 359
    .restart local v30    # "_arg2":Z
    :goto_21
    move-object/from16 v0, p0

    #@3c8
    move/from16 v1, v30

    #@3ca
    invoke-virtual {v0, v15, v6, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordHistoryLength(Landroid/content/ComponentName;IZ)V

    #@3cd
    .line 360
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3d0
    .line 361
    const/4 v4, 0x1

    #@3d1
    return v4

    #@3d2
    .line 353
    .end local v6    # "_arg1":I
    .end local v30    # "_arg2":Z
    :cond_20
    const/4 v15, 0x0

    #@3d3
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_20

    #@3d4
    .line 358
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v6    # "_arg1":I
    :cond_21
    const/16 v30, 0x0

    #@3d6
    goto :goto_21

    #@3d7
    .line 365
    .end local v6    # "_arg1":I
    :sswitch_12
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@3da
    move-object/from16 v0, p2

    #@3dc
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3df
    .line 367
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3e2
    move-result v4

    #@3e3
    if-eqz v4, :cond_22

    #@3e5
    .line 368
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@3e7
    move-object/from16 v0, p2

    #@3e9
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3ec
    move-result-object v15

    #@3ed
    check-cast v15, Landroid/content/ComponentName;

    #@3ef
    .line 374
    :goto_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3f2
    move-result v6

    #@3f3
    .line 376
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3f6
    move-result v4

    #@3f7
    if-eqz v4, :cond_23

    #@3f9
    const/16 v30, 0x1

    #@3fb
    .line 377
    .restart local v30    # "_arg2":Z
    :goto_23
    move-object/from16 v0, p0

    #@3fd
    move/from16 v1, v30

    #@3ff
    invoke-virtual {v0, v15, v6, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordHistoryLength(Landroid/content/ComponentName;IZ)I

    #@402
    move-result v56

    #@403
    .line 378
    .restart local v56    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@406
    .line 379
    move-object/from16 v0, p3

    #@408
    move/from16 v1, v56

    #@40a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@40d
    .line 380
    const/4 v4, 0x1

    #@40e
    return v4

    #@40f
    .line 371
    .end local v6    # "_arg1":I
    .end local v30    # "_arg2":Z
    .end local v56    # "_result":I
    :cond_22
    const/4 v15, 0x0

    #@410
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_22

    #@411
    .line 376
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v6    # "_arg1":I
    :cond_23
    const/16 v30, 0x0

    #@413
    goto :goto_23

    #@414
    .line 384
    .end local v6    # "_arg1":I
    :sswitch_13
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@417
    move-object/from16 v0, p2

    #@419
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@41c
    .line 386
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@41f
    move-result v4

    #@420
    if-eqz v4, :cond_24

    #@422
    .line 387
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@424
    move-object/from16 v0, p2

    #@426
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@429
    move-result-object v15

    #@42a
    check-cast v15, Landroid/content/ComponentName;

    #@42c
    .line 393
    :goto_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@42f
    move-result-wide v28

    #@430
    .line 395
    .local v28, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@433
    move-result v4

    #@434
    if-eqz v4, :cond_25

    #@436
    const/16 v30, 0x1

    #@438
    .line 396
    .restart local v30    # "_arg2":Z
    :goto_25
    move-object/from16 v0, p0

    #@43a
    move-wide/from16 v1, v28

    #@43c
    move/from16 v3, v30

    #@43e
    invoke-virtual {v0, v15, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordExpirationTimeout(Landroid/content/ComponentName;JZ)V

    #@441
    .line 397
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@444
    .line 398
    const/4 v4, 0x1

    #@445
    return v4

    #@446
    .line 390
    .end local v28    # "_arg1":J
    .end local v30    # "_arg2":Z
    :cond_24
    const/4 v15, 0x0

    #@447
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_24

    #@448
    .line 395
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v28    # "_arg1":J
    :cond_25
    const/16 v30, 0x0

    #@44a
    goto :goto_25

    #@44b
    .line 402
    .end local v28    # "_arg1":J
    :sswitch_14
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@44e
    move-object/from16 v0, p2

    #@450
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@453
    .line 404
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@456
    move-result v4

    #@457
    if-eqz v4, :cond_26

    #@459
    .line 405
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@45b
    move-object/from16 v0, p2

    #@45d
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@460
    move-result-object v15

    #@461
    check-cast v15, Landroid/content/ComponentName;

    #@463
    .line 411
    :goto_26
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@466
    move-result v6

    #@467
    .line 413
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@46a
    move-result v4

    #@46b
    if-eqz v4, :cond_27

    #@46d
    const/16 v30, 0x1

    #@46f
    .line 414
    .restart local v30    # "_arg2":Z
    :goto_27
    move-object/from16 v0, p0

    #@471
    move/from16 v1, v30

    #@473
    invoke-virtual {v0, v15, v6, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordExpirationTimeout(Landroid/content/ComponentName;IZ)J

    #@476
    move-result-wide v58

    #@477
    .line 415
    .local v58, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@47a
    .line 416
    move-object/from16 v0, p3

    #@47c
    move-wide/from16 v1, v58

    #@47e
    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    #@481
    .line 417
    const/4 v4, 0x1

    #@482
    return v4

    #@483
    .line 408
    .end local v6    # "_arg1":I
    .end local v30    # "_arg2":Z
    .end local v58    # "_result":J
    :cond_26
    const/4 v15, 0x0

    #@484
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_26

    #@485
    .line 413
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v6    # "_arg1":I
    :cond_27
    const/16 v30, 0x0

    #@487
    goto :goto_27

    #@488
    .line 421
    .end local v6    # "_arg1":I
    :sswitch_15
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@48b
    move-object/from16 v0, p2

    #@48d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@490
    .line 423
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@493
    move-result v4

    #@494
    if-eqz v4, :cond_28

    #@496
    .line 424
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@498
    move-object/from16 v0, p2

    #@49a
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@49d
    move-result-object v15

    #@49e
    check-cast v15, Landroid/content/ComponentName;

    #@4a0
    .line 430
    :goto_28
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4a3
    move-result v6

    #@4a4
    .line 432
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4a7
    move-result v4

    #@4a8
    if-eqz v4, :cond_29

    #@4aa
    const/16 v30, 0x1

    #@4ac
    .line 433
    .restart local v30    # "_arg2":Z
    :goto_29
    move-object/from16 v0, p0

    #@4ae
    move/from16 v1, v30

    #@4b0
    invoke-virtual {v0, v15, v6, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordExpiration(Landroid/content/ComponentName;IZ)J

    #@4b3
    move-result-wide v58

    #@4b4
    .line 434
    .restart local v58    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4b7
    .line 435
    move-object/from16 v0, p3

    #@4b9
    move-wide/from16 v1, v58

    #@4bb
    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    #@4be
    .line 436
    const/4 v4, 0x1

    #@4bf
    return v4

    #@4c0
    .line 427
    .end local v6    # "_arg1":I
    .end local v30    # "_arg2":Z
    .end local v58    # "_result":J
    :cond_28
    const/4 v15, 0x0

    #@4c1
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_28

    #@4c2
    .line 432
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v6    # "_arg1":I
    :cond_29
    const/16 v30, 0x0

    #@4c4
    goto :goto_29

    #@4c5
    .line 440
    .end local v6    # "_arg1":I
    :sswitch_16
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@4c8
    move-object/from16 v0, p2

    #@4ca
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4cd
    .line 442
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4d0
    move-result v5

    #@4d1
    .line 444
    .local v5, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4d4
    move-result v4

    #@4d5
    if-eqz v4, :cond_2a

    #@4d7
    const/16 v49, 0x1

    #@4d9
    .line 445
    .local v49, "_arg1":Z
    :goto_2a
    move-object/from16 v0, p0

    #@4db
    move/from16 v1, v49

    #@4dd
    invoke-virtual {v0, v5, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->isActivePasswordSufficient(IZ)Z

    #@4e0
    move-result v70

    #@4e1
    .line 446
    .local v70, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4e4
    .line 447
    if-eqz v70, :cond_2b

    #@4e6
    const/4 v4, 0x1

    #@4e7
    :goto_2b
    move-object/from16 v0, p3

    #@4e9
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@4ec
    .line 448
    const/4 v4, 0x1

    #@4ed
    return v4

    #@4ee
    .line 444
    .end local v49    # "_arg1":Z
    .end local v70    # "_result":Z
    :cond_2a
    const/16 v49, 0x0

    #@4f0
    goto :goto_2a

    #@4f1
    .line 447
    .restart local v49    # "_arg1":Z
    .restart local v70    # "_result":Z
    :cond_2b
    const/4 v4, 0x0

    #@4f2
    goto :goto_2b

    #@4f3
    .line 452
    .end local v5    # "_arg0":I
    .end local v49    # "_arg1":Z
    .end local v70    # "_result":Z
    :sswitch_17
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@4f6
    move-object/from16 v0, p2

    #@4f8
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4fb
    .line 454
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4fe
    move-result v5

    #@4ff
    .line 455
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@501
    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->isProfileActivePasswordSufficientForParent(I)Z

    #@504
    move-result v70

    #@505
    .line 456
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@508
    .line 457
    if-eqz v70, :cond_2c

    #@50a
    const/4 v4, 0x1

    #@50b
    :goto_2c
    move-object/from16 v0, p3

    #@50d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@510
    .line 458
    const/4 v4, 0x1

    #@511
    return v4

    #@512
    .line 457
    :cond_2c
    const/4 v4, 0x0

    #@513
    goto :goto_2c

    #@514
    .line 462
    .end local v5    # "_arg0":I
    .end local v70    # "_result":Z
    :sswitch_18
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@517
    move-object/from16 v0, p2

    #@519
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@51c
    .line 464
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@51f
    move-result v5

    #@520
    .line 466
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@523
    move-result v4

    #@524
    if-eqz v4, :cond_2d

    #@526
    const/16 v49, 0x1

    #@528
    .line 467
    .restart local v49    # "_arg1":Z
    :goto_2d
    move-object/from16 v0, p0

    #@52a
    move/from16 v1, v49

    #@52c
    invoke-virtual {v0, v5, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCurrentFailedPasswordAttempts(IZ)I

    #@52f
    move-result v56

    #@530
    .line 468
    .restart local v56    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@533
    .line 469
    move-object/from16 v0, p3

    #@535
    move/from16 v1, v56

    #@537
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@53a
    .line 470
    const/4 v4, 0x1

    #@53b
    return v4

    #@53c
    .line 466
    .end local v49    # "_arg1":Z
    .end local v56    # "_result":I
    :cond_2d
    const/16 v49, 0x0

    #@53e
    goto :goto_2d

    #@53f
    .line 474
    .end local v5    # "_arg0":I
    :sswitch_19
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@542
    move-object/from16 v0, p2

    #@544
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@547
    .line 476
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@54a
    move-result v5

    #@54b
    .line 478
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@54e
    move-result v4

    #@54f
    if-eqz v4, :cond_2e

    #@551
    const/16 v49, 0x1

    #@553
    .line 479
    .restart local v49    # "_arg1":Z
    :goto_2e
    move-object/from16 v0, p0

    #@555
    move/from16 v1, v49

    #@557
    invoke-virtual {v0, v5, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getProfileWithMinimumFailedPasswordsForWipe(IZ)I

    #@55a
    move-result v56

    #@55b
    .line 480
    .restart local v56    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@55e
    .line 481
    move-object/from16 v0, p3

    #@560
    move/from16 v1, v56

    #@562
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@565
    .line 482
    const/4 v4, 0x1

    #@566
    return v4

    #@567
    .line 478
    .end local v49    # "_arg1":Z
    .end local v56    # "_result":I
    :cond_2e
    const/16 v49, 0x0

    #@569
    goto :goto_2e

    #@56a
    .line 486
    .end local v5    # "_arg0":I
    :sswitch_1a
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@56d
    move-object/from16 v0, p2

    #@56f
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@572
    .line 488
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@575
    move-result v4

    #@576
    if-eqz v4, :cond_2f

    #@578
    .line 489
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@57a
    move-object/from16 v0, p2

    #@57c
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@57f
    move-result-object v15

    #@580
    check-cast v15, Landroid/content/ComponentName;

    #@582
    .line 495
    :goto_2f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@585
    move-result v6

    #@586
    .line 497
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@589
    move-result v4

    #@58a
    if-eqz v4, :cond_30

    #@58c
    const/16 v30, 0x1

    #@58e
    .line 498
    .restart local v30    # "_arg2":Z
    :goto_30
    move-object/from16 v0, p0

    #@590
    move/from16 v1, v30

    #@592
    invoke-virtual {v0, v15, v6, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;IZ)V

    #@595
    .line 499
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@598
    .line 500
    const/4 v4, 0x1

    #@599
    return v4

    #@59a
    .line 492
    .end local v6    # "_arg1":I
    .end local v30    # "_arg2":Z
    :cond_2f
    const/4 v15, 0x0

    #@59b
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_2f

    #@59c
    .line 497
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v6    # "_arg1":I
    :cond_30
    const/16 v30, 0x0

    #@59e
    goto :goto_30

    #@59f
    .line 504
    .end local v6    # "_arg1":I
    :sswitch_1b
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@5a2
    move-object/from16 v0, p2

    #@5a4
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5a7
    .line 506
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5aa
    move-result v4

    #@5ab
    if-eqz v4, :cond_31

    #@5ad
    .line 507
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@5af
    move-object/from16 v0, p2

    #@5b1
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@5b4
    move-result-object v15

    #@5b5
    check-cast v15, Landroid/content/ComponentName;

    #@5b7
    .line 513
    :goto_31
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5ba
    move-result v6

    #@5bb
    .line 515
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5be
    move-result v4

    #@5bf
    if-eqz v4, :cond_32

    #@5c1
    const/16 v30, 0x1

    #@5c3
    .line 516
    .restart local v30    # "_arg2":Z
    :goto_32
    move-object/from16 v0, p0

    #@5c5
    move/from16 v1, v30

    #@5c7
    invoke-virtual {v0, v15, v6, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;IZ)I

    #@5ca
    move-result v56

    #@5cb
    .line 517
    .restart local v56    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@5ce
    .line 518
    move-object/from16 v0, p3

    #@5d0
    move/from16 v1, v56

    #@5d2
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@5d5
    .line 519
    const/4 v4, 0x1

    #@5d6
    return v4

    #@5d7
    .line 510
    .end local v6    # "_arg1":I
    .end local v30    # "_arg2":Z
    .end local v56    # "_result":I
    :cond_31
    const/4 v15, 0x0

    #@5d8
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_31

    #@5d9
    .line 515
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v6    # "_arg1":I
    :cond_32
    const/16 v30, 0x0

    #@5db
    goto :goto_32

    #@5dc
    .line 523
    .end local v6    # "_arg1":I
    :sswitch_1c
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@5df
    move-object/from16 v0, p2

    #@5e1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5e4
    .line 525
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@5e7
    move-result-object v27

    #@5e8
    .line 527
    .local v27, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5eb
    move-result v6

    #@5ec
    .line 528
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    #@5ee
    move-object/from16 v1, v27

    #@5f0
    invoke-virtual {v0, v1, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->resetPassword(Ljava/lang/String;I)Z

    #@5f3
    move-result v70

    #@5f4
    .line 529
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@5f7
    .line 530
    if-eqz v70, :cond_33

    #@5f9
    const/4 v4, 0x1

    #@5fa
    :goto_33
    move-object/from16 v0, p3

    #@5fc
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@5ff
    .line 531
    const/4 v4, 0x1

    #@600
    return v4

    #@601
    .line 530
    :cond_33
    const/4 v4, 0x0

    #@602
    goto :goto_33

    #@603
    .line 535
    .end local v6    # "_arg1":I
    .end local v27    # "_arg0":Ljava/lang/String;
    .end local v70    # "_result":Z
    :sswitch_1d
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@606
    move-object/from16 v0, p2

    #@608
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@60b
    .line 537
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@60e
    move-result v4

    #@60f
    if-eqz v4, :cond_34

    #@611
    .line 538
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@613
    move-object/from16 v0, p2

    #@615
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@618
    move-result-object v15

    #@619
    check-cast v15, Landroid/content/ComponentName;

    #@61b
    .line 544
    :goto_34
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@61e
    move-result-wide v28

    #@61f
    .line 546
    .restart local v28    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@622
    move-result v4

    #@623
    if-eqz v4, :cond_35

    #@625
    const/16 v30, 0x1

    #@627
    .line 547
    .restart local v30    # "_arg2":Z
    :goto_35
    move-object/from16 v0, p0

    #@629
    move-wide/from16 v1, v28

    #@62b
    move/from16 v3, v30

    #@62d
    invoke-virtual {v0, v15, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setMaximumTimeToLock(Landroid/content/ComponentName;JZ)V

    #@630
    .line 548
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@633
    .line 549
    const/4 v4, 0x1

    #@634
    return v4

    #@635
    .line 541
    .end local v28    # "_arg1":J
    .end local v30    # "_arg2":Z
    :cond_34
    const/4 v15, 0x0

    #@636
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_34

    #@637
    .line 546
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v28    # "_arg1":J
    :cond_35
    const/16 v30, 0x0

    #@639
    goto :goto_35

    #@63a
    .line 553
    .end local v28    # "_arg1":J
    :sswitch_1e
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@63d
    move-object/from16 v0, p2

    #@63f
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@642
    .line 555
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@645
    move-result v4

    #@646
    if-eqz v4, :cond_36

    #@648
    .line 556
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@64a
    move-object/from16 v0, p2

    #@64c
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@64f
    move-result-object v15

    #@650
    check-cast v15, Landroid/content/ComponentName;

    #@652
    .line 562
    :goto_36
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@655
    move-result v6

    #@656
    .line 564
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@659
    move-result v4

    #@65a
    if-eqz v4, :cond_37

    #@65c
    const/16 v30, 0x1

    #@65e
    .line 565
    .restart local v30    # "_arg2":Z
    :goto_37
    move-object/from16 v0, p0

    #@660
    move/from16 v1, v30

    #@662
    invoke-virtual {v0, v15, v6, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getMaximumTimeToLock(Landroid/content/ComponentName;IZ)J

    #@665
    move-result-wide v58

    #@666
    .line 566
    .restart local v58    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@669
    .line 567
    move-object/from16 v0, p3

    #@66b
    move-wide/from16 v1, v58

    #@66d
    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    #@670
    .line 568
    const/4 v4, 0x1

    #@671
    return v4

    #@672
    .line 559
    .end local v6    # "_arg1":I
    .end local v30    # "_arg2":Z
    .end local v58    # "_result":J
    :cond_36
    const/4 v15, 0x0

    #@673
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_36

    #@674
    .line 564
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v6    # "_arg1":I
    :cond_37
    const/16 v30, 0x0

    #@676
    goto :goto_37

    #@677
    .line 572
    .end local v6    # "_arg1":I
    :sswitch_1f
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@67a
    move-object/from16 v0, p2

    #@67c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@67f
    .line 574
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@682
    move-result v5

    #@683
    .line 575
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@685
    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getMaximumTimeToLockForUserAndProfiles(I)J

    #@688
    move-result-wide v58

    #@689
    .line 576
    .restart local v58    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@68c
    .line 577
    move-object/from16 v0, p3

    #@68e
    move-wide/from16 v1, v58

    #@690
    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    #@693
    .line 578
    const/4 v4, 0x1

    #@694
    return v4

    #@695
    .line 582
    .end local v5    # "_arg0":I
    .end local v58    # "_result":J
    :sswitch_20
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@698
    move-object/from16 v0, p2

    #@69a
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@69d
    .line 584
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@6a0
    move-result v4

    #@6a1
    if-eqz v4, :cond_38

    #@6a3
    .line 585
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@6a5
    move-object/from16 v0, p2

    #@6a7
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@6aa
    move-result-object v15

    #@6ab
    check-cast v15, Landroid/content/ComponentName;

    #@6ad
    .line 591
    :goto_38
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@6b0
    move-result-wide v28

    #@6b1
    .line 593
    .restart local v28    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@6b4
    move-result v4

    #@6b5
    if-eqz v4, :cond_39

    #@6b7
    const/16 v30, 0x1

    #@6b9
    .line 594
    .restart local v30    # "_arg2":Z
    :goto_39
    move-object/from16 v0, p0

    #@6bb
    move-wide/from16 v1, v28

    #@6bd
    move/from16 v3, v30

    #@6bf
    invoke-virtual {v0, v15, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setRequiredStrongAuthTimeout(Landroid/content/ComponentName;JZ)V

    #@6c2
    .line 595
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@6c5
    .line 596
    const/4 v4, 0x1

    #@6c6
    return v4

    #@6c7
    .line 588
    .end local v28    # "_arg1":J
    .end local v30    # "_arg2":Z
    :cond_38
    const/4 v15, 0x0

    #@6c8
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_38

    #@6c9
    .line 593
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v28    # "_arg1":J
    :cond_39
    const/16 v30, 0x0

    #@6cb
    goto :goto_39

    #@6cc
    .line 600
    .end local v28    # "_arg1":J
    :sswitch_21
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@6cf
    move-object/from16 v0, p2

    #@6d1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6d4
    .line 602
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@6d7
    move-result v4

    #@6d8
    if-eqz v4, :cond_3a

    #@6da
    .line 603
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@6dc
    move-object/from16 v0, p2

    #@6de
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@6e1
    move-result-object v15

    #@6e2
    check-cast v15, Landroid/content/ComponentName;

    #@6e4
    .line 609
    :goto_3a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@6e7
    move-result v6

    #@6e8
    .line 611
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@6eb
    move-result v4

    #@6ec
    if-eqz v4, :cond_3b

    #@6ee
    const/16 v30, 0x1

    #@6f0
    .line 612
    .restart local v30    # "_arg2":Z
    :goto_3b
    move-object/from16 v0, p0

    #@6f2
    move/from16 v1, v30

    #@6f4
    invoke-virtual {v0, v15, v6, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getRequiredStrongAuthTimeout(Landroid/content/ComponentName;IZ)J

    #@6f7
    move-result-wide v58

    #@6f8
    .line 613
    .restart local v58    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@6fb
    .line 614
    move-object/from16 v0, p3

    #@6fd
    move-wide/from16 v1, v58

    #@6ff
    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    #@702
    .line 615
    const/4 v4, 0x1

    #@703
    return v4

    #@704
    .line 606
    .end local v6    # "_arg1":I
    .end local v30    # "_arg2":Z
    .end local v58    # "_result":J
    :cond_3a
    const/4 v15, 0x0

    #@705
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_3a

    #@706
    .line 611
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v6    # "_arg1":I
    :cond_3b
    const/16 v30, 0x0

    #@708
    goto :goto_3b

    #@709
    .line 619
    .end local v6    # "_arg1":I
    :sswitch_22
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@70c
    move-object/from16 v0, p2

    #@70e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@711
    .line 621
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@714
    move-result v4

    #@715
    if-eqz v4, :cond_3c

    #@717
    const/16 v36, 0x1

    #@719
    .line 622
    .local v36, "_arg0":Z
    :goto_3c
    move-object/from16 v0, p0

    #@71b
    move/from16 v1, v36

    #@71d
    invoke-virtual {v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->lockNow(Z)V

    #@720
    .line 623
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@723
    .line 624
    const/4 v4, 0x1

    #@724
    return v4

    #@725
    .line 621
    .end local v36    # "_arg0":Z
    :cond_3c
    const/16 v36, 0x0

    #@727
    goto :goto_3c

    #@728
    .line 628
    :sswitch_23
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@72b
    move-object/from16 v0, p2

    #@72d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@730
    .line 630
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@733
    move-result v5

    #@734
    .line 631
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@736
    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->wipeData(I)V

    #@739
    .line 632
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@73c
    .line 633
    const/4 v4, 0x1

    #@73d
    return v4

    #@73e
    .line 637
    .end local v5    # "_arg0":I
    :sswitch_24
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@741
    move-object/from16 v0, p2

    #@743
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@746
    .line 639
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@749
    move-result v4

    #@74a
    if-eqz v4, :cond_3d

    #@74c
    .line 640
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@74e
    move-object/from16 v0, p2

    #@750
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@753
    move-result-object v15

    #@754
    check-cast v15, Landroid/content/ComponentName;

    #@756
    .line 646
    :goto_3d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@759
    move-result-object v23

    #@75a
    .line 648
    .local v23, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@75d
    move-result-object v53

    #@75e
    .line 649
    .local v53, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    #@760
    move-object/from16 v1, v23

    #@762
    move-object/from16 v2, v53

    #@764
    invoke-virtual {v0, v15, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setGlobalProxy(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    #@767
    move-result-object v60

    #@768
    .line 650
    .local v60, "_result":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@76b
    .line 651
    if-eqz v60, :cond_3e

    #@76d
    .line 652
    const/4 v4, 0x1

    #@76e
    move-object/from16 v0, p3

    #@770
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@773
    .line 653
    const/4 v4, 0x1

    #@774
    move-object/from16 v0, v60

    #@776
    move-object/from16 v1, p3

    #@778
    invoke-virtual {v0, v1, v4}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    #@77b
    .line 658
    :goto_3e
    const/4 v4, 0x1

    #@77c
    return v4

    #@77d
    .line 643
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v53    # "_arg2":Ljava/lang/String;
    .end local v60    # "_result":Landroid/content/ComponentName;
    :cond_3d
    const/4 v15, 0x0

    #@77e
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_3d

    #@77f
    .line 656
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v23    # "_arg1":Ljava/lang/String;
    .restart local v53    # "_arg2":Ljava/lang/String;
    .restart local v60    # "_result":Landroid/content/ComponentName;
    :cond_3e
    const/4 v4, 0x0

    #@780
    move-object/from16 v0, p3

    #@782
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@785
    goto :goto_3e

    #@786
    .line 662
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v53    # "_arg2":Ljava/lang/String;
    .end local v60    # "_result":Landroid/content/ComponentName;
    :sswitch_25
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@789
    move-object/from16 v0, p2

    #@78b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@78e
    .line 664
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@791
    move-result v5

    #@792
    .line 665
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@794
    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getGlobalProxyAdmin(I)Landroid/content/ComponentName;

    #@797
    move-result-object v60

    #@798
    .line 666
    .restart local v60    # "_result":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@79b
    .line 667
    if-eqz v60, :cond_3f

    #@79d
    .line 668
    const/4 v4, 0x1

    #@79e
    move-object/from16 v0, p3

    #@7a0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@7a3
    .line 669
    const/4 v4, 0x1

    #@7a4
    move-object/from16 v0, v60

    #@7a6
    move-object/from16 v1, p3

    #@7a8
    invoke-virtual {v0, v1, v4}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    #@7ab
    .line 674
    :goto_3f
    const/4 v4, 0x1

    #@7ac
    return v4

    #@7ad
    .line 672
    :cond_3f
    const/4 v4, 0x0

    #@7ae
    move-object/from16 v0, p3

    #@7b0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@7b3
    goto :goto_3f

    #@7b4
    .line 678
    .end local v5    # "_arg0":I
    .end local v60    # "_result":Landroid/content/ComponentName;
    :sswitch_26
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@7b7
    move-object/from16 v0, p2

    #@7b9
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7bc
    .line 680
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@7bf
    move-result v4

    #@7c0
    if-eqz v4, :cond_40

    #@7c2
    .line 681
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7c4
    move-object/from16 v0, p2

    #@7c6
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@7c9
    move-result-object v15

    #@7ca
    check-cast v15, Landroid/content/ComponentName;

    #@7cc
    .line 687
    :goto_40
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@7cf
    move-result v4

    #@7d0
    if-eqz v4, :cond_41

    #@7d2
    .line 688
    sget-object v4, Landroid/net/ProxyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7d4
    move-object/from16 v0, p2

    #@7d6
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@7d9
    move-result-object v42

    #@7da
    check-cast v42, Landroid/net/ProxyInfo;

    #@7dc
    .line 693
    :goto_41
    move-object/from16 v0, p0

    #@7de
    move-object/from16 v1, v42

    #@7e0
    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setRecommendedGlobalProxy(Landroid/content/ComponentName;Landroid/net/ProxyInfo;)V

    #@7e3
    .line 694
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@7e6
    .line 695
    const/4 v4, 0x1

    #@7e7
    return v4

    #@7e8
    .line 684
    :cond_40
    const/4 v15, 0x0

    #@7e9
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_40

    #@7ea
    .line 691
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :cond_41
    const/16 v42, 0x0

    #@7ec
    .local v42, "_arg1":Landroid/net/ProxyInfo;
    goto :goto_41

    #@7ed
    .line 699
    .end local v42    # "_arg1":Landroid/net/ProxyInfo;
    :sswitch_27
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@7f0
    move-object/from16 v0, p2

    #@7f2
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7f5
    .line 701
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@7f8
    move-result v4

    #@7f9
    if-eqz v4, :cond_42

    #@7fb
    .line 702
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7fd
    move-object/from16 v0, p2

    #@7ff
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@802
    move-result-object v15

    #@803
    check-cast v15, Landroid/content/ComponentName;

    #@805
    .line 708
    :goto_42
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@808
    move-result v4

    #@809
    if-eqz v4, :cond_43

    #@80b
    const/16 v49, 0x1

    #@80d
    .line 709
    .restart local v49    # "_arg1":Z
    :goto_43
    move-object/from16 v0, p0

    #@80f
    move/from16 v1, v49

    #@811
    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setStorageEncryption(Landroid/content/ComponentName;Z)I

    #@814
    move-result v56

    #@815
    .line 710
    .restart local v56    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@818
    .line 711
    move-object/from16 v0, p3

    #@81a
    move/from16 v1, v56

    #@81c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@81f
    .line 712
    const/4 v4, 0x1

    #@820
    return v4

    #@821
    .line 705
    .end local v49    # "_arg1":Z
    .end local v56    # "_result":I
    :cond_42
    const/4 v15, 0x0

    #@822
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_42

    #@823
    .line 708
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :cond_43
    const/16 v49, 0x0

    #@825
    goto :goto_43

    #@826
    .line 716
    :sswitch_28
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@829
    move-object/from16 v0, p2

    #@82b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@82e
    .line 718
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@831
    move-result v4

    #@832
    if-eqz v4, :cond_44

    #@834
    .line 719
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@836
    move-object/from16 v0, p2

    #@838
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@83b
    move-result-object v15

    #@83c
    check-cast v15, Landroid/content/ComponentName;

    #@83e
    .line 725
    :goto_44
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@841
    move-result v6

    #@842
    .line 726
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    #@844
    invoke-virtual {v0, v15, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->getStorageEncryption(Landroid/content/ComponentName;I)Z

    #@847
    move-result v70

    #@848
    .line 727
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@84b
    .line 728
    if-eqz v70, :cond_45

    #@84d
    const/4 v4, 0x1

    #@84e
    :goto_45
    move-object/from16 v0, p3

    #@850
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@853
    .line 729
    const/4 v4, 0x1

    #@854
    return v4

    #@855
    .line 722
    .end local v6    # "_arg1":I
    .end local v70    # "_result":Z
    :cond_44
    const/4 v15, 0x0

    #@856
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_44

    #@857
    .line 728
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v6    # "_arg1":I
    .restart local v70    # "_result":Z
    :cond_45
    const/4 v4, 0x0

    #@858
    goto :goto_45

    #@859
    .line 733
    .end local v6    # "_arg1":I
    .end local v70    # "_result":Z
    :sswitch_29
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@85c
    move-object/from16 v0, p2

    #@85e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@861
    .line 735
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@864
    move-result-object v27

    #@865
    .line 737
    .restart local v27    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@868
    move-result v6

    #@869
    .line 738
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    #@86b
    move-object/from16 v1, v27

    #@86d
    invoke-virtual {v0, v1, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->getStorageEncryptionStatus(Ljava/lang/String;I)I

    #@870
    move-result v56

    #@871
    .line 739
    .restart local v56    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@874
    .line 740
    move-object/from16 v0, p3

    #@876
    move/from16 v1, v56

    #@878
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@87b
    .line 741
    const/4 v4, 0x1

    #@87c
    return v4

    #@87d
    .line 745
    .end local v6    # "_arg1":I
    .end local v27    # "_arg0":Ljava/lang/String;
    .end local v56    # "_result":I
    :sswitch_2a
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@880
    move-object/from16 v0, p2

    #@882
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@885
    .line 747
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@888
    move-result v4

    #@889
    if-eqz v4, :cond_46

    #@88b
    .line 748
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@88d
    move-object/from16 v0, p2

    #@88f
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@892
    move-result-object v15

    #@893
    check-cast v15, Landroid/content/ComponentName;

    #@895
    .line 753
    :goto_46
    move-object/from16 v0, p0

    #@897
    invoke-virtual {v0, v15}, Landroid/app/admin/IDevicePolicyManager$Stub;->requestBugreport(Landroid/content/ComponentName;)Z

    #@89a
    move-result v70

    #@89b
    .line 754
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@89e
    .line 755
    if-eqz v70, :cond_47

    #@8a0
    const/4 v4, 0x1

    #@8a1
    :goto_47
    move-object/from16 v0, p3

    #@8a3
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@8a6
    .line 756
    const/4 v4, 0x1

    #@8a7
    return v4

    #@8a8
    .line 751
    .end local v70    # "_result":Z
    :cond_46
    const/4 v15, 0x0

    #@8a9
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_46

    #@8aa
    .line 755
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v70    # "_result":Z
    :cond_47
    const/4 v4, 0x0

    #@8ab
    goto :goto_47

    #@8ac
    .line 760
    .end local v70    # "_result":Z
    :sswitch_2b
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@8af
    move-object/from16 v0, p2

    #@8b1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@8b4
    .line 762
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@8b7
    move-result v4

    #@8b8
    if-eqz v4, :cond_48

    #@8ba
    .line 763
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@8bc
    move-object/from16 v0, p2

    #@8be
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@8c1
    move-result-object v15

    #@8c2
    check-cast v15, Landroid/content/ComponentName;

    #@8c4
    .line 769
    :goto_48
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@8c7
    move-result v4

    #@8c8
    if-eqz v4, :cond_49

    #@8ca
    const/16 v49, 0x1

    #@8cc
    .line 770
    .restart local v49    # "_arg1":Z
    :goto_49
    move-object/from16 v0, p0

    #@8ce
    move/from16 v1, v49

    #@8d0
    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setCameraDisabled(Landroid/content/ComponentName;Z)V

    #@8d3
    .line 771
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@8d6
    .line 772
    const/4 v4, 0x1

    #@8d7
    return v4

    #@8d8
    .line 766
    .end local v49    # "_arg1":Z
    :cond_48
    const/4 v15, 0x0

    #@8d9
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_48

    #@8da
    .line 769
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :cond_49
    const/16 v49, 0x0

    #@8dc
    goto :goto_49

    #@8dd
    .line 776
    :sswitch_2c
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@8e0
    move-object/from16 v0, p2

    #@8e2
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@8e5
    .line 778
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@8e8
    move-result v4

    #@8e9
    if-eqz v4, :cond_4a

    #@8eb
    .line 779
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@8ed
    move-object/from16 v0, p2

    #@8ef
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@8f2
    move-result-object v15

    #@8f3
    check-cast v15, Landroid/content/ComponentName;

    #@8f5
    .line 785
    :goto_4a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@8f8
    move-result v6

    #@8f9
    .line 786
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    #@8fb
    invoke-virtual {v0, v15, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCameraDisabled(Landroid/content/ComponentName;I)Z

    #@8fe
    move-result v70

    #@8ff
    .line 787
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@902
    .line 788
    if-eqz v70, :cond_4b

    #@904
    const/4 v4, 0x1

    #@905
    :goto_4b
    move-object/from16 v0, p3

    #@907
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@90a
    .line 789
    const/4 v4, 0x1

    #@90b
    return v4

    #@90c
    .line 782
    .end local v6    # "_arg1":I
    .end local v70    # "_result":Z
    :cond_4a
    const/4 v15, 0x0

    #@90d
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_4a

    #@90e
    .line 788
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v6    # "_arg1":I
    .restart local v70    # "_result":Z
    :cond_4b
    const/4 v4, 0x0

    #@90f
    goto :goto_4b

    #@910
    .line 793
    .end local v6    # "_arg1":I
    .end local v70    # "_result":Z
    :sswitch_2d
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@913
    move-object/from16 v0, p2

    #@915
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@918
    .line 795
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@91b
    move-result v4

    #@91c
    if-eqz v4, :cond_4c

    #@91e
    .line 796
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@920
    move-object/from16 v0, p2

    #@922
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@925
    move-result-object v15

    #@926
    check-cast v15, Landroid/content/ComponentName;

    #@928
    .line 802
    :goto_4c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@92b
    move-result v4

    #@92c
    if-eqz v4, :cond_4d

    #@92e
    const/16 v49, 0x1

    #@930
    .line 803
    .restart local v49    # "_arg1":Z
    :goto_4d
    move-object/from16 v0, p0

    #@932
    move/from16 v1, v49

    #@934
    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setScreenCaptureDisabled(Landroid/content/ComponentName;Z)V

    #@937
    .line 804
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@93a
    .line 805
    const/4 v4, 0x1

    #@93b
    return v4

    #@93c
    .line 799
    .end local v49    # "_arg1":Z
    :cond_4c
    const/4 v15, 0x0

    #@93d
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_4c

    #@93e
    .line 802
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :cond_4d
    const/16 v49, 0x0

    #@940
    goto :goto_4d

    #@941
    .line 809
    :sswitch_2e
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@944
    move-object/from16 v0, p2

    #@946
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@949
    .line 811
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@94c
    move-result v4

    #@94d
    if-eqz v4, :cond_4e

    #@94f
    .line 812
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@951
    move-object/from16 v0, p2

    #@953
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@956
    move-result-object v15

    #@957
    check-cast v15, Landroid/content/ComponentName;

    #@959
    .line 818
    :goto_4e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@95c
    move-result v6

    #@95d
    .line 819
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    #@95f
    invoke-virtual {v0, v15, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->getScreenCaptureDisabled(Landroid/content/ComponentName;I)Z

    #@962
    move-result v70

    #@963
    .line 820
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@966
    .line 821
    if-eqz v70, :cond_4f

    #@968
    const/4 v4, 0x1

    #@969
    :goto_4f
    move-object/from16 v0, p3

    #@96b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@96e
    .line 822
    const/4 v4, 0x1

    #@96f
    return v4

    #@970
    .line 815
    .end local v6    # "_arg1":I
    .end local v70    # "_result":Z
    :cond_4e
    const/4 v15, 0x0

    #@971
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_4e

    #@972
    .line 821
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v6    # "_arg1":I
    .restart local v70    # "_result":Z
    :cond_4f
    const/4 v4, 0x0

    #@973
    goto :goto_4f

    #@974
    .line 826
    .end local v6    # "_arg1":I
    .end local v70    # "_result":Z
    :sswitch_2f
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@977
    move-object/from16 v0, p2

    #@979
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@97c
    .line 828
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@97f
    move-result v4

    #@980
    if-eqz v4, :cond_50

    #@982
    .line 829
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@984
    move-object/from16 v0, p2

    #@986
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@989
    move-result-object v15

    #@98a
    check-cast v15, Landroid/content/ComponentName;

    #@98c
    .line 835
    :goto_50
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@98f
    move-result v6

    #@990
    .line 837
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@993
    move-result v4

    #@994
    if-eqz v4, :cond_51

    #@996
    const/16 v30, 0x1

    #@998
    .line 838
    .restart local v30    # "_arg2":Z
    :goto_51
    move-object/from16 v0, p0

    #@99a
    move/from16 v1, v30

    #@99c
    invoke-virtual {v0, v15, v6, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setKeyguardDisabledFeatures(Landroid/content/ComponentName;IZ)V

    #@99f
    .line 839
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@9a2
    .line 840
    const/4 v4, 0x1

    #@9a3
    return v4

    #@9a4
    .line 832
    .end local v6    # "_arg1":I
    .end local v30    # "_arg2":Z
    :cond_50
    const/4 v15, 0x0

    #@9a5
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_50

    #@9a6
    .line 837
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v6    # "_arg1":I
    :cond_51
    const/16 v30, 0x0

    #@9a8
    goto :goto_51

    #@9a9
    .line 844
    .end local v6    # "_arg1":I
    :sswitch_30
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@9ac
    move-object/from16 v0, p2

    #@9ae
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@9b1
    .line 846
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@9b4
    move-result v4

    #@9b5
    if-eqz v4, :cond_52

    #@9b7
    .line 847
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@9b9
    move-object/from16 v0, p2

    #@9bb
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@9be
    move-result-object v15

    #@9bf
    check-cast v15, Landroid/content/ComponentName;

    #@9c1
    .line 853
    :goto_52
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@9c4
    move-result v6

    #@9c5
    .line 855
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@9c8
    move-result v4

    #@9c9
    if-eqz v4, :cond_53

    #@9cb
    const/16 v30, 0x1

    #@9cd
    .line 856
    .restart local v30    # "_arg2":Z
    :goto_53
    move-object/from16 v0, p0

    #@9cf
    move/from16 v1, v30

    #@9d1
    invoke-virtual {v0, v15, v6, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;IZ)I

    #@9d4
    move-result v56

    #@9d5
    .line 857
    .restart local v56    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@9d8
    .line 858
    move-object/from16 v0, p3

    #@9da
    move/from16 v1, v56

    #@9dc
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@9df
    .line 859
    const/4 v4, 0x1

    #@9e0
    return v4

    #@9e1
    .line 850
    .end local v6    # "_arg1":I
    .end local v30    # "_arg2":Z
    .end local v56    # "_result":I
    :cond_52
    const/4 v15, 0x0

    #@9e2
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_52

    #@9e3
    .line 855
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v6    # "_arg1":I
    :cond_53
    const/16 v30, 0x0

    #@9e5
    goto :goto_53

    #@9e6
    .line 863
    .end local v6    # "_arg1":I
    :sswitch_31
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@9e9
    move-object/from16 v0, p2

    #@9eb
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@9ee
    .line 865
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@9f1
    move-result v4

    #@9f2
    if-eqz v4, :cond_54

    #@9f4
    .line 866
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@9f6
    move-object/from16 v0, p2

    #@9f8
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@9fb
    move-result-object v15

    #@9fc
    check-cast v15, Landroid/content/ComponentName;

    #@9fe
    .line 872
    :goto_54
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@a01
    move-result v4

    #@a02
    if-eqz v4, :cond_55

    #@a04
    const/16 v49, 0x1

    #@a06
    .line 874
    .local v49, "_arg1":Z
    :goto_55
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@a09
    move-result v7

    #@a0a
    .line 875
    .local v7, "_arg2":I
    move-object/from16 v0, p0

    #@a0c
    move/from16 v1, v49

    #@a0e
    invoke-virtual {v0, v15, v1, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setActiveAdmin(Landroid/content/ComponentName;ZI)V

    #@a11
    .line 876
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@a14
    .line 877
    const/4 v4, 0x1

    #@a15
    return v4

    #@a16
    .line 869
    .end local v7    # "_arg2":I
    .end local v49    # "_arg1":Z
    :cond_54
    const/4 v15, 0x0

    #@a17
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_54

    #@a18
    .line 872
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :cond_55
    const/16 v49, 0x0

    #@a1a
    .restart local v49    # "_arg1":Z
    goto :goto_55

    #@a1b
    .line 881
    .end local v49    # "_arg1":Z
    :sswitch_32
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@a1e
    move-object/from16 v0, p2

    #@a20
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a23
    .line 883
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@a26
    move-result v4

    #@a27
    if-eqz v4, :cond_56

    #@a29
    .line 884
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@a2b
    move-object/from16 v0, p2

    #@a2d
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@a30
    move-result-object v15

    #@a31
    check-cast v15, Landroid/content/ComponentName;

    #@a33
    .line 890
    :goto_56
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@a36
    move-result v6

    #@a37
    .line 891
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    #@a39
    invoke-virtual {v0, v15, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->isAdminActive(Landroid/content/ComponentName;I)Z

    #@a3c
    move-result v70

    #@a3d
    .line 892
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@a40
    .line 893
    if-eqz v70, :cond_57

    #@a42
    const/4 v4, 0x1

    #@a43
    :goto_57
    move-object/from16 v0, p3

    #@a45
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@a48
    .line 894
    const/4 v4, 0x1

    #@a49
    return v4

    #@a4a
    .line 887
    .end local v6    # "_arg1":I
    .end local v70    # "_result":Z
    :cond_56
    const/4 v15, 0x0

    #@a4b
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_56

    #@a4c
    .line 893
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v6    # "_arg1":I
    .restart local v70    # "_result":Z
    :cond_57
    const/4 v4, 0x0

    #@a4d
    goto :goto_57

    #@a4e
    .line 898
    .end local v6    # "_arg1":I
    .end local v70    # "_result":Z
    :sswitch_33
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@a51
    move-object/from16 v0, p2

    #@a53
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a56
    .line 900
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@a59
    move-result v5

    #@a5a
    .line 901
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@a5c
    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getActiveAdmins(I)Ljava/util/List;

    #@a5f
    move-result-object v67

    #@a60
    .line 902
    .local v67, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@a63
    .line 903
    move-object/from16 v0, p3

    #@a65
    move-object/from16 v1, v67

    #@a67
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@a6a
    .line 904
    const/4 v4, 0x1

    #@a6b
    return v4

    #@a6c
    .line 908
    .end local v5    # "_arg0":I
    .end local v67    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    :sswitch_34
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@a6f
    move-object/from16 v0, p2

    #@a71
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a74
    .line 910
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@a77
    move-result-object v27

    #@a78
    .line 912
    .restart local v27    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@a7b
    move-result v6

    #@a7c
    .line 913
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    #@a7e
    move-object/from16 v1, v27

    #@a80
    invoke-virtual {v0, v1, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->packageHasActiveAdmins(Ljava/lang/String;I)Z

    #@a83
    move-result v70

    #@a84
    .line 914
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@a87
    .line 915
    if-eqz v70, :cond_58

    #@a89
    const/4 v4, 0x1

    #@a8a
    :goto_58
    move-object/from16 v0, p3

    #@a8c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@a8f
    .line 916
    const/4 v4, 0x1

    #@a90
    return v4

    #@a91
    .line 915
    :cond_58
    const/4 v4, 0x0

    #@a92
    goto :goto_58

    #@a93
    .line 920
    .end local v6    # "_arg1":I
    .end local v27    # "_arg0":Ljava/lang/String;
    .end local v70    # "_result":Z
    :sswitch_35
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@a96
    move-object/from16 v0, p2

    #@a98
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a9b
    .line 922
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@a9e
    move-result v4

    #@a9f
    if-eqz v4, :cond_59

    #@aa1
    .line 923
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@aa3
    move-object/from16 v0, p2

    #@aa5
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@aa8
    move-result-object v15

    #@aa9
    check-cast v15, Landroid/content/ComponentName;

    #@aab
    .line 929
    :goto_59
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@aae
    move-result v4

    #@aaf
    if-eqz v4, :cond_5a

    #@ab1
    .line 930
    sget-object v4, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    #@ab3
    move-object/from16 v0, p2

    #@ab5
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@ab8
    move-result-object v44

    #@ab9
    check-cast v44, Landroid/os/RemoteCallback;

    #@abb
    .line 936
    :goto_5a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@abe
    move-result v7

    #@abf
    .line 937
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    #@ac1
    move-object/from16 v1, v44

    #@ac3
    invoke-virtual {v0, v15, v1, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;I)V

    #@ac6
    .line 938
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@ac9
    .line 939
    const/4 v4, 0x1

    #@aca
    return v4

    #@acb
    .line 926
    .end local v7    # "_arg2":I
    :cond_59
    const/4 v15, 0x0

    #@acc
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_59

    #@acd
    .line 933
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :cond_5a
    const/16 v44, 0x0

    #@acf
    .local v44, "_arg1":Landroid/os/RemoteCallback;
    goto :goto_5a

    #@ad0
    .line 943
    .end local v44    # "_arg1":Landroid/os/RemoteCallback;
    :sswitch_36
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@ad3
    move-object/from16 v0, p2

    #@ad5
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ad8
    .line 945
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@adb
    move-result v4

    #@adc
    if-eqz v4, :cond_5b

    #@ade
    .line 946
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@ae0
    move-object/from16 v0, p2

    #@ae2
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@ae5
    move-result-object v15

    #@ae6
    check-cast v15, Landroid/content/ComponentName;

    #@ae8
    .line 952
    :goto_5b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@aeb
    move-result v6

    #@aec
    .line 953
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    #@aee
    invoke-virtual {v0, v15, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->removeActiveAdmin(Landroid/content/ComponentName;I)V

    #@af1
    .line 954
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@af4
    .line 955
    const/4 v4, 0x1

    #@af5
    return v4

    #@af6
    .line 949
    .end local v6    # "_arg1":I
    :cond_5b
    const/4 v15, 0x0

    #@af7
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_5b

    #@af8
    .line 959
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_37
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@afb
    move-object/from16 v0, p2

    #@afd
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b00
    .line 961
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@b03
    move-result v4

    #@b04
    if-eqz v4, :cond_5c

    #@b06
    .line 962
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@b08
    move-object/from16 v0, p2

    #@b0a
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@b0d
    move-result-object v15

    #@b0e
    check-cast v15, Landroid/content/ComponentName;

    #@b10
    .line 968
    :goto_5c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@b13
    move-result v6

    #@b14
    .line 969
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    #@b16
    invoke-virtual {v0, v15, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->forceRemoveActiveAdmin(Landroid/content/ComponentName;I)V

    #@b19
    .line 970
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@b1c
    .line 971
    const/4 v4, 0x1

    #@b1d
    return v4

    #@b1e
    .line 965
    .end local v6    # "_arg1":I
    :cond_5c
    const/4 v15, 0x0

    #@b1f
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_5c

    #@b20
    .line 975
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_38
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@b23
    move-object/from16 v0, p2

    #@b25
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b28
    .line 977
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@b2b
    move-result v4

    #@b2c
    if-eqz v4, :cond_5d

    #@b2e
    .line 978
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@b30
    move-object/from16 v0, p2

    #@b32
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@b35
    move-result-object v15

    #@b36
    check-cast v15, Landroid/content/ComponentName;

    #@b38
    .line 984
    :goto_5d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@b3b
    move-result v6

    #@b3c
    .line 986
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@b3f
    move-result v7

    #@b40
    .line 987
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    #@b42
    invoke-virtual {v0, v15, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->hasGrantedPolicy(Landroid/content/ComponentName;II)Z

    #@b45
    move-result v70

    #@b46
    .line 988
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@b49
    .line 989
    if-eqz v70, :cond_5e

    #@b4b
    const/4 v4, 0x1

    #@b4c
    :goto_5e
    move-object/from16 v0, p3

    #@b4e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@b51
    .line 990
    const/4 v4, 0x1

    #@b52
    return v4

    #@b53
    .line 981
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v70    # "_result":Z
    :cond_5d
    const/4 v15, 0x0

    #@b54
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_5d

    #@b55
    .line 989
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v6    # "_arg1":I
    .restart local v7    # "_arg2":I
    .restart local v70    # "_result":Z
    :cond_5e
    const/4 v4, 0x0

    #@b56
    goto :goto_5e

    #@b57
    .line 994
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v70    # "_result":Z
    :sswitch_39
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@b5a
    move-object/from16 v0, p2

    #@b5c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b5f
    .line 996
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@b62
    move-result v5

    #@b63
    .line 998
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@b66
    move-result v6

    #@b67
    .line 1000
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@b6a
    move-result v7

    #@b6b
    .line 1002
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@b6e
    move-result v8

    #@b6f
    .line 1004
    .local v8, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@b72
    move-result v9

    #@b73
    .line 1006
    .local v9, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@b76
    move-result v10

    #@b77
    .line 1008
    .local v10, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@b7a
    move-result v11

    #@b7b
    .line 1010
    .local v11, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@b7e
    move-result v12

    #@b7f
    .line 1012
    .local v12, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@b82
    move-result v13

    #@b83
    .local v13, "_arg8":I
    move-object/from16 v4, p0

    #@b85
    .line 1013
    invoke-virtual/range {v4 .. v13}, Landroid/app/admin/IDevicePolicyManager$Stub;->setActivePasswordState(IIIIIIIII)V

    #@b88
    .line 1014
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@b8b
    .line 1015
    const/4 v4, 0x1

    #@b8c
    return v4

    #@b8d
    .line 1019
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v9    # "_arg4":I
    .end local v10    # "_arg5":I
    .end local v11    # "_arg6":I
    .end local v12    # "_arg7":I
    .end local v13    # "_arg8":I
    :sswitch_3a
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@b90
    move-object/from16 v0, p2

    #@b92
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b95
    .line 1021
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@b98
    move-result v5

    #@b99
    .line 1022
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@b9b
    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->reportFailedPasswordAttempt(I)V

    #@b9e
    .line 1023
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@ba1
    .line 1024
    const/4 v4, 0x1

    #@ba2
    return v4

    #@ba3
    .line 1028
    .end local v5    # "_arg0":I
    :sswitch_3b
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@ba6
    move-object/from16 v0, p2

    #@ba8
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@bab
    .line 1030
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@bae
    move-result v5

    #@baf
    .line 1031
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@bb1
    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->reportSuccessfulPasswordAttempt(I)V

    #@bb4
    .line 1032
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@bb7
    .line 1033
    const/4 v4, 0x1

    #@bb8
    return v4

    #@bb9
    .line 1037
    .end local v5    # "_arg0":I
    :sswitch_3c
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@bbc
    move-object/from16 v0, p2

    #@bbe
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@bc1
    .line 1039
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@bc4
    move-result v5

    #@bc5
    .line 1040
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@bc7
    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->reportFailedFingerprintAttempt(I)V

    #@bca
    .line 1041
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@bcd
    .line 1042
    const/4 v4, 0x1

    #@bce
    return v4

    #@bcf
    .line 1046
    .end local v5    # "_arg0":I
    :sswitch_3d
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@bd2
    move-object/from16 v0, p2

    #@bd4
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@bd7
    .line 1048
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@bda
    move-result v5

    #@bdb
    .line 1049
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@bdd
    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->reportSuccessfulFingerprintAttempt(I)V

    #@be0
    .line 1050
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@be3
    .line 1051
    const/4 v4, 0x1

    #@be4
    return v4

    #@be5
    .line 1055
    .end local v5    # "_arg0":I
    :sswitch_3e
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@be8
    move-object/from16 v0, p2

    #@bea
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@bed
    .line 1057
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@bf0
    move-result v5

    #@bf1
    .line 1058
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@bf3
    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->reportKeyguardDismissed(I)V

    #@bf6
    .line 1059
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@bf9
    .line 1060
    const/4 v4, 0x1

    #@bfa
    return v4

    #@bfb
    .line 1064
    .end local v5    # "_arg0":I
    :sswitch_3f
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@bfe
    move-object/from16 v0, p2

    #@c00
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@c03
    .line 1066
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@c06
    move-result v5

    #@c07
    .line 1067
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@c09
    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->reportKeyguardSecured(I)V

    #@c0c
    .line 1068
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@c0f
    .line 1069
    const/4 v4, 0x1

    #@c10
    return v4

    #@c11
    .line 1073
    .end local v5    # "_arg0":I
    :sswitch_40
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@c14
    move-object/from16 v0, p2

    #@c16
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@c19
    .line 1075
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@c1c
    move-result v4

    #@c1d
    if-eqz v4, :cond_5f

    #@c1f
    .line 1076
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@c21
    move-object/from16 v0, p2

    #@c23
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@c26
    move-result-object v15

    #@c27
    check-cast v15, Landroid/content/ComponentName;

    #@c29
    .line 1082
    :goto_5f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@c2c
    move-result-object v23

    #@c2d
    .line 1084
    .restart local v23    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@c30
    move-result v7

    #@c31
    .line 1085
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    #@c33
    move-object/from16 v1, v23

    #@c35
    invoke-virtual {v0, v15, v1, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setDeviceOwner(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    #@c38
    move-result v70

    #@c39
    .line 1086
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@c3c
    .line 1087
    if-eqz v70, :cond_60

    #@c3e
    const/4 v4, 0x1

    #@c3f
    :goto_60
    move-object/from16 v0, p3

    #@c41
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@c44
    .line 1088
    const/4 v4, 0x1

    #@c45
    return v4

    #@c46
    .line 1079
    .end local v7    # "_arg2":I
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v70    # "_result":Z
    :cond_5f
    const/4 v15, 0x0

    #@c47
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_5f

    #@c48
    .line 1087
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v7    # "_arg2":I
    .restart local v23    # "_arg1":Ljava/lang/String;
    .restart local v70    # "_result":Z
    :cond_60
    const/4 v4, 0x0

    #@c49
    goto :goto_60

    #@c4a
    .line 1092
    .end local v7    # "_arg2":I
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v70    # "_result":Z
    :sswitch_41
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@c4d
    move-object/from16 v0, p2

    #@c4f
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@c52
    .line 1094
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@c55
    move-result v4

    #@c56
    if-eqz v4, :cond_61

    #@c58
    const/16 v36, 0x1

    #@c5a
    .line 1095
    .restart local v36    # "_arg0":Z
    :goto_61
    move-object/from16 v0, p0

    #@c5c
    move/from16 v1, v36

    #@c5e
    invoke-virtual {v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getDeviceOwnerComponent(Z)Landroid/content/ComponentName;

    #@c61
    move-result-object v60

    #@c62
    .line 1096
    .restart local v60    # "_result":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@c65
    .line 1097
    if-eqz v60, :cond_62

    #@c67
    .line 1098
    const/4 v4, 0x1

    #@c68
    move-object/from16 v0, p3

    #@c6a
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@c6d
    .line 1099
    const/4 v4, 0x1

    #@c6e
    move-object/from16 v0, v60

    #@c70
    move-object/from16 v1, p3

    #@c72
    invoke-virtual {v0, v1, v4}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    #@c75
    .line 1104
    :goto_62
    const/4 v4, 0x1

    #@c76
    return v4

    #@c77
    .line 1094
    .end local v36    # "_arg0":Z
    .end local v60    # "_result":Landroid/content/ComponentName;
    :cond_61
    const/16 v36, 0x0

    #@c79
    goto :goto_61

    #@c7a
    .line 1102
    .restart local v36    # "_arg0":Z
    .restart local v60    # "_result":Landroid/content/ComponentName;
    :cond_62
    const/4 v4, 0x0

    #@c7b
    move-object/from16 v0, p3

    #@c7d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@c80
    goto :goto_62

    #@c81
    .line 1108
    .end local v36    # "_arg0":Z
    .end local v60    # "_result":Landroid/content/ComponentName;
    :sswitch_42
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@c84
    move-object/from16 v0, p2

    #@c86
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@c89
    .line 1109
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getDeviceOwnerName()Ljava/lang/String;

    #@c8c
    move-result-object v65

    #@c8d
    .line 1110
    .local v65, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@c90
    .line 1111
    move-object/from16 v0, p3

    #@c92
    move-object/from16 v1, v65

    #@c94
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@c97
    .line 1112
    const/4 v4, 0x1

    #@c98
    return v4

    #@c99
    .line 1116
    .end local v65    # "_result":Ljava/lang/String;
    :sswitch_43
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@c9c
    move-object/from16 v0, p2

    #@c9e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ca1
    .line 1118
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@ca4
    move-result-object v27

    #@ca5
    .line 1119
    .restart local v27    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@ca7
    move-object/from16 v1, v27

    #@ca9
    invoke-virtual {v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->clearDeviceOwner(Ljava/lang/String;)V

    #@cac
    .line 1120
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@caf
    .line 1121
    const/4 v4, 0x1

    #@cb0
    return v4

    #@cb1
    .line 1125
    .end local v27    # "_arg0":Ljava/lang/String;
    :sswitch_44
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@cb4
    move-object/from16 v0, p2

    #@cb6
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@cb9
    .line 1126
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getDeviceOwnerUserId()I

    #@cbc
    move-result v56

    #@cbd
    .line 1127
    .restart local v56    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@cc0
    .line 1128
    move-object/from16 v0, p3

    #@cc2
    move/from16 v1, v56

    #@cc4
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@cc7
    .line 1129
    const/4 v4, 0x1

    #@cc8
    return v4

    #@cc9
    .line 1133
    .end local v56    # "_result":I
    :sswitch_45
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@ccc
    move-object/from16 v0, p2

    #@cce
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@cd1
    .line 1135
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@cd4
    move-result v4

    #@cd5
    if-eqz v4, :cond_63

    #@cd7
    .line 1136
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@cd9
    move-object/from16 v0, p2

    #@cdb
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@cde
    move-result-object v15

    #@cdf
    check-cast v15, Landroid/content/ComponentName;

    #@ce1
    .line 1142
    :goto_63
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@ce4
    move-result-object v23

    #@ce5
    .line 1144
    .restart local v23    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@ce8
    move-result v7

    #@ce9
    .line 1145
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    #@ceb
    move-object/from16 v1, v23

    #@ced
    invoke-virtual {v0, v15, v1, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setProfileOwner(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    #@cf0
    move-result v70

    #@cf1
    .line 1146
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@cf4
    .line 1147
    if-eqz v70, :cond_64

    #@cf6
    const/4 v4, 0x1

    #@cf7
    :goto_64
    move-object/from16 v0, p3

    #@cf9
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@cfc
    .line 1148
    const/4 v4, 0x1

    #@cfd
    return v4

    #@cfe
    .line 1139
    .end local v7    # "_arg2":I
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v70    # "_result":Z
    :cond_63
    const/4 v15, 0x0

    #@cff
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_63

    #@d00
    .line 1147
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v7    # "_arg2":I
    .restart local v23    # "_arg1":Ljava/lang/String;
    .restart local v70    # "_result":Z
    :cond_64
    const/4 v4, 0x0

    #@d01
    goto :goto_64

    #@d02
    .line 1152
    .end local v7    # "_arg2":I
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v70    # "_result":Z
    :sswitch_46
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@d05
    move-object/from16 v0, p2

    #@d07
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@d0a
    .line 1154
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@d0d
    move-result v5

    #@d0e
    .line 1155
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@d10
    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getProfileOwner(I)Landroid/content/ComponentName;

    #@d13
    move-result-object v60

    #@d14
    .line 1156
    .restart local v60    # "_result":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@d17
    .line 1157
    if-eqz v60, :cond_65

    #@d19
    .line 1158
    const/4 v4, 0x1

    #@d1a
    move-object/from16 v0, p3

    #@d1c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@d1f
    .line 1159
    const/4 v4, 0x1

    #@d20
    move-object/from16 v0, v60

    #@d22
    move-object/from16 v1, p3

    #@d24
    invoke-virtual {v0, v1, v4}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    #@d27
    .line 1164
    :goto_65
    const/4 v4, 0x1

    #@d28
    return v4

    #@d29
    .line 1162
    :cond_65
    const/4 v4, 0x0

    #@d2a
    move-object/from16 v0, p3

    #@d2c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@d2f
    goto :goto_65

    #@d30
    .line 1168
    .end local v5    # "_arg0":I
    .end local v60    # "_result":Landroid/content/ComponentName;
    :sswitch_47
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@d33
    move-object/from16 v0, p2

    #@d35
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@d38
    .line 1170
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@d3b
    move-result v5

    #@d3c
    .line 1171
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@d3e
    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getProfileOwnerName(I)Ljava/lang/String;

    #@d41
    move-result-object v65

    #@d42
    .line 1172
    .restart local v65    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@d45
    .line 1173
    move-object/from16 v0, p3

    #@d47
    move-object/from16 v1, v65

    #@d49
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@d4c
    .line 1174
    const/4 v4, 0x1

    #@d4d
    return v4

    #@d4e
    .line 1178
    .end local v5    # "_arg0":I
    .end local v65    # "_result":Ljava/lang/String;
    :sswitch_48
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@d51
    move-object/from16 v0, p2

    #@d53
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@d56
    .line 1180
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@d59
    move-result v4

    #@d5a
    if-eqz v4, :cond_66

    #@d5c
    .line 1181
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@d5e
    move-object/from16 v0, p2

    #@d60
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@d63
    move-result-object v15

    #@d64
    check-cast v15, Landroid/content/ComponentName;

    #@d66
    .line 1186
    :goto_66
    move-object/from16 v0, p0

    #@d68
    invoke-virtual {v0, v15}, Landroid/app/admin/IDevicePolicyManager$Stub;->setProfileEnabled(Landroid/content/ComponentName;)V

    #@d6b
    .line 1187
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@d6e
    .line 1188
    const/4 v4, 0x1

    #@d6f
    return v4

    #@d70
    .line 1184
    :cond_66
    const/4 v15, 0x0

    #@d71
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_66

    #@d72
    .line 1192
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_49
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@d75
    move-object/from16 v0, p2

    #@d77
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@d7a
    .line 1194
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@d7d
    move-result v4

    #@d7e
    if-eqz v4, :cond_67

    #@d80
    .line 1195
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@d82
    move-object/from16 v0, p2

    #@d84
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@d87
    move-result-object v15

    #@d88
    check-cast v15, Landroid/content/ComponentName;

    #@d8a
    .line 1201
    :goto_67
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@d8d
    move-result-object v23

    #@d8e
    .line 1202
    .restart local v23    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@d90
    move-object/from16 v1, v23

    #@d92
    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setProfileName(Landroid/content/ComponentName;Ljava/lang/String;)V

    #@d95
    .line 1203
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@d98
    .line 1204
    const/4 v4, 0x1

    #@d99
    return v4

    #@d9a
    .line 1198
    .end local v23    # "_arg1":Ljava/lang/String;
    :cond_67
    const/4 v15, 0x0

    #@d9b
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_67

    #@d9c
    .line 1208
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_4a
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@d9f
    move-object/from16 v0, p2

    #@da1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@da4
    .line 1210
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@da7
    move-result v4

    #@da8
    if-eqz v4, :cond_68

    #@daa
    .line 1211
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@dac
    move-object/from16 v0, p2

    #@dae
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@db1
    move-result-object v15

    #@db2
    check-cast v15, Landroid/content/ComponentName;

    #@db4
    .line 1216
    :goto_68
    move-object/from16 v0, p0

    #@db6
    invoke-virtual {v0, v15}, Landroid/app/admin/IDevicePolicyManager$Stub;->clearProfileOwner(Landroid/content/ComponentName;)V

    #@db9
    .line 1217
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@dbc
    .line 1218
    const/4 v4, 0x1

    #@dbd
    return v4

    #@dbe
    .line 1214
    :cond_68
    const/4 v15, 0x0

    #@dbf
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_68

    #@dc0
    .line 1222
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_4b
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@dc3
    move-object/from16 v0, p2

    #@dc5
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@dc8
    .line 1223
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->hasUserSetupCompleted()Z

    #@dcb
    move-result v70

    #@dcc
    .line 1224
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@dcf
    .line 1225
    if-eqz v70, :cond_69

    #@dd1
    const/4 v4, 0x1

    #@dd2
    :goto_69
    move-object/from16 v0, p3

    #@dd4
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@dd7
    .line 1226
    const/4 v4, 0x1

    #@dd8
    return v4

    #@dd9
    .line 1225
    :cond_69
    const/4 v4, 0x0

    #@dda
    goto :goto_69

    #@ddb
    .line 1230
    .end local v70    # "_result":Z
    :sswitch_4c
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@dde
    move-object/from16 v0, p2

    #@de0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@de3
    .line 1232
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@de6
    move-result v4

    #@de7
    if-eqz v4, :cond_6a

    #@de9
    .line 1233
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@deb
    move-object/from16 v0, p2

    #@ded
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@df0
    move-result-object v15

    #@df1
    check-cast v15, Landroid/content/ComponentName;

    #@df3
    .line 1239
    :goto_6a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@df6
    move-result v4

    #@df7
    if-eqz v4, :cond_6b

    #@df9
    .line 1240
    sget-object v4, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    #@dfb
    move-object/from16 v0, p2

    #@dfd
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@e00
    move-result-object v46

    #@e01
    check-cast v46, Ljava/lang/CharSequence;

    #@e03
    .line 1245
    :goto_6b
    move-object/from16 v0, p0

    #@e05
    move-object/from16 v1, v46

    #@e07
    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setDeviceOwnerLockScreenInfo(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V

    #@e0a
    .line 1246
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@e0d
    .line 1247
    const/4 v4, 0x1

    #@e0e
    return v4

    #@e0f
    .line 1236
    :cond_6a
    const/4 v15, 0x0

    #@e10
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_6a

    #@e11
    .line 1243
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :cond_6b
    const/16 v46, 0x0

    #@e13
    .local v46, "_arg1":Ljava/lang/CharSequence;
    goto :goto_6b

    #@e14
    .line 1251
    .end local v46    # "_arg1":Ljava/lang/CharSequence;
    :sswitch_4d
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@e17
    move-object/from16 v0, p2

    #@e19
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@e1c
    .line 1252
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getDeviceOwnerLockScreenInfo()Ljava/lang/CharSequence;

    #@e1f
    move-result-object v64

    #@e20
    .line 1253
    .local v64, "_result":Ljava/lang/CharSequence;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@e23
    .line 1254
    if-eqz v64, :cond_6c

    #@e25
    .line 1255
    const/4 v4, 0x1

    #@e26
    move-object/from16 v0, p3

    #@e28
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@e2b
    .line 1256
    const/4 v4, 0x1

    #@e2c
    move-object/from16 v0, v64

    #@e2e
    move-object/from16 v1, p3

    #@e30
    invoke-static {v0, v1, v4}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    #@e33
    .line 1261
    :goto_6c
    const/4 v4, 0x1

    #@e34
    return v4

    #@e35
    .line 1259
    :cond_6c
    const/4 v4, 0x0

    #@e36
    move-object/from16 v0, p3

    #@e38
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@e3b
    goto :goto_6c

    #@e3c
    .line 1265
    .end local v64    # "_result":Ljava/lang/CharSequence;
    :sswitch_4e
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@e3f
    move-object/from16 v0, p2

    #@e41
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@e44
    .line 1267
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@e47
    move-result v4

    #@e48
    if-eqz v4, :cond_6d

    #@e4a
    .line 1268
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@e4c
    move-object/from16 v0, p2

    #@e4e
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@e51
    move-result-object v15

    #@e52
    check-cast v15, Landroid/content/ComponentName;

    #@e54
    .line 1274
    :goto_6d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@e57
    move-result-object v50

    #@e58
    .line 1276
    .local v50, "_arg1":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@e5b
    move-result v4

    #@e5c
    if-eqz v4, :cond_6e

    #@e5e
    const/16 v30, 0x1

    #@e60
    .line 1277
    .restart local v30    # "_arg2":Z
    :goto_6e
    move-object/from16 v0, p0

    #@e62
    move-object/from16 v1, v50

    #@e64
    move/from16 v2, v30

    #@e66
    invoke-virtual {v0, v15, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPackagesSuspended(Landroid/content/ComponentName;[Ljava/lang/String;Z)[Ljava/lang/String;

    #@e69
    move-result-object v71

    #@e6a
    .line 1278
    .local v71, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@e6d
    .line 1279
    move-object/from16 v0, p3

    #@e6f
    move-object/from16 v1, v71

    #@e71
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@e74
    .line 1280
    const/4 v4, 0x1

    #@e75
    return v4

    #@e76
    .line 1271
    .end local v30    # "_arg2":Z
    .end local v50    # "_arg1":[Ljava/lang/String;
    .end local v71    # "_result":[Ljava/lang/String;
    :cond_6d
    const/4 v15, 0x0

    #@e77
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_6d

    #@e78
    .line 1276
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v50    # "_arg1":[Ljava/lang/String;
    :cond_6e
    const/16 v30, 0x0

    #@e7a
    goto :goto_6e

    #@e7b
    .line 1284
    .end local v50    # "_arg1":[Ljava/lang/String;
    :sswitch_4f
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@e7e
    move-object/from16 v0, p2

    #@e80
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@e83
    .line 1286
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@e86
    move-result v4

    #@e87
    if-eqz v4, :cond_6f

    #@e89
    .line 1287
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@e8b
    move-object/from16 v0, p2

    #@e8d
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@e90
    move-result-object v15

    #@e91
    check-cast v15, Landroid/content/ComponentName;

    #@e93
    .line 1293
    :goto_6f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@e96
    move-result-object v23

    #@e97
    .line 1294
    .restart local v23    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@e99
    move-object/from16 v1, v23

    #@e9b
    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->isPackageSuspended(Landroid/content/ComponentName;Ljava/lang/String;)Z

    #@e9e
    move-result v70

    #@e9f
    .line 1295
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@ea2
    .line 1296
    if-eqz v70, :cond_70

    #@ea4
    const/4 v4, 0x1

    #@ea5
    :goto_70
    move-object/from16 v0, p3

    #@ea7
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@eaa
    .line 1297
    const/4 v4, 0x1

    #@eab
    return v4

    #@eac
    .line 1290
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v70    # "_result":Z
    :cond_6f
    const/4 v15, 0x0

    #@ead
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_6f

    #@eae
    .line 1296
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v23    # "_arg1":Ljava/lang/String;
    .restart local v70    # "_result":Z
    :cond_70
    const/4 v4, 0x0

    #@eaf
    goto :goto_70

    #@eb0
    .line 1301
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v70    # "_result":Z
    :sswitch_50
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@eb3
    move-object/from16 v0, p2

    #@eb5
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@eb8
    .line 1303
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@ebb
    move-result v4

    #@ebc
    if-eqz v4, :cond_71

    #@ebe
    .line 1304
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@ec0
    move-object/from16 v0, p2

    #@ec2
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@ec5
    move-result-object v15

    #@ec6
    check-cast v15, Landroid/content/ComponentName;

    #@ec8
    .line 1310
    :goto_71
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    #@ecb
    move-result-object v16

    #@ecc
    .line 1311
    .local v16, "_arg1":[B
    move-object/from16 v0, p0

    #@ece
    move-object/from16 v1, v16

    #@ed0
    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->installCaCert(Landroid/content/ComponentName;[B)Z

    #@ed3
    move-result v70

    #@ed4
    .line 1312
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@ed7
    .line 1313
    if-eqz v70, :cond_72

    #@ed9
    const/4 v4, 0x1

    #@eda
    :goto_72
    move-object/from16 v0, p3

    #@edc
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@edf
    .line 1314
    const/4 v4, 0x1

    #@ee0
    return v4

    #@ee1
    .line 1307
    .end local v16    # "_arg1":[B
    .end local v70    # "_result":Z
    :cond_71
    const/4 v15, 0x0

    #@ee2
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_71

    #@ee3
    .line 1313
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v16    # "_arg1":[B
    .restart local v70    # "_result":Z
    :cond_72
    const/4 v4, 0x0

    #@ee4
    goto :goto_72

    #@ee5
    .line 1318
    .end local v16    # "_arg1":[B
    .end local v70    # "_result":Z
    :sswitch_51
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@ee8
    move-object/from16 v0, p2

    #@eea
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@eed
    .line 1320
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@ef0
    move-result v4

    #@ef1
    if-eqz v4, :cond_73

    #@ef3
    .line 1321
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@ef5
    move-object/from16 v0, p2

    #@ef7
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@efa
    move-result-object v15

    #@efb
    check-cast v15, Landroid/content/ComponentName;

    #@efd
    .line 1327
    :goto_73
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@f00
    move-result-object v50

    #@f01
    .line 1328
    .restart local v50    # "_arg1":[Ljava/lang/String;
    move-object/from16 v0, p0

    #@f03
    move-object/from16 v1, v50

    #@f05
    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->uninstallCaCerts(Landroid/content/ComponentName;[Ljava/lang/String;)V

    #@f08
    .line 1329
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@f0b
    .line 1330
    const/4 v4, 0x1

    #@f0c
    return v4

    #@f0d
    .line 1324
    .end local v50    # "_arg1":[Ljava/lang/String;
    :cond_73
    const/4 v15, 0x0

    #@f0e
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_73

    #@f0f
    .line 1334
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_52
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@f12
    move-object/from16 v0, p2

    #@f14
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@f17
    .line 1336
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@f1a
    move-result v4

    #@f1b
    if-eqz v4, :cond_74

    #@f1d
    .line 1337
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@f1f
    move-object/from16 v0, p2

    #@f21
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@f24
    move-result-object v15

    #@f25
    check-cast v15, Landroid/content/ComponentName;

    #@f27
    .line 1342
    :goto_74
    move-object/from16 v0, p0

    #@f29
    invoke-virtual {v0, v15}, Landroid/app/admin/IDevicePolicyManager$Stub;->enforceCanManageCaCerts(Landroid/content/ComponentName;)V

    #@f2c
    .line 1343
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@f2f
    .line 1344
    const/4 v4, 0x1

    #@f30
    return v4

    #@f31
    .line 1340
    :cond_74
    const/4 v15, 0x0

    #@f32
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_74

    #@f33
    .line 1348
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_53
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@f36
    move-object/from16 v0, p2

    #@f38
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@f3b
    .line 1350
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@f3e
    move-result-object v27

    #@f3f
    .line 1352
    .restart local v27    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@f42
    move-result v6

    #@f43
    .line 1354
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@f46
    move-result v4

    #@f47
    if-eqz v4, :cond_75

    #@f49
    const/16 v30, 0x1

    #@f4b
    .line 1355
    .restart local v30    # "_arg2":Z
    :goto_75
    move-object/from16 v0, p0

    #@f4d
    move-object/from16 v1, v27

    #@f4f
    move/from16 v2, v30

    #@f51
    invoke-virtual {v0, v1, v6, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->approveCaCert(Ljava/lang/String;IZ)Z

    #@f54
    move-result v70

    #@f55
    .line 1356
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@f58
    .line 1357
    if-eqz v70, :cond_76

    #@f5a
    const/4 v4, 0x1

    #@f5b
    :goto_76
    move-object/from16 v0, p3

    #@f5d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@f60
    .line 1358
    const/4 v4, 0x1

    #@f61
    return v4

    #@f62
    .line 1354
    .end local v30    # "_arg2":Z
    .end local v70    # "_result":Z
    :cond_75
    const/16 v30, 0x0

    #@f64
    goto :goto_75

    #@f65
    .line 1357
    .restart local v30    # "_arg2":Z
    .restart local v70    # "_result":Z
    :cond_76
    const/4 v4, 0x0

    #@f66
    goto :goto_76

    #@f67
    .line 1362
    .end local v6    # "_arg1":I
    .end local v27    # "_arg0":Ljava/lang/String;
    .end local v30    # "_arg2":Z
    .end local v70    # "_result":Z
    :sswitch_54
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@f6a
    move-object/from16 v0, p2

    #@f6c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@f6f
    .line 1364
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@f72
    move-result-object v27

    #@f73
    .line 1366
    .restart local v27    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@f76
    move-result v6

    #@f77
    .line 1367
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    #@f79
    move-object/from16 v1, v27

    #@f7b
    invoke-virtual {v0, v1, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->isCaCertApproved(Ljava/lang/String;I)Z

    #@f7e
    move-result v70

    #@f7f
    .line 1368
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@f82
    .line 1369
    if-eqz v70, :cond_77

    #@f84
    const/4 v4, 0x1

    #@f85
    :goto_77
    move-object/from16 v0, p3

    #@f87
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@f8a
    .line 1370
    const/4 v4, 0x1

    #@f8b
    return v4

    #@f8c
    .line 1369
    :cond_77
    const/4 v4, 0x0

    #@f8d
    goto :goto_77

    #@f8e
    .line 1374
    .end local v6    # "_arg1":I
    .end local v27    # "_arg0":Ljava/lang/String;
    .end local v70    # "_result":Z
    :sswitch_55
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@f91
    move-object/from16 v0, p2

    #@f93
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@f96
    .line 1376
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@f99
    move-result v4

    #@f9a
    if-eqz v4, :cond_78

    #@f9c
    .line 1377
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@f9e
    move-object/from16 v0, p2

    #@fa0
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@fa3
    move-result-object v15

    #@fa4
    check-cast v15, Landroid/content/ComponentName;

    #@fa6
    .line 1383
    :goto_78
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    #@fa9
    move-result-object v16

    #@faa
    .line 1385
    .restart local v16    # "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    #@fad
    move-result-object v17

    #@fae
    .line 1387
    .local v17, "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    #@fb1
    move-result-object v18

    #@fb2
    .line 1389
    .local v18, "_arg3":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@fb5
    move-result-object v19

    #@fb6
    .line 1391
    .local v19, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@fb9
    move-result v4

    #@fba
    if-eqz v4, :cond_79

    #@fbc
    const/16 v20, 0x1

    #@fbe
    .local v20, "_arg5":Z
    :goto_79
    move-object/from16 v14, p0

    #@fc0
    .line 1392
    invoke-virtual/range {v14 .. v20}, Landroid/app/admin/IDevicePolicyManager$Stub;->installKeyPair(Landroid/content/ComponentName;[B[B[BLjava/lang/String;Z)Z

    #@fc3
    move-result v70

    #@fc4
    .line 1393
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@fc7
    .line 1394
    if-eqz v70, :cond_7a

    #@fc9
    const/4 v4, 0x1

    #@fca
    :goto_7a
    move-object/from16 v0, p3

    #@fcc
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@fcf
    .line 1395
    const/4 v4, 0x1

    #@fd0
    return v4

    #@fd1
    .line 1380
    .end local v16    # "_arg1":[B
    .end local v17    # "_arg2":[B
    .end local v18    # "_arg3":[B
    .end local v19    # "_arg4":Ljava/lang/String;
    .end local v20    # "_arg5":Z
    .end local v70    # "_result":Z
    :cond_78
    const/4 v15, 0x0

    #@fd2
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_78

    #@fd3
    .line 1391
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v16    # "_arg1":[B
    .restart local v17    # "_arg2":[B
    .restart local v18    # "_arg3":[B
    .restart local v19    # "_arg4":Ljava/lang/String;
    :cond_79
    const/16 v20, 0x0

    #@fd5
    goto :goto_79

    #@fd6
    .line 1394
    .restart local v20    # "_arg5":Z
    .restart local v70    # "_result":Z
    :cond_7a
    const/4 v4, 0x0

    #@fd7
    goto :goto_7a

    #@fd8
    .line 1399
    .end local v16    # "_arg1":[B
    .end local v17    # "_arg2":[B
    .end local v18    # "_arg3":[B
    .end local v19    # "_arg4":Ljava/lang/String;
    .end local v20    # "_arg5":Z
    .end local v70    # "_result":Z
    :sswitch_56
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@fdb
    move-object/from16 v0, p2

    #@fdd
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@fe0
    .line 1401
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@fe3
    move-result v4

    #@fe4
    if-eqz v4, :cond_7b

    #@fe6
    .line 1402
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@fe8
    move-object/from16 v0, p2

    #@fea
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@fed
    move-result-object v15

    #@fee
    check-cast v15, Landroid/content/ComponentName;

    #@ff0
    .line 1408
    :goto_7b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@ff3
    move-result-object v23

    #@ff4
    .line 1409
    .restart local v23    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@ff6
    move-object/from16 v1, v23

    #@ff8
    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->removeKeyPair(Landroid/content/ComponentName;Ljava/lang/String;)Z

    #@ffb
    move-result v70

    #@ffc
    .line 1410
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@fff
    .line 1411
    if-eqz v70, :cond_7c

    #@1001
    const/4 v4, 0x1

    #@1002
    :goto_7c
    move-object/from16 v0, p3

    #@1004
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@1007
    .line 1412
    const/4 v4, 0x1

    #@1008
    return v4

    #@1009
    .line 1405
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v70    # "_result":Z
    :cond_7b
    const/4 v15, 0x0

    #@100a
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_7b

    #@100b
    .line 1411
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v23    # "_arg1":Ljava/lang/String;
    .restart local v70    # "_result":Z
    :cond_7c
    const/4 v4, 0x0

    #@100c
    goto :goto_7c

    #@100d
    .line 1416
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v70    # "_result":Z
    :sswitch_57
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@1010
    move-object/from16 v0, p2

    #@1012
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1015
    .line 1418
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1018
    move-result v5

    #@1019
    .line 1420
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@101c
    move-result v4

    #@101d
    if-eqz v4, :cond_7d

    #@101f
    .line 1421
    sget-object v4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1021
    move-object/from16 v0, p2

    #@1023
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1026
    move-result-object v43

    #@1027
    check-cast v43, Landroid/net/Uri;

    #@1029
    .line 1427
    :goto_7d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@102c
    move-result-object v53

    #@102d
    .line 1429
    .restart local v53    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1030
    move-result-object v54

    #@1031
    .line 1430
    .local v54, "_arg3":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@1033
    move-object/from16 v1, v43

    #@1035
    move-object/from16 v2, v53

    #@1037
    move-object/from16 v3, v54

    #@1039
    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->choosePrivateKeyAlias(ILandroid/net/Uri;Ljava/lang/String;Landroid/os/IBinder;)V

    #@103c
    .line 1431
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@103f
    .line 1432
    const/4 v4, 0x1

    #@1040
    return v4

    #@1041
    .line 1424
    .end local v53    # "_arg2":Ljava/lang/String;
    .end local v54    # "_arg3":Landroid/os/IBinder;
    :cond_7d
    const/16 v43, 0x0

    #@1043
    .local v43, "_arg1":Landroid/net/Uri;
    goto :goto_7d

    #@1044
    .line 1436
    .end local v5    # "_arg0":I
    .end local v43    # "_arg1":Landroid/net/Uri;
    :sswitch_58
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@1047
    move-object/from16 v0, p2

    #@1049
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@104c
    .line 1438
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@104f
    move-result v4

    #@1050
    if-eqz v4, :cond_7e

    #@1052
    .line 1439
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1054
    move-object/from16 v0, p2

    #@1056
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1059
    move-result-object v15

    #@105a
    check-cast v15, Landroid/content/ComponentName;

    #@105c
    .line 1445
    :goto_7e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@105f
    move-result-object v23

    #@1060
    .line 1446
    .restart local v23    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@1062
    move-object/from16 v1, v23

    #@1064
    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setCertInstallerPackage(Landroid/content/ComponentName;Ljava/lang/String;)V

    #@1067
    .line 1447
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@106a
    .line 1448
    const/4 v4, 0x1

    #@106b
    return v4

    #@106c
    .line 1442
    .end local v23    # "_arg1":Ljava/lang/String;
    :cond_7e
    const/4 v15, 0x0

    #@106d
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_7e

    #@106e
    .line 1452
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_59
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@1071
    move-object/from16 v0, p2

    #@1073
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1076
    .line 1454
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1079
    move-result v4

    #@107a
    if-eqz v4, :cond_7f

    #@107c
    .line 1455
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@107e
    move-object/from16 v0, p2

    #@1080
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1083
    move-result-object v15

    #@1084
    check-cast v15, Landroid/content/ComponentName;

    #@1086
    .line 1460
    :goto_7f
    move-object/from16 v0, p0

    #@1088
    invoke-virtual {v0, v15}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCertInstallerPackage(Landroid/content/ComponentName;)Ljava/lang/String;

    #@108b
    move-result-object v65

    #@108c
    .line 1461
    .restart local v65    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@108f
    .line 1462
    move-object/from16 v0, p3

    #@1091
    move-object/from16 v1, v65

    #@1093
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1096
    .line 1463
    const/4 v4, 0x1

    #@1097
    return v4

    #@1098
    .line 1458
    .end local v65    # "_result":Ljava/lang/String;
    :cond_7f
    const/4 v15, 0x0

    #@1099
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_7f

    #@109a
    .line 1467
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_5a
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@109d
    move-object/from16 v0, p2

    #@109f
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@10a2
    .line 1469
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@10a5
    move-result v4

    #@10a6
    if-eqz v4, :cond_80

    #@10a8
    .line 1470
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@10aa
    move-object/from16 v0, p2

    #@10ac
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@10af
    move-result-object v15

    #@10b0
    check-cast v15, Landroid/content/ComponentName;

    #@10b2
    .line 1476
    :goto_80
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@10b5
    move-result-object v23

    #@10b6
    .line 1478
    .restart local v23    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@10b9
    move-result v4

    #@10ba
    if-eqz v4, :cond_81

    #@10bc
    const/16 v30, 0x1

    #@10be
    .line 1479
    .restart local v30    # "_arg2":Z
    :goto_81
    move-object/from16 v0, p0

    #@10c0
    move-object/from16 v1, v23

    #@10c2
    move/from16 v2, v30

    #@10c4
    invoke-virtual {v0, v15, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAlwaysOnVpnPackage(Landroid/content/ComponentName;Ljava/lang/String;Z)Z

    #@10c7
    move-result v70

    #@10c8
    .line 1480
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@10cb
    .line 1481
    if-eqz v70, :cond_82

    #@10cd
    const/4 v4, 0x1

    #@10ce
    :goto_82
    move-object/from16 v0, p3

    #@10d0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@10d3
    .line 1482
    const/4 v4, 0x1

    #@10d4
    return v4

    #@10d5
    .line 1473
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v30    # "_arg2":Z
    .end local v70    # "_result":Z
    :cond_80
    const/4 v15, 0x0

    #@10d6
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_80

    #@10d7
    .line 1478
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v23    # "_arg1":Ljava/lang/String;
    :cond_81
    const/16 v30, 0x0

    #@10d9
    goto :goto_81

    #@10da
    .line 1481
    .restart local v30    # "_arg2":Z
    .restart local v70    # "_result":Z
    :cond_82
    const/4 v4, 0x0

    #@10db
    goto :goto_82

    #@10dc
    .line 1486
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v30    # "_arg2":Z
    .end local v70    # "_result":Z
    :sswitch_5b
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@10df
    move-object/from16 v0, p2

    #@10e1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@10e4
    .line 1488
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@10e7
    move-result v4

    #@10e8
    if-eqz v4, :cond_83

    #@10ea
    .line 1489
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@10ec
    move-object/from16 v0, p2

    #@10ee
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@10f1
    move-result-object v15

    #@10f2
    check-cast v15, Landroid/content/ComponentName;

    #@10f4
    .line 1494
    :goto_83
    move-object/from16 v0, p0

    #@10f6
    invoke-virtual {v0, v15}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAlwaysOnVpnPackage(Landroid/content/ComponentName;)Ljava/lang/String;

    #@10f9
    move-result-object v65

    #@10fa
    .line 1495
    .restart local v65    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@10fd
    .line 1496
    move-object/from16 v0, p3

    #@10ff
    move-object/from16 v1, v65

    #@1101
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1104
    .line 1497
    const/4 v4, 0x1

    #@1105
    return v4

    #@1106
    .line 1492
    .end local v65    # "_result":Ljava/lang/String;
    :cond_83
    const/4 v15, 0x0

    #@1107
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_83

    #@1108
    .line 1501
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_5c
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@110b
    move-object/from16 v0, p2

    #@110d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1110
    .line 1503
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1113
    move-result v4

    #@1114
    if-eqz v4, :cond_84

    #@1116
    .line 1504
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1118
    move-object/from16 v0, p2

    #@111a
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@111d
    move-result-object v15

    #@111e
    check-cast v15, Landroid/content/ComponentName;

    #@1120
    .line 1510
    :goto_84
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1123
    move-result v4

    #@1124
    if-eqz v4, :cond_85

    #@1126
    .line 1511
    sget-object v4, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1128
    move-object/from16 v0, p2

    #@112a
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@112d
    move-result-object v40

    #@112e
    check-cast v40, Landroid/content/IntentFilter;

    #@1130
    .line 1517
    :goto_85
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1133
    move-result v4

    #@1134
    if-eqz v4, :cond_86

    #@1136
    .line 1518
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1138
    move-object/from16 v0, p2

    #@113a
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@113d
    move-result-object v24

    #@113e
    check-cast v24, Landroid/content/ComponentName;

    #@1140
    .line 1523
    :goto_86
    move-object/from16 v0, p0

    #@1142
    move-object/from16 v1, v40

    #@1144
    move-object/from16 v2, v24

    #@1146
    invoke-virtual {v0, v15, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->addPersistentPreferredActivity(Landroid/content/ComponentName;Landroid/content/IntentFilter;Landroid/content/ComponentName;)V

    #@1149
    .line 1524
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@114c
    .line 1525
    const/4 v4, 0x1

    #@114d
    return v4

    #@114e
    .line 1507
    :cond_84
    const/4 v15, 0x0

    #@114f
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_84

    #@1150
    .line 1514
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :cond_85
    const/16 v40, 0x0

    #@1152
    .local v40, "_arg1":Landroid/content/IntentFilter;
    goto :goto_85

    #@1153
    .line 1521
    .end local v40    # "_arg1":Landroid/content/IntentFilter;
    :cond_86
    const/16 v24, 0x0

    #@1155
    .local v24, "_arg2":Landroid/content/ComponentName;
    goto :goto_86

    #@1156
    .line 1529
    .end local v24    # "_arg2":Landroid/content/ComponentName;
    :sswitch_5d
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@1159
    move-object/from16 v0, p2

    #@115b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@115e
    .line 1531
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1161
    move-result v4

    #@1162
    if-eqz v4, :cond_87

    #@1164
    .line 1532
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1166
    move-object/from16 v0, p2

    #@1168
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@116b
    move-result-object v15

    #@116c
    check-cast v15, Landroid/content/ComponentName;

    #@116e
    .line 1538
    :goto_87
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1171
    move-result-object v23

    #@1172
    .line 1539
    .restart local v23    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@1174
    move-object/from16 v1, v23

    #@1176
    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->clearPackagePersistentPreferredActivities(Landroid/content/ComponentName;Ljava/lang/String;)V

    #@1179
    .line 1540
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@117c
    .line 1541
    const/4 v4, 0x1

    #@117d
    return v4

    #@117e
    .line 1535
    .end local v23    # "_arg1":Ljava/lang/String;
    :cond_87
    const/4 v15, 0x0

    #@117f
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_87

    #@1180
    .line 1545
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_5e
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@1183
    move-object/from16 v0, p2

    #@1185
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1188
    .line 1547
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@118b
    move-result v4

    #@118c
    if-eqz v4, :cond_88

    #@118e
    .line 1548
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1190
    move-object/from16 v0, p2

    #@1192
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1195
    move-result-object v15

    #@1196
    check-cast v15, Landroid/content/ComponentName;

    #@1198
    .line 1554
    :goto_88
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@119b
    move-result-object v23

    #@119c
    .line 1556
    .restart local v23    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@119f
    move-result v4

    #@11a0
    if-eqz v4, :cond_89

    #@11a2
    .line 1557
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@11a4
    move-object/from16 v0, p2

    #@11a6
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@11a9
    move-result-object v51

    #@11aa
    check-cast v51, Landroid/os/Bundle;

    #@11ac
    .line 1562
    :goto_89
    move-object/from16 v0, p0

    #@11ae
    move-object/from16 v1, v23

    #@11b0
    move-object/from16 v2, v51

    #@11b2
    invoke-virtual {v0, v15, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setApplicationRestrictions(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;)V

    #@11b5
    .line 1563
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@11b8
    .line 1564
    const/4 v4, 0x1

    #@11b9
    return v4

    #@11ba
    .line 1551
    .end local v23    # "_arg1":Ljava/lang/String;
    :cond_88
    const/4 v15, 0x0

    #@11bb
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_88

    #@11bc
    .line 1560
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v23    # "_arg1":Ljava/lang/String;
    :cond_89
    const/16 v51, 0x0

    #@11be
    .local v51, "_arg2":Landroid/os/Bundle;
    goto :goto_89

    #@11bf
    .line 1568
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v51    # "_arg2":Landroid/os/Bundle;
    :sswitch_5f
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@11c2
    move-object/from16 v0, p2

    #@11c4
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@11c7
    .line 1570
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@11ca
    move-result v4

    #@11cb
    if-eqz v4, :cond_8a

    #@11cd
    .line 1571
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@11cf
    move-object/from16 v0, p2

    #@11d1
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@11d4
    move-result-object v15

    #@11d5
    check-cast v15, Landroid/content/ComponentName;

    #@11d7
    .line 1577
    :goto_8a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@11da
    move-result-object v23

    #@11db
    .line 1578
    .restart local v23    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@11dd
    move-object/from16 v1, v23

    #@11df
    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getApplicationRestrictions(Landroid/content/ComponentName;Ljava/lang/String;)Landroid/os/Bundle;

    #@11e2
    move-result-object v62

    #@11e3
    .line 1579
    .local v62, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@11e6
    .line 1580
    if-eqz v62, :cond_8b

    #@11e8
    .line 1581
    const/4 v4, 0x1

    #@11e9
    move-object/from16 v0, p3

    #@11eb
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@11ee
    .line 1582
    const/4 v4, 0x1

    #@11ef
    move-object/from16 v0, v62

    #@11f1
    move-object/from16 v1, p3

    #@11f3
    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@11f6
    .line 1587
    :goto_8b
    const/4 v4, 0x1

    #@11f7
    return v4

    #@11f8
    .line 1574
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v62    # "_result":Landroid/os/Bundle;
    :cond_8a
    const/4 v15, 0x0

    #@11f9
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_8a

    #@11fa
    .line 1585
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v23    # "_arg1":Ljava/lang/String;
    .restart local v62    # "_result":Landroid/os/Bundle;
    :cond_8b
    const/4 v4, 0x0

    #@11fb
    move-object/from16 v0, p3

    #@11fd
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@1200
    goto :goto_8b

    #@1201
    .line 1591
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v62    # "_result":Landroid/os/Bundle;
    :sswitch_60
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@1204
    move-object/from16 v0, p2

    #@1206
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1209
    .line 1593
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@120c
    move-result v4

    #@120d
    if-eqz v4, :cond_8c

    #@120f
    .line 1594
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1211
    move-object/from16 v0, p2

    #@1213
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1216
    move-result-object v15

    #@1217
    check-cast v15, Landroid/content/ComponentName;

    #@1219
    .line 1600
    :goto_8c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@121c
    move-result-object v23

    #@121d
    .line 1601
    .restart local v23    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@121f
    move-object/from16 v1, v23

    #@1221
    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setApplicationRestrictionsManagingPackage(Landroid/content/ComponentName;Ljava/lang/String;)Z

    #@1224
    move-result v70

    #@1225
    .line 1602
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1228
    .line 1603
    if-eqz v70, :cond_8d

    #@122a
    const/4 v4, 0x1

    #@122b
    :goto_8d
    move-object/from16 v0, p3

    #@122d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@1230
    .line 1604
    const/4 v4, 0x1

    #@1231
    return v4

    #@1232
    .line 1597
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v70    # "_result":Z
    :cond_8c
    const/4 v15, 0x0

    #@1233
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_8c

    #@1234
    .line 1603
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v23    # "_arg1":Ljava/lang/String;
    .restart local v70    # "_result":Z
    :cond_8d
    const/4 v4, 0x0

    #@1235
    goto :goto_8d

    #@1236
    .line 1608
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v70    # "_result":Z
    :sswitch_61
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@1239
    move-object/from16 v0, p2

    #@123b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@123e
    .line 1610
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1241
    move-result v4

    #@1242
    if-eqz v4, :cond_8e

    #@1244
    .line 1611
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1246
    move-object/from16 v0, p2

    #@1248
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@124b
    move-result-object v15

    #@124c
    check-cast v15, Landroid/content/ComponentName;

    #@124e
    .line 1616
    :goto_8e
    move-object/from16 v0, p0

    #@1250
    invoke-virtual {v0, v15}, Landroid/app/admin/IDevicePolicyManager$Stub;->getApplicationRestrictionsManagingPackage(Landroid/content/ComponentName;)Ljava/lang/String;

    #@1253
    move-result-object v65

    #@1254
    .line 1617
    .restart local v65    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1257
    .line 1618
    move-object/from16 v0, p3

    #@1259
    move-object/from16 v1, v65

    #@125b
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@125e
    .line 1619
    const/4 v4, 0x1

    #@125f
    return v4

    #@1260
    .line 1614
    .end local v65    # "_result":Ljava/lang/String;
    :cond_8e
    const/4 v15, 0x0

    #@1261
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_8e

    #@1262
    .line 1623
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_62
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@1265
    move-object/from16 v0, p2

    #@1267
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@126a
    .line 1624
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->isCallerApplicationRestrictionsManagingPackage()Z

    #@126d
    move-result v70

    #@126e
    .line 1625
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1271
    .line 1626
    if-eqz v70, :cond_8f

    #@1273
    const/4 v4, 0x1

    #@1274
    :goto_8f
    move-object/from16 v0, p3

    #@1276
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@1279
    .line 1627
    const/4 v4, 0x1

    #@127a
    return v4

    #@127b
    .line 1626
    :cond_8f
    const/4 v4, 0x0

    #@127c
    goto :goto_8f

    #@127d
    .line 1631
    .end local v70    # "_result":Z
    :sswitch_63
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@1280
    move-object/from16 v0, p2

    #@1282
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1285
    .line 1633
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1288
    move-result v4

    #@1289
    if-eqz v4, :cond_90

    #@128b
    .line 1634
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@128d
    move-object/from16 v0, p2

    #@128f
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1292
    move-result-object v15

    #@1293
    check-cast v15, Landroid/content/ComponentName;

    #@1295
    .line 1640
    :goto_90
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1298
    move-result v4

    #@1299
    if-eqz v4, :cond_91

    #@129b
    .line 1641
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@129d
    move-object/from16 v0, p2

    #@129f
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@12a2
    move-result-object v38

    #@12a3
    check-cast v38, Landroid/content/ComponentName;

    #@12a5
    .line 1646
    :goto_91
    move-object/from16 v0, p0

    #@12a7
    move-object/from16 v1, v38

    #@12a9
    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setRestrictionsProvider(Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    #@12ac
    .line 1647
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@12af
    .line 1648
    const/4 v4, 0x1

    #@12b0
    return v4

    #@12b1
    .line 1637
    :cond_90
    const/4 v15, 0x0

    #@12b2
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_90

    #@12b3
    .line 1644
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :cond_91
    const/16 v38, 0x0

    #@12b5
    .local v38, "_arg1":Landroid/content/ComponentName;
    goto :goto_91

    #@12b6
    .line 1652
    .end local v38    # "_arg1":Landroid/content/ComponentName;
    :sswitch_64
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@12b9
    move-object/from16 v0, p2

    #@12bb
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@12be
    .line 1654
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@12c1
    move-result v5

    #@12c2
    .line 1655
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@12c4
    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getRestrictionsProvider(I)Landroid/content/ComponentName;

    #@12c7
    move-result-object v60

    #@12c8
    .line 1656
    .restart local v60    # "_result":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@12cb
    .line 1657
    if-eqz v60, :cond_92

    #@12cd
    .line 1658
    const/4 v4, 0x1

    #@12ce
    move-object/from16 v0, p3

    #@12d0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@12d3
    .line 1659
    const/4 v4, 0x1

    #@12d4
    move-object/from16 v0, v60

    #@12d6
    move-object/from16 v1, p3

    #@12d8
    invoke-virtual {v0, v1, v4}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    #@12db
    .line 1664
    :goto_92
    const/4 v4, 0x1

    #@12dc
    return v4

    #@12dd
    .line 1662
    :cond_92
    const/4 v4, 0x0

    #@12de
    move-object/from16 v0, p3

    #@12e0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@12e3
    goto :goto_92

    #@12e4
    .line 1668
    .end local v5    # "_arg0":I
    .end local v60    # "_result":Landroid/content/ComponentName;
    :sswitch_65
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@12e7
    move-object/from16 v0, p2

    #@12e9
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@12ec
    .line 1670
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@12ef
    move-result v4

    #@12f0
    if-eqz v4, :cond_93

    #@12f2
    .line 1671
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@12f4
    move-object/from16 v0, p2

    #@12f6
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@12f9
    move-result-object v15

    #@12fa
    check-cast v15, Landroid/content/ComponentName;

    #@12fc
    .line 1677
    :goto_93
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@12ff
    move-result-object v23

    #@1300
    .line 1679
    .restart local v23    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1303
    move-result v4

    #@1304
    if-eqz v4, :cond_94

    #@1306
    const/16 v30, 0x1

    #@1308
    .line 1680
    .restart local v30    # "_arg2":Z
    :goto_94
    move-object/from16 v0, p0

    #@130a
    move-object/from16 v1, v23

    #@130c
    move/from16 v2, v30

    #@130e
    invoke-virtual {v0, v15, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setUserRestriction(Landroid/content/ComponentName;Ljava/lang/String;Z)V

    #@1311
    .line 1681
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1314
    .line 1682
    const/4 v4, 0x1

    #@1315
    return v4

    #@1316
    .line 1674
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v30    # "_arg2":Z
    :cond_93
    const/4 v15, 0x0

    #@1317
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_93

    #@1318
    .line 1679
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v23    # "_arg1":Ljava/lang/String;
    :cond_94
    const/16 v30, 0x0

    #@131a
    goto :goto_94

    #@131b
    .line 1686
    .end local v23    # "_arg1":Ljava/lang/String;
    :sswitch_66
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@131e
    move-object/from16 v0, p2

    #@1320
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1323
    .line 1688
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1326
    move-result v4

    #@1327
    if-eqz v4, :cond_95

    #@1329
    .line 1689
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@132b
    move-object/from16 v0, p2

    #@132d
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1330
    move-result-object v15

    #@1331
    check-cast v15, Landroid/content/ComponentName;

    #@1333
    .line 1694
    :goto_95
    move-object/from16 v0, p0

    #@1335
    invoke-virtual {v0, v15}, Landroid/app/admin/IDevicePolicyManager$Stub;->getUserRestrictions(Landroid/content/ComponentName;)Landroid/os/Bundle;

    #@1338
    move-result-object v62

    #@1339
    .line 1695
    .restart local v62    # "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@133c
    .line 1696
    if-eqz v62, :cond_96

    #@133e
    .line 1697
    const/4 v4, 0x1

    #@133f
    move-object/from16 v0, p3

    #@1341
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@1344
    .line 1698
    const/4 v4, 0x1

    #@1345
    move-object/from16 v0, v62

    #@1347
    move-object/from16 v1, p3

    #@1349
    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@134c
    .line 1703
    :goto_96
    const/4 v4, 0x1

    #@134d
    return v4

    #@134e
    .line 1692
    .end local v62    # "_result":Landroid/os/Bundle;
    :cond_95
    const/4 v15, 0x0

    #@134f
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_95

    #@1350
    .line 1701
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v62    # "_result":Landroid/os/Bundle;
    :cond_96
    const/4 v4, 0x0

    #@1351
    move-object/from16 v0, p3

    #@1353
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@1356
    goto :goto_96

    #@1357
    .line 1707
    .end local v62    # "_result":Landroid/os/Bundle;
    :sswitch_67
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@135a
    move-object/from16 v0, p2

    #@135c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@135f
    .line 1709
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1362
    move-result v4

    #@1363
    if-eqz v4, :cond_97

    #@1365
    .line 1710
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1367
    move-object/from16 v0, p2

    #@1369
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@136c
    move-result-object v15

    #@136d
    check-cast v15, Landroid/content/ComponentName;

    #@136f
    .line 1716
    :goto_97
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1372
    move-result v4

    #@1373
    if-eqz v4, :cond_98

    #@1375
    .line 1717
    sget-object v4, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1377
    move-object/from16 v0, p2

    #@1379
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@137c
    move-result-object v40

    #@137d
    check-cast v40, Landroid/content/IntentFilter;

    #@137f
    .line 1723
    :goto_98
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1382
    move-result v7

    #@1383
    .line 1724
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    #@1385
    move-object/from16 v1, v40

    #@1387
    invoke-virtual {v0, v15, v1, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->addCrossProfileIntentFilter(Landroid/content/ComponentName;Landroid/content/IntentFilter;I)V

    #@138a
    .line 1725
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@138d
    .line 1726
    const/4 v4, 0x1

    #@138e
    return v4

    #@138f
    .line 1713
    .end local v7    # "_arg2":I
    :cond_97
    const/4 v15, 0x0

    #@1390
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_97

    #@1391
    .line 1720
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :cond_98
    const/16 v40, 0x0

    #@1393
    .restart local v40    # "_arg1":Landroid/content/IntentFilter;
    goto :goto_98

    #@1394
    .line 1730
    .end local v40    # "_arg1":Landroid/content/IntentFilter;
    :sswitch_68
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@1397
    move-object/from16 v0, p2

    #@1399
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@139c
    .line 1732
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@139f
    move-result v4

    #@13a0
    if-eqz v4, :cond_99

    #@13a2
    .line 1733
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@13a4
    move-object/from16 v0, p2

    #@13a6
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@13a9
    move-result-object v15

    #@13aa
    check-cast v15, Landroid/content/ComponentName;

    #@13ac
    .line 1738
    :goto_99
    move-object/from16 v0, p0

    #@13ae
    invoke-virtual {v0, v15}, Landroid/app/admin/IDevicePolicyManager$Stub;->clearCrossProfileIntentFilters(Landroid/content/ComponentName;)V

    #@13b1
    .line 1739
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@13b4
    .line 1740
    const/4 v4, 0x1

    #@13b5
    return v4

    #@13b6
    .line 1736
    :cond_99
    const/4 v15, 0x0

    #@13b7
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_99

    #@13b8
    .line 1744
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_69
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@13bb
    move-object/from16 v0, p2

    #@13bd
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@13c0
    .line 1746
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@13c3
    move-result v4

    #@13c4
    if-eqz v4, :cond_9a

    #@13c6
    .line 1747
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@13c8
    move-object/from16 v0, p2

    #@13ca
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@13cd
    move-result-object v15

    #@13ce
    check-cast v15, Landroid/content/ComponentName;

    #@13d0
    .line 1753
    :goto_9a
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@13d3
    move-result-object v4

    #@13d4
    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@13d7
    move-result-object v72

    #@13d8
    .line 1754
    .local v72, "cl":Ljava/lang/ClassLoader;
    move-object/from16 v0, p2

    #@13da
    move-object/from16 v1, v72

    #@13dc
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    #@13df
    move-result-object v47

    #@13e0
    .line 1755
    .local v47, "_arg1":Ljava/util/List;
    move-object/from16 v0, p0

    #@13e2
    move-object/from16 v1, v47

    #@13e4
    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPermittedAccessibilityServices(Landroid/content/ComponentName;Ljava/util/List;)Z

    #@13e7
    move-result v70

    #@13e8
    .line 1756
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@13eb
    .line 1757
    if-eqz v70, :cond_9b

    #@13ed
    const/4 v4, 0x1

    #@13ee
    :goto_9b
    move-object/from16 v0, p3

    #@13f0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@13f3
    .line 1758
    const/4 v4, 0x1

    #@13f4
    return v4

    #@13f5
    .line 1750
    .end local v47    # "_arg1":Ljava/util/List;
    .end local v70    # "_result":Z
    .end local v72    # "cl":Ljava/lang/ClassLoader;
    :cond_9a
    const/4 v15, 0x0

    #@13f6
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_9a

    #@13f7
    .line 1757
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v47    # "_arg1":Ljava/util/List;
    .restart local v70    # "_result":Z
    .restart local v72    # "cl":Ljava/lang/ClassLoader;
    :cond_9b
    const/4 v4, 0x0

    #@13f8
    goto :goto_9b

    #@13f9
    .line 1762
    .end local v47    # "_arg1":Ljava/util/List;
    .end local v70    # "_result":Z
    .end local v72    # "cl":Ljava/lang/ClassLoader;
    :sswitch_6a
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@13fc
    move-object/from16 v0, p2

    #@13fe
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1401
    .line 1764
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1404
    move-result v4

    #@1405
    if-eqz v4, :cond_9c

    #@1407
    .line 1765
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1409
    move-object/from16 v0, p2

    #@140b
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@140e
    move-result-object v15

    #@140f
    check-cast v15, Landroid/content/ComponentName;

    #@1411
    .line 1770
    :goto_9c
    move-object/from16 v0, p0

    #@1413
    invoke-virtual {v0, v15}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPermittedAccessibilityServices(Landroid/content/ComponentName;)Ljava/util/List;

    #@1416
    move-result-object v66

    #@1417
    .line 1771
    .local v66, "_result":Ljava/util/List;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@141a
    .line 1772
    move-object/from16 v0, p3

    #@141c
    move-object/from16 v1, v66

    #@141e
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    #@1421
    .line 1773
    const/4 v4, 0x1

    #@1422
    return v4

    #@1423
    .line 1768
    .end local v66    # "_result":Ljava/util/List;
    :cond_9c
    const/4 v15, 0x0

    #@1424
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_9c

    #@1425
    .line 1777
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_6b
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@1428
    move-object/from16 v0, p2

    #@142a
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@142d
    .line 1779
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1430
    move-result v5

    #@1431
    .line 1780
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@1433
    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPermittedAccessibilityServicesForUser(I)Ljava/util/List;

    #@1436
    move-result-object v66

    #@1437
    .line 1781
    .restart local v66    # "_result":Ljava/util/List;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@143a
    .line 1782
    move-object/from16 v0, p3

    #@143c
    move-object/from16 v1, v66

    #@143e
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    #@1441
    .line 1783
    const/4 v4, 0x1

    #@1442
    return v4

    #@1443
    .line 1787
    .end local v5    # "_arg0":I
    .end local v66    # "_result":Ljava/util/List;
    :sswitch_6c
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@1446
    move-object/from16 v0, p2

    #@1448
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@144b
    .line 1789
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@144e
    move-result v4

    #@144f
    if-eqz v4, :cond_9d

    #@1451
    .line 1790
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1453
    move-object/from16 v0, p2

    #@1455
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1458
    move-result-object v15

    #@1459
    check-cast v15, Landroid/content/ComponentName;

    #@145b
    .line 1796
    :goto_9d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@145e
    move-result-object v23

    #@145f
    .line 1798
    .restart local v23    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1462
    move-result v7

    #@1463
    .line 1799
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    #@1465
    move-object/from16 v1, v23

    #@1467
    invoke-virtual {v0, v15, v1, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->isAccessibilityServicePermittedByAdmin(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    #@146a
    move-result v70

    #@146b
    .line 1800
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@146e
    .line 1801
    if-eqz v70, :cond_9e

    #@1470
    const/4 v4, 0x1

    #@1471
    :goto_9e
    move-object/from16 v0, p3

    #@1473
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@1476
    .line 1802
    const/4 v4, 0x1

    #@1477
    return v4

    #@1478
    .line 1793
    .end local v7    # "_arg2":I
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v70    # "_result":Z
    :cond_9d
    const/4 v15, 0x0

    #@1479
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_9d

    #@147a
    .line 1801
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v7    # "_arg2":I
    .restart local v23    # "_arg1":Ljava/lang/String;
    .restart local v70    # "_result":Z
    :cond_9e
    const/4 v4, 0x0

    #@147b
    goto :goto_9e

    #@147c
    .line 1806
    .end local v7    # "_arg2":I
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v70    # "_result":Z
    :sswitch_6d
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@147f
    move-object/from16 v0, p2

    #@1481
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1484
    .line 1808
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1487
    move-result v4

    #@1488
    if-eqz v4, :cond_9f

    #@148a
    .line 1809
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@148c
    move-object/from16 v0, p2

    #@148e
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1491
    move-result-object v15

    #@1492
    check-cast v15, Landroid/content/ComponentName;

    #@1494
    .line 1815
    :goto_9f
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@1497
    move-result-object v4

    #@1498
    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@149b
    move-result-object v72

    #@149c
    .line 1816
    .restart local v72    # "cl":Ljava/lang/ClassLoader;
    move-object/from16 v0, p2

    #@149e
    move-object/from16 v1, v72

    #@14a0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    #@14a3
    move-result-object v47

    #@14a4
    .line 1817
    .restart local v47    # "_arg1":Ljava/util/List;
    move-object/from16 v0, p0

    #@14a6
    move-object/from16 v1, v47

    #@14a8
    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPermittedInputMethods(Landroid/content/ComponentName;Ljava/util/List;)Z

    #@14ab
    move-result v70

    #@14ac
    .line 1818
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@14af
    .line 1819
    if-eqz v70, :cond_a0

    #@14b1
    const/4 v4, 0x1

    #@14b2
    :goto_a0
    move-object/from16 v0, p3

    #@14b4
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@14b7
    .line 1820
    const/4 v4, 0x1

    #@14b8
    return v4

    #@14b9
    .line 1812
    .end local v47    # "_arg1":Ljava/util/List;
    .end local v70    # "_result":Z
    .end local v72    # "cl":Ljava/lang/ClassLoader;
    :cond_9f
    const/4 v15, 0x0

    #@14ba
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_9f

    #@14bb
    .line 1819
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v47    # "_arg1":Ljava/util/List;
    .restart local v70    # "_result":Z
    .restart local v72    # "cl":Ljava/lang/ClassLoader;
    :cond_a0
    const/4 v4, 0x0

    #@14bc
    goto :goto_a0

    #@14bd
    .line 1824
    .end local v47    # "_arg1":Ljava/util/List;
    .end local v70    # "_result":Z
    .end local v72    # "cl":Ljava/lang/ClassLoader;
    :sswitch_6e
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@14c0
    move-object/from16 v0, p2

    #@14c2
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@14c5
    .line 1826
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@14c8
    move-result v4

    #@14c9
    if-eqz v4, :cond_a1

    #@14cb
    .line 1827
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@14cd
    move-object/from16 v0, p2

    #@14cf
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@14d2
    move-result-object v15

    #@14d3
    check-cast v15, Landroid/content/ComponentName;

    #@14d5
    .line 1832
    :goto_a1
    move-object/from16 v0, p0

    #@14d7
    invoke-virtual {v0, v15}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPermittedInputMethods(Landroid/content/ComponentName;)Ljava/util/List;

    #@14da
    move-result-object v66

    #@14db
    .line 1833
    .restart local v66    # "_result":Ljava/util/List;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@14de
    .line 1834
    move-object/from16 v0, p3

    #@14e0
    move-object/from16 v1, v66

    #@14e2
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    #@14e5
    .line 1835
    const/4 v4, 0x1

    #@14e6
    return v4

    #@14e7
    .line 1830
    .end local v66    # "_result":Ljava/util/List;
    :cond_a1
    const/4 v15, 0x0

    #@14e8
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_a1

    #@14e9
    .line 1839
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_6f
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@14ec
    move-object/from16 v0, p2

    #@14ee
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@14f1
    .line 1840
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPermittedInputMethodsForCurrentUser()Ljava/util/List;

    #@14f4
    move-result-object v66

    #@14f5
    .line 1841
    .restart local v66    # "_result":Ljava/util/List;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@14f8
    .line 1842
    move-object/from16 v0, p3

    #@14fa
    move-object/from16 v1, v66

    #@14fc
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    #@14ff
    .line 1843
    const/4 v4, 0x1

    #@1500
    return v4

    #@1501
    .line 1847
    .end local v66    # "_result":Ljava/util/List;
    :sswitch_70
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@1504
    move-object/from16 v0, p2

    #@1506
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1509
    .line 1849
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@150c
    move-result v4

    #@150d
    if-eqz v4, :cond_a2

    #@150f
    .line 1850
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1511
    move-object/from16 v0, p2

    #@1513
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1516
    move-result-object v15

    #@1517
    check-cast v15, Landroid/content/ComponentName;

    #@1519
    .line 1856
    :goto_a2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@151c
    move-result-object v23

    #@151d
    .line 1858
    .restart local v23    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1520
    move-result v7

    #@1521
    .line 1859
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    #@1523
    move-object/from16 v1, v23

    #@1525
    invoke-virtual {v0, v15, v1, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->isInputMethodPermittedByAdmin(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    #@1528
    move-result v70

    #@1529
    .line 1860
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@152c
    .line 1861
    if-eqz v70, :cond_a3

    #@152e
    const/4 v4, 0x1

    #@152f
    :goto_a3
    move-object/from16 v0, p3

    #@1531
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@1534
    .line 1862
    const/4 v4, 0x1

    #@1535
    return v4

    #@1536
    .line 1853
    .end local v7    # "_arg2":I
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v70    # "_result":Z
    :cond_a2
    const/4 v15, 0x0

    #@1537
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_a2

    #@1538
    .line 1861
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v7    # "_arg2":I
    .restart local v23    # "_arg1":Ljava/lang/String;
    .restart local v70    # "_result":Z
    :cond_a3
    const/4 v4, 0x0

    #@1539
    goto :goto_a3

    #@153a
    .line 1866
    .end local v7    # "_arg2":I
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v70    # "_result":Z
    :sswitch_71
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@153d
    move-object/from16 v0, p2

    #@153f
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1542
    .line 1868
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1545
    move-result v4

    #@1546
    if-eqz v4, :cond_a4

    #@1548
    .line 1869
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@154a
    move-object/from16 v0, p2

    #@154c
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@154f
    move-result-object v15

    #@1550
    check-cast v15, Landroid/content/ComponentName;

    #@1552
    .line 1875
    :goto_a4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1555
    move-result-object v23

    #@1556
    .line 1877
    .restart local v23    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1559
    move-result v4

    #@155a
    if-eqz v4, :cond_a5

    #@155c
    const/16 v30, 0x1

    #@155e
    .line 1878
    .restart local v30    # "_arg2":Z
    :goto_a5
    move-object/from16 v0, p0

    #@1560
    move-object/from16 v1, v23

    #@1562
    move/from16 v2, v30

    #@1564
    invoke-virtual {v0, v15, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setApplicationHidden(Landroid/content/ComponentName;Ljava/lang/String;Z)Z

    #@1567
    move-result v70

    #@1568
    .line 1879
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@156b
    .line 1880
    if-eqz v70, :cond_a6

    #@156d
    const/4 v4, 0x1

    #@156e
    :goto_a6
    move-object/from16 v0, p3

    #@1570
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@1573
    .line 1881
    const/4 v4, 0x1

    #@1574
    return v4

    #@1575
    .line 1872
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v30    # "_arg2":Z
    .end local v70    # "_result":Z
    :cond_a4
    const/4 v15, 0x0

    #@1576
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_a4

    #@1577
    .line 1877
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v23    # "_arg1":Ljava/lang/String;
    :cond_a5
    const/16 v30, 0x0

    #@1579
    goto :goto_a5

    #@157a
    .line 1880
    .restart local v30    # "_arg2":Z
    .restart local v70    # "_result":Z
    :cond_a6
    const/4 v4, 0x0

    #@157b
    goto :goto_a6

    #@157c
    .line 1885
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v30    # "_arg2":Z
    .end local v70    # "_result":Z
    :sswitch_72
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@157f
    move-object/from16 v0, p2

    #@1581
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1584
    .line 1887
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1587
    move-result v4

    #@1588
    if-eqz v4, :cond_a7

    #@158a
    .line 1888
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@158c
    move-object/from16 v0, p2

    #@158e
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1591
    move-result-object v15

    #@1592
    check-cast v15, Landroid/content/ComponentName;

    #@1594
    .line 1894
    :goto_a7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1597
    move-result-object v23

    #@1598
    .line 1895
    .restart local v23    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@159a
    move-object/from16 v1, v23

    #@159c
    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->isApplicationHidden(Landroid/content/ComponentName;Ljava/lang/String;)Z

    #@159f
    move-result v70

    #@15a0
    .line 1896
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@15a3
    .line 1897
    if-eqz v70, :cond_a8

    #@15a5
    const/4 v4, 0x1

    #@15a6
    :goto_a8
    move-object/from16 v0, p3

    #@15a8
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@15ab
    .line 1898
    const/4 v4, 0x1

    #@15ac
    return v4

    #@15ad
    .line 1891
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v70    # "_result":Z
    :cond_a7
    const/4 v15, 0x0

    #@15ae
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_a7

    #@15af
    .line 1897
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v23    # "_arg1":Ljava/lang/String;
    .restart local v70    # "_result":Z
    :cond_a8
    const/4 v4, 0x0

    #@15b0
    goto :goto_a8

    #@15b1
    .line 1902
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v70    # "_result":Z
    :sswitch_73
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@15b4
    move-object/from16 v0, p2

    #@15b6
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@15b9
    .line 1904
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@15bc
    move-result v4

    #@15bd
    if-eqz v4, :cond_a9

    #@15bf
    .line 1905
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@15c1
    move-object/from16 v0, p2

    #@15c3
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@15c6
    move-result-object v15

    #@15c7
    check-cast v15, Landroid/content/ComponentName;

    #@15c9
    .line 1911
    :goto_a9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@15cc
    move-result-object v23

    #@15cd
    .line 1913
    .restart local v23    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@15d0
    move-result v4

    #@15d1
    if-eqz v4, :cond_aa

    #@15d3
    .line 1914
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@15d5
    move-object/from16 v0, p2

    #@15d7
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@15da
    move-result-object v24

    #@15db
    check-cast v24, Landroid/content/ComponentName;

    #@15dd
    .line 1920
    :goto_aa
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@15e0
    move-result v4

    #@15e1
    if-eqz v4, :cond_ab

    #@15e3
    .line 1921
    sget-object v4, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@15e5
    move-object/from16 v0, p2

    #@15e7
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@15ea
    move-result-object v25

    #@15eb
    check-cast v25, Landroid/os/PersistableBundle;

    #@15ed
    .line 1927
    :goto_ab
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@15f0
    move-result v9

    #@15f1
    .restart local v9    # "_arg4":I
    move-object/from16 v21, p0

    #@15f3
    move-object/from16 v22, v15

    #@15f5
    move/from16 v26, v9

    #@15f7
    .line 1928
    invoke-virtual/range {v21 .. v26}, Landroid/app/admin/IDevicePolicyManager$Stub;->createAndManageUser(Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/PersistableBundle;I)Landroid/os/UserHandle;

    #@15fa
    move-result-object v63

    #@15fb
    .line 1929
    .local v63, "_result":Landroid/os/UserHandle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@15fe
    .line 1930
    if-eqz v63, :cond_ac

    #@1600
    .line 1931
    const/4 v4, 0x1

    #@1601
    move-object/from16 v0, p3

    #@1603
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@1606
    .line 1932
    const/4 v4, 0x1

    #@1607
    move-object/from16 v0, v63

    #@1609
    move-object/from16 v1, p3

    #@160b
    invoke-virtual {v0, v1, v4}, Landroid/os/UserHandle;->writeToParcel(Landroid/os/Parcel;I)V

    #@160e
    .line 1937
    :goto_ac
    const/4 v4, 0x1

    #@160f
    return v4

    #@1610
    .line 1908
    .end local v9    # "_arg4":I
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v63    # "_result":Landroid/os/UserHandle;
    :cond_a9
    const/4 v15, 0x0

    #@1611
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_a9

    #@1612
    .line 1917
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v23    # "_arg1":Ljava/lang/String;
    :cond_aa
    const/16 v24, 0x0

    #@1614
    .restart local v24    # "_arg2":Landroid/content/ComponentName;
    goto :goto_aa

    #@1615
    .line 1924
    .end local v24    # "_arg2":Landroid/content/ComponentName;
    :cond_ab
    const/16 v25, 0x0

    #@1617
    .local v25, "_arg3":Landroid/os/PersistableBundle;
    goto :goto_ab

    #@1618
    .line 1935
    .end local v25    # "_arg3":Landroid/os/PersistableBundle;
    .restart local v9    # "_arg4":I
    .restart local v63    # "_result":Landroid/os/UserHandle;
    :cond_ac
    const/4 v4, 0x0

    #@1619
    move-object/from16 v0, p3

    #@161b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@161e
    goto :goto_ac

    #@161f
    .line 1941
    .end local v9    # "_arg4":I
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v63    # "_result":Landroid/os/UserHandle;
    :sswitch_74
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@1622
    move-object/from16 v0, p2

    #@1624
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1627
    .line 1943
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@162a
    move-result v4

    #@162b
    if-eqz v4, :cond_ad

    #@162d
    .line 1944
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@162f
    move-object/from16 v0, p2

    #@1631
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1634
    move-result-object v15

    #@1635
    check-cast v15, Landroid/content/ComponentName;

    #@1637
    .line 1950
    :goto_ad
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@163a
    move-result v4

    #@163b
    if-eqz v4, :cond_ae

    #@163d
    .line 1951
    sget-object v4, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@163f
    move-object/from16 v0, p2

    #@1641
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1644
    move-result-object v45

    #@1645
    check-cast v45, Landroid/os/UserHandle;

    #@1647
    .line 1956
    :goto_ae
    move-object/from16 v0, p0

    #@1649
    move-object/from16 v1, v45

    #@164b
    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->removeUser(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z

    #@164e
    move-result v70

    #@164f
    .line 1957
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1652
    .line 1958
    if-eqz v70, :cond_af

    #@1654
    const/4 v4, 0x1

    #@1655
    :goto_af
    move-object/from16 v0, p3

    #@1657
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@165a
    .line 1959
    const/4 v4, 0x1

    #@165b
    return v4

    #@165c
    .line 1947
    .end local v70    # "_result":Z
    :cond_ad
    const/4 v15, 0x0

    #@165d
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_ad

    #@165e
    .line 1954
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :cond_ae
    const/16 v45, 0x0

    #@1660
    .local v45, "_arg1":Landroid/os/UserHandle;
    goto :goto_ae

    #@1661
    .line 1958
    .end local v45    # "_arg1":Landroid/os/UserHandle;
    .restart local v70    # "_result":Z
    :cond_af
    const/4 v4, 0x0

    #@1662
    goto :goto_af

    #@1663
    .line 1963
    .end local v70    # "_result":Z
    :sswitch_75
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@1666
    move-object/from16 v0, p2

    #@1668
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@166b
    .line 1965
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@166e
    move-result v4

    #@166f
    if-eqz v4, :cond_b0

    #@1671
    .line 1966
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1673
    move-object/from16 v0, p2

    #@1675
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1678
    move-result-object v15

    #@1679
    check-cast v15, Landroid/content/ComponentName;

    #@167b
    .line 1972
    :goto_b0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@167e
    move-result v4

    #@167f
    if-eqz v4, :cond_b1

    #@1681
    .line 1973
    sget-object v4, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1683
    move-object/from16 v0, p2

    #@1685
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1688
    move-result-object v45

    #@1689
    check-cast v45, Landroid/os/UserHandle;

    #@168b
    .line 1978
    :goto_b1
    move-object/from16 v0, p0

    #@168d
    move-object/from16 v1, v45

    #@168f
    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->switchUser(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z

    #@1692
    move-result v70

    #@1693
    .line 1979
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1696
    .line 1980
    if-eqz v70, :cond_b2

    #@1698
    const/4 v4, 0x1

    #@1699
    :goto_b2
    move-object/from16 v0, p3

    #@169b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@169e
    .line 1981
    const/4 v4, 0x1

    #@169f
    return v4

    #@16a0
    .line 1969
    .end local v70    # "_result":Z
    :cond_b0
    const/4 v15, 0x0

    #@16a1
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_b0

    #@16a2
    .line 1976
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :cond_b1
    const/16 v45, 0x0

    #@16a4
    .restart local v45    # "_arg1":Landroid/os/UserHandle;
    goto :goto_b1

    #@16a5
    .line 1980
    .end local v45    # "_arg1":Landroid/os/UserHandle;
    .restart local v70    # "_result":Z
    :cond_b2
    const/4 v4, 0x0

    #@16a6
    goto :goto_b2

    #@16a7
    .line 1985
    .end local v70    # "_result":Z
    :sswitch_76
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@16aa
    move-object/from16 v0, p2

    #@16ac
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16af
    .line 1987
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@16b2
    move-result v4

    #@16b3
    if-eqz v4, :cond_b3

    #@16b5
    .line 1988
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@16b7
    move-object/from16 v0, p2

    #@16b9
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@16bc
    move-result-object v15

    #@16bd
    check-cast v15, Landroid/content/ComponentName;

    #@16bf
    .line 1994
    :goto_b3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@16c2
    move-result-object v23

    #@16c3
    .line 1995
    .restart local v23    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@16c5
    move-object/from16 v1, v23

    #@16c7
    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->enableSystemApp(Landroid/content/ComponentName;Ljava/lang/String;)V

    #@16ca
    .line 1996
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@16cd
    .line 1997
    const/4 v4, 0x1

    #@16ce
    return v4

    #@16cf
    .line 1991
    .end local v23    # "_arg1":Ljava/lang/String;
    :cond_b3
    const/4 v15, 0x0

    #@16d0
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_b3

    #@16d1
    .line 2001
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_77
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@16d4
    move-object/from16 v0, p2

    #@16d6
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16d9
    .line 2003
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@16dc
    move-result v4

    #@16dd
    if-eqz v4, :cond_b4

    #@16df
    .line 2004
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@16e1
    move-object/from16 v0, p2

    #@16e3
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@16e6
    move-result-object v15

    #@16e7
    check-cast v15, Landroid/content/ComponentName;

    #@16e9
    .line 2010
    :goto_b4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@16ec
    move-result v4

    #@16ed
    if-eqz v4, :cond_b5

    #@16ef
    .line 2011
    sget-object v4, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@16f1
    move-object/from16 v0, p2

    #@16f3
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@16f6
    move-result-object v39

    #@16f7
    check-cast v39, Landroid/content/Intent;

    #@16f9
    .line 2016
    :goto_b5
    move-object/from16 v0, p0

    #@16fb
    move-object/from16 v1, v39

    #@16fd
    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->enableSystemAppWithIntent(Landroid/content/ComponentName;Landroid/content/Intent;)I

    #@1700
    move-result v56

    #@1701
    .line 2017
    .restart local v56    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1704
    .line 2018
    move-object/from16 v0, p3

    #@1706
    move/from16 v1, v56

    #@1708
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@170b
    .line 2019
    const/4 v4, 0x1

    #@170c
    return v4

    #@170d
    .line 2007
    .end local v56    # "_result":I
    :cond_b4
    const/4 v15, 0x0

    #@170e
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_b4

    #@170f
    .line 2014
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :cond_b5
    const/16 v39, 0x0

    #@1711
    .local v39, "_arg1":Landroid/content/Intent;
    goto :goto_b5

    #@1712
    .line 2023
    .end local v39    # "_arg1":Landroid/content/Intent;
    :sswitch_78
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@1715
    move-object/from16 v0, p2

    #@1717
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@171a
    .line 2025
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@171d
    move-result v4

    #@171e
    if-eqz v4, :cond_b6

    #@1720
    .line 2026
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1722
    move-object/from16 v0, p2

    #@1724
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1727
    move-result-object v15

    #@1728
    check-cast v15, Landroid/content/ComponentName;

    #@172a
    .line 2032
    :goto_b6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@172d
    move-result-object v23

    #@172e
    .line 2034
    .restart local v23    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1731
    move-result v4

    #@1732
    if-eqz v4, :cond_b7

    #@1734
    const/16 v30, 0x1

    #@1736
    .line 2035
    .restart local v30    # "_arg2":Z
    :goto_b7
    move-object/from16 v0, p0

    #@1738
    move-object/from16 v1, v23

    #@173a
    move/from16 v2, v30

    #@173c
    invoke-virtual {v0, v15, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAccountManagementDisabled(Landroid/content/ComponentName;Ljava/lang/String;Z)V

    #@173f
    .line 2036
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1742
    .line 2037
    const/4 v4, 0x1

    #@1743
    return v4

    #@1744
    .line 2029
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v30    # "_arg2":Z
    :cond_b6
    const/4 v15, 0x0

    #@1745
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_b6

    #@1746
    .line 2034
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v23    # "_arg1":Ljava/lang/String;
    :cond_b7
    const/16 v30, 0x0

    #@1748
    goto :goto_b7

    #@1749
    .line 2041
    .end local v23    # "_arg1":Ljava/lang/String;
    :sswitch_79
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@174c
    move-object/from16 v0, p2

    #@174e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1751
    .line 2042
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAccountTypesWithManagementDisabled()[Ljava/lang/String;

    #@1754
    move-result-object v71

    #@1755
    .line 2043
    .restart local v71    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1758
    .line 2044
    move-object/from16 v0, p3

    #@175a
    move-object/from16 v1, v71

    #@175c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@175f
    .line 2045
    const/4 v4, 0x1

    #@1760
    return v4

    #@1761
    .line 2049
    .end local v71    # "_result":[Ljava/lang/String;
    :sswitch_7a
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@1764
    move-object/from16 v0, p2

    #@1766
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1769
    .line 2051
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@176c
    move-result v5

    #@176d
    .line 2052
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@176f
    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAccountTypesWithManagementDisabledAsUser(I)[Ljava/lang/String;

    #@1772
    move-result-object v71

    #@1773
    .line 2053
    .restart local v71    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1776
    .line 2054
    move-object/from16 v0, p3

    #@1778
    move-object/from16 v1, v71

    #@177a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@177d
    .line 2055
    const/4 v4, 0x1

    #@177e
    return v4

    #@177f
    .line 2059
    .end local v5    # "_arg0":I
    .end local v71    # "_result":[Ljava/lang/String;
    :sswitch_7b
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@1782
    move-object/from16 v0, p2

    #@1784
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1787
    .line 2061
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@178a
    move-result v4

    #@178b
    if-eqz v4, :cond_b8

    #@178d
    .line 2062
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@178f
    move-object/from16 v0, p2

    #@1791
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1794
    move-result-object v15

    #@1795
    check-cast v15, Landroid/content/ComponentName;

    #@1797
    .line 2068
    :goto_b8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@179a
    move-result-object v50

    #@179b
    .line 2069
    .restart local v50    # "_arg1":[Ljava/lang/String;
    move-object/from16 v0, p0

    #@179d
    move-object/from16 v1, v50

    #@179f
    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setLockTaskPackages(Landroid/content/ComponentName;[Ljava/lang/String;)V

    #@17a2
    .line 2070
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@17a5
    .line 2071
    const/4 v4, 0x1

    #@17a6
    return v4

    #@17a7
    .line 2065
    .end local v50    # "_arg1":[Ljava/lang/String;
    :cond_b8
    const/4 v15, 0x0

    #@17a8
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_b8

    #@17a9
    .line 2075
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_7c
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@17ac
    move-object/from16 v0, p2

    #@17ae
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@17b1
    .line 2077
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@17b4
    move-result v4

    #@17b5
    if-eqz v4, :cond_b9

    #@17b7
    .line 2078
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@17b9
    move-object/from16 v0, p2

    #@17bb
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@17be
    move-result-object v15

    #@17bf
    check-cast v15, Landroid/content/ComponentName;

    #@17c1
    .line 2083
    :goto_b9
    move-object/from16 v0, p0

    #@17c3
    invoke-virtual {v0, v15}, Landroid/app/admin/IDevicePolicyManager$Stub;->getLockTaskPackages(Landroid/content/ComponentName;)[Ljava/lang/String;

    #@17c6
    move-result-object v71

    #@17c7
    .line 2084
    .restart local v71    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@17ca
    .line 2085
    move-object/from16 v0, p3

    #@17cc
    move-object/from16 v1, v71

    #@17ce
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@17d1
    .line 2086
    const/4 v4, 0x1

    #@17d2
    return v4

    #@17d3
    .line 2081
    .end local v71    # "_result":[Ljava/lang/String;
    :cond_b9
    const/4 v15, 0x0

    #@17d4
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_b9

    #@17d5
    .line 2090
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_7d
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@17d8
    move-object/from16 v0, p2

    #@17da
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@17dd
    .line 2092
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@17e0
    move-result-object v27

    #@17e1
    .line 2093
    .restart local v27    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@17e3
    move-object/from16 v1, v27

    #@17e5
    invoke-virtual {v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->isLockTaskPermitted(Ljava/lang/String;)Z

    #@17e8
    move-result v70

    #@17e9
    .line 2094
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@17ec
    .line 2095
    if-eqz v70, :cond_ba

    #@17ee
    const/4 v4, 0x1

    #@17ef
    :goto_ba
    move-object/from16 v0, p3

    #@17f1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@17f4
    .line 2096
    const/4 v4, 0x1

    #@17f5
    return v4

    #@17f6
    .line 2095
    :cond_ba
    const/4 v4, 0x0

    #@17f7
    goto :goto_ba

    #@17f8
    .line 2100
    .end local v27    # "_arg0":Ljava/lang/String;
    .end local v70    # "_result":Z
    :sswitch_7e
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@17fb
    move-object/from16 v0, p2

    #@17fd
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1800
    .line 2102
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1803
    move-result v4

    #@1804
    if-eqz v4, :cond_bb

    #@1806
    .line 2103
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1808
    move-object/from16 v0, p2

    #@180a
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@180d
    move-result-object v15

    #@180e
    check-cast v15, Landroid/content/ComponentName;

    #@1810
    .line 2109
    :goto_bb
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1813
    move-result-object v23

    #@1814
    .line 2111
    .restart local v23    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1817
    move-result-object v53

    #@1818
    .line 2112
    .restart local v53    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    #@181a
    move-object/from16 v1, v23

    #@181c
    move-object/from16 v2, v53

    #@181e
    invoke-virtual {v0, v15, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setGlobalSetting(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V

    #@1821
    .line 2113
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1824
    .line 2114
    const/4 v4, 0x1

    #@1825
    return v4

    #@1826
    .line 2106
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v53    # "_arg2":Ljava/lang/String;
    :cond_bb
    const/4 v15, 0x0

    #@1827
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_bb

    #@1828
    .line 2118
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_7f
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@182b
    move-object/from16 v0, p2

    #@182d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1830
    .line 2120
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1833
    move-result v4

    #@1834
    if-eqz v4, :cond_bc

    #@1836
    .line 2121
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1838
    move-object/from16 v0, p2

    #@183a
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@183d
    move-result-object v15

    #@183e
    check-cast v15, Landroid/content/ComponentName;

    #@1840
    .line 2127
    :goto_bc
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1843
    move-result-object v23

    #@1844
    .line 2129
    .restart local v23    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1847
    move-result-object v53

    #@1848
    .line 2130
    .restart local v53    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    #@184a
    move-object/from16 v1, v23

    #@184c
    move-object/from16 v2, v53

    #@184e
    invoke-virtual {v0, v15, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setSecureSetting(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V

    #@1851
    .line 2131
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1854
    .line 2132
    const/4 v4, 0x1

    #@1855
    return v4

    #@1856
    .line 2124
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v53    # "_arg2":Ljava/lang/String;
    :cond_bc
    const/4 v15, 0x0

    #@1857
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_bc

    #@1858
    .line 2136
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_80
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@185b
    move-object/from16 v0, p2

    #@185d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1860
    .line 2138
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1863
    move-result v4

    #@1864
    if-eqz v4, :cond_bd

    #@1866
    .line 2139
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1868
    move-object/from16 v0, p2

    #@186a
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@186d
    move-result-object v15

    #@186e
    check-cast v15, Landroid/content/ComponentName;

    #@1870
    .line 2145
    :goto_bd
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1873
    move-result v4

    #@1874
    if-eqz v4, :cond_be

    #@1876
    const/16 v49, 0x1

    #@1878
    .line 2146
    .local v49, "_arg1":Z
    :goto_be
    move-object/from16 v0, p0

    #@187a
    move/from16 v1, v49

    #@187c
    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setMasterVolumeMuted(Landroid/content/ComponentName;Z)V

    #@187f
    .line 2147
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1882
    .line 2148
    const/4 v4, 0x1

    #@1883
    return v4

    #@1884
    .line 2142
    .end local v49    # "_arg1":Z
    :cond_bd
    const/4 v15, 0x0

    #@1885
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_bd

    #@1886
    .line 2145
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :cond_be
    const/16 v49, 0x0

    #@1888
    goto :goto_be

    #@1889
    .line 2152
    :sswitch_81
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@188c
    move-object/from16 v0, p2

    #@188e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1891
    .line 2154
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1894
    move-result v4

    #@1895
    if-eqz v4, :cond_bf

    #@1897
    .line 2155
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1899
    move-object/from16 v0, p2

    #@189b
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@189e
    move-result-object v15

    #@189f
    check-cast v15, Landroid/content/ComponentName;

    #@18a1
    .line 2160
    :goto_bf
    move-object/from16 v0, p0

    #@18a3
    invoke-virtual {v0, v15}, Landroid/app/admin/IDevicePolicyManager$Stub;->isMasterVolumeMuted(Landroid/content/ComponentName;)Z

    #@18a6
    move-result v70

    #@18a7
    .line 2161
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@18aa
    .line 2162
    if-eqz v70, :cond_c0

    #@18ac
    const/4 v4, 0x1

    #@18ad
    :goto_c0
    move-object/from16 v0, p3

    #@18af
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@18b2
    .line 2163
    const/4 v4, 0x1

    #@18b3
    return v4

    #@18b4
    .line 2158
    .end local v70    # "_result":Z
    :cond_bf
    const/4 v15, 0x0

    #@18b5
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_bf

    #@18b6
    .line 2162
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v70    # "_result":Z
    :cond_c0
    const/4 v4, 0x0

    #@18b7
    goto :goto_c0

    #@18b8
    .line 2167
    .end local v70    # "_result":Z
    :sswitch_82
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@18bb
    move-object/from16 v0, p2

    #@18bd
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@18c0
    .line 2169
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@18c3
    move-result v4

    #@18c4
    if-eqz v4, :cond_c1

    #@18c6
    const/16 v36, 0x1

    #@18c8
    .line 2171
    .local v36, "_arg0":Z
    :goto_c1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@18cb
    move-result-object v23

    #@18cc
    .line 2173
    .restart local v23    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@18cf
    move-result v7

    #@18d0
    .line 2174
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    #@18d2
    move/from16 v1, v36

    #@18d4
    move-object/from16 v2, v23

    #@18d6
    invoke-virtual {v0, v1, v2, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->notifyLockTaskModeChanged(ZLjava/lang/String;I)V

    #@18d9
    .line 2175
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@18dc
    .line 2176
    const/4 v4, 0x1

    #@18dd
    return v4

    #@18de
    .line 2169
    .end local v7    # "_arg2":I
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v36    # "_arg0":Z
    :cond_c1
    const/16 v36, 0x0

    #@18e0
    .restart local v36    # "_arg0":Z
    goto :goto_c1

    #@18e1
    .line 2180
    .end local v36    # "_arg0":Z
    :sswitch_83
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@18e4
    move-object/from16 v0, p2

    #@18e6
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@18e9
    .line 2182
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@18ec
    move-result v4

    #@18ed
    if-eqz v4, :cond_c2

    #@18ef
    .line 2183
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@18f1
    move-object/from16 v0, p2

    #@18f3
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@18f6
    move-result-object v15

    #@18f7
    check-cast v15, Landroid/content/ComponentName;

    #@18f9
    .line 2189
    :goto_c2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@18fc
    move-result-object v23

    #@18fd
    .line 2191
    .restart local v23    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1900
    move-result v4

    #@1901
    if-eqz v4, :cond_c3

    #@1903
    const/16 v30, 0x1

    #@1905
    .line 2192
    .restart local v30    # "_arg2":Z
    :goto_c3
    move-object/from16 v0, p0

    #@1907
    move-object/from16 v1, v23

    #@1909
    move/from16 v2, v30

    #@190b
    invoke-virtual {v0, v15, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setUninstallBlocked(Landroid/content/ComponentName;Ljava/lang/String;Z)V

    #@190e
    .line 2193
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1911
    .line 2194
    const/4 v4, 0x1

    #@1912
    return v4

    #@1913
    .line 2186
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v30    # "_arg2":Z
    :cond_c2
    const/4 v15, 0x0

    #@1914
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_c2

    #@1915
    .line 2191
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v23    # "_arg1":Ljava/lang/String;
    :cond_c3
    const/16 v30, 0x0

    #@1917
    goto :goto_c3

    #@1918
    .line 2198
    .end local v23    # "_arg1":Ljava/lang/String;
    :sswitch_84
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@191b
    move-object/from16 v0, p2

    #@191d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1920
    .line 2200
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1923
    move-result v4

    #@1924
    if-eqz v4, :cond_c4

    #@1926
    .line 2201
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1928
    move-object/from16 v0, p2

    #@192a
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@192d
    move-result-object v15

    #@192e
    check-cast v15, Landroid/content/ComponentName;

    #@1930
    .line 2207
    :goto_c4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1933
    move-result-object v23

    #@1934
    .line 2208
    .restart local v23    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@1936
    move-object/from16 v1, v23

    #@1938
    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->isUninstallBlocked(Landroid/content/ComponentName;Ljava/lang/String;)Z

    #@193b
    move-result v70

    #@193c
    .line 2209
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@193f
    .line 2210
    if-eqz v70, :cond_c5

    #@1941
    const/4 v4, 0x1

    #@1942
    :goto_c5
    move-object/from16 v0, p3

    #@1944
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@1947
    .line 2211
    const/4 v4, 0x1

    #@1948
    return v4

    #@1949
    .line 2204
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v70    # "_result":Z
    :cond_c4
    const/4 v15, 0x0

    #@194a
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_c4

    #@194b
    .line 2210
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v23    # "_arg1":Ljava/lang/String;
    .restart local v70    # "_result":Z
    :cond_c5
    const/4 v4, 0x0

    #@194c
    goto :goto_c5

    #@194d
    .line 2215
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v70    # "_result":Z
    :sswitch_85
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@1950
    move-object/from16 v0, p2

    #@1952
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1955
    .line 2217
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1958
    move-result v4

    #@1959
    if-eqz v4, :cond_c6

    #@195b
    .line 2218
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@195d
    move-object/from16 v0, p2

    #@195f
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1962
    move-result-object v15

    #@1963
    check-cast v15, Landroid/content/ComponentName;

    #@1965
    .line 2224
    :goto_c6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1968
    move-result v4

    #@1969
    if-eqz v4, :cond_c7

    #@196b
    const/16 v49, 0x1

    #@196d
    .line 2225
    .restart local v49    # "_arg1":Z
    :goto_c7
    move-object/from16 v0, p0

    #@196f
    move/from16 v1, v49

    #@1971
    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setCrossProfileCallerIdDisabled(Landroid/content/ComponentName;Z)V

    #@1974
    .line 2226
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1977
    .line 2227
    const/4 v4, 0x1

    #@1978
    return v4

    #@1979
    .line 2221
    .end local v49    # "_arg1":Z
    :cond_c6
    const/4 v15, 0x0

    #@197a
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_c6

    #@197b
    .line 2224
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :cond_c7
    const/16 v49, 0x0

    #@197d
    goto :goto_c7

    #@197e
    .line 2231
    :sswitch_86
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@1981
    move-object/from16 v0, p2

    #@1983
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1986
    .line 2233
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1989
    move-result v4

    #@198a
    if-eqz v4, :cond_c8

    #@198c
    .line 2234
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@198e
    move-object/from16 v0, p2

    #@1990
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1993
    move-result-object v15

    #@1994
    check-cast v15, Landroid/content/ComponentName;

    #@1996
    .line 2239
    :goto_c8
    move-object/from16 v0, p0

    #@1998
    invoke-virtual {v0, v15}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCrossProfileCallerIdDisabled(Landroid/content/ComponentName;)Z

    #@199b
    move-result v70

    #@199c
    .line 2240
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@199f
    .line 2241
    if-eqz v70, :cond_c9

    #@19a1
    const/4 v4, 0x1

    #@19a2
    :goto_c9
    move-object/from16 v0, p3

    #@19a4
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@19a7
    .line 2242
    const/4 v4, 0x1

    #@19a8
    return v4

    #@19a9
    .line 2237
    .end local v70    # "_result":Z
    :cond_c8
    const/4 v15, 0x0

    #@19aa
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_c8

    #@19ab
    .line 2241
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v70    # "_result":Z
    :cond_c9
    const/4 v4, 0x0

    #@19ac
    goto :goto_c9

    #@19ad
    .line 2246
    .end local v70    # "_result":Z
    :sswitch_87
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@19b0
    move-object/from16 v0, p2

    #@19b2
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@19b5
    .line 2248
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@19b8
    move-result v5

    #@19b9
    .line 2249
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@19bb
    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCrossProfileCallerIdDisabledForUser(I)Z

    #@19be
    move-result v70

    #@19bf
    .line 2250
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@19c2
    .line 2251
    if-eqz v70, :cond_ca

    #@19c4
    const/4 v4, 0x1

    #@19c5
    :goto_ca
    move-object/from16 v0, p3

    #@19c7
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@19ca
    .line 2252
    const/4 v4, 0x1

    #@19cb
    return v4

    #@19cc
    .line 2251
    :cond_ca
    const/4 v4, 0x0

    #@19cd
    goto :goto_ca

    #@19ce
    .line 2256
    .end local v5    # "_arg0":I
    .end local v70    # "_result":Z
    :sswitch_88
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@19d1
    move-object/from16 v0, p2

    #@19d3
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@19d6
    .line 2258
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@19d9
    move-result v4

    #@19da
    if-eqz v4, :cond_cb

    #@19dc
    .line 2259
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@19de
    move-object/from16 v0, p2

    #@19e0
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@19e3
    move-result-object v15

    #@19e4
    check-cast v15, Landroid/content/ComponentName;

    #@19e6
    .line 2265
    :goto_cb
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@19e9
    move-result v4

    #@19ea
    if-eqz v4, :cond_cc

    #@19ec
    const/16 v49, 0x1

    #@19ee
    .line 2266
    .restart local v49    # "_arg1":Z
    :goto_cc
    move-object/from16 v0, p0

    #@19f0
    move/from16 v1, v49

    #@19f2
    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setCrossProfileContactsSearchDisabled(Landroid/content/ComponentName;Z)V

    #@19f5
    .line 2267
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@19f8
    .line 2268
    const/4 v4, 0x1

    #@19f9
    return v4

    #@19fa
    .line 2262
    .end local v49    # "_arg1":Z
    :cond_cb
    const/4 v15, 0x0

    #@19fb
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_cb

    #@19fc
    .line 2265
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :cond_cc
    const/16 v49, 0x0

    #@19fe
    goto :goto_cc

    #@19ff
    .line 2272
    :sswitch_89
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@1a02
    move-object/from16 v0, p2

    #@1a04
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a07
    .line 2274
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1a0a
    move-result v4

    #@1a0b
    if-eqz v4, :cond_cd

    #@1a0d
    .line 2275
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1a0f
    move-object/from16 v0, p2

    #@1a11
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1a14
    move-result-object v15

    #@1a15
    check-cast v15, Landroid/content/ComponentName;

    #@1a17
    .line 2280
    :goto_cd
    move-object/from16 v0, p0

    #@1a19
    invoke-virtual {v0, v15}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCrossProfileContactsSearchDisabled(Landroid/content/ComponentName;)Z

    #@1a1c
    move-result v70

    #@1a1d
    .line 2281
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1a20
    .line 2282
    if-eqz v70, :cond_ce

    #@1a22
    const/4 v4, 0x1

    #@1a23
    :goto_ce
    move-object/from16 v0, p3

    #@1a25
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@1a28
    .line 2283
    const/4 v4, 0x1

    #@1a29
    return v4

    #@1a2a
    .line 2278
    .end local v70    # "_result":Z
    :cond_cd
    const/4 v15, 0x0

    #@1a2b
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_cd

    #@1a2c
    .line 2282
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v70    # "_result":Z
    :cond_ce
    const/4 v4, 0x0

    #@1a2d
    goto :goto_ce

    #@1a2e
    .line 2287
    .end local v70    # "_result":Z
    :sswitch_8a
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@1a31
    move-object/from16 v0, p2

    #@1a33
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a36
    .line 2289
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1a39
    move-result v5

    #@1a3a
    .line 2290
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@1a3c
    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCrossProfileContactsSearchDisabledForUser(I)Z

    #@1a3f
    move-result v70

    #@1a40
    .line 2291
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1a43
    .line 2292
    if-eqz v70, :cond_cf

    #@1a45
    const/4 v4, 0x1

    #@1a46
    :goto_cf
    move-object/from16 v0, p3

    #@1a48
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@1a4b
    .line 2293
    const/4 v4, 0x1

    #@1a4c
    return v4

    #@1a4d
    .line 2292
    :cond_cf
    const/4 v4, 0x0

    #@1a4e
    goto :goto_cf

    #@1a4f
    .line 2297
    .end local v5    # "_arg0":I
    .end local v70    # "_result":Z
    :sswitch_8b
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@1a52
    move-object/from16 v0, p2

    #@1a54
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a57
    .line 2299
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1a5a
    move-result-object v27

    #@1a5b
    .line 2301
    .restart local v27    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@1a5e
    move-result-wide v28

    #@1a5f
    .line 2303
    .restart local v28    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1a62
    move-result v4

    #@1a63
    if-eqz v4, :cond_d0

    #@1a65
    const/16 v30, 0x1

    #@1a67
    .line 2305
    .local v30, "_arg2":Z
    :goto_d0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@1a6a
    move-result-wide v31

    #@1a6b
    .line 2307
    .local v31, "_arg3":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1a6e
    move-result v4

    #@1a6f
    if-eqz v4, :cond_d1

    #@1a71
    .line 2308
    sget-object v4, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1a73
    move-object/from16 v0, p2

    #@1a75
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1a78
    move-result-object v33

    #@1a79
    check-cast v33, Landroid/content/Intent;

    #@1a7b
    :goto_d1
    move-object/from16 v26, p0

    #@1a7d
    .line 2313
    invoke-virtual/range {v26 .. v33}, Landroid/app/admin/IDevicePolicyManager$Stub;->startManagedQuickContact(Ljava/lang/String;JZJLandroid/content/Intent;)V

    #@1a80
    .line 2314
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1a83
    .line 2315
    const/4 v4, 0x1

    #@1a84
    return v4

    #@1a85
    .line 2303
    .end local v30    # "_arg2":Z
    .end local v31    # "_arg3":J
    :cond_d0
    const/16 v30, 0x0

    #@1a87
    .restart local v30    # "_arg2":Z
    goto :goto_d0

    #@1a88
    .line 2311
    .restart local v31    # "_arg3":J
    :cond_d1
    const/16 v33, 0x0

    #@1a8a
    .local v33, "_arg4":Landroid/content/Intent;
    goto :goto_d1

    #@1a8b
    .line 2319
    .end local v27    # "_arg0":Ljava/lang/String;
    .end local v28    # "_arg1":J
    .end local v30    # "_arg2":Z
    .end local v31    # "_arg3":J
    .end local v33    # "_arg4":Landroid/content/Intent;
    :sswitch_8c
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@1a8e
    move-object/from16 v0, p2

    #@1a90
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a93
    .line 2321
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1a96
    move-result v4

    #@1a97
    if-eqz v4, :cond_d2

    #@1a99
    .line 2322
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1a9b
    move-object/from16 v0, p2

    #@1a9d
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1aa0
    move-result-object v15

    #@1aa1
    check-cast v15, Landroid/content/ComponentName;

    #@1aa3
    .line 2328
    :goto_d2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1aa6
    move-result v4

    #@1aa7
    if-eqz v4, :cond_d3

    #@1aa9
    const/16 v49, 0x1

    #@1aab
    .line 2329
    .restart local v49    # "_arg1":Z
    :goto_d3
    move-object/from16 v0, p0

    #@1aad
    move/from16 v1, v49

    #@1aaf
    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setBluetoothContactSharingDisabled(Landroid/content/ComponentName;Z)V

    #@1ab2
    .line 2330
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1ab5
    .line 2331
    const/4 v4, 0x1

    #@1ab6
    return v4

    #@1ab7
    .line 2325
    .end local v49    # "_arg1":Z
    :cond_d2
    const/4 v15, 0x0

    #@1ab8
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_d2

    #@1ab9
    .line 2328
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :cond_d3
    const/16 v49, 0x0

    #@1abb
    goto :goto_d3

    #@1abc
    .line 2335
    :sswitch_8d
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@1abf
    move-object/from16 v0, p2

    #@1ac1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1ac4
    .line 2337
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1ac7
    move-result v4

    #@1ac8
    if-eqz v4, :cond_d4

    #@1aca
    .line 2338
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1acc
    move-object/from16 v0, p2

    #@1ace
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1ad1
    move-result-object v15

    #@1ad2
    check-cast v15, Landroid/content/ComponentName;

    #@1ad4
    .line 2343
    :goto_d4
    move-object/from16 v0, p0

    #@1ad6
    invoke-virtual {v0, v15}, Landroid/app/admin/IDevicePolicyManager$Stub;->getBluetoothContactSharingDisabled(Landroid/content/ComponentName;)Z

    #@1ad9
    move-result v70

    #@1ada
    .line 2344
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1add
    .line 2345
    if-eqz v70, :cond_d5

    #@1adf
    const/4 v4, 0x1

    #@1ae0
    :goto_d5
    move-object/from16 v0, p3

    #@1ae2
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@1ae5
    .line 2346
    const/4 v4, 0x1

    #@1ae6
    return v4

    #@1ae7
    .line 2341
    .end local v70    # "_result":Z
    :cond_d4
    const/4 v15, 0x0

    #@1ae8
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_d4

    #@1ae9
    .line 2345
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v70    # "_result":Z
    :cond_d5
    const/4 v4, 0x0

    #@1aea
    goto :goto_d5

    #@1aeb
    .line 2350
    .end local v70    # "_result":Z
    :sswitch_8e
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@1aee
    move-object/from16 v0, p2

    #@1af0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1af3
    .line 2352
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1af6
    move-result v5

    #@1af7
    .line 2353
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@1af9
    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getBluetoothContactSharingDisabledForUser(I)Z

    #@1afc
    move-result v70

    #@1afd
    .line 2354
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1b00
    .line 2355
    if-eqz v70, :cond_d6

    #@1b02
    const/4 v4, 0x1

    #@1b03
    :goto_d6
    move-object/from16 v0, p3

    #@1b05
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@1b08
    .line 2356
    const/4 v4, 0x1

    #@1b09
    return v4

    #@1b0a
    .line 2355
    :cond_d6
    const/4 v4, 0x0

    #@1b0b
    goto :goto_d6

    #@1b0c
    .line 2360
    .end local v5    # "_arg0":I
    .end local v70    # "_result":Z
    :sswitch_8f
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@1b0f
    move-object/from16 v0, p2

    #@1b11
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1b14
    .line 2362
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1b17
    move-result v4

    #@1b18
    if-eqz v4, :cond_d7

    #@1b1a
    .line 2363
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1b1c
    move-object/from16 v0, p2

    #@1b1e
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1b21
    move-result-object v15

    #@1b22
    check-cast v15, Landroid/content/ComponentName;

    #@1b24
    .line 2369
    :goto_d7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1b27
    move-result v4

    #@1b28
    if-eqz v4, :cond_d8

    #@1b2a
    .line 2370
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1b2c
    move-object/from16 v0, p2

    #@1b2e
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1b31
    move-result-object v38

    #@1b32
    check-cast v38, Landroid/content/ComponentName;

    #@1b34
    .line 2376
    :goto_d8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1b37
    move-result v4

    #@1b38
    if-eqz v4, :cond_d9

    #@1b3a
    .line 2377
    sget-object v4, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1b3c
    move-object/from16 v0, p2

    #@1b3e
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1b41
    move-result-object v52

    #@1b42
    check-cast v52, Landroid/os/PersistableBundle;

    #@1b44
    .line 2383
    :goto_d9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1b47
    move-result v4

    #@1b48
    if-eqz v4, :cond_da

    #@1b4a
    const/16 v55, 0x1

    #@1b4c
    .line 2384
    .local v55, "_arg3":Z
    :goto_da
    move-object/from16 v0, p0

    #@1b4e
    move-object/from16 v1, v38

    #@1b50
    move-object/from16 v2, v52

    #@1b52
    move/from16 v3, v55

    #@1b54
    invoke-virtual {v0, v15, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/os/PersistableBundle;Z)V

    #@1b57
    .line 2385
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1b5a
    .line 2386
    const/4 v4, 0x1

    #@1b5b
    return v4

    #@1b5c
    .line 2366
    .end local v55    # "_arg3":Z
    :cond_d7
    const/4 v15, 0x0

    #@1b5d
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_d7

    #@1b5e
    .line 2373
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :cond_d8
    const/16 v38, 0x0

    #@1b60
    .restart local v38    # "_arg1":Landroid/content/ComponentName;
    goto :goto_d8

    #@1b61
    .line 2380
    .end local v38    # "_arg1":Landroid/content/ComponentName;
    :cond_d9
    const/16 v52, 0x0

    #@1b63
    .local v52, "_arg2":Landroid/os/PersistableBundle;
    goto :goto_d9

    #@1b64
    .line 2383
    .end local v52    # "_arg2":Landroid/os/PersistableBundle;
    :cond_da
    const/16 v55, 0x0

    #@1b66
    goto :goto_da

    #@1b67
    .line 2390
    :sswitch_90
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@1b6a
    move-object/from16 v0, p2

    #@1b6c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1b6f
    .line 2392
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1b72
    move-result v4

    #@1b73
    if-eqz v4, :cond_db

    #@1b75
    .line 2393
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1b77
    move-object/from16 v0, p2

    #@1b79
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1b7c
    move-result-object v15

    #@1b7d
    check-cast v15, Landroid/content/ComponentName;

    #@1b7f
    .line 2399
    :goto_db
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1b82
    move-result v4

    #@1b83
    if-eqz v4, :cond_dc

    #@1b85
    .line 2400
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1b87
    move-object/from16 v0, p2

    #@1b89
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1b8c
    move-result-object v38

    #@1b8d
    check-cast v38, Landroid/content/ComponentName;

    #@1b8f
    .line 2406
    :goto_dc
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1b92
    move-result v7

    #@1b93
    .line 2408
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1b96
    move-result v4

    #@1b97
    if-eqz v4, :cond_dd

    #@1b99
    const/16 v55, 0x1

    #@1b9b
    .line 2409
    .restart local v55    # "_arg3":Z
    :goto_dd
    move-object/from16 v0, p0

    #@1b9d
    move-object/from16 v1, v38

    #@1b9f
    move/from16 v2, v55

    #@1ba1
    invoke-virtual {v0, v15, v1, v7, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;IZ)Ljava/util/List;

    #@1ba4
    move-result-object v68

    #@1ba5
    .line 2410
    .local v68, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/PersistableBundle;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1ba8
    .line 2411
    move-object/from16 v0, p3

    #@1baa
    move-object/from16 v1, v68

    #@1bac
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@1baf
    .line 2412
    const/4 v4, 0x1

    #@1bb0
    return v4

    #@1bb1
    .line 2396
    .end local v7    # "_arg2":I
    .end local v55    # "_arg3":Z
    .end local v68    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/PersistableBundle;>;"
    :cond_db
    const/4 v15, 0x0

    #@1bb2
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_db

    #@1bb3
    .line 2403
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :cond_dc
    const/16 v38, 0x0

    #@1bb5
    .restart local v38    # "_arg1":Landroid/content/ComponentName;
    goto :goto_dc

    #@1bb6
    .line 2408
    .end local v38    # "_arg1":Landroid/content/ComponentName;
    .restart local v7    # "_arg2":I
    :cond_dd
    const/16 v55, 0x0

    #@1bb8
    goto :goto_dd

    #@1bb9
    .line 2416
    .end local v7    # "_arg2":I
    :sswitch_91
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@1bbc
    move-object/from16 v0, p2

    #@1bbe
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1bc1
    .line 2418
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1bc4
    move-result v4

    #@1bc5
    if-eqz v4, :cond_de

    #@1bc7
    .line 2419
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1bc9
    move-object/from16 v0, p2

    #@1bcb
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1bce
    move-result-object v15

    #@1bcf
    check-cast v15, Landroid/content/ComponentName;

    #@1bd1
    .line 2425
    :goto_de
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1bd4
    move-result-object v23

    #@1bd5
    .line 2426
    .restart local v23    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@1bd7
    move-object/from16 v1, v23

    #@1bd9
    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->addCrossProfileWidgetProvider(Landroid/content/ComponentName;Ljava/lang/String;)Z

    #@1bdc
    move-result v70

    #@1bdd
    .line 2427
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1be0
    .line 2428
    if-eqz v70, :cond_df

    #@1be2
    const/4 v4, 0x1

    #@1be3
    :goto_df
    move-object/from16 v0, p3

    #@1be5
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@1be8
    .line 2429
    const/4 v4, 0x1

    #@1be9
    return v4

    #@1bea
    .line 2422
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v70    # "_result":Z
    :cond_de
    const/4 v15, 0x0

    #@1beb
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_de

    #@1bec
    .line 2428
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v23    # "_arg1":Ljava/lang/String;
    .restart local v70    # "_result":Z
    :cond_df
    const/4 v4, 0x0

    #@1bed
    goto :goto_df

    #@1bee
    .line 2433
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v70    # "_result":Z
    :sswitch_92
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@1bf1
    move-object/from16 v0, p2

    #@1bf3
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1bf6
    .line 2435
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1bf9
    move-result v4

    #@1bfa
    if-eqz v4, :cond_e0

    #@1bfc
    .line 2436
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1bfe
    move-object/from16 v0, p2

    #@1c00
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1c03
    move-result-object v15

    #@1c04
    check-cast v15, Landroid/content/ComponentName;

    #@1c06
    .line 2442
    :goto_e0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1c09
    move-result-object v23

    #@1c0a
    .line 2443
    .restart local v23    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@1c0c
    move-object/from16 v1, v23

    #@1c0e
    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->removeCrossProfileWidgetProvider(Landroid/content/ComponentName;Ljava/lang/String;)Z

    #@1c11
    move-result v70

    #@1c12
    .line 2444
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1c15
    .line 2445
    if-eqz v70, :cond_e1

    #@1c17
    const/4 v4, 0x1

    #@1c18
    :goto_e1
    move-object/from16 v0, p3

    #@1c1a
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@1c1d
    .line 2446
    const/4 v4, 0x1

    #@1c1e
    return v4

    #@1c1f
    .line 2439
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v70    # "_result":Z
    :cond_e0
    const/4 v15, 0x0

    #@1c20
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_e0

    #@1c21
    .line 2445
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v23    # "_arg1":Ljava/lang/String;
    .restart local v70    # "_result":Z
    :cond_e1
    const/4 v4, 0x0

    #@1c22
    goto :goto_e1

    #@1c23
    .line 2450
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v70    # "_result":Z
    :sswitch_93
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@1c26
    move-object/from16 v0, p2

    #@1c28
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1c2b
    .line 2452
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1c2e
    move-result v4

    #@1c2f
    if-eqz v4, :cond_e2

    #@1c31
    .line 2453
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1c33
    move-object/from16 v0, p2

    #@1c35
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1c38
    move-result-object v15

    #@1c39
    check-cast v15, Landroid/content/ComponentName;

    #@1c3b
    .line 2458
    :goto_e2
    move-object/from16 v0, p0

    #@1c3d
    invoke-virtual {v0, v15}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCrossProfileWidgetProviders(Landroid/content/ComponentName;)Ljava/util/List;

    #@1c40
    move-result-object v69

    #@1c41
    .line 2459
    .local v69, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1c44
    .line 2460
    move-object/from16 v0, p3

    #@1c46
    move-object/from16 v1, v69

    #@1c48
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    #@1c4b
    .line 2461
    const/4 v4, 0x1

    #@1c4c
    return v4

    #@1c4d
    .line 2456
    .end local v69    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_e2
    const/4 v15, 0x0

    #@1c4e
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_e2

    #@1c4f
    .line 2465
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_94
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@1c52
    move-object/from16 v0, p2

    #@1c54
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1c57
    .line 2467
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1c5a
    move-result v4

    #@1c5b
    if-eqz v4, :cond_e3

    #@1c5d
    .line 2468
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1c5f
    move-object/from16 v0, p2

    #@1c61
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1c64
    move-result-object v15

    #@1c65
    check-cast v15, Landroid/content/ComponentName;

    #@1c67
    .line 2474
    :goto_e3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1c6a
    move-result v4

    #@1c6b
    if-eqz v4, :cond_e4

    #@1c6d
    const/16 v49, 0x1

    #@1c6f
    .line 2475
    .restart local v49    # "_arg1":Z
    :goto_e4
    move-object/from16 v0, p0

    #@1c71
    move/from16 v1, v49

    #@1c73
    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAutoTimeRequired(Landroid/content/ComponentName;Z)V

    #@1c76
    .line 2476
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1c79
    .line 2477
    const/4 v4, 0x1

    #@1c7a
    return v4

    #@1c7b
    .line 2471
    .end local v49    # "_arg1":Z
    :cond_e3
    const/4 v15, 0x0

    #@1c7c
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_e3

    #@1c7d
    .line 2474
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :cond_e4
    const/16 v49, 0x0

    #@1c7f
    goto :goto_e4

    #@1c80
    .line 2481
    :sswitch_95
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@1c83
    move-object/from16 v0, p2

    #@1c85
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1c88
    .line 2482
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAutoTimeRequired()Z

    #@1c8b
    move-result v70

    #@1c8c
    .line 2483
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1c8f
    .line 2484
    if-eqz v70, :cond_e5

    #@1c91
    const/4 v4, 0x1

    #@1c92
    :goto_e5
    move-object/from16 v0, p3

    #@1c94
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@1c97
    .line 2485
    const/4 v4, 0x1

    #@1c98
    return v4

    #@1c99
    .line 2484
    :cond_e5
    const/4 v4, 0x0

    #@1c9a
    goto :goto_e5

    #@1c9b
    .line 2489
    .end local v70    # "_result":Z
    :sswitch_96
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@1c9e
    move-object/from16 v0, p2

    #@1ca0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1ca3
    .line 2491
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1ca6
    move-result v4

    #@1ca7
    if-eqz v4, :cond_e6

    #@1ca9
    .line 2492
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1cab
    move-object/from16 v0, p2

    #@1cad
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1cb0
    move-result-object v15

    #@1cb1
    check-cast v15, Landroid/content/ComponentName;

    #@1cb3
    .line 2498
    :goto_e6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1cb6
    move-result v4

    #@1cb7
    if-eqz v4, :cond_e7

    #@1cb9
    const/16 v49, 0x1

    #@1cbb
    .line 2499
    .restart local v49    # "_arg1":Z
    :goto_e7
    move-object/from16 v0, p0

    #@1cbd
    move/from16 v1, v49

    #@1cbf
    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setForceEphemeralUsers(Landroid/content/ComponentName;Z)V

    #@1cc2
    .line 2500
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1cc5
    .line 2501
    const/4 v4, 0x1

    #@1cc6
    return v4

    #@1cc7
    .line 2495
    .end local v49    # "_arg1":Z
    :cond_e6
    const/4 v15, 0x0

    #@1cc8
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_e6

    #@1cc9
    .line 2498
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :cond_e7
    const/16 v49, 0x0

    #@1ccb
    goto :goto_e7

    #@1ccc
    .line 2505
    :sswitch_97
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@1ccf
    move-object/from16 v0, p2

    #@1cd1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1cd4
    .line 2507
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1cd7
    move-result v4

    #@1cd8
    if-eqz v4, :cond_e8

    #@1cda
    .line 2508
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1cdc
    move-object/from16 v0, p2

    #@1cde
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1ce1
    move-result-object v15

    #@1ce2
    check-cast v15, Landroid/content/ComponentName;

    #@1ce4
    .line 2513
    :goto_e8
    move-object/from16 v0, p0

    #@1ce6
    invoke-virtual {v0, v15}, Landroid/app/admin/IDevicePolicyManager$Stub;->getForceEphemeralUsers(Landroid/content/ComponentName;)Z

    #@1ce9
    move-result v70

    #@1cea
    .line 2514
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1ced
    .line 2515
    if-eqz v70, :cond_e9

    #@1cef
    const/4 v4, 0x1

    #@1cf0
    :goto_e9
    move-object/from16 v0, p3

    #@1cf2
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@1cf5
    .line 2516
    const/4 v4, 0x1

    #@1cf6
    return v4

    #@1cf7
    .line 2511
    .end local v70    # "_result":Z
    :cond_e8
    const/4 v15, 0x0

    #@1cf8
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_e8

    #@1cf9
    .line 2515
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v70    # "_result":Z
    :cond_e9
    const/4 v4, 0x0

    #@1cfa
    goto :goto_e9

    #@1cfb
    .line 2520
    .end local v70    # "_result":Z
    :sswitch_98
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@1cfe
    move-object/from16 v0, p2

    #@1d00
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1d03
    .line 2522
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1d06
    move-result v4

    #@1d07
    if-eqz v4, :cond_ea

    #@1d09
    .line 2523
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1d0b
    move-object/from16 v0, p2

    #@1d0d
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1d10
    move-result-object v15

    #@1d11
    check-cast v15, Landroid/content/ComponentName;

    #@1d13
    .line 2529
    :goto_ea
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1d16
    move-result v6

    #@1d17
    .line 2530
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    #@1d19
    invoke-virtual {v0, v15, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->isRemovingAdmin(Landroid/content/ComponentName;I)Z

    #@1d1c
    move-result v70

    #@1d1d
    .line 2531
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1d20
    .line 2532
    if-eqz v70, :cond_eb

    #@1d22
    const/4 v4, 0x1

    #@1d23
    :goto_eb
    move-object/from16 v0, p3

    #@1d25
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@1d28
    .line 2533
    const/4 v4, 0x1

    #@1d29
    return v4

    #@1d2a
    .line 2526
    .end local v6    # "_arg1":I
    .end local v70    # "_result":Z
    :cond_ea
    const/4 v15, 0x0

    #@1d2b
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_ea

    #@1d2c
    .line 2532
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v6    # "_arg1":I
    .restart local v70    # "_result":Z
    :cond_eb
    const/4 v4, 0x0

    #@1d2d
    goto :goto_eb

    #@1d2e
    .line 2537
    .end local v6    # "_arg1":I
    .end local v70    # "_result":Z
    :sswitch_99
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@1d31
    move-object/from16 v0, p2

    #@1d33
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1d36
    .line 2539
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1d39
    move-result v4

    #@1d3a
    if-eqz v4, :cond_ec

    #@1d3c
    .line 2540
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1d3e
    move-object/from16 v0, p2

    #@1d40
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1d43
    move-result-object v15

    #@1d44
    check-cast v15, Landroid/content/ComponentName;

    #@1d46
    .line 2546
    :goto_ec
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1d49
    move-result v4

    #@1d4a
    if-eqz v4, :cond_ed

    #@1d4c
    .line 2547
    sget-object v4, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1d4e
    move-object/from16 v0, p2

    #@1d50
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1d53
    move-result-object v41

    #@1d54
    check-cast v41, Landroid/graphics/Bitmap;

    #@1d56
    .line 2552
    :goto_ed
    move-object/from16 v0, p0

    #@1d58
    move-object/from16 v1, v41

    #@1d5a
    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setUserIcon(Landroid/content/ComponentName;Landroid/graphics/Bitmap;)V

    #@1d5d
    .line 2553
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1d60
    .line 2554
    const/4 v4, 0x1

    #@1d61
    return v4

    #@1d62
    .line 2543
    :cond_ec
    const/4 v15, 0x0

    #@1d63
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_ec

    #@1d64
    .line 2550
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :cond_ed
    const/16 v41, 0x0

    #@1d66
    .local v41, "_arg1":Landroid/graphics/Bitmap;
    goto :goto_ed

    #@1d67
    .line 2558
    .end local v41    # "_arg1":Landroid/graphics/Bitmap;
    :sswitch_9a
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@1d6a
    move-object/from16 v0, p2

    #@1d6c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1d6f
    .line 2560
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1d72
    move-result v4

    #@1d73
    if-eqz v4, :cond_ee

    #@1d75
    .line 2561
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1d77
    move-object/from16 v0, p2

    #@1d79
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1d7c
    move-result-object v15

    #@1d7d
    check-cast v15, Landroid/content/ComponentName;

    #@1d7f
    .line 2567
    :goto_ee
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1d82
    move-result v4

    #@1d83
    if-eqz v4, :cond_ef

    #@1d85
    .line 2568
    sget-object v4, Landroid/app/admin/SystemUpdatePolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1d87
    move-object/from16 v0, p2

    #@1d89
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1d8c
    move-result-object v37

    #@1d8d
    check-cast v37, Landroid/app/admin/SystemUpdatePolicy;

    #@1d8f
    .line 2573
    :goto_ef
    move-object/from16 v0, p0

    #@1d91
    move-object/from16 v1, v37

    #@1d93
    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setSystemUpdatePolicy(Landroid/content/ComponentName;Landroid/app/admin/SystemUpdatePolicy;)V

    #@1d96
    .line 2574
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1d99
    .line 2575
    const/4 v4, 0x1

    #@1d9a
    return v4

    #@1d9b
    .line 2564
    :cond_ee
    const/4 v15, 0x0

    #@1d9c
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_ee

    #@1d9d
    .line 2571
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :cond_ef
    const/16 v37, 0x0

    #@1d9f
    .local v37, "_arg1":Landroid/app/admin/SystemUpdatePolicy;
    goto :goto_ef

    #@1da0
    .line 2579
    .end local v37    # "_arg1":Landroid/app/admin/SystemUpdatePolicy;
    :sswitch_9b
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@1da3
    move-object/from16 v0, p2

    #@1da5
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1da8
    .line 2580
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getSystemUpdatePolicy()Landroid/app/admin/SystemUpdatePolicy;

    #@1dab
    move-result-object v57

    #@1dac
    .line 2581
    .local v57, "_result":Landroid/app/admin/SystemUpdatePolicy;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1daf
    .line 2582
    if-eqz v57, :cond_f0

    #@1db1
    .line 2583
    const/4 v4, 0x1

    #@1db2
    move-object/from16 v0, p3

    #@1db4
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@1db7
    .line 2584
    const/4 v4, 0x1

    #@1db8
    move-object/from16 v0, v57

    #@1dba
    move-object/from16 v1, p3

    #@1dbc
    invoke-virtual {v0, v1, v4}, Landroid/app/admin/SystemUpdatePolicy;->writeToParcel(Landroid/os/Parcel;I)V

    #@1dbf
    .line 2589
    :goto_f0
    const/4 v4, 0x1

    #@1dc0
    return v4

    #@1dc1
    .line 2587
    :cond_f0
    const/4 v4, 0x0

    #@1dc2
    move-object/from16 v0, p3

    #@1dc4
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@1dc7
    goto :goto_f0

    #@1dc8
    .line 2593
    .end local v57    # "_result":Landroid/app/admin/SystemUpdatePolicy;
    :sswitch_9c
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@1dcb
    move-object/from16 v0, p2

    #@1dcd
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1dd0
    .line 2595
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1dd3
    move-result v4

    #@1dd4
    if-eqz v4, :cond_f1

    #@1dd6
    .line 2596
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1dd8
    move-object/from16 v0, p2

    #@1dda
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1ddd
    move-result-object v15

    #@1dde
    check-cast v15, Landroid/content/ComponentName;

    #@1de0
    .line 2602
    :goto_f1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1de3
    move-result v4

    #@1de4
    if-eqz v4, :cond_f2

    #@1de6
    const/16 v49, 0x1

    #@1de8
    .line 2603
    .restart local v49    # "_arg1":Z
    :goto_f2
    move-object/from16 v0, p0

    #@1dea
    move/from16 v1, v49

    #@1dec
    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setKeyguardDisabled(Landroid/content/ComponentName;Z)Z

    #@1def
    move-result v70

    #@1df0
    .line 2604
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1df3
    .line 2605
    if-eqz v70, :cond_f3

    #@1df5
    const/4 v4, 0x1

    #@1df6
    :goto_f3
    move-object/from16 v0, p3

    #@1df8
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@1dfb
    .line 2606
    const/4 v4, 0x1

    #@1dfc
    return v4

    #@1dfd
    .line 2599
    .end local v49    # "_arg1":Z
    .end local v70    # "_result":Z
    :cond_f1
    const/4 v15, 0x0

    #@1dfe
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_f1

    #@1dff
    .line 2602
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :cond_f2
    const/16 v49, 0x0

    #@1e01
    goto :goto_f2

    #@1e02
    .line 2605
    .restart local v49    # "_arg1":Z
    .restart local v70    # "_result":Z
    :cond_f3
    const/4 v4, 0x0

    #@1e03
    goto :goto_f3

    #@1e04
    .line 2610
    .end local v49    # "_arg1":Z
    .end local v70    # "_result":Z
    :sswitch_9d
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@1e07
    move-object/from16 v0, p2

    #@1e09
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1e0c
    .line 2612
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1e0f
    move-result v4

    #@1e10
    if-eqz v4, :cond_f4

    #@1e12
    .line 2613
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1e14
    move-object/from16 v0, p2

    #@1e16
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1e19
    move-result-object v15

    #@1e1a
    check-cast v15, Landroid/content/ComponentName;

    #@1e1c
    .line 2619
    :goto_f4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1e1f
    move-result v4

    #@1e20
    if-eqz v4, :cond_f5

    #@1e22
    const/16 v49, 0x1

    #@1e24
    .line 2620
    .restart local v49    # "_arg1":Z
    :goto_f5
    move-object/from16 v0, p0

    #@1e26
    move/from16 v1, v49

    #@1e28
    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setStatusBarDisabled(Landroid/content/ComponentName;Z)Z

    #@1e2b
    move-result v70

    #@1e2c
    .line 2621
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1e2f
    .line 2622
    if-eqz v70, :cond_f6

    #@1e31
    const/4 v4, 0x1

    #@1e32
    :goto_f6
    move-object/from16 v0, p3

    #@1e34
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@1e37
    .line 2623
    const/4 v4, 0x1

    #@1e38
    return v4

    #@1e39
    .line 2616
    .end local v49    # "_arg1":Z
    .end local v70    # "_result":Z
    :cond_f4
    const/4 v15, 0x0

    #@1e3a
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_f4

    #@1e3b
    .line 2619
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :cond_f5
    const/16 v49, 0x0

    #@1e3d
    goto :goto_f5

    #@1e3e
    .line 2622
    .restart local v49    # "_arg1":Z
    .restart local v70    # "_result":Z
    :cond_f6
    const/4 v4, 0x0

    #@1e3f
    goto :goto_f6

    #@1e40
    .line 2627
    .end local v49    # "_arg1":Z
    .end local v70    # "_result":Z
    :sswitch_9e
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@1e43
    move-object/from16 v0, p2

    #@1e45
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1e48
    .line 2628
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getDoNotAskCredentialsOnBoot()Z

    #@1e4b
    move-result v70

    #@1e4c
    .line 2629
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1e4f
    .line 2630
    if-eqz v70, :cond_f7

    #@1e51
    const/4 v4, 0x1

    #@1e52
    :goto_f7
    move-object/from16 v0, p3

    #@1e54
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@1e57
    .line 2631
    const/4 v4, 0x1

    #@1e58
    return v4

    #@1e59
    .line 2630
    :cond_f7
    const/4 v4, 0x0

    #@1e5a
    goto :goto_f7

    #@1e5b
    .line 2635
    .end local v70    # "_result":Z
    :sswitch_9f
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@1e5e
    move-object/from16 v0, p2

    #@1e60
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1e63
    .line 2637
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@1e66
    move-result-wide v34

    #@1e67
    .line 2638
    .local v34, "_arg0":J
    move-object/from16 v0, p0

    #@1e69
    move-wide/from16 v1, v34

    #@1e6b
    invoke-virtual {v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->notifyPendingSystemUpdate(J)V

    #@1e6e
    .line 2639
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1e71
    .line 2640
    const/4 v4, 0x1

    #@1e72
    return v4

    #@1e73
    .line 2644
    .end local v34    # "_arg0":J
    :sswitch_a0
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@1e76
    move-object/from16 v0, p2

    #@1e78
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1e7b
    .line 2646
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1e7e
    move-result v4

    #@1e7f
    if-eqz v4, :cond_f8

    #@1e81
    .line 2647
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1e83
    move-object/from16 v0, p2

    #@1e85
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1e88
    move-result-object v15

    #@1e89
    check-cast v15, Landroid/content/ComponentName;

    #@1e8b
    .line 2653
    :goto_f8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1e8e
    move-result v6

    #@1e8f
    .line 2654
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    #@1e91
    invoke-virtual {v0, v15, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPermissionPolicy(Landroid/content/ComponentName;I)V

    #@1e94
    .line 2655
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1e97
    .line 2656
    const/4 v4, 0x1

    #@1e98
    return v4

    #@1e99
    .line 2650
    .end local v6    # "_arg1":I
    :cond_f8
    const/4 v15, 0x0

    #@1e9a
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_f8

    #@1e9b
    .line 2660
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_a1
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@1e9e
    move-object/from16 v0, p2

    #@1ea0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1ea3
    .line 2662
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1ea6
    move-result v4

    #@1ea7
    if-eqz v4, :cond_f9

    #@1ea9
    .line 2663
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1eab
    move-object/from16 v0, p2

    #@1ead
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1eb0
    move-result-object v15

    #@1eb1
    check-cast v15, Landroid/content/ComponentName;

    #@1eb3
    .line 2668
    :goto_f9
    move-object/from16 v0, p0

    #@1eb5
    invoke-virtual {v0, v15}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPermissionPolicy(Landroid/content/ComponentName;)I

    #@1eb8
    move-result v56

    #@1eb9
    .line 2669
    .restart local v56    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1ebc
    .line 2670
    move-object/from16 v0, p3

    #@1ebe
    move/from16 v1, v56

    #@1ec0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1ec3
    .line 2671
    const/4 v4, 0x1

    #@1ec4
    return v4

    #@1ec5
    .line 2666
    .end local v56    # "_result":I
    :cond_f9
    const/4 v15, 0x0

    #@1ec6
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_f9

    #@1ec7
    .line 2675
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_a2
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@1eca
    move-object/from16 v0, p2

    #@1ecc
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1ecf
    .line 2677
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1ed2
    move-result v4

    #@1ed3
    if-eqz v4, :cond_fa

    #@1ed5
    .line 2678
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1ed7
    move-object/from16 v0, p2

    #@1ed9
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1edc
    move-result-object v15

    #@1edd
    check-cast v15, Landroid/content/ComponentName;

    #@1edf
    .line 2684
    :goto_fa
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1ee2
    move-result-object v23

    #@1ee3
    .line 2686
    .restart local v23    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1ee6
    move-result-object v53

    #@1ee7
    .line 2688
    .restart local v53    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1eea
    move-result v8

    #@1eeb
    .line 2689
    .restart local v8    # "_arg3":I
    move-object/from16 v0, p0

    #@1eed
    move-object/from16 v1, v23

    #@1eef
    move-object/from16 v2, v53

    #@1ef1
    invoke-virtual {v0, v15, v1, v2, v8}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPermissionGrantState(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;I)Z

    #@1ef4
    move-result v70

    #@1ef5
    .line 2690
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1ef8
    .line 2691
    if-eqz v70, :cond_fb

    #@1efa
    const/4 v4, 0x1

    #@1efb
    :goto_fb
    move-object/from16 v0, p3

    #@1efd
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@1f00
    .line 2692
    const/4 v4, 0x1

    #@1f01
    return v4

    #@1f02
    .line 2681
    .end local v8    # "_arg3":I
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v53    # "_arg2":Ljava/lang/String;
    .end local v70    # "_result":Z
    :cond_fa
    const/4 v15, 0x0

    #@1f03
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_fa

    #@1f04
    .line 2691
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v8    # "_arg3":I
    .restart local v23    # "_arg1":Ljava/lang/String;
    .restart local v53    # "_arg2":Ljava/lang/String;
    .restart local v70    # "_result":Z
    :cond_fb
    const/4 v4, 0x0

    #@1f05
    goto :goto_fb

    #@1f06
    .line 2696
    .end local v8    # "_arg3":I
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v53    # "_arg2":Ljava/lang/String;
    .end local v70    # "_result":Z
    :sswitch_a3
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@1f09
    move-object/from16 v0, p2

    #@1f0b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1f0e
    .line 2698
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1f11
    move-result v4

    #@1f12
    if-eqz v4, :cond_fc

    #@1f14
    .line 2699
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1f16
    move-object/from16 v0, p2

    #@1f18
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1f1b
    move-result-object v15

    #@1f1c
    check-cast v15, Landroid/content/ComponentName;

    #@1f1e
    .line 2705
    :goto_fc
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1f21
    move-result-object v23

    #@1f22
    .line 2707
    .restart local v23    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1f25
    move-result-object v53

    #@1f26
    .line 2708
    .restart local v53    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    #@1f28
    move-object/from16 v1, v23

    #@1f2a
    move-object/from16 v2, v53

    #@1f2c
    invoke-virtual {v0, v15, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPermissionGrantState(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)I

    #@1f2f
    move-result v56

    #@1f30
    .line 2709
    .restart local v56    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1f33
    .line 2710
    move-object/from16 v0, p3

    #@1f35
    move/from16 v1, v56

    #@1f37
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1f3a
    .line 2711
    const/4 v4, 0x1

    #@1f3b
    return v4

    #@1f3c
    .line 2702
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v53    # "_arg2":Ljava/lang/String;
    .end local v56    # "_result":I
    :cond_fc
    const/4 v15, 0x0

    #@1f3d
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_fc

    #@1f3e
    .line 2715
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_a4
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@1f41
    move-object/from16 v0, p2

    #@1f43
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1f46
    .line 2717
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1f49
    move-result-object v27

    #@1f4a
    .line 2718
    .restart local v27    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@1f4c
    move-object/from16 v1, v27

    #@1f4e
    invoke-virtual {v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->isProvisioningAllowed(Ljava/lang/String;)Z

    #@1f51
    move-result v70

    #@1f52
    .line 2719
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1f55
    .line 2720
    if-eqz v70, :cond_fd

    #@1f57
    const/4 v4, 0x1

    #@1f58
    :goto_fd
    move-object/from16 v0, p3

    #@1f5a
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@1f5d
    .line 2721
    const/4 v4, 0x1

    #@1f5e
    return v4

    #@1f5f
    .line 2720
    :cond_fd
    const/4 v4, 0x0

    #@1f60
    goto :goto_fd

    #@1f61
    .line 2725
    .end local v27    # "_arg0":Ljava/lang/String;
    .end local v70    # "_result":Z
    :sswitch_a5
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@1f64
    move-object/from16 v0, p2

    #@1f66
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1f69
    .line 2727
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1f6c
    move-result v4

    #@1f6d
    if-eqz v4, :cond_fe

    #@1f6f
    .line 2728
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1f71
    move-object/from16 v0, p2

    #@1f73
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1f76
    move-result-object v15

    #@1f77
    check-cast v15, Landroid/content/ComponentName;

    #@1f79
    .line 2734
    :goto_fe
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    #@1f7c
    move-result-object v48

    #@1f7d
    .line 2735
    .local v48, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    #@1f7f
    move-object/from16 v1, v48

    #@1f81
    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setKeepUninstalledPackages(Landroid/content/ComponentName;Ljava/util/List;)V

    #@1f84
    .line 2736
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1f87
    .line 2737
    const/4 v4, 0x1

    #@1f88
    return v4

    #@1f89
    .line 2731
    .end local v48    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_fe
    const/4 v15, 0x0

    #@1f8a
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_fe

    #@1f8b
    .line 2741
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_a6
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@1f8e
    move-object/from16 v0, p2

    #@1f90
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1f93
    .line 2743
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1f96
    move-result v4

    #@1f97
    if-eqz v4, :cond_ff

    #@1f99
    .line 2744
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1f9b
    move-object/from16 v0, p2

    #@1f9d
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1fa0
    move-result-object v15

    #@1fa1
    check-cast v15, Landroid/content/ComponentName;

    #@1fa3
    .line 2749
    :goto_ff
    move-object/from16 v0, p0

    #@1fa5
    invoke-virtual {v0, v15}, Landroid/app/admin/IDevicePolicyManager$Stub;->getKeepUninstalledPackages(Landroid/content/ComponentName;)Ljava/util/List;

    #@1fa8
    move-result-object v69

    #@1fa9
    .line 2750
    .restart local v69    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1fac
    .line 2751
    move-object/from16 v0, p3

    #@1fae
    move-object/from16 v1, v69

    #@1fb0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    #@1fb3
    .line 2752
    const/4 v4, 0x1

    #@1fb4
    return v4

    #@1fb5
    .line 2747
    .end local v69    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_ff
    const/4 v15, 0x0

    #@1fb6
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_ff

    #@1fb7
    .line 2756
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_a7
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@1fba
    move-object/from16 v0, p2

    #@1fbc
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1fbf
    .line 2758
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1fc2
    move-result v4

    #@1fc3
    if-eqz v4, :cond_100

    #@1fc5
    .line 2759
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1fc7
    move-object/from16 v0, p2

    #@1fc9
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1fcc
    move-result-object v15

    #@1fcd
    check-cast v15, Landroid/content/ComponentName;

    #@1fcf
    .line 2764
    :goto_100
    move-object/from16 v0, p0

    #@1fd1
    invoke-virtual {v0, v15}, Landroid/app/admin/IDevicePolicyManager$Stub;->isManagedProfile(Landroid/content/ComponentName;)Z

    #@1fd4
    move-result v70

    #@1fd5
    .line 2765
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1fd8
    .line 2766
    if-eqz v70, :cond_101

    #@1fda
    const/4 v4, 0x1

    #@1fdb
    :goto_101
    move-object/from16 v0, p3

    #@1fdd
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@1fe0
    .line 2767
    const/4 v4, 0x1

    #@1fe1
    return v4

    #@1fe2
    .line 2762
    .end local v70    # "_result":Z
    :cond_100
    const/4 v15, 0x0

    #@1fe3
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_100

    #@1fe4
    .line 2766
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v70    # "_result":Z
    :cond_101
    const/4 v4, 0x0

    #@1fe5
    goto :goto_101

    #@1fe6
    .line 2771
    .end local v70    # "_result":Z
    :sswitch_a8
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@1fe9
    move-object/from16 v0, p2

    #@1feb
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1fee
    .line 2773
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1ff1
    move-result v4

    #@1ff2
    if-eqz v4, :cond_102

    #@1ff4
    .line 2774
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1ff6
    move-object/from16 v0, p2

    #@1ff8
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1ffb
    move-result-object v15

    #@1ffc
    check-cast v15, Landroid/content/ComponentName;

    #@1ffe
    .line 2779
    :goto_102
    move-object/from16 v0, p0

    #@2000
    invoke-virtual {v0, v15}, Landroid/app/admin/IDevicePolicyManager$Stub;->isSystemOnlyUser(Landroid/content/ComponentName;)Z

    #@2003
    move-result v70

    #@2004
    .line 2780
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2007
    .line 2781
    if-eqz v70, :cond_103

    #@2009
    const/4 v4, 0x1

    #@200a
    :goto_103
    move-object/from16 v0, p3

    #@200c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@200f
    .line 2782
    const/4 v4, 0x1

    #@2010
    return v4

    #@2011
    .line 2777
    .end local v70    # "_result":Z
    :cond_102
    const/4 v15, 0x0

    #@2012
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_102

    #@2013
    .line 2781
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v70    # "_result":Z
    :cond_103
    const/4 v4, 0x0

    #@2014
    goto :goto_103

    #@2015
    .line 2786
    .end local v70    # "_result":Z
    :sswitch_a9
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@2018
    move-object/from16 v0, p2

    #@201a
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@201d
    .line 2788
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2020
    move-result v4

    #@2021
    if-eqz v4, :cond_104

    #@2023
    .line 2789
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2025
    move-object/from16 v0, p2

    #@2027
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@202a
    move-result-object v15

    #@202b
    check-cast v15, Landroid/content/ComponentName;

    #@202d
    .line 2794
    :goto_104
    move-object/from16 v0, p0

    #@202f
    invoke-virtual {v0, v15}, Landroid/app/admin/IDevicePolicyManager$Stub;->getWifiMacAddress(Landroid/content/ComponentName;)Ljava/lang/String;

    #@2032
    move-result-object v65

    #@2033
    .line 2795
    .restart local v65    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2036
    .line 2796
    move-object/from16 v0, p3

    #@2038
    move-object/from16 v1, v65

    #@203a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@203d
    .line 2797
    const/4 v4, 0x1

    #@203e
    return v4

    #@203f
    .line 2792
    .end local v65    # "_result":Ljava/lang/String;
    :cond_104
    const/4 v15, 0x0

    #@2040
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_104

    #@2041
    .line 2801
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_aa
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@2044
    move-object/from16 v0, p2

    #@2046
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2049
    .line 2803
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@204c
    move-result v4

    #@204d
    if-eqz v4, :cond_105

    #@204f
    .line 2804
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2051
    move-object/from16 v0, p2

    #@2053
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2056
    move-result-object v15

    #@2057
    check-cast v15, Landroid/content/ComponentName;

    #@2059
    .line 2809
    :goto_105
    move-object/from16 v0, p0

    #@205b
    invoke-virtual {v0, v15}, Landroid/app/admin/IDevicePolicyManager$Stub;->reboot(Landroid/content/ComponentName;)V

    #@205e
    .line 2810
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2061
    .line 2811
    const/4 v4, 0x1

    #@2062
    return v4

    #@2063
    .line 2807
    :cond_105
    const/4 v15, 0x0

    #@2064
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_105

    #@2065
    .line 2815
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_ab
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@2068
    move-object/from16 v0, p2

    #@206a
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@206d
    .line 2817
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2070
    move-result v4

    #@2071
    if-eqz v4, :cond_106

    #@2073
    .line 2818
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2075
    move-object/from16 v0, p2

    #@2077
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@207a
    move-result-object v15

    #@207b
    check-cast v15, Landroid/content/ComponentName;

    #@207d
    .line 2824
    :goto_106
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2080
    move-result v4

    #@2081
    if-eqz v4, :cond_107

    #@2083
    .line 2825
    sget-object v4, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    #@2085
    move-object/from16 v0, p2

    #@2087
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@208a
    move-result-object v46

    #@208b
    check-cast v46, Ljava/lang/CharSequence;

    #@208d
    .line 2830
    :goto_107
    move-object/from16 v0, p0

    #@208f
    move-object/from16 v1, v46

    #@2091
    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setShortSupportMessage(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V

    #@2094
    .line 2831
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2097
    .line 2832
    const/4 v4, 0x1

    #@2098
    return v4

    #@2099
    .line 2821
    :cond_106
    const/4 v15, 0x0

    #@209a
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_106

    #@209b
    .line 2828
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :cond_107
    const/16 v46, 0x0

    #@209d
    .restart local v46    # "_arg1":Ljava/lang/CharSequence;
    goto :goto_107

    #@209e
    .line 2836
    .end local v46    # "_arg1":Ljava/lang/CharSequence;
    :sswitch_ac
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@20a1
    move-object/from16 v0, p2

    #@20a3
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@20a6
    .line 2838
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@20a9
    move-result v4

    #@20aa
    if-eqz v4, :cond_108

    #@20ac
    .line 2839
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@20ae
    move-object/from16 v0, p2

    #@20b0
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@20b3
    move-result-object v15

    #@20b4
    check-cast v15, Landroid/content/ComponentName;

    #@20b6
    .line 2844
    :goto_108
    move-object/from16 v0, p0

    #@20b8
    invoke-virtual {v0, v15}, Landroid/app/admin/IDevicePolicyManager$Stub;->getShortSupportMessage(Landroid/content/ComponentName;)Ljava/lang/CharSequence;

    #@20bb
    move-result-object v64

    #@20bc
    .line 2845
    .restart local v64    # "_result":Ljava/lang/CharSequence;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@20bf
    .line 2846
    if-eqz v64, :cond_109

    #@20c1
    .line 2847
    const/4 v4, 0x1

    #@20c2
    move-object/from16 v0, p3

    #@20c4
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@20c7
    .line 2848
    const/4 v4, 0x1

    #@20c8
    move-object/from16 v0, v64

    #@20ca
    move-object/from16 v1, p3

    #@20cc
    invoke-static {v0, v1, v4}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    #@20cf
    .line 2853
    :goto_109
    const/4 v4, 0x1

    #@20d0
    return v4

    #@20d1
    .line 2842
    .end local v64    # "_result":Ljava/lang/CharSequence;
    :cond_108
    const/4 v15, 0x0

    #@20d2
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_108

    #@20d3
    .line 2851
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v64    # "_result":Ljava/lang/CharSequence;
    :cond_109
    const/4 v4, 0x0

    #@20d4
    move-object/from16 v0, p3

    #@20d6
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@20d9
    goto :goto_109

    #@20da
    .line 2857
    .end local v64    # "_result":Ljava/lang/CharSequence;
    :sswitch_ad
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@20dd
    move-object/from16 v0, p2

    #@20df
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@20e2
    .line 2859
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@20e5
    move-result v4

    #@20e6
    if-eqz v4, :cond_10a

    #@20e8
    .line 2860
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@20ea
    move-object/from16 v0, p2

    #@20ec
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@20ef
    move-result-object v15

    #@20f0
    check-cast v15, Landroid/content/ComponentName;

    #@20f2
    .line 2866
    :goto_10a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@20f5
    move-result v4

    #@20f6
    if-eqz v4, :cond_10b

    #@20f8
    .line 2867
    sget-object v4, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    #@20fa
    move-object/from16 v0, p2

    #@20fc
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@20ff
    move-result-object v46

    #@2100
    check-cast v46, Ljava/lang/CharSequence;

    #@2102
    .line 2872
    :goto_10b
    move-object/from16 v0, p0

    #@2104
    move-object/from16 v1, v46

    #@2106
    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setLongSupportMessage(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V

    #@2109
    .line 2873
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@210c
    .line 2874
    const/4 v4, 0x1

    #@210d
    return v4

    #@210e
    .line 2863
    :cond_10a
    const/4 v15, 0x0

    #@210f
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_10a

    #@2110
    .line 2870
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :cond_10b
    const/16 v46, 0x0

    #@2112
    .restart local v46    # "_arg1":Ljava/lang/CharSequence;
    goto :goto_10b

    #@2113
    .line 2878
    .end local v46    # "_arg1":Ljava/lang/CharSequence;
    :sswitch_ae
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@2116
    move-object/from16 v0, p2

    #@2118
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@211b
    .line 2880
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@211e
    move-result v4

    #@211f
    if-eqz v4, :cond_10c

    #@2121
    .line 2881
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2123
    move-object/from16 v0, p2

    #@2125
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2128
    move-result-object v15

    #@2129
    check-cast v15, Landroid/content/ComponentName;

    #@212b
    .line 2886
    :goto_10c
    move-object/from16 v0, p0

    #@212d
    invoke-virtual {v0, v15}, Landroid/app/admin/IDevicePolicyManager$Stub;->getLongSupportMessage(Landroid/content/ComponentName;)Ljava/lang/CharSequence;

    #@2130
    move-result-object v64

    #@2131
    .line 2887
    .restart local v64    # "_result":Ljava/lang/CharSequence;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2134
    .line 2888
    if-eqz v64, :cond_10d

    #@2136
    .line 2889
    const/4 v4, 0x1

    #@2137
    move-object/from16 v0, p3

    #@2139
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@213c
    .line 2890
    const/4 v4, 0x1

    #@213d
    move-object/from16 v0, v64

    #@213f
    move-object/from16 v1, p3

    #@2141
    invoke-static {v0, v1, v4}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    #@2144
    .line 2895
    :goto_10d
    const/4 v4, 0x1

    #@2145
    return v4

    #@2146
    .line 2884
    .end local v64    # "_result":Ljava/lang/CharSequence;
    :cond_10c
    const/4 v15, 0x0

    #@2147
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_10c

    #@2148
    .line 2893
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v64    # "_result":Ljava/lang/CharSequence;
    :cond_10d
    const/4 v4, 0x0

    #@2149
    move-object/from16 v0, p3

    #@214b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@214e
    goto :goto_10d

    #@214f
    .line 2899
    .end local v64    # "_result":Ljava/lang/CharSequence;
    :sswitch_af
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@2152
    move-object/from16 v0, p2

    #@2154
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2157
    .line 2901
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@215a
    move-result v4

    #@215b
    if-eqz v4, :cond_10e

    #@215d
    .line 2902
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@215f
    move-object/from16 v0, p2

    #@2161
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2164
    move-result-object v15

    #@2165
    check-cast v15, Landroid/content/ComponentName;

    #@2167
    .line 2908
    :goto_10e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@216a
    move-result v6

    #@216b
    .line 2909
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    #@216d
    invoke-virtual {v0, v15, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->getShortSupportMessageForUser(Landroid/content/ComponentName;I)Ljava/lang/CharSequence;

    #@2170
    move-result-object v64

    #@2171
    .line 2910
    .restart local v64    # "_result":Ljava/lang/CharSequence;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2174
    .line 2911
    if-eqz v64, :cond_10f

    #@2176
    .line 2912
    const/4 v4, 0x1

    #@2177
    move-object/from16 v0, p3

    #@2179
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@217c
    .line 2913
    const/4 v4, 0x1

    #@217d
    move-object/from16 v0, v64

    #@217f
    move-object/from16 v1, p3

    #@2181
    invoke-static {v0, v1, v4}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    #@2184
    .line 2918
    :goto_10f
    const/4 v4, 0x1

    #@2185
    return v4

    #@2186
    .line 2905
    .end local v6    # "_arg1":I
    .end local v64    # "_result":Ljava/lang/CharSequence;
    :cond_10e
    const/4 v15, 0x0

    #@2187
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_10e

    #@2188
    .line 2916
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v6    # "_arg1":I
    .restart local v64    # "_result":Ljava/lang/CharSequence;
    :cond_10f
    const/4 v4, 0x0

    #@2189
    move-object/from16 v0, p3

    #@218b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@218e
    goto :goto_10f

    #@218f
    .line 2922
    .end local v6    # "_arg1":I
    .end local v64    # "_result":Ljava/lang/CharSequence;
    :sswitch_b0
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@2192
    move-object/from16 v0, p2

    #@2194
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2197
    .line 2924
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@219a
    move-result v4

    #@219b
    if-eqz v4, :cond_110

    #@219d
    .line 2925
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@219f
    move-object/from16 v0, p2

    #@21a1
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@21a4
    move-result-object v15

    #@21a5
    check-cast v15, Landroid/content/ComponentName;

    #@21a7
    .line 2931
    :goto_110
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@21aa
    move-result v6

    #@21ab
    .line 2932
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    #@21ad
    invoke-virtual {v0, v15, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->getLongSupportMessageForUser(Landroid/content/ComponentName;I)Ljava/lang/CharSequence;

    #@21b0
    move-result-object v64

    #@21b1
    .line 2933
    .restart local v64    # "_result":Ljava/lang/CharSequence;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@21b4
    .line 2934
    if-eqz v64, :cond_111

    #@21b6
    .line 2935
    const/4 v4, 0x1

    #@21b7
    move-object/from16 v0, p3

    #@21b9
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@21bc
    .line 2936
    const/4 v4, 0x1

    #@21bd
    move-object/from16 v0, v64

    #@21bf
    move-object/from16 v1, p3

    #@21c1
    invoke-static {v0, v1, v4}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    #@21c4
    .line 2941
    :goto_111
    const/4 v4, 0x1

    #@21c5
    return v4

    #@21c6
    .line 2928
    .end local v6    # "_arg1":I
    .end local v64    # "_result":Ljava/lang/CharSequence;
    :cond_110
    const/4 v15, 0x0

    #@21c7
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_110

    #@21c8
    .line 2939
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v6    # "_arg1":I
    .restart local v64    # "_result":Ljava/lang/CharSequence;
    :cond_111
    const/4 v4, 0x0

    #@21c9
    move-object/from16 v0, p3

    #@21cb
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@21ce
    goto :goto_111

    #@21cf
    .line 2945
    .end local v6    # "_arg1":I
    .end local v64    # "_result":Ljava/lang/CharSequence;
    :sswitch_b1
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@21d2
    move-object/from16 v0, p2

    #@21d4
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@21d7
    .line 2947
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@21da
    move-result v5

    #@21db
    .line 2948
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@21dd
    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->isSeparateProfileChallengeAllowed(I)Z

    #@21e0
    move-result v70

    #@21e1
    .line 2949
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@21e4
    .line 2950
    if-eqz v70, :cond_112

    #@21e6
    const/4 v4, 0x1

    #@21e7
    :goto_112
    move-object/from16 v0, p3

    #@21e9
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@21ec
    .line 2951
    const/4 v4, 0x1

    #@21ed
    return v4

    #@21ee
    .line 2950
    :cond_112
    const/4 v4, 0x0

    #@21ef
    goto :goto_112

    #@21f0
    .line 2955
    .end local v5    # "_arg0":I
    .end local v70    # "_result":Z
    :sswitch_b2
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@21f3
    move-object/from16 v0, p2

    #@21f5
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@21f8
    .line 2957
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@21fb
    move-result v4

    #@21fc
    if-eqz v4, :cond_113

    #@21fe
    .line 2958
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2200
    move-object/from16 v0, p2

    #@2202
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2205
    move-result-object v15

    #@2206
    check-cast v15, Landroid/content/ComponentName;

    #@2208
    .line 2964
    :goto_113
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@220b
    move-result v6

    #@220c
    .line 2965
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    #@220e
    invoke-virtual {v0, v15, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setOrganizationColor(Landroid/content/ComponentName;I)V

    #@2211
    .line 2966
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2214
    .line 2967
    const/4 v4, 0x1

    #@2215
    return v4

    #@2216
    .line 2961
    .end local v6    # "_arg1":I
    :cond_113
    const/4 v15, 0x0

    #@2217
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_113

    #@2218
    .line 2971
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_b3
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@221b
    move-object/from16 v0, p2

    #@221d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2220
    .line 2973
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2223
    move-result v5

    #@2224
    .line 2975
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2227
    move-result v6

    #@2228
    .line 2976
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    #@222a
    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setOrganizationColorForUser(II)V

    #@222d
    .line 2977
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2230
    .line 2978
    const/4 v4, 0x1

    #@2231
    return v4

    #@2232
    .line 2982
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    :sswitch_b4
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@2235
    move-object/from16 v0, p2

    #@2237
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@223a
    .line 2984
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@223d
    move-result v4

    #@223e
    if-eqz v4, :cond_114

    #@2240
    .line 2985
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2242
    move-object/from16 v0, p2

    #@2244
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2247
    move-result-object v15

    #@2248
    check-cast v15, Landroid/content/ComponentName;

    #@224a
    .line 2990
    :goto_114
    move-object/from16 v0, p0

    #@224c
    invoke-virtual {v0, v15}, Landroid/app/admin/IDevicePolicyManager$Stub;->getOrganizationColor(Landroid/content/ComponentName;)I

    #@224f
    move-result v56

    #@2250
    .line 2991
    .restart local v56    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2253
    .line 2992
    move-object/from16 v0, p3

    #@2255
    move/from16 v1, v56

    #@2257
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@225a
    .line 2993
    const/4 v4, 0x1

    #@225b
    return v4

    #@225c
    .line 2988
    .end local v56    # "_result":I
    :cond_114
    const/4 v15, 0x0

    #@225d
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_114

    #@225e
    .line 2997
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_b5
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@2261
    move-object/from16 v0, p2

    #@2263
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2266
    .line 2999
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2269
    move-result v5

    #@226a
    .line 3000
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@226c
    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getOrganizationColorForUser(I)I

    #@226f
    move-result v56

    #@2270
    .line 3001
    .restart local v56    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2273
    .line 3002
    move-object/from16 v0, p3

    #@2275
    move/from16 v1, v56

    #@2277
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@227a
    .line 3003
    const/4 v4, 0x1

    #@227b
    return v4

    #@227c
    .line 3007
    .end local v5    # "_arg0":I
    .end local v56    # "_result":I
    :sswitch_b6
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@227f
    move-object/from16 v0, p2

    #@2281
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2284
    .line 3009
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2287
    move-result v4

    #@2288
    if-eqz v4, :cond_115

    #@228a
    .line 3010
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@228c
    move-object/from16 v0, p2

    #@228e
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2291
    move-result-object v15

    #@2292
    check-cast v15, Landroid/content/ComponentName;

    #@2294
    .line 3016
    :goto_115
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2297
    move-result v4

    #@2298
    if-eqz v4, :cond_116

    #@229a
    .line 3017
    sget-object v4, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    #@229c
    move-object/from16 v0, p2

    #@229e
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@22a1
    move-result-object v46

    #@22a2
    check-cast v46, Ljava/lang/CharSequence;

    #@22a4
    .line 3022
    :goto_116
    move-object/from16 v0, p0

    #@22a6
    move-object/from16 v1, v46

    #@22a8
    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setOrganizationName(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V

    #@22ab
    .line 3023
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@22ae
    .line 3024
    const/4 v4, 0x1

    #@22af
    return v4

    #@22b0
    .line 3013
    :cond_115
    const/4 v15, 0x0

    #@22b1
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_115

    #@22b2
    .line 3020
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :cond_116
    const/16 v46, 0x0

    #@22b4
    .restart local v46    # "_arg1":Ljava/lang/CharSequence;
    goto :goto_116

    #@22b5
    .line 3028
    .end local v46    # "_arg1":Ljava/lang/CharSequence;
    :sswitch_b7
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@22b8
    move-object/from16 v0, p2

    #@22ba
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@22bd
    .line 3030
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@22c0
    move-result v4

    #@22c1
    if-eqz v4, :cond_117

    #@22c3
    .line 3031
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@22c5
    move-object/from16 v0, p2

    #@22c7
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@22ca
    move-result-object v15

    #@22cb
    check-cast v15, Landroid/content/ComponentName;

    #@22cd
    .line 3036
    :goto_117
    move-object/from16 v0, p0

    #@22cf
    invoke-virtual {v0, v15}, Landroid/app/admin/IDevicePolicyManager$Stub;->getOrganizationName(Landroid/content/ComponentName;)Ljava/lang/CharSequence;

    #@22d2
    move-result-object v64

    #@22d3
    .line 3037
    .restart local v64    # "_result":Ljava/lang/CharSequence;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@22d6
    .line 3038
    if-eqz v64, :cond_118

    #@22d8
    .line 3039
    const/4 v4, 0x1

    #@22d9
    move-object/from16 v0, p3

    #@22db
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@22de
    .line 3040
    const/4 v4, 0x1

    #@22df
    move-object/from16 v0, v64

    #@22e1
    move-object/from16 v1, p3

    #@22e3
    invoke-static {v0, v1, v4}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    #@22e6
    .line 3045
    :goto_118
    const/4 v4, 0x1

    #@22e7
    return v4

    #@22e8
    .line 3034
    .end local v64    # "_result":Ljava/lang/CharSequence;
    :cond_117
    const/4 v15, 0x0

    #@22e9
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_117

    #@22ea
    .line 3043
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v64    # "_result":Ljava/lang/CharSequence;
    :cond_118
    const/4 v4, 0x0

    #@22eb
    move-object/from16 v0, p3

    #@22ed
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@22f0
    goto :goto_118

    #@22f1
    .line 3049
    .end local v64    # "_result":Ljava/lang/CharSequence;
    :sswitch_b8
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@22f4
    move-object/from16 v0, p2

    #@22f6
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@22f9
    .line 3051
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@22fc
    move-result v5

    #@22fd
    .line 3052
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@22ff
    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getOrganizationNameForUser(I)Ljava/lang/CharSequence;

    #@2302
    move-result-object v64

    #@2303
    .line 3053
    .restart local v64    # "_result":Ljava/lang/CharSequence;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2306
    .line 3054
    if-eqz v64, :cond_119

    #@2308
    .line 3055
    const/4 v4, 0x1

    #@2309
    move-object/from16 v0, p3

    #@230b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@230e
    .line 3056
    const/4 v4, 0x1

    #@230f
    move-object/from16 v0, v64

    #@2311
    move-object/from16 v1, p3

    #@2313
    invoke-static {v0, v1, v4}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    #@2316
    .line 3061
    :goto_119
    const/4 v4, 0x1

    #@2317
    return v4

    #@2318
    .line 3059
    :cond_119
    const/4 v4, 0x0

    #@2319
    move-object/from16 v0, p3

    #@231b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@231e
    goto :goto_119

    #@231f
    .line 3065
    .end local v5    # "_arg0":I
    .end local v64    # "_result":Ljava/lang/CharSequence;
    :sswitch_b9
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@2322
    move-object/from16 v0, p2

    #@2324
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2327
    .line 3066
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getUserProvisioningState()I

    #@232a
    move-result v56

    #@232b
    .line 3067
    .restart local v56    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@232e
    .line 3068
    move-object/from16 v0, p3

    #@2330
    move/from16 v1, v56

    #@2332
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@2335
    .line 3069
    const/4 v4, 0x1

    #@2336
    return v4

    #@2337
    .line 3073
    .end local v56    # "_result":I
    :sswitch_ba
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@233a
    move-object/from16 v0, p2

    #@233c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@233f
    .line 3075
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2342
    move-result v5

    #@2343
    .line 3077
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2346
    move-result v6

    #@2347
    .line 3078
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    #@2349
    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setUserProvisioningState(II)V

    #@234c
    .line 3079
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@234f
    .line 3080
    const/4 v4, 0x1

    #@2350
    return v4

    #@2351
    .line 3084
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    :sswitch_bb
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@2354
    move-object/from16 v0, p2

    #@2356
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2359
    .line 3086
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@235c
    move-result v4

    #@235d
    if-eqz v4, :cond_11a

    #@235f
    .line 3087
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2361
    move-object/from16 v0, p2

    #@2363
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2366
    move-result-object v15

    #@2367
    check-cast v15, Landroid/content/ComponentName;

    #@2369
    .line 3093
    :goto_11a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    #@236c
    move-result-object v48

    #@236d
    .line 3094
    .restart local v48    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    #@236f
    move-object/from16 v1, v48

    #@2371
    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAffiliationIds(Landroid/content/ComponentName;Ljava/util/List;)V

    #@2374
    .line 3095
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2377
    .line 3096
    const/4 v4, 0x1

    #@2378
    return v4

    #@2379
    .line 3090
    .end local v48    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_11a
    const/4 v15, 0x0

    #@237a
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_11a

    #@237b
    .line 3100
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_bc
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@237e
    move-object/from16 v0, p2

    #@2380
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2383
    .line 3101
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->isAffiliatedUser()Z

    #@2386
    move-result v70

    #@2387
    .line 3102
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@238a
    .line 3103
    if-eqz v70, :cond_11b

    #@238c
    const/4 v4, 0x1

    #@238d
    :goto_11b
    move-object/from16 v0, p3

    #@238f
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@2392
    .line 3104
    const/4 v4, 0x1

    #@2393
    return v4

    #@2394
    .line 3103
    :cond_11b
    const/4 v4, 0x0

    #@2395
    goto :goto_11b

    #@2396
    .line 3108
    .end local v70    # "_result":Z
    :sswitch_bd
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@2399
    move-object/from16 v0, p2

    #@239b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@239e
    .line 3110
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@23a1
    move-result v4

    #@23a2
    if-eqz v4, :cond_11c

    #@23a4
    .line 3111
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@23a6
    move-object/from16 v0, p2

    #@23a8
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@23ab
    move-result-object v15

    #@23ac
    check-cast v15, Landroid/content/ComponentName;

    #@23ae
    .line 3117
    :goto_11c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@23b1
    move-result v4

    #@23b2
    if-eqz v4, :cond_11d

    #@23b4
    const/16 v49, 0x1

    #@23b6
    .line 3118
    .restart local v49    # "_arg1":Z
    :goto_11d
    move-object/from16 v0, p0

    #@23b8
    move/from16 v1, v49

    #@23ba
    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setSecurityLoggingEnabled(Landroid/content/ComponentName;Z)V

    #@23bd
    .line 3119
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@23c0
    .line 3120
    const/4 v4, 0x1

    #@23c1
    return v4

    #@23c2
    .line 3114
    .end local v49    # "_arg1":Z
    :cond_11c
    const/4 v15, 0x0

    #@23c3
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_11c

    #@23c4
    .line 3117
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :cond_11d
    const/16 v49, 0x0

    #@23c6
    goto :goto_11d

    #@23c7
    .line 3124
    :sswitch_be
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@23ca
    move-object/from16 v0, p2

    #@23cc
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@23cf
    .line 3126
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@23d2
    move-result v4

    #@23d3
    if-eqz v4, :cond_11e

    #@23d5
    .line 3127
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@23d7
    move-object/from16 v0, p2

    #@23d9
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@23dc
    move-result-object v15

    #@23dd
    check-cast v15, Landroid/content/ComponentName;

    #@23df
    .line 3132
    :goto_11e
    move-object/from16 v0, p0

    #@23e1
    invoke-virtual {v0, v15}, Landroid/app/admin/IDevicePolicyManager$Stub;->isSecurityLoggingEnabled(Landroid/content/ComponentName;)Z

    #@23e4
    move-result v70

    #@23e5
    .line 3133
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@23e8
    .line 3134
    if-eqz v70, :cond_11f

    #@23ea
    const/4 v4, 0x1

    #@23eb
    :goto_11f
    move-object/from16 v0, p3

    #@23ed
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@23f0
    .line 3135
    const/4 v4, 0x1

    #@23f1
    return v4

    #@23f2
    .line 3130
    .end local v70    # "_result":Z
    :cond_11e
    const/4 v15, 0x0

    #@23f3
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_11e

    #@23f4
    .line 3134
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v70    # "_result":Z
    :cond_11f
    const/4 v4, 0x0

    #@23f5
    goto :goto_11f

    #@23f6
    .line 3139
    .end local v70    # "_result":Z
    :sswitch_bf
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@23f9
    move-object/from16 v0, p2

    #@23fb
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@23fe
    .line 3141
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2401
    move-result v4

    #@2402
    if-eqz v4, :cond_120

    #@2404
    .line 3142
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2406
    move-object/from16 v0, p2

    #@2408
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@240b
    move-result-object v15

    #@240c
    check-cast v15, Landroid/content/ComponentName;

    #@240e
    .line 3147
    :goto_120
    move-object/from16 v0, p0

    #@2410
    invoke-virtual {v0, v15}, Landroid/app/admin/IDevicePolicyManager$Stub;->retrieveSecurityLogs(Landroid/content/ComponentName;)Landroid/content/pm/ParceledListSlice;

    #@2413
    move-result-object v61

    #@2414
    .line 3148
    .local v61, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2417
    .line 3149
    if-eqz v61, :cond_121

    #@2419
    .line 3150
    const/4 v4, 0x1

    #@241a
    move-object/from16 v0, p3

    #@241c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@241f
    .line 3151
    const/4 v4, 0x1

    #@2420
    move-object/from16 v0, v61

    #@2422
    move-object/from16 v1, p3

    #@2424
    invoke-virtual {v0, v1, v4}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    #@2427
    .line 3156
    :goto_121
    const/4 v4, 0x1

    #@2428
    return v4

    #@2429
    .line 3145
    .end local v61    # "_result":Landroid/content/pm/ParceledListSlice;
    :cond_120
    const/4 v15, 0x0

    #@242a
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_120

    #@242b
    .line 3154
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v61    # "_result":Landroid/content/pm/ParceledListSlice;
    :cond_121
    const/4 v4, 0x0

    #@242c
    move-object/from16 v0, p3

    #@242e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@2431
    goto :goto_121

    #@2432
    .line 3160
    .end local v61    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_c0
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@2435
    move-object/from16 v0, p2

    #@2437
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@243a
    .line 3162
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@243d
    move-result v4

    #@243e
    if-eqz v4, :cond_122

    #@2440
    .line 3163
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2442
    move-object/from16 v0, p2

    #@2444
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2447
    move-result-object v15

    #@2448
    check-cast v15, Landroid/content/ComponentName;

    #@244a
    .line 3168
    :goto_122
    move-object/from16 v0, p0

    #@244c
    invoke-virtual {v0, v15}, Landroid/app/admin/IDevicePolicyManager$Stub;->retrievePreRebootSecurityLogs(Landroid/content/ComponentName;)Landroid/content/pm/ParceledListSlice;

    #@244f
    move-result-object v61

    #@2450
    .line 3169
    .restart local v61    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2453
    .line 3170
    if-eqz v61, :cond_123

    #@2455
    .line 3171
    const/4 v4, 0x1

    #@2456
    move-object/from16 v0, p3

    #@2458
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@245b
    .line 3172
    const/4 v4, 0x1

    #@245c
    move-object/from16 v0, v61

    #@245e
    move-object/from16 v1, p3

    #@2460
    invoke-virtual {v0, v1, v4}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    #@2463
    .line 3177
    :goto_123
    const/4 v4, 0x1

    #@2464
    return v4

    #@2465
    .line 3166
    .end local v61    # "_result":Landroid/content/pm/ParceledListSlice;
    :cond_122
    const/4 v15, 0x0

    #@2466
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_122

    #@2467
    .line 3175
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v61    # "_result":Landroid/content/pm/ParceledListSlice;
    :cond_123
    const/4 v4, 0x0

    #@2468
    move-object/from16 v0, p3

    #@246a
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@246d
    goto :goto_123

    #@246e
    .line 3181
    .end local v61    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_c1
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@2471
    move-object/from16 v0, p2

    #@2473
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2476
    .line 3183
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2479
    move-result-object v27

    #@247a
    .line 3184
    .restart local v27    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@247c
    move-object/from16 v1, v27

    #@247e
    invoke-virtual {v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->isUninstallInQueue(Ljava/lang/String;)Z

    #@2481
    move-result v70

    #@2482
    .line 3185
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2485
    .line 3186
    if-eqz v70, :cond_124

    #@2487
    const/4 v4, 0x1

    #@2488
    :goto_124
    move-object/from16 v0, p3

    #@248a
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@248d
    .line 3187
    const/4 v4, 0x1

    #@248e
    return v4

    #@248f
    .line 3186
    :cond_124
    const/4 v4, 0x0

    #@2490
    goto :goto_124

    #@2491
    .line 3191
    .end local v27    # "_arg0":Ljava/lang/String;
    .end local v70    # "_result":Z
    :sswitch_c2
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@2494
    move-object/from16 v0, p2

    #@2496
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2499
    .line 3193
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@249c
    move-result-object v27

    #@249d
    .line 3194
    .restart local v27    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@249f
    move-object/from16 v1, v27

    #@24a1
    invoke-virtual {v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->uninstallPackageWithActiveAdmins(Ljava/lang/String;)V

    #@24a4
    .line 3195
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@24a7
    .line 3196
    const/4 v4, 0x1

    #@24a8
    return v4

    #@24a9
    .line 3200
    .end local v27    # "_arg0":Ljava/lang/String;
    :sswitch_c3
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@24ac
    move-object/from16 v0, p2

    #@24ae
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@24b1
    .line 3201
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->isDeviceProvisioned()Z

    #@24b4
    move-result v70

    #@24b5
    .line 3202
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@24b8
    .line 3203
    if-eqz v70, :cond_125

    #@24ba
    const/4 v4, 0x1

    #@24bb
    :goto_125
    move-object/from16 v0, p3

    #@24bd
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@24c0
    .line 3204
    const/4 v4, 0x1

    #@24c1
    return v4

    #@24c2
    .line 3203
    :cond_125
    const/4 v4, 0x0

    #@24c3
    goto :goto_125

    #@24c4
    .line 3208
    .end local v70    # "_result":Z
    :sswitch_c4
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@24c7
    move-object/from16 v0, p2

    #@24c9
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@24cc
    .line 3209
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->isDeviceProvisioningConfigApplied()Z

    #@24cf
    move-result v70

    #@24d0
    .line 3210
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@24d3
    .line 3211
    if-eqz v70, :cond_126

    #@24d5
    const/4 v4, 0x1

    #@24d6
    :goto_126
    move-object/from16 v0, p3

    #@24d8
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@24db
    .line 3212
    const/4 v4, 0x1

    #@24dc
    return v4

    #@24dd
    .line 3211
    :cond_126
    const/4 v4, 0x0

    #@24de
    goto :goto_126

    #@24df
    .line 3216
    .end local v70    # "_result":Z
    :sswitch_c5
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@24e2
    move-object/from16 v0, p2

    #@24e4
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@24e7
    .line 3217
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->setDeviceProvisioningConfigApplied()V

    #@24ea
    .line 3218
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@24ed
    .line 3219
    const/4 v4, 0x1

    #@24ee
    return v4

    #@24ef
    .line 3223
    :sswitch_c6
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@24f2
    move-object/from16 v0, p2

    #@24f4
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@24f7
    .line 3225
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@24fa
    move-result v4

    #@24fb
    if-eqz v4, :cond_127

    #@24fd
    .line 3226
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@24ff
    move-object/from16 v0, p2

    #@2501
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2504
    move-result-object v15

    #@2505
    check-cast v15, Landroid/content/ComponentName;

    #@2507
    .line 3232
    :goto_127
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@250a
    move-result v4

    #@250b
    if-eqz v4, :cond_128

    #@250d
    const/16 v49, 0x1

    #@250f
    .line 3233
    .restart local v49    # "_arg1":Z
    :goto_128
    move-object/from16 v0, p0

    #@2511
    move/from16 v1, v49

    #@2513
    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setBackupServiceEnabled(Landroid/content/ComponentName;Z)V

    #@2516
    .line 3234
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2519
    .line 3235
    const/4 v4, 0x1

    #@251a
    return v4

    #@251b
    .line 3229
    .end local v49    # "_arg1":Z
    :cond_127
    const/4 v15, 0x0

    #@251c
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_127

    #@251d
    .line 3232
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :cond_128
    const/16 v49, 0x0

    #@251f
    goto :goto_128

    #@2520
    .line 3239
    :sswitch_c7
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@2523
    move-object/from16 v0, p2

    #@2525
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2528
    .line 3241
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@252b
    move-result v4

    #@252c
    if-eqz v4, :cond_129

    #@252e
    .line 3242
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2530
    move-object/from16 v0, p2

    #@2532
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2535
    move-result-object v15

    #@2536
    check-cast v15, Landroid/content/ComponentName;

    #@2538
    .line 3247
    :goto_129
    move-object/from16 v0, p0

    #@253a
    invoke-virtual {v0, v15}, Landroid/app/admin/IDevicePolicyManager$Stub;->isBackupServiceEnabled(Landroid/content/ComponentName;)Z

    #@253d
    move-result v70

    #@253e
    .line 3248
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2541
    .line 3249
    if-eqz v70, :cond_12a

    #@2543
    const/4 v4, 0x1

    #@2544
    :goto_12a
    move-object/from16 v0, p3

    #@2546
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@2549
    .line 3250
    const/4 v4, 0x1

    #@254a
    return v4

    #@254b
    .line 3245
    .end local v70    # "_result":Z
    :cond_129
    const/4 v15, 0x0

    #@254c
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_129

    #@254d
    .line 3249
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v70    # "_result":Z
    :cond_12a
    const/4 v4, 0x0

    #@254e
    goto :goto_12a

    #@254f
    .line 42
    nop

    #@2550
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
        0xa6 -> :sswitch_a6
        0xa7 -> :sswitch_a7
        0xa8 -> :sswitch_a8
        0xa9 -> :sswitch_a9
        0xaa -> :sswitch_aa
        0xab -> :sswitch_ab
        0xac -> :sswitch_ac
        0xad -> :sswitch_ad
        0xae -> :sswitch_ae
        0xaf -> :sswitch_af
        0xb0 -> :sswitch_b0
        0xb1 -> :sswitch_b1
        0xb2 -> :sswitch_b2
        0xb3 -> :sswitch_b3
        0xb4 -> :sswitch_b4
        0xb5 -> :sswitch_b5
        0xb6 -> :sswitch_b6
        0xb7 -> :sswitch_b7
        0xb8 -> :sswitch_b8
        0xb9 -> :sswitch_b9
        0xba -> :sswitch_ba
        0xbb -> :sswitch_bb
        0xbc -> :sswitch_bc
        0xbd -> :sswitch_bd
        0xbe -> :sswitch_be
        0xbf -> :sswitch_bf
        0xc0 -> :sswitch_c0
        0xc1 -> :sswitch_c1
        0xc2 -> :sswitch_c2
        0xc3 -> :sswitch_c3
        0xc4 -> :sswitch_c4
        0xc5 -> :sswitch_c5
        0xc6 -> :sswitch_c6
        0xc7 -> :sswitch_c7
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
