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

.field static final TRANSACTION_addCrossProfileIntentFilter:I = 0x50

.field static final TRANSACTION_addCrossProfileWidgetProvider:I = 0x76

.field static final TRANSACTION_addPersistentPreferredActivity:I = 0x49

.field static final TRANSACTION_choosePrivateKeyAlias:I = 0x46

.field static final TRANSACTION_clearCrossProfileIntentFilters:I = 0x51

.field static final TRANSACTION_clearDeviceInitializer:I = 0x7e

.field static final TRANSACTION_clearDeviceOwner:I = 0x3a

.field static final TRANSACTION_clearPackagePersistentPreferredActivities:I = 0x4a

.field static final TRANSACTION_clearProfileOwner:I = 0x40

.field static final TRANSACTION_createAndInitializeUser:I = 0x5b

.field static final TRANSACTION_createUser:I = 0x5a

.field static final TRANSACTION_enableSystemApp:I = 0x5e

.field static final TRANSACTION_enableSystemAppWithIntent:I = 0x5f

.field static final TRANSACTION_enforceCanManageCaCerts:I = 0x44

.field static final TRANSACTION_getAccountTypesWithManagementDisabled:I = 0x61

.field static final TRANSACTION_getAccountTypesWithManagementDisabledAsUser:I = 0x62

.field static final TRANSACTION_getActiveAdmins:I = 0x2e

.field static final TRANSACTION_getApplicationRestrictions:I = 0x4c

.field static final TRANSACTION_getAutoTimeRequired:I = 0x7a

.field static final TRANSACTION_getBluetoothContactSharingDisabled:I = 0x72

.field static final TRANSACTION_getBluetoothContactSharingDisabledForUser:I = 0x73

.field static final TRANSACTION_getCameraDisabled:I = 0x27

.field static final TRANSACTION_getCertInstallerPackage:I = 0x48

.field static final TRANSACTION_getCrossProfileCallerIdDisabled:I = 0x6e

.field static final TRANSACTION_getCrossProfileCallerIdDisabledForUser:I = 0x6f

.field static final TRANSACTION_getCrossProfileWidgetProviders:I = 0x78

.field static final TRANSACTION_getCurrentFailedPasswordAttempts:I = 0x17

.field static final TRANSACTION_getDeviceInitializer:I = 0x80

.field static final TRANSACTION_getDeviceInitializerComponent:I = 0x81

.field static final TRANSACTION_getDeviceOwner:I = 0x38

.field static final TRANSACTION_getDeviceOwnerName:I = 0x39

.field static final TRANSACTION_getDoNotAskCredentialsOnBoot:I = 0x87

.field static final TRANSACTION_getGlobalProxyAdmin:I = 0x21

.field static final TRANSACTION_getKeyguardDisabledFeatures:I = 0x2b

.field static final TRANSACTION_getLockTaskPackages:I = 0x64

.field static final TRANSACTION_getMaximumFailedPasswordsForWipe:I = 0x1a

.field static final TRANSACTION_getMaximumTimeToLock:I = 0x1d

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

.field static final TRANSACTION_getPermissionGrantState:I = 0x8c

.field static final TRANSACTION_getPermissionPolicy:I = 0x8a

.field static final TRANSACTION_getPermittedAccessibilityServices:I = 0x53

.field static final TRANSACTION_getPermittedAccessibilityServicesForUser:I = 0x54

.field static final TRANSACTION_getPermittedInputMethods:I = 0x56

.field static final TRANSACTION_getPermittedInputMethodsForCurrentUser:I = 0x57

.field static final TRANSACTION_getProfileOwner:I = 0x3c

.field static final TRANSACTION_getProfileOwnerName:I = 0x3d

.field static final TRANSACTION_getProfileWithMinimumFailedPasswordsForWipe:I = 0x18

.field static final TRANSACTION_getRemoveWarning:I = 0x30

.field static final TRANSACTION_getRestrictionsProvider:I = 0x4e

.field static final TRANSACTION_getScreenCaptureDisabled:I = 0x29

.field static final TRANSACTION_getStorageEncryption:I = 0x24

.field static final TRANSACTION_getStorageEncryptionStatus:I = 0x25

.field static final TRANSACTION_getSystemUpdatePolicy:I = 0x84

.field static final TRANSACTION_getTrustAgentConfiguration:I = 0x75

.field static final TRANSACTION_hasGrantedPolicy:I = 0x32

.field static final TRANSACTION_hasUserSetupCompleted:I = 0x41

.field static final TRANSACTION_installCaCert:I = 0x42

.field static final TRANSACTION_installKeyPair:I = 0x45

.field static final TRANSACTION_isActivePasswordSufficient:I = 0x16

.field static final TRANSACTION_isAdminActive:I = 0x2d

.field static final TRANSACTION_isApplicationHidden:I = 0x59

.field static final TRANSACTION_isDeviceInitializer:I = 0x7d

.field static final TRANSACTION_isDeviceOwner:I = 0x37

.field static final TRANSACTION_isLockTaskPermitted:I = 0x65

.field static final TRANSACTION_isMasterVolumeMuted:I = 0x69

.field static final TRANSACTION_isRemovingAdmin:I = 0x7b

.field static final TRANSACTION_isUninstallBlocked:I = 0x6c

.field static final TRANSACTION_lockNow:I = 0x1e

.field static final TRANSACTION_notifyLockTaskModeChanged:I = 0x6a

.field static final TRANSACTION_notifyPendingSystemUpdate:I = 0x88

.field static final TRANSACTION_packageHasActiveAdmins:I = 0x2f

.field static final TRANSACTION_removeActiveAdmin:I = 0x31

.field static final TRANSACTION_removeCrossProfileWidgetProvider:I = 0x77

.field static final TRANSACTION_removeUser:I = 0x5c

.field static final TRANSACTION_reportFailedPasswordAttempt:I = 0x34

.field static final TRANSACTION_reportSuccessfulPasswordAttempt:I = 0x35

.field static final TRANSACTION_resetPassword:I = 0x1b

.field static final TRANSACTION_setAccountManagementDisabled:I = 0x60

.field static final TRANSACTION_setActiveAdmin:I = 0x2c

.field static final TRANSACTION_setActivePasswordState:I = 0x33

.field static final TRANSACTION_setApplicationHidden:I = 0x58

.field static final TRANSACTION_setApplicationRestrictions:I = 0x4b

.field static final TRANSACTION_setAutoTimeRequired:I = 0x79

.field static final TRANSACTION_setBluetoothContactSharingDisabled:I = 0x71

.field static final TRANSACTION_setCameraDisabled:I = 0x26

.field static final TRANSACTION_setCertInstallerPackage:I = 0x47

.field static final TRANSACTION_setCrossProfileCallerIdDisabled:I = 0x6d

.field static final TRANSACTION_setDeviceInitializer:I = 0x7f

.field static final TRANSACTION_setDeviceOwner:I = 0x36

.field static final TRANSACTION_setGlobalProxy:I = 0x20

.field static final TRANSACTION_setGlobalSetting:I = 0x66

.field static final TRANSACTION_setKeyguardDisabled:I = 0x85

.field static final TRANSACTION_setKeyguardDisabledFeatures:I = 0x2a

.field static final TRANSACTION_setLockTaskPackages:I = 0x63

.field static final TRANSACTION_setMasterVolumeMuted:I = 0x68

.field static final TRANSACTION_setMaximumFailedPasswordsForWipe:I = 0x19

.field static final TRANSACTION_setMaximumTimeToLock:I = 0x1c

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

.field static final TRANSACTION_setPermissionGrantState:I = 0x8b

.field static final TRANSACTION_setPermissionPolicy:I = 0x89

.field static final TRANSACTION_setPermittedAccessibilityServices:I = 0x52

.field static final TRANSACTION_setPermittedInputMethods:I = 0x55

.field static final TRANSACTION_setProfileEnabled:I = 0x3e

.field static final TRANSACTION_setProfileName:I = 0x3f

.field static final TRANSACTION_setProfileOwner:I = 0x3b

.field static final TRANSACTION_setRecommendedGlobalProxy:I = 0x22

.field static final TRANSACTION_setRestrictionsProvider:I = 0x4d

.field static final TRANSACTION_setScreenCaptureDisabled:I = 0x28

.field static final TRANSACTION_setSecureSetting:I = 0x67

.field static final TRANSACTION_setStatusBarDisabled:I = 0x86

.field static final TRANSACTION_setStorageEncryption:I = 0x23

.field static final TRANSACTION_setSystemUpdatePolicy:I = 0x83

.field static final TRANSACTION_setTrustAgentConfiguration:I = 0x74

.field static final TRANSACTION_setUninstallBlocked:I = 0x6b

.field static final TRANSACTION_setUserEnabled:I = 0x7c

.field static final TRANSACTION_setUserIcon:I = 0x82

.field static final TRANSACTION_setUserRestriction:I = 0x4f

.field static final TRANSACTION_startManagedQuickContact:I = 0x70

.field static final TRANSACTION_switchUser:I = 0x5d

.field static final TRANSACTION_uninstallCaCerts:I = 0x43

.field static final TRANSACTION_wipeData:I = 0x1f


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
    .locals 64
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
    .line 2290
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v6

    #@7
    return v6

    #@8
    .line 46
    :sswitch_0
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@b
    move-object/from16 v0, p3

    #@d
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 47
    const/4 v6, 0x1

    #@11
    return v6

    #@12
    .line 51
    :sswitch_1
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@15
    move-object/from16 v0, p2

    #@17
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a
    .line 53
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1d
    move-result v6

    #@1e
    if-eqz v6, :cond_0

    #@20
    .line 54
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@22
    move-object/from16 v0, p2

    #@24
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@27
    move-result-object v17

    #@28
    check-cast v17, Landroid/content/ComponentName;

    #@2a
    .line 60
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2d
    move-result v8

    #@2e
    .line 61
    .local v8, "_arg1":I
    move-object/from16 v0, p0

    #@30
    move-object/from16 v1, v17

    #@32
    invoke-virtual {v0, v1, v8}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordQuality(Landroid/content/ComponentName;I)V

    #@35
    .line 62
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@38
    .line 63
    const/4 v6, 0x1

    #@39
    return v6

    #@3a
    .line 57
    .end local v8    # "_arg1":I
    :cond_0
    const/16 v17, 0x0

    #@3c
    .local v17, "_arg0":Landroid/content/ComponentName;
    goto :goto_0

    #@3d
    .line 67
    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :sswitch_2
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@40
    move-object/from16 v0, p2

    #@42
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@45
    .line 69
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@48
    move-result v6

    #@49
    if-eqz v6, :cond_1

    #@4b
    .line 70
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@4d
    move-object/from16 v0, p2

    #@4f
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@52
    move-result-object v17

    #@53
    check-cast v17, Landroid/content/ComponentName;

    #@55
    .line 76
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@58
    move-result v8

    #@59
    .line 77
    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    #@5b
    move-object/from16 v1, v17

    #@5d
    invoke-virtual {v0, v1, v8}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordQuality(Landroid/content/ComponentName;I)I

    #@60
    move-result v49

    #@61
    .line 78
    .local v49, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@64
    .line 79
    move-object/from16 v0, p3

    #@66
    move/from16 v1, v49

    #@68
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@6b
    .line 80
    const/4 v6, 0x1

    #@6c
    return v6

    #@6d
    .line 73
    .end local v8    # "_arg1":I
    .end local v49    # "_result":I
    :cond_1
    const/16 v17, 0x0

    #@6f
    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_1

    #@70
    .line 84
    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :sswitch_3
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@73
    move-object/from16 v0, p2

    #@75
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@78
    .line 86
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@7b
    move-result v6

    #@7c
    if-eqz v6, :cond_2

    #@7e
    .line 87
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@80
    move-object/from16 v0, p2

    #@82
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@85
    move-result-object v17

    #@86
    check-cast v17, Landroid/content/ComponentName;

    #@88
    .line 93
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@8b
    move-result v8

    #@8c
    .line 94
    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    #@8e
    move-object/from16 v1, v17

    #@90
    invoke-virtual {v0, v1, v8}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumLength(Landroid/content/ComponentName;I)V

    #@93
    .line 95
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@96
    .line 96
    const/4 v6, 0x1

    #@97
    return v6

    #@98
    .line 90
    .end local v8    # "_arg1":I
    :cond_2
    const/16 v17, 0x0

    #@9a
    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_2

    #@9b
    .line 100
    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :sswitch_4
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@9e
    move-object/from16 v0, p2

    #@a0
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a3
    .line 102
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@a6
    move-result v6

    #@a7
    if-eqz v6, :cond_3

    #@a9
    .line 103
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@ab
    move-object/from16 v0, p2

    #@ad
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@b0
    move-result-object v17

    #@b1
    check-cast v17, Landroid/content/ComponentName;

    #@b3
    .line 109
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@b6
    move-result v8

    #@b7
    .line 110
    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    #@b9
    move-object/from16 v1, v17

    #@bb
    invoke-virtual {v0, v1, v8}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumLength(Landroid/content/ComponentName;I)I

    #@be
    move-result v49

    #@bf
    .line 111
    .restart local v49    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@c2
    .line 112
    move-object/from16 v0, p3

    #@c4
    move/from16 v1, v49

    #@c6
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@c9
    .line 113
    const/4 v6, 0x1

    #@ca
    return v6

    #@cb
    .line 106
    .end local v8    # "_arg1":I
    .end local v49    # "_result":I
    :cond_3
    const/16 v17, 0x0

    #@cd
    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_3

    #@ce
    .line 117
    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :sswitch_5
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@d1
    move-object/from16 v0, p2

    #@d3
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@d6
    .line 119
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@d9
    move-result v6

    #@da
    if-eqz v6, :cond_4

    #@dc
    .line 120
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@de
    move-object/from16 v0, p2

    #@e0
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@e3
    move-result-object v17

    #@e4
    check-cast v17, Landroid/content/ComponentName;

    #@e6
    .line 126
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@e9
    move-result v8

    #@ea
    .line 127
    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    #@ec
    move-object/from16 v1, v17

    #@ee
    invoke-virtual {v0, v1, v8}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumUpperCase(Landroid/content/ComponentName;I)V

    #@f1
    .line 128
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@f4
    .line 129
    const/4 v6, 0x1

    #@f5
    return v6

    #@f6
    .line 123
    .end local v8    # "_arg1":I
    :cond_4
    const/16 v17, 0x0

    #@f8
    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_4

    #@f9
    .line 133
    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :sswitch_6
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@fc
    move-object/from16 v0, p2

    #@fe
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@101
    .line 135
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@104
    move-result v6

    #@105
    if-eqz v6, :cond_5

    #@107
    .line 136
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@109
    move-object/from16 v0, p2

    #@10b
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@10e
    move-result-object v17

    #@10f
    check-cast v17, Landroid/content/ComponentName;

    #@111
    .line 142
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@114
    move-result v8

    #@115
    .line 143
    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    #@117
    move-object/from16 v1, v17

    #@119
    invoke-virtual {v0, v1, v8}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumUpperCase(Landroid/content/ComponentName;I)I

    #@11c
    move-result v49

    #@11d
    .line 144
    .restart local v49    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@120
    .line 145
    move-object/from16 v0, p3

    #@122
    move/from16 v1, v49

    #@124
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@127
    .line 146
    const/4 v6, 0x1

    #@128
    return v6

    #@129
    .line 139
    .end local v8    # "_arg1":I
    .end local v49    # "_result":I
    :cond_5
    const/16 v17, 0x0

    #@12b
    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_5

    #@12c
    .line 150
    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :sswitch_7
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@12f
    move-object/from16 v0, p2

    #@131
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@134
    .line 152
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@137
    move-result v6

    #@138
    if-eqz v6, :cond_6

    #@13a
    .line 153
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@13c
    move-object/from16 v0, p2

    #@13e
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@141
    move-result-object v17

    #@142
    check-cast v17, Landroid/content/ComponentName;

    #@144
    .line 159
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@147
    move-result v8

    #@148
    .line 160
    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    #@14a
    move-object/from16 v1, v17

    #@14c
    invoke-virtual {v0, v1, v8}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumLowerCase(Landroid/content/ComponentName;I)V

    #@14f
    .line 161
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@152
    .line 162
    const/4 v6, 0x1

    #@153
    return v6

    #@154
    .line 156
    .end local v8    # "_arg1":I
    :cond_6
    const/16 v17, 0x0

    #@156
    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_6

    #@157
    .line 166
    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :sswitch_8
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@15a
    move-object/from16 v0, p2

    #@15c
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@15f
    .line 168
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@162
    move-result v6

    #@163
    if-eqz v6, :cond_7

    #@165
    .line 169
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@167
    move-object/from16 v0, p2

    #@169
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@16c
    move-result-object v17

    #@16d
    check-cast v17, Landroid/content/ComponentName;

    #@16f
    .line 175
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@172
    move-result v8

    #@173
    .line 176
    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    #@175
    move-object/from16 v1, v17

    #@177
    invoke-virtual {v0, v1, v8}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumLowerCase(Landroid/content/ComponentName;I)I

    #@17a
    move-result v49

    #@17b
    .line 177
    .restart local v49    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@17e
    .line 178
    move-object/from16 v0, p3

    #@180
    move/from16 v1, v49

    #@182
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@185
    .line 179
    const/4 v6, 0x1

    #@186
    return v6

    #@187
    .line 172
    .end local v8    # "_arg1":I
    .end local v49    # "_result":I
    :cond_7
    const/16 v17, 0x0

    #@189
    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_7

    #@18a
    .line 183
    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :sswitch_9
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@18d
    move-object/from16 v0, p2

    #@18f
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@192
    .line 185
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@195
    move-result v6

    #@196
    if-eqz v6, :cond_8

    #@198
    .line 186
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@19a
    move-object/from16 v0, p2

    #@19c
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@19f
    move-result-object v17

    #@1a0
    check-cast v17, Landroid/content/ComponentName;

    #@1a2
    .line 192
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1a5
    move-result v8

    #@1a6
    .line 193
    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    #@1a8
    move-object/from16 v1, v17

    #@1aa
    invoke-virtual {v0, v1, v8}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumLetters(Landroid/content/ComponentName;I)V

    #@1ad
    .line 194
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1b0
    .line 195
    const/4 v6, 0x1

    #@1b1
    return v6

    #@1b2
    .line 189
    .end local v8    # "_arg1":I
    :cond_8
    const/16 v17, 0x0

    #@1b4
    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_8

    #@1b5
    .line 199
    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :sswitch_a
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@1b8
    move-object/from16 v0, p2

    #@1ba
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1bd
    .line 201
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1c0
    move-result v6

    #@1c1
    if-eqz v6, :cond_9

    #@1c3
    .line 202
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1c5
    move-object/from16 v0, p2

    #@1c7
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1ca
    move-result-object v17

    #@1cb
    check-cast v17, Landroid/content/ComponentName;

    #@1cd
    .line 208
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1d0
    move-result v8

    #@1d1
    .line 209
    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    #@1d3
    move-object/from16 v1, v17

    #@1d5
    invoke-virtual {v0, v1, v8}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumLetters(Landroid/content/ComponentName;I)I

    #@1d8
    move-result v49

    #@1d9
    .line 210
    .restart local v49    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1dc
    .line 211
    move-object/from16 v0, p3

    #@1de
    move/from16 v1, v49

    #@1e0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1e3
    .line 212
    const/4 v6, 0x1

    #@1e4
    return v6

    #@1e5
    .line 205
    .end local v8    # "_arg1":I
    .end local v49    # "_result":I
    :cond_9
    const/16 v17, 0x0

    #@1e7
    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_9

    #@1e8
    .line 216
    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :sswitch_b
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@1eb
    move-object/from16 v0, p2

    #@1ed
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1f0
    .line 218
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1f3
    move-result v6

    #@1f4
    if-eqz v6, :cond_a

    #@1f6
    .line 219
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1f8
    move-object/from16 v0, p2

    #@1fa
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1fd
    move-result-object v17

    #@1fe
    check-cast v17, Landroid/content/ComponentName;

    #@200
    .line 225
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@203
    move-result v8

    #@204
    .line 226
    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    #@206
    move-object/from16 v1, v17

    #@208
    invoke-virtual {v0, v1, v8}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumNumeric(Landroid/content/ComponentName;I)V

    #@20b
    .line 227
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@20e
    .line 228
    const/4 v6, 0x1

    #@20f
    return v6

    #@210
    .line 222
    .end local v8    # "_arg1":I
    :cond_a
    const/16 v17, 0x0

    #@212
    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_a

    #@213
    .line 232
    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :sswitch_c
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@216
    move-object/from16 v0, p2

    #@218
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@21b
    .line 234
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@21e
    move-result v6

    #@21f
    if-eqz v6, :cond_b

    #@221
    .line 235
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@223
    move-object/from16 v0, p2

    #@225
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@228
    move-result-object v17

    #@229
    check-cast v17, Landroid/content/ComponentName;

    #@22b
    .line 241
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@22e
    move-result v8

    #@22f
    .line 242
    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    #@231
    move-object/from16 v1, v17

    #@233
    invoke-virtual {v0, v1, v8}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumNumeric(Landroid/content/ComponentName;I)I

    #@236
    move-result v49

    #@237
    .line 243
    .restart local v49    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@23a
    .line 244
    move-object/from16 v0, p3

    #@23c
    move/from16 v1, v49

    #@23e
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@241
    .line 245
    const/4 v6, 0x1

    #@242
    return v6

    #@243
    .line 238
    .end local v8    # "_arg1":I
    .end local v49    # "_result":I
    :cond_b
    const/16 v17, 0x0

    #@245
    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_b

    #@246
    .line 249
    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :sswitch_d
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@249
    move-object/from16 v0, p2

    #@24b
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@24e
    .line 251
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@251
    move-result v6

    #@252
    if-eqz v6, :cond_c

    #@254
    .line 252
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@256
    move-object/from16 v0, p2

    #@258
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@25b
    move-result-object v17

    #@25c
    check-cast v17, Landroid/content/ComponentName;

    #@25e
    .line 258
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@261
    move-result v8

    #@262
    .line 259
    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    #@264
    move-object/from16 v1, v17

    #@266
    invoke-virtual {v0, v1, v8}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumSymbols(Landroid/content/ComponentName;I)V

    #@269
    .line 260
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@26c
    .line 261
    const/4 v6, 0x1

    #@26d
    return v6

    #@26e
    .line 255
    .end local v8    # "_arg1":I
    :cond_c
    const/16 v17, 0x0

    #@270
    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_c

    #@271
    .line 265
    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :sswitch_e
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@274
    move-object/from16 v0, p2

    #@276
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@279
    .line 267
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@27c
    move-result v6

    #@27d
    if-eqz v6, :cond_d

    #@27f
    .line 268
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@281
    move-object/from16 v0, p2

    #@283
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@286
    move-result-object v17

    #@287
    check-cast v17, Landroid/content/ComponentName;

    #@289
    .line 274
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@28c
    move-result v8

    #@28d
    .line 275
    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    #@28f
    move-object/from16 v1, v17

    #@291
    invoke-virtual {v0, v1, v8}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumSymbols(Landroid/content/ComponentName;I)I

    #@294
    move-result v49

    #@295
    .line 276
    .restart local v49    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@298
    .line 277
    move-object/from16 v0, p3

    #@29a
    move/from16 v1, v49

    #@29c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@29f
    .line 278
    const/4 v6, 0x1

    #@2a0
    return v6

    #@2a1
    .line 271
    .end local v8    # "_arg1":I
    .end local v49    # "_result":I
    :cond_d
    const/16 v17, 0x0

    #@2a3
    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_d

    #@2a4
    .line 282
    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :sswitch_f
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@2a7
    move-object/from16 v0, p2

    #@2a9
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2ac
    .line 284
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2af
    move-result v6

    #@2b0
    if-eqz v6, :cond_e

    #@2b2
    .line 285
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2b4
    move-object/from16 v0, p2

    #@2b6
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2b9
    move-result-object v17

    #@2ba
    check-cast v17, Landroid/content/ComponentName;

    #@2bc
    .line 291
    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2bf
    move-result v8

    #@2c0
    .line 292
    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    #@2c2
    move-object/from16 v1, v17

    #@2c4
    invoke-virtual {v0, v1, v8}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumNonLetter(Landroid/content/ComponentName;I)V

    #@2c7
    .line 293
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2ca
    .line 294
    const/4 v6, 0x1

    #@2cb
    return v6

    #@2cc
    .line 288
    .end local v8    # "_arg1":I
    :cond_e
    const/16 v17, 0x0

    #@2ce
    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_e

    #@2cf
    .line 298
    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :sswitch_10
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@2d2
    move-object/from16 v0, p2

    #@2d4
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2d7
    .line 300
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2da
    move-result v6

    #@2db
    if-eqz v6, :cond_f

    #@2dd
    .line 301
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2df
    move-object/from16 v0, p2

    #@2e1
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2e4
    move-result-object v17

    #@2e5
    check-cast v17, Landroid/content/ComponentName;

    #@2e7
    .line 307
    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2ea
    move-result v8

    #@2eb
    .line 308
    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    #@2ed
    move-object/from16 v1, v17

    #@2ef
    invoke-virtual {v0, v1, v8}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumNonLetter(Landroid/content/ComponentName;I)I

    #@2f2
    move-result v49

    #@2f3
    .line 309
    .restart local v49    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2f6
    .line 310
    move-object/from16 v0, p3

    #@2f8
    move/from16 v1, v49

    #@2fa
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@2fd
    .line 311
    const/4 v6, 0x1

    #@2fe
    return v6

    #@2ff
    .line 304
    .end local v8    # "_arg1":I
    .end local v49    # "_result":I
    :cond_f
    const/16 v17, 0x0

    #@301
    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_f

    #@302
    .line 315
    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :sswitch_11
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@305
    move-object/from16 v0, p2

    #@307
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@30a
    .line 317
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@30d
    move-result v6

    #@30e
    if-eqz v6, :cond_10

    #@310
    .line 318
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@312
    move-object/from16 v0, p2

    #@314
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@317
    move-result-object v17

    #@318
    check-cast v17, Landroid/content/ComponentName;

    #@31a
    .line 324
    :goto_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@31d
    move-result v8

    #@31e
    .line 325
    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    #@320
    move-object/from16 v1, v17

    #@322
    invoke-virtual {v0, v1, v8}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordHistoryLength(Landroid/content/ComponentName;I)V

    #@325
    .line 326
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@328
    .line 327
    const/4 v6, 0x1

    #@329
    return v6

    #@32a
    .line 321
    .end local v8    # "_arg1":I
    :cond_10
    const/16 v17, 0x0

    #@32c
    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_10

    #@32d
    .line 331
    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :sswitch_12
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@330
    move-object/from16 v0, p2

    #@332
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@335
    .line 333
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@338
    move-result v6

    #@339
    if-eqz v6, :cond_11

    #@33b
    .line 334
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@33d
    move-object/from16 v0, p2

    #@33f
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@342
    move-result-object v17

    #@343
    check-cast v17, Landroid/content/ComponentName;

    #@345
    .line 340
    :goto_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@348
    move-result v8

    #@349
    .line 341
    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    #@34b
    move-object/from16 v1, v17

    #@34d
    invoke-virtual {v0, v1, v8}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordHistoryLength(Landroid/content/ComponentName;I)I

    #@350
    move-result v49

    #@351
    .line 342
    .restart local v49    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@354
    .line 343
    move-object/from16 v0, p3

    #@356
    move/from16 v1, v49

    #@358
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@35b
    .line 344
    const/4 v6, 0x1

    #@35c
    return v6

    #@35d
    .line 337
    .end local v8    # "_arg1":I
    .end local v49    # "_result":I
    :cond_11
    const/16 v17, 0x0

    #@35f
    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_11

    #@360
    .line 348
    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :sswitch_13
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@363
    move-object/from16 v0, p2

    #@365
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@368
    .line 350
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@36b
    move-result v6

    #@36c
    if-eqz v6, :cond_12

    #@36e
    .line 351
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@370
    move-object/from16 v0, p2

    #@372
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@375
    move-result-object v17

    #@376
    check-cast v17, Landroid/content/ComponentName;

    #@378
    .line 357
    :goto_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@37b
    move-result-wide v26

    #@37c
    .line 358
    .local v26, "_arg1":J
    move-object/from16 v0, p0

    #@37e
    move-object/from16 v1, v17

    #@380
    move-wide/from16 v2, v26

    #@382
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordExpirationTimeout(Landroid/content/ComponentName;J)V

    #@385
    .line 359
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@388
    .line 360
    const/4 v6, 0x1

    #@389
    return v6

    #@38a
    .line 354
    .end local v26    # "_arg1":J
    :cond_12
    const/16 v17, 0x0

    #@38c
    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_12

    #@38d
    .line 364
    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :sswitch_14
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@390
    move-object/from16 v0, p2

    #@392
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@395
    .line 366
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@398
    move-result v6

    #@399
    if-eqz v6, :cond_13

    #@39b
    .line 367
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@39d
    move-object/from16 v0, p2

    #@39f
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3a2
    move-result-object v17

    #@3a3
    check-cast v17, Landroid/content/ComponentName;

    #@3a5
    .line 373
    :goto_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3a8
    move-result v8

    #@3a9
    .line 374
    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    #@3ab
    move-object/from16 v1, v17

    #@3ad
    invoke-virtual {v0, v1, v8}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordExpirationTimeout(Landroid/content/ComponentName;I)J

    #@3b0
    move-result-wide v50

    #@3b1
    .line 375
    .local v50, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3b4
    .line 376
    move-object/from16 v0, p3

    #@3b6
    move-wide/from16 v1, v50

    #@3b8
    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    #@3bb
    .line 377
    const/4 v6, 0x1

    #@3bc
    return v6

    #@3bd
    .line 370
    .end local v8    # "_arg1":I
    .end local v50    # "_result":J
    :cond_13
    const/16 v17, 0x0

    #@3bf
    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_13

    #@3c0
    .line 381
    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :sswitch_15
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@3c3
    move-object/from16 v0, p2

    #@3c5
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3c8
    .line 383
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3cb
    move-result v6

    #@3cc
    if-eqz v6, :cond_14

    #@3ce
    .line 384
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@3d0
    move-object/from16 v0, p2

    #@3d2
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3d5
    move-result-object v17

    #@3d6
    check-cast v17, Landroid/content/ComponentName;

    #@3d8
    .line 390
    :goto_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3db
    move-result v8

    #@3dc
    .line 391
    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    #@3de
    move-object/from16 v1, v17

    #@3e0
    invoke-virtual {v0, v1, v8}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordExpiration(Landroid/content/ComponentName;I)J

    #@3e3
    move-result-wide v50

    #@3e4
    .line 392
    .restart local v50    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3e7
    .line 393
    move-object/from16 v0, p3

    #@3e9
    move-wide/from16 v1, v50

    #@3eb
    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    #@3ee
    .line 394
    const/4 v6, 0x1

    #@3ef
    return v6

    #@3f0
    .line 387
    .end local v8    # "_arg1":I
    .end local v50    # "_result":J
    :cond_14
    const/16 v17, 0x0

    #@3f2
    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_14

    #@3f3
    .line 398
    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :sswitch_16
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@3f6
    move-object/from16 v0, p2

    #@3f8
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3fb
    .line 400
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3fe
    move-result v7

    #@3ff
    .line 401
    .local v7, "_arg0":I
    move-object/from16 v0, p0

    #@401
    invoke-virtual {v0, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->isActivePasswordSufficient(I)Z

    #@404
    move-result v61

    #@405
    .line 402
    .local v61, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@408
    .line 403
    if-eqz v61, :cond_15

    #@40a
    const/4 v6, 0x1

    #@40b
    :goto_15
    move-object/from16 v0, p3

    #@40d
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@410
    .line 404
    const/4 v6, 0x1

    #@411
    return v6

    #@412
    .line 403
    :cond_15
    const/4 v6, 0x0

    #@413
    goto :goto_15

    #@414
    .line 408
    .end local v7    # "_arg0":I
    .end local v61    # "_result":Z
    :sswitch_17
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@417
    move-object/from16 v0, p2

    #@419
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@41c
    .line 410
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@41f
    move-result v7

    #@420
    .line 411
    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    #@422
    invoke-virtual {v0, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCurrentFailedPasswordAttempts(I)I

    #@425
    move-result v49

    #@426
    .line 412
    .restart local v49    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@429
    .line 413
    move-object/from16 v0, p3

    #@42b
    move/from16 v1, v49

    #@42d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@430
    .line 414
    const/4 v6, 0x1

    #@431
    return v6

    #@432
    .line 418
    .end local v7    # "_arg0":I
    .end local v49    # "_result":I
    :sswitch_18
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@435
    move-object/from16 v0, p2

    #@437
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@43a
    .line 420
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@43d
    move-result v7

    #@43e
    .line 421
    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    #@440
    invoke-virtual {v0, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->getProfileWithMinimumFailedPasswordsForWipe(I)I

    #@443
    move-result v49

    #@444
    .line 422
    .restart local v49    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@447
    .line 423
    move-object/from16 v0, p3

    #@449
    move/from16 v1, v49

    #@44b
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@44e
    .line 424
    const/4 v6, 0x1

    #@44f
    return v6

    #@450
    .line 428
    .end local v7    # "_arg0":I
    .end local v49    # "_result":I
    :sswitch_19
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@453
    move-object/from16 v0, p2

    #@455
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@458
    .line 430
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@45b
    move-result v6

    #@45c
    if-eqz v6, :cond_16

    #@45e
    .line 431
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@460
    move-object/from16 v0, p2

    #@462
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@465
    move-result-object v17

    #@466
    check-cast v17, Landroid/content/ComponentName;

    #@468
    .line 437
    :goto_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@46b
    move-result v8

    #@46c
    .line 438
    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    #@46e
    move-object/from16 v1, v17

    #@470
    invoke-virtual {v0, v1, v8}, Landroid/app/admin/IDevicePolicyManager$Stub;->setMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)V

    #@473
    .line 439
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@476
    .line 440
    const/4 v6, 0x1

    #@477
    return v6

    #@478
    .line 434
    .end local v8    # "_arg1":I
    :cond_16
    const/16 v17, 0x0

    #@47a
    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_16

    #@47b
    .line 444
    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :sswitch_1a
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@47e
    move-object/from16 v0, p2

    #@480
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@483
    .line 446
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@486
    move-result v6

    #@487
    if-eqz v6, :cond_17

    #@489
    .line 447
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@48b
    move-object/from16 v0, p2

    #@48d
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@490
    move-result-object v17

    #@491
    check-cast v17, Landroid/content/ComponentName;

    #@493
    .line 453
    :goto_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@496
    move-result v8

    #@497
    .line 454
    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    #@499
    move-object/from16 v1, v17

    #@49b
    invoke-virtual {v0, v1, v8}, Landroid/app/admin/IDevicePolicyManager$Stub;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I

    #@49e
    move-result v49

    #@49f
    .line 455
    .restart local v49    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4a2
    .line 456
    move-object/from16 v0, p3

    #@4a4
    move/from16 v1, v49

    #@4a6
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@4a9
    .line 457
    const/4 v6, 0x1

    #@4aa
    return v6

    #@4ab
    .line 450
    .end local v8    # "_arg1":I
    .end local v49    # "_result":I
    :cond_17
    const/16 v17, 0x0

    #@4ad
    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_17

    #@4ae
    .line 461
    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :sswitch_1b
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@4b1
    move-object/from16 v0, p2

    #@4b3
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4b6
    .line 463
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@4b9
    move-result-object v24

    #@4ba
    .line 465
    .local v24, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4bd
    move-result v8

    #@4be
    .line 466
    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    #@4c0
    move-object/from16 v1, v24

    #@4c2
    invoke-virtual {v0, v1, v8}, Landroid/app/admin/IDevicePolicyManager$Stub;->resetPassword(Ljava/lang/String;I)Z

    #@4c5
    move-result v61

    #@4c6
    .line 467
    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4c9
    .line 468
    if-eqz v61, :cond_18

    #@4cb
    const/4 v6, 0x1

    #@4cc
    :goto_18
    move-object/from16 v0, p3

    #@4ce
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@4d1
    .line 469
    const/4 v6, 0x1

    #@4d2
    return v6

    #@4d3
    .line 468
    :cond_18
    const/4 v6, 0x0

    #@4d4
    goto :goto_18

    #@4d5
    .line 473
    .end local v8    # "_arg1":I
    .end local v24    # "_arg0":Ljava/lang/String;
    .end local v61    # "_result":Z
    :sswitch_1c
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@4d8
    move-object/from16 v0, p2

    #@4da
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4dd
    .line 475
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@4e0
    move-result v6

    #@4e1
    if-eqz v6, :cond_19

    #@4e3
    .line 476
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@4e5
    move-object/from16 v0, p2

    #@4e7
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@4ea
    move-result-object v17

    #@4eb
    check-cast v17, Landroid/content/ComponentName;

    #@4ed
    .line 482
    :goto_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@4f0
    move-result-wide v26

    #@4f1
    .line 483
    .restart local v26    # "_arg1":J
    move-object/from16 v0, p0

    #@4f3
    move-object/from16 v1, v17

    #@4f5
    move-wide/from16 v2, v26

    #@4f7
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setMaximumTimeToLock(Landroid/content/ComponentName;J)V

    #@4fa
    .line 484
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4fd
    .line 485
    const/4 v6, 0x1

    #@4fe
    return v6

    #@4ff
    .line 479
    .end local v26    # "_arg1":J
    :cond_19
    const/16 v17, 0x0

    #@501
    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_19

    #@502
    .line 489
    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :sswitch_1d
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@505
    move-object/from16 v0, p2

    #@507
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@50a
    .line 491
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@50d
    move-result v6

    #@50e
    if-eqz v6, :cond_1a

    #@510
    .line 492
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@512
    move-object/from16 v0, p2

    #@514
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@517
    move-result-object v17

    #@518
    check-cast v17, Landroid/content/ComponentName;

    #@51a
    .line 498
    :goto_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@51d
    move-result v8

    #@51e
    .line 499
    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    #@520
    move-object/from16 v1, v17

    #@522
    invoke-virtual {v0, v1, v8}, Landroid/app/admin/IDevicePolicyManager$Stub;->getMaximumTimeToLock(Landroid/content/ComponentName;I)J

    #@525
    move-result-wide v50

    #@526
    .line 500
    .restart local v50    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@529
    .line 501
    move-object/from16 v0, p3

    #@52b
    move-wide/from16 v1, v50

    #@52d
    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    #@530
    .line 502
    const/4 v6, 0x1

    #@531
    return v6

    #@532
    .line 495
    .end local v8    # "_arg1":I
    .end local v50    # "_result":J
    :cond_1a
    const/16 v17, 0x0

    #@534
    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_1a

    #@535
    .line 506
    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :sswitch_1e
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@538
    move-object/from16 v0, p2

    #@53a
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@53d
    .line 507
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->lockNow()V

    #@540
    .line 508
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@543
    .line 509
    const/4 v6, 0x1

    #@544
    return v6

    #@545
    .line 513
    :sswitch_1f
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@548
    move-object/from16 v0, p2

    #@54a
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@54d
    .line 515
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@550
    move-result v7

    #@551
    .line 517
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@554
    move-result v8

    #@555
    .line 518
    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    #@557
    invoke-virtual {v0, v7, v8}, Landroid/app/admin/IDevicePolicyManager$Stub;->wipeData(II)V

    #@55a
    .line 519
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@55d
    .line 520
    const/4 v6, 0x1

    #@55e
    return v6

    #@55f
    .line 524
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":I
    :sswitch_20
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@562
    move-object/from16 v0, p2

    #@564
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@567
    .line 526
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@56a
    move-result v6

    #@56b
    if-eqz v6, :cond_1b

    #@56d
    .line 527
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@56f
    move-object/from16 v0, p2

    #@571
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@574
    move-result-object v17

    #@575
    check-cast v17, Landroid/content/ComponentName;

    #@577
    .line 533
    :goto_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@57a
    move-result-object v18

    #@57b
    .line 535
    .local v18, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@57e
    move-result-object v19

    #@57f
    .line 536
    .local v19, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    #@581
    move-object/from16 v1, v17

    #@583
    move-object/from16 v2, v18

    #@585
    move-object/from16 v3, v19

    #@587
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setGlobalProxy(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    #@58a
    move-result-object v53

    #@58b
    .line 537
    .local v53, "_result":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@58e
    .line 538
    if-eqz v53, :cond_1c

    #@590
    .line 539
    const/4 v6, 0x1

    #@591
    move-object/from16 v0, p3

    #@593
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@596
    .line 540
    const/4 v6, 0x1

    #@597
    move-object/from16 v0, v53

    #@599
    move-object/from16 v1, p3

    #@59b
    invoke-virtual {v0, v1, v6}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    #@59e
    .line 545
    :goto_1c
    const/4 v6, 0x1

    #@59f
    return v6

    #@5a0
    .line 530
    .end local v18    # "_arg1":Ljava/lang/String;
    .end local v19    # "_arg2":Ljava/lang/String;
    .end local v53    # "_result":Landroid/content/ComponentName;
    :cond_1b
    const/16 v17, 0x0

    #@5a2
    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_1b

    #@5a3
    .line 543
    .end local v17    # "_arg0":Landroid/content/ComponentName;
    .restart local v18    # "_arg1":Ljava/lang/String;
    .restart local v19    # "_arg2":Ljava/lang/String;
    .restart local v53    # "_result":Landroid/content/ComponentName;
    :cond_1c
    const/4 v6, 0x0

    #@5a4
    move-object/from16 v0, p3

    #@5a6
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@5a9
    goto :goto_1c

    #@5aa
    .line 549
    .end local v18    # "_arg1":Ljava/lang/String;
    .end local v19    # "_arg2":Ljava/lang/String;
    .end local v53    # "_result":Landroid/content/ComponentName;
    :sswitch_21
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@5ad
    move-object/from16 v0, p2

    #@5af
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5b2
    .line 551
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5b5
    move-result v7

    #@5b6
    .line 552
    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    #@5b8
    invoke-virtual {v0, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->getGlobalProxyAdmin(I)Landroid/content/ComponentName;

    #@5bb
    move-result-object v53

    #@5bc
    .line 553
    .restart local v53    # "_result":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@5bf
    .line 554
    if-eqz v53, :cond_1d

    #@5c1
    .line 555
    const/4 v6, 0x1

    #@5c2
    move-object/from16 v0, p3

    #@5c4
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@5c7
    .line 556
    const/4 v6, 0x1

    #@5c8
    move-object/from16 v0, v53

    #@5ca
    move-object/from16 v1, p3

    #@5cc
    invoke-virtual {v0, v1, v6}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    #@5cf
    .line 561
    :goto_1d
    const/4 v6, 0x1

    #@5d0
    return v6

    #@5d1
    .line 559
    :cond_1d
    const/4 v6, 0x0

    #@5d2
    move-object/from16 v0, p3

    #@5d4
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@5d7
    goto :goto_1d

    #@5d8
    .line 565
    .end local v7    # "_arg0":I
    .end local v53    # "_result":Landroid/content/ComponentName;
    :sswitch_22
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@5db
    move-object/from16 v0, p2

    #@5dd
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5e0
    .line 567
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5e3
    move-result v6

    #@5e4
    if-eqz v6, :cond_1e

    #@5e6
    .line 568
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@5e8
    move-object/from16 v0, p2

    #@5ea
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@5ed
    move-result-object v17

    #@5ee
    check-cast v17, Landroid/content/ComponentName;

    #@5f0
    .line 574
    :goto_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@5f3
    move-result v6

    #@5f4
    if-eqz v6, :cond_1f

    #@5f6
    .line 575
    sget-object v6, Landroid/net/ProxyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@5f8
    move-object/from16 v0, p2

    #@5fa
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@5fd
    move-result-object v33

    #@5fe
    check-cast v33, Landroid/net/ProxyInfo;

    #@600
    .line 580
    :goto_1f
    move-object/from16 v0, p0

    #@602
    move-object/from16 v1, v17

    #@604
    move-object/from16 v2, v33

    #@606
    invoke-virtual {v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setRecommendedGlobalProxy(Landroid/content/ComponentName;Landroid/net/ProxyInfo;)V

    #@609
    .line 581
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@60c
    .line 582
    const/4 v6, 0x1

    #@60d
    return v6

    #@60e
    .line 571
    :cond_1e
    const/16 v17, 0x0

    #@610
    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_1e

    #@611
    .line 578
    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :cond_1f
    const/16 v33, 0x0

    #@613
    .local v33, "_arg1":Landroid/net/ProxyInfo;
    goto :goto_1f

    #@614
    .line 586
    .end local v33    # "_arg1":Landroid/net/ProxyInfo;
    :sswitch_23
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@617
    move-object/from16 v0, p2

    #@619
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@61c
    .line 588
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@61f
    move-result v6

    #@620
    if-eqz v6, :cond_20

    #@622
    .line 589
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@624
    move-object/from16 v0, p2

    #@626
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@629
    move-result-object v17

    #@62a
    check-cast v17, Landroid/content/ComponentName;

    #@62c
    .line 595
    :goto_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@62f
    move-result v6

    #@630
    if-eqz v6, :cond_21

    #@632
    const/16 v38, 0x1

    #@634
    .line 596
    .local v38, "_arg1":Z
    :goto_21
    move-object/from16 v0, p0

    #@636
    move-object/from16 v1, v17

    #@638
    move/from16 v2, v38

    #@63a
    invoke-virtual {v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setStorageEncryption(Landroid/content/ComponentName;Z)I

    #@63d
    move-result v49

    #@63e
    .line 597
    .restart local v49    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@641
    .line 598
    move-object/from16 v0, p3

    #@643
    move/from16 v1, v49

    #@645
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@648
    .line 599
    const/4 v6, 0x1

    #@649
    return v6

    #@64a
    .line 592
    .end local v38    # "_arg1":Z
    .end local v49    # "_result":I
    :cond_20
    const/16 v17, 0x0

    #@64c
    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_20

    #@64d
    .line 595
    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :cond_21
    const/16 v38, 0x0

    #@64f
    .restart local v38    # "_arg1":Z
    goto :goto_21

    #@650
    .line 603
    .end local v38    # "_arg1":Z
    :sswitch_24
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@653
    move-object/from16 v0, p2

    #@655
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@658
    .line 605
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@65b
    move-result v6

    #@65c
    if-eqz v6, :cond_22

    #@65e
    .line 606
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@660
    move-object/from16 v0, p2

    #@662
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@665
    move-result-object v17

    #@666
    check-cast v17, Landroid/content/ComponentName;

    #@668
    .line 612
    :goto_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@66b
    move-result v8

    #@66c
    .line 613
    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    #@66e
    move-object/from16 v1, v17

    #@670
    invoke-virtual {v0, v1, v8}, Landroid/app/admin/IDevicePolicyManager$Stub;->getStorageEncryption(Landroid/content/ComponentName;I)Z

    #@673
    move-result v61

    #@674
    .line 614
    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@677
    .line 615
    if-eqz v61, :cond_23

    #@679
    const/4 v6, 0x1

    #@67a
    :goto_23
    move-object/from16 v0, p3

    #@67c
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@67f
    .line 616
    const/4 v6, 0x1

    #@680
    return v6

    #@681
    .line 609
    .end local v8    # "_arg1":I
    .end local v61    # "_result":Z
    :cond_22
    const/16 v17, 0x0

    #@683
    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_22

    #@684
    .line 615
    .end local v17    # "_arg0":Landroid/content/ComponentName;
    .restart local v8    # "_arg1":I
    .restart local v61    # "_result":Z
    :cond_23
    const/4 v6, 0x0

    #@685
    goto :goto_23

    #@686
    .line 620
    .end local v8    # "_arg1":I
    .end local v61    # "_result":Z
    :sswitch_25
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@689
    move-object/from16 v0, p2

    #@68b
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@68e
    .line 622
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@691
    move-result v7

    #@692
    .line 623
    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    #@694
    invoke-virtual {v0, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->getStorageEncryptionStatus(I)I

    #@697
    move-result v49

    #@698
    .line 624
    .restart local v49    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@69b
    .line 625
    move-object/from16 v0, p3

    #@69d
    move/from16 v1, v49

    #@69f
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@6a2
    .line 626
    const/4 v6, 0x1

    #@6a3
    return v6

    #@6a4
    .line 630
    .end local v7    # "_arg0":I
    .end local v49    # "_result":I
    :sswitch_26
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@6a7
    move-object/from16 v0, p2

    #@6a9
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6ac
    .line 632
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@6af
    move-result v6

    #@6b0
    if-eqz v6, :cond_24

    #@6b2
    .line 633
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@6b4
    move-object/from16 v0, p2

    #@6b6
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@6b9
    move-result-object v17

    #@6ba
    check-cast v17, Landroid/content/ComponentName;

    #@6bc
    .line 639
    :goto_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@6bf
    move-result v6

    #@6c0
    if-eqz v6, :cond_25

    #@6c2
    const/16 v38, 0x1

    #@6c4
    .line 640
    .restart local v38    # "_arg1":Z
    :goto_25
    move-object/from16 v0, p0

    #@6c6
    move-object/from16 v1, v17

    #@6c8
    move/from16 v2, v38

    #@6ca
    invoke-virtual {v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setCameraDisabled(Landroid/content/ComponentName;Z)V

    #@6cd
    .line 641
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@6d0
    .line 642
    const/4 v6, 0x1

    #@6d1
    return v6

    #@6d2
    .line 636
    .end local v38    # "_arg1":Z
    :cond_24
    const/16 v17, 0x0

    #@6d4
    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_24

    #@6d5
    .line 639
    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :cond_25
    const/16 v38, 0x0

    #@6d7
    .restart local v38    # "_arg1":Z
    goto :goto_25

    #@6d8
    .line 646
    .end local v38    # "_arg1":Z
    :sswitch_27
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@6db
    move-object/from16 v0, p2

    #@6dd
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6e0
    .line 648
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@6e3
    move-result v6

    #@6e4
    if-eqz v6, :cond_26

    #@6e6
    .line 649
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@6e8
    move-object/from16 v0, p2

    #@6ea
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@6ed
    move-result-object v17

    #@6ee
    check-cast v17, Landroid/content/ComponentName;

    #@6f0
    .line 655
    :goto_26
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@6f3
    move-result v8

    #@6f4
    .line 656
    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    #@6f6
    move-object/from16 v1, v17

    #@6f8
    invoke-virtual {v0, v1, v8}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCameraDisabled(Landroid/content/ComponentName;I)Z

    #@6fb
    move-result v61

    #@6fc
    .line 657
    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@6ff
    .line 658
    if-eqz v61, :cond_27

    #@701
    const/4 v6, 0x1

    #@702
    :goto_27
    move-object/from16 v0, p3

    #@704
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@707
    .line 659
    const/4 v6, 0x1

    #@708
    return v6

    #@709
    .line 652
    .end local v8    # "_arg1":I
    .end local v61    # "_result":Z
    :cond_26
    const/16 v17, 0x0

    #@70b
    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_26

    #@70c
    .line 658
    .end local v17    # "_arg0":Landroid/content/ComponentName;
    .restart local v8    # "_arg1":I
    .restart local v61    # "_result":Z
    :cond_27
    const/4 v6, 0x0

    #@70d
    goto :goto_27

    #@70e
    .line 663
    .end local v8    # "_arg1":I
    .end local v61    # "_result":Z
    :sswitch_28
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@711
    move-object/from16 v0, p2

    #@713
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@716
    .line 665
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@719
    move-result v6

    #@71a
    if-eqz v6, :cond_28

    #@71c
    .line 666
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@71e
    move-object/from16 v0, p2

    #@720
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@723
    move-result-object v17

    #@724
    check-cast v17, Landroid/content/ComponentName;

    #@726
    .line 672
    :goto_28
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@729
    move-result v6

    #@72a
    if-eqz v6, :cond_29

    #@72c
    const/16 v38, 0x1

    #@72e
    .line 673
    .restart local v38    # "_arg1":Z
    :goto_29
    move-object/from16 v0, p0

    #@730
    move-object/from16 v1, v17

    #@732
    move/from16 v2, v38

    #@734
    invoke-virtual {v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setScreenCaptureDisabled(Landroid/content/ComponentName;Z)V

    #@737
    .line 674
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@73a
    .line 675
    const/4 v6, 0x1

    #@73b
    return v6

    #@73c
    .line 669
    .end local v38    # "_arg1":Z
    :cond_28
    const/16 v17, 0x0

    #@73e
    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_28

    #@73f
    .line 672
    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :cond_29
    const/16 v38, 0x0

    #@741
    .restart local v38    # "_arg1":Z
    goto :goto_29

    #@742
    .line 679
    .end local v38    # "_arg1":Z
    :sswitch_29
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@745
    move-object/from16 v0, p2

    #@747
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@74a
    .line 681
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@74d
    move-result v6

    #@74e
    if-eqz v6, :cond_2a

    #@750
    .line 682
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@752
    move-object/from16 v0, p2

    #@754
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@757
    move-result-object v17

    #@758
    check-cast v17, Landroid/content/ComponentName;

    #@75a
    .line 688
    :goto_2a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@75d
    move-result v8

    #@75e
    .line 689
    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    #@760
    move-object/from16 v1, v17

    #@762
    invoke-virtual {v0, v1, v8}, Landroid/app/admin/IDevicePolicyManager$Stub;->getScreenCaptureDisabled(Landroid/content/ComponentName;I)Z

    #@765
    move-result v61

    #@766
    .line 690
    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@769
    .line 691
    if-eqz v61, :cond_2b

    #@76b
    const/4 v6, 0x1

    #@76c
    :goto_2b
    move-object/from16 v0, p3

    #@76e
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@771
    .line 692
    const/4 v6, 0x1

    #@772
    return v6

    #@773
    .line 685
    .end local v8    # "_arg1":I
    .end local v61    # "_result":Z
    :cond_2a
    const/16 v17, 0x0

    #@775
    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_2a

    #@776
    .line 691
    .end local v17    # "_arg0":Landroid/content/ComponentName;
    .restart local v8    # "_arg1":I
    .restart local v61    # "_result":Z
    :cond_2b
    const/4 v6, 0x0

    #@777
    goto :goto_2b

    #@778
    .line 696
    .end local v8    # "_arg1":I
    .end local v61    # "_result":Z
    :sswitch_2a
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@77b
    move-object/from16 v0, p2

    #@77d
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@780
    .line 698
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@783
    move-result v6

    #@784
    if-eqz v6, :cond_2c

    #@786
    .line 699
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@788
    move-object/from16 v0, p2

    #@78a
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@78d
    move-result-object v17

    #@78e
    check-cast v17, Landroid/content/ComponentName;

    #@790
    .line 705
    :goto_2c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@793
    move-result v8

    #@794
    .line 706
    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    #@796
    move-object/from16 v1, v17

    #@798
    invoke-virtual {v0, v1, v8}, Landroid/app/admin/IDevicePolicyManager$Stub;->setKeyguardDisabledFeatures(Landroid/content/ComponentName;I)V

    #@79b
    .line 707
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@79e
    .line 708
    const/4 v6, 0x1

    #@79f
    return v6

    #@7a0
    .line 702
    .end local v8    # "_arg1":I
    :cond_2c
    const/16 v17, 0x0

    #@7a2
    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_2c

    #@7a3
    .line 712
    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :sswitch_2b
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@7a6
    move-object/from16 v0, p2

    #@7a8
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7ab
    .line 714
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@7ae
    move-result v6

    #@7af
    if-eqz v6, :cond_2d

    #@7b1
    .line 715
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7b3
    move-object/from16 v0, p2

    #@7b5
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@7b8
    move-result-object v17

    #@7b9
    check-cast v17, Landroid/content/ComponentName;

    #@7bb
    .line 721
    :goto_2d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@7be
    move-result v8

    #@7bf
    .line 722
    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    #@7c1
    move-object/from16 v1, v17

    #@7c3
    invoke-virtual {v0, v1, v8}, Landroid/app/admin/IDevicePolicyManager$Stub;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    #@7c6
    move-result v49

    #@7c7
    .line 723
    .restart local v49    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@7ca
    .line 724
    move-object/from16 v0, p3

    #@7cc
    move/from16 v1, v49

    #@7ce
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@7d1
    .line 725
    const/4 v6, 0x1

    #@7d2
    return v6

    #@7d3
    .line 718
    .end local v8    # "_arg1":I
    .end local v49    # "_result":I
    :cond_2d
    const/16 v17, 0x0

    #@7d5
    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_2d

    #@7d6
    .line 729
    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :sswitch_2c
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@7d9
    move-object/from16 v0, p2

    #@7db
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7de
    .line 731
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@7e1
    move-result v6

    #@7e2
    if-eqz v6, :cond_2e

    #@7e4
    .line 732
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7e6
    move-object/from16 v0, p2

    #@7e8
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@7eb
    move-result-object v17

    #@7ec
    check-cast v17, Landroid/content/ComponentName;

    #@7ee
    .line 738
    :goto_2e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@7f1
    move-result v6

    #@7f2
    if-eqz v6, :cond_2f

    #@7f4
    const/16 v38, 0x1

    #@7f6
    .line 740
    .restart local v38    # "_arg1":Z
    :goto_2f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@7f9
    move-result v9

    #@7fa
    .line 741
    .local v9, "_arg2":I
    move-object/from16 v0, p0

    #@7fc
    move-object/from16 v1, v17

    #@7fe
    move/from16 v2, v38

    #@800
    invoke-virtual {v0, v1, v2, v9}, Landroid/app/admin/IDevicePolicyManager$Stub;->setActiveAdmin(Landroid/content/ComponentName;ZI)V

    #@803
    .line 742
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@806
    .line 743
    const/4 v6, 0x1

    #@807
    return v6

    #@808
    .line 735
    .end local v9    # "_arg2":I
    .end local v38    # "_arg1":Z
    :cond_2e
    const/16 v17, 0x0

    #@80a
    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_2e

    #@80b
    .line 738
    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :cond_2f
    const/16 v38, 0x0

    #@80d
    .restart local v38    # "_arg1":Z
    goto :goto_2f

    #@80e
    .line 747
    .end local v38    # "_arg1":Z
    :sswitch_2d
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@811
    move-object/from16 v0, p2

    #@813
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@816
    .line 749
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@819
    move-result v6

    #@81a
    if-eqz v6, :cond_30

    #@81c
    .line 750
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@81e
    move-object/from16 v0, p2

    #@820
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@823
    move-result-object v17

    #@824
    check-cast v17, Landroid/content/ComponentName;

    #@826
    .line 756
    :goto_30
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@829
    move-result v8

    #@82a
    .line 757
    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    #@82c
    move-object/from16 v1, v17

    #@82e
    invoke-virtual {v0, v1, v8}, Landroid/app/admin/IDevicePolicyManager$Stub;->isAdminActive(Landroid/content/ComponentName;I)Z

    #@831
    move-result v61

    #@832
    .line 758
    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@835
    .line 759
    if-eqz v61, :cond_31

    #@837
    const/4 v6, 0x1

    #@838
    :goto_31
    move-object/from16 v0, p3

    #@83a
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@83d
    .line 760
    const/4 v6, 0x1

    #@83e
    return v6

    #@83f
    .line 753
    .end local v8    # "_arg1":I
    .end local v61    # "_result":Z
    :cond_30
    const/16 v17, 0x0

    #@841
    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_30

    #@842
    .line 759
    .end local v17    # "_arg0":Landroid/content/ComponentName;
    .restart local v8    # "_arg1":I
    .restart local v61    # "_result":Z
    :cond_31
    const/4 v6, 0x0

    #@843
    goto :goto_31

    #@844
    .line 764
    .end local v8    # "_arg1":I
    .end local v61    # "_result":Z
    :sswitch_2e
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@847
    move-object/from16 v0, p2

    #@849
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@84c
    .line 766
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@84f
    move-result v7

    #@850
    .line 767
    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    #@852
    invoke-virtual {v0, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->getActiveAdmins(I)Ljava/util/List;

    #@855
    move-result-object v58

    #@856
    .line 768
    .local v58, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@859
    .line 769
    move-object/from16 v0, p3

    #@85b
    move-object/from16 v1, v58

    #@85d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@860
    .line 770
    const/4 v6, 0x1

    #@861
    return v6

    #@862
    .line 774
    .end local v7    # "_arg0":I
    .end local v58    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    :sswitch_2f
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@865
    move-object/from16 v0, p2

    #@867
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@86a
    .line 776
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@86d
    move-result-object v24

    #@86e
    .line 778
    .restart local v24    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@871
    move-result v8

    #@872
    .line 779
    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    #@874
    move-object/from16 v1, v24

    #@876
    invoke-virtual {v0, v1, v8}, Landroid/app/admin/IDevicePolicyManager$Stub;->packageHasActiveAdmins(Ljava/lang/String;I)Z

    #@879
    move-result v61

    #@87a
    .line 780
    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@87d
    .line 781
    if-eqz v61, :cond_32

    #@87f
    const/4 v6, 0x1

    #@880
    :goto_32
    move-object/from16 v0, p3

    #@882
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@885
    .line 782
    const/4 v6, 0x1

    #@886
    return v6

    #@887
    .line 781
    :cond_32
    const/4 v6, 0x0

    #@888
    goto :goto_32

    #@889
    .line 786
    .end local v8    # "_arg1":I
    .end local v24    # "_arg0":Ljava/lang/String;
    .end local v61    # "_result":Z
    :sswitch_30
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@88c
    move-object/from16 v0, p2

    #@88e
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@891
    .line 788
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@894
    move-result v6

    #@895
    if-eqz v6, :cond_33

    #@897
    .line 789
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@899
    move-object/from16 v0, p2

    #@89b
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@89e
    move-result-object v17

    #@89f
    check-cast v17, Landroid/content/ComponentName;

    #@8a1
    .line 795
    :goto_33
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@8a4
    move-result v6

    #@8a5
    if-eqz v6, :cond_34

    #@8a7
    .line 796
    sget-object v6, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    #@8a9
    move-object/from16 v0, p2

    #@8ab
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@8ae
    move-result-object v35

    #@8af
    check-cast v35, Landroid/os/RemoteCallback;

    #@8b1
    .line 802
    :goto_34
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@8b4
    move-result v9

    #@8b5
    .line 803
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    #@8b7
    move-object/from16 v1, v17

    #@8b9
    move-object/from16 v2, v35

    #@8bb
    invoke-virtual {v0, v1, v2, v9}, Landroid/app/admin/IDevicePolicyManager$Stub;->getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;I)V

    #@8be
    .line 804
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@8c1
    .line 805
    const/4 v6, 0x1

    #@8c2
    return v6

    #@8c3
    .line 792
    .end local v9    # "_arg2":I
    :cond_33
    const/16 v17, 0x0

    #@8c5
    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_33

    #@8c6
    .line 799
    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :cond_34
    const/16 v35, 0x0

    #@8c8
    .local v35, "_arg1":Landroid/os/RemoteCallback;
    goto :goto_34

    #@8c9
    .line 809
    .end local v35    # "_arg1":Landroid/os/RemoteCallback;
    :sswitch_31
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@8cc
    move-object/from16 v0, p2

    #@8ce
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@8d1
    .line 811
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@8d4
    move-result v6

    #@8d5
    if-eqz v6, :cond_35

    #@8d7
    .line 812
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@8d9
    move-object/from16 v0, p2

    #@8db
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@8de
    move-result-object v17

    #@8df
    check-cast v17, Landroid/content/ComponentName;

    #@8e1
    .line 818
    :goto_35
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@8e4
    move-result v8

    #@8e5
    .line 819
    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    #@8e7
    move-object/from16 v1, v17

    #@8e9
    invoke-virtual {v0, v1, v8}, Landroid/app/admin/IDevicePolicyManager$Stub;->removeActiveAdmin(Landroid/content/ComponentName;I)V

    #@8ec
    .line 820
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@8ef
    .line 821
    const/4 v6, 0x1

    #@8f0
    return v6

    #@8f1
    .line 815
    .end local v8    # "_arg1":I
    :cond_35
    const/16 v17, 0x0

    #@8f3
    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_35

    #@8f4
    .line 825
    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :sswitch_32
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@8f7
    move-object/from16 v0, p2

    #@8f9
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@8fc
    .line 827
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@8ff
    move-result v6

    #@900
    if-eqz v6, :cond_36

    #@902
    .line 828
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@904
    move-object/from16 v0, p2

    #@906
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@909
    move-result-object v17

    #@90a
    check-cast v17, Landroid/content/ComponentName;

    #@90c
    .line 834
    :goto_36
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@90f
    move-result v8

    #@910
    .line 836
    .restart local v8    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@913
    move-result v9

    #@914
    .line 837
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    #@916
    move-object/from16 v1, v17

    #@918
    invoke-virtual {v0, v1, v8, v9}, Landroid/app/admin/IDevicePolicyManager$Stub;->hasGrantedPolicy(Landroid/content/ComponentName;II)Z

    #@91b
    move-result v61

    #@91c
    .line 838
    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@91f
    .line 839
    if-eqz v61, :cond_37

    #@921
    const/4 v6, 0x1

    #@922
    :goto_37
    move-object/from16 v0, p3

    #@924
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@927
    .line 840
    const/4 v6, 0x1

    #@928
    return v6

    #@929
    .line 831
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v61    # "_result":Z
    :cond_36
    const/16 v17, 0x0

    #@92b
    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_36

    #@92c
    .line 839
    .end local v17    # "_arg0":Landroid/content/ComponentName;
    .restart local v8    # "_arg1":I
    .restart local v9    # "_arg2":I
    .restart local v61    # "_result":Z
    :cond_37
    const/4 v6, 0x0

    #@92d
    goto :goto_37

    #@92e
    .line 844
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v61    # "_result":Z
    :sswitch_33
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@931
    move-object/from16 v0, p2

    #@933
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@936
    .line 846
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@939
    move-result v7

    #@93a
    .line 848
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@93d
    move-result v8

    #@93e
    .line 850
    .restart local v8    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@941
    move-result v9

    #@942
    .line 852
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@945
    move-result v10

    #@946
    .line 854
    .local v10, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@949
    move-result v11

    #@94a
    .line 856
    .local v11, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@94d
    move-result v12

    #@94e
    .line 858
    .local v12, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@951
    move-result v13

    #@952
    .line 860
    .local v13, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@955
    move-result v14

    #@956
    .line 862
    .local v14, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@959
    move-result v15

    #@95a
    .local v15, "_arg8":I
    move-object/from16 v6, p0

    #@95c
    .line 863
    invoke-virtual/range {v6 .. v15}, Landroid/app/admin/IDevicePolicyManager$Stub;->setActivePasswordState(IIIIIIIII)V

    #@95f
    .line 864
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@962
    .line 865
    const/4 v6, 0x1

    #@963
    return v6

    #@964
    .line 869
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v11    # "_arg4":I
    .end local v12    # "_arg5":I
    .end local v13    # "_arg6":I
    .end local v14    # "_arg7":I
    .end local v15    # "_arg8":I
    :sswitch_34
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@967
    move-object/from16 v0, p2

    #@969
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@96c
    .line 871
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@96f
    move-result v7

    #@970
    .line 872
    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    #@972
    invoke-virtual {v0, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->reportFailedPasswordAttempt(I)V

    #@975
    .line 873
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@978
    .line 874
    const/4 v6, 0x1

    #@979
    return v6

    #@97a
    .line 878
    .end local v7    # "_arg0":I
    :sswitch_35
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@97d
    move-object/from16 v0, p2

    #@97f
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@982
    .line 880
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@985
    move-result v7

    #@986
    .line 881
    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    #@988
    invoke-virtual {v0, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->reportSuccessfulPasswordAttempt(I)V

    #@98b
    .line 882
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@98e
    .line 883
    const/4 v6, 0x1

    #@98f
    return v6

    #@990
    .line 887
    .end local v7    # "_arg0":I
    :sswitch_36
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@993
    move-object/from16 v0, p2

    #@995
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@998
    .line 889
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@99b
    move-result-object v24

    #@99c
    .line 891
    .restart local v24    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@99f
    move-result-object v18

    #@9a0
    .line 892
    .restart local v18    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@9a2
    move-object/from16 v1, v24

    #@9a4
    move-object/from16 v2, v18

    #@9a6
    invoke-virtual {v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setDeviceOwner(Ljava/lang/String;Ljava/lang/String;)Z

    #@9a9
    move-result v61

    #@9aa
    .line 893
    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@9ad
    .line 894
    if-eqz v61, :cond_38

    #@9af
    const/4 v6, 0x1

    #@9b0
    :goto_38
    move-object/from16 v0, p3

    #@9b2
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@9b5
    .line 895
    const/4 v6, 0x1

    #@9b6
    return v6

    #@9b7
    .line 894
    :cond_38
    const/4 v6, 0x0

    #@9b8
    goto :goto_38

    #@9b9
    .line 899
    .end local v18    # "_arg1":Ljava/lang/String;
    .end local v24    # "_arg0":Ljava/lang/String;
    .end local v61    # "_result":Z
    :sswitch_37
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@9bc
    move-object/from16 v0, p2

    #@9be
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@9c1
    .line 901
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@9c4
    move-result-object v24

    #@9c5
    .line 902
    .restart local v24    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@9c7
    move-object/from16 v1, v24

    #@9c9
    invoke-virtual {v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->isDeviceOwner(Ljava/lang/String;)Z

    #@9cc
    move-result v61

    #@9cd
    .line 903
    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@9d0
    .line 904
    if-eqz v61, :cond_39

    #@9d2
    const/4 v6, 0x1

    #@9d3
    :goto_39
    move-object/from16 v0, p3

    #@9d5
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@9d8
    .line 905
    const/4 v6, 0x1

    #@9d9
    return v6

    #@9da
    .line 904
    :cond_39
    const/4 v6, 0x0

    #@9db
    goto :goto_39

    #@9dc
    .line 909
    .end local v24    # "_arg0":Ljava/lang/String;
    .end local v61    # "_result":Z
    :sswitch_38
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@9df
    move-object/from16 v0, p2

    #@9e1
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@9e4
    .line 910
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getDeviceOwner()Ljava/lang/String;

    #@9e7
    move-result-object v56

    #@9e8
    .line 911
    .local v56, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@9eb
    .line 912
    move-object/from16 v0, p3

    #@9ed
    move-object/from16 v1, v56

    #@9ef
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@9f2
    .line 913
    const/4 v6, 0x1

    #@9f3
    return v6

    #@9f4
    .line 917
    .end local v56    # "_result":Ljava/lang/String;
    :sswitch_39
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@9f7
    move-object/from16 v0, p2

    #@9f9
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@9fc
    .line 918
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getDeviceOwnerName()Ljava/lang/String;

    #@9ff
    move-result-object v56

    #@a00
    .line 919
    .restart local v56    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@a03
    .line 920
    move-object/from16 v0, p3

    #@a05
    move-object/from16 v1, v56

    #@a07
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@a0a
    .line 921
    const/4 v6, 0x1

    #@a0b
    return v6

    #@a0c
    .line 925
    .end local v56    # "_result":Ljava/lang/String;
    :sswitch_3a
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@a0f
    move-object/from16 v0, p2

    #@a11
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a14
    .line 927
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@a17
    move-result-object v24

    #@a18
    .line 928
    .restart local v24    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@a1a
    move-object/from16 v1, v24

    #@a1c
    invoke-virtual {v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->clearDeviceOwner(Ljava/lang/String;)V

    #@a1f
    .line 929
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@a22
    .line 930
    const/4 v6, 0x1

    #@a23
    return v6

    #@a24
    .line 934
    .end local v24    # "_arg0":Ljava/lang/String;
    :sswitch_3b
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@a27
    move-object/from16 v0, p2

    #@a29
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a2c
    .line 936
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@a2f
    move-result v6

    #@a30
    if-eqz v6, :cond_3a

    #@a32
    .line 937
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@a34
    move-object/from16 v0, p2

    #@a36
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@a39
    move-result-object v17

    #@a3a
    check-cast v17, Landroid/content/ComponentName;

    #@a3c
    .line 943
    :goto_3a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@a3f
    move-result-object v18

    #@a40
    .line 945
    .restart local v18    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@a43
    move-result v9

    #@a44
    .line 946
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    #@a46
    move-object/from16 v1, v17

    #@a48
    move-object/from16 v2, v18

    #@a4a
    invoke-virtual {v0, v1, v2, v9}, Landroid/app/admin/IDevicePolicyManager$Stub;->setProfileOwner(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    #@a4d
    move-result v61

    #@a4e
    .line 947
    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@a51
    .line 948
    if-eqz v61, :cond_3b

    #@a53
    const/4 v6, 0x1

    #@a54
    :goto_3b
    move-object/from16 v0, p3

    #@a56
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@a59
    .line 949
    const/4 v6, 0x1

    #@a5a
    return v6

    #@a5b
    .line 940
    .end local v9    # "_arg2":I
    .end local v18    # "_arg1":Ljava/lang/String;
    .end local v61    # "_result":Z
    :cond_3a
    const/16 v17, 0x0

    #@a5d
    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_3a

    #@a5e
    .line 948
    .end local v17    # "_arg0":Landroid/content/ComponentName;
    .restart local v9    # "_arg2":I
    .restart local v18    # "_arg1":Ljava/lang/String;
    .restart local v61    # "_result":Z
    :cond_3b
    const/4 v6, 0x0

    #@a5f
    goto :goto_3b

    #@a60
    .line 953
    .end local v9    # "_arg2":I
    .end local v18    # "_arg1":Ljava/lang/String;
    .end local v61    # "_result":Z
    :sswitch_3c
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@a63
    move-object/from16 v0, p2

    #@a65
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a68
    .line 955
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@a6b
    move-result v7

    #@a6c
    .line 956
    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    #@a6e
    invoke-virtual {v0, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->getProfileOwner(I)Landroid/content/ComponentName;

    #@a71
    move-result-object v53

    #@a72
    .line 957
    .restart local v53    # "_result":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@a75
    .line 958
    if-eqz v53, :cond_3c

    #@a77
    .line 959
    const/4 v6, 0x1

    #@a78
    move-object/from16 v0, p3

    #@a7a
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@a7d
    .line 960
    const/4 v6, 0x1

    #@a7e
    move-object/from16 v0, v53

    #@a80
    move-object/from16 v1, p3

    #@a82
    invoke-virtual {v0, v1, v6}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    #@a85
    .line 965
    :goto_3c
    const/4 v6, 0x1

    #@a86
    return v6

    #@a87
    .line 963
    :cond_3c
    const/4 v6, 0x0

    #@a88
    move-object/from16 v0, p3

    #@a8a
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@a8d
    goto :goto_3c

    #@a8e
    .line 969
    .end local v7    # "_arg0":I
    .end local v53    # "_result":Landroid/content/ComponentName;
    :sswitch_3d
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@a91
    move-object/from16 v0, p2

    #@a93
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a96
    .line 971
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@a99
    move-result v7

    #@a9a
    .line 972
    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    #@a9c
    invoke-virtual {v0, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->getProfileOwnerName(I)Ljava/lang/String;

    #@a9f
    move-result-object v56

    #@aa0
    .line 973
    .restart local v56    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@aa3
    .line 974
    move-object/from16 v0, p3

    #@aa5
    move-object/from16 v1, v56

    #@aa7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@aaa
    .line 975
    const/4 v6, 0x1

    #@aab
    return v6

    #@aac
    .line 979
    .end local v7    # "_arg0":I
    .end local v56    # "_result":Ljava/lang/String;
    :sswitch_3e
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@aaf
    move-object/from16 v0, p2

    #@ab1
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ab4
    .line 981
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@ab7
    move-result v6

    #@ab8
    if-eqz v6, :cond_3d

    #@aba
    .line 982
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@abc
    move-object/from16 v0, p2

    #@abe
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@ac1
    move-result-object v17

    #@ac2
    check-cast v17, Landroid/content/ComponentName;

    #@ac4
    .line 987
    :goto_3d
    move-object/from16 v0, p0

    #@ac6
    move-object/from16 v1, v17

    #@ac8
    invoke-virtual {v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setProfileEnabled(Landroid/content/ComponentName;)V

    #@acb
    .line 988
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@ace
    .line 989
    const/4 v6, 0x1

    #@acf
    return v6

    #@ad0
    .line 985
    :cond_3d
    const/16 v17, 0x0

    #@ad2
    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_3d

    #@ad3
    .line 993
    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :sswitch_3f
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@ad6
    move-object/from16 v0, p2

    #@ad8
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@adb
    .line 995
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@ade
    move-result v6

    #@adf
    if-eqz v6, :cond_3e

    #@ae1
    .line 996
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@ae3
    move-object/from16 v0, p2

    #@ae5
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@ae8
    move-result-object v17

    #@ae9
    check-cast v17, Landroid/content/ComponentName;

    #@aeb
    .line 1002
    :goto_3e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@aee
    move-result-object v18

    #@aef
    .line 1003
    .restart local v18    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@af1
    move-object/from16 v1, v17

    #@af3
    move-object/from16 v2, v18

    #@af5
    invoke-virtual {v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setProfileName(Landroid/content/ComponentName;Ljava/lang/String;)V

    #@af8
    .line 1004
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@afb
    .line 1005
    const/4 v6, 0x1

    #@afc
    return v6

    #@afd
    .line 999
    .end local v18    # "_arg1":Ljava/lang/String;
    :cond_3e
    const/16 v17, 0x0

    #@aff
    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_3e

    #@b00
    .line 1009
    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :sswitch_40
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@b03
    move-object/from16 v0, p2

    #@b05
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b08
    .line 1011
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@b0b
    move-result v6

    #@b0c
    if-eqz v6, :cond_3f

    #@b0e
    .line 1012
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@b10
    move-object/from16 v0, p2

    #@b12
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@b15
    move-result-object v17

    #@b16
    check-cast v17, Landroid/content/ComponentName;

    #@b18
    .line 1017
    :goto_3f
    move-object/from16 v0, p0

    #@b1a
    move-object/from16 v1, v17

    #@b1c
    invoke-virtual {v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->clearProfileOwner(Landroid/content/ComponentName;)V

    #@b1f
    .line 1018
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@b22
    .line 1019
    const/4 v6, 0x1

    #@b23
    return v6

    #@b24
    .line 1015
    :cond_3f
    const/16 v17, 0x0

    #@b26
    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_3f

    #@b27
    .line 1023
    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :sswitch_41
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@b2a
    move-object/from16 v0, p2

    #@b2c
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b2f
    .line 1024
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->hasUserSetupCompleted()Z

    #@b32
    move-result v61

    #@b33
    .line 1025
    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@b36
    .line 1026
    if-eqz v61, :cond_40

    #@b38
    const/4 v6, 0x1

    #@b39
    :goto_40
    move-object/from16 v0, p3

    #@b3b
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@b3e
    .line 1027
    const/4 v6, 0x1

    #@b3f
    return v6

    #@b40
    .line 1026
    :cond_40
    const/4 v6, 0x0

    #@b41
    goto :goto_40

    #@b42
    .line 1031
    .end local v61    # "_result":Z
    :sswitch_42
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@b45
    move-object/from16 v0, p2

    #@b47
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b4a
    .line 1033
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@b4d
    move-result v6

    #@b4e
    if-eqz v6, :cond_41

    #@b50
    .line 1034
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@b52
    move-object/from16 v0, p2

    #@b54
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@b57
    move-result-object v17

    #@b58
    check-cast v17, Landroid/content/ComponentName;

    #@b5a
    .line 1040
    :goto_41
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    #@b5d
    move-result-object v39

    #@b5e
    .line 1041
    .local v39, "_arg1":[B
    move-object/from16 v0, p0

    #@b60
    move-object/from16 v1, v17

    #@b62
    move-object/from16 v2, v39

    #@b64
    invoke-virtual {v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->installCaCert(Landroid/content/ComponentName;[B)Z

    #@b67
    move-result v61

    #@b68
    .line 1042
    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@b6b
    .line 1043
    if-eqz v61, :cond_42

    #@b6d
    const/4 v6, 0x1

    #@b6e
    :goto_42
    move-object/from16 v0, p3

    #@b70
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@b73
    .line 1044
    const/4 v6, 0x1

    #@b74
    return v6

    #@b75
    .line 1037
    .end local v39    # "_arg1":[B
    .end local v61    # "_result":Z
    :cond_41
    const/16 v17, 0x0

    #@b77
    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_41

    #@b78
    .line 1043
    .end local v17    # "_arg0":Landroid/content/ComponentName;
    .restart local v39    # "_arg1":[B
    .restart local v61    # "_result":Z
    :cond_42
    const/4 v6, 0x0

    #@b79
    goto :goto_42

    #@b7a
    .line 1048
    .end local v39    # "_arg1":[B
    .end local v61    # "_result":Z
    :sswitch_43
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@b7d
    move-object/from16 v0, p2

    #@b7f
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b82
    .line 1050
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@b85
    move-result v6

    #@b86
    if-eqz v6, :cond_43

    #@b88
    .line 1051
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@b8a
    move-object/from16 v0, p2

    #@b8c
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@b8f
    move-result-object v17

    #@b90
    check-cast v17, Landroid/content/ComponentName;

    #@b92
    .line 1057
    :goto_43
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@b95
    move-result-object v40

    #@b96
    .line 1058
    .local v40, "_arg1":[Ljava/lang/String;
    move-object/from16 v0, p0

    #@b98
    move-object/from16 v1, v17

    #@b9a
    move-object/from16 v2, v40

    #@b9c
    invoke-virtual {v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->uninstallCaCerts(Landroid/content/ComponentName;[Ljava/lang/String;)V

    #@b9f
    .line 1059
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@ba2
    .line 1060
    const/4 v6, 0x1

    #@ba3
    return v6

    #@ba4
    .line 1054
    .end local v40    # "_arg1":[Ljava/lang/String;
    :cond_43
    const/16 v17, 0x0

    #@ba6
    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_43

    #@ba7
    .line 1064
    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :sswitch_44
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@baa
    move-object/from16 v0, p2

    #@bac
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@baf
    .line 1066
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@bb2
    move-result v6

    #@bb3
    if-eqz v6, :cond_44

    #@bb5
    .line 1067
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@bb7
    move-object/from16 v0, p2

    #@bb9
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@bbc
    move-result-object v17

    #@bbd
    check-cast v17, Landroid/content/ComponentName;

    #@bbf
    .line 1072
    :goto_44
    move-object/from16 v0, p0

    #@bc1
    move-object/from16 v1, v17

    #@bc3
    invoke-virtual {v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->enforceCanManageCaCerts(Landroid/content/ComponentName;)V

    #@bc6
    .line 1073
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@bc9
    .line 1074
    const/4 v6, 0x1

    #@bca
    return v6

    #@bcb
    .line 1070
    :cond_44
    const/16 v17, 0x0

    #@bcd
    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_44

    #@bce
    .line 1078
    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :sswitch_45
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@bd1
    move-object/from16 v0, p2

    #@bd3
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@bd6
    .line 1080
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@bd9
    move-result v6

    #@bda
    if-eqz v6, :cond_45

    #@bdc
    .line 1081
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@bde
    move-object/from16 v0, p2

    #@be0
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@be3
    move-result-object v17

    #@be4
    check-cast v17, Landroid/content/ComponentName;

    #@be6
    .line 1087
    :goto_45
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    #@be9
    move-result-object v39

    #@bea
    .line 1089
    .restart local v39    # "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    #@bed
    move-result-object v46

    #@bee
    .line 1091
    .local v46, "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@bf1
    move-result-object v48

    #@bf2
    .line 1092
    .local v48, "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    #@bf4
    move-object/from16 v1, v17

    #@bf6
    move-object/from16 v2, v39

    #@bf8
    move-object/from16 v3, v46

    #@bfa
    move-object/from16 v4, v48

    #@bfc
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->installKeyPair(Landroid/content/ComponentName;[B[BLjava/lang/String;)Z

    #@bff
    move-result v61

    #@c00
    .line 1093
    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@c03
    .line 1094
    if-eqz v61, :cond_46

    #@c05
    const/4 v6, 0x1

    #@c06
    :goto_46
    move-object/from16 v0, p3

    #@c08
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@c0b
    .line 1095
    const/4 v6, 0x1

    #@c0c
    return v6

    #@c0d
    .line 1084
    .end local v39    # "_arg1":[B
    .end local v46    # "_arg2":[B
    .end local v48    # "_arg3":Ljava/lang/String;
    .end local v61    # "_result":Z
    :cond_45
    const/16 v17, 0x0

    #@c0f
    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_45

    #@c10
    .line 1094
    .end local v17    # "_arg0":Landroid/content/ComponentName;
    .restart local v39    # "_arg1":[B
    .restart local v46    # "_arg2":[B
    .restart local v48    # "_arg3":Ljava/lang/String;
    .restart local v61    # "_result":Z
    :cond_46
    const/4 v6, 0x0

    #@c11
    goto :goto_46

    #@c12
    .line 1099
    .end local v39    # "_arg1":[B
    .end local v46    # "_arg2":[B
    .end local v48    # "_arg3":Ljava/lang/String;
    .end local v61    # "_result":Z
    :sswitch_46
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@c15
    move-object/from16 v0, p2

    #@c17
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@c1a
    .line 1101
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@c1d
    move-result v7

    #@c1e
    .line 1103
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@c21
    move-result v6

    #@c22
    if-eqz v6, :cond_47

    #@c24
    .line 1104
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@c26
    move-object/from16 v0, p2

    #@c28
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@c2b
    move-result-object v34

    #@c2c
    check-cast v34, Landroid/net/Uri;

    #@c2e
    .line 1110
    :goto_47
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@c31
    move-result-object v19

    #@c32
    .line 1112
    .restart local v19    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@c35
    move-result-object v47

    #@c36
    .line 1113
    .local v47, "_arg3":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@c38
    move-object/from16 v1, v34

    #@c3a
    move-object/from16 v2, v19

    #@c3c
    move-object/from16 v3, v47

    #@c3e
    invoke-virtual {v0, v7, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->choosePrivateKeyAlias(ILandroid/net/Uri;Ljava/lang/String;Landroid/os/IBinder;)V

    #@c41
    .line 1114
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@c44
    .line 1115
    const/4 v6, 0x1

    #@c45
    return v6

    #@c46
    .line 1107
    .end local v19    # "_arg2":Ljava/lang/String;
    .end local v47    # "_arg3":Landroid/os/IBinder;
    :cond_47
    const/16 v34, 0x0

    #@c48
    .local v34, "_arg1":Landroid/net/Uri;
    goto :goto_47

    #@c49
    .line 1119
    .end local v7    # "_arg0":I
    .end local v34    # "_arg1":Landroid/net/Uri;
    :sswitch_47
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@c4c
    move-object/from16 v0, p2

    #@c4e
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@c51
    .line 1121
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@c54
    move-result v6

    #@c55
    if-eqz v6, :cond_48

    #@c57
    .line 1122
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@c59
    move-object/from16 v0, p2

    #@c5b
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@c5e
    move-result-object v17

    #@c5f
    check-cast v17, Landroid/content/ComponentName;

    #@c61
    .line 1128
    :goto_48
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@c64
    move-result-object v18

    #@c65
    .line 1129
    .restart local v18    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@c67
    move-object/from16 v1, v17

    #@c69
    move-object/from16 v2, v18

    #@c6b
    invoke-virtual {v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setCertInstallerPackage(Landroid/content/ComponentName;Ljava/lang/String;)V

    #@c6e
    .line 1130
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@c71
    .line 1131
    const/4 v6, 0x1

    #@c72
    return v6

    #@c73
    .line 1125
    .end local v18    # "_arg1":Ljava/lang/String;
    :cond_48
    const/16 v17, 0x0

    #@c75
    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_48

    #@c76
    .line 1135
    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :sswitch_48
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@c79
    move-object/from16 v0, p2

    #@c7b
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@c7e
    .line 1137
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@c81
    move-result v6

    #@c82
    if-eqz v6, :cond_49

    #@c84
    .line 1138
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@c86
    move-object/from16 v0, p2

    #@c88
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@c8b
    move-result-object v17

    #@c8c
    check-cast v17, Landroid/content/ComponentName;

    #@c8e
    .line 1143
    :goto_49
    move-object/from16 v0, p0

    #@c90
    move-object/from16 v1, v17

    #@c92
    invoke-virtual {v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCertInstallerPackage(Landroid/content/ComponentName;)Ljava/lang/String;

    #@c95
    move-result-object v56

    #@c96
    .line 1144
    .restart local v56    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@c99
    .line 1145
    move-object/from16 v0, p3

    #@c9b
    move-object/from16 v1, v56

    #@c9d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@ca0
    .line 1146
    const/4 v6, 0x1

    #@ca1
    return v6

    #@ca2
    .line 1141
    .end local v56    # "_result":Ljava/lang/String;
    :cond_49
    const/16 v17, 0x0

    #@ca4
    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_49

    #@ca5
    .line 1150
    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :sswitch_49
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@ca8
    move-object/from16 v0, p2

    #@caa
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@cad
    .line 1152
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@cb0
    move-result v6

    #@cb1
    if-eqz v6, :cond_4a

    #@cb3
    .line 1153
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@cb5
    move-object/from16 v0, p2

    #@cb7
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@cba
    move-result-object v17

    #@cbb
    check-cast v17, Landroid/content/ComponentName;

    #@cbd
    .line 1159
    :goto_4a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@cc0
    move-result v6

    #@cc1
    if-eqz v6, :cond_4b

    #@cc3
    .line 1160
    sget-object v6, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    #@cc5
    move-object/from16 v0, p2

    #@cc7
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@cca
    move-result-object v31

    #@ccb
    check-cast v31, Landroid/content/IntentFilter;

    #@ccd
    .line 1166
    :goto_4b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@cd0
    move-result v6

    #@cd1
    if-eqz v6, :cond_4c

    #@cd3
    .line 1167
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@cd5
    move-object/from16 v0, p2

    #@cd7
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@cda
    move-result-object v41

    #@cdb
    check-cast v41, Landroid/content/ComponentName;

    #@cdd
    .line 1172
    :goto_4c
    move-object/from16 v0, p0

    #@cdf
    move-object/from16 v1, v17

    #@ce1
    move-object/from16 v2, v31

    #@ce3
    move-object/from16 v3, v41

    #@ce5
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->addPersistentPreferredActivity(Landroid/content/ComponentName;Landroid/content/IntentFilter;Landroid/content/ComponentName;)V

    #@ce8
    .line 1173
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@ceb
    .line 1174
    const/4 v6, 0x1

    #@cec
    return v6

    #@ced
    .line 1156
    :cond_4a
    const/16 v17, 0x0

    #@cef
    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_4a

    #@cf0
    .line 1163
    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :cond_4b
    const/16 v31, 0x0

    #@cf2
    .local v31, "_arg1":Landroid/content/IntentFilter;
    goto :goto_4b

    #@cf3
    .line 1170
    .end local v31    # "_arg1":Landroid/content/IntentFilter;
    :cond_4c
    const/16 v41, 0x0

    #@cf5
    .local v41, "_arg2":Landroid/content/ComponentName;
    goto :goto_4c

    #@cf6
    .line 1178
    .end local v41    # "_arg2":Landroid/content/ComponentName;
    :sswitch_4a
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@cf9
    move-object/from16 v0, p2

    #@cfb
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@cfe
    .line 1180
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@d01
    move-result v6

    #@d02
    if-eqz v6, :cond_4d

    #@d04
    .line 1181
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@d06
    move-object/from16 v0, p2

    #@d08
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@d0b
    move-result-object v17

    #@d0c
    check-cast v17, Landroid/content/ComponentName;

    #@d0e
    .line 1187
    :goto_4d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@d11
    move-result-object v18

    #@d12
    .line 1188
    .restart local v18    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@d14
    move-object/from16 v1, v17

    #@d16
    move-object/from16 v2, v18

    #@d18
    invoke-virtual {v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->clearPackagePersistentPreferredActivities(Landroid/content/ComponentName;Ljava/lang/String;)V

    #@d1b
    .line 1189
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@d1e
    .line 1190
    const/4 v6, 0x1

    #@d1f
    return v6

    #@d20
    .line 1184
    .end local v18    # "_arg1":Ljava/lang/String;
    :cond_4d
    const/16 v17, 0x0

    #@d22
    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_4d

    #@d23
    .line 1194
    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :sswitch_4b
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@d26
    move-object/from16 v0, p2

    #@d28
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@d2b
    .line 1196
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@d2e
    move-result v6

    #@d2f
    if-eqz v6, :cond_4e

    #@d31
    .line 1197
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@d33
    move-object/from16 v0, p2

    #@d35
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@d38
    move-result-object v17

    #@d39
    check-cast v17, Landroid/content/ComponentName;

    #@d3b
    .line 1203
    :goto_4e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@d3e
    move-result-object v18

    #@d3f
    .line 1205
    .restart local v18    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@d42
    move-result v6

    #@d43
    if-eqz v6, :cond_4f

    #@d45
    .line 1206
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@d47
    move-object/from16 v0, p2

    #@d49
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@d4c
    move-result-object v43

    #@d4d
    check-cast v43, Landroid/os/Bundle;

    #@d4f
    .line 1211
    :goto_4f
    move-object/from16 v0, p0

    #@d51
    move-object/from16 v1, v17

    #@d53
    move-object/from16 v2, v18

    #@d55
    move-object/from16 v3, v43

    #@d57
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setApplicationRestrictions(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;)V

    #@d5a
    .line 1212
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@d5d
    .line 1213
    const/4 v6, 0x1

    #@d5e
    return v6

    #@d5f
    .line 1200
    .end local v18    # "_arg1":Ljava/lang/String;
    :cond_4e
    const/16 v17, 0x0

    #@d61
    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_4e

    #@d62
    .line 1209
    .end local v17    # "_arg0":Landroid/content/ComponentName;
    .restart local v18    # "_arg1":Ljava/lang/String;
    :cond_4f
    const/16 v43, 0x0

    #@d64
    .local v43, "_arg2":Landroid/os/Bundle;
    goto :goto_4f

    #@d65
    .line 1217
    .end local v18    # "_arg1":Ljava/lang/String;
    .end local v43    # "_arg2":Landroid/os/Bundle;
    :sswitch_4c
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@d68
    move-object/from16 v0, p2

    #@d6a
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@d6d
    .line 1219
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@d70
    move-result v6

    #@d71
    if-eqz v6, :cond_50

    #@d73
    .line 1220
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@d75
    move-object/from16 v0, p2

    #@d77
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@d7a
    move-result-object v17

    #@d7b
    check-cast v17, Landroid/content/ComponentName;

    #@d7d
    .line 1226
    :goto_50
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@d80
    move-result-object v18

    #@d81
    .line 1227
    .restart local v18    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@d83
    move-object/from16 v1, v17

    #@d85
    move-object/from16 v2, v18

    #@d87
    invoke-virtual {v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getApplicationRestrictions(Landroid/content/ComponentName;Ljava/lang/String;)Landroid/os/Bundle;

    #@d8a
    move-result-object v54

    #@d8b
    .line 1228
    .local v54, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@d8e
    .line 1229
    if-eqz v54, :cond_51

    #@d90
    .line 1230
    const/4 v6, 0x1

    #@d91
    move-object/from16 v0, p3

    #@d93
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@d96
    .line 1231
    const/4 v6, 0x1

    #@d97
    move-object/from16 v0, v54

    #@d99
    move-object/from16 v1, p3

    #@d9b
    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@d9e
    .line 1236
    :goto_51
    const/4 v6, 0x1

    #@d9f
    return v6

    #@da0
    .line 1223
    .end local v18    # "_arg1":Ljava/lang/String;
    .end local v54    # "_result":Landroid/os/Bundle;
    :cond_50
    const/16 v17, 0x0

    #@da2
    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_50

    #@da3
    .line 1234
    .end local v17    # "_arg0":Landroid/content/ComponentName;
    .restart local v18    # "_arg1":Ljava/lang/String;
    .restart local v54    # "_result":Landroid/os/Bundle;
    :cond_51
    const/4 v6, 0x0

    #@da4
    move-object/from16 v0, p3

    #@da6
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@da9
    goto :goto_51

    #@daa
    .line 1240
    .end local v18    # "_arg1":Ljava/lang/String;
    .end local v54    # "_result":Landroid/os/Bundle;
    :sswitch_4d
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@dad
    move-object/from16 v0, p2

    #@daf
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@db2
    .line 1242
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@db5
    move-result v6

    #@db6
    if-eqz v6, :cond_52

    #@db8
    .line 1243
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@dba
    move-object/from16 v0, p2

    #@dbc
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@dbf
    move-result-object v17

    #@dc0
    check-cast v17, Landroid/content/ComponentName;

    #@dc2
    .line 1249
    :goto_52
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@dc5
    move-result v6

    #@dc6
    if-eqz v6, :cond_53

    #@dc8
    .line 1250
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@dca
    move-object/from16 v0, p2

    #@dcc
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@dcf
    move-result-object v29

    #@dd0
    check-cast v29, Landroid/content/ComponentName;

    #@dd2
    .line 1255
    :goto_53
    move-object/from16 v0, p0

    #@dd4
    move-object/from16 v1, v17

    #@dd6
    move-object/from16 v2, v29

    #@dd8
    invoke-virtual {v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setRestrictionsProvider(Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    #@ddb
    .line 1256
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@dde
    .line 1257
    const/4 v6, 0x1

    #@ddf
    return v6

    #@de0
    .line 1246
    :cond_52
    const/16 v17, 0x0

    #@de2
    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_52

    #@de3
    .line 1253
    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :cond_53
    const/16 v29, 0x0

    #@de5
    .local v29, "_arg1":Landroid/content/ComponentName;
    goto :goto_53

    #@de6
    .line 1261
    .end local v29    # "_arg1":Landroid/content/ComponentName;
    :sswitch_4e
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@de9
    move-object/from16 v0, p2

    #@deb
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@dee
    .line 1263
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@df1
    move-result v7

    #@df2
    .line 1264
    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    #@df4
    invoke-virtual {v0, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->getRestrictionsProvider(I)Landroid/content/ComponentName;

    #@df7
    move-result-object v53

    #@df8
    .line 1265
    .restart local v53    # "_result":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@dfb
    .line 1266
    if-eqz v53, :cond_54

    #@dfd
    .line 1267
    const/4 v6, 0x1

    #@dfe
    move-object/from16 v0, p3

    #@e00
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@e03
    .line 1268
    const/4 v6, 0x1

    #@e04
    move-object/from16 v0, v53

    #@e06
    move-object/from16 v1, p3

    #@e08
    invoke-virtual {v0, v1, v6}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    #@e0b
    .line 1273
    :goto_54
    const/4 v6, 0x1

    #@e0c
    return v6

    #@e0d
    .line 1271
    :cond_54
    const/4 v6, 0x0

    #@e0e
    move-object/from16 v0, p3

    #@e10
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@e13
    goto :goto_54

    #@e14
    .line 1277
    .end local v7    # "_arg0":I
    .end local v53    # "_result":Landroid/content/ComponentName;
    :sswitch_4f
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@e17
    move-object/from16 v0, p2

    #@e19
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@e1c
    .line 1279
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@e1f
    move-result v6

    #@e20
    if-eqz v6, :cond_55

    #@e22
    .line 1280
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@e24
    move-object/from16 v0, p2

    #@e26
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@e29
    move-result-object v17

    #@e2a
    check-cast v17, Landroid/content/ComponentName;

    #@e2c
    .line 1286
    :goto_55
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@e2f
    move-result-object v18

    #@e30
    .line 1288
    .restart local v18    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@e33
    move-result v6

    #@e34
    if-eqz v6, :cond_56

    #@e36
    const/16 v45, 0x1

    #@e38
    .line 1289
    .local v45, "_arg2":Z
    :goto_56
    move-object/from16 v0, p0

    #@e3a
    move-object/from16 v1, v17

    #@e3c
    move-object/from16 v2, v18

    #@e3e
    move/from16 v3, v45

    #@e40
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setUserRestriction(Landroid/content/ComponentName;Ljava/lang/String;Z)V

    #@e43
    .line 1290
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@e46
    .line 1291
    const/4 v6, 0x1

    #@e47
    return v6

    #@e48
    .line 1283
    .end local v18    # "_arg1":Ljava/lang/String;
    .end local v45    # "_arg2":Z
    :cond_55
    const/16 v17, 0x0

    #@e4a
    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_55

    #@e4b
    .line 1288
    .end local v17    # "_arg0":Landroid/content/ComponentName;
    .restart local v18    # "_arg1":Ljava/lang/String;
    :cond_56
    const/16 v45, 0x0

    #@e4d
    .restart local v45    # "_arg2":Z
    goto :goto_56

    #@e4e
    .line 1295
    .end local v18    # "_arg1":Ljava/lang/String;
    .end local v45    # "_arg2":Z
    :sswitch_50
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@e51
    move-object/from16 v0, p2

    #@e53
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@e56
    .line 1297
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@e59
    move-result v6

    #@e5a
    if-eqz v6, :cond_57

    #@e5c
    .line 1298
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@e5e
    move-object/from16 v0, p2

    #@e60
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@e63
    move-result-object v17

    #@e64
    check-cast v17, Landroid/content/ComponentName;

    #@e66
    .line 1304
    :goto_57
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@e69
    move-result v6

    #@e6a
    if-eqz v6, :cond_58

    #@e6c
    .line 1305
    sget-object v6, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    #@e6e
    move-object/from16 v0, p2

    #@e70
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@e73
    move-result-object v31

    #@e74
    check-cast v31, Landroid/content/IntentFilter;

    #@e76
    .line 1311
    :goto_58
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@e79
    move-result v9

    #@e7a
    .line 1312
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    #@e7c
    move-object/from16 v1, v17

    #@e7e
    move-object/from16 v2, v31

    #@e80
    invoke-virtual {v0, v1, v2, v9}, Landroid/app/admin/IDevicePolicyManager$Stub;->addCrossProfileIntentFilter(Landroid/content/ComponentName;Landroid/content/IntentFilter;I)V

    #@e83
    .line 1313
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@e86
    .line 1314
    const/4 v6, 0x1

    #@e87
    return v6

    #@e88
    .line 1301
    .end local v9    # "_arg2":I
    :cond_57
    const/16 v17, 0x0

    #@e8a
    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_57

    #@e8b
    .line 1308
    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :cond_58
    const/16 v31, 0x0

    #@e8d
    .restart local v31    # "_arg1":Landroid/content/IntentFilter;
    goto :goto_58

    #@e8e
    .line 1318
    .end local v31    # "_arg1":Landroid/content/IntentFilter;
    :sswitch_51
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@e91
    move-object/from16 v0, p2

    #@e93
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@e96
    .line 1320
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@e99
    move-result v6

    #@e9a
    if-eqz v6, :cond_59

    #@e9c
    .line 1321
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@e9e
    move-object/from16 v0, p2

    #@ea0
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@ea3
    move-result-object v17

    #@ea4
    check-cast v17, Landroid/content/ComponentName;

    #@ea6
    .line 1326
    :goto_59
    move-object/from16 v0, p0

    #@ea8
    move-object/from16 v1, v17

    #@eaa
    invoke-virtual {v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->clearCrossProfileIntentFilters(Landroid/content/ComponentName;)V

    #@ead
    .line 1327
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@eb0
    .line 1328
    const/4 v6, 0x1

    #@eb1
    return v6

    #@eb2
    .line 1324
    :cond_59
    const/16 v17, 0x0

    #@eb4
    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_59

    #@eb5
    .line 1332
    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :sswitch_52
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@eb8
    move-object/from16 v0, p2

    #@eba
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ebd
    .line 1334
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@ec0
    move-result v6

    #@ec1
    if-eqz v6, :cond_5a

    #@ec3
    .line 1335
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@ec5
    move-object/from16 v0, p2

    #@ec7
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@eca
    move-result-object v17

    #@ecb
    check-cast v17, Landroid/content/ComponentName;

    #@ecd
    .line 1341
    :goto_5a
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getClass()Ljava/lang/Class;

    #@ed0
    move-result-object v6

    #@ed1
    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@ed4
    move-result-object v63

    #@ed5
    .line 1342
    .local v63, "cl":Ljava/lang/ClassLoader;
    move-object/from16 v0, p2

    #@ed7
    move-object/from16 v1, v63

    #@ed9
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    #@edc
    move-result-object v37

    #@edd
    .line 1343
    .local v37, "_arg1":Ljava/util/List;
    move-object/from16 v0, p0

    #@edf
    move-object/from16 v1, v17

    #@ee1
    move-object/from16 v2, v37

    #@ee3
    invoke-virtual {v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPermittedAccessibilityServices(Landroid/content/ComponentName;Ljava/util/List;)Z

    #@ee6
    move-result v61

    #@ee7
    .line 1344
    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@eea
    .line 1345
    if-eqz v61, :cond_5b

    #@eec
    const/4 v6, 0x1

    #@eed
    :goto_5b
    move-object/from16 v0, p3

    #@eef
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@ef2
    .line 1346
    const/4 v6, 0x1

    #@ef3
    return v6

    #@ef4
    .line 1338
    .end local v37    # "_arg1":Ljava/util/List;
    .end local v61    # "_result":Z
    .end local v63    # "cl":Ljava/lang/ClassLoader;
    :cond_5a
    const/16 v17, 0x0

    #@ef6
    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_5a

    #@ef7
    .line 1345
    .end local v17    # "_arg0":Landroid/content/ComponentName;
    .restart local v37    # "_arg1":Ljava/util/List;
    .restart local v61    # "_result":Z
    .restart local v63    # "cl":Ljava/lang/ClassLoader;
    :cond_5b
    const/4 v6, 0x0

    #@ef8
    goto :goto_5b

    #@ef9
    .line 1350
    .end local v37    # "_arg1":Ljava/util/List;
    .end local v61    # "_result":Z
    .end local v63    # "cl":Ljava/lang/ClassLoader;
    :sswitch_53
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@efc
    move-object/from16 v0, p2

    #@efe
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@f01
    .line 1352
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@f04
    move-result v6

    #@f05
    if-eqz v6, :cond_5c

    #@f07
    .line 1353
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@f09
    move-object/from16 v0, p2

    #@f0b
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@f0e
    move-result-object v17

    #@f0f
    check-cast v17, Landroid/content/ComponentName;

    #@f11
    .line 1358
    :goto_5c
    move-object/from16 v0, p0

    #@f13
    move-object/from16 v1, v17

    #@f15
    invoke-virtual {v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPermittedAccessibilityServices(Landroid/content/ComponentName;)Ljava/util/List;

    #@f18
    move-result-object v57

    #@f19
    .line 1359
    .local v57, "_result":Ljava/util/List;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@f1c
    .line 1360
    move-object/from16 v0, p3

    #@f1e
    move-object/from16 v1, v57

    #@f20
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    #@f23
    .line 1361
    const/4 v6, 0x1

    #@f24
    return v6

    #@f25
    .line 1356
    .end local v57    # "_result":Ljava/util/List;
    :cond_5c
    const/16 v17, 0x0

    #@f27
    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_5c

    #@f28
    .line 1365
    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :sswitch_54
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@f2b
    move-object/from16 v0, p2

    #@f2d
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@f30
    .line 1367
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@f33
    move-result v7

    #@f34
    .line 1368
    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    #@f36
    invoke-virtual {v0, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPermittedAccessibilityServicesForUser(I)Ljava/util/List;

    #@f39
    move-result-object v57

    #@f3a
    .line 1369
    .restart local v57    # "_result":Ljava/util/List;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@f3d
    .line 1370
    move-object/from16 v0, p3

    #@f3f
    move-object/from16 v1, v57

    #@f41
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    #@f44
    .line 1371
    const/4 v6, 0x1

    #@f45
    return v6

    #@f46
    .line 1375
    .end local v7    # "_arg0":I
    .end local v57    # "_result":Ljava/util/List;
    :sswitch_55
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@f49
    move-object/from16 v0, p2

    #@f4b
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@f4e
    .line 1377
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@f51
    move-result v6

    #@f52
    if-eqz v6, :cond_5d

    #@f54
    .line 1378
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@f56
    move-object/from16 v0, p2

    #@f58
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@f5b
    move-result-object v17

    #@f5c
    check-cast v17, Landroid/content/ComponentName;

    #@f5e
    .line 1384
    :goto_5d
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getClass()Ljava/lang/Class;

    #@f61
    move-result-object v6

    #@f62
    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@f65
    move-result-object v63

    #@f66
    .line 1385
    .restart local v63    # "cl":Ljava/lang/ClassLoader;
    move-object/from16 v0, p2

    #@f68
    move-object/from16 v1, v63

    #@f6a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    #@f6d
    move-result-object v37

    #@f6e
    .line 1386
    .restart local v37    # "_arg1":Ljava/util/List;
    move-object/from16 v0, p0

    #@f70
    move-object/from16 v1, v17

    #@f72
    move-object/from16 v2, v37

    #@f74
    invoke-virtual {v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPermittedInputMethods(Landroid/content/ComponentName;Ljava/util/List;)Z

    #@f77
    move-result v61

    #@f78
    .line 1387
    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@f7b
    .line 1388
    if-eqz v61, :cond_5e

    #@f7d
    const/4 v6, 0x1

    #@f7e
    :goto_5e
    move-object/from16 v0, p3

    #@f80
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@f83
    .line 1389
    const/4 v6, 0x1

    #@f84
    return v6

    #@f85
    .line 1381
    .end local v37    # "_arg1":Ljava/util/List;
    .end local v61    # "_result":Z
    .end local v63    # "cl":Ljava/lang/ClassLoader;
    :cond_5d
    const/16 v17, 0x0

    #@f87
    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_5d

    #@f88
    .line 1388
    .end local v17    # "_arg0":Landroid/content/ComponentName;
    .restart local v37    # "_arg1":Ljava/util/List;
    .restart local v61    # "_result":Z
    .restart local v63    # "cl":Ljava/lang/ClassLoader;
    :cond_5e
    const/4 v6, 0x0

    #@f89
    goto :goto_5e

    #@f8a
    .line 1393
    .end local v37    # "_arg1":Ljava/util/List;
    .end local v61    # "_result":Z
    .end local v63    # "cl":Ljava/lang/ClassLoader;
    :sswitch_56
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@f8d
    move-object/from16 v0, p2

    #@f8f
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@f92
    .line 1395
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@f95
    move-result v6

    #@f96
    if-eqz v6, :cond_5f

    #@f98
    .line 1396
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@f9a
    move-object/from16 v0, p2

    #@f9c
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@f9f
    move-result-object v17

    #@fa0
    check-cast v17, Landroid/content/ComponentName;

    #@fa2
    .line 1401
    :goto_5f
    move-object/from16 v0, p0

    #@fa4
    move-object/from16 v1, v17

    #@fa6
    invoke-virtual {v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPermittedInputMethods(Landroid/content/ComponentName;)Ljava/util/List;

    #@fa9
    move-result-object v57

    #@faa
    .line 1402
    .restart local v57    # "_result":Ljava/util/List;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@fad
    .line 1403
    move-object/from16 v0, p3

    #@faf
    move-object/from16 v1, v57

    #@fb1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    #@fb4
    .line 1404
    const/4 v6, 0x1

    #@fb5
    return v6

    #@fb6
    .line 1399
    .end local v57    # "_result":Ljava/util/List;
    :cond_5f
    const/16 v17, 0x0

    #@fb8
    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_5f

    #@fb9
    .line 1408
    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :sswitch_57
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@fbc
    move-object/from16 v0, p2

    #@fbe
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@fc1
    .line 1409
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPermittedInputMethodsForCurrentUser()Ljava/util/List;

    #@fc4
    move-result-object v57

    #@fc5
    .line 1410
    .restart local v57    # "_result":Ljava/util/List;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@fc8
    .line 1411
    move-object/from16 v0, p3

    #@fca
    move-object/from16 v1, v57

    #@fcc
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    #@fcf
    .line 1412
    const/4 v6, 0x1

    #@fd0
    return v6

    #@fd1
    .line 1416
    .end local v57    # "_result":Ljava/util/List;
    :sswitch_58
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@fd4
    move-object/from16 v0, p2

    #@fd6
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@fd9
    .line 1418
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@fdc
    move-result v6

    #@fdd
    if-eqz v6, :cond_60

    #@fdf
    .line 1419
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@fe1
    move-object/from16 v0, p2

    #@fe3
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@fe6
    move-result-object v17

    #@fe7
    check-cast v17, Landroid/content/ComponentName;

    #@fe9
    .line 1425
    :goto_60
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@fec
    move-result-object v18

    #@fed
    .line 1427
    .restart local v18    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@ff0
    move-result v6

    #@ff1
    if-eqz v6, :cond_61

    #@ff3
    const/16 v45, 0x1

    #@ff5
    .line 1428
    .restart local v45    # "_arg2":Z
    :goto_61
    move-object/from16 v0, p0

    #@ff7
    move-object/from16 v1, v17

    #@ff9
    move-object/from16 v2, v18

    #@ffb
    move/from16 v3, v45

    #@ffd
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setApplicationHidden(Landroid/content/ComponentName;Ljava/lang/String;Z)Z

    #@1000
    move-result v61

    #@1001
    .line 1429
    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1004
    .line 1430
    if-eqz v61, :cond_62

    #@1006
    const/4 v6, 0x1

    #@1007
    :goto_62
    move-object/from16 v0, p3

    #@1009
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@100c
    .line 1431
    const/4 v6, 0x1

    #@100d
    return v6

    #@100e
    .line 1422
    .end local v18    # "_arg1":Ljava/lang/String;
    .end local v45    # "_arg2":Z
    .end local v61    # "_result":Z
    :cond_60
    const/16 v17, 0x0

    #@1010
    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_60

    #@1011
    .line 1427
    .end local v17    # "_arg0":Landroid/content/ComponentName;
    .restart local v18    # "_arg1":Ljava/lang/String;
    :cond_61
    const/16 v45, 0x0

    #@1013
    .restart local v45    # "_arg2":Z
    goto :goto_61

    #@1014
    .line 1430
    .restart local v61    # "_result":Z
    :cond_62
    const/4 v6, 0x0

    #@1015
    goto :goto_62

    #@1016
    .line 1435
    .end local v18    # "_arg1":Ljava/lang/String;
    .end local v45    # "_arg2":Z
    .end local v61    # "_result":Z
    :sswitch_59
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@1019
    move-object/from16 v0, p2

    #@101b
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@101e
    .line 1437
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1021
    move-result v6

    #@1022
    if-eqz v6, :cond_63

    #@1024
    .line 1438
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1026
    move-object/from16 v0, p2

    #@1028
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@102b
    move-result-object v17

    #@102c
    check-cast v17, Landroid/content/ComponentName;

    #@102e
    .line 1444
    :goto_63
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1031
    move-result-object v18

    #@1032
    .line 1445
    .restart local v18    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@1034
    move-object/from16 v1, v17

    #@1036
    move-object/from16 v2, v18

    #@1038
    invoke-virtual {v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->isApplicationHidden(Landroid/content/ComponentName;Ljava/lang/String;)Z

    #@103b
    move-result v61

    #@103c
    .line 1446
    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@103f
    .line 1447
    if-eqz v61, :cond_64

    #@1041
    const/4 v6, 0x1

    #@1042
    :goto_64
    move-object/from16 v0, p3

    #@1044
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@1047
    .line 1448
    const/4 v6, 0x1

    #@1048
    return v6

    #@1049
    .line 1441
    .end local v18    # "_arg1":Ljava/lang/String;
    .end local v61    # "_result":Z
    :cond_63
    const/16 v17, 0x0

    #@104b
    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_63

    #@104c
    .line 1447
    .end local v17    # "_arg0":Landroid/content/ComponentName;
    .restart local v18    # "_arg1":Ljava/lang/String;
    .restart local v61    # "_result":Z
    :cond_64
    const/4 v6, 0x0

    #@104d
    goto :goto_64

    #@104e
    .line 1452
    .end local v18    # "_arg1":Ljava/lang/String;
    .end local v61    # "_result":Z
    :sswitch_5a
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@1051
    move-object/from16 v0, p2

    #@1053
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1056
    .line 1454
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1059
    move-result v6

    #@105a
    if-eqz v6, :cond_65

    #@105c
    .line 1455
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@105e
    move-object/from16 v0, p2

    #@1060
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1063
    move-result-object v17

    #@1064
    check-cast v17, Landroid/content/ComponentName;

    #@1066
    .line 1461
    :goto_65
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1069
    move-result-object v18

    #@106a
    .line 1462
    .restart local v18    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@106c
    move-object/from16 v1, v17

    #@106e
    move-object/from16 v2, v18

    #@1070
    invoke-virtual {v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->createUser(Landroid/content/ComponentName;Ljava/lang/String;)Landroid/os/UserHandle;

    #@1073
    move-result-object v55

    #@1074
    .line 1463
    .local v55, "_result":Landroid/os/UserHandle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1077
    .line 1464
    if-eqz v55, :cond_66

    #@1079
    .line 1465
    const/4 v6, 0x1

    #@107a
    move-object/from16 v0, p3

    #@107c
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@107f
    .line 1466
    const/4 v6, 0x1

    #@1080
    move-object/from16 v0, v55

    #@1082
    move-object/from16 v1, p3

    #@1084
    invoke-virtual {v0, v1, v6}, Landroid/os/UserHandle;->writeToParcel(Landroid/os/Parcel;I)V

    #@1087
    .line 1471
    :goto_66
    const/4 v6, 0x1

    #@1088
    return v6

    #@1089
    .line 1458
    .end local v18    # "_arg1":Ljava/lang/String;
    .end local v55    # "_result":Landroid/os/UserHandle;
    :cond_65
    const/16 v17, 0x0

    #@108b
    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_65

    #@108c
    .line 1469
    .end local v17    # "_arg0":Landroid/content/ComponentName;
    .restart local v18    # "_arg1":Ljava/lang/String;
    .restart local v55    # "_result":Landroid/os/UserHandle;
    :cond_66
    const/4 v6, 0x0

    #@108d
    move-object/from16 v0, p3

    #@108f
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@1092
    goto :goto_66

    #@1093
    .line 1475
    .end local v18    # "_arg1":Ljava/lang/String;
    .end local v55    # "_result":Landroid/os/UserHandle;
    :sswitch_5b
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@1096
    move-object/from16 v0, p2

    #@1098
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@109b
    .line 1477
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@109e
    move-result v6

    #@109f
    if-eqz v6, :cond_67

    #@10a1
    .line 1478
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@10a3
    move-object/from16 v0, p2

    #@10a5
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@10a8
    move-result-object v17

    #@10a9
    check-cast v17, Landroid/content/ComponentName;

    #@10ab
    .line 1484
    :goto_67
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@10ae
    move-result-object v18

    #@10af
    .line 1486
    .restart local v18    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@10b2
    move-result-object v19

    #@10b3
    .line 1488
    .restart local v19    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@10b6
    move-result v6

    #@10b7
    if-eqz v6, :cond_68

    #@10b9
    .line 1489
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@10bb
    move-object/from16 v0, p2

    #@10bd
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@10c0
    move-result-object v20

    #@10c1
    check-cast v20, Landroid/content/ComponentName;

    #@10c3
    .line 1495
    :goto_68
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@10c6
    move-result v6

    #@10c7
    if-eqz v6, :cond_69

    #@10c9
    .line 1496
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@10cb
    move-object/from16 v0, p2

    #@10cd
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@10d0
    move-result-object v21

    #@10d1
    check-cast v21, Landroid/os/Bundle;

    #@10d3
    :goto_69
    move-object/from16 v16, p0

    #@10d5
    .line 1501
    invoke-virtual/range {v16 .. v21}, Landroid/app/admin/IDevicePolicyManager$Stub;->createAndInitializeUser(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/Bundle;)Landroid/os/UserHandle;

    #@10d8
    move-result-object v55

    #@10d9
    .line 1502
    .restart local v55    # "_result":Landroid/os/UserHandle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@10dc
    .line 1503
    if-eqz v55, :cond_6a

    #@10de
    .line 1504
    const/4 v6, 0x1

    #@10df
    move-object/from16 v0, p3

    #@10e1
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@10e4
    .line 1505
    const/4 v6, 0x1

    #@10e5
    move-object/from16 v0, v55

    #@10e7
    move-object/from16 v1, p3

    #@10e9
    invoke-virtual {v0, v1, v6}, Landroid/os/UserHandle;->writeToParcel(Landroid/os/Parcel;I)V

    #@10ec
    .line 1510
    :goto_6a
    const/4 v6, 0x1

    #@10ed
    return v6

    #@10ee
    .line 1481
    .end local v18    # "_arg1":Ljava/lang/String;
    .end local v19    # "_arg2":Ljava/lang/String;
    .end local v55    # "_result":Landroid/os/UserHandle;
    :cond_67
    const/16 v17, 0x0

    #@10f0
    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_67

    #@10f1
    .line 1492
    .end local v17    # "_arg0":Landroid/content/ComponentName;
    .restart local v18    # "_arg1":Ljava/lang/String;
    .restart local v19    # "_arg2":Ljava/lang/String;
    :cond_68
    const/16 v20, 0x0

    #@10f3
    .local v20, "_arg3":Landroid/content/ComponentName;
    goto :goto_68

    #@10f4
    .line 1499
    .end local v20    # "_arg3":Landroid/content/ComponentName;
    :cond_69
    const/16 v21, 0x0

    #@10f6
    .local v21, "_arg4":Landroid/os/Bundle;
    goto :goto_69

    #@10f7
    .line 1508
    .end local v21    # "_arg4":Landroid/os/Bundle;
    .restart local v55    # "_result":Landroid/os/UserHandle;
    :cond_6a
    const/4 v6, 0x0

    #@10f8
    move-object/from16 v0, p3

    #@10fa
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@10fd
    goto :goto_6a

    #@10fe
    .line 1514
    .end local v18    # "_arg1":Ljava/lang/String;
    .end local v19    # "_arg2":Ljava/lang/String;
    .end local v55    # "_result":Landroid/os/UserHandle;
    :sswitch_5c
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@1101
    move-object/from16 v0, p2

    #@1103
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1106
    .line 1516
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1109
    move-result v6

    #@110a
    if-eqz v6, :cond_6b

    #@110c
    .line 1517
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@110e
    move-object/from16 v0, p2

    #@1110
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1113
    move-result-object v17

    #@1114
    check-cast v17, Landroid/content/ComponentName;

    #@1116
    .line 1523
    :goto_6b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1119
    move-result v6

    #@111a
    if-eqz v6, :cond_6c

    #@111c
    .line 1524
    sget-object v6, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@111e
    move-object/from16 v0, p2

    #@1120
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1123
    move-result-object v36

    #@1124
    check-cast v36, Landroid/os/UserHandle;

    #@1126
    .line 1529
    :goto_6c
    move-object/from16 v0, p0

    #@1128
    move-object/from16 v1, v17

    #@112a
    move-object/from16 v2, v36

    #@112c
    invoke-virtual {v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->removeUser(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z

    #@112f
    move-result v61

    #@1130
    .line 1530
    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1133
    .line 1531
    if-eqz v61, :cond_6d

    #@1135
    const/4 v6, 0x1

    #@1136
    :goto_6d
    move-object/from16 v0, p3

    #@1138
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@113b
    .line 1532
    const/4 v6, 0x1

    #@113c
    return v6

    #@113d
    .line 1520
    .end local v61    # "_result":Z
    :cond_6b
    const/16 v17, 0x0

    #@113f
    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_6b

    #@1140
    .line 1527
    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :cond_6c
    const/16 v36, 0x0

    #@1142
    .local v36, "_arg1":Landroid/os/UserHandle;
    goto :goto_6c

    #@1143
    .line 1531
    .end local v36    # "_arg1":Landroid/os/UserHandle;
    .restart local v61    # "_result":Z
    :cond_6d
    const/4 v6, 0x0

    #@1144
    goto :goto_6d

    #@1145
    .line 1536
    .end local v61    # "_result":Z
    :sswitch_5d
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@1148
    move-object/from16 v0, p2

    #@114a
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@114d
    .line 1538
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1150
    move-result v6

    #@1151
    if-eqz v6, :cond_6e

    #@1153
    .line 1539
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1155
    move-object/from16 v0, p2

    #@1157
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@115a
    move-result-object v17

    #@115b
    check-cast v17, Landroid/content/ComponentName;

    #@115d
    .line 1545
    :goto_6e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1160
    move-result v6

    #@1161
    if-eqz v6, :cond_6f

    #@1163
    .line 1546
    sget-object v6, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1165
    move-object/from16 v0, p2

    #@1167
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@116a
    move-result-object v36

    #@116b
    check-cast v36, Landroid/os/UserHandle;

    #@116d
    .line 1551
    :goto_6f
    move-object/from16 v0, p0

    #@116f
    move-object/from16 v1, v17

    #@1171
    move-object/from16 v2, v36

    #@1173
    invoke-virtual {v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->switchUser(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z

    #@1176
    move-result v61

    #@1177
    .line 1552
    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@117a
    .line 1553
    if-eqz v61, :cond_70

    #@117c
    const/4 v6, 0x1

    #@117d
    :goto_70
    move-object/from16 v0, p3

    #@117f
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@1182
    .line 1554
    const/4 v6, 0x1

    #@1183
    return v6

    #@1184
    .line 1542
    .end local v61    # "_result":Z
    :cond_6e
    const/16 v17, 0x0

    #@1186
    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_6e

    #@1187
    .line 1549
    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :cond_6f
    const/16 v36, 0x0

    #@1189
    .restart local v36    # "_arg1":Landroid/os/UserHandle;
    goto :goto_6f

    #@118a
    .line 1553
    .end local v36    # "_arg1":Landroid/os/UserHandle;
    .restart local v61    # "_result":Z
    :cond_70
    const/4 v6, 0x0

    #@118b
    goto :goto_70

    #@118c
    .line 1558
    .end local v61    # "_result":Z
    :sswitch_5e
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@118f
    move-object/from16 v0, p2

    #@1191
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1194
    .line 1560
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1197
    move-result v6

    #@1198
    if-eqz v6, :cond_71

    #@119a
    .line 1561
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@119c
    move-object/from16 v0, p2

    #@119e
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@11a1
    move-result-object v17

    #@11a2
    check-cast v17, Landroid/content/ComponentName;

    #@11a4
    .line 1567
    :goto_71
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@11a7
    move-result-object v18

    #@11a8
    .line 1568
    .restart local v18    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@11aa
    move-object/from16 v1, v17

    #@11ac
    move-object/from16 v2, v18

    #@11ae
    invoke-virtual {v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->enableSystemApp(Landroid/content/ComponentName;Ljava/lang/String;)V

    #@11b1
    .line 1569
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@11b4
    .line 1570
    const/4 v6, 0x1

    #@11b5
    return v6

    #@11b6
    .line 1564
    .end local v18    # "_arg1":Ljava/lang/String;
    :cond_71
    const/16 v17, 0x0

    #@11b8
    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_71

    #@11b9
    .line 1574
    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :sswitch_5f
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@11bc
    move-object/from16 v0, p2

    #@11be
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@11c1
    .line 1576
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@11c4
    move-result v6

    #@11c5
    if-eqz v6, :cond_72

    #@11c7
    .line 1577
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@11c9
    move-object/from16 v0, p2

    #@11cb
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@11ce
    move-result-object v17

    #@11cf
    check-cast v17, Landroid/content/ComponentName;

    #@11d1
    .line 1583
    :goto_72
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@11d4
    move-result v6

    #@11d5
    if-eqz v6, :cond_73

    #@11d7
    .line 1584
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@11d9
    move-object/from16 v0, p2

    #@11db
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@11de
    move-result-object v30

    #@11df
    check-cast v30, Landroid/content/Intent;

    #@11e1
    .line 1589
    :goto_73
    move-object/from16 v0, p0

    #@11e3
    move-object/from16 v1, v17

    #@11e5
    move-object/from16 v2, v30

    #@11e7
    invoke-virtual {v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->enableSystemAppWithIntent(Landroid/content/ComponentName;Landroid/content/Intent;)I

    #@11ea
    move-result v49

    #@11eb
    .line 1590
    .restart local v49    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@11ee
    .line 1591
    move-object/from16 v0, p3

    #@11f0
    move/from16 v1, v49

    #@11f2
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@11f5
    .line 1592
    const/4 v6, 0x1

    #@11f6
    return v6

    #@11f7
    .line 1580
    .end local v49    # "_result":I
    :cond_72
    const/16 v17, 0x0

    #@11f9
    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_72

    #@11fa
    .line 1587
    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :cond_73
    const/16 v30, 0x0

    #@11fc
    .local v30, "_arg1":Landroid/content/Intent;
    goto :goto_73

    #@11fd
    .line 1596
    .end local v30    # "_arg1":Landroid/content/Intent;
    :sswitch_60
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@1200
    move-object/from16 v0, p2

    #@1202
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1205
    .line 1598
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1208
    move-result v6

    #@1209
    if-eqz v6, :cond_74

    #@120b
    .line 1599
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@120d
    move-object/from16 v0, p2

    #@120f
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1212
    move-result-object v17

    #@1213
    check-cast v17, Landroid/content/ComponentName;

    #@1215
    .line 1605
    :goto_74
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1218
    move-result-object v18

    #@1219
    .line 1607
    .restart local v18    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@121c
    move-result v6

    #@121d
    if-eqz v6, :cond_75

    #@121f
    const/16 v45, 0x1

    #@1221
    .line 1608
    .restart local v45    # "_arg2":Z
    :goto_75
    move-object/from16 v0, p0

    #@1223
    move-object/from16 v1, v17

    #@1225
    move-object/from16 v2, v18

    #@1227
    move/from16 v3, v45

    #@1229
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAccountManagementDisabled(Landroid/content/ComponentName;Ljava/lang/String;Z)V

    #@122c
    .line 1609
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@122f
    .line 1610
    const/4 v6, 0x1

    #@1230
    return v6

    #@1231
    .line 1602
    .end local v18    # "_arg1":Ljava/lang/String;
    .end local v45    # "_arg2":Z
    :cond_74
    const/16 v17, 0x0

    #@1233
    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_74

    #@1234
    .line 1607
    .end local v17    # "_arg0":Landroid/content/ComponentName;
    .restart local v18    # "_arg1":Ljava/lang/String;
    :cond_75
    const/16 v45, 0x0

    #@1236
    .restart local v45    # "_arg2":Z
    goto :goto_75

    #@1237
    .line 1614
    .end local v18    # "_arg1":Ljava/lang/String;
    .end local v45    # "_arg2":Z
    :sswitch_61
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@123a
    move-object/from16 v0, p2

    #@123c
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@123f
    .line 1615
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAccountTypesWithManagementDisabled()[Ljava/lang/String;

    #@1242
    move-result-object v62

    #@1243
    .line 1616
    .local v62, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1246
    .line 1617
    move-object/from16 v0, p3

    #@1248
    move-object/from16 v1, v62

    #@124a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@124d
    .line 1618
    const/4 v6, 0x1

    #@124e
    return v6

    #@124f
    .line 1622
    .end local v62    # "_result":[Ljava/lang/String;
    :sswitch_62
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@1252
    move-object/from16 v0, p2

    #@1254
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1257
    .line 1624
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@125a
    move-result v7

    #@125b
    .line 1625
    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    #@125d
    invoke-virtual {v0, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAccountTypesWithManagementDisabledAsUser(I)[Ljava/lang/String;

    #@1260
    move-result-object v62

    #@1261
    .line 1626
    .restart local v62    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1264
    .line 1627
    move-object/from16 v0, p3

    #@1266
    move-object/from16 v1, v62

    #@1268
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@126b
    .line 1628
    const/4 v6, 0x1

    #@126c
    return v6

    #@126d
    .line 1632
    .end local v7    # "_arg0":I
    .end local v62    # "_result":[Ljava/lang/String;
    :sswitch_63
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@1270
    move-object/from16 v0, p2

    #@1272
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1275
    .line 1634
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1278
    move-result v6

    #@1279
    if-eqz v6, :cond_76

    #@127b
    .line 1635
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@127d
    move-object/from16 v0, p2

    #@127f
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1282
    move-result-object v17

    #@1283
    check-cast v17, Landroid/content/ComponentName;

    #@1285
    .line 1641
    :goto_76
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@1288
    move-result-object v40

    #@1289
    .line 1642
    .restart local v40    # "_arg1":[Ljava/lang/String;
    move-object/from16 v0, p0

    #@128b
    move-object/from16 v1, v17

    #@128d
    move-object/from16 v2, v40

    #@128f
    invoke-virtual {v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setLockTaskPackages(Landroid/content/ComponentName;[Ljava/lang/String;)V

    #@1292
    .line 1643
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1295
    .line 1644
    const/4 v6, 0x1

    #@1296
    return v6

    #@1297
    .line 1638
    .end local v40    # "_arg1":[Ljava/lang/String;
    :cond_76
    const/16 v17, 0x0

    #@1299
    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_76

    #@129a
    .line 1648
    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :sswitch_64
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@129d
    move-object/from16 v0, p2

    #@129f
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@12a2
    .line 1650
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@12a5
    move-result v6

    #@12a6
    if-eqz v6, :cond_77

    #@12a8
    .line 1651
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@12aa
    move-object/from16 v0, p2

    #@12ac
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@12af
    move-result-object v17

    #@12b0
    check-cast v17, Landroid/content/ComponentName;

    #@12b2
    .line 1656
    :goto_77
    move-object/from16 v0, p0

    #@12b4
    move-object/from16 v1, v17

    #@12b6
    invoke-virtual {v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getLockTaskPackages(Landroid/content/ComponentName;)[Ljava/lang/String;

    #@12b9
    move-result-object v62

    #@12ba
    .line 1657
    .restart local v62    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@12bd
    .line 1658
    move-object/from16 v0, p3

    #@12bf
    move-object/from16 v1, v62

    #@12c1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@12c4
    .line 1659
    const/4 v6, 0x1

    #@12c5
    return v6

    #@12c6
    .line 1654
    .end local v62    # "_result":[Ljava/lang/String;
    :cond_77
    const/16 v17, 0x0

    #@12c8
    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_77

    #@12c9
    .line 1663
    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :sswitch_65
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@12cc
    move-object/from16 v0, p2

    #@12ce
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@12d1
    .line 1665
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@12d4
    move-result-object v24

    #@12d5
    .line 1666
    .restart local v24    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@12d7
    move-object/from16 v1, v24

    #@12d9
    invoke-virtual {v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->isLockTaskPermitted(Ljava/lang/String;)Z

    #@12dc
    move-result v61

    #@12dd
    .line 1667
    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@12e0
    .line 1668
    if-eqz v61, :cond_78

    #@12e2
    const/4 v6, 0x1

    #@12e3
    :goto_78
    move-object/from16 v0, p3

    #@12e5
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@12e8
    .line 1669
    const/4 v6, 0x1

    #@12e9
    return v6

    #@12ea
    .line 1668
    :cond_78
    const/4 v6, 0x0

    #@12eb
    goto :goto_78

    #@12ec
    .line 1673
    .end local v24    # "_arg0":Ljava/lang/String;
    .end local v61    # "_result":Z
    :sswitch_66
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@12ef
    move-object/from16 v0, p2

    #@12f1
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@12f4
    .line 1675
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@12f7
    move-result v6

    #@12f8
    if-eqz v6, :cond_79

    #@12fa
    .line 1676
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@12fc
    move-object/from16 v0, p2

    #@12fe
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1301
    move-result-object v17

    #@1302
    check-cast v17, Landroid/content/ComponentName;

    #@1304
    .line 1682
    :goto_79
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1307
    move-result-object v18

    #@1308
    .line 1684
    .restart local v18    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@130b
    move-result-object v19

    #@130c
    .line 1685
    .restart local v19    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    #@130e
    move-object/from16 v1, v17

    #@1310
    move-object/from16 v2, v18

    #@1312
    move-object/from16 v3, v19

    #@1314
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setGlobalSetting(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V

    #@1317
    .line 1686
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@131a
    .line 1687
    const/4 v6, 0x1

    #@131b
    return v6

    #@131c
    .line 1679
    .end local v18    # "_arg1":Ljava/lang/String;
    .end local v19    # "_arg2":Ljava/lang/String;
    :cond_79
    const/16 v17, 0x0

    #@131e
    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_79

    #@131f
    .line 1691
    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :sswitch_67
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@1322
    move-object/from16 v0, p2

    #@1324
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1327
    .line 1693
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@132a
    move-result v6

    #@132b
    if-eqz v6, :cond_7a

    #@132d
    .line 1694
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@132f
    move-object/from16 v0, p2

    #@1331
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1334
    move-result-object v17

    #@1335
    check-cast v17, Landroid/content/ComponentName;

    #@1337
    .line 1700
    :goto_7a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@133a
    move-result-object v18

    #@133b
    .line 1702
    .restart local v18    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@133e
    move-result-object v19

    #@133f
    .line 1703
    .restart local v19    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    #@1341
    move-object/from16 v1, v17

    #@1343
    move-object/from16 v2, v18

    #@1345
    move-object/from16 v3, v19

    #@1347
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setSecureSetting(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V

    #@134a
    .line 1704
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@134d
    .line 1705
    const/4 v6, 0x1

    #@134e
    return v6

    #@134f
    .line 1697
    .end local v18    # "_arg1":Ljava/lang/String;
    .end local v19    # "_arg2":Ljava/lang/String;
    :cond_7a
    const/16 v17, 0x0

    #@1351
    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_7a

    #@1352
    .line 1709
    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :sswitch_68
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@1355
    move-object/from16 v0, p2

    #@1357
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@135a
    .line 1711
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@135d
    move-result v6

    #@135e
    if-eqz v6, :cond_7b

    #@1360
    .line 1712
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1362
    move-object/from16 v0, p2

    #@1364
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1367
    move-result-object v17

    #@1368
    check-cast v17, Landroid/content/ComponentName;

    #@136a
    .line 1718
    :goto_7b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@136d
    move-result v6

    #@136e
    if-eqz v6, :cond_7c

    #@1370
    const/16 v38, 0x1

    #@1372
    .line 1719
    .restart local v38    # "_arg1":Z
    :goto_7c
    move-object/from16 v0, p0

    #@1374
    move-object/from16 v1, v17

    #@1376
    move/from16 v2, v38

    #@1378
    invoke-virtual {v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setMasterVolumeMuted(Landroid/content/ComponentName;Z)V

    #@137b
    .line 1720
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@137e
    .line 1721
    const/4 v6, 0x1

    #@137f
    return v6

    #@1380
    .line 1715
    .end local v38    # "_arg1":Z
    :cond_7b
    const/16 v17, 0x0

    #@1382
    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_7b

    #@1383
    .line 1718
    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :cond_7c
    const/16 v38, 0x0

    #@1385
    .restart local v38    # "_arg1":Z
    goto :goto_7c

    #@1386
    .line 1725
    .end local v38    # "_arg1":Z
    :sswitch_69
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@1389
    move-object/from16 v0, p2

    #@138b
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@138e
    .line 1727
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1391
    move-result v6

    #@1392
    if-eqz v6, :cond_7d

    #@1394
    .line 1728
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1396
    move-object/from16 v0, p2

    #@1398
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@139b
    move-result-object v17

    #@139c
    check-cast v17, Landroid/content/ComponentName;

    #@139e
    .line 1733
    :goto_7d
    move-object/from16 v0, p0

    #@13a0
    move-object/from16 v1, v17

    #@13a2
    invoke-virtual {v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->isMasterVolumeMuted(Landroid/content/ComponentName;)Z

    #@13a5
    move-result v61

    #@13a6
    .line 1734
    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@13a9
    .line 1735
    if-eqz v61, :cond_7e

    #@13ab
    const/4 v6, 0x1

    #@13ac
    :goto_7e
    move-object/from16 v0, p3

    #@13ae
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@13b1
    .line 1736
    const/4 v6, 0x1

    #@13b2
    return v6

    #@13b3
    .line 1731
    .end local v61    # "_result":Z
    :cond_7d
    const/16 v17, 0x0

    #@13b5
    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_7d

    #@13b6
    .line 1735
    .end local v17    # "_arg0":Landroid/content/ComponentName;
    .restart local v61    # "_result":Z
    :cond_7e
    const/4 v6, 0x0

    #@13b7
    goto :goto_7e

    #@13b8
    .line 1740
    .end local v61    # "_result":Z
    :sswitch_6a
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@13bb
    move-object/from16 v0, p2

    #@13bd
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@13c0
    .line 1742
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@13c3
    move-result v6

    #@13c4
    if-eqz v6, :cond_7f

    #@13c6
    const/16 v25, 0x1

    #@13c8
    .line 1744
    .local v25, "_arg0":Z
    :goto_7f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@13cb
    move-result-object v18

    #@13cc
    .line 1746
    .restart local v18    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@13cf
    move-result v9

    #@13d0
    .line 1747
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    #@13d2
    move/from16 v1, v25

    #@13d4
    move-object/from16 v2, v18

    #@13d6
    invoke-virtual {v0, v1, v2, v9}, Landroid/app/admin/IDevicePolicyManager$Stub;->notifyLockTaskModeChanged(ZLjava/lang/String;I)V

    #@13d9
    .line 1748
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@13dc
    .line 1749
    const/4 v6, 0x1

    #@13dd
    return v6

    #@13de
    .line 1742
    .end local v9    # "_arg2":I
    .end local v18    # "_arg1":Ljava/lang/String;
    .end local v25    # "_arg0":Z
    :cond_7f
    const/16 v25, 0x0

    #@13e0
    .restart local v25    # "_arg0":Z
    goto :goto_7f

    #@13e1
    .line 1753
    .end local v25    # "_arg0":Z
    :sswitch_6b
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@13e4
    move-object/from16 v0, p2

    #@13e6
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@13e9
    .line 1755
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@13ec
    move-result v6

    #@13ed
    if-eqz v6, :cond_80

    #@13ef
    .line 1756
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@13f1
    move-object/from16 v0, p2

    #@13f3
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@13f6
    move-result-object v17

    #@13f7
    check-cast v17, Landroid/content/ComponentName;

    #@13f9
    .line 1762
    :goto_80
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@13fc
    move-result-object v18

    #@13fd
    .line 1764
    .restart local v18    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1400
    move-result v6

    #@1401
    if-eqz v6, :cond_81

    #@1403
    const/16 v45, 0x1

    #@1405
    .line 1765
    .restart local v45    # "_arg2":Z
    :goto_81
    move-object/from16 v0, p0

    #@1407
    move-object/from16 v1, v17

    #@1409
    move-object/from16 v2, v18

    #@140b
    move/from16 v3, v45

    #@140d
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setUninstallBlocked(Landroid/content/ComponentName;Ljava/lang/String;Z)V

    #@1410
    .line 1766
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1413
    .line 1767
    const/4 v6, 0x1

    #@1414
    return v6

    #@1415
    .line 1759
    .end local v18    # "_arg1":Ljava/lang/String;
    .end local v45    # "_arg2":Z
    :cond_80
    const/16 v17, 0x0

    #@1417
    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_80

    #@1418
    .line 1764
    .end local v17    # "_arg0":Landroid/content/ComponentName;
    .restart local v18    # "_arg1":Ljava/lang/String;
    :cond_81
    const/16 v45, 0x0

    #@141a
    .restart local v45    # "_arg2":Z
    goto :goto_81

    #@141b
    .line 1771
    .end local v18    # "_arg1":Ljava/lang/String;
    .end local v45    # "_arg2":Z
    :sswitch_6c
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@141e
    move-object/from16 v0, p2

    #@1420
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1423
    .line 1773
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1426
    move-result v6

    #@1427
    if-eqz v6, :cond_82

    #@1429
    .line 1774
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@142b
    move-object/from16 v0, p2

    #@142d
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1430
    move-result-object v17

    #@1431
    check-cast v17, Landroid/content/ComponentName;

    #@1433
    .line 1780
    :goto_82
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1436
    move-result-object v18

    #@1437
    .line 1781
    .restart local v18    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@1439
    move-object/from16 v1, v17

    #@143b
    move-object/from16 v2, v18

    #@143d
    invoke-virtual {v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->isUninstallBlocked(Landroid/content/ComponentName;Ljava/lang/String;)Z

    #@1440
    move-result v61

    #@1441
    .line 1782
    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1444
    .line 1783
    if-eqz v61, :cond_83

    #@1446
    const/4 v6, 0x1

    #@1447
    :goto_83
    move-object/from16 v0, p3

    #@1449
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@144c
    .line 1784
    const/4 v6, 0x1

    #@144d
    return v6

    #@144e
    .line 1777
    .end local v18    # "_arg1":Ljava/lang/String;
    .end local v61    # "_result":Z
    :cond_82
    const/16 v17, 0x0

    #@1450
    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_82

    #@1451
    .line 1783
    .end local v17    # "_arg0":Landroid/content/ComponentName;
    .restart local v18    # "_arg1":Ljava/lang/String;
    .restart local v61    # "_result":Z
    :cond_83
    const/4 v6, 0x0

    #@1452
    goto :goto_83

    #@1453
    .line 1788
    .end local v18    # "_arg1":Ljava/lang/String;
    .end local v61    # "_result":Z
    :sswitch_6d
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@1456
    move-object/from16 v0, p2

    #@1458
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@145b
    .line 1790
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@145e
    move-result v6

    #@145f
    if-eqz v6, :cond_84

    #@1461
    .line 1791
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1463
    move-object/from16 v0, p2

    #@1465
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1468
    move-result-object v17

    #@1469
    check-cast v17, Landroid/content/ComponentName;

    #@146b
    .line 1797
    :goto_84
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@146e
    move-result v6

    #@146f
    if-eqz v6, :cond_85

    #@1471
    const/16 v38, 0x1

    #@1473
    .line 1798
    .restart local v38    # "_arg1":Z
    :goto_85
    move-object/from16 v0, p0

    #@1475
    move-object/from16 v1, v17

    #@1477
    move/from16 v2, v38

    #@1479
    invoke-virtual {v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setCrossProfileCallerIdDisabled(Landroid/content/ComponentName;Z)V

    #@147c
    .line 1799
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@147f
    .line 1800
    const/4 v6, 0x1

    #@1480
    return v6

    #@1481
    .line 1794
    .end local v38    # "_arg1":Z
    :cond_84
    const/16 v17, 0x0

    #@1483
    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_84

    #@1484
    .line 1797
    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :cond_85
    const/16 v38, 0x0

    #@1486
    .restart local v38    # "_arg1":Z
    goto :goto_85

    #@1487
    .line 1804
    .end local v38    # "_arg1":Z
    :sswitch_6e
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@148a
    move-object/from16 v0, p2

    #@148c
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@148f
    .line 1806
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1492
    move-result v6

    #@1493
    if-eqz v6, :cond_86

    #@1495
    .line 1807
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1497
    move-object/from16 v0, p2

    #@1499
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@149c
    move-result-object v17

    #@149d
    check-cast v17, Landroid/content/ComponentName;

    #@149f
    .line 1812
    :goto_86
    move-object/from16 v0, p0

    #@14a1
    move-object/from16 v1, v17

    #@14a3
    invoke-virtual {v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCrossProfileCallerIdDisabled(Landroid/content/ComponentName;)Z

    #@14a6
    move-result v61

    #@14a7
    .line 1813
    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@14aa
    .line 1814
    if-eqz v61, :cond_87

    #@14ac
    const/4 v6, 0x1

    #@14ad
    :goto_87
    move-object/from16 v0, p3

    #@14af
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@14b2
    .line 1815
    const/4 v6, 0x1

    #@14b3
    return v6

    #@14b4
    .line 1810
    .end local v61    # "_result":Z
    :cond_86
    const/16 v17, 0x0

    #@14b6
    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_86

    #@14b7
    .line 1814
    .end local v17    # "_arg0":Landroid/content/ComponentName;
    .restart local v61    # "_result":Z
    :cond_87
    const/4 v6, 0x0

    #@14b8
    goto :goto_87

    #@14b9
    .line 1819
    .end local v61    # "_result":Z
    :sswitch_6f
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@14bc
    move-object/from16 v0, p2

    #@14be
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@14c1
    .line 1821
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@14c4
    move-result v7

    #@14c5
    .line 1822
    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    #@14c7
    invoke-virtual {v0, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCrossProfileCallerIdDisabledForUser(I)Z

    #@14ca
    move-result v61

    #@14cb
    .line 1823
    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@14ce
    .line 1824
    if-eqz v61, :cond_88

    #@14d0
    const/4 v6, 0x1

    #@14d1
    :goto_88
    move-object/from16 v0, p3

    #@14d3
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@14d6
    .line 1825
    const/4 v6, 0x1

    #@14d7
    return v6

    #@14d8
    .line 1824
    :cond_88
    const/4 v6, 0x0

    #@14d9
    goto :goto_88

    #@14da
    .line 1829
    .end local v7    # "_arg0":I
    .end local v61    # "_result":Z
    :sswitch_70
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@14dd
    move-object/from16 v0, p2

    #@14df
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@14e2
    .line 1831
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@14e5
    move-result-object v24

    #@14e6
    .line 1833
    .restart local v24    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@14e9
    move-result-wide v26

    #@14ea
    .line 1835
    .restart local v26    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@14ed
    move-result v6

    #@14ee
    if-eqz v6, :cond_89

    #@14f0
    .line 1836
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@14f2
    move-object/from16 v0, p2

    #@14f4
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@14f7
    move-result-object v42

    #@14f8
    check-cast v42, Landroid/content/Intent;

    #@14fa
    .line 1841
    :goto_89
    move-object/from16 v0, p0

    #@14fc
    move-object/from16 v1, v24

    #@14fe
    move-wide/from16 v2, v26

    #@1500
    move-object/from16 v4, v42

    #@1502
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->startManagedQuickContact(Ljava/lang/String;JLandroid/content/Intent;)V

    #@1505
    .line 1842
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1508
    .line 1843
    const/4 v6, 0x1

    #@1509
    return v6

    #@150a
    .line 1839
    :cond_89
    const/16 v42, 0x0

    #@150c
    .local v42, "_arg2":Landroid/content/Intent;
    goto :goto_89

    #@150d
    .line 1847
    .end local v24    # "_arg0":Ljava/lang/String;
    .end local v26    # "_arg1":J
    .end local v42    # "_arg2":Landroid/content/Intent;
    :sswitch_71
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@1510
    move-object/from16 v0, p2

    #@1512
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1515
    .line 1849
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1518
    move-result v6

    #@1519
    if-eqz v6, :cond_8a

    #@151b
    .line 1850
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@151d
    move-object/from16 v0, p2

    #@151f
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1522
    move-result-object v17

    #@1523
    check-cast v17, Landroid/content/ComponentName;

    #@1525
    .line 1856
    :goto_8a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1528
    move-result v6

    #@1529
    if-eqz v6, :cond_8b

    #@152b
    const/16 v38, 0x1

    #@152d
    .line 1857
    .restart local v38    # "_arg1":Z
    :goto_8b
    move-object/from16 v0, p0

    #@152f
    move-object/from16 v1, v17

    #@1531
    move/from16 v2, v38

    #@1533
    invoke-virtual {v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setBluetoothContactSharingDisabled(Landroid/content/ComponentName;Z)V

    #@1536
    .line 1858
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1539
    .line 1859
    const/4 v6, 0x1

    #@153a
    return v6

    #@153b
    .line 1853
    .end local v38    # "_arg1":Z
    :cond_8a
    const/16 v17, 0x0

    #@153d
    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_8a

    #@153e
    .line 1856
    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :cond_8b
    const/16 v38, 0x0

    #@1540
    .restart local v38    # "_arg1":Z
    goto :goto_8b

    #@1541
    .line 1863
    .end local v38    # "_arg1":Z
    :sswitch_72
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@1544
    move-object/from16 v0, p2

    #@1546
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1549
    .line 1865
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@154c
    move-result v6

    #@154d
    if-eqz v6, :cond_8c

    #@154f
    .line 1866
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1551
    move-object/from16 v0, p2

    #@1553
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1556
    move-result-object v17

    #@1557
    check-cast v17, Landroid/content/ComponentName;

    #@1559
    .line 1871
    :goto_8c
    move-object/from16 v0, p0

    #@155b
    move-object/from16 v1, v17

    #@155d
    invoke-virtual {v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getBluetoothContactSharingDisabled(Landroid/content/ComponentName;)Z

    #@1560
    move-result v61

    #@1561
    .line 1872
    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1564
    .line 1873
    if-eqz v61, :cond_8d

    #@1566
    const/4 v6, 0x1

    #@1567
    :goto_8d
    move-object/from16 v0, p3

    #@1569
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@156c
    .line 1874
    const/4 v6, 0x1

    #@156d
    return v6

    #@156e
    .line 1869
    .end local v61    # "_result":Z
    :cond_8c
    const/16 v17, 0x0

    #@1570
    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_8c

    #@1571
    .line 1873
    .end local v17    # "_arg0":Landroid/content/ComponentName;
    .restart local v61    # "_result":Z
    :cond_8d
    const/4 v6, 0x0

    #@1572
    goto :goto_8d

    #@1573
    .line 1878
    .end local v61    # "_result":Z
    :sswitch_73
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@1576
    move-object/from16 v0, p2

    #@1578
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@157b
    .line 1880
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@157e
    move-result v7

    #@157f
    .line 1881
    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    #@1581
    invoke-virtual {v0, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->getBluetoothContactSharingDisabledForUser(I)Z

    #@1584
    move-result v61

    #@1585
    .line 1882
    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1588
    .line 1883
    if-eqz v61, :cond_8e

    #@158a
    const/4 v6, 0x1

    #@158b
    :goto_8e
    move-object/from16 v0, p3

    #@158d
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@1590
    .line 1884
    const/4 v6, 0x1

    #@1591
    return v6

    #@1592
    .line 1883
    :cond_8e
    const/4 v6, 0x0

    #@1593
    goto :goto_8e

    #@1594
    .line 1888
    .end local v7    # "_arg0":I
    .end local v61    # "_result":Z
    :sswitch_74
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@1597
    move-object/from16 v0, p2

    #@1599
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@159c
    .line 1890
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@159f
    move-result v6

    #@15a0
    if-eqz v6, :cond_8f

    #@15a2
    .line 1891
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@15a4
    move-object/from16 v0, p2

    #@15a6
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@15a9
    move-result-object v17

    #@15aa
    check-cast v17, Landroid/content/ComponentName;

    #@15ac
    .line 1897
    :goto_8f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@15af
    move-result v6

    #@15b0
    if-eqz v6, :cond_90

    #@15b2
    .line 1898
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@15b4
    move-object/from16 v0, p2

    #@15b6
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@15b9
    move-result-object v29

    #@15ba
    check-cast v29, Landroid/content/ComponentName;

    #@15bc
    .line 1904
    :goto_90
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@15bf
    move-result v6

    #@15c0
    if-eqz v6, :cond_91

    #@15c2
    .line 1905
    sget-object v6, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@15c4
    move-object/from16 v0, p2

    #@15c6
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@15c9
    move-result-object v44

    #@15ca
    check-cast v44, Landroid/os/PersistableBundle;

    #@15cc
    .line 1910
    :goto_91
    move-object/from16 v0, p0

    #@15ce
    move-object/from16 v1, v17

    #@15d0
    move-object/from16 v2, v29

    #@15d2
    move-object/from16 v3, v44

    #@15d4
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/os/PersistableBundle;)V

    #@15d7
    .line 1911
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@15da
    .line 1912
    const/4 v6, 0x1

    #@15db
    return v6

    #@15dc
    .line 1894
    :cond_8f
    const/16 v17, 0x0

    #@15de
    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_8f

    #@15df
    .line 1901
    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :cond_90
    const/16 v29, 0x0

    #@15e1
    .restart local v29    # "_arg1":Landroid/content/ComponentName;
    goto :goto_90

    #@15e2
    .line 1908
    .end local v29    # "_arg1":Landroid/content/ComponentName;
    :cond_91
    const/16 v44, 0x0

    #@15e4
    .local v44, "_arg2":Landroid/os/PersistableBundle;
    goto :goto_91

    #@15e5
    .line 1916
    .end local v44    # "_arg2":Landroid/os/PersistableBundle;
    :sswitch_75
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@15e8
    move-object/from16 v0, p2

    #@15ea
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@15ed
    .line 1918
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@15f0
    move-result v6

    #@15f1
    if-eqz v6, :cond_92

    #@15f3
    .line 1919
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@15f5
    move-object/from16 v0, p2

    #@15f7
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@15fa
    move-result-object v17

    #@15fb
    check-cast v17, Landroid/content/ComponentName;

    #@15fd
    .line 1925
    :goto_92
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1600
    move-result v6

    #@1601
    if-eqz v6, :cond_93

    #@1603
    .line 1926
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1605
    move-object/from16 v0, p2

    #@1607
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@160a
    move-result-object v29

    #@160b
    check-cast v29, Landroid/content/ComponentName;

    #@160d
    .line 1932
    :goto_93
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1610
    move-result v9

    #@1611
    .line 1933
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    #@1613
    move-object/from16 v1, v17

    #@1615
    move-object/from16 v2, v29

    #@1617
    invoke-virtual {v0, v1, v2, v9}, Landroid/app/admin/IDevicePolicyManager$Stub;->getTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;I)Ljava/util/List;

    #@161a
    move-result-object v59

    #@161b
    .line 1934
    .local v59, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/PersistableBundle;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@161e
    .line 1935
    move-object/from16 v0, p3

    #@1620
    move-object/from16 v1, v59

    #@1622
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@1625
    .line 1936
    const/4 v6, 0x1

    #@1626
    return v6

    #@1627
    .line 1922
    .end local v9    # "_arg2":I
    .end local v59    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/PersistableBundle;>;"
    :cond_92
    const/16 v17, 0x0

    #@1629
    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_92

    #@162a
    .line 1929
    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :cond_93
    const/16 v29, 0x0

    #@162c
    .restart local v29    # "_arg1":Landroid/content/ComponentName;
    goto :goto_93

    #@162d
    .line 1940
    .end local v29    # "_arg1":Landroid/content/ComponentName;
    :sswitch_76
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@1630
    move-object/from16 v0, p2

    #@1632
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1635
    .line 1942
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1638
    move-result v6

    #@1639
    if-eqz v6, :cond_94

    #@163b
    .line 1943
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@163d
    move-object/from16 v0, p2

    #@163f
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1642
    move-result-object v17

    #@1643
    check-cast v17, Landroid/content/ComponentName;

    #@1645
    .line 1949
    :goto_94
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1648
    move-result-object v18

    #@1649
    .line 1950
    .restart local v18    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@164b
    move-object/from16 v1, v17

    #@164d
    move-object/from16 v2, v18

    #@164f
    invoke-virtual {v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->addCrossProfileWidgetProvider(Landroid/content/ComponentName;Ljava/lang/String;)Z

    #@1652
    move-result v61

    #@1653
    .line 1951
    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1656
    .line 1952
    if-eqz v61, :cond_95

    #@1658
    const/4 v6, 0x1

    #@1659
    :goto_95
    move-object/from16 v0, p3

    #@165b
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@165e
    .line 1953
    const/4 v6, 0x1

    #@165f
    return v6

    #@1660
    .line 1946
    .end local v18    # "_arg1":Ljava/lang/String;
    .end local v61    # "_result":Z
    :cond_94
    const/16 v17, 0x0

    #@1662
    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_94

    #@1663
    .line 1952
    .end local v17    # "_arg0":Landroid/content/ComponentName;
    .restart local v18    # "_arg1":Ljava/lang/String;
    .restart local v61    # "_result":Z
    :cond_95
    const/4 v6, 0x0

    #@1664
    goto :goto_95

    #@1665
    .line 1957
    .end local v18    # "_arg1":Ljava/lang/String;
    .end local v61    # "_result":Z
    :sswitch_77
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@1668
    move-object/from16 v0, p2

    #@166a
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@166d
    .line 1959
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1670
    move-result v6

    #@1671
    if-eqz v6, :cond_96

    #@1673
    .line 1960
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1675
    move-object/from16 v0, p2

    #@1677
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@167a
    move-result-object v17

    #@167b
    check-cast v17, Landroid/content/ComponentName;

    #@167d
    .line 1966
    :goto_96
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1680
    move-result-object v18

    #@1681
    .line 1967
    .restart local v18    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@1683
    move-object/from16 v1, v17

    #@1685
    move-object/from16 v2, v18

    #@1687
    invoke-virtual {v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->removeCrossProfileWidgetProvider(Landroid/content/ComponentName;Ljava/lang/String;)Z

    #@168a
    move-result v61

    #@168b
    .line 1968
    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@168e
    .line 1969
    if-eqz v61, :cond_97

    #@1690
    const/4 v6, 0x1

    #@1691
    :goto_97
    move-object/from16 v0, p3

    #@1693
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@1696
    .line 1970
    const/4 v6, 0x1

    #@1697
    return v6

    #@1698
    .line 1963
    .end local v18    # "_arg1":Ljava/lang/String;
    .end local v61    # "_result":Z
    :cond_96
    const/16 v17, 0x0

    #@169a
    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_96

    #@169b
    .line 1969
    .end local v17    # "_arg0":Landroid/content/ComponentName;
    .restart local v18    # "_arg1":Ljava/lang/String;
    .restart local v61    # "_result":Z
    :cond_97
    const/4 v6, 0x0

    #@169c
    goto :goto_97

    #@169d
    .line 1974
    .end local v18    # "_arg1":Ljava/lang/String;
    .end local v61    # "_result":Z
    :sswitch_78
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@16a0
    move-object/from16 v0, p2

    #@16a2
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16a5
    .line 1976
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@16a8
    move-result v6

    #@16a9
    if-eqz v6, :cond_98

    #@16ab
    .line 1977
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@16ad
    move-object/from16 v0, p2

    #@16af
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@16b2
    move-result-object v17

    #@16b3
    check-cast v17, Landroid/content/ComponentName;

    #@16b5
    .line 1982
    :goto_98
    move-object/from16 v0, p0

    #@16b7
    move-object/from16 v1, v17

    #@16b9
    invoke-virtual {v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCrossProfileWidgetProviders(Landroid/content/ComponentName;)Ljava/util/List;

    #@16bc
    move-result-object v60

    #@16bd
    .line 1983
    .local v60, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@16c0
    .line 1984
    move-object/from16 v0, p3

    #@16c2
    move-object/from16 v1, v60

    #@16c4
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    #@16c7
    .line 1985
    const/4 v6, 0x1

    #@16c8
    return v6

    #@16c9
    .line 1980
    .end local v60    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_98
    const/16 v17, 0x0

    #@16cb
    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_98

    #@16cc
    .line 1989
    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :sswitch_79
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@16cf
    move-object/from16 v0, p2

    #@16d1
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16d4
    .line 1991
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@16d7
    move-result v6

    #@16d8
    if-eqz v6, :cond_99

    #@16da
    .line 1992
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@16dc
    move-object/from16 v0, p2

    #@16de
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@16e1
    move-result-object v17

    #@16e2
    check-cast v17, Landroid/content/ComponentName;

    #@16e4
    .line 1998
    :goto_99
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@16e7
    move-result v6

    #@16e8
    if-eqz v6, :cond_9a

    #@16ea
    const/16 v38, 0x1

    #@16ec
    .line 1999
    .restart local v38    # "_arg1":Z
    :goto_9a
    move-object/from16 v0, p0

    #@16ee
    move-object/from16 v1, v17

    #@16f0
    move/from16 v2, v38

    #@16f2
    invoke-virtual {v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAutoTimeRequired(Landroid/content/ComponentName;Z)V

    #@16f5
    .line 2000
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@16f8
    .line 2001
    const/4 v6, 0x1

    #@16f9
    return v6

    #@16fa
    .line 1995
    .end local v38    # "_arg1":Z
    :cond_99
    const/16 v17, 0x0

    #@16fc
    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_99

    #@16fd
    .line 1998
    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :cond_9a
    const/16 v38, 0x0

    #@16ff
    .restart local v38    # "_arg1":Z
    goto :goto_9a

    #@1700
    .line 2005
    .end local v38    # "_arg1":Z
    :sswitch_7a
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@1703
    move-object/from16 v0, p2

    #@1705
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1708
    .line 2006
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAutoTimeRequired()Z

    #@170b
    move-result v61

    #@170c
    .line 2007
    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@170f
    .line 2008
    if-eqz v61, :cond_9b

    #@1711
    const/4 v6, 0x1

    #@1712
    :goto_9b
    move-object/from16 v0, p3

    #@1714
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@1717
    .line 2009
    const/4 v6, 0x1

    #@1718
    return v6

    #@1719
    .line 2008
    :cond_9b
    const/4 v6, 0x0

    #@171a
    goto :goto_9b

    #@171b
    .line 2013
    .end local v61    # "_result":Z
    :sswitch_7b
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@171e
    move-object/from16 v0, p2

    #@1720
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1723
    .line 2015
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1726
    move-result v6

    #@1727
    if-eqz v6, :cond_9c

    #@1729
    .line 2016
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@172b
    move-object/from16 v0, p2

    #@172d
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1730
    move-result-object v17

    #@1731
    check-cast v17, Landroid/content/ComponentName;

    #@1733
    .line 2022
    :goto_9c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1736
    move-result v8

    #@1737
    .line 2023
    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    #@1739
    move-object/from16 v1, v17

    #@173b
    invoke-virtual {v0, v1, v8}, Landroid/app/admin/IDevicePolicyManager$Stub;->isRemovingAdmin(Landroid/content/ComponentName;I)Z

    #@173e
    move-result v61

    #@173f
    .line 2024
    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1742
    .line 2025
    if-eqz v61, :cond_9d

    #@1744
    const/4 v6, 0x1

    #@1745
    :goto_9d
    move-object/from16 v0, p3

    #@1747
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@174a
    .line 2026
    const/4 v6, 0x1

    #@174b
    return v6

    #@174c
    .line 2019
    .end local v8    # "_arg1":I
    .end local v61    # "_result":Z
    :cond_9c
    const/16 v17, 0x0

    #@174e
    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_9c

    #@174f
    .line 2025
    .end local v17    # "_arg0":Landroid/content/ComponentName;
    .restart local v8    # "_arg1":I
    .restart local v61    # "_result":Z
    :cond_9d
    const/4 v6, 0x0

    #@1750
    goto :goto_9d

    #@1751
    .line 2030
    .end local v8    # "_arg1":I
    .end local v61    # "_result":Z
    :sswitch_7c
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@1754
    move-object/from16 v0, p2

    #@1756
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1759
    .line 2032
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@175c
    move-result v6

    #@175d
    if-eqz v6, :cond_9e

    #@175f
    .line 2033
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1761
    move-object/from16 v0, p2

    #@1763
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1766
    move-result-object v17

    #@1767
    check-cast v17, Landroid/content/ComponentName;

    #@1769
    .line 2038
    :goto_9e
    move-object/from16 v0, p0

    #@176b
    move-object/from16 v1, v17

    #@176d
    invoke-virtual {v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setUserEnabled(Landroid/content/ComponentName;)Z

    #@1770
    move-result v61

    #@1771
    .line 2039
    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1774
    .line 2040
    if-eqz v61, :cond_9f

    #@1776
    const/4 v6, 0x1

    #@1777
    :goto_9f
    move-object/from16 v0, p3

    #@1779
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@177c
    .line 2041
    const/4 v6, 0x1

    #@177d
    return v6

    #@177e
    .line 2036
    .end local v61    # "_result":Z
    :cond_9e
    const/16 v17, 0x0

    #@1780
    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_9e

    #@1781
    .line 2040
    .end local v17    # "_arg0":Landroid/content/ComponentName;
    .restart local v61    # "_result":Z
    :cond_9f
    const/4 v6, 0x0

    #@1782
    goto :goto_9f

    #@1783
    .line 2045
    .end local v61    # "_result":Z
    :sswitch_7d
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@1786
    move-object/from16 v0, p2

    #@1788
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@178b
    .line 2047
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@178e
    move-result-object v24

    #@178f
    .line 2048
    .restart local v24    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    #@1791
    move-object/from16 v1, v24

    #@1793
    invoke-virtual {v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->isDeviceInitializer(Ljava/lang/String;)Z

    #@1796
    move-result v61

    #@1797
    .line 2049
    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@179a
    .line 2050
    if-eqz v61, :cond_a0

    #@179c
    const/4 v6, 0x1

    #@179d
    :goto_a0
    move-object/from16 v0, p3

    #@179f
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@17a2
    .line 2051
    const/4 v6, 0x1

    #@17a3
    return v6

    #@17a4
    .line 2050
    :cond_a0
    const/4 v6, 0x0

    #@17a5
    goto :goto_a0

    #@17a6
    .line 2055
    .end local v24    # "_arg0":Ljava/lang/String;
    .end local v61    # "_result":Z
    :sswitch_7e
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@17a9
    move-object/from16 v0, p2

    #@17ab
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@17ae
    .line 2057
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@17b1
    move-result v6

    #@17b2
    if-eqz v6, :cond_a1

    #@17b4
    .line 2058
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@17b6
    move-object/from16 v0, p2

    #@17b8
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@17bb
    move-result-object v17

    #@17bc
    check-cast v17, Landroid/content/ComponentName;

    #@17be
    .line 2063
    :goto_a1
    move-object/from16 v0, p0

    #@17c0
    move-object/from16 v1, v17

    #@17c2
    invoke-virtual {v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->clearDeviceInitializer(Landroid/content/ComponentName;)V

    #@17c5
    .line 2064
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@17c8
    .line 2065
    const/4 v6, 0x1

    #@17c9
    return v6

    #@17ca
    .line 2061
    :cond_a1
    const/16 v17, 0x0

    #@17cc
    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_a1

    #@17cd
    .line 2069
    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :sswitch_7f
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@17d0
    move-object/from16 v0, p2

    #@17d2
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@17d5
    .line 2071
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@17d8
    move-result v6

    #@17d9
    if-eqz v6, :cond_a2

    #@17db
    .line 2072
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@17dd
    move-object/from16 v0, p2

    #@17df
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@17e2
    move-result-object v17

    #@17e3
    check-cast v17, Landroid/content/ComponentName;

    #@17e5
    .line 2078
    :goto_a2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@17e8
    move-result v6

    #@17e9
    if-eqz v6, :cond_a3

    #@17eb
    .line 2079
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@17ed
    move-object/from16 v0, p2

    #@17ef
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@17f2
    move-result-object v29

    #@17f3
    check-cast v29, Landroid/content/ComponentName;

    #@17f5
    .line 2084
    :goto_a3
    move-object/from16 v0, p0

    #@17f7
    move-object/from16 v1, v17

    #@17f9
    move-object/from16 v2, v29

    #@17fb
    invoke-virtual {v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setDeviceInitializer(Landroid/content/ComponentName;Landroid/content/ComponentName;)Z

    #@17fe
    move-result v61

    #@17ff
    .line 2085
    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1802
    .line 2086
    if-eqz v61, :cond_a4

    #@1804
    const/4 v6, 0x1

    #@1805
    :goto_a4
    move-object/from16 v0, p3

    #@1807
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@180a
    .line 2087
    const/4 v6, 0x1

    #@180b
    return v6

    #@180c
    .line 2075
    .end local v61    # "_result":Z
    :cond_a2
    const/16 v17, 0x0

    #@180e
    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_a2

    #@180f
    .line 2082
    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :cond_a3
    const/16 v29, 0x0

    #@1811
    .restart local v29    # "_arg1":Landroid/content/ComponentName;
    goto :goto_a3

    #@1812
    .line 2086
    .end local v29    # "_arg1":Landroid/content/ComponentName;
    .restart local v61    # "_result":Z
    :cond_a4
    const/4 v6, 0x0

    #@1813
    goto :goto_a4

    #@1814
    .line 2091
    .end local v61    # "_result":Z
    :sswitch_80
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@1817
    move-object/from16 v0, p2

    #@1819
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@181c
    .line 2092
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getDeviceInitializer()Ljava/lang/String;

    #@181f
    move-result-object v56

    #@1820
    .line 2093
    .restart local v56    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1823
    .line 2094
    move-object/from16 v0, p3

    #@1825
    move-object/from16 v1, v56

    #@1827
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@182a
    .line 2095
    const/4 v6, 0x1

    #@182b
    return v6

    #@182c
    .line 2099
    .end local v56    # "_result":Ljava/lang/String;
    :sswitch_81
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@182f
    move-object/from16 v0, p2

    #@1831
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1834
    .line 2100
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getDeviceInitializerComponent()Landroid/content/ComponentName;

    #@1837
    move-result-object v53

    #@1838
    .line 2101
    .restart local v53    # "_result":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@183b
    .line 2102
    if-eqz v53, :cond_a5

    #@183d
    .line 2103
    const/4 v6, 0x1

    #@183e
    move-object/from16 v0, p3

    #@1840
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@1843
    .line 2104
    const/4 v6, 0x1

    #@1844
    move-object/from16 v0, v53

    #@1846
    move-object/from16 v1, p3

    #@1848
    invoke-virtual {v0, v1, v6}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    #@184b
    .line 2109
    :goto_a5
    const/4 v6, 0x1

    #@184c
    return v6

    #@184d
    .line 2107
    :cond_a5
    const/4 v6, 0x0

    #@184e
    move-object/from16 v0, p3

    #@1850
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@1853
    goto :goto_a5

    #@1854
    .line 2113
    .end local v53    # "_result":Landroid/content/ComponentName;
    :sswitch_82
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@1857
    move-object/from16 v0, p2

    #@1859
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@185c
    .line 2115
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@185f
    move-result v6

    #@1860
    if-eqz v6, :cond_a6

    #@1862
    .line 2116
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1864
    move-object/from16 v0, p2

    #@1866
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1869
    move-result-object v17

    #@186a
    check-cast v17, Landroid/content/ComponentName;

    #@186c
    .line 2122
    :goto_a6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@186f
    move-result v6

    #@1870
    if-eqz v6, :cond_a7

    #@1872
    .line 2123
    sget-object v6, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1874
    move-object/from16 v0, p2

    #@1876
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1879
    move-result-object v32

    #@187a
    check-cast v32, Landroid/graphics/Bitmap;

    #@187c
    .line 2128
    :goto_a7
    move-object/from16 v0, p0

    #@187e
    move-object/from16 v1, v17

    #@1880
    move-object/from16 v2, v32

    #@1882
    invoke-virtual {v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setUserIcon(Landroid/content/ComponentName;Landroid/graphics/Bitmap;)V

    #@1885
    .line 2129
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1888
    .line 2130
    const/4 v6, 0x1

    #@1889
    return v6

    #@188a
    .line 2119
    :cond_a6
    const/16 v17, 0x0

    #@188c
    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_a6

    #@188d
    .line 2126
    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :cond_a7
    const/16 v32, 0x0

    #@188f
    .local v32, "_arg1":Landroid/graphics/Bitmap;
    goto :goto_a7

    #@1890
    .line 2134
    .end local v32    # "_arg1":Landroid/graphics/Bitmap;
    :sswitch_83
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@1893
    move-object/from16 v0, p2

    #@1895
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1898
    .line 2136
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@189b
    move-result v6

    #@189c
    if-eqz v6, :cond_a8

    #@189e
    .line 2137
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@18a0
    move-object/from16 v0, p2

    #@18a2
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@18a5
    move-result-object v17

    #@18a6
    check-cast v17, Landroid/content/ComponentName;

    #@18a8
    .line 2143
    :goto_a8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@18ab
    move-result v6

    #@18ac
    if-eqz v6, :cond_a9

    #@18ae
    .line 2144
    sget-object v6, Landroid/app/admin/SystemUpdatePolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    #@18b0
    move-object/from16 v0, p2

    #@18b2
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@18b5
    move-result-object v28

    #@18b6
    check-cast v28, Landroid/app/admin/SystemUpdatePolicy;

    #@18b8
    .line 2149
    :goto_a9
    move-object/from16 v0, p0

    #@18ba
    move-object/from16 v1, v17

    #@18bc
    move-object/from16 v2, v28

    #@18be
    invoke-virtual {v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setSystemUpdatePolicy(Landroid/content/ComponentName;Landroid/app/admin/SystemUpdatePolicy;)V

    #@18c1
    .line 2150
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@18c4
    .line 2151
    const/4 v6, 0x1

    #@18c5
    return v6

    #@18c6
    .line 2140
    :cond_a8
    const/16 v17, 0x0

    #@18c8
    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_a8

    #@18c9
    .line 2147
    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :cond_a9
    const/16 v28, 0x0

    #@18cb
    .local v28, "_arg1":Landroid/app/admin/SystemUpdatePolicy;
    goto :goto_a9

    #@18cc
    .line 2155
    .end local v28    # "_arg1":Landroid/app/admin/SystemUpdatePolicy;
    :sswitch_84
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@18cf
    move-object/from16 v0, p2

    #@18d1
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@18d4
    .line 2156
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getSystemUpdatePolicy()Landroid/app/admin/SystemUpdatePolicy;

    #@18d7
    move-result-object v52

    #@18d8
    .line 2157
    .local v52, "_result":Landroid/app/admin/SystemUpdatePolicy;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@18db
    .line 2158
    if-eqz v52, :cond_aa

    #@18dd
    .line 2159
    const/4 v6, 0x1

    #@18de
    move-object/from16 v0, p3

    #@18e0
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@18e3
    .line 2160
    const/4 v6, 0x1

    #@18e4
    move-object/from16 v0, v52

    #@18e6
    move-object/from16 v1, p3

    #@18e8
    invoke-virtual {v0, v1, v6}, Landroid/app/admin/SystemUpdatePolicy;->writeToParcel(Landroid/os/Parcel;I)V

    #@18eb
    .line 2165
    :goto_aa
    const/4 v6, 0x1

    #@18ec
    return v6

    #@18ed
    .line 2163
    :cond_aa
    const/4 v6, 0x0

    #@18ee
    move-object/from16 v0, p3

    #@18f0
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@18f3
    goto :goto_aa

    #@18f4
    .line 2169
    .end local v52    # "_result":Landroid/app/admin/SystemUpdatePolicy;
    :sswitch_85
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@18f7
    move-object/from16 v0, p2

    #@18f9
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@18fc
    .line 2171
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@18ff
    move-result v6

    #@1900
    if-eqz v6, :cond_ab

    #@1902
    .line 2172
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1904
    move-object/from16 v0, p2

    #@1906
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1909
    move-result-object v17

    #@190a
    check-cast v17, Landroid/content/ComponentName;

    #@190c
    .line 2178
    :goto_ab
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@190f
    move-result v6

    #@1910
    if-eqz v6, :cond_ac

    #@1912
    const/16 v38, 0x1

    #@1914
    .line 2179
    .restart local v38    # "_arg1":Z
    :goto_ac
    move-object/from16 v0, p0

    #@1916
    move-object/from16 v1, v17

    #@1918
    move/from16 v2, v38

    #@191a
    invoke-virtual {v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setKeyguardDisabled(Landroid/content/ComponentName;Z)Z

    #@191d
    move-result v61

    #@191e
    .line 2180
    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1921
    .line 2181
    if-eqz v61, :cond_ad

    #@1923
    const/4 v6, 0x1

    #@1924
    :goto_ad
    move-object/from16 v0, p3

    #@1926
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@1929
    .line 2182
    const/4 v6, 0x1

    #@192a
    return v6

    #@192b
    .line 2175
    .end local v38    # "_arg1":Z
    .end local v61    # "_result":Z
    :cond_ab
    const/16 v17, 0x0

    #@192d
    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_ab

    #@192e
    .line 2178
    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :cond_ac
    const/16 v38, 0x0

    #@1930
    .restart local v38    # "_arg1":Z
    goto :goto_ac

    #@1931
    .line 2181
    .restart local v61    # "_result":Z
    :cond_ad
    const/4 v6, 0x0

    #@1932
    goto :goto_ad

    #@1933
    .line 2186
    .end local v38    # "_arg1":Z
    .end local v61    # "_result":Z
    :sswitch_86
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@1936
    move-object/from16 v0, p2

    #@1938
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@193b
    .line 2188
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@193e
    move-result v6

    #@193f
    if-eqz v6, :cond_ae

    #@1941
    .line 2189
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1943
    move-object/from16 v0, p2

    #@1945
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1948
    move-result-object v17

    #@1949
    check-cast v17, Landroid/content/ComponentName;

    #@194b
    .line 2195
    :goto_ae
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@194e
    move-result v6

    #@194f
    if-eqz v6, :cond_af

    #@1951
    const/16 v38, 0x1

    #@1953
    .line 2196
    .restart local v38    # "_arg1":Z
    :goto_af
    move-object/from16 v0, p0

    #@1955
    move-object/from16 v1, v17

    #@1957
    move/from16 v2, v38

    #@1959
    invoke-virtual {v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setStatusBarDisabled(Landroid/content/ComponentName;Z)Z

    #@195c
    move-result v61

    #@195d
    .line 2197
    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1960
    .line 2198
    if-eqz v61, :cond_b0

    #@1962
    const/4 v6, 0x1

    #@1963
    :goto_b0
    move-object/from16 v0, p3

    #@1965
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@1968
    .line 2199
    const/4 v6, 0x1

    #@1969
    return v6

    #@196a
    .line 2192
    .end local v38    # "_arg1":Z
    .end local v61    # "_result":Z
    :cond_ae
    const/16 v17, 0x0

    #@196c
    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_ae

    #@196d
    .line 2195
    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :cond_af
    const/16 v38, 0x0

    #@196f
    .restart local v38    # "_arg1":Z
    goto :goto_af

    #@1970
    .line 2198
    .restart local v61    # "_result":Z
    :cond_b0
    const/4 v6, 0x0

    #@1971
    goto :goto_b0

    #@1972
    .line 2203
    .end local v38    # "_arg1":Z
    .end local v61    # "_result":Z
    :sswitch_87
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@1975
    move-object/from16 v0, p2

    #@1977
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@197a
    .line 2204
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getDoNotAskCredentialsOnBoot()Z

    #@197d
    move-result v61

    #@197e
    .line 2205
    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1981
    .line 2206
    if-eqz v61, :cond_b1

    #@1983
    const/4 v6, 0x1

    #@1984
    :goto_b1
    move-object/from16 v0, p3

    #@1986
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@1989
    .line 2207
    const/4 v6, 0x1

    #@198a
    return v6

    #@198b
    .line 2206
    :cond_b1
    const/4 v6, 0x0

    #@198c
    goto :goto_b1

    #@198d
    .line 2211
    .end local v61    # "_result":Z
    :sswitch_88
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@1990
    move-object/from16 v0, p2

    #@1992
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1995
    .line 2213
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@1998
    move-result-wide v22

    #@1999
    .line 2214
    .local v22, "_arg0":J
    move-object/from16 v0, p0

    #@199b
    move-wide/from16 v1, v22

    #@199d
    invoke-virtual {v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->notifyPendingSystemUpdate(J)V

    #@19a0
    .line 2215
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@19a3
    .line 2216
    const/4 v6, 0x1

    #@19a4
    return v6

    #@19a5
    .line 2220
    .end local v22    # "_arg0":J
    :sswitch_89
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@19a8
    move-object/from16 v0, p2

    #@19aa
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@19ad
    .line 2222
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@19b0
    move-result v6

    #@19b1
    if-eqz v6, :cond_b2

    #@19b3
    .line 2223
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@19b5
    move-object/from16 v0, p2

    #@19b7
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@19ba
    move-result-object v17

    #@19bb
    check-cast v17, Landroid/content/ComponentName;

    #@19bd
    .line 2229
    :goto_b2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@19c0
    move-result v8

    #@19c1
    .line 2230
    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    #@19c3
    move-object/from16 v1, v17

    #@19c5
    invoke-virtual {v0, v1, v8}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPermissionPolicy(Landroid/content/ComponentName;I)V

    #@19c8
    .line 2231
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@19cb
    .line 2232
    const/4 v6, 0x1

    #@19cc
    return v6

    #@19cd
    .line 2226
    .end local v8    # "_arg1":I
    :cond_b2
    const/16 v17, 0x0

    #@19cf
    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_b2

    #@19d0
    .line 2236
    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :sswitch_8a
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@19d3
    move-object/from16 v0, p2

    #@19d5
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@19d8
    .line 2238
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@19db
    move-result v6

    #@19dc
    if-eqz v6, :cond_b3

    #@19de
    .line 2239
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@19e0
    move-object/from16 v0, p2

    #@19e2
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@19e5
    move-result-object v17

    #@19e6
    check-cast v17, Landroid/content/ComponentName;

    #@19e8
    .line 2244
    :goto_b3
    move-object/from16 v0, p0

    #@19ea
    move-object/from16 v1, v17

    #@19ec
    invoke-virtual {v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPermissionPolicy(Landroid/content/ComponentName;)I

    #@19ef
    move-result v49

    #@19f0
    .line 2245
    .restart local v49    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@19f3
    .line 2246
    move-object/from16 v0, p3

    #@19f5
    move/from16 v1, v49

    #@19f7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@19fa
    .line 2247
    const/4 v6, 0x1

    #@19fb
    return v6

    #@19fc
    .line 2242
    .end local v49    # "_result":I
    :cond_b3
    const/16 v17, 0x0

    #@19fe
    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_b3

    #@19ff
    .line 2251
    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :sswitch_8b
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@1a02
    move-object/from16 v0, p2

    #@1a04
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a07
    .line 2253
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1a0a
    move-result v6

    #@1a0b
    if-eqz v6, :cond_b4

    #@1a0d
    .line 2254
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1a0f
    move-object/from16 v0, p2

    #@1a11
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1a14
    move-result-object v17

    #@1a15
    check-cast v17, Landroid/content/ComponentName;

    #@1a17
    .line 2260
    :goto_b4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1a1a
    move-result-object v18

    #@1a1b
    .line 2262
    .restart local v18    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1a1e
    move-result-object v19

    #@1a1f
    .line 2264
    .restart local v19    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1a22
    move-result v10

    #@1a23
    .line 2265
    .restart local v10    # "_arg3":I
    move-object/from16 v0, p0

    #@1a25
    move-object/from16 v1, v17

    #@1a27
    move-object/from16 v2, v18

    #@1a29
    move-object/from16 v3, v19

    #@1a2b
    invoke-virtual {v0, v1, v2, v3, v10}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPermissionGrantState(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;I)Z

    #@1a2e
    move-result v61

    #@1a2f
    .line 2266
    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1a32
    .line 2267
    if-eqz v61, :cond_b5

    #@1a34
    const/4 v6, 0x1

    #@1a35
    :goto_b5
    move-object/from16 v0, p3

    #@1a37
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@1a3a
    .line 2268
    const/4 v6, 0x1

    #@1a3b
    return v6

    #@1a3c
    .line 2257
    .end local v10    # "_arg3":I
    .end local v18    # "_arg1":Ljava/lang/String;
    .end local v19    # "_arg2":Ljava/lang/String;
    .end local v61    # "_result":Z
    :cond_b4
    const/16 v17, 0x0

    #@1a3e
    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_b4

    #@1a3f
    .line 2267
    .end local v17    # "_arg0":Landroid/content/ComponentName;
    .restart local v10    # "_arg3":I
    .restart local v18    # "_arg1":Ljava/lang/String;
    .restart local v19    # "_arg2":Ljava/lang/String;
    .restart local v61    # "_result":Z
    :cond_b5
    const/4 v6, 0x0

    #@1a40
    goto :goto_b5

    #@1a41
    .line 2272
    .end local v10    # "_arg3":I
    .end local v18    # "_arg1":Ljava/lang/String;
    .end local v19    # "_arg2":Ljava/lang/String;
    .end local v61    # "_result":Z
    :sswitch_8c
    const-string/jumbo v6, "android.app.admin.IDevicePolicyManager"

    #@1a44
    move-object/from16 v0, p2

    #@1a46
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a49
    .line 2274
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1a4c
    move-result v6

    #@1a4d
    if-eqz v6, :cond_b6

    #@1a4f
    .line 2275
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1a51
    move-object/from16 v0, p2

    #@1a53
    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1a56
    move-result-object v17

    #@1a57
    check-cast v17, Landroid/content/ComponentName;

    #@1a59
    .line 2281
    :goto_b6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1a5c
    move-result-object v18

    #@1a5d
    .line 2283
    .restart local v18    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1a60
    move-result-object v19

    #@1a61
    .line 2284
    .restart local v19    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    #@1a63
    move-object/from16 v1, v17

    #@1a65
    move-object/from16 v2, v18

    #@1a67
    move-object/from16 v3, v19

    #@1a69
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPermissionGrantState(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)I

    #@1a6c
    move-result v49

    #@1a6d
    .line 2285
    .restart local v49    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1a70
    .line 2286
    move-object/from16 v0, p3

    #@1a72
    move/from16 v1, v49

    #@1a74
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1a77
    .line 2287
    const/4 v6, 0x1

    #@1a78
    return v6

    #@1a79
    .line 2278
    .end local v18    # "_arg1":Ljava/lang/String;
    .end local v19    # "_arg2":Ljava/lang/String;
    .end local v49    # "_result":I
    :cond_b6
    const/16 v17, 0x0

    #@1a7b
    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_b6

    #@1a7c
    .line 42
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
