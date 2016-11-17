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

.field static final TRANSACTION_addCrossProfileIntentFilter:I = 0x65

.field static final TRANSACTION_addCrossProfileWidgetProvider:I = 0x8f

.field static final TRANSACTION_addPersistentPreferredActivity:I = 0x5a

.field static final TRANSACTION_approveCaCert:I = 0x51

.field static final TRANSACTION_choosePrivateKeyAlias:I = 0x55

.field static final TRANSACTION_clearCrossProfileIntentFilters:I = 0x66

.field static final TRANSACTION_clearDeviceOwner:I = 0x41

.field static final TRANSACTION_clearPackagePersistentPreferredActivities:I = 0x5b

.field static final TRANSACTION_clearProfileOwner:I = 0x48

.field static final TRANSACTION_createAndManageUser:I = 0x71

.field static final TRANSACTION_enableSystemApp:I = 0x74

.field static final TRANSACTION_enableSystemAppWithIntent:I = 0x75

.field static final TRANSACTION_enforceCanManageCaCerts:I = 0x50

.field static final TRANSACTION_forceRemoveActiveAdmin:I = 0x35

.field static final TRANSACTION_getAccountTypesWithManagementDisabled:I = 0x77

.field static final TRANSACTION_getAccountTypesWithManagementDisabledAsUser:I = 0x78

.field static final TRANSACTION_getActiveAdmins:I = 0x31

.field static final TRANSACTION_getAlwaysOnVpnPackage:I = 0x59

.field static final TRANSACTION_getApplicationRestrictions:I = 0x5d

.field static final TRANSACTION_getApplicationRestrictionsManagingPackage:I = 0x5f

.field static final TRANSACTION_getAutoTimeRequired:I = 0x93

.field static final TRANSACTION_getBluetoothContactSharingDisabled:I = 0x8b

.field static final TRANSACTION_getBluetoothContactSharingDisabledForUser:I = 0x8c

.field static final TRANSACTION_getCameraDisabled:I = 0x2a

.field static final TRANSACTION_getCertInstallerPackage:I = 0x57

.field static final TRANSACTION_getCrossProfileCallerIdDisabled:I = 0x84

.field static final TRANSACTION_getCrossProfileCallerIdDisabledForUser:I = 0x85

.field static final TRANSACTION_getCrossProfileContactsSearchDisabled:I = 0x87

.field static final TRANSACTION_getCrossProfileContactsSearchDisabledForUser:I = 0x88

.field static final TRANSACTION_getCrossProfileWidgetProviders:I = 0x91

.field static final TRANSACTION_getCurrentFailedPasswordAttempts:I = 0x18

.field static final TRANSACTION_getDeviceOwnerComponent:I = 0x3f

.field static final TRANSACTION_getDeviceOwnerLockScreenInfo:I = 0x4b

.field static final TRANSACTION_getDeviceOwnerName:I = 0x40

.field static final TRANSACTION_getDeviceOwnerUserId:I = 0x42

.field static final TRANSACTION_getDoNotAskCredentialsOnBoot:I = 0x9c

.field static final TRANSACTION_getForceEphemeralUsers:I = 0x95

.field static final TRANSACTION_getGlobalProxyAdmin:I = 0x23

.field static final TRANSACTION_getKeepUninstalledPackages:I = 0xa4

.field static final TRANSACTION_getKeyguardDisabledFeatures:I = 0x2e

.field static final TRANSACTION_getLockTaskPackages:I = 0x7a

.field static final TRANSACTION_getLongSupportMessage:I = 0xac

.field static final TRANSACTION_getLongSupportMessageForUser:I = 0xae

.field static final TRANSACTION_getMaximumFailedPasswordsForWipe:I = 0x1b

.field static final TRANSACTION_getMaximumTimeToLock:I = 0x1e

.field static final TRANSACTION_getMaximumTimeToLockForUserAndProfiles:I = 0x1f

.field static final TRANSACTION_getOrganizationColor:I = 0xb2

.field static final TRANSACTION_getOrganizationColorForUser:I = 0xb3

.field static final TRANSACTION_getOrganizationName:I = 0xb5

.field static final TRANSACTION_getOrganizationNameForUser:I = 0xb6

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

.field static final TRANSACTION_getPermissionGrantState:I = 0xa1

.field static final TRANSACTION_getPermissionPolicy:I = 0x9f

.field static final TRANSACTION_getPermittedAccessibilityServices:I = 0x68

.field static final TRANSACTION_getPermittedAccessibilityServicesForUser:I = 0x69

.field static final TRANSACTION_getPermittedInputMethods:I = 0x6c

.field static final TRANSACTION_getPermittedInputMethodsForCurrentUser:I = 0x6d

.field static final TRANSACTION_getProfileOwner:I = 0x44

.field static final TRANSACTION_getProfileOwnerName:I = 0x45

.field static final TRANSACTION_getProfileWithMinimumFailedPasswordsForWipe:I = 0x19

.field static final TRANSACTION_getRemoveWarning:I = 0x33

.field static final TRANSACTION_getRestrictionsProvider:I = 0x62

.field static final TRANSACTION_getScreenCaptureDisabled:I = 0x2c

.field static final TRANSACTION_getShortSupportMessage:I = 0xaa

.field static final TRANSACTION_getShortSupportMessageForUser:I = 0xad

.field static final TRANSACTION_getStorageEncryption:I = 0x26

.field static final TRANSACTION_getStorageEncryptionStatus:I = 0x27

.field static final TRANSACTION_getSystemUpdatePolicy:I = 0x99

.field static final TRANSACTION_getTrustAgentConfiguration:I = 0x8e

.field static final TRANSACTION_getUserProvisioningState:I = 0xb7

.field static final TRANSACTION_getUserRestrictions:I = 0x64

.field static final TRANSACTION_getWifiMacAddress:I = 0xa7

.field static final TRANSACTION_hasGrantedPolicy:I = 0x36

.field static final TRANSACTION_hasUserSetupCompleted:I = 0x49

.field static final TRANSACTION_installCaCert:I = 0x4e

.field static final TRANSACTION_installKeyPair:I = 0x53

.field static final TRANSACTION_isAccessibilityServicePermittedByAdmin:I = 0x6a

.field static final TRANSACTION_isActivePasswordSufficient:I = 0x16

.field static final TRANSACTION_isAdminActive:I = 0x30

.field static final TRANSACTION_isAffiliatedUser:I = 0xba

.field static final TRANSACTION_isApplicationHidden:I = 0x70

.field static final TRANSACTION_isCaCertApproved:I = 0x52

.field static final TRANSACTION_isCallerApplicationRestrictionsManagingPackage:I = 0x60

.field static final TRANSACTION_isInputMethodPermittedByAdmin:I = 0x6e

.field static final TRANSACTION_isLockTaskPermitted:I = 0x7b

.field static final TRANSACTION_isManagedProfile:I = 0xa5

.field static final TRANSACTION_isMasterVolumeMuted:I = 0x7f

.field static final TRANSACTION_isPackageSuspended:I = 0x4d

.field static final TRANSACTION_isProfileActivePasswordSufficientForParent:I = 0x17

.field static final TRANSACTION_isProvisioningAllowed:I = 0xa2

.field static final TRANSACTION_isRemovingAdmin:I = 0x96

.field static final TRANSACTION_isSecurityLoggingEnabled:I = 0xbc

.field static final TRANSACTION_isSeparateProfileChallengeAllowed:I = 0xaf

.field static final TRANSACTION_isSystemOnlyUser:I = 0xa6

.field static final TRANSACTION_isUninstallBlocked:I = 0x82

.field static final TRANSACTION_isUninstallInQueue:I = 0xbf

.field static final TRANSACTION_lockNow:I = 0x20

.field static final TRANSACTION_notifyLockTaskModeChanged:I = 0x80

.field static final TRANSACTION_notifyPendingSystemUpdate:I = 0x9d

.field static final TRANSACTION_packageHasActiveAdmins:I = 0x32

.field static final TRANSACTION_reboot:I = 0xa8

.field static final TRANSACTION_removeActiveAdmin:I = 0x34

.field static final TRANSACTION_removeCrossProfileWidgetProvider:I = 0x90

.field static final TRANSACTION_removeKeyPair:I = 0x54

.field static final TRANSACTION_removeUser:I = 0x72

.field static final TRANSACTION_reportFailedFingerprintAttempt:I = 0x3a

.field static final TRANSACTION_reportFailedPasswordAttempt:I = 0x38

.field static final TRANSACTION_reportKeyguardDismissed:I = 0x3c

.field static final TRANSACTION_reportKeyguardSecured:I = 0x3d

.field static final TRANSACTION_reportSuccessfulFingerprintAttempt:I = 0x3b

.field static final TRANSACTION_reportSuccessfulPasswordAttempt:I = 0x39

.field static final TRANSACTION_requestBugreport:I = 0x28

.field static final TRANSACTION_resetPassword:I = 0x1c

.field static final TRANSACTION_retrievePreRebootSecurityLogs:I = 0xbe

.field static final TRANSACTION_retrieveSecurityLogs:I = 0xbd

.field static final TRANSACTION_setAccountManagementDisabled:I = 0x76

.field static final TRANSACTION_setActiveAdmin:I = 0x2f

.field static final TRANSACTION_setActivePasswordState:I = 0x37

.field static final TRANSACTION_setAffiliationIds:I = 0xb9

.field static final TRANSACTION_setAlwaysOnVpnPackage:I = 0x58

.field static final TRANSACTION_setApplicationHidden:I = 0x6f

.field static final TRANSACTION_setApplicationRestrictions:I = 0x5c

.field static final TRANSACTION_setApplicationRestrictionsManagingPackage:I = 0x5e

.field static final TRANSACTION_setAutoTimeRequired:I = 0x92

.field static final TRANSACTION_setBluetoothContactSharingDisabled:I = 0x8a

.field static final TRANSACTION_setCameraDisabled:I = 0x29

.field static final TRANSACTION_setCertInstallerPackage:I = 0x56

.field static final TRANSACTION_setCrossProfileCallerIdDisabled:I = 0x83

.field static final TRANSACTION_setCrossProfileContactsSearchDisabled:I = 0x86

.field static final TRANSACTION_setDeviceOwner:I = 0x3e

.field static final TRANSACTION_setDeviceOwnerLockScreenInfo:I = 0x4a

.field static final TRANSACTION_setForceEphemeralUsers:I = 0x94

.field static final TRANSACTION_setGlobalProxy:I = 0x22

.field static final TRANSACTION_setGlobalSetting:I = 0x7c

.field static final TRANSACTION_setKeepUninstalledPackages:I = 0xa3

.field static final TRANSACTION_setKeyguardDisabled:I = 0x9a

.field static final TRANSACTION_setKeyguardDisabledFeatures:I = 0x2d

.field static final TRANSACTION_setLockTaskPackages:I = 0x79

.field static final TRANSACTION_setLongSupportMessage:I = 0xab

.field static final TRANSACTION_setMasterVolumeMuted:I = 0x7e

.field static final TRANSACTION_setMaximumFailedPasswordsForWipe:I = 0x1a

.field static final TRANSACTION_setMaximumTimeToLock:I = 0x1d

.field static final TRANSACTION_setOrganizationColor:I = 0xb0

.field static final TRANSACTION_setOrganizationColorForUser:I = 0xb1

.field static final TRANSACTION_setOrganizationName:I = 0xb4

.field static final TRANSACTION_setPackagesSuspended:I = 0x4c

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

.field static final TRANSACTION_setPermissionGrantState:I = 0xa0

.field static final TRANSACTION_setPermissionPolicy:I = 0x9e

.field static final TRANSACTION_setPermittedAccessibilityServices:I = 0x67

.field static final TRANSACTION_setPermittedInputMethods:I = 0x6b

.field static final TRANSACTION_setProfileEnabled:I = 0x46

.field static final TRANSACTION_setProfileName:I = 0x47

.field static final TRANSACTION_setProfileOwner:I = 0x43

.field static final TRANSACTION_setRecommendedGlobalProxy:I = 0x24

.field static final TRANSACTION_setRestrictionsProvider:I = 0x61

.field static final TRANSACTION_setScreenCaptureDisabled:I = 0x2b

.field static final TRANSACTION_setSecureSetting:I = 0x7d

.field static final TRANSACTION_setSecurityLoggingEnabled:I = 0xbb

.field static final TRANSACTION_setShortSupportMessage:I = 0xa9

.field static final TRANSACTION_setStatusBarDisabled:I = 0x9b

.field static final TRANSACTION_setStorageEncryption:I = 0x25

.field static final TRANSACTION_setSystemUpdatePolicy:I = 0x98

.field static final TRANSACTION_setTrustAgentConfiguration:I = 0x8d

.field static final TRANSACTION_setUninstallBlocked:I = 0x81

.field static final TRANSACTION_setUserIcon:I = 0x97

.field static final TRANSACTION_setUserProvisioningState:I = 0xb8

.field static final TRANSACTION_setUserRestriction:I = 0x63

.field static final TRANSACTION_startManagedQuickContact:I = 0x89

.field static final TRANSACTION_switchUser:I = 0x73

.field static final TRANSACTION_uninstallCaCerts:I = 0x4f

.field static final TRANSACTION_uninstallPackageWithActiveAdmins:I = 0xc0

.field static final TRANSACTION_wipeData:I = 0x21


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
    .line 3162
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
    const/16 v36, 0x1

    #@6a5
    .line 585
    .local v36, "_arg0":Z
    :goto_38
    move-object/from16 v0, p0

    #@6a7
    move/from16 v1, v36

    #@6a9
    invoke-virtual {v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->lockNow(Z)V

    #@6ac
    .line 586
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@6af
    .line 587
    const/4 v4, 0x1

    #@6b0
    return v4

    #@6b1
    .line 584
    .end local v36    # "_arg0":Z
    :cond_38
    const/16 v36, 0x0

    #@6b3
    goto :goto_38

    #@6b4
    .line 591
    :sswitch_21
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@6b7
    move-object/from16 v0, p2

    #@6b9
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6bc
    .line 593
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@6bf
    move-result v5

    #@6c0
    .line 594
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@6c2
    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->wipeData(I)V

    #@6c5
    .line 595
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@6c8
    .line 596
    const/4 v4, 0x1

    #@6c9
    return v4

    #@6ca
    .line 600
    .end local v5    # "_arg0":I
    :sswitch_22
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@6cd
    move-object/from16 v0, p2

    #@6cf
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6d2
    .line 602
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@6d5
    move-result v4

    #@6d6
    if-eqz v4, :cond_39

    #@6d8
    .line 603
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@6da
    move-object/from16 v0, p2

    #@6dc
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@6df
    move-result-object v15

    #@6e0
    check-cast v15, Landroid/content/ComponentName;

    #@6e2
    .line 609
    :goto_39
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@6e5
    move-result-object v23

    #@6e6
    .line 611
    .local v23, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@6e9
    move-result-object v53

    #@6ea
    .line 612
    .local v53, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    #@6ec
    move-object/from16 v1, v23

    #@6ee
    move-object/from16 v2, v53

    #@6f0
    invoke-virtual {v0, v15, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setGlobalProxy(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    #@6f3
    move-result-object v60

    #@6f4
    .line 613
    .local v60, "_result":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@6f7
    .line 614
    if-eqz v60, :cond_3a

    #@6f9
    .line 615
    const/4 v4, 0x1

    #@6fa
    move-object/from16 v0, p3

    #@6fc
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@6ff
    .line 616
    const/4 v4, 0x1

    #@700
    move-object/from16 v0, v60

    #@702
    move-object/from16 v1, p3

    #@704
    invoke-virtual {v0, v1, v4}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    #@707
    .line 621
    :goto_3a
    const/4 v4, 0x1

    #@708
    return v4

    #@709
    .line 606
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v53    # "_arg2":Ljava/lang/String;
    .end local v60    # "_result":Landroid/content/ComponentName;
    :cond_39
    const/4 v15, 0x0

    #@70a
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_39

    #@70b
    .line 619
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v23    # "_arg1":Ljava/lang/String;
    .restart local v53    # "_arg2":Ljava/lang/String;
    .restart local v60    # "_result":Landroid/content/ComponentName;
    :cond_3a
    const/4 v4, 0x0

    #@70c
    move-object/from16 v0, p3

    #@70e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@711
    goto :goto_3a

    #@712
    .line 625
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v53    # "_arg2":Ljava/lang/String;
    .end local v60    # "_result":Landroid/content/ComponentName;
    :sswitch_23
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@715
    move-object/from16 v0, p2

    #@717
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@71a
    .line 627
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@71d
    move-result v5

    #@71e
    .line 628
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@720
    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getGlobalProxyAdmin(I)Landroid/content/ComponentName;

    #@723
    move-result-object v60

    #@724
    .line 629
    .restart local v60    # "_result":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@727
    .line 630
    if-eqz v60, :cond_3b

    #@729
    .line 631
    const/4 v4, 0x1

    #@72a
    move-object/from16 v0, p3

    #@72c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@72f
    .line 632
    const/4 v4, 0x1

    #@730
    move-object/from16 v0, v60

    #@732
    move-object/from16 v1, p3

    #@734
    invoke-virtual {v0, v1, v4}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    #@737
    .line 637
    :goto_3b
    const/4 v4, 0x1

    #@738
    return v4

    #@739
    .line 635
    :cond_3b
    const/4 v4, 0x0

    #@73a
    move-object/from16 v0, p3

    #@73c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@73f
    goto :goto_3b

    #@740
    .line 641
    .end local v5    # "_arg0":I
    .end local v60    # "_result":Landroid/content/ComponentName;
    :sswitch_24
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@743
    move-object/from16 v0, p2

    #@745
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@748
    .line 643
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@74b
    move-result v4

    #@74c
    if-eqz v4, :cond_3c

    #@74e
    .line 644
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@750
    move-object/from16 v0, p2

    #@752
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@755
    move-result-object v15

    #@756
    check-cast v15, Landroid/content/ComponentName;

    #@758
    .line 650
    :goto_3c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@75b
    move-result v4

    #@75c
    if-eqz v4, :cond_3d

    #@75e
    .line 651
    sget-object v4, Landroid/net/ProxyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@760
    move-object/from16 v0, p2

    #@762
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@765
    move-result-object v42

    #@766
    check-cast v42, Landroid/net/ProxyInfo;

    #@768
    .line 656
    :goto_3d
    move-object/from16 v0, p0

    #@76a
    move-object/from16 v1, v42

    #@76c
    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setRecommendedGlobalProxy(Landroid/content/ComponentName;Landroid/net/ProxyInfo;)V

    #@76f
    .line 657
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@772
    .line 658
    const/4 v4, 0x1

    #@773
    return v4

    #@774
    .line 647
    :cond_3c
    const/4 v15, 0x0

    #@775
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_3c

    #@776
    .line 654
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :cond_3d
    const/16 v42, 0x0

    #@778
    .local v42, "_arg1":Landroid/net/ProxyInfo;
    goto :goto_3d

    #@779
    .line 662
    .end local v42    # "_arg1":Landroid/net/ProxyInfo;
    :sswitch_25
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@77c
    move-object/from16 v0, p2

    #@77e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@781
    .line 664
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@784
    move-result v4

    #@785
    if-eqz v4, :cond_3e

    #@787
    .line 665
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@789
    move-object/from16 v0, p2

    #@78b
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@78e
    move-result-object v15

    #@78f
    check-cast v15, Landroid/content/ComponentName;

    #@791
    .line 671
    :goto_3e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@794
    move-result v4

    #@795
    if-eqz v4, :cond_3f

    #@797
    const/16 v49, 0x1

    #@799
    .line 672
    .restart local v49    # "_arg1":Z
    :goto_3f
    move-object/from16 v0, p0

    #@79b
    move/from16 v1, v49

    #@79d
    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setStorageEncryption(Landroid/content/ComponentName;Z)I

    #@7a0
    move-result v56

    #@7a1
    .line 673
    .restart local v56    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@7a4
    .line 674
    move-object/from16 v0, p3

    #@7a6
    move/from16 v1, v56

    #@7a8
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@7ab
    .line 675
    const/4 v4, 0x1

    #@7ac
    return v4

    #@7ad
    .line 668
    .end local v49    # "_arg1":Z
    .end local v56    # "_result":I
    :cond_3e
    const/4 v15, 0x0

    #@7ae
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_3e

    #@7af
    .line 671
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :cond_3f
    const/16 v49, 0x0

    #@7b1
    goto :goto_3f

    #@7b2
    .line 679
    :sswitch_26
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@7b5
    move-object/from16 v0, p2

    #@7b7
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7ba
    .line 681
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@7bd
    move-result v4

    #@7be
    if-eqz v4, :cond_40

    #@7c0
    .line 682
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7c2
    move-object/from16 v0, p2

    #@7c4
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@7c7
    move-result-object v15

    #@7c8
    check-cast v15, Landroid/content/ComponentName;

    #@7ca
    .line 688
    :goto_40
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@7cd
    move-result v6

    #@7ce
    .line 689
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    #@7d0
    invoke-virtual {v0, v15, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->getStorageEncryption(Landroid/content/ComponentName;I)Z

    #@7d3
    move-result v70

    #@7d4
    .line 690
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@7d7
    .line 691
    if-eqz v70, :cond_41

    #@7d9
    const/4 v4, 0x1

    #@7da
    :goto_41
    move-object/from16 v0, p3

    #@7dc
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@7df
    .line 692
    const/4 v4, 0x1

    #@7e0
    return v4

    #@7e1
    .line 685
    .end local v6    # "_arg1":I
    .end local v70    # "_result":Z
    :cond_40
    const/4 v15, 0x0

    #@7e2
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_40

    #@7e3
    .line 691
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v6    # "_arg1":I
    .restart local v70    # "_result":Z
    :cond_41
    const/4 v4, 0x0

    #@7e4
    goto :goto_41

    #@7e5
    .line 696
    .end local v6    # "_arg1":I
    .end local v70    # "_result":Z
    :sswitch_27
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@7e8
    move-object/from16 v0, p2

    #@7ea
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7ed
    .line 698
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@7f0
    move-result-object v27

    #@7f1
    .line 700
    .restart local v27    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@7f4
    move-result v6

    #@7f5
    .line 701
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    #@7f7
    move-object/from16 v1, v27

    #@7f9
    invoke-virtual {v0, v1, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->getStorageEncryptionStatus(Ljava/lang/String;I)I

    #@7fc
    move-result v56

    #@7fd
    .line 702
    .restart local v56    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@800
    .line 703
    move-object/from16 v0, p3

    #@802
    move/from16 v1, v56

    #@804
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@807
    .line 704
    const/4 v4, 0x1

    #@808
    return v4

    #@809
    .line 708
    .end local v6    # "_arg1":I
    .end local v27    # "_arg0":Ljava/lang/String;
    .end local v56    # "_result":I
    :sswitch_28
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@80c
    move-object/from16 v0, p2

    #@80e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@811
    .line 710
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@814
    move-result v4

    #@815
    if-eqz v4, :cond_42

    #@817
    .line 711
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@819
    move-object/from16 v0, p2

    #@81b
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@81e
    move-result-object v15

    #@81f
    check-cast v15, Landroid/content/ComponentName;

    #@821
    .line 716
    :goto_42
    move-object/from16 v0, p0

    #@823
    invoke-virtual {v0, v15}, Landroid/app/admin/IDevicePolicyManager$Stub;->requestBugreport(Landroid/content/ComponentName;)Z

    #@826
    move-result v70

    #@827
    .line 717
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@82a
    .line 718
    if-eqz v70, :cond_43

    #@82c
    const/4 v4, 0x1

    #@82d
    :goto_43
    move-object/from16 v0, p3

    #@82f
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@832
    .line 719
    const/4 v4, 0x1

    #@833
    return v4

    #@834
    .line 714
    .end local v70    # "_result":Z
    :cond_42
    const/4 v15, 0x0

    #@835
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_42

    #@836
    .line 718
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v70    # "_result":Z
    :cond_43
    const/4 v4, 0x0

    #@837
    goto :goto_43

    #@838
    .line 723
    .end local v70    # "_result":Z
    :sswitch_29
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@83b
    move-object/from16 v0, p2

    #@83d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@840
    .line 725
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@843
    move-result v4

    #@844
    if-eqz v4, :cond_44

    #@846
    .line 726
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@848
    move-object/from16 v0, p2

    #@84a
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@84d
    move-result-object v15

    #@84e
    check-cast v15, Landroid/content/ComponentName;

    #@850
    .line 732
    :goto_44
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@853
    move-result v4

    #@854
    if-eqz v4, :cond_45

    #@856
    const/16 v49, 0x1

    #@858
    .line 733
    .restart local v49    # "_arg1":Z
    :goto_45
    move-object/from16 v0, p0

    #@85a
    move/from16 v1, v49

    #@85c
    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setCameraDisabled(Landroid/content/ComponentName;Z)V

    #@85f
    .line 734
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@862
    .line 735
    const/4 v4, 0x1

    #@863
    return v4

    #@864
    .line 729
    .end local v49    # "_arg1":Z
    :cond_44
    const/4 v15, 0x0

    #@865
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_44

    #@866
    .line 732
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :cond_45
    const/16 v49, 0x0

    #@868
    goto :goto_45

    #@869
    .line 739
    :sswitch_2a
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@86c
    move-object/from16 v0, p2

    #@86e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@871
    .line 741
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@874
    move-result v4

    #@875
    if-eqz v4, :cond_46

    #@877
    .line 742
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@879
    move-object/from16 v0, p2

    #@87b
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@87e
    move-result-object v15

    #@87f
    check-cast v15, Landroid/content/ComponentName;

    #@881
    .line 748
    :goto_46
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@884
    move-result v6

    #@885
    .line 749
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    #@887
    invoke-virtual {v0, v15, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCameraDisabled(Landroid/content/ComponentName;I)Z

    #@88a
    move-result v70

    #@88b
    .line 750
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@88e
    .line 751
    if-eqz v70, :cond_47

    #@890
    const/4 v4, 0x1

    #@891
    :goto_47
    move-object/from16 v0, p3

    #@893
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@896
    .line 752
    const/4 v4, 0x1

    #@897
    return v4

    #@898
    .line 745
    .end local v6    # "_arg1":I
    .end local v70    # "_result":Z
    :cond_46
    const/4 v15, 0x0

    #@899
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_46

    #@89a
    .line 751
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v6    # "_arg1":I
    .restart local v70    # "_result":Z
    :cond_47
    const/4 v4, 0x0

    #@89b
    goto :goto_47

    #@89c
    .line 756
    .end local v6    # "_arg1":I
    .end local v70    # "_result":Z
    :sswitch_2b
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@89f
    move-object/from16 v0, p2

    #@8a1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@8a4
    .line 758
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@8a7
    move-result v4

    #@8a8
    if-eqz v4, :cond_48

    #@8aa
    .line 759
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@8ac
    move-object/from16 v0, p2

    #@8ae
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@8b1
    move-result-object v15

    #@8b2
    check-cast v15, Landroid/content/ComponentName;

    #@8b4
    .line 765
    :goto_48
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@8b7
    move-result v4

    #@8b8
    if-eqz v4, :cond_49

    #@8ba
    const/16 v49, 0x1

    #@8bc
    .line 766
    .restart local v49    # "_arg1":Z
    :goto_49
    move-object/from16 v0, p0

    #@8be
    move/from16 v1, v49

    #@8c0
    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setScreenCaptureDisabled(Landroid/content/ComponentName;Z)V

    #@8c3
    .line 767
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@8c6
    .line 768
    const/4 v4, 0x1

    #@8c7
    return v4

    #@8c8
    .line 762
    .end local v49    # "_arg1":Z
    :cond_48
    const/4 v15, 0x0

    #@8c9
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_48

    #@8ca
    .line 765
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :cond_49
    const/16 v49, 0x0

    #@8cc
    goto :goto_49

    #@8cd
    .line 772
    :sswitch_2c
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@8d0
    move-object/from16 v0, p2

    #@8d2
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@8d5
    .line 774
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@8d8
    move-result v4

    #@8d9
    if-eqz v4, :cond_4a

    #@8db
    .line 775
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@8dd
    move-object/from16 v0, p2

    #@8df
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@8e2
    move-result-object v15

    #@8e3
    check-cast v15, Landroid/content/ComponentName;

    #@8e5
    .line 781
    :goto_4a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@8e8
    move-result v6

    #@8e9
    .line 782
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    #@8eb
    invoke-virtual {v0, v15, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->getScreenCaptureDisabled(Landroid/content/ComponentName;I)Z

    #@8ee
    move-result v70

    #@8ef
    .line 783
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@8f2
    .line 784
    if-eqz v70, :cond_4b

    #@8f4
    const/4 v4, 0x1

    #@8f5
    :goto_4b
    move-object/from16 v0, p3

    #@8f7
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@8fa
    .line 785
    const/4 v4, 0x1

    #@8fb
    return v4

    #@8fc
    .line 778
    .end local v6    # "_arg1":I
    .end local v70    # "_result":Z
    :cond_4a
    const/4 v15, 0x0

    #@8fd
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_4a

    #@8fe
    .line 784
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v6    # "_arg1":I
    .restart local v70    # "_result":Z
    :cond_4b
    const/4 v4, 0x0

    #@8ff
    goto :goto_4b

    #@900
    .line 789
    .end local v6    # "_arg1":I
    .end local v70    # "_result":Z
    :sswitch_2d
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@903
    move-object/from16 v0, p2

    #@905
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@908
    .line 791
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@90b
    move-result v4

    #@90c
    if-eqz v4, :cond_4c

    #@90e
    .line 792
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@910
    move-object/from16 v0, p2

    #@912
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@915
    move-result-object v15

    #@916
    check-cast v15, Landroid/content/ComponentName;

    #@918
    .line 798
    :goto_4c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@91b
    move-result v6

    #@91c
    .line 800
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@91f
    move-result v4

    #@920
    if-eqz v4, :cond_4d

    #@922
    const/16 v30, 0x1

    #@924
    .line 801
    .restart local v30    # "_arg2":Z
    :goto_4d
    move-object/from16 v0, p0

    #@926
    move/from16 v1, v30

    #@928
    invoke-virtual {v0, v15, v6, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setKeyguardDisabledFeatures(Landroid/content/ComponentName;IZ)V

    #@92b
    .line 802
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@92e
    .line 803
    const/4 v4, 0x1

    #@92f
    return v4

    #@930
    .line 795
    .end local v6    # "_arg1":I
    .end local v30    # "_arg2":Z
    :cond_4c
    const/4 v15, 0x0

    #@931
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_4c

    #@932
    .line 800
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v6    # "_arg1":I
    :cond_4d
    const/16 v30, 0x0

    #@934
    goto :goto_4d

    #@935
    .line 807
    .end local v6    # "_arg1":I
    :sswitch_2e
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@938
    move-object/from16 v0, p2

    #@93a
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@93d
    .line 809
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@940
    move-result v4

    #@941
    if-eqz v4, :cond_4e

    #@943
    .line 810
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@945
    move-object/from16 v0, p2

    #@947
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@94a
    move-result-object v15

    #@94b
    check-cast v15, Landroid/content/ComponentName;

    #@94d
    .line 816
    :goto_4e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@950
    move-result v6

    #@951
    .line 818
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@954
    move-result v4

    #@955
    if-eqz v4, :cond_4f

    #@957
    const/16 v30, 0x1

    #@959
    .line 819
    .restart local v30    # "_arg2":Z
    :goto_4f
    move-object/from16 v0, p0

    #@95b
    move/from16 v1, v30

    #@95d
    invoke-virtual {v0, v15, v6, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;IZ)I

    #@960
    move-result v56

    #@961
    .line 820
    .restart local v56    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@964
    .line 821
    move-object/from16 v0, p3

    #@966
    move/from16 v1, v56

    #@968
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@96b
    .line 822
    const/4 v4, 0x1

    #@96c
    return v4

    #@96d
    .line 813
    .end local v6    # "_arg1":I
    .end local v30    # "_arg2":Z
    .end local v56    # "_result":I
    :cond_4e
    const/4 v15, 0x0

    #@96e
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_4e

    #@96f
    .line 818
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v6    # "_arg1":I
    :cond_4f
    const/16 v30, 0x0

    #@971
    goto :goto_4f

    #@972
    .line 826
    .end local v6    # "_arg1":I
    :sswitch_2f
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@975
    move-object/from16 v0, p2

    #@977
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@97a
    .line 828
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@97d
    move-result v4

    #@97e
    if-eqz v4, :cond_50

    #@980
    .line 829
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@982
    move-object/from16 v0, p2

    #@984
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@987
    move-result-object v15

    #@988
    check-cast v15, Landroid/content/ComponentName;

    #@98a
    .line 835
    :goto_50
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@98d
    move-result v4

    #@98e
    if-eqz v4, :cond_51

    #@990
    const/16 v49, 0x1

    #@992
    .line 837
    .local v49, "_arg1":Z
    :goto_51
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@995
    move-result v7

    #@996
    .line 838
    .local v7, "_arg2":I
    move-object/from16 v0, p0

    #@998
    move/from16 v1, v49

    #@99a
    invoke-virtual {v0, v15, v1, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setActiveAdmin(Landroid/content/ComponentName;ZI)V

    #@99d
    .line 839
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@9a0
    .line 840
    const/4 v4, 0x1

    #@9a1
    return v4

    #@9a2
    .line 832
    .end local v7    # "_arg2":I
    .end local v49    # "_arg1":Z
    :cond_50
    const/4 v15, 0x0

    #@9a3
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_50

    #@9a4
    .line 835
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :cond_51
    const/16 v49, 0x0

    #@9a6
    .restart local v49    # "_arg1":Z
    goto :goto_51

    #@9a7
    .line 844
    .end local v49    # "_arg1":Z
    :sswitch_30
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@9aa
    move-object/from16 v0, p2

    #@9ac
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@9af
    .line 846
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@9b2
    move-result v4

    #@9b3
    if-eqz v4, :cond_52

    #@9b5
    .line 847
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@9b7
    move-object/from16 v0, p2

    #@9b9
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@9bc
    move-result-object v15

    #@9bd
    check-cast v15, Landroid/content/ComponentName;

    #@9bf
    .line 853
    :goto_52
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@9c2
    move-result v6

    #@9c3
    .line 854
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    #@9c5
    invoke-virtual {v0, v15, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->isAdminActive(Landroid/content/ComponentName;I)Z

    #@9c8
    move-result v70

    #@9c9
    .line 855
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@9cc
    .line 856
    if-eqz v70, :cond_53

    #@9ce
    const/4 v4, 0x1

    #@9cf
    :goto_53
    move-object/from16 v0, p3

    #@9d1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@9d4
    .line 857
    const/4 v4, 0x1

    #@9d5
    return v4

    #@9d6
    .line 850
    .end local v6    # "_arg1":I
    .end local v70    # "_result":Z
    :cond_52
    const/4 v15, 0x0

    #@9d7
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_52

    #@9d8
    .line 856
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v6    # "_arg1":I
    .restart local v70    # "_result":Z
    :cond_53
    const/4 v4, 0x0

    #@9d9
    goto :goto_53

    #@9da
    .line 861
    .end local v6    # "_arg1":I
    .end local v70    # "_result":Z
    :sswitch_31
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@9dd
    move-object/from16 v0, p2

    #@9df
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@9e2
    .line 863
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@9e5
    move-result v5

    #@9e6
    .line 864
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@9e8
    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getActiveAdmins(I)Ljava/util/List;

    #@9eb
    move-result-object v67

    #@9ec
    .line 865
    .local v67, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@9ef
    .line 866
    move-object/from16 v0, p3

    #@9f1
    move-object/from16 v1, v67

    #@9f3
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@9f6
    .line 867
    const/4 v4, 0x1

    #@9f7
    return v4

    #@9f8
    .line 871
    .end local v5    # "_arg0":I
    .end local v67    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    :sswitch_32
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@9fb
    move-object/from16 v0, p2

    #@9fd
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a00
    .line 873
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@a03
    move-result-object v27

    #@a04
    .line 875
    .restart local v27    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@a07
    move-result v6

    #@a08
    .line 876
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    #@a0a
    move-object/from16 v1, v27

    #@a0c
    invoke-virtual {v0, v1, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->packageHasActiveAdmins(Ljava/lang/String;I)Z

    #@a0f
    move-result v70

    #@a10
    .line 877
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@a13
    .line 878
    if-eqz v70, :cond_54

    #@a15
    const/4 v4, 0x1

    #@a16
    :goto_54
    move-object/from16 v0, p3

    #@a18
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@a1b
    .line 879
    const/4 v4, 0x1

    #@a1c
    return v4

    #@a1d
    .line 878
    :cond_54
    const/4 v4, 0x0

    #@a1e
    goto :goto_54

    #@a1f
    .line 883
    .end local v6    # "_arg1":I
    .end local v27    # "_arg0":Ljava/lang/String;
    .end local v70    # "_result":Z
    :sswitch_33
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@a22
    move-object/from16 v0, p2

    #@a24
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a27
    .line 885
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@a2a
    move-result v4

    #@a2b
    if-eqz v4, :cond_55

    #@a2d
    .line 886
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@a2f
    move-object/from16 v0, p2

    #@a31
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@a34
    move-result-object v15

    #@a35
    check-cast v15, Landroid/content/ComponentName;

    #@a37
    .line 892
    :goto_55
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@a3a
    move-result v4

    #@a3b
    if-eqz v4, :cond_56

    #@a3d
    .line 893
    sget-object v4, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    #@a3f
    move-object/from16 v0, p2

    #@a41
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@a44
    move-result-object v44

    #@a45
    check-cast v44, Landroid/os/RemoteCallback;

    #@a47
    .line 899
    :goto_56
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@a4a
    move-result v7

    #@a4b
    .line 900
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    #@a4d
    move-object/from16 v1, v44

    #@a4f
    invoke-virtual {v0, v15, v1, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;I)V

    #@a52
    .line 901
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@a55
    .line 902
    const/4 v4, 0x1

    #@a56
    return v4

    #@a57
    .line 889
    .end local v7    # "_arg2":I
    :cond_55
    const/4 v15, 0x0

    #@a58
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_55

    #@a59
    .line 896
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :cond_56
    const/16 v44, 0x0

    #@a5b
    .local v44, "_arg1":Landroid/os/RemoteCallback;
    goto :goto_56

    #@a5c
    .line 906
    .end local v44    # "_arg1":Landroid/os/RemoteCallback;
    :sswitch_34
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@a5f
    move-object/from16 v0, p2

    #@a61
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a64
    .line 908
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@a67
    move-result v4

    #@a68
    if-eqz v4, :cond_57

    #@a6a
    .line 909
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@a6c
    move-object/from16 v0, p2

    #@a6e
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@a71
    move-result-object v15

    #@a72
    check-cast v15, Landroid/content/ComponentName;

    #@a74
    .line 915
    :goto_57
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@a77
    move-result v6

    #@a78
    .line 916
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    #@a7a
    invoke-virtual {v0, v15, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->removeActiveAdmin(Landroid/content/ComponentName;I)V

    #@a7d
    .line 917
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@a80
    .line 918
    const/4 v4, 0x1

    #@a81
    return v4

    #@a82
    .line 912
    .end local v6    # "_arg1":I
    :cond_57
    const/4 v15, 0x0

    #@a83
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_57

    #@a84
    .line 922
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_35
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@a87
    move-object/from16 v0, p2

    #@a89
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a8c
    .line 924
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@a8f
    move-result v4

    #@a90
    if-eqz v4, :cond_58

    #@a92
    .line 925
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@a94
    move-object/from16 v0, p2

    #@a96
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@a99
    move-result-object v15

    #@a9a
    check-cast v15, Landroid/content/ComponentName;

    #@a9c
    .line 931
    :goto_58
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@a9f
    move-result v6

    #@aa0
    .line 932
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    #@aa2
    invoke-virtual {v0, v15, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->forceRemoveActiveAdmin(Landroid/content/ComponentName;I)V

    #@aa5
    .line 933
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@aa8
    .line 934
    const/4 v4, 0x1

    #@aa9
    return v4

    #@aaa
    .line 928
    .end local v6    # "_arg1":I
    :cond_58
    const/4 v15, 0x0

    #@aab
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_58

    #@aac
    .line 938
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_36
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@aaf
    move-object/from16 v0, p2

    #@ab1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ab4
    .line 940
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@ab7
    move-result v4

    #@ab8
    if-eqz v4, :cond_59

    #@aba
    .line 941
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@abc
    move-object/from16 v0, p2

    #@abe
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@ac1
    move-result-object v15

    #@ac2
    check-cast v15, Landroid/content/ComponentName;

    #@ac4
    .line 947
    :goto_59
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@ac7
    move-result v6

    #@ac8
    .line 949
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@acb
    move-result v7

    #@acc
    .line 950
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    #@ace
    invoke-virtual {v0, v15, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->hasGrantedPolicy(Landroid/content/ComponentName;II)Z

    #@ad1
    move-result v70

    #@ad2
    .line 951
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@ad5
    .line 952
    if-eqz v70, :cond_5a

    #@ad7
    const/4 v4, 0x1

    #@ad8
    :goto_5a
    move-object/from16 v0, p3

    #@ada
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@add
    .line 953
    const/4 v4, 0x1

    #@ade
    return v4

    #@adf
    .line 944
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v70    # "_result":Z
    :cond_59
    const/4 v15, 0x0

    #@ae0
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_59

    #@ae1
    .line 952
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v6    # "_arg1":I
    .restart local v7    # "_arg2":I
    .restart local v70    # "_result":Z
    :cond_5a
    const/4 v4, 0x0

    #@ae2
    goto :goto_5a

    #@ae3
    .line 957
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v70    # "_result":Z
    :sswitch_37
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@ae6
    move-object/from16 v0, p2

    #@ae8
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@aeb
    .line 959
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@aee
    move-result v5

    #@aef
    .line 961
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@af2
    move-result v6

    #@af3
    .line 963
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@af6
    move-result v7

    #@af7
    .line 965
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@afa
    move-result v8

    #@afb
    .line 967
    .local v8, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@afe
    move-result v9

    #@aff
    .line 969
    .local v9, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@b02
    move-result v10

    #@b03
    .line 971
    .local v10, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@b06
    move-result v11

    #@b07
    .line 973
    .local v11, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@b0a
    move-result v12

    #@b0b
    .line 975
    .local v12, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@b0e
    move-result v13

    #@b0f
    .local v13, "_arg8":I
    move-object/from16 v4, p0

    #@b11
    .line 976
    invoke-virtual/range {v4 .. v13}, Landroid/app/admin/IDevicePolicyManager$Stub;->setActivePasswordState(IIIIIIIII)V

    #@b14
    .line 977
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@b17
    .line 978
    const/4 v4, 0x1

    #@b18
    return v4

    #@b19
    .line 982
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v9    # "_arg4":I
    .end local v10    # "_arg5":I
    .end local v11    # "_arg6":I
    .end local v12    # "_arg7":I
    .end local v13    # "_arg8":I
    :sswitch_38
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@b1c
    move-object/from16 v0, p2

    #@b1e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b21
    .line 984
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@b24
    move-result v5

    #@b25
    .line 985
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@b27
    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->reportFailedPasswordAttempt(I)V

    #@b2a
    .line 986
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@b2d
    .line 987
    const/4 v4, 0x1

    #@b2e
    return v4

    #@b2f
    .line 991
    .end local v5    # "_arg0":I
    :sswitch_39
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@b32
    move-object/from16 v0, p2

    #@b34
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b37
    .line 993
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@b3a
    move-result v5

    #@b3b
    .line 994
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@b3d
    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->reportSuccessfulPasswordAttempt(I)V

    #@b40
    .line 995
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@b43
    .line 996
    const/4 v4, 0x1

    #@b44
    return v4

    #@b45
    .line 1000
    .end local v5    # "_arg0":I
    :sswitch_3a
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@b48
    move-object/from16 v0, p2

    #@b4a
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b4d
    .line 1002
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@b50
    move-result v5

    #@b51
    .line 1003
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@b53
    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->reportFailedFingerprintAttempt(I)V

    #@b56
    .line 1004
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@b59
    .line 1005
    const/4 v4, 0x1

    #@b5a
    return v4

    #@b5b
    .line 1009
    .end local v5    # "_arg0":I
    :sswitch_3b
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@b5e
    move-object/from16 v0, p2

    #@b60
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b63
    .line 1011
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@b66
    move-result v5

    #@b67
    .line 1012
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@b69
    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->reportSuccessfulFingerprintAttempt(I)V

    #@b6c
    .line 1013
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@b6f
    .line 1014
    const/4 v4, 0x1

    #@b70
    return v4

    #@b71
    .line 1018
    .end local v5    # "_arg0":I
    :sswitch_3c
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@b74
    move-object/from16 v0, p2

    #@b76
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b79
    .line 1020
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@b7c
    move-result v5

    #@b7d
    .line 1021
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@b7f
    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->reportKeyguardDismissed(I)V

    #@b82
    .line 1022
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@b85
    .line 1023
    const/4 v4, 0x1

    #@b86
    return v4

    #@b87
    .line 1027
    .end local v5    # "_arg0":I
    :sswitch_3d
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@b8a
    move-object/from16 v0, p2

    #@b8c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b8f
    .line 1029
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@b92
    move-result v5

    #@b93
    .line 1030
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@b95
    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->reportKeyguardSecured(I)V

    #@b98
    .line 1031
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@b9b
    .line 1032
    const/4 v4, 0x1

    #@b9c
    return v4

    #@b9d
    .line 1036
    .end local v5    # "_arg0":I
    :sswitch_3e
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@ba0
    move-object/from16 v0, p2

    #@ba2
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ba5
    .line 1038
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@ba8
    move-result v4

    #@ba9
    if-eqz v4, :cond_5b

    #@bab
    .line 1039
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@bad
    move-object/from16 v0, p2

    #@baf
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@bb2
    move-result-object v15

    #@bb3
    check-cast v15, Landroid/content/ComponentName;

    #@bb5
    .line 1045
    :goto_5b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@bb8
    move-result-object v23

    #@bb9
    .line 1047
    .restart local v23    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@bbc
    move-result v7

    #@bbd
    .line 1048
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    #@bbf
    move-object/from16 v1, v23

    #@bc1
    invoke-virtual {v0, v15, v1, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setDeviceOwner(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    #@bc4
    move-result v70

    #@bc5
    .line 1049
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@bc8
    .line 1050
    if-eqz v70, :cond_5c

    #@bca
    const/4 v4, 0x1

    #@bcb
    :goto_5c
    move-object/from16 v0, p3

    #@bcd
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@bd0
    .line 1051
    const/4 v4, 0x1

    #@bd1
    return v4

    #@bd2
    .line 1042
    .end local v7    # "_arg2":I
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v70    # "_result":Z
    :cond_5b
    const/4 v15, 0x0

    #@bd3
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_5b

    #@bd4
    .line 1050
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v7    # "_arg2":I
    .restart local v23    # "_arg1":Ljava/lang/String;
    .restart local v70    # "_result":Z
    :cond_5c
    const/4 v4, 0x0

    #@bd5
    goto :goto_5c

    #@bd6
    .line 1055
    .end local v7    # "_arg2":I
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v70    # "_result":Z
    :sswitch_3f
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@bd9
    move-object/from16 v0, p2

    #@bdb
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@bde
    .line 1057
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@be1
    move-result v4

    #@be2
    if-eqz v4, :cond_5d

    #@be4
    const/16 v36, 0x1

    #@be6
    .line 1058
    .restart local v36    # "_arg0":Z
    :goto_5d
    move-object/from16 v0, p0

    #@be8
    move/from16 v1, v36

    #@bea
    invoke-virtual {v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getDeviceOwnerComponent(Z)Landroid/content/ComponentName;

    #@bed
    move-result-object v60

    #@bee
    .line 1059
    .restart local v60    # "_result":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@bf1
    .line 1060
    if-eqz v60, :cond_5e

    #@bf3
    .line 1061
    const/4 v4, 0x1

    #@bf4
    move-object/from16 v0, p3

    #@bf6
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@bf9
    .line 1062
    const/4 v4, 0x1

    #@bfa
    move-object/from16 v0, v60

    #@bfc
    move-object/from16 v1, p3

    #@bfe
    invoke-virtual {v0, v1, v4}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    #@c01
    .line 1067
    :goto_5e
    const/4 v4, 0x1

    #@c02
    return v4

    #@c03
    .line 1057
    .end local v36    # "_arg0":Z
    .end local v60    # "_result":Landroid/content/ComponentName;
    :cond_5d
    const/16 v36, 0x0

    #@c05
    goto :goto_5d

    #@c06
    .line 1065
    .restart local v36    # "_arg0":Z
    .restart local v60    # "_result":Landroid/content/ComponentName;
    :cond_5e
    const/4 v4, 0x0

    #@c07
    move-object/from16 v0, p3

    #@c09
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@c0c
    goto :goto_5e

    #@c0d
    .line 1071
    .end local v36    # "_arg0":Z
    .end local v60    # "_result":Landroid/content/ComponentName;
    :sswitch_40
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@c10
    move-object/from16 v0, p2

    #@c12
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@c15
    .line 1072
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getDeviceOwnerName()Ljava/lang/String;

    #@c18
    move-result-object v65

    #@c19
    .line 1073
    .local v65, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@c1c
    .line 1074
    move-object/from16 v0, p3

    #@c1e
    move-object/from16 v1, v65

    #@c20
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@c23
    .line 1075
    const/4 v4, 0x1

    #@c24
    return v4

    #@c25
    .line 1079
    .end local v65    # "_result":Ljava/lang/String;
    :sswitch_41
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@c28
    move-object/from16 v0, p2

    #@c2a
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@c2d
    .line 1081
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@c30
    move-result-object v27

    #@c31
    .line 1082
    .restart local v27    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@c33
    move-object/from16 v1, v27

    #@c35
    invoke-virtual {v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->clearDeviceOwner(Ljava/lang/String;)V

    #@c38
    .line 1083
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@c3b
    .line 1084
    const/4 v4, 0x1

    #@c3c
    return v4

    #@c3d
    .line 1088
    .end local v27    # "_arg0":Ljava/lang/String;
    :sswitch_42
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@c40
    move-object/from16 v0, p2

    #@c42
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@c45
    .line 1089
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getDeviceOwnerUserId()I

    #@c48
    move-result v56

    #@c49
    .line 1090
    .restart local v56    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@c4c
    .line 1091
    move-object/from16 v0, p3

    #@c4e
    move/from16 v1, v56

    #@c50
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@c53
    .line 1092
    const/4 v4, 0x1

    #@c54
    return v4

    #@c55
    .line 1096
    .end local v56    # "_result":I
    :sswitch_43
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@c58
    move-object/from16 v0, p2

    #@c5a
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@c5d
    .line 1098
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@c60
    move-result v4

    #@c61
    if-eqz v4, :cond_5f

    #@c63
    .line 1099
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@c65
    move-object/from16 v0, p2

    #@c67
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@c6a
    move-result-object v15

    #@c6b
    check-cast v15, Landroid/content/ComponentName;

    #@c6d
    .line 1105
    :goto_5f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@c70
    move-result-object v23

    #@c71
    .line 1107
    .restart local v23    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@c74
    move-result v7

    #@c75
    .line 1108
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    #@c77
    move-object/from16 v1, v23

    #@c79
    invoke-virtual {v0, v15, v1, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setProfileOwner(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    #@c7c
    move-result v70

    #@c7d
    .line 1109
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@c80
    .line 1110
    if-eqz v70, :cond_60

    #@c82
    const/4 v4, 0x1

    #@c83
    :goto_60
    move-object/from16 v0, p3

    #@c85
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@c88
    .line 1111
    const/4 v4, 0x1

    #@c89
    return v4

    #@c8a
    .line 1102
    .end local v7    # "_arg2":I
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v70    # "_result":Z
    :cond_5f
    const/4 v15, 0x0

    #@c8b
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_5f

    #@c8c
    .line 1110
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v7    # "_arg2":I
    .restart local v23    # "_arg1":Ljava/lang/String;
    .restart local v70    # "_result":Z
    :cond_60
    const/4 v4, 0x0

    #@c8d
    goto :goto_60

    #@c8e
    .line 1115
    .end local v7    # "_arg2":I
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v70    # "_result":Z
    :sswitch_44
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@c91
    move-object/from16 v0, p2

    #@c93
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@c96
    .line 1117
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@c99
    move-result v5

    #@c9a
    .line 1118
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@c9c
    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getProfileOwner(I)Landroid/content/ComponentName;

    #@c9f
    move-result-object v60

    #@ca0
    .line 1119
    .restart local v60    # "_result":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@ca3
    .line 1120
    if-eqz v60, :cond_61

    #@ca5
    .line 1121
    const/4 v4, 0x1

    #@ca6
    move-object/from16 v0, p3

    #@ca8
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@cab
    .line 1122
    const/4 v4, 0x1

    #@cac
    move-object/from16 v0, v60

    #@cae
    move-object/from16 v1, p3

    #@cb0
    invoke-virtual {v0, v1, v4}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    #@cb3
    .line 1127
    :goto_61
    const/4 v4, 0x1

    #@cb4
    return v4

    #@cb5
    .line 1125
    :cond_61
    const/4 v4, 0x0

    #@cb6
    move-object/from16 v0, p3

    #@cb8
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@cbb
    goto :goto_61

    #@cbc
    .line 1131
    .end local v5    # "_arg0":I
    .end local v60    # "_result":Landroid/content/ComponentName;
    :sswitch_45
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@cbf
    move-object/from16 v0, p2

    #@cc1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@cc4
    .line 1133
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@cc7
    move-result v5

    #@cc8
    .line 1134
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@cca
    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getProfileOwnerName(I)Ljava/lang/String;

    #@ccd
    move-result-object v65

    #@cce
    .line 1135
    .restart local v65    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@cd1
    .line 1136
    move-object/from16 v0, p3

    #@cd3
    move-object/from16 v1, v65

    #@cd5
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@cd8
    .line 1137
    const/4 v4, 0x1

    #@cd9
    return v4

    #@cda
    .line 1141
    .end local v5    # "_arg0":I
    .end local v65    # "_result":Ljava/lang/String;
    :sswitch_46
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@cdd
    move-object/from16 v0, p2

    #@cdf
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ce2
    .line 1143
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@ce5
    move-result v4

    #@ce6
    if-eqz v4, :cond_62

    #@ce8
    .line 1144
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@cea
    move-object/from16 v0, p2

    #@cec
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@cef
    move-result-object v15

    #@cf0
    check-cast v15, Landroid/content/ComponentName;

    #@cf2
    .line 1149
    :goto_62
    move-object/from16 v0, p0

    #@cf4
    invoke-virtual {v0, v15}, Landroid/app/admin/IDevicePolicyManager$Stub;->setProfileEnabled(Landroid/content/ComponentName;)V

    #@cf7
    .line 1150
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@cfa
    .line 1151
    const/4 v4, 0x1

    #@cfb
    return v4

    #@cfc
    .line 1147
    :cond_62
    const/4 v15, 0x0

    #@cfd
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_62

    #@cfe
    .line 1155
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_47
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@d01
    move-object/from16 v0, p2

    #@d03
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@d06
    .line 1157
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@d09
    move-result v4

    #@d0a
    if-eqz v4, :cond_63

    #@d0c
    .line 1158
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@d0e
    move-object/from16 v0, p2

    #@d10
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@d13
    move-result-object v15

    #@d14
    check-cast v15, Landroid/content/ComponentName;

    #@d16
    .line 1164
    :goto_63
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@d19
    move-result-object v23

    #@d1a
    .line 1165
    .restart local v23    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@d1c
    move-object/from16 v1, v23

    #@d1e
    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setProfileName(Landroid/content/ComponentName;Ljava/lang/String;)V

    #@d21
    .line 1166
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@d24
    .line 1167
    const/4 v4, 0x1

    #@d25
    return v4

    #@d26
    .line 1161
    .end local v23    # "_arg1":Ljava/lang/String;
    :cond_63
    const/4 v15, 0x0

    #@d27
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_63

    #@d28
    .line 1171
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_48
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@d2b
    move-object/from16 v0, p2

    #@d2d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@d30
    .line 1173
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@d33
    move-result v4

    #@d34
    if-eqz v4, :cond_64

    #@d36
    .line 1174
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@d38
    move-object/from16 v0, p2

    #@d3a
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@d3d
    move-result-object v15

    #@d3e
    check-cast v15, Landroid/content/ComponentName;

    #@d40
    .line 1179
    :goto_64
    move-object/from16 v0, p0

    #@d42
    invoke-virtual {v0, v15}, Landroid/app/admin/IDevicePolicyManager$Stub;->clearProfileOwner(Landroid/content/ComponentName;)V

    #@d45
    .line 1180
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@d48
    .line 1181
    const/4 v4, 0x1

    #@d49
    return v4

    #@d4a
    .line 1177
    :cond_64
    const/4 v15, 0x0

    #@d4b
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_64

    #@d4c
    .line 1185
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_49
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@d4f
    move-object/from16 v0, p2

    #@d51
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@d54
    .line 1186
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->hasUserSetupCompleted()Z

    #@d57
    move-result v70

    #@d58
    .line 1187
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@d5b
    .line 1188
    if-eqz v70, :cond_65

    #@d5d
    const/4 v4, 0x1

    #@d5e
    :goto_65
    move-object/from16 v0, p3

    #@d60
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@d63
    .line 1189
    const/4 v4, 0x1

    #@d64
    return v4

    #@d65
    .line 1188
    :cond_65
    const/4 v4, 0x0

    #@d66
    goto :goto_65

    #@d67
    .line 1193
    .end local v70    # "_result":Z
    :sswitch_4a
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@d6a
    move-object/from16 v0, p2

    #@d6c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@d6f
    .line 1195
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@d72
    move-result v4

    #@d73
    if-eqz v4, :cond_66

    #@d75
    .line 1196
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@d77
    move-object/from16 v0, p2

    #@d79
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@d7c
    move-result-object v15

    #@d7d
    check-cast v15, Landroid/content/ComponentName;

    #@d7f
    .line 1202
    :goto_66
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@d82
    move-result v4

    #@d83
    if-eqz v4, :cond_67

    #@d85
    .line 1203
    sget-object v4, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    #@d87
    move-object/from16 v0, p2

    #@d89
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@d8c
    move-result-object v46

    #@d8d
    check-cast v46, Ljava/lang/CharSequence;

    #@d8f
    .line 1208
    :goto_67
    move-object/from16 v0, p0

    #@d91
    move-object/from16 v1, v46

    #@d93
    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setDeviceOwnerLockScreenInfo(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V

    #@d96
    .line 1209
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@d99
    .line 1210
    const/4 v4, 0x1

    #@d9a
    return v4

    #@d9b
    .line 1199
    :cond_66
    const/4 v15, 0x0

    #@d9c
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_66

    #@d9d
    .line 1206
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :cond_67
    const/16 v46, 0x0

    #@d9f
    .local v46, "_arg1":Ljava/lang/CharSequence;
    goto :goto_67

    #@da0
    .line 1214
    .end local v46    # "_arg1":Ljava/lang/CharSequence;
    :sswitch_4b
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@da3
    move-object/from16 v0, p2

    #@da5
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@da8
    .line 1215
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getDeviceOwnerLockScreenInfo()Ljava/lang/CharSequence;

    #@dab
    move-result-object v64

    #@dac
    .line 1216
    .local v64, "_result":Ljava/lang/CharSequence;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@daf
    .line 1217
    if-eqz v64, :cond_68

    #@db1
    .line 1218
    const/4 v4, 0x1

    #@db2
    move-object/from16 v0, p3

    #@db4
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@db7
    .line 1219
    const/4 v4, 0x1

    #@db8
    move-object/from16 v0, v64

    #@dba
    move-object/from16 v1, p3

    #@dbc
    invoke-static {v0, v1, v4}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    #@dbf
    .line 1224
    :goto_68
    const/4 v4, 0x1

    #@dc0
    return v4

    #@dc1
    .line 1222
    :cond_68
    const/4 v4, 0x0

    #@dc2
    move-object/from16 v0, p3

    #@dc4
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@dc7
    goto :goto_68

    #@dc8
    .line 1228
    .end local v64    # "_result":Ljava/lang/CharSequence;
    :sswitch_4c
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@dcb
    move-object/from16 v0, p2

    #@dcd
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@dd0
    .line 1230
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@dd3
    move-result v4

    #@dd4
    if-eqz v4, :cond_69

    #@dd6
    .line 1231
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@dd8
    move-object/from16 v0, p2

    #@dda
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@ddd
    move-result-object v15

    #@dde
    check-cast v15, Landroid/content/ComponentName;

    #@de0
    .line 1237
    :goto_69
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@de3
    move-result-object v50

    #@de4
    .line 1239
    .local v50, "_arg1":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@de7
    move-result v4

    #@de8
    if-eqz v4, :cond_6a

    #@dea
    const/16 v30, 0x1

    #@dec
    .line 1240
    .restart local v30    # "_arg2":Z
    :goto_6a
    move-object/from16 v0, p0

    #@dee
    move-object/from16 v1, v50

    #@df0
    move/from16 v2, v30

    #@df2
    invoke-virtual {v0, v15, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPackagesSuspended(Landroid/content/ComponentName;[Ljava/lang/String;Z)[Ljava/lang/String;

    #@df5
    move-result-object v71

    #@df6
    .line 1241
    .local v71, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@df9
    .line 1242
    move-object/from16 v0, p3

    #@dfb
    move-object/from16 v1, v71

    #@dfd
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@e00
    .line 1243
    const/4 v4, 0x1

    #@e01
    return v4

    #@e02
    .line 1234
    .end local v30    # "_arg2":Z
    .end local v50    # "_arg1":[Ljava/lang/String;
    .end local v71    # "_result":[Ljava/lang/String;
    :cond_69
    const/4 v15, 0x0

    #@e03
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_69

    #@e04
    .line 1239
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v50    # "_arg1":[Ljava/lang/String;
    :cond_6a
    const/16 v30, 0x0

    #@e06
    goto :goto_6a

    #@e07
    .line 1247
    .end local v50    # "_arg1":[Ljava/lang/String;
    :sswitch_4d
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@e0a
    move-object/from16 v0, p2

    #@e0c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@e0f
    .line 1249
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@e12
    move-result v4

    #@e13
    if-eqz v4, :cond_6b

    #@e15
    .line 1250
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@e17
    move-object/from16 v0, p2

    #@e19
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@e1c
    move-result-object v15

    #@e1d
    check-cast v15, Landroid/content/ComponentName;

    #@e1f
    .line 1256
    :goto_6b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@e22
    move-result-object v23

    #@e23
    .line 1257
    .restart local v23    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@e25
    move-object/from16 v1, v23

    #@e27
    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->isPackageSuspended(Landroid/content/ComponentName;Ljava/lang/String;)Z

    #@e2a
    move-result v70

    #@e2b
    .line 1258
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@e2e
    .line 1259
    if-eqz v70, :cond_6c

    #@e30
    const/4 v4, 0x1

    #@e31
    :goto_6c
    move-object/from16 v0, p3

    #@e33
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@e36
    .line 1260
    const/4 v4, 0x1

    #@e37
    return v4

    #@e38
    .line 1253
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v70    # "_result":Z
    :cond_6b
    const/4 v15, 0x0

    #@e39
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_6b

    #@e3a
    .line 1259
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v23    # "_arg1":Ljava/lang/String;
    .restart local v70    # "_result":Z
    :cond_6c
    const/4 v4, 0x0

    #@e3b
    goto :goto_6c

    #@e3c
    .line 1264
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v70    # "_result":Z
    :sswitch_4e
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@e3f
    move-object/from16 v0, p2

    #@e41
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@e44
    .line 1266
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@e47
    move-result v4

    #@e48
    if-eqz v4, :cond_6d

    #@e4a
    .line 1267
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
    .line 1273
    :goto_6d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    #@e57
    move-result-object v16

    #@e58
    .line 1274
    .local v16, "_arg1":[B
    move-object/from16 v0, p0

    #@e5a
    move-object/from16 v1, v16

    #@e5c
    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->installCaCert(Landroid/content/ComponentName;[B)Z

    #@e5f
    move-result v70

    #@e60
    .line 1275
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@e63
    .line 1276
    if-eqz v70, :cond_6e

    #@e65
    const/4 v4, 0x1

    #@e66
    :goto_6e
    move-object/from16 v0, p3

    #@e68
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@e6b
    .line 1277
    const/4 v4, 0x1

    #@e6c
    return v4

    #@e6d
    .line 1270
    .end local v16    # "_arg1":[B
    .end local v70    # "_result":Z
    :cond_6d
    const/4 v15, 0x0

    #@e6e
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_6d

    #@e6f
    .line 1276
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v16    # "_arg1":[B
    .restart local v70    # "_result":Z
    :cond_6e
    const/4 v4, 0x0

    #@e70
    goto :goto_6e

    #@e71
    .line 1281
    .end local v16    # "_arg1":[B
    .end local v70    # "_result":Z
    :sswitch_4f
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@e74
    move-object/from16 v0, p2

    #@e76
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@e79
    .line 1283
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@e7c
    move-result v4

    #@e7d
    if-eqz v4, :cond_6f

    #@e7f
    .line 1284
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@e81
    move-object/from16 v0, p2

    #@e83
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@e86
    move-result-object v15

    #@e87
    check-cast v15, Landroid/content/ComponentName;

    #@e89
    .line 1290
    :goto_6f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@e8c
    move-result-object v50

    #@e8d
    .line 1291
    .restart local v50    # "_arg1":[Ljava/lang/String;
    move-object/from16 v0, p0

    #@e8f
    move-object/from16 v1, v50

    #@e91
    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->uninstallCaCerts(Landroid/content/ComponentName;[Ljava/lang/String;)V

    #@e94
    .line 1292
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@e97
    .line 1293
    const/4 v4, 0x1

    #@e98
    return v4

    #@e99
    .line 1287
    .end local v50    # "_arg1":[Ljava/lang/String;
    :cond_6f
    const/4 v15, 0x0

    #@e9a
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_6f

    #@e9b
    .line 1297
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_50
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@e9e
    move-object/from16 v0, p2

    #@ea0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ea3
    .line 1299
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@ea6
    move-result v4

    #@ea7
    if-eqz v4, :cond_70

    #@ea9
    .line 1300
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@eab
    move-object/from16 v0, p2

    #@ead
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@eb0
    move-result-object v15

    #@eb1
    check-cast v15, Landroid/content/ComponentName;

    #@eb3
    .line 1305
    :goto_70
    move-object/from16 v0, p0

    #@eb5
    invoke-virtual {v0, v15}, Landroid/app/admin/IDevicePolicyManager$Stub;->enforceCanManageCaCerts(Landroid/content/ComponentName;)V

    #@eb8
    .line 1306
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@ebb
    .line 1307
    const/4 v4, 0x1

    #@ebc
    return v4

    #@ebd
    .line 1303
    :cond_70
    const/4 v15, 0x0

    #@ebe
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_70

    #@ebf
    .line 1311
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_51
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@ec2
    move-object/from16 v0, p2

    #@ec4
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ec7
    .line 1313
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@eca
    move-result-object v27

    #@ecb
    .line 1315
    .restart local v27    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@ece
    move-result v6

    #@ecf
    .line 1317
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@ed2
    move-result v4

    #@ed3
    if-eqz v4, :cond_71

    #@ed5
    const/16 v30, 0x1

    #@ed7
    .line 1318
    .restart local v30    # "_arg2":Z
    :goto_71
    move-object/from16 v0, p0

    #@ed9
    move-object/from16 v1, v27

    #@edb
    move/from16 v2, v30

    #@edd
    invoke-virtual {v0, v1, v6, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->approveCaCert(Ljava/lang/String;IZ)Z

    #@ee0
    move-result v70

    #@ee1
    .line 1319
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@ee4
    .line 1320
    if-eqz v70, :cond_72

    #@ee6
    const/4 v4, 0x1

    #@ee7
    :goto_72
    move-object/from16 v0, p3

    #@ee9
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@eec
    .line 1321
    const/4 v4, 0x1

    #@eed
    return v4

    #@eee
    .line 1317
    .end local v30    # "_arg2":Z
    .end local v70    # "_result":Z
    :cond_71
    const/16 v30, 0x0

    #@ef0
    goto :goto_71

    #@ef1
    .line 1320
    .restart local v30    # "_arg2":Z
    .restart local v70    # "_result":Z
    :cond_72
    const/4 v4, 0x0

    #@ef2
    goto :goto_72

    #@ef3
    .line 1325
    .end local v6    # "_arg1":I
    .end local v27    # "_arg0":Ljava/lang/String;
    .end local v30    # "_arg2":Z
    .end local v70    # "_result":Z
    :sswitch_52
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@ef6
    move-object/from16 v0, p2

    #@ef8
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@efb
    .line 1327
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@efe
    move-result-object v27

    #@eff
    .line 1329
    .restart local v27    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@f02
    move-result v6

    #@f03
    .line 1330
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    #@f05
    move-object/from16 v1, v27

    #@f07
    invoke-virtual {v0, v1, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->isCaCertApproved(Ljava/lang/String;I)Z

    #@f0a
    move-result v70

    #@f0b
    .line 1331
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@f0e
    .line 1332
    if-eqz v70, :cond_73

    #@f10
    const/4 v4, 0x1

    #@f11
    :goto_73
    move-object/from16 v0, p3

    #@f13
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@f16
    .line 1333
    const/4 v4, 0x1

    #@f17
    return v4

    #@f18
    .line 1332
    :cond_73
    const/4 v4, 0x0

    #@f19
    goto :goto_73

    #@f1a
    .line 1337
    .end local v6    # "_arg1":I
    .end local v27    # "_arg0":Ljava/lang/String;
    .end local v70    # "_result":Z
    :sswitch_53
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@f1d
    move-object/from16 v0, p2

    #@f1f
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@f22
    .line 1339
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@f25
    move-result v4

    #@f26
    if-eqz v4, :cond_74

    #@f28
    .line 1340
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@f2a
    move-object/from16 v0, p2

    #@f2c
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@f2f
    move-result-object v15

    #@f30
    check-cast v15, Landroid/content/ComponentName;

    #@f32
    .line 1346
    :goto_74
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    #@f35
    move-result-object v16

    #@f36
    .line 1348
    .restart local v16    # "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    #@f39
    move-result-object v17

    #@f3a
    .line 1350
    .local v17, "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    #@f3d
    move-result-object v18

    #@f3e
    .line 1352
    .local v18, "_arg3":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@f41
    move-result-object v19

    #@f42
    .line 1354
    .local v19, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@f45
    move-result v4

    #@f46
    if-eqz v4, :cond_75

    #@f48
    const/16 v20, 0x1

    #@f4a
    .local v20, "_arg5":Z
    :goto_75
    move-object/from16 v14, p0

    #@f4c
    .line 1355
    invoke-virtual/range {v14 .. v20}, Landroid/app/admin/IDevicePolicyManager$Stub;->installKeyPair(Landroid/content/ComponentName;[B[B[BLjava/lang/String;Z)Z

    #@f4f
    move-result v70

    #@f50
    .line 1356
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@f53
    .line 1357
    if-eqz v70, :cond_76

    #@f55
    const/4 v4, 0x1

    #@f56
    :goto_76
    move-object/from16 v0, p3

    #@f58
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@f5b
    .line 1358
    const/4 v4, 0x1

    #@f5c
    return v4

    #@f5d
    .line 1343
    .end local v16    # "_arg1":[B
    .end local v17    # "_arg2":[B
    .end local v18    # "_arg3":[B
    .end local v19    # "_arg4":Ljava/lang/String;
    .end local v20    # "_arg5":Z
    .end local v70    # "_result":Z
    :cond_74
    const/4 v15, 0x0

    #@f5e
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_74

    #@f5f
    .line 1354
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v16    # "_arg1":[B
    .restart local v17    # "_arg2":[B
    .restart local v18    # "_arg3":[B
    .restart local v19    # "_arg4":Ljava/lang/String;
    :cond_75
    const/16 v20, 0x0

    #@f61
    goto :goto_75

    #@f62
    .line 1357
    .restart local v20    # "_arg5":Z
    .restart local v70    # "_result":Z
    :cond_76
    const/4 v4, 0x0

    #@f63
    goto :goto_76

    #@f64
    .line 1362
    .end local v16    # "_arg1":[B
    .end local v17    # "_arg2":[B
    .end local v18    # "_arg3":[B
    .end local v19    # "_arg4":Ljava/lang/String;
    .end local v20    # "_arg5":Z
    .end local v70    # "_result":Z
    :sswitch_54
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@f67
    move-object/from16 v0, p2

    #@f69
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@f6c
    .line 1364
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@f6f
    move-result v4

    #@f70
    if-eqz v4, :cond_77

    #@f72
    .line 1365
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@f74
    move-object/from16 v0, p2

    #@f76
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@f79
    move-result-object v15

    #@f7a
    check-cast v15, Landroid/content/ComponentName;

    #@f7c
    .line 1371
    :goto_77
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@f7f
    move-result-object v23

    #@f80
    .line 1372
    .restart local v23    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@f82
    move-object/from16 v1, v23

    #@f84
    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->removeKeyPair(Landroid/content/ComponentName;Ljava/lang/String;)Z

    #@f87
    move-result v70

    #@f88
    .line 1373
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@f8b
    .line 1374
    if-eqz v70, :cond_78

    #@f8d
    const/4 v4, 0x1

    #@f8e
    :goto_78
    move-object/from16 v0, p3

    #@f90
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@f93
    .line 1375
    const/4 v4, 0x1

    #@f94
    return v4

    #@f95
    .line 1368
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v70    # "_result":Z
    :cond_77
    const/4 v15, 0x0

    #@f96
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_77

    #@f97
    .line 1374
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v23    # "_arg1":Ljava/lang/String;
    .restart local v70    # "_result":Z
    :cond_78
    const/4 v4, 0x0

    #@f98
    goto :goto_78

    #@f99
    .line 1379
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v70    # "_result":Z
    :sswitch_55
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@f9c
    move-object/from16 v0, p2

    #@f9e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@fa1
    .line 1381
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@fa4
    move-result v5

    #@fa5
    .line 1383
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@fa8
    move-result v4

    #@fa9
    if-eqz v4, :cond_79

    #@fab
    .line 1384
    sget-object v4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@fad
    move-object/from16 v0, p2

    #@faf
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@fb2
    move-result-object v43

    #@fb3
    check-cast v43, Landroid/net/Uri;

    #@fb5
    .line 1390
    :goto_79
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@fb8
    move-result-object v53

    #@fb9
    .line 1392
    .restart local v53    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@fbc
    move-result-object v54

    #@fbd
    .line 1393
    .local v54, "_arg3":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@fbf
    move-object/from16 v1, v43

    #@fc1
    move-object/from16 v2, v53

    #@fc3
    move-object/from16 v3, v54

    #@fc5
    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->choosePrivateKeyAlias(ILandroid/net/Uri;Ljava/lang/String;Landroid/os/IBinder;)V

    #@fc8
    .line 1394
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@fcb
    .line 1395
    const/4 v4, 0x1

    #@fcc
    return v4

    #@fcd
    .line 1387
    .end local v53    # "_arg2":Ljava/lang/String;
    .end local v54    # "_arg3":Landroid/os/IBinder;
    :cond_79
    const/16 v43, 0x0

    #@fcf
    .local v43, "_arg1":Landroid/net/Uri;
    goto :goto_79

    #@fd0
    .line 1399
    .end local v5    # "_arg0":I
    .end local v43    # "_arg1":Landroid/net/Uri;
    :sswitch_56
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@fd3
    move-object/from16 v0, p2

    #@fd5
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@fd8
    .line 1401
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@fdb
    move-result v4

    #@fdc
    if-eqz v4, :cond_7a

    #@fde
    .line 1402
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@fe0
    move-object/from16 v0, p2

    #@fe2
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@fe5
    move-result-object v15

    #@fe6
    check-cast v15, Landroid/content/ComponentName;

    #@fe8
    .line 1408
    :goto_7a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@feb
    move-result-object v23

    #@fec
    .line 1409
    .restart local v23    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@fee
    move-object/from16 v1, v23

    #@ff0
    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setCertInstallerPackage(Landroid/content/ComponentName;Ljava/lang/String;)V

    #@ff3
    .line 1410
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@ff6
    .line 1411
    const/4 v4, 0x1

    #@ff7
    return v4

    #@ff8
    .line 1405
    .end local v23    # "_arg1":Ljava/lang/String;
    :cond_7a
    const/4 v15, 0x0

    #@ff9
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_7a

    #@ffa
    .line 1415
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_57
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@ffd
    move-object/from16 v0, p2

    #@fff
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1002
    .line 1417
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1005
    move-result v4

    #@1006
    if-eqz v4, :cond_7b

    #@1008
    .line 1418
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@100a
    move-object/from16 v0, p2

    #@100c
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@100f
    move-result-object v15

    #@1010
    check-cast v15, Landroid/content/ComponentName;

    #@1012
    .line 1423
    :goto_7b
    move-object/from16 v0, p0

    #@1014
    invoke-virtual {v0, v15}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCertInstallerPackage(Landroid/content/ComponentName;)Ljava/lang/String;

    #@1017
    move-result-object v65

    #@1018
    .line 1424
    .restart local v65    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@101b
    .line 1425
    move-object/from16 v0, p3

    #@101d
    move-object/from16 v1, v65

    #@101f
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1022
    .line 1426
    const/4 v4, 0x1

    #@1023
    return v4

    #@1024
    .line 1421
    .end local v65    # "_result":Ljava/lang/String;
    :cond_7b
    const/4 v15, 0x0

    #@1025
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_7b

    #@1026
    .line 1430
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_58
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@1029
    move-object/from16 v0, p2

    #@102b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@102e
    .line 1432
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1031
    move-result v4

    #@1032
    if-eqz v4, :cond_7c

    #@1034
    .line 1433
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1036
    move-object/from16 v0, p2

    #@1038
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@103b
    move-result-object v15

    #@103c
    check-cast v15, Landroid/content/ComponentName;

    #@103e
    .line 1439
    :goto_7c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1041
    move-result-object v23

    #@1042
    .line 1441
    .restart local v23    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1045
    move-result v4

    #@1046
    if-eqz v4, :cond_7d

    #@1048
    const/16 v30, 0x1

    #@104a
    .line 1442
    .restart local v30    # "_arg2":Z
    :goto_7d
    move-object/from16 v0, p0

    #@104c
    move-object/from16 v1, v23

    #@104e
    move/from16 v2, v30

    #@1050
    invoke-virtual {v0, v15, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAlwaysOnVpnPackage(Landroid/content/ComponentName;Ljava/lang/String;Z)Z

    #@1053
    move-result v70

    #@1054
    .line 1443
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1057
    .line 1444
    if-eqz v70, :cond_7e

    #@1059
    const/4 v4, 0x1

    #@105a
    :goto_7e
    move-object/from16 v0, p3

    #@105c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@105f
    .line 1445
    const/4 v4, 0x1

    #@1060
    return v4

    #@1061
    .line 1436
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v30    # "_arg2":Z
    .end local v70    # "_result":Z
    :cond_7c
    const/4 v15, 0x0

    #@1062
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_7c

    #@1063
    .line 1441
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v23    # "_arg1":Ljava/lang/String;
    :cond_7d
    const/16 v30, 0x0

    #@1065
    goto :goto_7d

    #@1066
    .line 1444
    .restart local v30    # "_arg2":Z
    .restart local v70    # "_result":Z
    :cond_7e
    const/4 v4, 0x0

    #@1067
    goto :goto_7e

    #@1068
    .line 1449
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v30    # "_arg2":Z
    .end local v70    # "_result":Z
    :sswitch_59
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@106b
    move-object/from16 v0, p2

    #@106d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1070
    .line 1451
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1073
    move-result v4

    #@1074
    if-eqz v4, :cond_7f

    #@1076
    .line 1452
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1078
    move-object/from16 v0, p2

    #@107a
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@107d
    move-result-object v15

    #@107e
    check-cast v15, Landroid/content/ComponentName;

    #@1080
    .line 1457
    :goto_7f
    move-object/from16 v0, p0

    #@1082
    invoke-virtual {v0, v15}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAlwaysOnVpnPackage(Landroid/content/ComponentName;)Ljava/lang/String;

    #@1085
    move-result-object v65

    #@1086
    .line 1458
    .restart local v65    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1089
    .line 1459
    move-object/from16 v0, p3

    #@108b
    move-object/from16 v1, v65

    #@108d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1090
    .line 1460
    const/4 v4, 0x1

    #@1091
    return v4

    #@1092
    .line 1455
    .end local v65    # "_result":Ljava/lang/String;
    :cond_7f
    const/4 v15, 0x0

    #@1093
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_7f

    #@1094
    .line 1464
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_5a
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@1097
    move-object/from16 v0, p2

    #@1099
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@109c
    .line 1466
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@109f
    move-result v4

    #@10a0
    if-eqz v4, :cond_80

    #@10a2
    .line 1467
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@10a4
    move-object/from16 v0, p2

    #@10a6
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@10a9
    move-result-object v15

    #@10aa
    check-cast v15, Landroid/content/ComponentName;

    #@10ac
    .line 1473
    :goto_80
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@10af
    move-result v4

    #@10b0
    if-eqz v4, :cond_81

    #@10b2
    .line 1474
    sget-object v4, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    #@10b4
    move-object/from16 v0, p2

    #@10b6
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@10b9
    move-result-object v40

    #@10ba
    check-cast v40, Landroid/content/IntentFilter;

    #@10bc
    .line 1480
    :goto_81
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@10bf
    move-result v4

    #@10c0
    if-eqz v4, :cond_82

    #@10c2
    .line 1481
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@10c4
    move-object/from16 v0, p2

    #@10c6
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@10c9
    move-result-object v24

    #@10ca
    check-cast v24, Landroid/content/ComponentName;

    #@10cc
    .line 1486
    :goto_82
    move-object/from16 v0, p0

    #@10ce
    move-object/from16 v1, v40

    #@10d0
    move-object/from16 v2, v24

    #@10d2
    invoke-virtual {v0, v15, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->addPersistentPreferredActivity(Landroid/content/ComponentName;Landroid/content/IntentFilter;Landroid/content/ComponentName;)V

    #@10d5
    .line 1487
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@10d8
    .line 1488
    const/4 v4, 0x1

    #@10d9
    return v4

    #@10da
    .line 1470
    :cond_80
    const/4 v15, 0x0

    #@10db
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_80

    #@10dc
    .line 1477
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :cond_81
    const/16 v40, 0x0

    #@10de
    .local v40, "_arg1":Landroid/content/IntentFilter;
    goto :goto_81

    #@10df
    .line 1484
    .end local v40    # "_arg1":Landroid/content/IntentFilter;
    :cond_82
    const/16 v24, 0x0

    #@10e1
    .local v24, "_arg2":Landroid/content/ComponentName;
    goto :goto_82

    #@10e2
    .line 1492
    .end local v24    # "_arg2":Landroid/content/ComponentName;
    :sswitch_5b
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@10e5
    move-object/from16 v0, p2

    #@10e7
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@10ea
    .line 1494
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@10ed
    move-result v4

    #@10ee
    if-eqz v4, :cond_83

    #@10f0
    .line 1495
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@10f2
    move-object/from16 v0, p2

    #@10f4
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@10f7
    move-result-object v15

    #@10f8
    check-cast v15, Landroid/content/ComponentName;

    #@10fa
    .line 1501
    :goto_83
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@10fd
    move-result-object v23

    #@10fe
    .line 1502
    .restart local v23    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@1100
    move-object/from16 v1, v23

    #@1102
    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->clearPackagePersistentPreferredActivities(Landroid/content/ComponentName;Ljava/lang/String;)V

    #@1105
    .line 1503
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1108
    .line 1504
    const/4 v4, 0x1

    #@1109
    return v4

    #@110a
    .line 1498
    .end local v23    # "_arg1":Ljava/lang/String;
    :cond_83
    const/4 v15, 0x0

    #@110b
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_83

    #@110c
    .line 1508
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_5c
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@110f
    move-object/from16 v0, p2

    #@1111
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1114
    .line 1510
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1117
    move-result v4

    #@1118
    if-eqz v4, :cond_84

    #@111a
    .line 1511
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@111c
    move-object/from16 v0, p2

    #@111e
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1121
    move-result-object v15

    #@1122
    check-cast v15, Landroid/content/ComponentName;

    #@1124
    .line 1517
    :goto_84
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1127
    move-result-object v23

    #@1128
    .line 1519
    .restart local v23    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@112b
    move-result v4

    #@112c
    if-eqz v4, :cond_85

    #@112e
    .line 1520
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1130
    move-object/from16 v0, p2

    #@1132
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1135
    move-result-object v51

    #@1136
    check-cast v51, Landroid/os/Bundle;

    #@1138
    .line 1525
    :goto_85
    move-object/from16 v0, p0

    #@113a
    move-object/from16 v1, v23

    #@113c
    move-object/from16 v2, v51

    #@113e
    invoke-virtual {v0, v15, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setApplicationRestrictions(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;)V

    #@1141
    .line 1526
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1144
    .line 1527
    const/4 v4, 0x1

    #@1145
    return v4

    #@1146
    .line 1514
    .end local v23    # "_arg1":Ljava/lang/String;
    :cond_84
    const/4 v15, 0x0

    #@1147
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_84

    #@1148
    .line 1523
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v23    # "_arg1":Ljava/lang/String;
    :cond_85
    const/16 v51, 0x0

    #@114a
    .local v51, "_arg2":Landroid/os/Bundle;
    goto :goto_85

    #@114b
    .line 1531
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v51    # "_arg2":Landroid/os/Bundle;
    :sswitch_5d
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@114e
    move-object/from16 v0, p2

    #@1150
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1153
    .line 1533
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1156
    move-result v4

    #@1157
    if-eqz v4, :cond_86

    #@1159
    .line 1534
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@115b
    move-object/from16 v0, p2

    #@115d
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1160
    move-result-object v15

    #@1161
    check-cast v15, Landroid/content/ComponentName;

    #@1163
    .line 1540
    :goto_86
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1166
    move-result-object v23

    #@1167
    .line 1541
    .restart local v23    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@1169
    move-object/from16 v1, v23

    #@116b
    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getApplicationRestrictions(Landroid/content/ComponentName;Ljava/lang/String;)Landroid/os/Bundle;

    #@116e
    move-result-object v62

    #@116f
    .line 1542
    .local v62, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1172
    .line 1543
    if-eqz v62, :cond_87

    #@1174
    .line 1544
    const/4 v4, 0x1

    #@1175
    move-object/from16 v0, p3

    #@1177
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@117a
    .line 1545
    const/4 v4, 0x1

    #@117b
    move-object/from16 v0, v62

    #@117d
    move-object/from16 v1, p3

    #@117f
    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@1182
    .line 1550
    :goto_87
    const/4 v4, 0x1

    #@1183
    return v4

    #@1184
    .line 1537
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v62    # "_result":Landroid/os/Bundle;
    :cond_86
    const/4 v15, 0x0

    #@1185
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_86

    #@1186
    .line 1548
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v23    # "_arg1":Ljava/lang/String;
    .restart local v62    # "_result":Landroid/os/Bundle;
    :cond_87
    const/4 v4, 0x0

    #@1187
    move-object/from16 v0, p3

    #@1189
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@118c
    goto :goto_87

    #@118d
    .line 1554
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v62    # "_result":Landroid/os/Bundle;
    :sswitch_5e
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@1190
    move-object/from16 v0, p2

    #@1192
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1195
    .line 1556
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1198
    move-result v4

    #@1199
    if-eqz v4, :cond_88

    #@119b
    .line 1557
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@119d
    move-object/from16 v0, p2

    #@119f
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@11a2
    move-result-object v15

    #@11a3
    check-cast v15, Landroid/content/ComponentName;

    #@11a5
    .line 1563
    :goto_88
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@11a8
    move-result-object v23

    #@11a9
    .line 1564
    .restart local v23    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@11ab
    move-object/from16 v1, v23

    #@11ad
    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setApplicationRestrictionsManagingPackage(Landroid/content/ComponentName;Ljava/lang/String;)Z

    #@11b0
    move-result v70

    #@11b1
    .line 1565
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@11b4
    .line 1566
    if-eqz v70, :cond_89

    #@11b6
    const/4 v4, 0x1

    #@11b7
    :goto_89
    move-object/from16 v0, p3

    #@11b9
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@11bc
    .line 1567
    const/4 v4, 0x1

    #@11bd
    return v4

    #@11be
    .line 1560
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v70    # "_result":Z
    :cond_88
    const/4 v15, 0x0

    #@11bf
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_88

    #@11c0
    .line 1566
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v23    # "_arg1":Ljava/lang/String;
    .restart local v70    # "_result":Z
    :cond_89
    const/4 v4, 0x0

    #@11c1
    goto :goto_89

    #@11c2
    .line 1571
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v70    # "_result":Z
    :sswitch_5f
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@11c5
    move-object/from16 v0, p2

    #@11c7
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@11ca
    .line 1573
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@11cd
    move-result v4

    #@11ce
    if-eqz v4, :cond_8a

    #@11d0
    .line 1574
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@11d2
    move-object/from16 v0, p2

    #@11d4
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@11d7
    move-result-object v15

    #@11d8
    check-cast v15, Landroid/content/ComponentName;

    #@11da
    .line 1579
    :goto_8a
    move-object/from16 v0, p0

    #@11dc
    invoke-virtual {v0, v15}, Landroid/app/admin/IDevicePolicyManager$Stub;->getApplicationRestrictionsManagingPackage(Landroid/content/ComponentName;)Ljava/lang/String;

    #@11df
    move-result-object v65

    #@11e0
    .line 1580
    .restart local v65    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@11e3
    .line 1581
    move-object/from16 v0, p3

    #@11e5
    move-object/from16 v1, v65

    #@11e7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11ea
    .line 1582
    const/4 v4, 0x1

    #@11eb
    return v4

    #@11ec
    .line 1577
    .end local v65    # "_result":Ljava/lang/String;
    :cond_8a
    const/4 v15, 0x0

    #@11ed
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_8a

    #@11ee
    .line 1586
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_60
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@11f1
    move-object/from16 v0, p2

    #@11f3
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@11f6
    .line 1587
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->isCallerApplicationRestrictionsManagingPackage()Z

    #@11f9
    move-result v70

    #@11fa
    .line 1588
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@11fd
    .line 1589
    if-eqz v70, :cond_8b

    #@11ff
    const/4 v4, 0x1

    #@1200
    :goto_8b
    move-object/from16 v0, p3

    #@1202
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@1205
    .line 1590
    const/4 v4, 0x1

    #@1206
    return v4

    #@1207
    .line 1589
    :cond_8b
    const/4 v4, 0x0

    #@1208
    goto :goto_8b

    #@1209
    .line 1594
    .end local v70    # "_result":Z
    :sswitch_61
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@120c
    move-object/from16 v0, p2

    #@120e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1211
    .line 1596
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1214
    move-result v4

    #@1215
    if-eqz v4, :cond_8c

    #@1217
    .line 1597
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1219
    move-object/from16 v0, p2

    #@121b
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@121e
    move-result-object v15

    #@121f
    check-cast v15, Landroid/content/ComponentName;

    #@1221
    .line 1603
    :goto_8c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1224
    move-result v4

    #@1225
    if-eqz v4, :cond_8d

    #@1227
    .line 1604
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1229
    move-object/from16 v0, p2

    #@122b
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@122e
    move-result-object v38

    #@122f
    check-cast v38, Landroid/content/ComponentName;

    #@1231
    .line 1609
    :goto_8d
    move-object/from16 v0, p0

    #@1233
    move-object/from16 v1, v38

    #@1235
    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setRestrictionsProvider(Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    #@1238
    .line 1610
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@123b
    .line 1611
    const/4 v4, 0x1

    #@123c
    return v4

    #@123d
    .line 1600
    :cond_8c
    const/4 v15, 0x0

    #@123e
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_8c

    #@123f
    .line 1607
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :cond_8d
    const/16 v38, 0x0

    #@1241
    .local v38, "_arg1":Landroid/content/ComponentName;
    goto :goto_8d

    #@1242
    .line 1615
    .end local v38    # "_arg1":Landroid/content/ComponentName;
    :sswitch_62
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@1245
    move-object/from16 v0, p2

    #@1247
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@124a
    .line 1617
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@124d
    move-result v5

    #@124e
    .line 1618
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@1250
    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getRestrictionsProvider(I)Landroid/content/ComponentName;

    #@1253
    move-result-object v60

    #@1254
    .line 1619
    .restart local v60    # "_result":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1257
    .line 1620
    if-eqz v60, :cond_8e

    #@1259
    .line 1621
    const/4 v4, 0x1

    #@125a
    move-object/from16 v0, p3

    #@125c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@125f
    .line 1622
    const/4 v4, 0x1

    #@1260
    move-object/from16 v0, v60

    #@1262
    move-object/from16 v1, p3

    #@1264
    invoke-virtual {v0, v1, v4}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    #@1267
    .line 1627
    :goto_8e
    const/4 v4, 0x1

    #@1268
    return v4

    #@1269
    .line 1625
    :cond_8e
    const/4 v4, 0x0

    #@126a
    move-object/from16 v0, p3

    #@126c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@126f
    goto :goto_8e

    #@1270
    .line 1631
    .end local v5    # "_arg0":I
    .end local v60    # "_result":Landroid/content/ComponentName;
    :sswitch_63
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@1273
    move-object/from16 v0, p2

    #@1275
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1278
    .line 1633
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@127b
    move-result v4

    #@127c
    if-eqz v4, :cond_8f

    #@127e
    .line 1634
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1280
    move-object/from16 v0, p2

    #@1282
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1285
    move-result-object v15

    #@1286
    check-cast v15, Landroid/content/ComponentName;

    #@1288
    .line 1640
    :goto_8f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@128b
    move-result-object v23

    #@128c
    .line 1642
    .restart local v23    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@128f
    move-result v4

    #@1290
    if-eqz v4, :cond_90

    #@1292
    const/16 v30, 0x1

    #@1294
    .line 1643
    .restart local v30    # "_arg2":Z
    :goto_90
    move-object/from16 v0, p0

    #@1296
    move-object/from16 v1, v23

    #@1298
    move/from16 v2, v30

    #@129a
    invoke-virtual {v0, v15, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setUserRestriction(Landroid/content/ComponentName;Ljava/lang/String;Z)V

    #@129d
    .line 1644
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@12a0
    .line 1645
    const/4 v4, 0x1

    #@12a1
    return v4

    #@12a2
    .line 1637
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v30    # "_arg2":Z
    :cond_8f
    const/4 v15, 0x0

    #@12a3
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_8f

    #@12a4
    .line 1642
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v23    # "_arg1":Ljava/lang/String;
    :cond_90
    const/16 v30, 0x0

    #@12a6
    goto :goto_90

    #@12a7
    .line 1649
    .end local v23    # "_arg1":Ljava/lang/String;
    :sswitch_64
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@12aa
    move-object/from16 v0, p2

    #@12ac
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@12af
    .line 1651
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@12b2
    move-result v4

    #@12b3
    if-eqz v4, :cond_91

    #@12b5
    .line 1652
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@12b7
    move-object/from16 v0, p2

    #@12b9
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@12bc
    move-result-object v15

    #@12bd
    check-cast v15, Landroid/content/ComponentName;

    #@12bf
    .line 1657
    :goto_91
    move-object/from16 v0, p0

    #@12c1
    invoke-virtual {v0, v15}, Landroid/app/admin/IDevicePolicyManager$Stub;->getUserRestrictions(Landroid/content/ComponentName;)Landroid/os/Bundle;

    #@12c4
    move-result-object v62

    #@12c5
    .line 1658
    .restart local v62    # "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@12c8
    .line 1659
    if-eqz v62, :cond_92

    #@12ca
    .line 1660
    const/4 v4, 0x1

    #@12cb
    move-object/from16 v0, p3

    #@12cd
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@12d0
    .line 1661
    const/4 v4, 0x1

    #@12d1
    move-object/from16 v0, v62

    #@12d3
    move-object/from16 v1, p3

    #@12d5
    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@12d8
    .line 1666
    :goto_92
    const/4 v4, 0x1

    #@12d9
    return v4

    #@12da
    .line 1655
    .end local v62    # "_result":Landroid/os/Bundle;
    :cond_91
    const/4 v15, 0x0

    #@12db
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_91

    #@12dc
    .line 1664
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v62    # "_result":Landroid/os/Bundle;
    :cond_92
    const/4 v4, 0x0

    #@12dd
    move-object/from16 v0, p3

    #@12df
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@12e2
    goto :goto_92

    #@12e3
    .line 1670
    .end local v62    # "_result":Landroid/os/Bundle;
    :sswitch_65
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@12e6
    move-object/from16 v0, p2

    #@12e8
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@12eb
    .line 1672
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@12ee
    move-result v4

    #@12ef
    if-eqz v4, :cond_93

    #@12f1
    .line 1673
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@12f3
    move-object/from16 v0, p2

    #@12f5
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@12f8
    move-result-object v15

    #@12f9
    check-cast v15, Landroid/content/ComponentName;

    #@12fb
    .line 1679
    :goto_93
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@12fe
    move-result v4

    #@12ff
    if-eqz v4, :cond_94

    #@1301
    .line 1680
    sget-object v4, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1303
    move-object/from16 v0, p2

    #@1305
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1308
    move-result-object v40

    #@1309
    check-cast v40, Landroid/content/IntentFilter;

    #@130b
    .line 1686
    :goto_94
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@130e
    move-result v7

    #@130f
    .line 1687
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    #@1311
    move-object/from16 v1, v40

    #@1313
    invoke-virtual {v0, v15, v1, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->addCrossProfileIntentFilter(Landroid/content/ComponentName;Landroid/content/IntentFilter;I)V

    #@1316
    .line 1688
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1319
    .line 1689
    const/4 v4, 0x1

    #@131a
    return v4

    #@131b
    .line 1676
    .end local v7    # "_arg2":I
    :cond_93
    const/4 v15, 0x0

    #@131c
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_93

    #@131d
    .line 1683
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :cond_94
    const/16 v40, 0x0

    #@131f
    .restart local v40    # "_arg1":Landroid/content/IntentFilter;
    goto :goto_94

    #@1320
    .line 1693
    .end local v40    # "_arg1":Landroid/content/IntentFilter;
    :sswitch_66
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@1323
    move-object/from16 v0, p2

    #@1325
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1328
    .line 1695
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@132b
    move-result v4

    #@132c
    if-eqz v4, :cond_95

    #@132e
    .line 1696
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1330
    move-object/from16 v0, p2

    #@1332
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1335
    move-result-object v15

    #@1336
    check-cast v15, Landroid/content/ComponentName;

    #@1338
    .line 1701
    :goto_95
    move-object/from16 v0, p0

    #@133a
    invoke-virtual {v0, v15}, Landroid/app/admin/IDevicePolicyManager$Stub;->clearCrossProfileIntentFilters(Landroid/content/ComponentName;)V

    #@133d
    .line 1702
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1340
    .line 1703
    const/4 v4, 0x1

    #@1341
    return v4

    #@1342
    .line 1699
    :cond_95
    const/4 v15, 0x0

    #@1343
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_95

    #@1344
    .line 1707
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_67
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@1347
    move-object/from16 v0, p2

    #@1349
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@134c
    .line 1709
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@134f
    move-result v4

    #@1350
    if-eqz v4, :cond_96

    #@1352
    .line 1710
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1354
    move-object/from16 v0, p2

    #@1356
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1359
    move-result-object v15

    #@135a
    check-cast v15, Landroid/content/ComponentName;

    #@135c
    .line 1716
    :goto_96
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@135f
    move-result-object v4

    #@1360
    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@1363
    move-result-object v72

    #@1364
    .line 1717
    .local v72, "cl":Ljava/lang/ClassLoader;
    move-object/from16 v0, p2

    #@1366
    move-object/from16 v1, v72

    #@1368
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    #@136b
    move-result-object v47

    #@136c
    .line 1718
    .local v47, "_arg1":Ljava/util/List;
    move-object/from16 v0, p0

    #@136e
    move-object/from16 v1, v47

    #@1370
    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPermittedAccessibilityServices(Landroid/content/ComponentName;Ljava/util/List;)Z

    #@1373
    move-result v70

    #@1374
    .line 1719
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1377
    .line 1720
    if-eqz v70, :cond_97

    #@1379
    const/4 v4, 0x1

    #@137a
    :goto_97
    move-object/from16 v0, p3

    #@137c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@137f
    .line 1721
    const/4 v4, 0x1

    #@1380
    return v4

    #@1381
    .line 1713
    .end local v47    # "_arg1":Ljava/util/List;
    .end local v70    # "_result":Z
    .end local v72    # "cl":Ljava/lang/ClassLoader;
    :cond_96
    const/4 v15, 0x0

    #@1382
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_96

    #@1383
    .line 1720
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v47    # "_arg1":Ljava/util/List;
    .restart local v70    # "_result":Z
    .restart local v72    # "cl":Ljava/lang/ClassLoader;
    :cond_97
    const/4 v4, 0x0

    #@1384
    goto :goto_97

    #@1385
    .line 1725
    .end local v47    # "_arg1":Ljava/util/List;
    .end local v70    # "_result":Z
    .end local v72    # "cl":Ljava/lang/ClassLoader;
    :sswitch_68
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@1388
    move-object/from16 v0, p2

    #@138a
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@138d
    .line 1727
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1390
    move-result v4

    #@1391
    if-eqz v4, :cond_98

    #@1393
    .line 1728
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1395
    move-object/from16 v0, p2

    #@1397
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@139a
    move-result-object v15

    #@139b
    check-cast v15, Landroid/content/ComponentName;

    #@139d
    .line 1733
    :goto_98
    move-object/from16 v0, p0

    #@139f
    invoke-virtual {v0, v15}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPermittedAccessibilityServices(Landroid/content/ComponentName;)Ljava/util/List;

    #@13a2
    move-result-object v66

    #@13a3
    .line 1734
    .local v66, "_result":Ljava/util/List;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@13a6
    .line 1735
    move-object/from16 v0, p3

    #@13a8
    move-object/from16 v1, v66

    #@13aa
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    #@13ad
    .line 1736
    const/4 v4, 0x1

    #@13ae
    return v4

    #@13af
    .line 1731
    .end local v66    # "_result":Ljava/util/List;
    :cond_98
    const/4 v15, 0x0

    #@13b0
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_98

    #@13b1
    .line 1740
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_69
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@13b4
    move-object/from16 v0, p2

    #@13b6
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@13b9
    .line 1742
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@13bc
    move-result v5

    #@13bd
    .line 1743
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@13bf
    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPermittedAccessibilityServicesForUser(I)Ljava/util/List;

    #@13c2
    move-result-object v66

    #@13c3
    .line 1744
    .restart local v66    # "_result":Ljava/util/List;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@13c6
    .line 1745
    move-object/from16 v0, p3

    #@13c8
    move-object/from16 v1, v66

    #@13ca
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    #@13cd
    .line 1746
    const/4 v4, 0x1

    #@13ce
    return v4

    #@13cf
    .line 1750
    .end local v5    # "_arg0":I
    .end local v66    # "_result":Ljava/util/List;
    :sswitch_6a
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@13d2
    move-object/from16 v0, p2

    #@13d4
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@13d7
    .line 1752
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@13da
    move-result v4

    #@13db
    if-eqz v4, :cond_99

    #@13dd
    .line 1753
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@13df
    move-object/from16 v0, p2

    #@13e1
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@13e4
    move-result-object v15

    #@13e5
    check-cast v15, Landroid/content/ComponentName;

    #@13e7
    .line 1759
    :goto_99
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@13ea
    move-result-object v23

    #@13eb
    .line 1761
    .restart local v23    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@13ee
    move-result v7

    #@13ef
    .line 1762
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    #@13f1
    move-object/from16 v1, v23

    #@13f3
    invoke-virtual {v0, v15, v1, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->isAccessibilityServicePermittedByAdmin(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    #@13f6
    move-result v70

    #@13f7
    .line 1763
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@13fa
    .line 1764
    if-eqz v70, :cond_9a

    #@13fc
    const/4 v4, 0x1

    #@13fd
    :goto_9a
    move-object/from16 v0, p3

    #@13ff
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@1402
    .line 1765
    const/4 v4, 0x1

    #@1403
    return v4

    #@1404
    .line 1756
    .end local v7    # "_arg2":I
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v70    # "_result":Z
    :cond_99
    const/4 v15, 0x0

    #@1405
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_99

    #@1406
    .line 1764
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v7    # "_arg2":I
    .restart local v23    # "_arg1":Ljava/lang/String;
    .restart local v70    # "_result":Z
    :cond_9a
    const/4 v4, 0x0

    #@1407
    goto :goto_9a

    #@1408
    .line 1769
    .end local v7    # "_arg2":I
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v70    # "_result":Z
    :sswitch_6b
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@140b
    move-object/from16 v0, p2

    #@140d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1410
    .line 1771
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1413
    move-result v4

    #@1414
    if-eqz v4, :cond_9b

    #@1416
    .line 1772
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1418
    move-object/from16 v0, p2

    #@141a
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@141d
    move-result-object v15

    #@141e
    check-cast v15, Landroid/content/ComponentName;

    #@1420
    .line 1778
    :goto_9b
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@1423
    move-result-object v4

    #@1424
    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@1427
    move-result-object v72

    #@1428
    .line 1779
    .restart local v72    # "cl":Ljava/lang/ClassLoader;
    move-object/from16 v0, p2

    #@142a
    move-object/from16 v1, v72

    #@142c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    #@142f
    move-result-object v47

    #@1430
    .line 1780
    .restart local v47    # "_arg1":Ljava/util/List;
    move-object/from16 v0, p0

    #@1432
    move-object/from16 v1, v47

    #@1434
    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPermittedInputMethods(Landroid/content/ComponentName;Ljava/util/List;)Z

    #@1437
    move-result v70

    #@1438
    .line 1781
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@143b
    .line 1782
    if-eqz v70, :cond_9c

    #@143d
    const/4 v4, 0x1

    #@143e
    :goto_9c
    move-object/from16 v0, p3

    #@1440
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@1443
    .line 1783
    const/4 v4, 0x1

    #@1444
    return v4

    #@1445
    .line 1775
    .end local v47    # "_arg1":Ljava/util/List;
    .end local v70    # "_result":Z
    .end local v72    # "cl":Ljava/lang/ClassLoader;
    :cond_9b
    const/4 v15, 0x0

    #@1446
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_9b

    #@1447
    .line 1782
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v47    # "_arg1":Ljava/util/List;
    .restart local v70    # "_result":Z
    .restart local v72    # "cl":Ljava/lang/ClassLoader;
    :cond_9c
    const/4 v4, 0x0

    #@1448
    goto :goto_9c

    #@1449
    .line 1787
    .end local v47    # "_arg1":Ljava/util/List;
    .end local v70    # "_result":Z
    .end local v72    # "cl":Ljava/lang/ClassLoader;
    :sswitch_6c
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@144c
    move-object/from16 v0, p2

    #@144e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1451
    .line 1789
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1454
    move-result v4

    #@1455
    if-eqz v4, :cond_9d

    #@1457
    .line 1790
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1459
    move-object/from16 v0, p2

    #@145b
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@145e
    move-result-object v15

    #@145f
    check-cast v15, Landroid/content/ComponentName;

    #@1461
    .line 1795
    :goto_9d
    move-object/from16 v0, p0

    #@1463
    invoke-virtual {v0, v15}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPermittedInputMethods(Landroid/content/ComponentName;)Ljava/util/List;

    #@1466
    move-result-object v66

    #@1467
    .line 1796
    .restart local v66    # "_result":Ljava/util/List;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@146a
    .line 1797
    move-object/from16 v0, p3

    #@146c
    move-object/from16 v1, v66

    #@146e
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    #@1471
    .line 1798
    const/4 v4, 0x1

    #@1472
    return v4

    #@1473
    .line 1793
    .end local v66    # "_result":Ljava/util/List;
    :cond_9d
    const/4 v15, 0x0

    #@1474
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_9d

    #@1475
    .line 1802
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_6d
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@1478
    move-object/from16 v0, p2

    #@147a
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@147d
    .line 1803
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPermittedInputMethodsForCurrentUser()Ljava/util/List;

    #@1480
    move-result-object v66

    #@1481
    .line 1804
    .restart local v66    # "_result":Ljava/util/List;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1484
    .line 1805
    move-object/from16 v0, p3

    #@1486
    move-object/from16 v1, v66

    #@1488
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    #@148b
    .line 1806
    const/4 v4, 0x1

    #@148c
    return v4

    #@148d
    .line 1810
    .end local v66    # "_result":Ljava/util/List;
    :sswitch_6e
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@1490
    move-object/from16 v0, p2

    #@1492
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1495
    .line 1812
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1498
    move-result v4

    #@1499
    if-eqz v4, :cond_9e

    #@149b
    .line 1813
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@149d
    move-object/from16 v0, p2

    #@149f
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@14a2
    move-result-object v15

    #@14a3
    check-cast v15, Landroid/content/ComponentName;

    #@14a5
    .line 1819
    :goto_9e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@14a8
    move-result-object v23

    #@14a9
    .line 1821
    .restart local v23    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@14ac
    move-result v7

    #@14ad
    .line 1822
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    #@14af
    move-object/from16 v1, v23

    #@14b1
    invoke-virtual {v0, v15, v1, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->isInputMethodPermittedByAdmin(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    #@14b4
    move-result v70

    #@14b5
    .line 1823
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@14b8
    .line 1824
    if-eqz v70, :cond_9f

    #@14ba
    const/4 v4, 0x1

    #@14bb
    :goto_9f
    move-object/from16 v0, p3

    #@14bd
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@14c0
    .line 1825
    const/4 v4, 0x1

    #@14c1
    return v4

    #@14c2
    .line 1816
    .end local v7    # "_arg2":I
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v70    # "_result":Z
    :cond_9e
    const/4 v15, 0x0

    #@14c3
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_9e

    #@14c4
    .line 1824
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v7    # "_arg2":I
    .restart local v23    # "_arg1":Ljava/lang/String;
    .restart local v70    # "_result":Z
    :cond_9f
    const/4 v4, 0x0

    #@14c5
    goto :goto_9f

    #@14c6
    .line 1829
    .end local v7    # "_arg2":I
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v70    # "_result":Z
    :sswitch_6f
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@14c9
    move-object/from16 v0, p2

    #@14cb
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@14ce
    .line 1831
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@14d1
    move-result v4

    #@14d2
    if-eqz v4, :cond_a0

    #@14d4
    .line 1832
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@14d6
    move-object/from16 v0, p2

    #@14d8
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@14db
    move-result-object v15

    #@14dc
    check-cast v15, Landroid/content/ComponentName;

    #@14de
    .line 1838
    :goto_a0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@14e1
    move-result-object v23

    #@14e2
    .line 1840
    .restart local v23    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@14e5
    move-result v4

    #@14e6
    if-eqz v4, :cond_a1

    #@14e8
    const/16 v30, 0x1

    #@14ea
    .line 1841
    .restart local v30    # "_arg2":Z
    :goto_a1
    move-object/from16 v0, p0

    #@14ec
    move-object/from16 v1, v23

    #@14ee
    move/from16 v2, v30

    #@14f0
    invoke-virtual {v0, v15, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setApplicationHidden(Landroid/content/ComponentName;Ljava/lang/String;Z)Z

    #@14f3
    move-result v70

    #@14f4
    .line 1842
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@14f7
    .line 1843
    if-eqz v70, :cond_a2

    #@14f9
    const/4 v4, 0x1

    #@14fa
    :goto_a2
    move-object/from16 v0, p3

    #@14fc
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@14ff
    .line 1844
    const/4 v4, 0x1

    #@1500
    return v4

    #@1501
    .line 1835
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v30    # "_arg2":Z
    .end local v70    # "_result":Z
    :cond_a0
    const/4 v15, 0x0

    #@1502
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_a0

    #@1503
    .line 1840
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v23    # "_arg1":Ljava/lang/String;
    :cond_a1
    const/16 v30, 0x0

    #@1505
    goto :goto_a1

    #@1506
    .line 1843
    .restart local v30    # "_arg2":Z
    .restart local v70    # "_result":Z
    :cond_a2
    const/4 v4, 0x0

    #@1507
    goto :goto_a2

    #@1508
    .line 1848
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v30    # "_arg2":Z
    .end local v70    # "_result":Z
    :sswitch_70
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@150b
    move-object/from16 v0, p2

    #@150d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1510
    .line 1850
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1513
    move-result v4

    #@1514
    if-eqz v4, :cond_a3

    #@1516
    .line 1851
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1518
    move-object/from16 v0, p2

    #@151a
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@151d
    move-result-object v15

    #@151e
    check-cast v15, Landroid/content/ComponentName;

    #@1520
    .line 1857
    :goto_a3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1523
    move-result-object v23

    #@1524
    .line 1858
    .restart local v23    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@1526
    move-object/from16 v1, v23

    #@1528
    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->isApplicationHidden(Landroid/content/ComponentName;Ljava/lang/String;)Z

    #@152b
    move-result v70

    #@152c
    .line 1859
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@152f
    .line 1860
    if-eqz v70, :cond_a4

    #@1531
    const/4 v4, 0x1

    #@1532
    :goto_a4
    move-object/from16 v0, p3

    #@1534
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@1537
    .line 1861
    const/4 v4, 0x1

    #@1538
    return v4

    #@1539
    .line 1854
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v70    # "_result":Z
    :cond_a3
    const/4 v15, 0x0

    #@153a
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_a3

    #@153b
    .line 1860
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v23    # "_arg1":Ljava/lang/String;
    .restart local v70    # "_result":Z
    :cond_a4
    const/4 v4, 0x0

    #@153c
    goto :goto_a4

    #@153d
    .line 1865
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v70    # "_result":Z
    :sswitch_71
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@1540
    move-object/from16 v0, p2

    #@1542
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1545
    .line 1867
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1548
    move-result v4

    #@1549
    if-eqz v4, :cond_a5

    #@154b
    .line 1868
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@154d
    move-object/from16 v0, p2

    #@154f
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1552
    move-result-object v15

    #@1553
    check-cast v15, Landroid/content/ComponentName;

    #@1555
    .line 1874
    :goto_a5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1558
    move-result-object v23

    #@1559
    .line 1876
    .restart local v23    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@155c
    move-result v4

    #@155d
    if-eqz v4, :cond_a6

    #@155f
    .line 1877
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1561
    move-object/from16 v0, p2

    #@1563
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1566
    move-result-object v24

    #@1567
    check-cast v24, Landroid/content/ComponentName;

    #@1569
    .line 1883
    :goto_a6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@156c
    move-result v4

    #@156d
    if-eqz v4, :cond_a7

    #@156f
    .line 1884
    sget-object v4, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1571
    move-object/from16 v0, p2

    #@1573
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1576
    move-result-object v25

    #@1577
    check-cast v25, Landroid/os/PersistableBundle;

    #@1579
    .line 1890
    :goto_a7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@157c
    move-result v9

    #@157d
    .restart local v9    # "_arg4":I
    move-object/from16 v21, p0

    #@157f
    move-object/from16 v22, v15

    #@1581
    move/from16 v26, v9

    #@1583
    .line 1891
    invoke-virtual/range {v21 .. v26}, Landroid/app/admin/IDevicePolicyManager$Stub;->createAndManageUser(Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/PersistableBundle;I)Landroid/os/UserHandle;

    #@1586
    move-result-object v63

    #@1587
    .line 1892
    .local v63, "_result":Landroid/os/UserHandle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@158a
    .line 1893
    if-eqz v63, :cond_a8

    #@158c
    .line 1894
    const/4 v4, 0x1

    #@158d
    move-object/from16 v0, p3

    #@158f
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@1592
    .line 1895
    const/4 v4, 0x1

    #@1593
    move-object/from16 v0, v63

    #@1595
    move-object/from16 v1, p3

    #@1597
    invoke-virtual {v0, v1, v4}, Landroid/os/UserHandle;->writeToParcel(Landroid/os/Parcel;I)V

    #@159a
    .line 1900
    :goto_a8
    const/4 v4, 0x1

    #@159b
    return v4

    #@159c
    .line 1871
    .end local v9    # "_arg4":I
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v63    # "_result":Landroid/os/UserHandle;
    :cond_a5
    const/4 v15, 0x0

    #@159d
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_a5

    #@159e
    .line 1880
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v23    # "_arg1":Ljava/lang/String;
    :cond_a6
    const/16 v24, 0x0

    #@15a0
    .restart local v24    # "_arg2":Landroid/content/ComponentName;
    goto :goto_a6

    #@15a1
    .line 1887
    .end local v24    # "_arg2":Landroid/content/ComponentName;
    :cond_a7
    const/16 v25, 0x0

    #@15a3
    .local v25, "_arg3":Landroid/os/PersistableBundle;
    goto :goto_a7

    #@15a4
    .line 1898
    .end local v25    # "_arg3":Landroid/os/PersistableBundle;
    .restart local v9    # "_arg4":I
    .restart local v63    # "_result":Landroid/os/UserHandle;
    :cond_a8
    const/4 v4, 0x0

    #@15a5
    move-object/from16 v0, p3

    #@15a7
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@15aa
    goto :goto_a8

    #@15ab
    .line 1904
    .end local v9    # "_arg4":I
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v63    # "_result":Landroid/os/UserHandle;
    :sswitch_72
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@15ae
    move-object/from16 v0, p2

    #@15b0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@15b3
    .line 1906
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@15b6
    move-result v4

    #@15b7
    if-eqz v4, :cond_a9

    #@15b9
    .line 1907
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@15bb
    move-object/from16 v0, p2

    #@15bd
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@15c0
    move-result-object v15

    #@15c1
    check-cast v15, Landroid/content/ComponentName;

    #@15c3
    .line 1913
    :goto_a9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@15c6
    move-result v4

    #@15c7
    if-eqz v4, :cond_aa

    #@15c9
    .line 1914
    sget-object v4, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@15cb
    move-object/from16 v0, p2

    #@15cd
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@15d0
    move-result-object v45

    #@15d1
    check-cast v45, Landroid/os/UserHandle;

    #@15d3
    .line 1919
    :goto_aa
    move-object/from16 v0, p0

    #@15d5
    move-object/from16 v1, v45

    #@15d7
    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->removeUser(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z

    #@15da
    move-result v70

    #@15db
    .line 1920
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@15de
    .line 1921
    if-eqz v70, :cond_ab

    #@15e0
    const/4 v4, 0x1

    #@15e1
    :goto_ab
    move-object/from16 v0, p3

    #@15e3
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@15e6
    .line 1922
    const/4 v4, 0x1

    #@15e7
    return v4

    #@15e8
    .line 1910
    .end local v70    # "_result":Z
    :cond_a9
    const/4 v15, 0x0

    #@15e9
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_a9

    #@15ea
    .line 1917
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :cond_aa
    const/16 v45, 0x0

    #@15ec
    .local v45, "_arg1":Landroid/os/UserHandle;
    goto :goto_aa

    #@15ed
    .line 1921
    .end local v45    # "_arg1":Landroid/os/UserHandle;
    .restart local v70    # "_result":Z
    :cond_ab
    const/4 v4, 0x0

    #@15ee
    goto :goto_ab

    #@15ef
    .line 1926
    .end local v70    # "_result":Z
    :sswitch_73
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@15f2
    move-object/from16 v0, p2

    #@15f4
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@15f7
    .line 1928
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@15fa
    move-result v4

    #@15fb
    if-eqz v4, :cond_ac

    #@15fd
    .line 1929
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@15ff
    move-object/from16 v0, p2

    #@1601
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1604
    move-result-object v15

    #@1605
    check-cast v15, Landroid/content/ComponentName;

    #@1607
    .line 1935
    :goto_ac
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@160a
    move-result v4

    #@160b
    if-eqz v4, :cond_ad

    #@160d
    .line 1936
    sget-object v4, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@160f
    move-object/from16 v0, p2

    #@1611
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1614
    move-result-object v45

    #@1615
    check-cast v45, Landroid/os/UserHandle;

    #@1617
    .line 1941
    :goto_ad
    move-object/from16 v0, p0

    #@1619
    move-object/from16 v1, v45

    #@161b
    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->switchUser(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z

    #@161e
    move-result v70

    #@161f
    .line 1942
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1622
    .line 1943
    if-eqz v70, :cond_ae

    #@1624
    const/4 v4, 0x1

    #@1625
    :goto_ae
    move-object/from16 v0, p3

    #@1627
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@162a
    .line 1944
    const/4 v4, 0x1

    #@162b
    return v4

    #@162c
    .line 1932
    .end local v70    # "_result":Z
    :cond_ac
    const/4 v15, 0x0

    #@162d
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_ac

    #@162e
    .line 1939
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :cond_ad
    const/16 v45, 0x0

    #@1630
    .restart local v45    # "_arg1":Landroid/os/UserHandle;
    goto :goto_ad

    #@1631
    .line 1943
    .end local v45    # "_arg1":Landroid/os/UserHandle;
    .restart local v70    # "_result":Z
    :cond_ae
    const/4 v4, 0x0

    #@1632
    goto :goto_ae

    #@1633
    .line 1948
    .end local v70    # "_result":Z
    :sswitch_74
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@1636
    move-object/from16 v0, p2

    #@1638
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@163b
    .line 1950
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@163e
    move-result v4

    #@163f
    if-eqz v4, :cond_af

    #@1641
    .line 1951
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1643
    move-object/from16 v0, p2

    #@1645
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1648
    move-result-object v15

    #@1649
    check-cast v15, Landroid/content/ComponentName;

    #@164b
    .line 1957
    :goto_af
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@164e
    move-result-object v23

    #@164f
    .line 1958
    .restart local v23    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@1651
    move-object/from16 v1, v23

    #@1653
    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->enableSystemApp(Landroid/content/ComponentName;Ljava/lang/String;)V

    #@1656
    .line 1959
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1659
    .line 1960
    const/4 v4, 0x1

    #@165a
    return v4

    #@165b
    .line 1954
    .end local v23    # "_arg1":Ljava/lang/String;
    :cond_af
    const/4 v15, 0x0

    #@165c
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_af

    #@165d
    .line 1964
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_75
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@1660
    move-object/from16 v0, p2

    #@1662
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1665
    .line 1966
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1668
    move-result v4

    #@1669
    if-eqz v4, :cond_b0

    #@166b
    .line 1967
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@166d
    move-object/from16 v0, p2

    #@166f
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1672
    move-result-object v15

    #@1673
    check-cast v15, Landroid/content/ComponentName;

    #@1675
    .line 1973
    :goto_b0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1678
    move-result v4

    #@1679
    if-eqz v4, :cond_b1

    #@167b
    .line 1974
    sget-object v4, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@167d
    move-object/from16 v0, p2

    #@167f
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1682
    move-result-object v39

    #@1683
    check-cast v39, Landroid/content/Intent;

    #@1685
    .line 1979
    :goto_b1
    move-object/from16 v0, p0

    #@1687
    move-object/from16 v1, v39

    #@1689
    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->enableSystemAppWithIntent(Landroid/content/ComponentName;Landroid/content/Intent;)I

    #@168c
    move-result v56

    #@168d
    .line 1980
    .restart local v56    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1690
    .line 1981
    move-object/from16 v0, p3

    #@1692
    move/from16 v1, v56

    #@1694
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1697
    .line 1982
    const/4 v4, 0x1

    #@1698
    return v4

    #@1699
    .line 1970
    .end local v56    # "_result":I
    :cond_b0
    const/4 v15, 0x0

    #@169a
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_b0

    #@169b
    .line 1977
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :cond_b1
    const/16 v39, 0x0

    #@169d
    .local v39, "_arg1":Landroid/content/Intent;
    goto :goto_b1

    #@169e
    .line 1986
    .end local v39    # "_arg1":Landroid/content/Intent;
    :sswitch_76
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@16a1
    move-object/from16 v0, p2

    #@16a3
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16a6
    .line 1988
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@16a9
    move-result v4

    #@16aa
    if-eqz v4, :cond_b2

    #@16ac
    .line 1989
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@16ae
    move-object/from16 v0, p2

    #@16b0
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@16b3
    move-result-object v15

    #@16b4
    check-cast v15, Landroid/content/ComponentName;

    #@16b6
    .line 1995
    :goto_b2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@16b9
    move-result-object v23

    #@16ba
    .line 1997
    .restart local v23    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@16bd
    move-result v4

    #@16be
    if-eqz v4, :cond_b3

    #@16c0
    const/16 v30, 0x1

    #@16c2
    .line 1998
    .restart local v30    # "_arg2":Z
    :goto_b3
    move-object/from16 v0, p0

    #@16c4
    move-object/from16 v1, v23

    #@16c6
    move/from16 v2, v30

    #@16c8
    invoke-virtual {v0, v15, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAccountManagementDisabled(Landroid/content/ComponentName;Ljava/lang/String;Z)V

    #@16cb
    .line 1999
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@16ce
    .line 2000
    const/4 v4, 0x1

    #@16cf
    return v4

    #@16d0
    .line 1992
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v30    # "_arg2":Z
    :cond_b2
    const/4 v15, 0x0

    #@16d1
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_b2

    #@16d2
    .line 1997
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v23    # "_arg1":Ljava/lang/String;
    :cond_b3
    const/16 v30, 0x0

    #@16d4
    goto :goto_b3

    #@16d5
    .line 2004
    .end local v23    # "_arg1":Ljava/lang/String;
    :sswitch_77
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@16d8
    move-object/from16 v0, p2

    #@16da
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16dd
    .line 2005
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAccountTypesWithManagementDisabled()[Ljava/lang/String;

    #@16e0
    move-result-object v71

    #@16e1
    .line 2006
    .restart local v71    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@16e4
    .line 2007
    move-object/from16 v0, p3

    #@16e6
    move-object/from16 v1, v71

    #@16e8
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@16eb
    .line 2008
    const/4 v4, 0x1

    #@16ec
    return v4

    #@16ed
    .line 2012
    .end local v71    # "_result":[Ljava/lang/String;
    :sswitch_78
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@16f0
    move-object/from16 v0, p2

    #@16f2
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16f5
    .line 2014
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@16f8
    move-result v5

    #@16f9
    .line 2015
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@16fb
    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAccountTypesWithManagementDisabledAsUser(I)[Ljava/lang/String;

    #@16fe
    move-result-object v71

    #@16ff
    .line 2016
    .restart local v71    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1702
    .line 2017
    move-object/from16 v0, p3

    #@1704
    move-object/from16 v1, v71

    #@1706
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@1709
    .line 2018
    const/4 v4, 0x1

    #@170a
    return v4

    #@170b
    .line 2022
    .end local v5    # "_arg0":I
    .end local v71    # "_result":[Ljava/lang/String;
    :sswitch_79
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@170e
    move-object/from16 v0, p2

    #@1710
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1713
    .line 2024
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1716
    move-result v4

    #@1717
    if-eqz v4, :cond_b4

    #@1719
    .line 2025
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@171b
    move-object/from16 v0, p2

    #@171d
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1720
    move-result-object v15

    #@1721
    check-cast v15, Landroid/content/ComponentName;

    #@1723
    .line 2031
    :goto_b4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@1726
    move-result-object v50

    #@1727
    .line 2032
    .restart local v50    # "_arg1":[Ljava/lang/String;
    move-object/from16 v0, p0

    #@1729
    move-object/from16 v1, v50

    #@172b
    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setLockTaskPackages(Landroid/content/ComponentName;[Ljava/lang/String;)V

    #@172e
    .line 2033
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1731
    .line 2034
    const/4 v4, 0x1

    #@1732
    return v4

    #@1733
    .line 2028
    .end local v50    # "_arg1":[Ljava/lang/String;
    :cond_b4
    const/4 v15, 0x0

    #@1734
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_b4

    #@1735
    .line 2038
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_7a
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@1738
    move-object/from16 v0, p2

    #@173a
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@173d
    .line 2040
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1740
    move-result v4

    #@1741
    if-eqz v4, :cond_b5

    #@1743
    .line 2041
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1745
    move-object/from16 v0, p2

    #@1747
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@174a
    move-result-object v15

    #@174b
    check-cast v15, Landroid/content/ComponentName;

    #@174d
    .line 2046
    :goto_b5
    move-object/from16 v0, p0

    #@174f
    invoke-virtual {v0, v15}, Landroid/app/admin/IDevicePolicyManager$Stub;->getLockTaskPackages(Landroid/content/ComponentName;)[Ljava/lang/String;

    #@1752
    move-result-object v71

    #@1753
    .line 2047
    .restart local v71    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1756
    .line 2048
    move-object/from16 v0, p3

    #@1758
    move-object/from16 v1, v71

    #@175a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@175d
    .line 2049
    const/4 v4, 0x1

    #@175e
    return v4

    #@175f
    .line 2044
    .end local v71    # "_result":[Ljava/lang/String;
    :cond_b5
    const/4 v15, 0x0

    #@1760
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_b5

    #@1761
    .line 2053
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_7b
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@1764
    move-object/from16 v0, p2

    #@1766
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1769
    .line 2055
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@176c
    move-result-object v27

    #@176d
    .line 2056
    .restart local v27    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@176f
    move-object/from16 v1, v27

    #@1771
    invoke-virtual {v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->isLockTaskPermitted(Ljava/lang/String;)Z

    #@1774
    move-result v70

    #@1775
    .line 2057
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1778
    .line 2058
    if-eqz v70, :cond_b6

    #@177a
    const/4 v4, 0x1

    #@177b
    :goto_b6
    move-object/from16 v0, p3

    #@177d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@1780
    .line 2059
    const/4 v4, 0x1

    #@1781
    return v4

    #@1782
    .line 2058
    :cond_b6
    const/4 v4, 0x0

    #@1783
    goto :goto_b6

    #@1784
    .line 2063
    .end local v27    # "_arg0":Ljava/lang/String;
    .end local v70    # "_result":Z
    :sswitch_7c
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@1787
    move-object/from16 v0, p2

    #@1789
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@178c
    .line 2065
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@178f
    move-result v4

    #@1790
    if-eqz v4, :cond_b7

    #@1792
    .line 2066
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1794
    move-object/from16 v0, p2

    #@1796
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1799
    move-result-object v15

    #@179a
    check-cast v15, Landroid/content/ComponentName;

    #@179c
    .line 2072
    :goto_b7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@179f
    move-result-object v23

    #@17a0
    .line 2074
    .restart local v23    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@17a3
    move-result-object v53

    #@17a4
    .line 2075
    .restart local v53    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    #@17a6
    move-object/from16 v1, v23

    #@17a8
    move-object/from16 v2, v53

    #@17aa
    invoke-virtual {v0, v15, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setGlobalSetting(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V

    #@17ad
    .line 2076
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@17b0
    .line 2077
    const/4 v4, 0x1

    #@17b1
    return v4

    #@17b2
    .line 2069
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v53    # "_arg2":Ljava/lang/String;
    :cond_b7
    const/4 v15, 0x0

    #@17b3
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_b7

    #@17b4
    .line 2081
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_7d
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@17b7
    move-object/from16 v0, p2

    #@17b9
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@17bc
    .line 2083
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@17bf
    move-result v4

    #@17c0
    if-eqz v4, :cond_b8

    #@17c2
    .line 2084
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@17c4
    move-object/from16 v0, p2

    #@17c6
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@17c9
    move-result-object v15

    #@17ca
    check-cast v15, Landroid/content/ComponentName;

    #@17cc
    .line 2090
    :goto_b8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@17cf
    move-result-object v23

    #@17d0
    .line 2092
    .restart local v23    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@17d3
    move-result-object v53

    #@17d4
    .line 2093
    .restart local v53    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    #@17d6
    move-object/from16 v1, v23

    #@17d8
    move-object/from16 v2, v53

    #@17da
    invoke-virtual {v0, v15, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setSecureSetting(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V

    #@17dd
    .line 2094
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@17e0
    .line 2095
    const/4 v4, 0x1

    #@17e1
    return v4

    #@17e2
    .line 2087
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v53    # "_arg2":Ljava/lang/String;
    :cond_b8
    const/4 v15, 0x0

    #@17e3
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_b8

    #@17e4
    .line 2099
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_7e
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@17e7
    move-object/from16 v0, p2

    #@17e9
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@17ec
    .line 2101
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@17ef
    move-result v4

    #@17f0
    if-eqz v4, :cond_b9

    #@17f2
    .line 2102
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@17f4
    move-object/from16 v0, p2

    #@17f6
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@17f9
    move-result-object v15

    #@17fa
    check-cast v15, Landroid/content/ComponentName;

    #@17fc
    .line 2108
    :goto_b9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@17ff
    move-result v4

    #@1800
    if-eqz v4, :cond_ba

    #@1802
    const/16 v49, 0x1

    #@1804
    .line 2109
    .local v49, "_arg1":Z
    :goto_ba
    move-object/from16 v0, p0

    #@1806
    move/from16 v1, v49

    #@1808
    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setMasterVolumeMuted(Landroid/content/ComponentName;Z)V

    #@180b
    .line 2110
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@180e
    .line 2111
    const/4 v4, 0x1

    #@180f
    return v4

    #@1810
    .line 2105
    .end local v49    # "_arg1":Z
    :cond_b9
    const/4 v15, 0x0

    #@1811
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_b9

    #@1812
    .line 2108
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :cond_ba
    const/16 v49, 0x0

    #@1814
    goto :goto_ba

    #@1815
    .line 2115
    :sswitch_7f
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@1818
    move-object/from16 v0, p2

    #@181a
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@181d
    .line 2117
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1820
    move-result v4

    #@1821
    if-eqz v4, :cond_bb

    #@1823
    .line 2118
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1825
    move-object/from16 v0, p2

    #@1827
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@182a
    move-result-object v15

    #@182b
    check-cast v15, Landroid/content/ComponentName;

    #@182d
    .line 2123
    :goto_bb
    move-object/from16 v0, p0

    #@182f
    invoke-virtual {v0, v15}, Landroid/app/admin/IDevicePolicyManager$Stub;->isMasterVolumeMuted(Landroid/content/ComponentName;)Z

    #@1832
    move-result v70

    #@1833
    .line 2124
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1836
    .line 2125
    if-eqz v70, :cond_bc

    #@1838
    const/4 v4, 0x1

    #@1839
    :goto_bc
    move-object/from16 v0, p3

    #@183b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@183e
    .line 2126
    const/4 v4, 0x1

    #@183f
    return v4

    #@1840
    .line 2121
    .end local v70    # "_result":Z
    :cond_bb
    const/4 v15, 0x0

    #@1841
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_bb

    #@1842
    .line 2125
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v70    # "_result":Z
    :cond_bc
    const/4 v4, 0x0

    #@1843
    goto :goto_bc

    #@1844
    .line 2130
    .end local v70    # "_result":Z
    :sswitch_80
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@1847
    move-object/from16 v0, p2

    #@1849
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@184c
    .line 2132
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@184f
    move-result v4

    #@1850
    if-eqz v4, :cond_bd

    #@1852
    const/16 v36, 0x1

    #@1854
    .line 2134
    .local v36, "_arg0":Z
    :goto_bd
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1857
    move-result-object v23

    #@1858
    .line 2136
    .restart local v23    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@185b
    move-result v7

    #@185c
    .line 2137
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    #@185e
    move/from16 v1, v36

    #@1860
    move-object/from16 v2, v23

    #@1862
    invoke-virtual {v0, v1, v2, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->notifyLockTaskModeChanged(ZLjava/lang/String;I)V

    #@1865
    .line 2138
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1868
    .line 2139
    const/4 v4, 0x1

    #@1869
    return v4

    #@186a
    .line 2132
    .end local v7    # "_arg2":I
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v36    # "_arg0":Z
    :cond_bd
    const/16 v36, 0x0

    #@186c
    .restart local v36    # "_arg0":Z
    goto :goto_bd

    #@186d
    .line 2143
    .end local v36    # "_arg0":Z
    :sswitch_81
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@1870
    move-object/from16 v0, p2

    #@1872
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1875
    .line 2145
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1878
    move-result v4

    #@1879
    if-eqz v4, :cond_be

    #@187b
    .line 2146
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@187d
    move-object/from16 v0, p2

    #@187f
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1882
    move-result-object v15

    #@1883
    check-cast v15, Landroid/content/ComponentName;

    #@1885
    .line 2152
    :goto_be
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1888
    move-result-object v23

    #@1889
    .line 2154
    .restart local v23    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@188c
    move-result v4

    #@188d
    if-eqz v4, :cond_bf

    #@188f
    const/16 v30, 0x1

    #@1891
    .line 2155
    .restart local v30    # "_arg2":Z
    :goto_bf
    move-object/from16 v0, p0

    #@1893
    move-object/from16 v1, v23

    #@1895
    move/from16 v2, v30

    #@1897
    invoke-virtual {v0, v15, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setUninstallBlocked(Landroid/content/ComponentName;Ljava/lang/String;Z)V

    #@189a
    .line 2156
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@189d
    .line 2157
    const/4 v4, 0x1

    #@189e
    return v4

    #@189f
    .line 2149
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v30    # "_arg2":Z
    :cond_be
    const/4 v15, 0x0

    #@18a0
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_be

    #@18a1
    .line 2154
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v23    # "_arg1":Ljava/lang/String;
    :cond_bf
    const/16 v30, 0x0

    #@18a3
    goto :goto_bf

    #@18a4
    .line 2161
    .end local v23    # "_arg1":Ljava/lang/String;
    :sswitch_82
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@18a7
    move-object/from16 v0, p2

    #@18a9
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@18ac
    .line 2163
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@18af
    move-result v4

    #@18b0
    if-eqz v4, :cond_c0

    #@18b2
    .line 2164
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@18b4
    move-object/from16 v0, p2

    #@18b6
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@18b9
    move-result-object v15

    #@18ba
    check-cast v15, Landroid/content/ComponentName;

    #@18bc
    .line 2170
    :goto_c0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@18bf
    move-result-object v23

    #@18c0
    .line 2171
    .restart local v23    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@18c2
    move-object/from16 v1, v23

    #@18c4
    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->isUninstallBlocked(Landroid/content/ComponentName;Ljava/lang/String;)Z

    #@18c7
    move-result v70

    #@18c8
    .line 2172
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@18cb
    .line 2173
    if-eqz v70, :cond_c1

    #@18cd
    const/4 v4, 0x1

    #@18ce
    :goto_c1
    move-object/from16 v0, p3

    #@18d0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@18d3
    .line 2174
    const/4 v4, 0x1

    #@18d4
    return v4

    #@18d5
    .line 2167
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v70    # "_result":Z
    :cond_c0
    const/4 v15, 0x0

    #@18d6
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_c0

    #@18d7
    .line 2173
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v23    # "_arg1":Ljava/lang/String;
    .restart local v70    # "_result":Z
    :cond_c1
    const/4 v4, 0x0

    #@18d8
    goto :goto_c1

    #@18d9
    .line 2178
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v70    # "_result":Z
    :sswitch_83
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@18dc
    move-object/from16 v0, p2

    #@18de
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@18e1
    .line 2180
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@18e4
    move-result v4

    #@18e5
    if-eqz v4, :cond_c2

    #@18e7
    .line 2181
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@18e9
    move-object/from16 v0, p2

    #@18eb
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@18ee
    move-result-object v15

    #@18ef
    check-cast v15, Landroid/content/ComponentName;

    #@18f1
    .line 2187
    :goto_c2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@18f4
    move-result v4

    #@18f5
    if-eqz v4, :cond_c3

    #@18f7
    const/16 v49, 0x1

    #@18f9
    .line 2188
    .restart local v49    # "_arg1":Z
    :goto_c3
    move-object/from16 v0, p0

    #@18fb
    move/from16 v1, v49

    #@18fd
    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setCrossProfileCallerIdDisabled(Landroid/content/ComponentName;Z)V

    #@1900
    .line 2189
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1903
    .line 2190
    const/4 v4, 0x1

    #@1904
    return v4

    #@1905
    .line 2184
    .end local v49    # "_arg1":Z
    :cond_c2
    const/4 v15, 0x0

    #@1906
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_c2

    #@1907
    .line 2187
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :cond_c3
    const/16 v49, 0x0

    #@1909
    goto :goto_c3

    #@190a
    .line 2194
    :sswitch_84
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@190d
    move-object/from16 v0, p2

    #@190f
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1912
    .line 2196
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1915
    move-result v4

    #@1916
    if-eqz v4, :cond_c4

    #@1918
    .line 2197
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@191a
    move-object/from16 v0, p2

    #@191c
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@191f
    move-result-object v15

    #@1920
    check-cast v15, Landroid/content/ComponentName;

    #@1922
    .line 2202
    :goto_c4
    move-object/from16 v0, p0

    #@1924
    invoke-virtual {v0, v15}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCrossProfileCallerIdDisabled(Landroid/content/ComponentName;)Z

    #@1927
    move-result v70

    #@1928
    .line 2203
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@192b
    .line 2204
    if-eqz v70, :cond_c5

    #@192d
    const/4 v4, 0x1

    #@192e
    :goto_c5
    move-object/from16 v0, p3

    #@1930
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@1933
    .line 2205
    const/4 v4, 0x1

    #@1934
    return v4

    #@1935
    .line 2200
    .end local v70    # "_result":Z
    :cond_c4
    const/4 v15, 0x0

    #@1936
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_c4

    #@1937
    .line 2204
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v70    # "_result":Z
    :cond_c5
    const/4 v4, 0x0

    #@1938
    goto :goto_c5

    #@1939
    .line 2209
    .end local v70    # "_result":Z
    :sswitch_85
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@193c
    move-object/from16 v0, p2

    #@193e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1941
    .line 2211
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1944
    move-result v5

    #@1945
    .line 2212
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@1947
    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCrossProfileCallerIdDisabledForUser(I)Z

    #@194a
    move-result v70

    #@194b
    .line 2213
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@194e
    .line 2214
    if-eqz v70, :cond_c6

    #@1950
    const/4 v4, 0x1

    #@1951
    :goto_c6
    move-object/from16 v0, p3

    #@1953
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@1956
    .line 2215
    const/4 v4, 0x1

    #@1957
    return v4

    #@1958
    .line 2214
    :cond_c6
    const/4 v4, 0x0

    #@1959
    goto :goto_c6

    #@195a
    .line 2219
    .end local v5    # "_arg0":I
    .end local v70    # "_result":Z
    :sswitch_86
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@195d
    move-object/from16 v0, p2

    #@195f
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1962
    .line 2221
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1965
    move-result v4

    #@1966
    if-eqz v4, :cond_c7

    #@1968
    .line 2222
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@196a
    move-object/from16 v0, p2

    #@196c
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@196f
    move-result-object v15

    #@1970
    check-cast v15, Landroid/content/ComponentName;

    #@1972
    .line 2228
    :goto_c7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1975
    move-result v4

    #@1976
    if-eqz v4, :cond_c8

    #@1978
    const/16 v49, 0x1

    #@197a
    .line 2229
    .restart local v49    # "_arg1":Z
    :goto_c8
    move-object/from16 v0, p0

    #@197c
    move/from16 v1, v49

    #@197e
    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setCrossProfileContactsSearchDisabled(Landroid/content/ComponentName;Z)V

    #@1981
    .line 2230
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1984
    .line 2231
    const/4 v4, 0x1

    #@1985
    return v4

    #@1986
    .line 2225
    .end local v49    # "_arg1":Z
    :cond_c7
    const/4 v15, 0x0

    #@1987
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_c7

    #@1988
    .line 2228
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :cond_c8
    const/16 v49, 0x0

    #@198a
    goto :goto_c8

    #@198b
    .line 2235
    :sswitch_87
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@198e
    move-object/from16 v0, p2

    #@1990
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1993
    .line 2237
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1996
    move-result v4

    #@1997
    if-eqz v4, :cond_c9

    #@1999
    .line 2238
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@199b
    move-object/from16 v0, p2

    #@199d
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@19a0
    move-result-object v15

    #@19a1
    check-cast v15, Landroid/content/ComponentName;

    #@19a3
    .line 2243
    :goto_c9
    move-object/from16 v0, p0

    #@19a5
    invoke-virtual {v0, v15}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCrossProfileContactsSearchDisabled(Landroid/content/ComponentName;)Z

    #@19a8
    move-result v70

    #@19a9
    .line 2244
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@19ac
    .line 2245
    if-eqz v70, :cond_ca

    #@19ae
    const/4 v4, 0x1

    #@19af
    :goto_ca
    move-object/from16 v0, p3

    #@19b1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@19b4
    .line 2246
    const/4 v4, 0x1

    #@19b5
    return v4

    #@19b6
    .line 2241
    .end local v70    # "_result":Z
    :cond_c9
    const/4 v15, 0x0

    #@19b7
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_c9

    #@19b8
    .line 2245
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v70    # "_result":Z
    :cond_ca
    const/4 v4, 0x0

    #@19b9
    goto :goto_ca

    #@19ba
    .line 2250
    .end local v70    # "_result":Z
    :sswitch_88
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@19bd
    move-object/from16 v0, p2

    #@19bf
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@19c2
    .line 2252
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@19c5
    move-result v5

    #@19c6
    .line 2253
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@19c8
    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCrossProfileContactsSearchDisabledForUser(I)Z

    #@19cb
    move-result v70

    #@19cc
    .line 2254
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@19cf
    .line 2255
    if-eqz v70, :cond_cb

    #@19d1
    const/4 v4, 0x1

    #@19d2
    :goto_cb
    move-object/from16 v0, p3

    #@19d4
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@19d7
    .line 2256
    const/4 v4, 0x1

    #@19d8
    return v4

    #@19d9
    .line 2255
    :cond_cb
    const/4 v4, 0x0

    #@19da
    goto :goto_cb

    #@19db
    .line 2260
    .end local v5    # "_arg0":I
    .end local v70    # "_result":Z
    :sswitch_89
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@19de
    move-object/from16 v0, p2

    #@19e0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@19e3
    .line 2262
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@19e6
    move-result-object v27

    #@19e7
    .line 2264
    .restart local v27    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@19ea
    move-result-wide v28

    #@19eb
    .line 2266
    .restart local v28    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@19ee
    move-result v4

    #@19ef
    if-eqz v4, :cond_cc

    #@19f1
    const/16 v30, 0x1

    #@19f3
    .line 2268
    .local v30, "_arg2":Z
    :goto_cc
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@19f6
    move-result-wide v31

    #@19f7
    .line 2270
    .local v31, "_arg3":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@19fa
    move-result v4

    #@19fb
    if-eqz v4, :cond_cd

    #@19fd
    .line 2271
    sget-object v4, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@19ff
    move-object/from16 v0, p2

    #@1a01
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1a04
    move-result-object v33

    #@1a05
    check-cast v33, Landroid/content/Intent;

    #@1a07
    :goto_cd
    move-object/from16 v26, p0

    #@1a09
    .line 2276
    invoke-virtual/range {v26 .. v33}, Landroid/app/admin/IDevicePolicyManager$Stub;->startManagedQuickContact(Ljava/lang/String;JZJLandroid/content/Intent;)V

    #@1a0c
    .line 2277
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1a0f
    .line 2278
    const/4 v4, 0x1

    #@1a10
    return v4

    #@1a11
    .line 2266
    .end local v30    # "_arg2":Z
    .end local v31    # "_arg3":J
    :cond_cc
    const/16 v30, 0x0

    #@1a13
    .restart local v30    # "_arg2":Z
    goto :goto_cc

    #@1a14
    .line 2274
    .restart local v31    # "_arg3":J
    :cond_cd
    const/16 v33, 0x0

    #@1a16
    .local v33, "_arg4":Landroid/content/Intent;
    goto :goto_cd

    #@1a17
    .line 2282
    .end local v27    # "_arg0":Ljava/lang/String;
    .end local v28    # "_arg1":J
    .end local v30    # "_arg2":Z
    .end local v31    # "_arg3":J
    .end local v33    # "_arg4":Landroid/content/Intent;
    :sswitch_8a
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@1a1a
    move-object/from16 v0, p2

    #@1a1c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a1f
    .line 2284
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1a22
    move-result v4

    #@1a23
    if-eqz v4, :cond_ce

    #@1a25
    .line 2285
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1a27
    move-object/from16 v0, p2

    #@1a29
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1a2c
    move-result-object v15

    #@1a2d
    check-cast v15, Landroid/content/ComponentName;

    #@1a2f
    .line 2291
    :goto_ce
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1a32
    move-result v4

    #@1a33
    if-eqz v4, :cond_cf

    #@1a35
    const/16 v49, 0x1

    #@1a37
    .line 2292
    .restart local v49    # "_arg1":Z
    :goto_cf
    move-object/from16 v0, p0

    #@1a39
    move/from16 v1, v49

    #@1a3b
    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setBluetoothContactSharingDisabled(Landroid/content/ComponentName;Z)V

    #@1a3e
    .line 2293
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1a41
    .line 2294
    const/4 v4, 0x1

    #@1a42
    return v4

    #@1a43
    .line 2288
    .end local v49    # "_arg1":Z
    :cond_ce
    const/4 v15, 0x0

    #@1a44
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_ce

    #@1a45
    .line 2291
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :cond_cf
    const/16 v49, 0x0

    #@1a47
    goto :goto_cf

    #@1a48
    .line 2298
    :sswitch_8b
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@1a4b
    move-object/from16 v0, p2

    #@1a4d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a50
    .line 2300
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1a53
    move-result v4

    #@1a54
    if-eqz v4, :cond_d0

    #@1a56
    .line 2301
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1a58
    move-object/from16 v0, p2

    #@1a5a
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1a5d
    move-result-object v15

    #@1a5e
    check-cast v15, Landroid/content/ComponentName;

    #@1a60
    .line 2306
    :goto_d0
    move-object/from16 v0, p0

    #@1a62
    invoke-virtual {v0, v15}, Landroid/app/admin/IDevicePolicyManager$Stub;->getBluetoothContactSharingDisabled(Landroid/content/ComponentName;)Z

    #@1a65
    move-result v70

    #@1a66
    .line 2307
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1a69
    .line 2308
    if-eqz v70, :cond_d1

    #@1a6b
    const/4 v4, 0x1

    #@1a6c
    :goto_d1
    move-object/from16 v0, p3

    #@1a6e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@1a71
    .line 2309
    const/4 v4, 0x1

    #@1a72
    return v4

    #@1a73
    .line 2304
    .end local v70    # "_result":Z
    :cond_d0
    const/4 v15, 0x0

    #@1a74
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_d0

    #@1a75
    .line 2308
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v70    # "_result":Z
    :cond_d1
    const/4 v4, 0x0

    #@1a76
    goto :goto_d1

    #@1a77
    .line 2313
    .end local v70    # "_result":Z
    :sswitch_8c
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@1a7a
    move-object/from16 v0, p2

    #@1a7c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a7f
    .line 2315
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1a82
    move-result v5

    #@1a83
    .line 2316
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@1a85
    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getBluetoothContactSharingDisabledForUser(I)Z

    #@1a88
    move-result v70

    #@1a89
    .line 2317
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1a8c
    .line 2318
    if-eqz v70, :cond_d2

    #@1a8e
    const/4 v4, 0x1

    #@1a8f
    :goto_d2
    move-object/from16 v0, p3

    #@1a91
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@1a94
    .line 2319
    const/4 v4, 0x1

    #@1a95
    return v4

    #@1a96
    .line 2318
    :cond_d2
    const/4 v4, 0x0

    #@1a97
    goto :goto_d2

    #@1a98
    .line 2323
    .end local v5    # "_arg0":I
    .end local v70    # "_result":Z
    :sswitch_8d
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@1a9b
    move-object/from16 v0, p2

    #@1a9d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1aa0
    .line 2325
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1aa3
    move-result v4

    #@1aa4
    if-eqz v4, :cond_d3

    #@1aa6
    .line 2326
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1aa8
    move-object/from16 v0, p2

    #@1aaa
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1aad
    move-result-object v15

    #@1aae
    check-cast v15, Landroid/content/ComponentName;

    #@1ab0
    .line 2332
    :goto_d3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1ab3
    move-result v4

    #@1ab4
    if-eqz v4, :cond_d4

    #@1ab6
    .line 2333
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1ab8
    move-object/from16 v0, p2

    #@1aba
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1abd
    move-result-object v38

    #@1abe
    check-cast v38, Landroid/content/ComponentName;

    #@1ac0
    .line 2339
    :goto_d4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1ac3
    move-result v4

    #@1ac4
    if-eqz v4, :cond_d5

    #@1ac6
    .line 2340
    sget-object v4, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1ac8
    move-object/from16 v0, p2

    #@1aca
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1acd
    move-result-object v52

    #@1ace
    check-cast v52, Landroid/os/PersistableBundle;

    #@1ad0
    .line 2346
    :goto_d5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1ad3
    move-result v4

    #@1ad4
    if-eqz v4, :cond_d6

    #@1ad6
    const/16 v55, 0x1

    #@1ad8
    .line 2347
    .local v55, "_arg3":Z
    :goto_d6
    move-object/from16 v0, p0

    #@1ada
    move-object/from16 v1, v38

    #@1adc
    move-object/from16 v2, v52

    #@1ade
    move/from16 v3, v55

    #@1ae0
    invoke-virtual {v0, v15, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/os/PersistableBundle;Z)V

    #@1ae3
    .line 2348
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1ae6
    .line 2349
    const/4 v4, 0x1

    #@1ae7
    return v4

    #@1ae8
    .line 2329
    .end local v55    # "_arg3":Z
    :cond_d3
    const/4 v15, 0x0

    #@1ae9
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_d3

    #@1aea
    .line 2336
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :cond_d4
    const/16 v38, 0x0

    #@1aec
    .restart local v38    # "_arg1":Landroid/content/ComponentName;
    goto :goto_d4

    #@1aed
    .line 2343
    .end local v38    # "_arg1":Landroid/content/ComponentName;
    :cond_d5
    const/16 v52, 0x0

    #@1aef
    .local v52, "_arg2":Landroid/os/PersistableBundle;
    goto :goto_d5

    #@1af0
    .line 2346
    .end local v52    # "_arg2":Landroid/os/PersistableBundle;
    :cond_d6
    const/16 v55, 0x0

    #@1af2
    goto :goto_d6

    #@1af3
    .line 2353
    :sswitch_8e
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@1af6
    move-object/from16 v0, p2

    #@1af8
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1afb
    .line 2355
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1afe
    move-result v4

    #@1aff
    if-eqz v4, :cond_d7

    #@1b01
    .line 2356
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1b03
    move-object/from16 v0, p2

    #@1b05
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1b08
    move-result-object v15

    #@1b09
    check-cast v15, Landroid/content/ComponentName;

    #@1b0b
    .line 2362
    :goto_d7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1b0e
    move-result v4

    #@1b0f
    if-eqz v4, :cond_d8

    #@1b11
    .line 2363
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1b13
    move-object/from16 v0, p2

    #@1b15
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1b18
    move-result-object v38

    #@1b19
    check-cast v38, Landroid/content/ComponentName;

    #@1b1b
    .line 2369
    :goto_d8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1b1e
    move-result v7

    #@1b1f
    .line 2371
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1b22
    move-result v4

    #@1b23
    if-eqz v4, :cond_d9

    #@1b25
    const/16 v55, 0x1

    #@1b27
    .line 2372
    .restart local v55    # "_arg3":Z
    :goto_d9
    move-object/from16 v0, p0

    #@1b29
    move-object/from16 v1, v38

    #@1b2b
    move/from16 v2, v55

    #@1b2d
    invoke-virtual {v0, v15, v1, v7, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;IZ)Ljava/util/List;

    #@1b30
    move-result-object v68

    #@1b31
    .line 2373
    .local v68, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/PersistableBundle;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1b34
    .line 2374
    move-object/from16 v0, p3

    #@1b36
    move-object/from16 v1, v68

    #@1b38
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@1b3b
    .line 2375
    const/4 v4, 0x1

    #@1b3c
    return v4

    #@1b3d
    .line 2359
    .end local v7    # "_arg2":I
    .end local v55    # "_arg3":Z
    .end local v68    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/PersistableBundle;>;"
    :cond_d7
    const/4 v15, 0x0

    #@1b3e
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_d7

    #@1b3f
    .line 2366
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :cond_d8
    const/16 v38, 0x0

    #@1b41
    .restart local v38    # "_arg1":Landroid/content/ComponentName;
    goto :goto_d8

    #@1b42
    .line 2371
    .end local v38    # "_arg1":Landroid/content/ComponentName;
    .restart local v7    # "_arg2":I
    :cond_d9
    const/16 v55, 0x0

    #@1b44
    goto :goto_d9

    #@1b45
    .line 2379
    .end local v7    # "_arg2":I
    :sswitch_8f
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@1b48
    move-object/from16 v0, p2

    #@1b4a
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1b4d
    .line 2381
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1b50
    move-result v4

    #@1b51
    if-eqz v4, :cond_da

    #@1b53
    .line 2382
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1b55
    move-object/from16 v0, p2

    #@1b57
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1b5a
    move-result-object v15

    #@1b5b
    check-cast v15, Landroid/content/ComponentName;

    #@1b5d
    .line 2388
    :goto_da
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1b60
    move-result-object v23

    #@1b61
    .line 2389
    .restart local v23    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@1b63
    move-object/from16 v1, v23

    #@1b65
    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->addCrossProfileWidgetProvider(Landroid/content/ComponentName;Ljava/lang/String;)Z

    #@1b68
    move-result v70

    #@1b69
    .line 2390
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1b6c
    .line 2391
    if-eqz v70, :cond_db

    #@1b6e
    const/4 v4, 0x1

    #@1b6f
    :goto_db
    move-object/from16 v0, p3

    #@1b71
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@1b74
    .line 2392
    const/4 v4, 0x1

    #@1b75
    return v4

    #@1b76
    .line 2385
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v70    # "_result":Z
    :cond_da
    const/4 v15, 0x0

    #@1b77
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_da

    #@1b78
    .line 2391
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v23    # "_arg1":Ljava/lang/String;
    .restart local v70    # "_result":Z
    :cond_db
    const/4 v4, 0x0

    #@1b79
    goto :goto_db

    #@1b7a
    .line 2396
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v70    # "_result":Z
    :sswitch_90
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@1b7d
    move-object/from16 v0, p2

    #@1b7f
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1b82
    .line 2398
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1b85
    move-result v4

    #@1b86
    if-eqz v4, :cond_dc

    #@1b88
    .line 2399
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1b8a
    move-object/from16 v0, p2

    #@1b8c
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1b8f
    move-result-object v15

    #@1b90
    check-cast v15, Landroid/content/ComponentName;

    #@1b92
    .line 2405
    :goto_dc
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1b95
    move-result-object v23

    #@1b96
    .line 2406
    .restart local v23    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@1b98
    move-object/from16 v1, v23

    #@1b9a
    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->removeCrossProfileWidgetProvider(Landroid/content/ComponentName;Ljava/lang/String;)Z

    #@1b9d
    move-result v70

    #@1b9e
    .line 2407
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1ba1
    .line 2408
    if-eqz v70, :cond_dd

    #@1ba3
    const/4 v4, 0x1

    #@1ba4
    :goto_dd
    move-object/from16 v0, p3

    #@1ba6
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@1ba9
    .line 2409
    const/4 v4, 0x1

    #@1baa
    return v4

    #@1bab
    .line 2402
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v70    # "_result":Z
    :cond_dc
    const/4 v15, 0x0

    #@1bac
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_dc

    #@1bad
    .line 2408
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v23    # "_arg1":Ljava/lang/String;
    .restart local v70    # "_result":Z
    :cond_dd
    const/4 v4, 0x0

    #@1bae
    goto :goto_dd

    #@1baf
    .line 2413
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v70    # "_result":Z
    :sswitch_91
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@1bb2
    move-object/from16 v0, p2

    #@1bb4
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1bb7
    .line 2415
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1bba
    move-result v4

    #@1bbb
    if-eqz v4, :cond_de

    #@1bbd
    .line 2416
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1bbf
    move-object/from16 v0, p2

    #@1bc1
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1bc4
    move-result-object v15

    #@1bc5
    check-cast v15, Landroid/content/ComponentName;

    #@1bc7
    .line 2421
    :goto_de
    move-object/from16 v0, p0

    #@1bc9
    invoke-virtual {v0, v15}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCrossProfileWidgetProviders(Landroid/content/ComponentName;)Ljava/util/List;

    #@1bcc
    move-result-object v69

    #@1bcd
    .line 2422
    .local v69, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1bd0
    .line 2423
    move-object/from16 v0, p3

    #@1bd2
    move-object/from16 v1, v69

    #@1bd4
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    #@1bd7
    .line 2424
    const/4 v4, 0x1

    #@1bd8
    return v4

    #@1bd9
    .line 2419
    .end local v69    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_de
    const/4 v15, 0x0

    #@1bda
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_de

    #@1bdb
    .line 2428
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_92
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@1bde
    move-object/from16 v0, p2

    #@1be0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1be3
    .line 2430
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1be6
    move-result v4

    #@1be7
    if-eqz v4, :cond_df

    #@1be9
    .line 2431
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1beb
    move-object/from16 v0, p2

    #@1bed
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1bf0
    move-result-object v15

    #@1bf1
    check-cast v15, Landroid/content/ComponentName;

    #@1bf3
    .line 2437
    :goto_df
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1bf6
    move-result v4

    #@1bf7
    if-eqz v4, :cond_e0

    #@1bf9
    const/16 v49, 0x1

    #@1bfb
    .line 2438
    .restart local v49    # "_arg1":Z
    :goto_e0
    move-object/from16 v0, p0

    #@1bfd
    move/from16 v1, v49

    #@1bff
    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAutoTimeRequired(Landroid/content/ComponentName;Z)V

    #@1c02
    .line 2439
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1c05
    .line 2440
    const/4 v4, 0x1

    #@1c06
    return v4

    #@1c07
    .line 2434
    .end local v49    # "_arg1":Z
    :cond_df
    const/4 v15, 0x0

    #@1c08
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_df

    #@1c09
    .line 2437
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :cond_e0
    const/16 v49, 0x0

    #@1c0b
    goto :goto_e0

    #@1c0c
    .line 2444
    :sswitch_93
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@1c0f
    move-object/from16 v0, p2

    #@1c11
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1c14
    .line 2445
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAutoTimeRequired()Z

    #@1c17
    move-result v70

    #@1c18
    .line 2446
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1c1b
    .line 2447
    if-eqz v70, :cond_e1

    #@1c1d
    const/4 v4, 0x1

    #@1c1e
    :goto_e1
    move-object/from16 v0, p3

    #@1c20
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@1c23
    .line 2448
    const/4 v4, 0x1

    #@1c24
    return v4

    #@1c25
    .line 2447
    :cond_e1
    const/4 v4, 0x0

    #@1c26
    goto :goto_e1

    #@1c27
    .line 2452
    .end local v70    # "_result":Z
    :sswitch_94
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@1c2a
    move-object/from16 v0, p2

    #@1c2c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1c2f
    .line 2454
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1c32
    move-result v4

    #@1c33
    if-eqz v4, :cond_e2

    #@1c35
    .line 2455
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1c37
    move-object/from16 v0, p2

    #@1c39
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1c3c
    move-result-object v15

    #@1c3d
    check-cast v15, Landroid/content/ComponentName;

    #@1c3f
    .line 2461
    :goto_e2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1c42
    move-result v4

    #@1c43
    if-eqz v4, :cond_e3

    #@1c45
    const/16 v49, 0x1

    #@1c47
    .line 2462
    .restart local v49    # "_arg1":Z
    :goto_e3
    move-object/from16 v0, p0

    #@1c49
    move/from16 v1, v49

    #@1c4b
    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setForceEphemeralUsers(Landroid/content/ComponentName;Z)V

    #@1c4e
    .line 2463
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1c51
    .line 2464
    const/4 v4, 0x1

    #@1c52
    return v4

    #@1c53
    .line 2458
    .end local v49    # "_arg1":Z
    :cond_e2
    const/4 v15, 0x0

    #@1c54
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_e2

    #@1c55
    .line 2461
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :cond_e3
    const/16 v49, 0x0

    #@1c57
    goto :goto_e3

    #@1c58
    .line 2468
    :sswitch_95
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@1c5b
    move-object/from16 v0, p2

    #@1c5d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1c60
    .line 2470
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1c63
    move-result v4

    #@1c64
    if-eqz v4, :cond_e4

    #@1c66
    .line 2471
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1c68
    move-object/from16 v0, p2

    #@1c6a
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1c6d
    move-result-object v15

    #@1c6e
    check-cast v15, Landroid/content/ComponentName;

    #@1c70
    .line 2476
    :goto_e4
    move-object/from16 v0, p0

    #@1c72
    invoke-virtual {v0, v15}, Landroid/app/admin/IDevicePolicyManager$Stub;->getForceEphemeralUsers(Landroid/content/ComponentName;)Z

    #@1c75
    move-result v70

    #@1c76
    .line 2477
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1c79
    .line 2478
    if-eqz v70, :cond_e5

    #@1c7b
    const/4 v4, 0x1

    #@1c7c
    :goto_e5
    move-object/from16 v0, p3

    #@1c7e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@1c81
    .line 2479
    const/4 v4, 0x1

    #@1c82
    return v4

    #@1c83
    .line 2474
    .end local v70    # "_result":Z
    :cond_e4
    const/4 v15, 0x0

    #@1c84
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_e4

    #@1c85
    .line 2478
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v70    # "_result":Z
    :cond_e5
    const/4 v4, 0x0

    #@1c86
    goto :goto_e5

    #@1c87
    .line 2483
    .end local v70    # "_result":Z
    :sswitch_96
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@1c8a
    move-object/from16 v0, p2

    #@1c8c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1c8f
    .line 2485
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1c92
    move-result v4

    #@1c93
    if-eqz v4, :cond_e6

    #@1c95
    .line 2486
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1c97
    move-object/from16 v0, p2

    #@1c99
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1c9c
    move-result-object v15

    #@1c9d
    check-cast v15, Landroid/content/ComponentName;

    #@1c9f
    .line 2492
    :goto_e6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1ca2
    move-result v6

    #@1ca3
    .line 2493
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    #@1ca5
    invoke-virtual {v0, v15, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->isRemovingAdmin(Landroid/content/ComponentName;I)Z

    #@1ca8
    move-result v70

    #@1ca9
    .line 2494
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1cac
    .line 2495
    if-eqz v70, :cond_e7

    #@1cae
    const/4 v4, 0x1

    #@1caf
    :goto_e7
    move-object/from16 v0, p3

    #@1cb1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@1cb4
    .line 2496
    const/4 v4, 0x1

    #@1cb5
    return v4

    #@1cb6
    .line 2489
    .end local v6    # "_arg1":I
    .end local v70    # "_result":Z
    :cond_e6
    const/4 v15, 0x0

    #@1cb7
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_e6

    #@1cb8
    .line 2495
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v6    # "_arg1":I
    .restart local v70    # "_result":Z
    :cond_e7
    const/4 v4, 0x0

    #@1cb9
    goto :goto_e7

    #@1cba
    .line 2500
    .end local v6    # "_arg1":I
    .end local v70    # "_result":Z
    :sswitch_97
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@1cbd
    move-object/from16 v0, p2

    #@1cbf
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1cc2
    .line 2502
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1cc5
    move-result v4

    #@1cc6
    if-eqz v4, :cond_e8

    #@1cc8
    .line 2503
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1cca
    move-object/from16 v0, p2

    #@1ccc
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1ccf
    move-result-object v15

    #@1cd0
    check-cast v15, Landroid/content/ComponentName;

    #@1cd2
    .line 2509
    :goto_e8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1cd5
    move-result v4

    #@1cd6
    if-eqz v4, :cond_e9

    #@1cd8
    .line 2510
    sget-object v4, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1cda
    move-object/from16 v0, p2

    #@1cdc
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1cdf
    move-result-object v41

    #@1ce0
    check-cast v41, Landroid/graphics/Bitmap;

    #@1ce2
    .line 2515
    :goto_e9
    move-object/from16 v0, p0

    #@1ce4
    move-object/from16 v1, v41

    #@1ce6
    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setUserIcon(Landroid/content/ComponentName;Landroid/graphics/Bitmap;)V

    #@1ce9
    .line 2516
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1cec
    .line 2517
    const/4 v4, 0x1

    #@1ced
    return v4

    #@1cee
    .line 2506
    :cond_e8
    const/4 v15, 0x0

    #@1cef
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_e8

    #@1cf0
    .line 2513
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :cond_e9
    const/16 v41, 0x0

    #@1cf2
    .local v41, "_arg1":Landroid/graphics/Bitmap;
    goto :goto_e9

    #@1cf3
    .line 2521
    .end local v41    # "_arg1":Landroid/graphics/Bitmap;
    :sswitch_98
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@1cf6
    move-object/from16 v0, p2

    #@1cf8
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1cfb
    .line 2523
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1cfe
    move-result v4

    #@1cff
    if-eqz v4, :cond_ea

    #@1d01
    .line 2524
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1d03
    move-object/from16 v0, p2

    #@1d05
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1d08
    move-result-object v15

    #@1d09
    check-cast v15, Landroid/content/ComponentName;

    #@1d0b
    .line 2530
    :goto_ea
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1d0e
    move-result v4

    #@1d0f
    if-eqz v4, :cond_eb

    #@1d11
    .line 2531
    sget-object v4, Landroid/app/admin/SystemUpdatePolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1d13
    move-object/from16 v0, p2

    #@1d15
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1d18
    move-result-object v37

    #@1d19
    check-cast v37, Landroid/app/admin/SystemUpdatePolicy;

    #@1d1b
    .line 2536
    :goto_eb
    move-object/from16 v0, p0

    #@1d1d
    move-object/from16 v1, v37

    #@1d1f
    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setSystemUpdatePolicy(Landroid/content/ComponentName;Landroid/app/admin/SystemUpdatePolicy;)V

    #@1d22
    .line 2537
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1d25
    .line 2538
    const/4 v4, 0x1

    #@1d26
    return v4

    #@1d27
    .line 2527
    :cond_ea
    const/4 v15, 0x0

    #@1d28
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_ea

    #@1d29
    .line 2534
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :cond_eb
    const/16 v37, 0x0

    #@1d2b
    .local v37, "_arg1":Landroid/app/admin/SystemUpdatePolicy;
    goto :goto_eb

    #@1d2c
    .line 2542
    .end local v37    # "_arg1":Landroid/app/admin/SystemUpdatePolicy;
    :sswitch_99
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@1d2f
    move-object/from16 v0, p2

    #@1d31
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1d34
    .line 2543
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getSystemUpdatePolicy()Landroid/app/admin/SystemUpdatePolicy;

    #@1d37
    move-result-object v57

    #@1d38
    .line 2544
    .local v57, "_result":Landroid/app/admin/SystemUpdatePolicy;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1d3b
    .line 2545
    if-eqz v57, :cond_ec

    #@1d3d
    .line 2546
    const/4 v4, 0x1

    #@1d3e
    move-object/from16 v0, p3

    #@1d40
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@1d43
    .line 2547
    const/4 v4, 0x1

    #@1d44
    move-object/from16 v0, v57

    #@1d46
    move-object/from16 v1, p3

    #@1d48
    invoke-virtual {v0, v1, v4}, Landroid/app/admin/SystemUpdatePolicy;->writeToParcel(Landroid/os/Parcel;I)V

    #@1d4b
    .line 2552
    :goto_ec
    const/4 v4, 0x1

    #@1d4c
    return v4

    #@1d4d
    .line 2550
    :cond_ec
    const/4 v4, 0x0

    #@1d4e
    move-object/from16 v0, p3

    #@1d50
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@1d53
    goto :goto_ec

    #@1d54
    .line 2556
    .end local v57    # "_result":Landroid/app/admin/SystemUpdatePolicy;
    :sswitch_9a
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@1d57
    move-object/from16 v0, p2

    #@1d59
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1d5c
    .line 2558
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1d5f
    move-result v4

    #@1d60
    if-eqz v4, :cond_ed

    #@1d62
    .line 2559
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1d64
    move-object/from16 v0, p2

    #@1d66
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1d69
    move-result-object v15

    #@1d6a
    check-cast v15, Landroid/content/ComponentName;

    #@1d6c
    .line 2565
    :goto_ed
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1d6f
    move-result v4

    #@1d70
    if-eqz v4, :cond_ee

    #@1d72
    const/16 v49, 0x1

    #@1d74
    .line 2566
    .restart local v49    # "_arg1":Z
    :goto_ee
    move-object/from16 v0, p0

    #@1d76
    move/from16 v1, v49

    #@1d78
    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setKeyguardDisabled(Landroid/content/ComponentName;Z)Z

    #@1d7b
    move-result v70

    #@1d7c
    .line 2567
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1d7f
    .line 2568
    if-eqz v70, :cond_ef

    #@1d81
    const/4 v4, 0x1

    #@1d82
    :goto_ef
    move-object/from16 v0, p3

    #@1d84
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@1d87
    .line 2569
    const/4 v4, 0x1

    #@1d88
    return v4

    #@1d89
    .line 2562
    .end local v49    # "_arg1":Z
    .end local v70    # "_result":Z
    :cond_ed
    const/4 v15, 0x0

    #@1d8a
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_ed

    #@1d8b
    .line 2565
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :cond_ee
    const/16 v49, 0x0

    #@1d8d
    goto :goto_ee

    #@1d8e
    .line 2568
    .restart local v49    # "_arg1":Z
    .restart local v70    # "_result":Z
    :cond_ef
    const/4 v4, 0x0

    #@1d8f
    goto :goto_ef

    #@1d90
    .line 2573
    .end local v49    # "_arg1":Z
    .end local v70    # "_result":Z
    :sswitch_9b
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@1d93
    move-object/from16 v0, p2

    #@1d95
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1d98
    .line 2575
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1d9b
    move-result v4

    #@1d9c
    if-eqz v4, :cond_f0

    #@1d9e
    .line 2576
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1da0
    move-object/from16 v0, p2

    #@1da2
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1da5
    move-result-object v15

    #@1da6
    check-cast v15, Landroid/content/ComponentName;

    #@1da8
    .line 2582
    :goto_f0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1dab
    move-result v4

    #@1dac
    if-eqz v4, :cond_f1

    #@1dae
    const/16 v49, 0x1

    #@1db0
    .line 2583
    .restart local v49    # "_arg1":Z
    :goto_f1
    move-object/from16 v0, p0

    #@1db2
    move/from16 v1, v49

    #@1db4
    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setStatusBarDisabled(Landroid/content/ComponentName;Z)Z

    #@1db7
    move-result v70

    #@1db8
    .line 2584
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1dbb
    .line 2585
    if-eqz v70, :cond_f2

    #@1dbd
    const/4 v4, 0x1

    #@1dbe
    :goto_f2
    move-object/from16 v0, p3

    #@1dc0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@1dc3
    .line 2586
    const/4 v4, 0x1

    #@1dc4
    return v4

    #@1dc5
    .line 2579
    .end local v49    # "_arg1":Z
    .end local v70    # "_result":Z
    :cond_f0
    const/4 v15, 0x0

    #@1dc6
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_f0

    #@1dc7
    .line 2582
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :cond_f1
    const/16 v49, 0x0

    #@1dc9
    goto :goto_f1

    #@1dca
    .line 2585
    .restart local v49    # "_arg1":Z
    .restart local v70    # "_result":Z
    :cond_f2
    const/4 v4, 0x0

    #@1dcb
    goto :goto_f2

    #@1dcc
    .line 2590
    .end local v49    # "_arg1":Z
    .end local v70    # "_result":Z
    :sswitch_9c
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@1dcf
    move-object/from16 v0, p2

    #@1dd1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1dd4
    .line 2591
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getDoNotAskCredentialsOnBoot()Z

    #@1dd7
    move-result v70

    #@1dd8
    .line 2592
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1ddb
    .line 2593
    if-eqz v70, :cond_f3

    #@1ddd
    const/4 v4, 0x1

    #@1dde
    :goto_f3
    move-object/from16 v0, p3

    #@1de0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@1de3
    .line 2594
    const/4 v4, 0x1

    #@1de4
    return v4

    #@1de5
    .line 2593
    :cond_f3
    const/4 v4, 0x0

    #@1de6
    goto :goto_f3

    #@1de7
    .line 2598
    .end local v70    # "_result":Z
    :sswitch_9d
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@1dea
    move-object/from16 v0, p2

    #@1dec
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1def
    .line 2600
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@1df2
    move-result-wide v34

    #@1df3
    .line 2601
    .local v34, "_arg0":J
    move-object/from16 v0, p0

    #@1df5
    move-wide/from16 v1, v34

    #@1df7
    invoke-virtual {v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->notifyPendingSystemUpdate(J)V

    #@1dfa
    .line 2602
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1dfd
    .line 2603
    const/4 v4, 0x1

    #@1dfe
    return v4

    #@1dff
    .line 2607
    .end local v34    # "_arg0":J
    :sswitch_9e
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@1e02
    move-object/from16 v0, p2

    #@1e04
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1e07
    .line 2609
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1e0a
    move-result v4

    #@1e0b
    if-eqz v4, :cond_f4

    #@1e0d
    .line 2610
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1e0f
    move-object/from16 v0, p2

    #@1e11
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1e14
    move-result-object v15

    #@1e15
    check-cast v15, Landroid/content/ComponentName;

    #@1e17
    .line 2616
    :goto_f4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1e1a
    move-result v6

    #@1e1b
    .line 2617
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    #@1e1d
    invoke-virtual {v0, v15, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPermissionPolicy(Landroid/content/ComponentName;I)V

    #@1e20
    .line 2618
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1e23
    .line 2619
    const/4 v4, 0x1

    #@1e24
    return v4

    #@1e25
    .line 2613
    .end local v6    # "_arg1":I
    :cond_f4
    const/4 v15, 0x0

    #@1e26
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_f4

    #@1e27
    .line 2623
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_9f
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@1e2a
    move-object/from16 v0, p2

    #@1e2c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1e2f
    .line 2625
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1e32
    move-result v4

    #@1e33
    if-eqz v4, :cond_f5

    #@1e35
    .line 2626
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1e37
    move-object/from16 v0, p2

    #@1e39
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1e3c
    move-result-object v15

    #@1e3d
    check-cast v15, Landroid/content/ComponentName;

    #@1e3f
    .line 2631
    :goto_f5
    move-object/from16 v0, p0

    #@1e41
    invoke-virtual {v0, v15}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPermissionPolicy(Landroid/content/ComponentName;)I

    #@1e44
    move-result v56

    #@1e45
    .line 2632
    .restart local v56    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1e48
    .line 2633
    move-object/from16 v0, p3

    #@1e4a
    move/from16 v1, v56

    #@1e4c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1e4f
    .line 2634
    const/4 v4, 0x1

    #@1e50
    return v4

    #@1e51
    .line 2629
    .end local v56    # "_result":I
    :cond_f5
    const/4 v15, 0x0

    #@1e52
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_f5

    #@1e53
    .line 2638
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_a0
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@1e56
    move-object/from16 v0, p2

    #@1e58
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1e5b
    .line 2640
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1e5e
    move-result v4

    #@1e5f
    if-eqz v4, :cond_f6

    #@1e61
    .line 2641
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1e63
    move-object/from16 v0, p2

    #@1e65
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1e68
    move-result-object v15

    #@1e69
    check-cast v15, Landroid/content/ComponentName;

    #@1e6b
    .line 2647
    :goto_f6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1e6e
    move-result-object v23

    #@1e6f
    .line 2649
    .restart local v23    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1e72
    move-result-object v53

    #@1e73
    .line 2651
    .restart local v53    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1e76
    move-result v8

    #@1e77
    .line 2652
    .restart local v8    # "_arg3":I
    move-object/from16 v0, p0

    #@1e79
    move-object/from16 v1, v23

    #@1e7b
    move-object/from16 v2, v53

    #@1e7d
    invoke-virtual {v0, v15, v1, v2, v8}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPermissionGrantState(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;I)Z

    #@1e80
    move-result v70

    #@1e81
    .line 2653
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1e84
    .line 2654
    if-eqz v70, :cond_f7

    #@1e86
    const/4 v4, 0x1

    #@1e87
    :goto_f7
    move-object/from16 v0, p3

    #@1e89
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@1e8c
    .line 2655
    const/4 v4, 0x1

    #@1e8d
    return v4

    #@1e8e
    .line 2644
    .end local v8    # "_arg3":I
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v53    # "_arg2":Ljava/lang/String;
    .end local v70    # "_result":Z
    :cond_f6
    const/4 v15, 0x0

    #@1e8f
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_f6

    #@1e90
    .line 2654
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v8    # "_arg3":I
    .restart local v23    # "_arg1":Ljava/lang/String;
    .restart local v53    # "_arg2":Ljava/lang/String;
    .restart local v70    # "_result":Z
    :cond_f7
    const/4 v4, 0x0

    #@1e91
    goto :goto_f7

    #@1e92
    .line 2659
    .end local v8    # "_arg3":I
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v53    # "_arg2":Ljava/lang/String;
    .end local v70    # "_result":Z
    :sswitch_a1
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@1e95
    move-object/from16 v0, p2

    #@1e97
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1e9a
    .line 2661
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1e9d
    move-result v4

    #@1e9e
    if-eqz v4, :cond_f8

    #@1ea0
    .line 2662
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1ea2
    move-object/from16 v0, p2

    #@1ea4
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1ea7
    move-result-object v15

    #@1ea8
    check-cast v15, Landroid/content/ComponentName;

    #@1eaa
    .line 2668
    :goto_f8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1ead
    move-result-object v23

    #@1eae
    .line 2670
    .restart local v23    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1eb1
    move-result-object v53

    #@1eb2
    .line 2671
    .restart local v53    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    #@1eb4
    move-object/from16 v1, v23

    #@1eb6
    move-object/from16 v2, v53

    #@1eb8
    invoke-virtual {v0, v15, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPermissionGrantState(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)I

    #@1ebb
    move-result v56

    #@1ebc
    .line 2672
    .restart local v56    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1ebf
    .line 2673
    move-object/from16 v0, p3

    #@1ec1
    move/from16 v1, v56

    #@1ec3
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1ec6
    .line 2674
    const/4 v4, 0x1

    #@1ec7
    return v4

    #@1ec8
    .line 2665
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v53    # "_arg2":Ljava/lang/String;
    .end local v56    # "_result":I
    :cond_f8
    const/4 v15, 0x0

    #@1ec9
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_f8

    #@1eca
    .line 2678
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_a2
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@1ecd
    move-object/from16 v0, p2

    #@1ecf
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1ed2
    .line 2680
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1ed5
    move-result-object v27

    #@1ed6
    .line 2681
    .restart local v27    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@1ed8
    move-object/from16 v1, v27

    #@1eda
    invoke-virtual {v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->isProvisioningAllowed(Ljava/lang/String;)Z

    #@1edd
    move-result v70

    #@1ede
    .line 2682
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1ee1
    .line 2683
    if-eqz v70, :cond_f9

    #@1ee3
    const/4 v4, 0x1

    #@1ee4
    :goto_f9
    move-object/from16 v0, p3

    #@1ee6
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@1ee9
    .line 2684
    const/4 v4, 0x1

    #@1eea
    return v4

    #@1eeb
    .line 2683
    :cond_f9
    const/4 v4, 0x0

    #@1eec
    goto :goto_f9

    #@1eed
    .line 2688
    .end local v27    # "_arg0":Ljava/lang/String;
    .end local v70    # "_result":Z
    :sswitch_a3
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@1ef0
    move-object/from16 v0, p2

    #@1ef2
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1ef5
    .line 2690
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1ef8
    move-result v4

    #@1ef9
    if-eqz v4, :cond_fa

    #@1efb
    .line 2691
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1efd
    move-object/from16 v0, p2

    #@1eff
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1f02
    move-result-object v15

    #@1f03
    check-cast v15, Landroid/content/ComponentName;

    #@1f05
    .line 2697
    :goto_fa
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    #@1f08
    move-result-object v48

    #@1f09
    .line 2698
    .local v48, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    #@1f0b
    move-object/from16 v1, v48

    #@1f0d
    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setKeepUninstalledPackages(Landroid/content/ComponentName;Ljava/util/List;)V

    #@1f10
    .line 2699
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1f13
    .line 2700
    const/4 v4, 0x1

    #@1f14
    return v4

    #@1f15
    .line 2694
    .end local v48    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_fa
    const/4 v15, 0x0

    #@1f16
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_fa

    #@1f17
    .line 2704
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_a4
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@1f1a
    move-object/from16 v0, p2

    #@1f1c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1f1f
    .line 2706
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1f22
    move-result v4

    #@1f23
    if-eqz v4, :cond_fb

    #@1f25
    .line 2707
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1f27
    move-object/from16 v0, p2

    #@1f29
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1f2c
    move-result-object v15

    #@1f2d
    check-cast v15, Landroid/content/ComponentName;

    #@1f2f
    .line 2712
    :goto_fb
    move-object/from16 v0, p0

    #@1f31
    invoke-virtual {v0, v15}, Landroid/app/admin/IDevicePolicyManager$Stub;->getKeepUninstalledPackages(Landroid/content/ComponentName;)Ljava/util/List;

    #@1f34
    move-result-object v69

    #@1f35
    .line 2713
    .restart local v69    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1f38
    .line 2714
    move-object/from16 v0, p3

    #@1f3a
    move-object/from16 v1, v69

    #@1f3c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    #@1f3f
    .line 2715
    const/4 v4, 0x1

    #@1f40
    return v4

    #@1f41
    .line 2710
    .end local v69    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_fb
    const/4 v15, 0x0

    #@1f42
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_fb

    #@1f43
    .line 2719
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_a5
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@1f46
    move-object/from16 v0, p2

    #@1f48
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1f4b
    .line 2721
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1f4e
    move-result v4

    #@1f4f
    if-eqz v4, :cond_fc

    #@1f51
    .line 2722
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1f53
    move-object/from16 v0, p2

    #@1f55
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1f58
    move-result-object v15

    #@1f59
    check-cast v15, Landroid/content/ComponentName;

    #@1f5b
    .line 2727
    :goto_fc
    move-object/from16 v0, p0

    #@1f5d
    invoke-virtual {v0, v15}, Landroid/app/admin/IDevicePolicyManager$Stub;->isManagedProfile(Landroid/content/ComponentName;)Z

    #@1f60
    move-result v70

    #@1f61
    .line 2728
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1f64
    .line 2729
    if-eqz v70, :cond_fd

    #@1f66
    const/4 v4, 0x1

    #@1f67
    :goto_fd
    move-object/from16 v0, p3

    #@1f69
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@1f6c
    .line 2730
    const/4 v4, 0x1

    #@1f6d
    return v4

    #@1f6e
    .line 2725
    .end local v70    # "_result":Z
    :cond_fc
    const/4 v15, 0x0

    #@1f6f
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_fc

    #@1f70
    .line 2729
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v70    # "_result":Z
    :cond_fd
    const/4 v4, 0x0

    #@1f71
    goto :goto_fd

    #@1f72
    .line 2734
    .end local v70    # "_result":Z
    :sswitch_a6
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@1f75
    move-object/from16 v0, p2

    #@1f77
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1f7a
    .line 2736
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1f7d
    move-result v4

    #@1f7e
    if-eqz v4, :cond_fe

    #@1f80
    .line 2737
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1f82
    move-object/from16 v0, p2

    #@1f84
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1f87
    move-result-object v15

    #@1f88
    check-cast v15, Landroid/content/ComponentName;

    #@1f8a
    .line 2742
    :goto_fe
    move-object/from16 v0, p0

    #@1f8c
    invoke-virtual {v0, v15}, Landroid/app/admin/IDevicePolicyManager$Stub;->isSystemOnlyUser(Landroid/content/ComponentName;)Z

    #@1f8f
    move-result v70

    #@1f90
    .line 2743
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1f93
    .line 2744
    if-eqz v70, :cond_ff

    #@1f95
    const/4 v4, 0x1

    #@1f96
    :goto_ff
    move-object/from16 v0, p3

    #@1f98
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@1f9b
    .line 2745
    const/4 v4, 0x1

    #@1f9c
    return v4

    #@1f9d
    .line 2740
    .end local v70    # "_result":Z
    :cond_fe
    const/4 v15, 0x0

    #@1f9e
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_fe

    #@1f9f
    .line 2744
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v70    # "_result":Z
    :cond_ff
    const/4 v4, 0x0

    #@1fa0
    goto :goto_ff

    #@1fa1
    .line 2749
    .end local v70    # "_result":Z
    :sswitch_a7
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@1fa4
    move-object/from16 v0, p2

    #@1fa6
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1fa9
    .line 2751
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1fac
    move-result v4

    #@1fad
    if-eqz v4, :cond_100

    #@1faf
    .line 2752
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1fb1
    move-object/from16 v0, p2

    #@1fb3
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1fb6
    move-result-object v15

    #@1fb7
    check-cast v15, Landroid/content/ComponentName;

    #@1fb9
    .line 2757
    :goto_100
    move-object/from16 v0, p0

    #@1fbb
    invoke-virtual {v0, v15}, Landroid/app/admin/IDevicePolicyManager$Stub;->getWifiMacAddress(Landroid/content/ComponentName;)Ljava/lang/String;

    #@1fbe
    move-result-object v65

    #@1fbf
    .line 2758
    .restart local v65    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1fc2
    .line 2759
    move-object/from16 v0, p3

    #@1fc4
    move-object/from16 v1, v65

    #@1fc6
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1fc9
    .line 2760
    const/4 v4, 0x1

    #@1fca
    return v4

    #@1fcb
    .line 2755
    .end local v65    # "_result":Ljava/lang/String;
    :cond_100
    const/4 v15, 0x0

    #@1fcc
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_100

    #@1fcd
    .line 2764
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_a8
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@1fd0
    move-object/from16 v0, p2

    #@1fd2
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1fd5
    .line 2766
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1fd8
    move-result v4

    #@1fd9
    if-eqz v4, :cond_101

    #@1fdb
    .line 2767
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1fdd
    move-object/from16 v0, p2

    #@1fdf
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1fe2
    move-result-object v15

    #@1fe3
    check-cast v15, Landroid/content/ComponentName;

    #@1fe5
    .line 2772
    :goto_101
    move-object/from16 v0, p0

    #@1fe7
    invoke-virtual {v0, v15}, Landroid/app/admin/IDevicePolicyManager$Stub;->reboot(Landroid/content/ComponentName;)V

    #@1fea
    .line 2773
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1fed
    .line 2774
    const/4 v4, 0x1

    #@1fee
    return v4

    #@1fef
    .line 2770
    :cond_101
    const/4 v15, 0x0

    #@1ff0
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_101

    #@1ff1
    .line 2778
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_a9
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@1ff4
    move-object/from16 v0, p2

    #@1ff6
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1ff9
    .line 2780
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1ffc
    move-result v4

    #@1ffd
    if-eqz v4, :cond_102

    #@1fff
    .line 2781
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2001
    move-object/from16 v0, p2

    #@2003
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2006
    move-result-object v15

    #@2007
    check-cast v15, Landroid/content/ComponentName;

    #@2009
    .line 2787
    :goto_102
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@200c
    move-result v4

    #@200d
    if-eqz v4, :cond_103

    #@200f
    .line 2788
    sget-object v4, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    #@2011
    move-object/from16 v0, p2

    #@2013
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2016
    move-result-object v46

    #@2017
    check-cast v46, Ljava/lang/CharSequence;

    #@2019
    .line 2793
    :goto_103
    move-object/from16 v0, p0

    #@201b
    move-object/from16 v1, v46

    #@201d
    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setShortSupportMessage(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V

    #@2020
    .line 2794
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2023
    .line 2795
    const/4 v4, 0x1

    #@2024
    return v4

    #@2025
    .line 2784
    :cond_102
    const/4 v15, 0x0

    #@2026
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_102

    #@2027
    .line 2791
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :cond_103
    const/16 v46, 0x0

    #@2029
    .restart local v46    # "_arg1":Ljava/lang/CharSequence;
    goto :goto_103

    #@202a
    .line 2799
    .end local v46    # "_arg1":Ljava/lang/CharSequence;
    :sswitch_aa
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@202d
    move-object/from16 v0, p2

    #@202f
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2032
    .line 2801
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2035
    move-result v4

    #@2036
    if-eqz v4, :cond_104

    #@2038
    .line 2802
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@203a
    move-object/from16 v0, p2

    #@203c
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@203f
    move-result-object v15

    #@2040
    check-cast v15, Landroid/content/ComponentName;

    #@2042
    .line 2807
    :goto_104
    move-object/from16 v0, p0

    #@2044
    invoke-virtual {v0, v15}, Landroid/app/admin/IDevicePolicyManager$Stub;->getShortSupportMessage(Landroid/content/ComponentName;)Ljava/lang/CharSequence;

    #@2047
    move-result-object v64

    #@2048
    .line 2808
    .restart local v64    # "_result":Ljava/lang/CharSequence;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@204b
    .line 2809
    if-eqz v64, :cond_105

    #@204d
    .line 2810
    const/4 v4, 0x1

    #@204e
    move-object/from16 v0, p3

    #@2050
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@2053
    .line 2811
    const/4 v4, 0x1

    #@2054
    move-object/from16 v0, v64

    #@2056
    move-object/from16 v1, p3

    #@2058
    invoke-static {v0, v1, v4}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    #@205b
    .line 2816
    :goto_105
    const/4 v4, 0x1

    #@205c
    return v4

    #@205d
    .line 2805
    .end local v64    # "_result":Ljava/lang/CharSequence;
    :cond_104
    const/4 v15, 0x0

    #@205e
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_104

    #@205f
    .line 2814
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v64    # "_result":Ljava/lang/CharSequence;
    :cond_105
    const/4 v4, 0x0

    #@2060
    move-object/from16 v0, p3

    #@2062
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@2065
    goto :goto_105

    #@2066
    .line 2820
    .end local v64    # "_result":Ljava/lang/CharSequence;
    :sswitch_ab
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@2069
    move-object/from16 v0, p2

    #@206b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@206e
    .line 2822
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2071
    move-result v4

    #@2072
    if-eqz v4, :cond_106

    #@2074
    .line 2823
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2076
    move-object/from16 v0, p2

    #@2078
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@207b
    move-result-object v15

    #@207c
    check-cast v15, Landroid/content/ComponentName;

    #@207e
    .line 2829
    :goto_106
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2081
    move-result v4

    #@2082
    if-eqz v4, :cond_107

    #@2084
    .line 2830
    sget-object v4, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    #@2086
    move-object/from16 v0, p2

    #@2088
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@208b
    move-result-object v46

    #@208c
    check-cast v46, Ljava/lang/CharSequence;

    #@208e
    .line 2835
    :goto_107
    move-object/from16 v0, p0

    #@2090
    move-object/from16 v1, v46

    #@2092
    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setLongSupportMessage(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V

    #@2095
    .line 2836
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2098
    .line 2837
    const/4 v4, 0x1

    #@2099
    return v4

    #@209a
    .line 2826
    :cond_106
    const/4 v15, 0x0

    #@209b
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_106

    #@209c
    .line 2833
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :cond_107
    const/16 v46, 0x0

    #@209e
    .restart local v46    # "_arg1":Ljava/lang/CharSequence;
    goto :goto_107

    #@209f
    .line 2841
    .end local v46    # "_arg1":Ljava/lang/CharSequence;
    :sswitch_ac
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@20a2
    move-object/from16 v0, p2

    #@20a4
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@20a7
    .line 2843
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@20aa
    move-result v4

    #@20ab
    if-eqz v4, :cond_108

    #@20ad
    .line 2844
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@20af
    move-object/from16 v0, p2

    #@20b1
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@20b4
    move-result-object v15

    #@20b5
    check-cast v15, Landroid/content/ComponentName;

    #@20b7
    .line 2849
    :goto_108
    move-object/from16 v0, p0

    #@20b9
    invoke-virtual {v0, v15}, Landroid/app/admin/IDevicePolicyManager$Stub;->getLongSupportMessage(Landroid/content/ComponentName;)Ljava/lang/CharSequence;

    #@20bc
    move-result-object v64

    #@20bd
    .line 2850
    .restart local v64    # "_result":Ljava/lang/CharSequence;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@20c0
    .line 2851
    if-eqz v64, :cond_109

    #@20c2
    .line 2852
    const/4 v4, 0x1

    #@20c3
    move-object/from16 v0, p3

    #@20c5
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@20c8
    .line 2853
    const/4 v4, 0x1

    #@20c9
    move-object/from16 v0, v64

    #@20cb
    move-object/from16 v1, p3

    #@20cd
    invoke-static {v0, v1, v4}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    #@20d0
    .line 2858
    :goto_109
    const/4 v4, 0x1

    #@20d1
    return v4

    #@20d2
    .line 2847
    .end local v64    # "_result":Ljava/lang/CharSequence;
    :cond_108
    const/4 v15, 0x0

    #@20d3
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_108

    #@20d4
    .line 2856
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v64    # "_result":Ljava/lang/CharSequence;
    :cond_109
    const/4 v4, 0x0

    #@20d5
    move-object/from16 v0, p3

    #@20d7
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@20da
    goto :goto_109

    #@20db
    .line 2862
    .end local v64    # "_result":Ljava/lang/CharSequence;
    :sswitch_ad
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@20de
    move-object/from16 v0, p2

    #@20e0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@20e3
    .line 2864
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@20e6
    move-result v4

    #@20e7
    if-eqz v4, :cond_10a

    #@20e9
    .line 2865
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@20eb
    move-object/from16 v0, p2

    #@20ed
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@20f0
    move-result-object v15

    #@20f1
    check-cast v15, Landroid/content/ComponentName;

    #@20f3
    .line 2871
    :goto_10a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@20f6
    move-result v6

    #@20f7
    .line 2872
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    #@20f9
    invoke-virtual {v0, v15, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->getShortSupportMessageForUser(Landroid/content/ComponentName;I)Ljava/lang/CharSequence;

    #@20fc
    move-result-object v64

    #@20fd
    .line 2873
    .restart local v64    # "_result":Ljava/lang/CharSequence;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2100
    .line 2874
    if-eqz v64, :cond_10b

    #@2102
    .line 2875
    const/4 v4, 0x1

    #@2103
    move-object/from16 v0, p3

    #@2105
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@2108
    .line 2876
    const/4 v4, 0x1

    #@2109
    move-object/from16 v0, v64

    #@210b
    move-object/from16 v1, p3

    #@210d
    invoke-static {v0, v1, v4}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    #@2110
    .line 2881
    :goto_10b
    const/4 v4, 0x1

    #@2111
    return v4

    #@2112
    .line 2868
    .end local v6    # "_arg1":I
    .end local v64    # "_result":Ljava/lang/CharSequence;
    :cond_10a
    const/4 v15, 0x0

    #@2113
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_10a

    #@2114
    .line 2879
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v6    # "_arg1":I
    .restart local v64    # "_result":Ljava/lang/CharSequence;
    :cond_10b
    const/4 v4, 0x0

    #@2115
    move-object/from16 v0, p3

    #@2117
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@211a
    goto :goto_10b

    #@211b
    .line 2885
    .end local v6    # "_arg1":I
    .end local v64    # "_result":Ljava/lang/CharSequence;
    :sswitch_ae
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@211e
    move-object/from16 v0, p2

    #@2120
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2123
    .line 2887
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2126
    move-result v4

    #@2127
    if-eqz v4, :cond_10c

    #@2129
    .line 2888
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@212b
    move-object/from16 v0, p2

    #@212d
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2130
    move-result-object v15

    #@2131
    check-cast v15, Landroid/content/ComponentName;

    #@2133
    .line 2894
    :goto_10c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2136
    move-result v6

    #@2137
    .line 2895
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    #@2139
    invoke-virtual {v0, v15, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->getLongSupportMessageForUser(Landroid/content/ComponentName;I)Ljava/lang/CharSequence;

    #@213c
    move-result-object v64

    #@213d
    .line 2896
    .restart local v64    # "_result":Ljava/lang/CharSequence;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2140
    .line 2897
    if-eqz v64, :cond_10d

    #@2142
    .line 2898
    const/4 v4, 0x1

    #@2143
    move-object/from16 v0, p3

    #@2145
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@2148
    .line 2899
    const/4 v4, 0x1

    #@2149
    move-object/from16 v0, v64

    #@214b
    move-object/from16 v1, p3

    #@214d
    invoke-static {v0, v1, v4}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    #@2150
    .line 2904
    :goto_10d
    const/4 v4, 0x1

    #@2151
    return v4

    #@2152
    .line 2891
    .end local v6    # "_arg1":I
    .end local v64    # "_result":Ljava/lang/CharSequence;
    :cond_10c
    const/4 v15, 0x0

    #@2153
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_10c

    #@2154
    .line 2902
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v6    # "_arg1":I
    .restart local v64    # "_result":Ljava/lang/CharSequence;
    :cond_10d
    const/4 v4, 0x0

    #@2155
    move-object/from16 v0, p3

    #@2157
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@215a
    goto :goto_10d

    #@215b
    .line 2908
    .end local v6    # "_arg1":I
    .end local v64    # "_result":Ljava/lang/CharSequence;
    :sswitch_af
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@215e
    move-object/from16 v0, p2

    #@2160
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2163
    .line 2910
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2166
    move-result v5

    #@2167
    .line 2911
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@2169
    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->isSeparateProfileChallengeAllowed(I)Z

    #@216c
    move-result v70

    #@216d
    .line 2912
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2170
    .line 2913
    if-eqz v70, :cond_10e

    #@2172
    const/4 v4, 0x1

    #@2173
    :goto_10e
    move-object/from16 v0, p3

    #@2175
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@2178
    .line 2914
    const/4 v4, 0x1

    #@2179
    return v4

    #@217a
    .line 2913
    :cond_10e
    const/4 v4, 0x0

    #@217b
    goto :goto_10e

    #@217c
    .line 2918
    .end local v5    # "_arg0":I
    .end local v70    # "_result":Z
    :sswitch_b0
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@217f
    move-object/from16 v0, p2

    #@2181
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2184
    .line 2920
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2187
    move-result v4

    #@2188
    if-eqz v4, :cond_10f

    #@218a
    .line 2921
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@218c
    move-object/from16 v0, p2

    #@218e
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2191
    move-result-object v15

    #@2192
    check-cast v15, Landroid/content/ComponentName;

    #@2194
    .line 2927
    :goto_10f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2197
    move-result v6

    #@2198
    .line 2928
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    #@219a
    invoke-virtual {v0, v15, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setOrganizationColor(Landroid/content/ComponentName;I)V

    #@219d
    .line 2929
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@21a0
    .line 2930
    const/4 v4, 0x1

    #@21a1
    return v4

    #@21a2
    .line 2924
    .end local v6    # "_arg1":I
    :cond_10f
    const/4 v15, 0x0

    #@21a3
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_10f

    #@21a4
    .line 2934
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_b1
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@21a7
    move-object/from16 v0, p2

    #@21a9
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@21ac
    .line 2936
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@21af
    move-result v5

    #@21b0
    .line 2938
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@21b3
    move-result v6

    #@21b4
    .line 2939
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    #@21b6
    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setOrganizationColorForUser(II)V

    #@21b9
    .line 2940
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@21bc
    .line 2941
    const/4 v4, 0x1

    #@21bd
    return v4

    #@21be
    .line 2945
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    :sswitch_b2
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@21c1
    move-object/from16 v0, p2

    #@21c3
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@21c6
    .line 2947
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@21c9
    move-result v4

    #@21ca
    if-eqz v4, :cond_110

    #@21cc
    .line 2948
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@21ce
    move-object/from16 v0, p2

    #@21d0
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@21d3
    move-result-object v15

    #@21d4
    check-cast v15, Landroid/content/ComponentName;

    #@21d6
    .line 2953
    :goto_110
    move-object/from16 v0, p0

    #@21d8
    invoke-virtual {v0, v15}, Landroid/app/admin/IDevicePolicyManager$Stub;->getOrganizationColor(Landroid/content/ComponentName;)I

    #@21db
    move-result v56

    #@21dc
    .line 2954
    .restart local v56    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@21df
    .line 2955
    move-object/from16 v0, p3

    #@21e1
    move/from16 v1, v56

    #@21e3
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@21e6
    .line 2956
    const/4 v4, 0x1

    #@21e7
    return v4

    #@21e8
    .line 2951
    .end local v56    # "_result":I
    :cond_110
    const/4 v15, 0x0

    #@21e9
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_110

    #@21ea
    .line 2960
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_b3
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@21ed
    move-object/from16 v0, p2

    #@21ef
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@21f2
    .line 2962
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@21f5
    move-result v5

    #@21f6
    .line 2963
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@21f8
    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getOrganizationColorForUser(I)I

    #@21fb
    move-result v56

    #@21fc
    .line 2964
    .restart local v56    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@21ff
    .line 2965
    move-object/from16 v0, p3

    #@2201
    move/from16 v1, v56

    #@2203
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@2206
    .line 2966
    const/4 v4, 0x1

    #@2207
    return v4

    #@2208
    .line 2970
    .end local v5    # "_arg0":I
    .end local v56    # "_result":I
    :sswitch_b4
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@220b
    move-object/from16 v0, p2

    #@220d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2210
    .line 2972
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2213
    move-result v4

    #@2214
    if-eqz v4, :cond_111

    #@2216
    .line 2973
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2218
    move-object/from16 v0, p2

    #@221a
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@221d
    move-result-object v15

    #@221e
    check-cast v15, Landroid/content/ComponentName;

    #@2220
    .line 2979
    :goto_111
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2223
    move-result v4

    #@2224
    if-eqz v4, :cond_112

    #@2226
    .line 2980
    sget-object v4, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    #@2228
    move-object/from16 v0, p2

    #@222a
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@222d
    move-result-object v46

    #@222e
    check-cast v46, Ljava/lang/CharSequence;

    #@2230
    .line 2985
    :goto_112
    move-object/from16 v0, p0

    #@2232
    move-object/from16 v1, v46

    #@2234
    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setOrganizationName(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V

    #@2237
    .line 2986
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@223a
    .line 2987
    const/4 v4, 0x1

    #@223b
    return v4

    #@223c
    .line 2976
    :cond_111
    const/4 v15, 0x0

    #@223d
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_111

    #@223e
    .line 2983
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :cond_112
    const/16 v46, 0x0

    #@2240
    .restart local v46    # "_arg1":Ljava/lang/CharSequence;
    goto :goto_112

    #@2241
    .line 2991
    .end local v46    # "_arg1":Ljava/lang/CharSequence;
    :sswitch_b5
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@2244
    move-object/from16 v0, p2

    #@2246
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2249
    .line 2993
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@224c
    move-result v4

    #@224d
    if-eqz v4, :cond_113

    #@224f
    .line 2994
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2251
    move-object/from16 v0, p2

    #@2253
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2256
    move-result-object v15

    #@2257
    check-cast v15, Landroid/content/ComponentName;

    #@2259
    .line 2999
    :goto_113
    move-object/from16 v0, p0

    #@225b
    invoke-virtual {v0, v15}, Landroid/app/admin/IDevicePolicyManager$Stub;->getOrganizationName(Landroid/content/ComponentName;)Ljava/lang/CharSequence;

    #@225e
    move-result-object v64

    #@225f
    .line 3000
    .restart local v64    # "_result":Ljava/lang/CharSequence;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2262
    .line 3001
    if-eqz v64, :cond_114

    #@2264
    .line 3002
    const/4 v4, 0x1

    #@2265
    move-object/from16 v0, p3

    #@2267
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@226a
    .line 3003
    const/4 v4, 0x1

    #@226b
    move-object/from16 v0, v64

    #@226d
    move-object/from16 v1, p3

    #@226f
    invoke-static {v0, v1, v4}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    #@2272
    .line 3008
    :goto_114
    const/4 v4, 0x1

    #@2273
    return v4

    #@2274
    .line 2997
    .end local v64    # "_result":Ljava/lang/CharSequence;
    :cond_113
    const/4 v15, 0x0

    #@2275
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_113

    #@2276
    .line 3006
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v64    # "_result":Ljava/lang/CharSequence;
    :cond_114
    const/4 v4, 0x0

    #@2277
    move-object/from16 v0, p3

    #@2279
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@227c
    goto :goto_114

    #@227d
    .line 3012
    .end local v64    # "_result":Ljava/lang/CharSequence;
    :sswitch_b6
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@2280
    move-object/from16 v0, p2

    #@2282
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2285
    .line 3014
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2288
    move-result v5

    #@2289
    .line 3015
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    #@228b
    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getOrganizationNameForUser(I)Ljava/lang/CharSequence;

    #@228e
    move-result-object v64

    #@228f
    .line 3016
    .restart local v64    # "_result":Ljava/lang/CharSequence;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2292
    .line 3017
    if-eqz v64, :cond_115

    #@2294
    .line 3018
    const/4 v4, 0x1

    #@2295
    move-object/from16 v0, p3

    #@2297
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@229a
    .line 3019
    const/4 v4, 0x1

    #@229b
    move-object/from16 v0, v64

    #@229d
    move-object/from16 v1, p3

    #@229f
    invoke-static {v0, v1, v4}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    #@22a2
    .line 3024
    :goto_115
    const/4 v4, 0x1

    #@22a3
    return v4

    #@22a4
    .line 3022
    :cond_115
    const/4 v4, 0x0

    #@22a5
    move-object/from16 v0, p3

    #@22a7
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@22aa
    goto :goto_115

    #@22ab
    .line 3028
    .end local v5    # "_arg0":I
    .end local v64    # "_result":Ljava/lang/CharSequence;
    :sswitch_b7
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@22ae
    move-object/from16 v0, p2

    #@22b0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@22b3
    .line 3029
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getUserProvisioningState()I

    #@22b6
    move-result v56

    #@22b7
    .line 3030
    .restart local v56    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@22ba
    .line 3031
    move-object/from16 v0, p3

    #@22bc
    move/from16 v1, v56

    #@22be
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@22c1
    .line 3032
    const/4 v4, 0x1

    #@22c2
    return v4

    #@22c3
    .line 3036
    .end local v56    # "_result":I
    :sswitch_b8
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@22c6
    move-object/from16 v0, p2

    #@22c8
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@22cb
    .line 3038
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@22ce
    move-result v5

    #@22cf
    .line 3040
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@22d2
    move-result v6

    #@22d3
    .line 3041
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    #@22d5
    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setUserProvisioningState(II)V

    #@22d8
    .line 3042
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@22db
    .line 3043
    const/4 v4, 0x1

    #@22dc
    return v4

    #@22dd
    .line 3047
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    :sswitch_b9
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@22e0
    move-object/from16 v0, p2

    #@22e2
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@22e5
    .line 3049
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@22e8
    move-result v4

    #@22e9
    if-eqz v4, :cond_116

    #@22eb
    .line 3050
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@22ed
    move-object/from16 v0, p2

    #@22ef
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@22f2
    move-result-object v15

    #@22f3
    check-cast v15, Landroid/content/ComponentName;

    #@22f5
    .line 3056
    :goto_116
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    #@22f8
    move-result-object v48

    #@22f9
    .line 3057
    .restart local v48    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    #@22fb
    move-object/from16 v1, v48

    #@22fd
    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAffiliationIds(Landroid/content/ComponentName;Ljava/util/List;)V

    #@2300
    .line 3058
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2303
    .line 3059
    const/4 v4, 0x1

    #@2304
    return v4

    #@2305
    .line 3053
    .end local v48    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_116
    const/4 v15, 0x0

    #@2306
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_116

    #@2307
    .line 3063
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_ba
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@230a
    move-object/from16 v0, p2

    #@230c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@230f
    .line 3064
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->isAffiliatedUser()Z

    #@2312
    move-result v70

    #@2313
    .line 3065
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2316
    .line 3066
    if-eqz v70, :cond_117

    #@2318
    const/4 v4, 0x1

    #@2319
    :goto_117
    move-object/from16 v0, p3

    #@231b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@231e
    .line 3067
    const/4 v4, 0x1

    #@231f
    return v4

    #@2320
    .line 3066
    :cond_117
    const/4 v4, 0x0

    #@2321
    goto :goto_117

    #@2322
    .line 3071
    .end local v70    # "_result":Z
    :sswitch_bb
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@2325
    move-object/from16 v0, p2

    #@2327
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@232a
    .line 3073
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@232d
    move-result v4

    #@232e
    if-eqz v4, :cond_118

    #@2330
    .line 3074
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2332
    move-object/from16 v0, p2

    #@2334
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2337
    move-result-object v15

    #@2338
    check-cast v15, Landroid/content/ComponentName;

    #@233a
    .line 3080
    :goto_118
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@233d
    move-result v4

    #@233e
    if-eqz v4, :cond_119

    #@2340
    const/16 v49, 0x1

    #@2342
    .line 3081
    .restart local v49    # "_arg1":Z
    :goto_119
    move-object/from16 v0, p0

    #@2344
    move/from16 v1, v49

    #@2346
    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setSecurityLoggingEnabled(Landroid/content/ComponentName;Z)V

    #@2349
    .line 3082
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@234c
    .line 3083
    const/4 v4, 0x1

    #@234d
    return v4

    #@234e
    .line 3077
    .end local v49    # "_arg1":Z
    :cond_118
    const/4 v15, 0x0

    #@234f
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_118

    #@2350
    .line 3080
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :cond_119
    const/16 v49, 0x0

    #@2352
    goto :goto_119

    #@2353
    .line 3087
    :sswitch_bc
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@2356
    move-object/from16 v0, p2

    #@2358
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@235b
    .line 3089
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@235e
    move-result v4

    #@235f
    if-eqz v4, :cond_11a

    #@2361
    .line 3090
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2363
    move-object/from16 v0, p2

    #@2365
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2368
    move-result-object v15

    #@2369
    check-cast v15, Landroid/content/ComponentName;

    #@236b
    .line 3095
    :goto_11a
    move-object/from16 v0, p0

    #@236d
    invoke-virtual {v0, v15}, Landroid/app/admin/IDevicePolicyManager$Stub;->isSecurityLoggingEnabled(Landroid/content/ComponentName;)Z

    #@2370
    move-result v70

    #@2371
    .line 3096
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2374
    .line 3097
    if-eqz v70, :cond_11b

    #@2376
    const/4 v4, 0x1

    #@2377
    :goto_11b
    move-object/from16 v0, p3

    #@2379
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@237c
    .line 3098
    const/4 v4, 0x1

    #@237d
    return v4

    #@237e
    .line 3093
    .end local v70    # "_result":Z
    :cond_11a
    const/4 v15, 0x0

    #@237f
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_11a

    #@2380
    .line 3097
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v70    # "_result":Z
    :cond_11b
    const/4 v4, 0x0

    #@2381
    goto :goto_11b

    #@2382
    .line 3102
    .end local v70    # "_result":Z
    :sswitch_bd
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@2385
    move-object/from16 v0, p2

    #@2387
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@238a
    .line 3104
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@238d
    move-result v4

    #@238e
    if-eqz v4, :cond_11c

    #@2390
    .line 3105
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2392
    move-object/from16 v0, p2

    #@2394
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2397
    move-result-object v15

    #@2398
    check-cast v15, Landroid/content/ComponentName;

    #@239a
    .line 3110
    :goto_11c
    move-object/from16 v0, p0

    #@239c
    invoke-virtual {v0, v15}, Landroid/app/admin/IDevicePolicyManager$Stub;->retrieveSecurityLogs(Landroid/content/ComponentName;)Landroid/content/pm/ParceledListSlice;

    #@239f
    move-result-object v61

    #@23a0
    .line 3111
    .local v61, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@23a3
    .line 3112
    if-eqz v61, :cond_11d

    #@23a5
    .line 3113
    const/4 v4, 0x1

    #@23a6
    move-object/from16 v0, p3

    #@23a8
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@23ab
    .line 3114
    const/4 v4, 0x1

    #@23ac
    move-object/from16 v0, v61

    #@23ae
    move-object/from16 v1, p3

    #@23b0
    invoke-virtual {v0, v1, v4}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    #@23b3
    .line 3119
    :goto_11d
    const/4 v4, 0x1

    #@23b4
    return v4

    #@23b5
    .line 3108
    .end local v61    # "_result":Landroid/content/pm/ParceledListSlice;
    :cond_11c
    const/4 v15, 0x0

    #@23b6
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_11c

    #@23b7
    .line 3117
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v61    # "_result":Landroid/content/pm/ParceledListSlice;
    :cond_11d
    const/4 v4, 0x0

    #@23b8
    move-object/from16 v0, p3

    #@23ba
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@23bd
    goto :goto_11d

    #@23be
    .line 3123
    .end local v61    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_be
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@23c1
    move-object/from16 v0, p2

    #@23c3
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@23c6
    .line 3125
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@23c9
    move-result v4

    #@23ca
    if-eqz v4, :cond_11e

    #@23cc
    .line 3126
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@23ce
    move-object/from16 v0, p2

    #@23d0
    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@23d3
    move-result-object v15

    #@23d4
    check-cast v15, Landroid/content/ComponentName;

    #@23d6
    .line 3131
    :goto_11e
    move-object/from16 v0, p0

    #@23d8
    invoke-virtual {v0, v15}, Landroid/app/admin/IDevicePolicyManager$Stub;->retrievePreRebootSecurityLogs(Landroid/content/ComponentName;)Landroid/content/pm/ParceledListSlice;

    #@23db
    move-result-object v61

    #@23dc
    .line 3132
    .restart local v61    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@23df
    .line 3133
    if-eqz v61, :cond_11f

    #@23e1
    .line 3134
    const/4 v4, 0x1

    #@23e2
    move-object/from16 v0, p3

    #@23e4
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@23e7
    .line 3135
    const/4 v4, 0x1

    #@23e8
    move-object/from16 v0, v61

    #@23ea
    move-object/from16 v1, p3

    #@23ec
    invoke-virtual {v0, v1, v4}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    #@23ef
    .line 3140
    :goto_11f
    const/4 v4, 0x1

    #@23f0
    return v4

    #@23f1
    .line 3129
    .end local v61    # "_result":Landroid/content/pm/ParceledListSlice;
    :cond_11e
    const/4 v15, 0x0

    #@23f2
    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_11e

    #@23f3
    .line 3138
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v61    # "_result":Landroid/content/pm/ParceledListSlice;
    :cond_11f
    const/4 v4, 0x0

    #@23f4
    move-object/from16 v0, p3

    #@23f6
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@23f9
    goto :goto_11f

    #@23fa
    .line 3144
    .end local v61    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_bf
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@23fd
    move-object/from16 v0, p2

    #@23ff
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2402
    .line 3146
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2405
    move-result-object v27

    #@2406
    .line 3147
    .restart local v27    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@2408
    move-object/from16 v1, v27

    #@240a
    invoke-virtual {v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->isUninstallInQueue(Ljava/lang/String;)Z

    #@240d
    move-result v70

    #@240e
    .line 3148
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2411
    .line 3149
    if-eqz v70, :cond_120

    #@2413
    const/4 v4, 0x1

    #@2414
    :goto_120
    move-object/from16 v0, p3

    #@2416
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@2419
    .line 3150
    const/4 v4, 0x1

    #@241a
    return v4

    #@241b
    .line 3149
    :cond_120
    const/4 v4, 0x0

    #@241c
    goto :goto_120

    #@241d
    .line 3154
    .end local v27    # "_arg0":Ljava/lang/String;
    .end local v70    # "_result":Z
    :sswitch_c0
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    #@2420
    move-object/from16 v0, p2

    #@2422
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2425
    .line 3156
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2428
    move-result-object v27

    #@2429
    .line 3157
    .restart local v27    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@242b
    move-object/from16 v1, v27

    #@242d
    invoke-virtual {v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->uninstallPackageWithActiveAdmins(Ljava/lang/String;)V

    #@2430
    .line 3158
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2433
    .line 3159
    const/4 v4, 0x1

    #@2434
    return v4

    #@2435
    .line 42
    nop

    #@2436
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
