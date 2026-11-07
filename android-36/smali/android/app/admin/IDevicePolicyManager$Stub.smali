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
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.app.admin.IDevicePolicyManager"

.field static final blacklist TRANSACTION_acknowledgeDeviceCompliant:I = 0x163

.field static final blacklist TRANSACTION_acknowledgeNewUserDisclaimer:I = 0xa8

.field static final greylist-max-o TRANSACTION_addCrossProfileIntentFilter:I = 0x8c

.field static final greylist-max-o TRANSACTION_addCrossProfileWidgetProvider:I = 0xda

.field static final greylist-max-o TRANSACTION_addOverrideApn:I = 0x140

.field static final greylist-max-o TRANSACTION_addPersistentPreferredActivity:I = 0x7b

.field static final greylist-max-o TRANSACTION_approveCaCert:I = 0x68

.field static final greylist-max-o TRANSACTION_bindDeviceAdminServiceAsUser:I = 0x128

.field static final blacklist TRANSACTION_calculateHasIncompatibleAccounts:I = 0x193

.field static final blacklist TRANSACTION_canAdminGrantSensorsPermissions:I = 0x173

.field static final blacklist TRANSACTION_canProfileOwnerResetPasswordWhenLocked:I = 0x165

.field static final blacklist TRANSACTION_canUsbDataSignalingBeDisabled:I = 0x176

.field static final blacklist TRANSACTION_checkDeviceIdentifierAccess:I = 0x5f

.field static final blacklist TRANSACTION_checkProvisioningPrecondition:I = 0xf9

.field static final greylist-max-o TRANSACTION_choosePrivateKeyAlias:I = 0x6f

.field static final greylist-max-o TRANSACTION_clearApplicationUserData:I = 0x134

.field static final greylist-max-o TRANSACTION_clearCrossProfileIntentFilters:I = 0x8d

.field static final greylist-max-o TRANSACTION_clearDeviceOwner:I = 0x53

.field static final blacklist TRANSACTION_clearOrganizationIdForUser:I = 0x107

.field static final greylist-max-o TRANSACTION_clearPackagePersistentPreferredActivities:I = 0x7c

.field static final greylist-max-o TRANSACTION_clearProfileOwner:I = 0x5c

.field static final greylist-max-o TRANSACTION_clearResetPasswordToken:I = 0x12f

.field static final greylist-max-o TRANSACTION_clearSystemUpdatePolicyFreezePeriodRecord:I = 0xed

.field static final greylist-max-o TRANSACTION_createAdminSupportIntent:I = 0x99

.field static final greylist-max-o TRANSACTION_createAndManageUser:I = 0x9f

.field static final blacklist TRANSACTION_createAndProvisionManagedProfile:I = 0x16a

.field static final blacklist TRANSACTION_createManagedProfile:I = 0x16b

.field static final greylist-max-o TRANSACTION_enableSystemApp:I = 0xaa

.field static final greylist-max-o TRANSACTION_enableSystemAppWithIntent:I = 0xab

.field static final greylist-max-o TRANSACTION_enforceCanManageCaCerts:I = 0x67

.field static final blacklist TRANSACTION_finalizeCreateManagedProfile:I = 0x16c

.field static final blacklist TRANSACTION_finalizeWorkProfileProvisioning:I = 0x16e

.field static final blacklist TRANSACTION_forceNetworkLogs:I = 0x118

.field static final greylist-max-o TRANSACTION_forceRemoveActiveAdmin:I = 0x45

.field static final greylist-max-o TRANSACTION_forceSecurityLogs:I = 0x119

.field static final blacklist TRANSACTION_forceSetMaxPolicyStorageLimit:I = 0x198

.field static final greylist-max-o TRANSACTION_forceUpdateUserSetupComplete:I = 0x122

.field static final greylist-max-o TRANSACTION_generateKeyPair:I = 0x6d

.field static final greylist-max-o TRANSACTION_getAccountTypesWithManagementDisabled:I = 0xae

.field static final greylist-max-o TRANSACTION_getAccountTypesWithManagementDisabledAsUser:I = 0xaf

.field static final greylist-max-o TRANSACTION_getActiveAdmins:I = 0x41

.field static final greylist-max-o TRANSACTION_getAffiliationIds:I = 0x111

.field static final blacklist TRANSACTION_getAggregatedPasswordComplexityForUser:I = 0x1d

.field static final blacklist TRANSACTION_getAllCrossProfilePackages:I = 0x152

.field static final blacklist TRANSACTION_getAlwaysOnVpnLockdownAllowlist:I = 0x7a

.field static final greylist-max-o TRANSACTION_getAlwaysOnVpnPackage:I = 0x76

.field static final blacklist TRANSACTION_getAlwaysOnVpnPackageForUser:I = 0x77

.field static final blacklist TRANSACTION_getAppFunctionsPolicy:I = 0x19d

.field static final blacklist TRANSACTION_getApplicationExemptions:I = 0x189

.field static final greylist-max-o TRANSACTION_getApplicationRestrictions:I = 0x80

.field static final greylist-max-o TRANSACTION_getApplicationRestrictionsManagingPackage:I = 0x82

.field static final blacklist TRANSACTION_getAutoTimeEnabled:I = 0xe0

.field static final blacklist TRANSACTION_getAutoTimePolicy:I = 0xe2

.field static final greylist-max-o TRANSACTION_getAutoTimeRequired:I = 0xde

.field static final blacklist TRANSACTION_getAutoTimeZoneEnabled:I = 0xe4

.field static final blacklist TRANSACTION_getAutoTimeZonePolicy:I = 0xe6

.field static final greylist-max-o TRANSACTION_getBindDeviceAdminTargetUsers:I = 0x129

.field static final greylist-max-o TRANSACTION_getBluetoothContactSharingDisabled:I = 0xd6

.field static final greylist-max-o TRANSACTION_getBluetoothContactSharingDisabledForUser:I = 0xd7

.field static final greylist-max-o TRANSACTION_getCameraDisabled:I = 0x36

.field static final greylist-max-o TRANSACTION_getCertInstallerPackage:I = 0x74

.field static final blacklist TRANSACTION_getContentProtectionPolicy:I = 0x195

.field static final blacklist TRANSACTION_getCredentialManagerPolicy:I = 0xd1

.field static final blacklist TRANSACTION_getCrossProfileCalendarPackages:I = 0x14d

.field static final blacklist TRANSACTION_getCrossProfileCalendarPackagesForUser:I = 0x14f

.field static final greylist-max-o TRANSACTION_getCrossProfileCallerIdDisabled:I = 0xc7

.field static final greylist-max-o TRANSACTION_getCrossProfileCallerIdDisabledForUser:I = 0xc8

.field static final greylist-max-o TRANSACTION_getCrossProfileContactsSearchDisabled:I = 0xca

.field static final greylist-max-o TRANSACTION_getCrossProfileContactsSearchDisabledForUser:I = 0xcb

.field static final blacklist TRANSACTION_getCrossProfilePackages:I = 0x151

.field static final greylist-max-o TRANSACTION_getCrossProfileWidgetProviders:I = 0xdc

.field static final greylist-max-o TRANSACTION_getCurrentFailedPasswordAttempts:I = 0x1f

.field static final blacklist TRANSACTION_getDefaultCrossProfilePackages:I = 0x153

.field static final greylist-max-o TRANSACTION_getDelegatePackages:I = 0x72

.field static final greylist-max-o TRANSACTION_getDelegatedScopes:I = 0x71

.field static final greylist-max-o TRANSACTION_getDeviceOwnerComponent:I = 0x4f

.field static final blacklist TRANSACTION_getDeviceOwnerComponentOnUser:I = 0x50

.field static final greylist-max-o TRANSACTION_getDeviceOwnerLockScreenInfo:I = 0x61

.field static final greylist-max-o TRANSACTION_getDeviceOwnerName:I = 0x52

.field static final greylist-max-o TRANSACTION_getDeviceOwnerOrganizationName:I = 0x10c

.field static final blacklist TRANSACTION_getDeviceOwnerType:I = 0x171

.field static final greylist-max-o TRANSACTION_getDeviceOwnerUserId:I = 0x54

.field static final blacklist TRANSACTION_getDevicePolicyState:I = 0x18f

.field static final greylist-max-o TRANSACTION_getDisallowedSystemApps:I = 0x137

.field static final greylist-max-o TRANSACTION_getDoNotAskCredentialsOnBoot:I = 0xf1

.field static final blacklist TRANSACTION_getDrawable:I = 0x17f

.field static final greylist-max-o TRANSACTION_getEndUserSessionMessage:I = 0x13d

.field static final blacklist TRANSACTION_getEnforcingAdmin:I = 0x9b

.field static final blacklist TRANSACTION_getEnforcingAdminAndUserDetails:I = 0x9a

.field static final blacklist TRANSACTION_getEnforcingAdminsForRestriction:I = 0x9c

.field static final blacklist TRANSACTION_getEnrollmentSpecificId:I = 0x168

.field static final blacklist TRANSACTION_getFactoryResetProtectionPolicy:I = 0x2b

.field static final blacklist TRANSACTION_getFinancedDeviceKioskRoleHolder:I = 0x192

.field static final greylist-max-o TRANSACTION_getForceEphemeralUsers:I = 0xe8

.field static final blacklist TRANSACTION_getGlobalPrivateDnsHost:I = 0x149

.field static final blacklist TRANSACTION_getGlobalPrivateDnsMode:I = 0x148

.field static final greylist-max-o TRANSACTION_getGlobalProxyAdmin:I = 0x2f

.field static final blacklist TRANSACTION_getHeadlessDeviceOwnerMode:I = 0x19b

.field static final greylist-max-o TRANSACTION_getKeepUninstalledPackages:I = 0xfb

.field static final blacklist TRANSACTION_getKeyPairGrants:I = 0x158

.field static final greylist-max-o TRANSACTION_getKeyguardDisabledFeatures:I = 0x3e

.field static final greylist-max-o TRANSACTION_getLastBugReportRequestTime:I = 0x12c

.field static final greylist-max-o TRANSACTION_getLastNetworkLogRetrievalTime:I = 0x12d

.field static final greylist-max-o TRANSACTION_getLastSecurityLogRetrievalTime:I = 0x12b

.field static final greylist-max-o TRANSACTION_getLockTaskFeatures:I = 0xb8

.field static final greylist-max-o TRANSACTION_getLockTaskPackages:I = 0xb5

.field static final blacklist TRANSACTION_getLogoutUserId:I = 0xa6

.field static final greylist-max-o TRANSACTION_getLongSupportMessage:I = 0x102

.field static final greylist-max-o TRANSACTION_getLongSupportMessageForUser:I = 0x104

.field static final blacklist TRANSACTION_getManagedProfileCallerIdAccessPolicy:I = 0xce

.field static final blacklist TRANSACTION_getManagedProfileContactsAccessPolicy:I = 0xd3

.field static final blacklist TRANSACTION_getManagedProfileMaximumTimeOff:I = 0x161

.field static final blacklist TRANSACTION_getManagedSubscriptionsPolicy:I = 0x18e

.field static final blacklist TRANSACTION_getMaxPolicyStorageLimit:I = 0x199

.field static final greylist-max-o TRANSACTION_getMaximumFailedPasswordsForWipe:I = 0x22

.field static final greylist-max-o TRANSACTION_getMaximumTimeToLock:I = 0x25

.field static final greylist-max-o TRANSACTION_getMeteredDataDisabledPackages:I = 0x13f

.field static final blacklist TRANSACTION_getMinimumRequiredWifiSecurityLevel:I = 0x178

.field static final blacklist TRANSACTION_getMtePolicy:I = 0x18c

.field static final blacklist TRANSACTION_getNearbyAppStreamingPolicy:I = 0x3c

.field static final blacklist TRANSACTION_getNearbyNotificationStreamingPolicy:I = 0x3a

.field static final greylist-max-o TRANSACTION_getOrganizationColor:I = 0x108

.field static final greylist-max-o TRANSACTION_getOrganizationColorForUser:I = 0x109

.field static final greylist-max-o TRANSACTION_getOrganizationName:I = 0x10b

.field static final greylist-max-o TRANSACTION_getOrganizationNameForUser:I = 0x10d

.field static final greylist-max-o TRANSACTION_getOverrideApns:I = 0x143

.field static final greylist-max-o TRANSACTION_getOwnerInstalledCaCerts:I = 0x133

.field static final blacklist TRANSACTION_getPasswordComplexity:I = 0x1a

.field static final greylist-max-o TRANSACTION_getPasswordExpiration:I = 0x16

.field static final greylist-max-o TRANSACTION_getPasswordExpirationTimeout:I = 0x15

.field static final greylist-max-o TRANSACTION_getPasswordHistoryLength:I = 0x13

.field static final greylist-max-o TRANSACTION_getPasswordMinimumLength:I = 0x4

.field static final greylist-max-o TRANSACTION_getPasswordMinimumLetters:I = 0xa

.field static final greylist-max-o TRANSACTION_getPasswordMinimumLowerCase:I = 0x8

.field static final blacklist TRANSACTION_getPasswordMinimumMetrics:I = 0x11

.field static final greylist-max-o TRANSACTION_getPasswordMinimumNonLetter:I = 0x10

.field static final greylist-max-o TRANSACTION_getPasswordMinimumNumeric:I = 0xc

.field static final greylist-max-o TRANSACTION_getPasswordMinimumSymbols:I = 0xe

.field static final greylist-max-o TRANSACTION_getPasswordMinimumUpperCase:I = 0x6

.field static final greylist-max-o TRANSACTION_getPasswordQuality:I = 0x2

.field static final greylist-max-o TRANSACTION_getPendingSystemUpdate:I = 0xf3

.field static final greylist-max-o TRANSACTION_getPermissionGrantState:I = 0xf7

.field static final greylist-max-o TRANSACTION_getPermissionPolicy:I = 0xf5

.field static final greylist-max-o TRANSACTION_getPermittedAccessibilityServices:I = 0x8f

.field static final greylist-max-o TRANSACTION_getPermittedAccessibilityServicesForUser:I = 0x90

.field static final greylist-max-o TRANSACTION_getPermittedCrossProfileNotificationListeners:I = 0x97

.field static final greylist-max-o TRANSACTION_getPermittedInputMethods:I = 0x93

.field static final blacklist TRANSACTION_getPermittedInputMethodsAsUser:I = 0x94

.field static final blacklist TRANSACTION_getPersonalAppsSuspendedReasons:I = 0x15f

.field static final blacklist TRANSACTION_getPolicyManagedProfiles:I = 0x187

.field static final blacklist TRANSACTION_getPolicySizeForAdmin:I = 0x19a

.field static final blacklist TRANSACTION_getPreferentialNetworkServiceConfigs:I = 0xb3

.field static final blacklist TRANSACTION_getProfileOwnerAsUser:I = 0x56

.field static final greylist-max-o TRANSACTION_getProfileOwnerName:I = 0x59

.field static final blacklist TRANSACTION_getProfileOwnerOrDeviceOwnerSupervisionComponent:I = 0x57

.field static final greylist-max-o TRANSACTION_getProfileWithMinimumFailedPasswordsForWipe:I = 0x20

.field static final greylist-max-o TRANSACTION_getRemoveWarning:I = 0x43

.field static final blacklist TRANSACTION_getRequiredPasswordComplexity:I = 0x1c

.field static final greylist-max-o TRANSACTION_getRequiredStrongAuthTimeout:I = 0x27

.field static final greylist-max-o TRANSACTION_getRestrictionsProvider:I = 0x85

.field static final greylist-max-o TRANSACTION_getScreenCaptureDisabled:I = 0x38

.field static final greylist-max-o TRANSACTION_getSecondaryUsers:I = 0xa7

.field static final greylist-max-o TRANSACTION_getShortSupportMessage:I = 0x100

.field static final greylist-max-o TRANSACTION_getShortSupportMessageForUser:I = 0x103

.field static final greylist-max-o TRANSACTION_getStartUserSessionMessage:I = 0x13c

.field static final greylist-max-o TRANSACTION_getStorageEncryption:I = 0x32

.field static final greylist-max-o TRANSACTION_getStorageEncryptionStatus:I = 0x33

.field static final blacklist TRANSACTION_getString:I = 0x184

.field static final blacklist TRANSACTION_getSubscriptionIds:I = 0x196

.field static final greylist-max-o TRANSACTION_getSystemUpdatePolicy:I = 0xec

.field static final greylist-max-o TRANSACTION_getTransferOwnershipBundle:I = 0x139

.field static final greylist-max-o TRANSACTION_getTrustAgentConfiguration:I = 0xd9

.field static final blacklist TRANSACTION_getUserControlDisabledPackages:I = 0x15c

.field static final greylist-max-o TRANSACTION_getUserProvisioningState:I = 0x10e

.field static final greylist-max-o TRANSACTION_getUserRestrictions:I = 0x8a

.field static final blacklist TRANSACTION_getUserRestrictionsGlobally:I = 0x8b

.field static final greylist-max-o TRANSACTION_getWifiMacAddress:I = 0xfd

.field static final blacklist TRANSACTION_getWifiSsidPolicy:I = 0x17a

.field static final greylist-max-o TRANSACTION_hasDeviceOwner:I = 0x51

.field static final greylist-max-o TRANSACTION_hasGrantedPolicy:I = 0x46

.field static final blacklist TRANSACTION_hasKeyPair:I = 0x6c

.field static final blacklist TRANSACTION_hasLockdownAdminConfiguredNetworks:I = 0xbd

.field static final blacklist TRANSACTION_hasManagedProfileCallerIdAccess:I = 0xcf

.field static final blacklist TRANSACTION_hasManagedProfileContactsAccess:I = 0xd4

.field static final greylist-max-o TRANSACTION_hasUserSetupCompleted:I = 0x5d

.field static final greylist-max-o TRANSACTION_installCaCert:I = 0x65

.field static final greylist-max-o TRANSACTION_installExistingPackage:I = 0xac

.field static final greylist-max-o TRANSACTION_installKeyPair:I = 0x6a

.field static final blacklist TRANSACTION_installUpdateFromFile:I = 0x14b

.field static final greylist-max-o TRANSACTION_isAccessibilityServicePermittedByAdmin:I = 0x91

.field static final greylist-max-o TRANSACTION_isActivePasswordSufficient:I = 0x17

.field static final blacklist TRANSACTION_isActivePasswordSufficientForDeviceRequirement:I = 0x18

.field static final greylist-max-o TRANSACTION_isAdminActive:I = 0x40

.field static final greylist-max-o TRANSACTION_isAffiliatedUser:I = 0x113

.field static final blacklist TRANSACTION_isAlwaysOnVpnLockdownEnabled:I = 0x78

.field static final blacklist TRANSACTION_isAlwaysOnVpnLockdownEnabledForUser:I = 0x79

.field static final greylist-max-o TRANSACTION_isApplicationHidden:I = 0x9e

.field static final blacklist TRANSACTION_isAuditLogEnabled:I = 0x11b

.field static final greylist-max-o TRANSACTION_isBackupServiceEnabled:I = 0x124

.field static final greylist-max-o TRANSACTION_isCaCertApproved:I = 0x69

.field static final greylist-max-o TRANSACTION_isCallerApplicationRestrictionsManagingPackage:I = 0x83

.field static final blacklist TRANSACTION_isCallingUserAffiliated:I = 0x112

.field static final blacklist TRANSACTION_isCommonCriteriaModeEnabled:I = 0x15e

.field static final blacklist TRANSACTION_isComplianceAcknowledgementRequired:I = 0x164

.field static final greylist-max-o TRANSACTION_isCurrentInputMethodSetByOwner:I = 0x132

.field static final blacklist TRANSACTION_isDeviceFinanced:I = 0x191

.field static final blacklist TRANSACTION_isDevicePotentiallyStolen:I = 0x17b

.field static final greylist-max-o TRANSACTION_isDeviceProvisioned:I = 0x11f

.field static final greylist-max-o TRANSACTION_isDeviceProvisioningConfigApplied:I = 0x120

.field static final blacklist TRANSACTION_isDpcDownloaded:I = 0x180

.field static final greylist-max-o TRANSACTION_isEphemeralUser:I = 0x12a

.field static final blacklist TRANSACTION_isFactoryResetProtectionPolicySupported:I = 0x2c

.field static final greylist-max-o TRANSACTION_isInputMethodPermittedByAdmin:I = 0x95

.field static final blacklist TRANSACTION_isKeyPairGrantedToWifiAuth:I = 0x15a

.field static final greylist-max-o TRANSACTION_isLockTaskPermitted:I = 0xb6

.field static final greylist-max-o TRANSACTION_isLogoutEnabled:I = 0x136

.field static final blacklist TRANSACTION_isManagedKiosk:I = 0x154

.field static final greylist-max-o TRANSACTION_isManagedProfile:I = 0xfc

.field static final greylist-max-o TRANSACTION_isMasterVolumeMuted:I = 0xc2

.field static final greylist-max-o TRANSACTION_isMeteredDataDisabledPackageForUser:I = 0x146

.field static final greylist-max-o TRANSACTION_isNetworkLoggingEnabled:I = 0x126

.field static final blacklist TRANSACTION_isNewUserDisclaimerAcknowledged:I = 0xa9

.field static final greylist-max-o TRANSACTION_isNotificationListenerServicePermitted:I = 0x98

.field static final blacklist TRANSACTION_isOrganizationOwnedDeviceWithManagedProfile:I = 0x5e

.field static final greylist-max-o TRANSACTION_isOverrideApnEnabled:I = 0x145

.field static final blacklist TRANSACTION_isPackageAllowedToAccessCalendarForUser:I = 0x14e

.field static final greylist-max-o TRANSACTION_isPackageSuspended:I = 0x63

.field static final blacklist TRANSACTION_isPasswordSufficientAfterProfileUnification:I = 0x19

.field static final greylist-max-o TRANSACTION_isProvisioningAllowed:I = 0xf8

.field static final greylist-max-o TRANSACTION_isRemovingAdmin:I = 0xe9

.field static final greylist-max-o TRANSACTION_isResetPasswordTokenActive:I = 0x130

.field static final blacklist TRANSACTION_isSafeOperation:I = 0x167

.field static final blacklist TRANSACTION_isSecondaryLockscreenEnabled:I = 0xb1

.field static final greylist-max-o TRANSACTION_isSecurityLoggingEnabled:I = 0x115

.field static final blacklist TRANSACTION_isStatusBarDisabled:I = 0xf0

.field static final blacklist TRANSACTION_isSupervisionComponent:I = 0x58

.field static final blacklist TRANSACTION_isUnattendedManagedKiosk:I = 0x155

.field static final greylist-max-o TRANSACTION_isUninstallBlocked:I = 0xc5

.field static final greylist-max-o TRANSACTION_isUninstallInQueue:I = 0x11d

.field static final blacklist TRANSACTION_isUsbDataSignalingEnabled:I = 0x175

.field static final greylist-max-o TRANSACTION_isUsingUnifiedPassword:I = 0x1e

.field static final blacklist TRANSACTION_listForegroundAffiliatedUsers:I = 0x17c

.field static final blacklist TRANSACTION_listPolicyExemptApps:I = 0x64

.field static final greylist-max-o TRANSACTION_lockNow:I = 0x28

.field static final greylist-max-o TRANSACTION_logoutUser:I = 0xa4

.field static final blacklist TRANSACTION_logoutUserInternal:I = 0xa5

.field static final greylist-max-o TRANSACTION_notifyLockTaskModeChanged:I = 0xc3

.field static final greylist-max-o TRANSACTION_notifyPendingSystemUpdate:I = 0xf2

.field static final greylist TRANSACTION_packageHasActiveAdmins:I = 0x42

.field static final blacklist TRANSACTION_provisionFullyManagedDevice:I = 0x16d

.field static final greylist-max-o TRANSACTION_reboot:I = 0xfe

.field static final greylist TRANSACTION_removeActiveAdmin:I = 0x44

.field static final greylist-max-o TRANSACTION_removeCrossProfileWidgetProvider:I = 0xdb

.field static final greylist-max-o TRANSACTION_removeKeyPair:I = 0x6b

.field static final blacklist TRANSACTION_removeManagedProfile:I = 0x16f

.field static final greylist-max-o TRANSACTION_removeOverrideApn:I = 0x142

.field static final greylist-max-o TRANSACTION_removeUser:I = 0xa0

.field static final blacklist TRANSACTION_reportFailedBiometricAttempt:I = 0x4a

.field static final greylist-max-o TRANSACTION_reportFailedPasswordAttempt:I = 0x48

.field static final greylist-max-o TRANSACTION_reportKeyguardDismissed:I = 0x4c

.field static final greylist-max-o TRANSACTION_reportKeyguardSecured:I = 0x4d

.field static final greylist-max-o TRANSACTION_reportPasswordChanged:I = 0x47

.field static final blacklist TRANSACTION_reportSuccessfulBiometricAttempt:I = 0x4b

.field static final greylist-max-o TRANSACTION_reportSuccessfulPasswordAttempt:I = 0x49

.field static final greylist-max-o TRANSACTION_requestBugreport:I = 0x34

.field static final blacklist TRANSACTION_resetDefaultCrossProfileIntentFilters:I = 0x172

.field static final blacklist TRANSACTION_resetDrawables:I = 0x17e

.field static final greylist-max-o TRANSACTION_resetPassword:I = 0x23

.field static final greylist-max-o TRANSACTION_resetPasswordWithToken:I = 0x131

.field static final blacklist TRANSACTION_resetShouldAllowBypassingDevicePolicyManagementRoleQualificationState:I = 0x185

.field static final blacklist TRANSACTION_resetStrings:I = 0x183

.field static final greylist-max-o TRANSACTION_retrieveNetworkLogs:I = 0x127

.field static final greylist-max-o TRANSACTION_retrievePreRebootSecurityLogs:I = 0x117

.field static final greylist-max-o TRANSACTION_retrieveSecurityLogs:I = 0x116

.field static final blacklist TRANSACTION_sendLostModeLocationUpdate:I = 0x2d

.field static final greylist-max-o TRANSACTION_setAccountManagementDisabled:I = 0xad

.field static final greylist-max-o TRANSACTION_setActiveAdmin:I = 0x3f

.field static final greylist-max-o TRANSACTION_setAffiliationIds:I = 0x110

.field static final greylist-max-o TRANSACTION_setAlwaysOnVpnPackage:I = 0x75

.field static final blacklist TRANSACTION_setAppFunctionsPolicy:I = 0x19c

.field static final blacklist TRANSACTION_setApplicationExemptions:I = 0x188

.field static final greylist-max-o TRANSACTION_setApplicationHidden:I = 0x9d

.field static final greylist-max-o TRANSACTION_setApplicationRestrictions:I = 0x7f

.field static final greylist-max-o TRANSACTION_setApplicationRestrictionsManagingPackage:I = 0x81

.field static final blacklist TRANSACTION_setAuditLogEnabled:I = 0x11a

.field static final blacklist TRANSACTION_setAuditLogEventsCallback:I = 0x11c

.field static final blacklist TRANSACTION_setAutoTimeEnabled:I = 0xdf

.field static final blacklist TRANSACTION_setAutoTimePolicy:I = 0xe1

.field static final greylist-max-o TRANSACTION_setAutoTimeRequired:I = 0xdd

.field static final blacklist TRANSACTION_setAutoTimeZoneEnabled:I = 0xe3

.field static final blacklist TRANSACTION_setAutoTimeZonePolicy:I = 0xe5

.field static final greylist-max-o TRANSACTION_setBackupServiceEnabled:I = 0x123

.field static final greylist-max-o TRANSACTION_setBluetoothContactSharingDisabled:I = 0xd5

.field static final greylist-max-o TRANSACTION_setCameraDisabled:I = 0x35

.field static final greylist-max-o TRANSACTION_setCertInstallerPackage:I = 0x73

.field static final blacklist TRANSACTION_setCommonCriteriaModeEnabled:I = 0x15d

.field static final blacklist TRANSACTION_setConfiguredNetworksLockdownState:I = 0xbc

.field static final blacklist TRANSACTION_setContentProtectionPolicy:I = 0x194

.field static final blacklist TRANSACTION_setCredentialManagerPolicy:I = 0xd0

.field static final blacklist TRANSACTION_setCrossProfileCalendarPackages:I = 0x14c

.field static final greylist-max-o TRANSACTION_setCrossProfileCallerIdDisabled:I = 0xc6

.field static final greylist-max-o TRANSACTION_setCrossProfileContactsSearchDisabled:I = 0xc9

.field static final blacklist TRANSACTION_setCrossProfilePackages:I = 0x150

.field static final blacklist TRANSACTION_setDefaultDialerApplication:I = 0x7e

.field static final greylist-max-o TRANSACTION_setDefaultSmsApplication:I = 0x7d

.field static final greylist-max-o TRANSACTION_setDelegatedScopes:I = 0x70

.field static final greylist-max-o TRANSACTION_setDeviceOwner:I = 0x4e

.field static final greylist-max-o TRANSACTION_setDeviceOwnerLockScreenInfo:I = 0x60

.field static final blacklist TRANSACTION_setDeviceOwnerType:I = 0x170

.field static final greylist-max-o TRANSACTION_setDeviceProvisioningConfigApplied:I = 0x121

.field static final blacklist TRANSACTION_setDpcDownloaded:I = 0x181

.field static final blacklist TRANSACTION_setDrawables:I = 0x17d

.field static final greylist-max-o TRANSACTION_setEndUserSessionMessage:I = 0x13b

.field static final blacklist TRANSACTION_setFactoryResetProtectionPolicy:I = 0x2a

.field static final greylist-max-o TRANSACTION_setForceEphemeralUsers:I = 0xe7

.field static final blacklist TRANSACTION_setGlobalPrivateDns:I = 0x147

.field static final greylist-max-o TRANSACTION_setGlobalProxy:I = 0x2e

.field static final greylist-max-o TRANSACTION_setGlobalSetting:I = 0xb9

.field static final greylist-max-o TRANSACTION_setKeepUninstalledPackages:I = 0xfa

.field static final blacklist TRANSACTION_setKeyGrantForApp:I = 0x157

.field static final blacklist TRANSACTION_setKeyGrantToWifiAuth:I = 0x159

.field static final greylist-max-o TRANSACTION_setKeyPairCertificate:I = 0x6e

.field static final greylist-max-o TRANSACTION_setKeyguardDisabled:I = 0xee

.field static final greylist-max-o TRANSACTION_setKeyguardDisabledFeatures:I = 0x3d

.field static final blacklist TRANSACTION_setLocationEnabled:I = 0xbe

.field static final greylist-max-o TRANSACTION_setLockTaskFeatures:I = 0xb7

.field static final greylist-max-o TRANSACTION_setLockTaskPackages:I = 0xb4

.field static final greylist-max-o TRANSACTION_setLogoutEnabled:I = 0x135

.field static final greylist-max-o TRANSACTION_setLongSupportMessage:I = 0x101

.field static final blacklist TRANSACTION_setManagedProfileCallerIdAccessPolicy:I = 0xcd

.field static final blacklist TRANSACTION_setManagedProfileContactsAccessPolicy:I = 0xd2

.field static final blacklist TRANSACTION_setManagedProfileMaximumTimeOff:I = 0x162

.field static final blacklist TRANSACTION_setManagedSubscriptionsPolicy:I = 0x18d

.field static final greylist-max-o TRANSACTION_setMasterVolumeMuted:I = 0xc1

.field static final blacklist TRANSACTION_setMaxPolicyStorageLimit:I = 0x197

.field static final greylist-max-o TRANSACTION_setMaximumFailedPasswordsForWipe:I = 0x21

.field static final greylist-max-o TRANSACTION_setMaximumTimeToLock:I = 0x24

.field static final greylist-max-o TRANSACTION_setMeteredDataDisabledPackages:I = 0x13e

.field static final blacklist TRANSACTION_setMinimumRequiredWifiSecurityLevel:I = 0x177

.field static final blacklist TRANSACTION_setMtePolicy:I = 0x18a

.field static final blacklist TRANSACTION_setMtePolicyBySystem:I = 0x18b

.field static final blacklist TRANSACTION_setNearbyAppStreamingPolicy:I = 0x3b

.field static final blacklist TRANSACTION_setNearbyNotificationStreamingPolicy:I = 0x39

.field static final greylist-max-o TRANSACTION_setNetworkLoggingEnabled:I = 0x125

.field static final blacklist TRANSACTION_setNextOperationSafety:I = 0x166

.field static final greylist-max-o TRANSACTION_setOrganizationColor:I = 0x105

.field static final greylist-max-o TRANSACTION_setOrganizationColorForUser:I = 0x106

.field static final blacklist TRANSACTION_setOrganizationIdForUser:I = 0x169

.field static final greylist-max-o TRANSACTION_setOrganizationName:I = 0x10a

.field static final greylist-max-o TRANSACTION_setOverrideApnsEnabled:I = 0x144

.field static final greylist-max-o TRANSACTION_setPackagesSuspended:I = 0x62

.field static final greylist-max-o TRANSACTION_setPasswordExpirationTimeout:I = 0x14

.field static final greylist-max-o TRANSACTION_setPasswordHistoryLength:I = 0x12

.field static final greylist-max-o TRANSACTION_setPasswordMinimumLength:I = 0x3

.field static final greylist-max-o TRANSACTION_setPasswordMinimumLetters:I = 0x9

.field static final greylist-max-o TRANSACTION_setPasswordMinimumLowerCase:I = 0x7

.field static final greylist-max-o TRANSACTION_setPasswordMinimumNonLetter:I = 0xf

.field static final greylist-max-o TRANSACTION_setPasswordMinimumNumeric:I = 0xb

.field static final greylist-max-o TRANSACTION_setPasswordMinimumSymbols:I = 0xd

.field static final greylist-max-o TRANSACTION_setPasswordMinimumUpperCase:I = 0x5

.field static final greylist-max-o TRANSACTION_setPasswordQuality:I = 0x1

.field static final greylist-max-o TRANSACTION_setPermissionGrantState:I = 0xf6

.field static final greylist-max-o TRANSACTION_setPermissionPolicy:I = 0xf4

.field static final greylist-max-o TRANSACTION_setPermittedAccessibilityServices:I = 0x8e

.field static final greylist-max-o TRANSACTION_setPermittedCrossProfileNotificationListeners:I = 0x96

.field static final greylist-max-o TRANSACTION_setPermittedInputMethods:I = 0x92

.field static final blacklist TRANSACTION_setPersonalAppsSuspended:I = 0x160

.field static final blacklist TRANSACTION_setPreferentialNetworkServiceConfigs:I = 0xb2

.field static final greylist-max-o TRANSACTION_setProfileEnabled:I = 0x5a

.field static final greylist-max-o TRANSACTION_setProfileName:I = 0x5b

.field static final greylist-max-o TRANSACTION_setProfileOwner:I = 0x55

.field static final blacklist TRANSACTION_setProfileOwnerOnOrganizationOwnedDevice:I = 0x14a

.field static final greylist-max-o TRANSACTION_setRecommendedGlobalProxy:I = 0x30

.field static final blacklist TRANSACTION_setRequiredPasswordComplexity:I = 0x1b

.field static final greylist-max-o TRANSACTION_setRequiredStrongAuthTimeout:I = 0x26

.field static final greylist-max-o TRANSACTION_setResetPasswordToken:I = 0x12e

.field static final greylist-max-o TRANSACTION_setRestrictionsProvider:I = 0x84

.field static final greylist-max-o TRANSACTION_setScreenCaptureDisabled:I = 0x37

.field static final blacklist TRANSACTION_setSecondaryLockscreenEnabled:I = 0xb0

.field static final greylist-max-o TRANSACTION_setSecureSetting:I = 0xbb

.field static final greylist-max-o TRANSACTION_setSecurityLoggingEnabled:I = 0x114

.field static final greylist-max-o TRANSACTION_setShortSupportMessage:I = 0xff

.field static final greylist-max-o TRANSACTION_setStartUserSessionMessage:I = 0x13a

.field static final greylist-max-o TRANSACTION_setStatusBarDisabled:I = 0xef

.field static final greylist-max-o TRANSACTION_setStorageEncryption:I = 0x31

.field static final blacklist TRANSACTION_setStrings:I = 0x182

.field static final greylist-max-o TRANSACTION_setSystemSetting:I = 0xba

.field static final greylist-max-o TRANSACTION_setSystemUpdatePolicy:I = 0xeb

.field static final greylist-max-o TRANSACTION_setTime:I = 0xbf

.field static final greylist-max-o TRANSACTION_setTimeZone:I = 0xc0

.field static final greylist-max-o TRANSACTION_setTrustAgentConfiguration:I = 0xd8

.field static final greylist-max-o TRANSACTION_setUninstallBlocked:I = 0xc4

.field static final blacklist TRANSACTION_setUsbDataSignalingEnabled:I = 0x174

.field static final blacklist TRANSACTION_setUserControlDisabledPackages:I = 0x15b

.field static final greylist-max-o TRANSACTION_setUserIcon:I = 0xea

.field static final greylist-max-o TRANSACTION_setUserProvisioningState:I = 0x10f

.field static final greylist-max-o TRANSACTION_setUserRestriction:I = 0x86

.field static final blacklist TRANSACTION_setUserRestrictionForUser:I = 0x87

.field static final blacklist TRANSACTION_setUserRestrictionGlobally:I = 0x88

.field static final blacklist TRANSACTION_setUserRestrictionGloballyFromSystem:I = 0x89

.field static final blacklist TRANSACTION_setWifiSsidPolicy:I = 0x179

.field static final blacklist TRANSACTION_shouldAllowBypassingDevicePolicyManagementRoleQualification:I = 0x186

.field static final greylist-max-o TRANSACTION_startManagedQuickContact:I = 0xcc

.field static final greylist-max-o TRANSACTION_startUserInBackground:I = 0xa2

.field static final blacklist TRANSACTION_startViewCalendarEventInManagedProfile:I = 0x156

.field static final greylist-max-o TRANSACTION_stopUser:I = 0xa3

.field static final greylist-max-o TRANSACTION_switchUser:I = 0xa1

.field static final greylist-max-o TRANSACTION_transferOwnership:I = 0x138

.field static final blacklist TRANSACTION_triggerDevicePolicyEngineMigration:I = 0x190

.field static final greylist-max-o TRANSACTION_uninstallCaCerts:I = 0x66

.field static final greylist-max-o TRANSACTION_uninstallPackageWithActiveAdmins:I = 0x11e

.field static final greylist-max-o TRANSACTION_updateOverrideApn:I = 0x141

.field static final greylist-max-o TRANSACTION_wipeDataWithReason:I = 0x29


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 1534
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 1535
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 1536
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 1543
    if-nez p0, :cond_4

    .line 1544
    const/4 v0, 0x0

    return-object v0

    .line 1546
    :cond_4
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 1547
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 1548
    move-object v1, v0

    check-cast v1, Landroid/app/admin/IDevicePolicyManager;

    return-object v1

    .line 1550
    :cond_14
    new-instance v1, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 1559
    packed-switch p0, :pswitch_data_5d8

    .line 3215
    const/4 v0, 0x0

    return-object v0

    .line 3211
    :pswitch_5
    const-string v0, "getAppFunctionsPolicy"

    return-object v0

    .line 3207
    :pswitch_8
    const-string/jumbo v0, "setAppFunctionsPolicy"

    return-object v0

    .line 3203
    :pswitch_c
    const-string v0, "getHeadlessDeviceOwnerMode"

    return-object v0

    .line 3199
    :pswitch_f
    const-string v0, "getPolicySizeForAdmin"

    return-object v0

    .line 3195
    :pswitch_12
    const-string v0, "getMaxPolicyStorageLimit"

    return-object v0

    .line 3191
    :pswitch_15
    const-string v0, "forceSetMaxPolicyStorageLimit"

    return-object v0

    .line 3187
    :pswitch_18
    const-string/jumbo v0, "setMaxPolicyStorageLimit"

    return-object v0

    .line 3183
    :pswitch_1c
    const-string/jumbo v0, "getSubscriptionIds"

    return-object v0

    .line 3179
    :pswitch_20
    const-string v0, "getContentProtectionPolicy"

    return-object v0

    .line 3175
    :pswitch_23
    const-string/jumbo v0, "setContentProtectionPolicy"

    return-object v0

    .line 3171
    :pswitch_27
    const-string v0, "calculateHasIncompatibleAccounts"

    return-object v0

    .line 3167
    :pswitch_2a
    const-string v0, "getFinancedDeviceKioskRoleHolder"

    return-object v0

    .line 3163
    :pswitch_2d
    const-string/jumbo v0, "isDeviceFinanced"

    return-object v0

    .line 3159
    :pswitch_31
    const-string/jumbo v0, "triggerDevicePolicyEngineMigration"

    return-object v0

    .line 3155
    :pswitch_35
    const-string v0, "getDevicePolicyState"

    return-object v0

    .line 3151
    :pswitch_38
    const-string v0, "getManagedSubscriptionsPolicy"

    return-object v0

    .line 3147
    :pswitch_3b
    const-string/jumbo v0, "setManagedSubscriptionsPolicy"

    return-object v0

    .line 3143
    :pswitch_3f
    const-string v0, "getMtePolicy"

    return-object v0

    .line 3139
    :pswitch_42
    const-string/jumbo v0, "setMtePolicyBySystem"

    return-object v0

    .line 3135
    :pswitch_46
    const-string/jumbo v0, "setMtePolicy"

    return-object v0

    .line 3131
    :pswitch_4a
    const-string v0, "getApplicationExemptions"

    return-object v0

    .line 3127
    :pswitch_4d
    const-string/jumbo v0, "setApplicationExemptions"

    return-object v0

    .line 3123
    :pswitch_51
    const-string v0, "getPolicyManagedProfiles"

    return-object v0

    .line 3119
    :pswitch_54
    const-string/jumbo v0, "shouldAllowBypassingDevicePolicyManagementRoleQualification"

    return-object v0

    .line 3115
    :pswitch_58
    const-string/jumbo v0, "resetShouldAllowBypassingDevicePolicyManagementRoleQualificationState"

    return-object v0

    .line 3111
    :pswitch_5c
    const-string/jumbo v0, "getString"

    return-object v0

    .line 3107
    :pswitch_60
    const-string/jumbo v0, "resetStrings"

    return-object v0

    .line 3103
    :pswitch_64
    const-string/jumbo v0, "setStrings"

    return-object v0

    .line 3099
    :pswitch_68
    const-string/jumbo v0, "setDpcDownloaded"

    return-object v0

    .line 3095
    :pswitch_6c
    const-string/jumbo v0, "isDpcDownloaded"

    return-object v0

    .line 3091
    :pswitch_70
    const-string v0, "getDrawable"

    return-object v0

    .line 3087
    :pswitch_73
    const-string/jumbo v0, "resetDrawables"

    return-object v0

    .line 3083
    :pswitch_77
    const-string/jumbo v0, "setDrawables"

    return-object v0

    .line 3079
    :pswitch_7b
    const-string/jumbo v0, "listForegroundAffiliatedUsers"

    return-object v0

    .line 3075
    :pswitch_7f
    const-string/jumbo v0, "isDevicePotentiallyStolen"

    return-object v0

    .line 3071
    :pswitch_83
    const-string/jumbo v0, "getWifiSsidPolicy"

    return-object v0

    .line 3067
    :pswitch_87
    const-string/jumbo v0, "setWifiSsidPolicy"

    return-object v0

    .line 3063
    :pswitch_8b
    const-string v0, "getMinimumRequiredWifiSecurityLevel"

    return-object v0

    .line 3059
    :pswitch_8e
    const-string/jumbo v0, "setMinimumRequiredWifiSecurityLevel"

    return-object v0

    .line 3055
    :pswitch_92
    const-string v0, "canUsbDataSignalingBeDisabled"

    return-object v0

    .line 3051
    :pswitch_95
    const-string/jumbo v0, "isUsbDataSignalingEnabled"

    return-object v0

    .line 3047
    :pswitch_99
    const-string/jumbo v0, "setUsbDataSignalingEnabled"

    return-object v0

    .line 3043
    :pswitch_9d
    const-string v0, "canAdminGrantSensorsPermissions"

    return-object v0

    .line 3039
    :pswitch_a0
    const-string/jumbo v0, "resetDefaultCrossProfileIntentFilters"

    return-object v0

    .line 3035
    :pswitch_a4
    const-string v0, "getDeviceOwnerType"

    return-object v0

    .line 3031
    :pswitch_a7
    const-string/jumbo v0, "setDeviceOwnerType"

    return-object v0

    .line 3027
    :pswitch_ab
    const-string/jumbo v0, "removeManagedProfile"

    return-object v0

    .line 3023
    :pswitch_af
    const-string v0, "finalizeWorkProfileProvisioning"

    return-object v0

    .line 3019
    :pswitch_b2
    const-string/jumbo v0, "provisionFullyManagedDevice"

    return-object v0

    .line 3015
    :pswitch_b6
    const-string v0, "finalizeCreateManagedProfile"

    return-object v0

    .line 3011
    :pswitch_b9
    const-string v0, "createManagedProfile"

    return-object v0

    .line 3007
    :pswitch_bc
    const-string v0, "createAndProvisionManagedProfile"

    return-object v0

    .line 3003
    :pswitch_bf
    const-string/jumbo v0, "setOrganizationIdForUser"

    return-object v0

    .line 2999
    :pswitch_c3
    const-string v0, "getEnrollmentSpecificId"

    return-object v0

    .line 2995
    :pswitch_c6
    const-string/jumbo v0, "isSafeOperation"

    return-object v0

    .line 2991
    :pswitch_ca
    const-string/jumbo v0, "setNextOperationSafety"

    return-object v0

    .line 2987
    :pswitch_ce
    const-string v0, "canProfileOwnerResetPasswordWhenLocked"

    return-object v0

    .line 2983
    :pswitch_d1
    const-string/jumbo v0, "isComplianceAcknowledgementRequired"

    return-object v0

    .line 2979
    :pswitch_d5
    const-string v0, "acknowledgeDeviceCompliant"

    return-object v0

    .line 2975
    :pswitch_d8
    const-string/jumbo v0, "setManagedProfileMaximumTimeOff"

    return-object v0

    .line 2971
    :pswitch_dc
    const-string v0, "getManagedProfileMaximumTimeOff"

    return-object v0

    .line 2967
    :pswitch_df
    const-string/jumbo v0, "setPersonalAppsSuspended"

    return-object v0

    .line 2963
    :pswitch_e3
    const-string v0, "getPersonalAppsSuspendedReasons"

    return-object v0

    .line 2959
    :pswitch_e6
    const-string/jumbo v0, "isCommonCriteriaModeEnabled"

    return-object v0

    .line 2955
    :pswitch_ea
    const-string/jumbo v0, "setCommonCriteriaModeEnabled"

    return-object v0

    .line 2951
    :pswitch_ee
    const-string/jumbo v0, "getUserControlDisabledPackages"

    return-object v0

    .line 2947
    :pswitch_f2
    const-string/jumbo v0, "setUserControlDisabledPackages"

    return-object v0

    .line 2943
    :pswitch_f6
    const-string/jumbo v0, "isKeyPairGrantedToWifiAuth"

    return-object v0

    .line 2939
    :pswitch_fa
    const-string/jumbo v0, "setKeyGrantToWifiAuth"

    return-object v0

    .line 2935
    :pswitch_fe
    const-string v0, "getKeyPairGrants"

    return-object v0

    .line 2931
    :pswitch_101
    const-string/jumbo v0, "setKeyGrantForApp"

    return-object v0

    .line 2927
    :pswitch_105
    const-string/jumbo v0, "startViewCalendarEventInManagedProfile"

    return-object v0

    .line 2923
    :pswitch_109
    const-string/jumbo v0, "isUnattendedManagedKiosk"

    return-object v0

    .line 2919
    :pswitch_10d
    const-string/jumbo v0, "isManagedKiosk"

    return-object v0

    .line 2915
    :pswitch_111
    const-string v0, "getDefaultCrossProfilePackages"

    return-object v0

    .line 2911
    :pswitch_114
    const-string v0, "getAllCrossProfilePackages"

    return-object v0

    .line 2907
    :pswitch_117
    const-string v0, "getCrossProfilePackages"

    return-object v0

    .line 2903
    :pswitch_11a
    const-string/jumbo v0, "setCrossProfilePackages"

    return-object v0

    .line 2899
    :pswitch_11e
    const-string v0, "getCrossProfileCalendarPackagesForUser"

    return-object v0

    .line 2895
    :pswitch_121
    const-string/jumbo v0, "isPackageAllowedToAccessCalendarForUser"

    return-object v0

    .line 2891
    :pswitch_125
    const-string v0, "getCrossProfileCalendarPackages"

    return-object v0

    .line 2887
    :pswitch_128
    const-string/jumbo v0, "setCrossProfileCalendarPackages"

    return-object v0

    .line 2883
    :pswitch_12c
    const-string/jumbo v0, "installUpdateFromFile"

    return-object v0

    .line 2879
    :pswitch_130
    const-string/jumbo v0, "setProfileOwnerOnOrganizationOwnedDevice"

    return-object v0

    .line 2875
    :pswitch_134
    const-string v0, "getGlobalPrivateDnsHost"

    return-object v0

    .line 2871
    :pswitch_137
    const-string v0, "getGlobalPrivateDnsMode"

    return-object v0

    .line 2867
    :pswitch_13a
    const-string/jumbo v0, "setGlobalPrivateDns"

    return-object v0

    .line 2863
    :pswitch_13e
    const-string/jumbo v0, "isMeteredDataDisabledPackageForUser"

    return-object v0

    .line 2859
    :pswitch_142
    const-string/jumbo v0, "isOverrideApnEnabled"

    return-object v0

    .line 2855
    :pswitch_146
    const-string/jumbo v0, "setOverrideApnsEnabled"

    return-object v0

    .line 2851
    :pswitch_14a
    const-string v0, "getOverrideApns"

    return-object v0

    .line 2847
    :pswitch_14d
    const-string/jumbo v0, "removeOverrideApn"

    return-object v0

    .line 2843
    :pswitch_151
    const-string/jumbo v0, "updateOverrideApn"

    return-object v0

    .line 2839
    :pswitch_155
    const-string v0, "addOverrideApn"

    return-object v0

    .line 2835
    :pswitch_158
    const-string v0, "getMeteredDataDisabledPackages"

    return-object v0

    .line 2831
    :pswitch_15b
    const-string/jumbo v0, "setMeteredDataDisabledPackages"

    return-object v0

    .line 2827
    :pswitch_15f
    const-string v0, "getEndUserSessionMessage"

    return-object v0

    .line 2823
    :pswitch_162
    const-string/jumbo v0, "getStartUserSessionMessage"

    return-object v0

    .line 2819
    :pswitch_166
    const-string/jumbo v0, "setEndUserSessionMessage"

    return-object v0

    .line 2815
    :pswitch_16a
    const-string/jumbo v0, "setStartUserSessionMessage"

    return-object v0

    .line 2811
    :pswitch_16e
    const-string/jumbo v0, "getTransferOwnershipBundle"

    return-object v0

    .line 2807
    :pswitch_172
    const-string/jumbo v0, "transferOwnership"

    return-object v0

    .line 2803
    :pswitch_176
    const-string v0, "getDisallowedSystemApps"

    return-object v0

    .line 2799
    :pswitch_179
    const-string/jumbo v0, "isLogoutEnabled"

    return-object v0

    .line 2795
    :pswitch_17d
    const-string/jumbo v0, "setLogoutEnabled"

    return-object v0

    .line 2791
    :pswitch_181
    const-string v0, "clearApplicationUserData"

    return-object v0

    .line 2787
    :pswitch_184
    const-string v0, "getOwnerInstalledCaCerts"

    return-object v0

    .line 2783
    :pswitch_187
    const-string/jumbo v0, "isCurrentInputMethodSetByOwner"

    return-object v0

    .line 2779
    :pswitch_18b
    const-string/jumbo v0, "resetPasswordWithToken"

    return-object v0

    .line 2775
    :pswitch_18f
    const-string/jumbo v0, "isResetPasswordTokenActive"

    return-object v0

    .line 2771
    :pswitch_193
    const-string v0, "clearResetPasswordToken"

    return-object v0

    .line 2767
    :pswitch_196
    const-string/jumbo v0, "setResetPasswordToken"

    return-object v0

    .line 2763
    :pswitch_19a
    const-string v0, "getLastNetworkLogRetrievalTime"

    return-object v0

    .line 2759
    :pswitch_19d
    const-string v0, "getLastBugReportRequestTime"

    return-object v0

    .line 2755
    :pswitch_1a0
    const-string v0, "getLastSecurityLogRetrievalTime"

    return-object v0

    .line 2751
    :pswitch_1a3
    const-string/jumbo v0, "isEphemeralUser"

    return-object v0

    .line 2747
    :pswitch_1a7
    const-string v0, "getBindDeviceAdminTargetUsers"

    return-object v0

    .line 2743
    :pswitch_1aa
    const-string v0, "bindDeviceAdminServiceAsUser"

    return-object v0

    .line 2739
    :pswitch_1ad
    const-string/jumbo v0, "retrieveNetworkLogs"

    return-object v0

    .line 2735
    :pswitch_1b1
    const-string/jumbo v0, "isNetworkLoggingEnabled"

    return-object v0

    .line 2731
    :pswitch_1b5
    const-string/jumbo v0, "setNetworkLoggingEnabled"

    return-object v0

    .line 2727
    :pswitch_1b9
    const-string/jumbo v0, "isBackupServiceEnabled"

    return-object v0

    .line 2723
    :pswitch_1bd
    const-string/jumbo v0, "setBackupServiceEnabled"

    return-object v0

    .line 2719
    :pswitch_1c1
    const-string v0, "forceUpdateUserSetupComplete"

    return-object v0

    .line 2715
    :pswitch_1c4
    const-string/jumbo v0, "setDeviceProvisioningConfigApplied"

    return-object v0

    .line 2711
    :pswitch_1c8
    const-string/jumbo v0, "isDeviceProvisioningConfigApplied"

    return-object v0

    .line 2707
    :pswitch_1cc
    const-string/jumbo v0, "isDeviceProvisioned"

    return-object v0

    .line 2703
    :pswitch_1d0
    const-string/jumbo v0, "uninstallPackageWithActiveAdmins"

    return-object v0

    .line 2699
    :pswitch_1d4
    const-string/jumbo v0, "isUninstallInQueue"

    return-object v0

    .line 2695
    :pswitch_1d8
    const-string/jumbo v0, "setAuditLogEventsCallback"

    return-object v0

    .line 2691
    :pswitch_1dc
    const-string/jumbo v0, "isAuditLogEnabled"

    return-object v0

    .line 2687
    :pswitch_1e0
    const-string/jumbo v0, "setAuditLogEnabled"

    return-object v0

    .line 2683
    :pswitch_1e4
    const-string v0, "forceSecurityLogs"

    return-object v0

    .line 2679
    :pswitch_1e7
    const-string v0, "forceNetworkLogs"

    return-object v0

    .line 2675
    :pswitch_1ea
    const-string/jumbo v0, "retrievePreRebootSecurityLogs"

    return-object v0

    .line 2671
    :pswitch_1ee
    const-string/jumbo v0, "retrieveSecurityLogs"

    return-object v0

    .line 2667
    :pswitch_1f2
    const-string/jumbo v0, "isSecurityLoggingEnabled"

    return-object v0

    .line 2663
    :pswitch_1f6
    const-string/jumbo v0, "setSecurityLoggingEnabled"

    return-object v0

    .line 2659
    :pswitch_1fa
    const-string/jumbo v0, "isAffiliatedUser"

    return-object v0

    .line 2655
    :pswitch_1fe
    const-string/jumbo v0, "isCallingUserAffiliated"

    return-object v0

    .line 2651
    :pswitch_202
    const-string v0, "getAffiliationIds"

    return-object v0

    .line 2647
    :pswitch_205
    const-string/jumbo v0, "setAffiliationIds"

    return-object v0

    .line 2643
    :pswitch_209
    const-string/jumbo v0, "setUserProvisioningState"

    return-object v0

    .line 2639
    :pswitch_20d
    const-string/jumbo v0, "getUserProvisioningState"

    return-object v0

    .line 2635
    :pswitch_211
    const-string v0, "getOrganizationNameForUser"

    return-object v0

    .line 2631
    :pswitch_214
    const-string v0, "getDeviceOwnerOrganizationName"

    return-object v0

    .line 2627
    :pswitch_217
    const-string v0, "getOrganizationName"

    return-object v0

    .line 2623
    :pswitch_21a
    const-string/jumbo v0, "setOrganizationName"

    return-object v0

    .line 2619
    :pswitch_21e
    const-string v0, "getOrganizationColorForUser"

    return-object v0

    .line 2615
    :pswitch_221
    const-string v0, "getOrganizationColor"

    return-object v0

    .line 2611
    :pswitch_224
    const-string v0, "clearOrganizationIdForUser"

    return-object v0

    .line 2607
    :pswitch_227
    const-string/jumbo v0, "setOrganizationColorForUser"

    return-object v0

    .line 2603
    :pswitch_22b
    const-string/jumbo v0, "setOrganizationColor"

    return-object v0

    .line 2599
    :pswitch_22f
    const-string v0, "getLongSupportMessageForUser"

    return-object v0

    .line 2595
    :pswitch_232
    const-string/jumbo v0, "getShortSupportMessageForUser"

    return-object v0

    .line 2591
    :pswitch_236
    const-string v0, "getLongSupportMessage"

    return-object v0

    .line 2587
    :pswitch_239
    const-string/jumbo v0, "setLongSupportMessage"

    return-object v0

    .line 2583
    :pswitch_23d
    const-string/jumbo v0, "getShortSupportMessage"

    return-object v0

    .line 2579
    :pswitch_241
    const-string/jumbo v0, "setShortSupportMessage"

    return-object v0

    .line 2575
    :pswitch_245
    const-string/jumbo v0, "reboot"

    return-object v0

    .line 2571
    :pswitch_249
    const-string/jumbo v0, "getWifiMacAddress"

    return-object v0

    .line 2567
    :pswitch_24d
    const-string/jumbo v0, "isManagedProfile"

    return-object v0

    .line 2563
    :pswitch_251
    const-string v0, "getKeepUninstalledPackages"

    return-object v0

    .line 2559
    :pswitch_254
    const-string/jumbo v0, "setKeepUninstalledPackages"

    return-object v0

    .line 2555
    :pswitch_258
    const-string v0, "checkProvisioningPrecondition"

    return-object v0

    .line 2551
    :pswitch_25b
    const-string/jumbo v0, "isProvisioningAllowed"

    return-object v0

    .line 2547
    :pswitch_25f
    const-string v0, "getPermissionGrantState"

    return-object v0

    .line 2543
    :pswitch_262
    const-string/jumbo v0, "setPermissionGrantState"

    return-object v0

    .line 2539
    :pswitch_266
    const-string v0, "getPermissionPolicy"

    return-object v0

    .line 2535
    :pswitch_269
    const-string/jumbo v0, "setPermissionPolicy"

    return-object v0

    .line 2531
    :pswitch_26d
    const-string v0, "getPendingSystemUpdate"

    return-object v0

    .line 2527
    :pswitch_270
    const-string/jumbo v0, "notifyPendingSystemUpdate"

    return-object v0

    .line 2523
    :pswitch_274
    const-string v0, "getDoNotAskCredentialsOnBoot"

    return-object v0

    .line 2519
    :pswitch_277
    const-string/jumbo v0, "isStatusBarDisabled"

    return-object v0

    .line 2515
    :pswitch_27b
    const-string/jumbo v0, "setStatusBarDisabled"

    return-object v0

    .line 2511
    :pswitch_27f
    const-string/jumbo v0, "setKeyguardDisabled"

    return-object v0

    .line 2507
    :pswitch_283
    const-string v0, "clearSystemUpdatePolicyFreezePeriodRecord"

    return-object v0

    .line 2503
    :pswitch_286
    const-string/jumbo v0, "getSystemUpdatePolicy"

    return-object v0

    .line 2499
    :pswitch_28a
    const-string/jumbo v0, "setSystemUpdatePolicy"

    return-object v0

    .line 2495
    :pswitch_28e
    const-string/jumbo v0, "setUserIcon"

    return-object v0

    .line 2491
    :pswitch_292
    const-string/jumbo v0, "isRemovingAdmin"

    return-object v0

    .line 2487
    :pswitch_296
    const-string v0, "getForceEphemeralUsers"

    return-object v0

    .line 2483
    :pswitch_299
    const-string/jumbo v0, "setForceEphemeralUsers"

    return-object v0

    .line 2479
    :pswitch_29d
    const-string v0, "getAutoTimeZonePolicy"

    return-object v0

    .line 2475
    :pswitch_2a0
    const-string/jumbo v0, "setAutoTimeZonePolicy"

    return-object v0

    .line 2471
    :pswitch_2a4
    const-string v0, "getAutoTimeZoneEnabled"

    return-object v0

    .line 2467
    :pswitch_2a7
    const-string/jumbo v0, "setAutoTimeZoneEnabled"

    return-object v0

    .line 2463
    :pswitch_2ab
    const-string v0, "getAutoTimePolicy"

    return-object v0

    .line 2459
    :pswitch_2ae
    const-string/jumbo v0, "setAutoTimePolicy"

    return-object v0

    .line 2455
    :pswitch_2b2
    const-string v0, "getAutoTimeEnabled"

    return-object v0

    .line 2451
    :pswitch_2b5
    const-string/jumbo v0, "setAutoTimeEnabled"

    return-object v0

    .line 2447
    :pswitch_2b9
    const-string v0, "getAutoTimeRequired"

    return-object v0

    .line 2443
    :pswitch_2bc
    const-string/jumbo v0, "setAutoTimeRequired"

    return-object v0

    .line 2439
    :pswitch_2c0
    const-string v0, "getCrossProfileWidgetProviders"

    return-object v0

    .line 2435
    :pswitch_2c3
    const-string/jumbo v0, "removeCrossProfileWidgetProvider"

    return-object v0

    .line 2431
    :pswitch_2c7
    const-string v0, "addCrossProfileWidgetProvider"

    return-object v0

    .line 2427
    :pswitch_2ca
    const-string/jumbo v0, "getTrustAgentConfiguration"

    return-object v0

    .line 2423
    :pswitch_2ce
    const-string/jumbo v0, "setTrustAgentConfiguration"

    return-object v0

    .line 2419
    :pswitch_2d2
    const-string v0, "getBluetoothContactSharingDisabledForUser"

    return-object v0

    .line 2415
    :pswitch_2d5
    const-string v0, "getBluetoothContactSharingDisabled"

    return-object v0

    .line 2411
    :pswitch_2d8
    const-string/jumbo v0, "setBluetoothContactSharingDisabled"

    return-object v0

    .line 2407
    :pswitch_2dc
    const-string/jumbo v0, "hasManagedProfileContactsAccess"

    return-object v0

    .line 2403
    :pswitch_2e0
    const-string v0, "getManagedProfileContactsAccessPolicy"

    return-object v0

    .line 2399
    :pswitch_2e3
    const-string/jumbo v0, "setManagedProfileContactsAccessPolicy"

    return-object v0

    .line 2395
    :pswitch_2e7
    const-string v0, "getCredentialManagerPolicy"

    return-object v0

    .line 2391
    :pswitch_2ea
    const-string/jumbo v0, "setCredentialManagerPolicy"

    return-object v0

    .line 2387
    :pswitch_2ee
    const-string/jumbo v0, "hasManagedProfileCallerIdAccess"

    return-object v0

    .line 2383
    :pswitch_2f2
    const-string v0, "getManagedProfileCallerIdAccessPolicy"

    return-object v0

    .line 2379
    :pswitch_2f5
    const-string/jumbo v0, "setManagedProfileCallerIdAccessPolicy"

    return-object v0

    .line 2375
    :pswitch_2f9
    const-string/jumbo v0, "startManagedQuickContact"

    return-object v0

    .line 2371
    :pswitch_2fd
    const-string v0, "getCrossProfileContactsSearchDisabledForUser"

    return-object v0

    .line 2367
    :pswitch_300
    const-string v0, "getCrossProfileContactsSearchDisabled"

    return-object v0

    .line 2363
    :pswitch_303
    const-string/jumbo v0, "setCrossProfileContactsSearchDisabled"

    return-object v0

    .line 2359
    :pswitch_307
    const-string v0, "getCrossProfileCallerIdDisabledForUser"

    return-object v0

    .line 2355
    :pswitch_30a
    const-string v0, "getCrossProfileCallerIdDisabled"

    return-object v0

    .line 2351
    :pswitch_30d
    const-string/jumbo v0, "setCrossProfileCallerIdDisabled"

    return-object v0

    .line 2347
    :pswitch_311
    const-string/jumbo v0, "isUninstallBlocked"

    return-object v0

    .line 2343
    :pswitch_315
    const-string/jumbo v0, "setUninstallBlocked"

    return-object v0

    .line 2339
    :pswitch_319
    const-string/jumbo v0, "notifyLockTaskModeChanged"

    return-object v0

    .line 2335
    :pswitch_31d
    const-string/jumbo v0, "isMasterVolumeMuted"

    return-object v0

    .line 2331
    :pswitch_321
    const-string/jumbo v0, "setMasterVolumeMuted"

    return-object v0

    .line 2327
    :pswitch_325
    const-string/jumbo v0, "setTimeZone"

    return-object v0

    .line 2323
    :pswitch_329
    const-string/jumbo v0, "setTime"

    return-object v0

    .line 2319
    :pswitch_32d
    const-string/jumbo v0, "setLocationEnabled"

    return-object v0

    .line 2315
    :pswitch_331
    const-string/jumbo v0, "hasLockdownAdminConfiguredNetworks"

    return-object v0

    .line 2311
    :pswitch_335
    const-string/jumbo v0, "setConfiguredNetworksLockdownState"

    return-object v0

    .line 2307
    :pswitch_339
    const-string/jumbo v0, "setSecureSetting"

    return-object v0

    .line 2303
    :pswitch_33d
    const-string/jumbo v0, "setSystemSetting"

    return-object v0

    .line 2299
    :pswitch_341
    const-string/jumbo v0, "setGlobalSetting"

    return-object v0

    .line 2295
    :pswitch_345
    const-string v0, "getLockTaskFeatures"

    return-object v0

    .line 2291
    :pswitch_348
    const-string/jumbo v0, "setLockTaskFeatures"

    return-object v0

    .line 2287
    :pswitch_34c
    const-string/jumbo v0, "isLockTaskPermitted"

    return-object v0

    .line 2283
    :pswitch_350
    const-string v0, "getLockTaskPackages"

    return-object v0

    .line 2279
    :pswitch_353
    const-string/jumbo v0, "setLockTaskPackages"

    return-object v0

    .line 2275
    :pswitch_357
    const-string v0, "getPreferentialNetworkServiceConfigs"

    return-object v0

    .line 2271
    :pswitch_35a
    const-string/jumbo v0, "setPreferentialNetworkServiceConfigs"

    return-object v0

    .line 2267
    :pswitch_35e
    const-string/jumbo v0, "isSecondaryLockscreenEnabled"

    return-object v0

    .line 2263
    :pswitch_362
    const-string/jumbo v0, "setSecondaryLockscreenEnabled"

    return-object v0

    .line 2259
    :pswitch_366
    const-string v0, "getAccountTypesWithManagementDisabledAsUser"

    return-object v0

    .line 2255
    :pswitch_369
    const-string v0, "getAccountTypesWithManagementDisabled"

    return-object v0

    .line 2251
    :pswitch_36c
    const-string/jumbo v0, "setAccountManagementDisabled"

    return-object v0

    .line 2247
    :pswitch_370
    const-string/jumbo v0, "installExistingPackage"

    return-object v0

    .line 2243
    :pswitch_374
    const-string v0, "enableSystemAppWithIntent"

    return-object v0

    .line 2239
    :pswitch_377
    const-string v0, "enableSystemApp"

    return-object v0

    .line 2235
    :pswitch_37a
    const-string/jumbo v0, "isNewUserDisclaimerAcknowledged"

    return-object v0

    .line 2231
    :pswitch_37e
    const-string v0, "acknowledgeNewUserDisclaimer"

    return-object v0

    .line 2227
    :pswitch_381
    const-string v0, "getSecondaryUsers"

    return-object v0

    .line 2223
    :pswitch_384
    const-string v0, "getLogoutUserId"

    return-object v0

    .line 2219
    :pswitch_387
    const-string/jumbo v0, "logoutUserInternal"

    return-object v0

    .line 2215
    :pswitch_38b
    const-string/jumbo v0, "logoutUser"

    return-object v0

    .line 2211
    :pswitch_38f
    const-string/jumbo v0, "stopUser"

    return-object v0

    .line 2207
    :pswitch_393
    const-string/jumbo v0, "startUserInBackground"

    return-object v0

    .line 2203
    :pswitch_397
    const-string/jumbo v0, "switchUser"

    return-object v0

    .line 2199
    :pswitch_39b
    const-string/jumbo v0, "removeUser"

    return-object v0

    .line 2195
    :pswitch_39f
    const-string v0, "createAndManageUser"

    return-object v0

    .line 2191
    :pswitch_3a2
    const-string/jumbo v0, "isApplicationHidden"

    return-object v0

    .line 2187
    :pswitch_3a6
    const-string/jumbo v0, "setApplicationHidden"

    return-object v0

    .line 2183
    :pswitch_3aa
    const-string v0, "getEnforcingAdminsForRestriction"

    return-object v0

    .line 2179
    :pswitch_3ad
    const-string v0, "getEnforcingAdmin"

    return-object v0

    .line 2175
    :pswitch_3b0
    const-string v0, "getEnforcingAdminAndUserDetails"

    return-object v0

    .line 2171
    :pswitch_3b3
    const-string v0, "createAdminSupportIntent"

    return-object v0

    .line 2167
    :pswitch_3b6
    const-string/jumbo v0, "isNotificationListenerServicePermitted"

    return-object v0

    .line 2163
    :pswitch_3ba
    const-string v0, "getPermittedCrossProfileNotificationListeners"

    return-object v0

    .line 2159
    :pswitch_3bd
    const-string/jumbo v0, "setPermittedCrossProfileNotificationListeners"

    return-object v0

    .line 2155
    :pswitch_3c1
    const-string/jumbo v0, "isInputMethodPermittedByAdmin"

    return-object v0

    .line 2151
    :pswitch_3c5
    const-string v0, "getPermittedInputMethodsAsUser"

    return-object v0

    .line 2147
    :pswitch_3c8
    const-string v0, "getPermittedInputMethods"

    return-object v0

    .line 2143
    :pswitch_3cb
    const-string/jumbo v0, "setPermittedInputMethods"

    return-object v0

    .line 2139
    :pswitch_3cf
    const-string/jumbo v0, "isAccessibilityServicePermittedByAdmin"

    return-object v0

    .line 2135
    :pswitch_3d3
    const-string v0, "getPermittedAccessibilityServicesForUser"

    return-object v0

    .line 2131
    :pswitch_3d6
    const-string v0, "getPermittedAccessibilityServices"

    return-object v0

    .line 2127
    :pswitch_3d9
    const-string/jumbo v0, "setPermittedAccessibilityServices"

    return-object v0

    .line 2123
    :pswitch_3dd
    const-string v0, "clearCrossProfileIntentFilters"

    return-object v0

    .line 2119
    :pswitch_3e0
    const-string v0, "addCrossProfileIntentFilter"

    return-object v0

    .line 2115
    :pswitch_3e3
    const-string/jumbo v0, "getUserRestrictionsGlobally"

    return-object v0

    .line 2111
    :pswitch_3e7
    const-string/jumbo v0, "getUserRestrictions"

    return-object v0

    .line 2107
    :pswitch_3eb
    const-string/jumbo v0, "setUserRestrictionGloballyFromSystem"

    return-object v0

    .line 2103
    :pswitch_3ef
    const-string/jumbo v0, "setUserRestrictionGlobally"

    return-object v0

    .line 2099
    :pswitch_3f3
    const-string/jumbo v0, "setUserRestrictionForUser"

    return-object v0

    .line 2095
    :pswitch_3f7
    const-string/jumbo v0, "setUserRestriction"

    return-object v0

    .line 2091
    :pswitch_3fb
    const-string v0, "getRestrictionsProvider"

    return-object v0

    .line 2087
    :pswitch_3fe
    const-string/jumbo v0, "setRestrictionsProvider"

    return-object v0

    .line 2083
    :pswitch_402
    const-string/jumbo v0, "isCallerApplicationRestrictionsManagingPackage"

    return-object v0

    .line 2079
    :pswitch_406
    const-string v0, "getApplicationRestrictionsManagingPackage"

    return-object v0

    .line 2075
    :pswitch_409
    const-string/jumbo v0, "setApplicationRestrictionsManagingPackage"

    return-object v0

    .line 2071
    :pswitch_40d
    const-string v0, "getApplicationRestrictions"

    return-object v0

    .line 2067
    :pswitch_410
    const-string/jumbo v0, "setApplicationRestrictions"

    return-object v0

    .line 2063
    :pswitch_414
    const-string/jumbo v0, "setDefaultDialerApplication"

    return-object v0

    .line 2059
    :pswitch_418
    const-string/jumbo v0, "setDefaultSmsApplication"

    return-object v0

    .line 2055
    :pswitch_41c
    const-string v0, "clearPackagePersistentPreferredActivities"

    return-object v0

    .line 2051
    :pswitch_41f
    const-string v0, "addPersistentPreferredActivity"

    return-object v0

    .line 2047
    :pswitch_422
    const-string v0, "getAlwaysOnVpnLockdownAllowlist"

    return-object v0

    .line 2043
    :pswitch_425
    const-string/jumbo v0, "isAlwaysOnVpnLockdownEnabledForUser"

    return-object v0

    .line 2039
    :pswitch_429
    const-string/jumbo v0, "isAlwaysOnVpnLockdownEnabled"

    return-object v0

    .line 2035
    :pswitch_42d
    const-string v0, "getAlwaysOnVpnPackageForUser"

    return-object v0

    .line 2031
    :pswitch_430
    const-string v0, "getAlwaysOnVpnPackage"

    return-object v0

    .line 2027
    :pswitch_433
    const-string/jumbo v0, "setAlwaysOnVpnPackage"

    return-object v0

    .line 2023
    :pswitch_437
    const-string v0, "getCertInstallerPackage"

    return-object v0

    .line 2019
    :pswitch_43a
    const-string/jumbo v0, "setCertInstallerPackage"

    return-object v0

    .line 2015
    :pswitch_43e
    const-string v0, "getDelegatePackages"

    return-object v0

    .line 2011
    :pswitch_441
    const-string v0, "getDelegatedScopes"

    return-object v0

    .line 2007
    :pswitch_444
    const-string/jumbo v0, "setDelegatedScopes"

    return-object v0

    .line 2003
    :pswitch_448
    const-string v0, "choosePrivateKeyAlias"

    return-object v0

    .line 1999
    :pswitch_44b
    const-string/jumbo v0, "setKeyPairCertificate"

    return-object v0

    .line 1995
    :pswitch_44f
    const-string v0, "generateKeyPair"

    return-object v0

    .line 1991
    :pswitch_452
    const-string/jumbo v0, "hasKeyPair"

    return-object v0

    .line 1987
    :pswitch_456
    const-string/jumbo v0, "removeKeyPair"

    return-object v0

    .line 1983
    :pswitch_45a
    const-string/jumbo v0, "installKeyPair"

    return-object v0

    .line 1979
    :pswitch_45e
    const-string/jumbo v0, "isCaCertApproved"

    return-object v0

    .line 1975
    :pswitch_462
    const-string v0, "approveCaCert"

    return-object v0

    .line 1971
    :pswitch_465
    const-string v0, "enforceCanManageCaCerts"

    return-object v0

    .line 1967
    :pswitch_468
    const-string/jumbo v0, "uninstallCaCerts"

    return-object v0

    .line 1963
    :pswitch_46c
    const-string/jumbo v0, "installCaCert"

    return-object v0

    .line 1959
    :pswitch_470
    const-string/jumbo v0, "listPolicyExemptApps"

    return-object v0

    .line 1955
    :pswitch_474
    const-string/jumbo v0, "isPackageSuspended"

    return-object v0

    .line 1951
    :pswitch_478
    const-string/jumbo v0, "setPackagesSuspended"

    return-object v0

    .line 1947
    :pswitch_47c
    const-string v0, "getDeviceOwnerLockScreenInfo"

    return-object v0

    .line 1943
    :pswitch_47f
    const-string/jumbo v0, "setDeviceOwnerLockScreenInfo"

    return-object v0

    .line 1939
    :pswitch_483
    const-string v0, "checkDeviceIdentifierAccess"

    return-object v0

    .line 1935
    :pswitch_486
    const-string/jumbo v0, "isOrganizationOwnedDeviceWithManagedProfile"

    return-object v0

    .line 1931
    :pswitch_48a
    const-string/jumbo v0, "hasUserSetupCompleted"

    return-object v0

    .line 1927
    :pswitch_48e
    const-string v0, "clearProfileOwner"

    return-object v0

    .line 1923
    :pswitch_491
    const-string/jumbo v0, "setProfileName"

    return-object v0

    .line 1919
    :pswitch_495
    const-string/jumbo v0, "setProfileEnabled"

    return-object v0

    .line 1915
    :pswitch_499
    const-string v0, "getProfileOwnerName"

    return-object v0

    .line 1911
    :pswitch_49c
    const-string/jumbo v0, "isSupervisionComponent"

    return-object v0

    .line 1907
    :pswitch_4a0
    const-string v0, "getProfileOwnerOrDeviceOwnerSupervisionComponent"

    return-object v0

    .line 1903
    :pswitch_4a3
    const-string v0, "getProfileOwnerAsUser"

    return-object v0

    .line 1899
    :pswitch_4a6
    const-string/jumbo v0, "setProfileOwner"

    return-object v0

    .line 1895
    :pswitch_4aa
    const-string v0, "getDeviceOwnerUserId"

    return-object v0

    .line 1891
    :pswitch_4ad
    const-string v0, "clearDeviceOwner"

    return-object v0

    .line 1887
    :pswitch_4b0
    const-string v0, "getDeviceOwnerName"

    return-object v0

    .line 1883
    :pswitch_4b3
    const-string/jumbo v0, "hasDeviceOwner"

    return-object v0

    .line 1879
    :pswitch_4b7
    const-string v0, "getDeviceOwnerComponentOnUser"

    return-object v0

    .line 1875
    :pswitch_4ba
    const-string v0, "getDeviceOwnerComponent"

    return-object v0

    .line 1871
    :pswitch_4bd
    const-string/jumbo v0, "setDeviceOwner"

    return-object v0

    .line 1867
    :pswitch_4c1
    const-string/jumbo v0, "reportKeyguardSecured"

    return-object v0

    .line 1863
    :pswitch_4c5
    const-string/jumbo v0, "reportKeyguardDismissed"

    return-object v0

    .line 1859
    :pswitch_4c9
    const-string/jumbo v0, "reportSuccessfulBiometricAttempt"

    return-object v0

    .line 1855
    :pswitch_4cd
    const-string/jumbo v0, "reportFailedBiometricAttempt"

    return-object v0

    .line 1851
    :pswitch_4d1
    const-string/jumbo v0, "reportSuccessfulPasswordAttempt"

    return-object v0

    .line 1847
    :pswitch_4d5
    const-string/jumbo v0, "reportFailedPasswordAttempt"

    return-object v0

    .line 1843
    :pswitch_4d9
    const-string/jumbo v0, "reportPasswordChanged"

    return-object v0

    .line 1839
    :pswitch_4dd
    const-string/jumbo v0, "hasGrantedPolicy"

    return-object v0

    .line 1835
    :pswitch_4e1
    const-string v0, "forceRemoveActiveAdmin"

    return-object v0

    .line 1831
    :pswitch_4e4
    const-string/jumbo v0, "removeActiveAdmin"

    return-object v0

    .line 1827
    :pswitch_4e8
    const-string v0, "getRemoveWarning"

    return-object v0

    .line 1823
    :pswitch_4eb
    const-string/jumbo v0, "packageHasActiveAdmins"

    return-object v0

    .line 1819
    :pswitch_4ef
    const-string v0, "getActiveAdmins"

    return-object v0

    .line 1815
    :pswitch_4f2
    const-string/jumbo v0, "isAdminActive"

    return-object v0

    .line 1811
    :pswitch_4f6
    const-string/jumbo v0, "setActiveAdmin"

    return-object v0

    .line 1807
    :pswitch_4fa
    const-string v0, "getKeyguardDisabledFeatures"

    return-object v0

    .line 1803
    :pswitch_4fd
    const-string/jumbo v0, "setKeyguardDisabledFeatures"

    return-object v0

    .line 1799
    :pswitch_501
    const-string v0, "getNearbyAppStreamingPolicy"

    return-object v0

    .line 1795
    :pswitch_504
    const-string/jumbo v0, "setNearbyAppStreamingPolicy"

    return-object v0

    .line 1791
    :pswitch_508
    const-string v0, "getNearbyNotificationStreamingPolicy"

    return-object v0

    .line 1787
    :pswitch_50b
    const-string/jumbo v0, "setNearbyNotificationStreamingPolicy"

    return-object v0

    .line 1783
    :pswitch_50f
    const-string v0, "getScreenCaptureDisabled"

    return-object v0

    .line 1779
    :pswitch_512
    const-string/jumbo v0, "setScreenCaptureDisabled"

    return-object v0

    .line 1775
    :pswitch_516
    const-string v0, "getCameraDisabled"

    return-object v0

    .line 1771
    :pswitch_519
    const-string/jumbo v0, "setCameraDisabled"

    return-object v0

    .line 1767
    :pswitch_51d
    const-string/jumbo v0, "requestBugreport"

    return-object v0

    .line 1763
    :pswitch_521
    const-string/jumbo v0, "getStorageEncryptionStatus"

    return-object v0

    .line 1759
    :pswitch_525
    const-string/jumbo v0, "getStorageEncryption"

    return-object v0

    .line 1755
    :pswitch_529
    const-string/jumbo v0, "setStorageEncryption"

    return-object v0

    .line 1751
    :pswitch_52d
    const-string/jumbo v0, "setRecommendedGlobalProxy"

    return-object v0

    .line 1747
    :pswitch_531
    const-string v0, "getGlobalProxyAdmin"

    return-object v0

    .line 1743
    :pswitch_534
    const-string/jumbo v0, "setGlobalProxy"

    return-object v0

    .line 1739
    :pswitch_538
    const-string/jumbo v0, "sendLostModeLocationUpdate"

    return-object v0

    .line 1735
    :pswitch_53c
    const-string/jumbo v0, "isFactoryResetProtectionPolicySupported"

    return-object v0

    .line 1731
    :pswitch_540
    const-string v0, "getFactoryResetProtectionPolicy"

    return-object v0

    .line 1727
    :pswitch_543
    const-string/jumbo v0, "setFactoryResetProtectionPolicy"

    return-object v0

    .line 1723
    :pswitch_547
    const-string/jumbo v0, "wipeDataWithReason"

    return-object v0

    .line 1719
    :pswitch_54b
    const-string/jumbo v0, "lockNow"

    return-object v0

    .line 1715
    :pswitch_54f
    const-string v0, "getRequiredStrongAuthTimeout"

    return-object v0

    .line 1711
    :pswitch_552
    const-string/jumbo v0, "setRequiredStrongAuthTimeout"

    return-object v0

    .line 1707
    :pswitch_556
    const-string v0, "getMaximumTimeToLock"

    return-object v0

    .line 1703
    :pswitch_559
    const-string/jumbo v0, "setMaximumTimeToLock"

    return-object v0

    .line 1699
    :pswitch_55d
    const-string/jumbo v0, "resetPassword"

    return-object v0

    .line 1695
    :pswitch_561
    const-string v0, "getMaximumFailedPasswordsForWipe"

    return-object v0

    .line 1691
    :pswitch_564
    const-string/jumbo v0, "setMaximumFailedPasswordsForWipe"

    return-object v0

    .line 1687
    :pswitch_568
    const-string v0, "getProfileWithMinimumFailedPasswordsForWipe"

    return-object v0

    .line 1683
    :pswitch_56b
    const-string v0, "getCurrentFailedPasswordAttempts"

    return-object v0

    .line 1679
    :pswitch_56e
    const-string/jumbo v0, "isUsingUnifiedPassword"

    return-object v0

    .line 1675
    :pswitch_572
    const-string v0, "getAggregatedPasswordComplexityForUser"

    return-object v0

    .line 1671
    :pswitch_575
    const-string v0, "getRequiredPasswordComplexity"

    return-object v0

    .line 1667
    :pswitch_578
    const-string/jumbo v0, "setRequiredPasswordComplexity"

    return-object v0

    .line 1663
    :pswitch_57c
    const-string v0, "getPasswordComplexity"

    return-object v0

    .line 1659
    :pswitch_57f
    const-string/jumbo v0, "isPasswordSufficientAfterProfileUnification"

    return-object v0

    .line 1655
    :pswitch_583
    const-string/jumbo v0, "isActivePasswordSufficientForDeviceRequirement"

    return-object v0

    .line 1651
    :pswitch_587
    const-string/jumbo v0, "isActivePasswordSufficient"

    return-object v0

    .line 1647
    :pswitch_58b
    const-string v0, "getPasswordExpiration"

    return-object v0

    .line 1643
    :pswitch_58e
    const-string v0, "getPasswordExpirationTimeout"

    return-object v0

    .line 1639
    :pswitch_591
    const-string/jumbo v0, "setPasswordExpirationTimeout"

    return-object v0

    .line 1635
    :pswitch_595
    const-string v0, "getPasswordHistoryLength"

    return-object v0

    .line 1631
    :pswitch_598
    const-string/jumbo v0, "setPasswordHistoryLength"

    return-object v0

    .line 1627
    :pswitch_59c
    const-string v0, "getPasswordMinimumMetrics"

    return-object v0

    .line 1623
    :pswitch_59f
    const-string v0, "getPasswordMinimumNonLetter"

    return-object v0

    .line 1619
    :pswitch_5a2
    const-string/jumbo v0, "setPasswordMinimumNonLetter"

    return-object v0

    .line 1615
    :pswitch_5a6
    const-string v0, "getPasswordMinimumSymbols"

    return-object v0

    .line 1611
    :pswitch_5a9
    const-string/jumbo v0, "setPasswordMinimumSymbols"

    return-object v0

    .line 1607
    :pswitch_5ad
    const-string v0, "getPasswordMinimumNumeric"

    return-object v0

    .line 1603
    :pswitch_5b0
    const-string/jumbo v0, "setPasswordMinimumNumeric"

    return-object v0

    .line 1599
    :pswitch_5b4
    const-string v0, "getPasswordMinimumLetters"

    return-object v0

    .line 1595
    :pswitch_5b7
    const-string/jumbo v0, "setPasswordMinimumLetters"

    return-object v0

    .line 1591
    :pswitch_5bb
    const-string v0, "getPasswordMinimumLowerCase"

    return-object v0

    .line 1587
    :pswitch_5be
    const-string/jumbo v0, "setPasswordMinimumLowerCase"

    return-object v0

    .line 1583
    :pswitch_5c2
    const-string v0, "getPasswordMinimumUpperCase"

    return-object v0

    .line 1579
    :pswitch_5c5
    const-string/jumbo v0, "setPasswordMinimumUpperCase"

    return-object v0

    .line 1575
    :pswitch_5c9
    const-string v0, "getPasswordMinimumLength"

    return-object v0

    .line 1571
    :pswitch_5cc
    const-string/jumbo v0, "setPasswordMinimumLength"

    return-object v0

    .line 1567
    :pswitch_5d0
    const-string v0, "getPasswordQuality"

    return-object v0

    .line 1563
    :pswitch_5d3
    const-string/jumbo v0, "setPasswordQuality"

    return-object v0

    nop

    :pswitch_data_5d8
    .packed-switch 0x1
        :pswitch_5d3
        :pswitch_5d0
        :pswitch_5cc
        :pswitch_5c9
        :pswitch_5c5
        :pswitch_5c2
        :pswitch_5be
        :pswitch_5bb
        :pswitch_5b7
        :pswitch_5b4
        :pswitch_5b0
        :pswitch_5ad
        :pswitch_5a9
        :pswitch_5a6
        :pswitch_5a2
        :pswitch_59f
        :pswitch_59c
        :pswitch_598
        :pswitch_595
        :pswitch_591
        :pswitch_58e
        :pswitch_58b
        :pswitch_587
        :pswitch_583
        :pswitch_57f
        :pswitch_57c
        :pswitch_578
        :pswitch_575
        :pswitch_572
        :pswitch_56e
        :pswitch_56b
        :pswitch_568
        :pswitch_564
        :pswitch_561
        :pswitch_55d
        :pswitch_559
        :pswitch_556
        :pswitch_552
        :pswitch_54f
        :pswitch_54b
        :pswitch_547
        :pswitch_543
        :pswitch_540
        :pswitch_53c
        :pswitch_538
        :pswitch_534
        :pswitch_531
        :pswitch_52d
        :pswitch_529
        :pswitch_525
        :pswitch_521
        :pswitch_51d
        :pswitch_519
        :pswitch_516
        :pswitch_512
        :pswitch_50f
        :pswitch_50b
        :pswitch_508
        :pswitch_504
        :pswitch_501
        :pswitch_4fd
        :pswitch_4fa
        :pswitch_4f6
        :pswitch_4f2
        :pswitch_4ef
        :pswitch_4eb
        :pswitch_4e8
        :pswitch_4e4
        :pswitch_4e1
        :pswitch_4dd
        :pswitch_4d9
        :pswitch_4d5
        :pswitch_4d1
        :pswitch_4cd
        :pswitch_4c9
        :pswitch_4c5
        :pswitch_4c1
        :pswitch_4bd
        :pswitch_4ba
        :pswitch_4b7
        :pswitch_4b3
        :pswitch_4b0
        :pswitch_4ad
        :pswitch_4aa
        :pswitch_4a6
        :pswitch_4a3
        :pswitch_4a0
        :pswitch_49c
        :pswitch_499
        :pswitch_495
        :pswitch_491
        :pswitch_48e
        :pswitch_48a
        :pswitch_486
        :pswitch_483
        :pswitch_47f
        :pswitch_47c
        :pswitch_478
        :pswitch_474
        :pswitch_470
        :pswitch_46c
        :pswitch_468
        :pswitch_465
        :pswitch_462
        :pswitch_45e
        :pswitch_45a
        :pswitch_456
        :pswitch_452
        :pswitch_44f
        :pswitch_44b
        :pswitch_448
        :pswitch_444
        :pswitch_441
        :pswitch_43e
        :pswitch_43a
        :pswitch_437
        :pswitch_433
        :pswitch_430
        :pswitch_42d
        :pswitch_429
        :pswitch_425
        :pswitch_422
        :pswitch_41f
        :pswitch_41c
        :pswitch_418
        :pswitch_414
        :pswitch_410
        :pswitch_40d
        :pswitch_409
        :pswitch_406
        :pswitch_402
        :pswitch_3fe
        :pswitch_3fb
        :pswitch_3f7
        :pswitch_3f3
        :pswitch_3ef
        :pswitch_3eb
        :pswitch_3e7
        :pswitch_3e3
        :pswitch_3e0
        :pswitch_3dd
        :pswitch_3d9
        :pswitch_3d6
        :pswitch_3d3
        :pswitch_3cf
        :pswitch_3cb
        :pswitch_3c8
        :pswitch_3c5
        :pswitch_3c1
        :pswitch_3bd
        :pswitch_3ba
        :pswitch_3b6
        :pswitch_3b3
        :pswitch_3b0
        :pswitch_3ad
        :pswitch_3aa
        :pswitch_3a6
        :pswitch_3a2
        :pswitch_39f
        :pswitch_39b
        :pswitch_397
        :pswitch_393
        :pswitch_38f
        :pswitch_38b
        :pswitch_387
        :pswitch_384
        :pswitch_381
        :pswitch_37e
        :pswitch_37a
        :pswitch_377
        :pswitch_374
        :pswitch_370
        :pswitch_36c
        :pswitch_369
        :pswitch_366
        :pswitch_362
        :pswitch_35e
        :pswitch_35a
        :pswitch_357
        :pswitch_353
        :pswitch_350
        :pswitch_34c
        :pswitch_348
        :pswitch_345
        :pswitch_341
        :pswitch_33d
        :pswitch_339
        :pswitch_335
        :pswitch_331
        :pswitch_32d
        :pswitch_329
        :pswitch_325
        :pswitch_321
        :pswitch_31d
        :pswitch_319
        :pswitch_315
        :pswitch_311
        :pswitch_30d
        :pswitch_30a
        :pswitch_307
        :pswitch_303
        :pswitch_300
        :pswitch_2fd
        :pswitch_2f9
        :pswitch_2f5
        :pswitch_2f2
        :pswitch_2ee
        :pswitch_2ea
        :pswitch_2e7
        :pswitch_2e3
        :pswitch_2e0
        :pswitch_2dc
        :pswitch_2d8
        :pswitch_2d5
        :pswitch_2d2
        :pswitch_2ce
        :pswitch_2ca
        :pswitch_2c7
        :pswitch_2c3
        :pswitch_2c0
        :pswitch_2bc
        :pswitch_2b9
        :pswitch_2b5
        :pswitch_2b2
        :pswitch_2ae
        :pswitch_2ab
        :pswitch_2a7
        :pswitch_2a4
        :pswitch_2a0
        :pswitch_29d
        :pswitch_299
        :pswitch_296
        :pswitch_292
        :pswitch_28e
        :pswitch_28a
        :pswitch_286
        :pswitch_283
        :pswitch_27f
        :pswitch_27b
        :pswitch_277
        :pswitch_274
        :pswitch_270
        :pswitch_26d
        :pswitch_269
        :pswitch_266
        :pswitch_262
        :pswitch_25f
        :pswitch_25b
        :pswitch_258
        :pswitch_254
        :pswitch_251
        :pswitch_24d
        :pswitch_249
        :pswitch_245
        :pswitch_241
        :pswitch_23d
        :pswitch_239
        :pswitch_236
        :pswitch_232
        :pswitch_22f
        :pswitch_22b
        :pswitch_227
        :pswitch_224
        :pswitch_221
        :pswitch_21e
        :pswitch_21a
        :pswitch_217
        :pswitch_214
        :pswitch_211
        :pswitch_20d
        :pswitch_209
        :pswitch_205
        :pswitch_202
        :pswitch_1fe
        :pswitch_1fa
        :pswitch_1f6
        :pswitch_1f2
        :pswitch_1ee
        :pswitch_1ea
        :pswitch_1e7
        :pswitch_1e4
        :pswitch_1e0
        :pswitch_1dc
        :pswitch_1d8
        :pswitch_1d4
        :pswitch_1d0
        :pswitch_1cc
        :pswitch_1c8
        :pswitch_1c4
        :pswitch_1c1
        :pswitch_1bd
        :pswitch_1b9
        :pswitch_1b5
        :pswitch_1b1
        :pswitch_1ad
        :pswitch_1aa
        :pswitch_1a7
        :pswitch_1a3
        :pswitch_1a0
        :pswitch_19d
        :pswitch_19a
        :pswitch_196
        :pswitch_193
        :pswitch_18f
        :pswitch_18b
        :pswitch_187
        :pswitch_184
        :pswitch_181
        :pswitch_17d
        :pswitch_179
        :pswitch_176
        :pswitch_172
        :pswitch_16e
        :pswitch_16a
        :pswitch_166
        :pswitch_162
        :pswitch_15f
        :pswitch_15b
        :pswitch_158
        :pswitch_155
        :pswitch_151
        :pswitch_14d
        :pswitch_14a
        :pswitch_146
        :pswitch_142
        :pswitch_13e
        :pswitch_13a
        :pswitch_137
        :pswitch_134
        :pswitch_130
        :pswitch_12c
        :pswitch_128
        :pswitch_125
        :pswitch_121
        :pswitch_11e
        :pswitch_11a
        :pswitch_117
        :pswitch_114
        :pswitch_111
        :pswitch_10d
        :pswitch_109
        :pswitch_105
        :pswitch_101
        :pswitch_fe
        :pswitch_fa
        :pswitch_f6
        :pswitch_f2
        :pswitch_ee
        :pswitch_ea
        :pswitch_e6
        :pswitch_e3
        :pswitch_df
        :pswitch_dc
        :pswitch_d8
        :pswitch_d5
        :pswitch_d1
        :pswitch_ce
        :pswitch_ca
        :pswitch_c6
        :pswitch_c3
        :pswitch_bf
        :pswitch_bc
        :pswitch_b9
        :pswitch_b6
        :pswitch_b2
        :pswitch_af
        :pswitch_ab
        :pswitch_a7
        :pswitch_a4
        :pswitch_a0
        :pswitch_9d
        :pswitch_99
        :pswitch_95
        :pswitch_92
        :pswitch_8e
        :pswitch_8b
        :pswitch_87
        :pswitch_83
        :pswitch_7f
        :pswitch_7b
        :pswitch_77
        :pswitch_73
        :pswitch_70
        :pswitch_6c
        :pswitch_68
        :pswitch_64
        :pswitch_60
        :pswitch_5c
        :pswitch_58
        :pswitch_54
        :pswitch_51
        :pswitch_4d
        :pswitch_4a
        :pswitch_46
        :pswitch_42
        :pswitch_3f
        :pswitch_3b
        :pswitch_38
        :pswitch_35
        :pswitch_31
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_23
        :pswitch_20
        :pswitch_1c
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method private blacklist onTransact$addCrossProfileIntentFilter$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15132
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15134
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15136
    .local v1, "_arg1":Ljava/lang/String;
    sget-object v2, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/IntentFilter;

    .line 15138
    .local v2, "_arg2":Landroid/content/IntentFilter;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 15139
    .local v3, "_arg3":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15140
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->addCrossProfileIntentFilter(Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/IntentFilter;I)V

    .line 15141
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15142
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$addCrossProfileWidgetProvider$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15608
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15610
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15612
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 15613
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15614
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->addCrossProfileWidgetProvider(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 15615
    .local v3, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15616
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 15617
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$addPersistentPreferredActivity$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14980
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14982
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 14984
    .local v1, "_arg1":Ljava/lang/String;
    sget-object v2, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/IntentFilter;

    .line 14986
    .local v2, "_arg2":Landroid/content/IntentFilter;
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 14987
    .local v3, "_arg3":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14988
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->addPersistentPreferredActivity(Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/IntentFilter;Landroid/content/ComponentName;)V

    .line 14989
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14990
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$approveCaCert$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14824
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 14826
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 14828
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 14829
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14830
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->approveCaCert(Ljava/lang/String;IZ)Z

    move-result v3

    .line 14831
    .local v3, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14832
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 14833
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$bindDeviceAdminServiceAsUser$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 13
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15894
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/ComponentName;

    .line 15896
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v3

    .line 15898
    .local v3, "_arg1":Landroid/app/IApplicationThread;
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 15900
    .local v4, "_arg2":Landroid/os/IBinder;
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/content/Intent;

    .line 15902
    .local v5, "_arg3":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IServiceConnection;

    move-result-object v6

    .line 15904
    .local v6, "_arg4":Landroid/app/IServiceConnection;
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 15906
    .local v7, "_arg5":J
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 15907
    .local v9, "_arg6":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15908
    move-object v1, p0

    invoke-virtual/range {v1 .. v9}, Landroid/app/admin/IDevicePolicyManager$Stub;->bindDeviceAdminServiceAsUser(Landroid/content/ComponentName;Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Landroid/app/IServiceConnection;JI)Z

    move-result v0

    .line 15909
    .local v0, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15910
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 15911
    const/4 v1, 0x1

    return v1
.end method

.method private blacklist onTransact$checkDeviceIdentifierAccess$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14744
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 14746
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 14748
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 14749
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14750
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->checkDeviceIdentifierAccess(Ljava/lang/String;II)Z

    move-result v3

    .line 14751
    .local v3, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14752
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 14753
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$choosePrivateKeyAlias$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14924
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 14926
    .local v0, "_arg0":I
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 14928
    .local v1, "_arg1":Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 14930
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 14931
    .local v3, "_arg3":Landroid/os/IBinder;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14932
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->choosePrivateKeyAlias(ILandroid/net/Uri;Ljava/lang/String;Landroid/os/IBinder;)V

    .line 14933
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14934
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$clearApplicationUserData$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15960
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15962
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15964
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/pm/IPackageDataObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDataObserver;

    move-result-object v2

    .line 15965
    .local v2, "_arg2":Landroid/content/pm/IPackageDataObserver;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15966
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->clearApplicationUserData(Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V

    .line 15967
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15968
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$clearPackagePersistentPreferredActivities$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14996
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14998
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15000
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 15001
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15002
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->clearPackagePersistentPreferredActivities(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V

    .line 15003
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15004
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$createAndManageUser$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 10
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15260
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/ComponentName;

    .line 15262
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 15264
    .local v3, "_arg1":Ljava/lang/String;
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/content/ComponentName;

    .line 15266
    .local v4, "_arg2":Landroid/content/ComponentName;
    sget-object v0, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/os/PersistableBundle;

    .line 15268
    .local v5, "_arg3":Landroid/os/PersistableBundle;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 15269
    .local v6, "_arg4":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15270
    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->createAndManageUser(Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/PersistableBundle;I)Landroid/os/UserHandle;

    move-result-object v0

    .line 15271
    .local v0, "_result":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15272
    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 15273
    return v1
.end method

.method private blacklist onTransact$enableSystemApp$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15289
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15291
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15293
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 15294
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15295
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->enableSystemApp(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V

    .line 15296
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15297
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$enableSystemAppWithIntent$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15303
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15305
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15307
    .local v1, "_arg1":Ljava/lang/String;
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 15308
    .local v2, "_arg2":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15309
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->enableSystemAppWithIntent(Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;)I

    move-result v3

    .line 15310
    .local v3, "_result":I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15311
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 15312
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$forceSetMaxPolicyStorageLimit$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16370
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 16372
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 16373
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16374
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->forceSetMaxPolicyStorageLimit(Ljava/lang/String;I)V

    .line 16375
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16376
    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$generateKeyPair$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 11
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14881
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/ComponentName;

    .line 14883
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 14885
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 14887
    .local v4, "_arg2":Ljava/lang/String;
    sget-object v0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/security/keystore/ParcelableKeyGenParameterSpec;

    .line 14889
    .local v5, "_arg3":Landroid/security/keystore/ParcelableKeyGenParameterSpec;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 14891
    .local v6, "_arg4":I
    new-instance v7, Landroid/security/keymaster/KeymasterCertificateChain;

    invoke-direct {v7}, Landroid/security/keymaster/KeymasterCertificateChain;-><init>()V

    .line 14892
    .local v7, "_arg5":Landroid/security/keymaster/KeymasterCertificateChain;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14893
    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->generateKeyPair(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Landroid/security/keystore/ParcelableKeyGenParameterSpec;ILandroid/security/keymaster/KeymasterCertificateChain;)Z

    move-result v0

    .line 14894
    .local v0, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14895
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 14896
    const/4 v1, 0x1

    invoke-virtual {p2, v7, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 14897
    return v1
.end method

.method private blacklist onTransact$getAccountTypesWithManagementDisabledAsUser$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15352
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 15354
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15356
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 15357
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15358
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAccountTypesWithManagementDisabledAsUser(ILjava/lang/String;Z)[Ljava/lang/String;

    move-result-object v3

    .line 15359
    .local v3, "_result":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15360
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 15361
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$getAppFunctionsPolicy$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16409
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 16411
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 16412
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16413
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAppFunctionsPolicy(Ljava/lang/String;I)I

    move-result v2

    .line 16414
    .local v2, "_result":I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16415
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 16416
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$getApplicationRestrictions$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 9
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15045
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15047
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15049
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 15051
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 15052
    .local v3, "_arg3":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15053
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->getApplicationRestrictions(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v4

    .line 15054
    .local v4, "_result":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15055
    const/4 v5, 0x1

    invoke-virtual {p2, v4, v5}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 15056
    return v5
.end method

.method private blacklist onTransact$getCameraDisabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 9
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14573
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14575
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 14577
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 14579
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 14580
    .local v3, "_arg3":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14581
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCameraDisabled(Landroid/content/ComponentName;Ljava/lang/String;IZ)Z

    move-result v4

    .line 14582
    .local v4, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14583
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 14584
    const/4 v5, 0x1

    return v5
.end method

.method private blacklist onTransact$getContentProtectionPolicy$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16342
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16344
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 16346
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 16347
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16348
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getContentProtectionPolicy(Landroid/content/ComponentName;Ljava/lang/String;I)I

    move-result v3

    .line 16349
    .local v3, "_result":I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16350
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 16351
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$getCurrentFailedPasswordAttempts$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14377
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 14379
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 14381
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 14382
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14383
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCurrentFailedPasswordAttempts(Ljava/lang/String;IZ)I

    move-result v3

    .line 14384
    .local v3, "_result":I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14385
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 14386
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$getDisallowedSystemApps$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15976
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15978
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 15980
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 15981
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15982
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getDisallowedSystemApps(Landroid/content/ComponentName;ILjava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 15983
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15984
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 15985
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$getDrawable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16258
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 16260
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 16262
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 16263
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16264
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getDrawable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/admin/ParcelableResource;

    move-result-object v3

    .line 16265
    .local v3, "_result":Landroid/app/admin/ParcelableResource;
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16266
    const/4 v4, 0x1

    invoke-virtual {p2, v3, v4}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 16267
    return v4
.end method

.method private blacklist onTransact$getKeyguardDisabledFeatures$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14641
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14643
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 14645
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 14646
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14647
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;IZ)I

    move-result v3

    .line 14648
    .local v3, "_result":I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14649
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 14650
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$getMaximumFailedPasswordsForWipe$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14409
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14411
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 14413
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 14414
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14415
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;IZ)I

    move-result v3

    .line 14416
    .local v3, "_result":I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14417
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 14418
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$getMaximumTimeToLock$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 9
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14441
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14443
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 14445
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 14446
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14447
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getMaximumTimeToLock(Landroid/content/ComponentName;IZ)J

    move-result-wide v3

    .line 14448
    .local v3, "_result":J
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14449
    invoke-virtual {p2, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 14450
    const/4 v5, 0x1

    return v5
.end method

.method private blacklist onTransact$getPasswordExpiration$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 9
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14327
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14329
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 14331
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 14332
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14333
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordExpiration(Landroid/content/ComponentName;IZ)J

    move-result-wide v3

    .line 14334
    .local v3, "_result":J
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14335
    invoke-virtual {p2, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 14336
    const/4 v5, 0x1

    return v5
.end method

.method private blacklist onTransact$getPasswordExpirationTimeout$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 9
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14312
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14314
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 14316
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 14317
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14318
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordExpirationTimeout(Landroid/content/ComponentName;IZ)J

    move-result-wide v3

    .line 14319
    .local v3, "_result":J
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14320
    invoke-virtual {p2, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 14321
    const/4 v5, 0x1

    return v5
.end method

.method private blacklist onTransact$getPasswordHistoryLength$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14281
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14283
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 14285
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 14286
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14287
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordHistoryLength(Landroid/content/ComponentName;IZ)I

    move-result v3

    .line 14288
    .local v3, "_result":I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14289
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 14290
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$getPasswordMinimumLength$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14077
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14079
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 14081
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 14082
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14083
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumLength(Landroid/content/ComponentName;IZ)I

    move-result v3

    .line 14084
    .local v3, "_result":I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14085
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 14086
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$getPasswordMinimumLetters$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14164
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14166
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 14168
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 14169
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14170
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumLetters(Landroid/content/ComponentName;IZ)I

    move-result v3

    .line 14171
    .local v3, "_result":I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14172
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 14173
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$getPasswordMinimumLowerCase$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14135
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14137
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 14139
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 14140
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14141
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumLowerCase(Landroid/content/ComponentName;IZ)I

    move-result v3

    .line 14142
    .local v3, "_result":I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14143
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 14144
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$getPasswordMinimumNonLetter$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14251
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14253
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 14255
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 14256
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14257
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumNonLetter(Landroid/content/ComponentName;IZ)I

    move-result v3

    .line 14258
    .local v3, "_result":I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14259
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 14260
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$getPasswordMinimumNumeric$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14193
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14195
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 14197
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 14198
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14199
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumNumeric(Landroid/content/ComponentName;IZ)I

    move-result v3

    .line 14200
    .local v3, "_result":I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14201
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 14202
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$getPasswordMinimumSymbols$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14222
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14224
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 14226
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 14227
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14228
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumSymbols(Landroid/content/ComponentName;IZ)I

    move-result v3

    .line 14229
    .local v3, "_result":I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14230
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 14231
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$getPasswordMinimumUpperCase$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14106
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14108
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 14110
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 14111
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14112
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumUpperCase(Landroid/content/ComponentName;IZ)I

    move-result v3

    .line 14113
    .local v3, "_result":I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14114
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 14115
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$getPasswordQuality$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14048
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14050
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 14052
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 14053
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14054
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordQuality(Landroid/content/ComponentName;IZ)I

    move-result v3

    .line 14055
    .local v3, "_result":I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14056
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 14057
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$getPermissionGrantState$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 9
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15750
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15752
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15754
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 15756
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 15757
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15758
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPermissionGrantState(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 15759
    .local v4, "_result":I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15760
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 15761
    const/4 v5, 0x1

    return v5
.end method

.method private blacklist onTransact$getPermittedInputMethods$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15184
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15186
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15188
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 15189
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15190
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPermittedInputMethods(Landroid/content/ComponentName;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v3

    .line 15191
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15192
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 15193
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$getPolicySizeForAdmin$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16383
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 16385
    .local v0, "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/app/admin/EnforcingAdmin;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/EnforcingAdmin;

    .line 16386
    .local v1, "_arg1":Landroid/app/admin/EnforcingAdmin;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16387
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPolicySizeForAdmin(Ljava/lang/String;Landroid/app/admin/EnforcingAdmin;)I

    move-result v2

    .line 16388
    .local v2, "_result":I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16389
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 16390
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$getRemoveWarning$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14675
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14677
    .local v0, "_arg0":Landroid/content/ComponentName;
    sget-object v1, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteCallback;

    .line 14679
    .local v1, "_arg1":Landroid/os/RemoteCallback;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 14680
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14681
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;I)V

    .line 14682
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14683
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$getRequiredStrongAuthTimeout$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 9
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14472
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14474
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 14476
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 14477
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14478
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getRequiredStrongAuthTimeout(Landroid/content/ComponentName;IZ)J

    move-result-wide v3

    .line 14479
    .local v3, "_result":J
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14480
    invoke-virtual {p2, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 14481
    const/4 v5, 0x1

    return v5
.end method

.method private blacklist onTransact$getScreenCaptureDisabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14606
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14608
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 14610
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 14611
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14612
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getScreenCaptureDisabled(Landroid/content/ComponentName;IZ)Z

    move-result v3

    .line 14613
    .local v3, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14614
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 14615
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$getTrustAgentConfiguration$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 9
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15591
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15593
    .local v0, "_arg0":Landroid/content/ComponentName;
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 15595
    .local v1, "_arg1":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 15597
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 15598
    .local v3, "_arg3":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15599
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->getTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;IZ)Ljava/util/List;

    move-result-object v4

    .line 15600
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/PersistableBundle;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15601
    const/4 v5, 0x1

    invoke-virtual {p2, v4, v5}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 15602
    return v5
.end method

.method private blacklist onTransact$getUserRestrictions$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15116
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15118
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15120
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 15121
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15122
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getUserRestrictions(Landroid/content/ComponentName;Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v3

    .line 15123
    .local v3, "_result":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15124
    const/4 v4, 0x1

    invoke-virtual {p2, v3, v4}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 15125
    return v4
.end method

.method private blacklist onTransact$hasGrantedPolicy$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14691
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14693
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 14695
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 14696
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14697
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->hasGrantedPolicy(Landroid/content/ComponentName;II)Z

    move-result v3

    .line 14698
    .local v3, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14699
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 14700
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$installCaCert$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14794
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14796
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 14798
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 14799
    .local v2, "_arg2":[B
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14800
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->installCaCert(Landroid/content/ComponentName;Ljava/lang/String;[B)Z

    move-result v3

    .line 14801
    .local v3, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14802
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 14803
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$installExistingPackage$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15318
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15320
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15322
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 15323
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15324
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->installExistingPackage(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 15325
    .local v3, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15326
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 15327
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$installKeyPair$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 13
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14840
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/ComponentName;

    .line 14842
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 14844
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 14846
    .local v4, "_arg2":[B
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 14848
    .local v5, "_arg3":[B
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .line 14850
    .local v6, "_arg4":[B
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 14852
    .local v7, "_arg5":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v8

    .line 14854
    .local v8, "_arg6":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v9

    .line 14855
    .local v9, "_arg7":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14856
    move-object v1, p0

    invoke-virtual/range {v1 .. v9}, Landroid/app/admin/IDevicePolicyManager$Stub;->installKeyPair(Landroid/content/ComponentName;Ljava/lang/String;[B[B[BLjava/lang/String;ZZ)Z

    move-result v0

    .line 14857
    .local v0, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14858
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 14859
    const/4 v1, 0x1

    return v1
.end method

.method private blacklist onTransact$installUpdateFromFile$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16078
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16080
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 16082
    .local v1, "_arg1":Ljava/lang/String;
    sget-object v2, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    .line 16084
    .local v2, "_arg2":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/admin/StartInstallingUpdateCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/StartInstallingUpdateCallback;

    move-result-object v3

    .line 16085
    .local v3, "_arg3":Landroid/app/admin/StartInstallingUpdateCallback;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16086
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->installUpdateFromFile(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/app/admin/StartInstallingUpdateCallback;)V

    .line 16087
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16088
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$isAccessibilityServicePermittedByAdmin$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15152
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15154
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15156
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 15157
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15158
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->isAccessibilityServicePermittedByAdmin(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result v3

    .line 15159
    .local v3, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15160
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 15161
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$isActivePasswordSufficient$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14342
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 14344
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 14346
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 14347
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14348
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->isActivePasswordSufficient(Ljava/lang/String;IZ)Z

    move-result v3

    .line 14349
    .local v3, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14350
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 14351
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$isApplicationHidden$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 9
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15243
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15245
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15247
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 15249
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 15250
    .local v3, "_arg3":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15251
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->isApplicationHidden(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    .line 15252
    .local v4, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15253
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 15254
    const/4 v5, 0x1

    return v5
.end method

.method private blacklist onTransact$isInputMethodPermittedByAdmin$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 9
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15200
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15202
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15204
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 15206
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 15207
    .local v3, "_arg3":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15208
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->isInputMethodPermittedByAdmin(Landroid/content/ComponentName;Ljava/lang/String;IZ)Z

    move-result v4

    .line 15209
    .local v4, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15210
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 15211
    const/4 v5, 0x1

    return v5
.end method

.method private blacklist onTransact$isMeteredDataDisabledPackageForUser$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16032
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16034
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 16036
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 16037
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16038
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->isMeteredDataDisabledPackageForUser(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result v3

    .line 16039
    .local v3, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16040
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 16041
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$isPackageSuspended$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14778
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14780
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 14782
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 14783
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14784
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->isPackageSuspended(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 14785
    .local v3, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14786
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 14787
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$lockNow$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14487
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 14489
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 14491
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 14492
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14493
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->lockNow(ILjava/lang/String;Z)V

    .line 14494
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14495
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$notifyLockTaskModeChanged$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15507
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 15509
    .local v0, "_arg0":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15511
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 15512
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15513
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->notifyLockTaskModeChanged(ZLjava/lang/String;I)V

    .line 15514
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15515
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$removeCrossProfileWidgetProvider$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15623
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15625
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15627
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 15628
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15629
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->removeCrossProfileWidgetProvider(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 15630
    .local v3, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15631
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 15632
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$removeKeyPair$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14865
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14867
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 14869
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 14870
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14871
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->removeKeyPair(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 14872
    .local v3, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14873
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 14874
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$resetPasswordWithToken$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 10
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15939
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/ComponentName;

    .line 15941
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 15943
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 15945
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 15947
    .local v5, "_arg3":[B
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 15948
    .local v6, "_arg4":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15949
    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->resetPasswordWithToken(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;[BI)Z

    move-result v0

    .line 15950
    .local v0, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15951
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 15952
    const/4 v1, 0x1

    return v1
.end method

.method private blacklist onTransact$retrieveNetworkLogs$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 9
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15879
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15881
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15883
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 15884
    .local v2, "_arg2":J
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15885
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->retrieveNetworkLogs(Landroid/content/ComponentName;Ljava/lang/String;J)Ljava/util/List;

    move-result-object v4

    .line 15886
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/NetworkEvent;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15887
    const/4 v5, 0x1

    invoke-virtual {p2, v4, v5}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 15888
    return v5
.end method

.method private blacklist onTransact$setAccountManagementDisabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 10
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15333
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/ComponentName;

    .line 15335
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 15337
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 15339
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 15341
    .local v5, "_arg3":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    .line 15342
    .local v6, "_arg4":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15343
    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAccountManagementDisabled(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 15344
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15345
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist onTransact$setActiveAdmin$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14656
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14658
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 14660
    .local v1, "_arg1":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 14662
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 14663
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14664
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setActiveAdmin(Landroid/content/ComponentName;ZILjava/lang/String;)V

    .line 14665
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14666
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$setAlwaysOnVpnPackage$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 9
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14958
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14960
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 14962
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 14964
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 14965
    .local v3, "_arg3":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14966
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAlwaysOnVpnPackage(Landroid/content/ComponentName;Ljava/lang/String;ZLjava/util/List;)Z

    move-result v4

    .line 14967
    .local v4, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14968
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 14969
    const/4 v5, 0x1

    return v5
.end method

.method private blacklist onTransact$setAppFunctionsPolicy$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16397
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 16399
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 16400
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16401
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAppFunctionsPolicy(Ljava/lang/String;I)V

    .line 16402
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16403
    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$setApplicationExemptions$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16281
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 16283
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 16285
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 16286
    .local v2, "_arg2":[I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16287
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setApplicationExemptions(Ljava/lang/String;Ljava/lang/String;[I)V

    .line 16288
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16289
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setApplicationHidden$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 10
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15224
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/ComponentName;

    .line 15226
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 15228
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 15230
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 15232
    .local v5, "_arg3":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    .line 15233
    .local v6, "_arg4":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15234
    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setApplicationHidden(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v0

    .line 15235
    .local v0, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15236
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 15237
    const/4 v1, 0x1

    return v1
.end method

.method private blacklist onTransact$setApplicationRestrictions$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 10
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15027
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/ComponentName;

    .line 15029
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 15031
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 15033
    .local v4, "_arg2":Ljava/lang/String;
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/os/Bundle;

    .line 15035
    .local v5, "_arg3":Landroid/os/Bundle;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    .line 15036
    .local v6, "_arg4":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15037
    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setApplicationRestrictions(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V

    .line 15038
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15039
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist onTransact$setAutoTimeEnabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15641
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15643
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15645
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 15646
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15647
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAutoTimeEnabled(Landroid/content/ComponentName;Ljava/lang/String;Z)V

    .line 15648
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15649
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setAutoTimeZoneEnabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15658
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15660
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15662
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 15663
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15664
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAutoTimeZoneEnabled(Landroid/content/ComponentName;Ljava/lang/String;Z)V

    .line 15665
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15666
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setCameraDisabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14557
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14559
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 14561
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 14563
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 14564
    .local v3, "_arg3":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14565
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setCameraDisabled(Landroid/content/ComponentName;Ljava/lang/String;ZZ)V

    .line 14566
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14567
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$setCommonCriteriaModeEnabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16176
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16178
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 16180
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 16181
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16182
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setCommonCriteriaModeEnabled(Landroid/content/ComponentName;Ljava/lang/String;Z)V

    .line 16183
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16184
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setConfiguredNetworksLockdownState$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15459
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15461
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15463
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 15464
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15465
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setConfiguredNetworksLockdownState(Landroid/content/ComponentName;Ljava/lang/String;Z)V

    .line 15466
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15467
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setContentProtectionPolicy$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16328
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16330
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 16332
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 16333
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16334
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setContentProtectionPolicy(Landroid/content/ComponentName;Ljava/lang/String;I)V

    .line 16335
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16336
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setDefaultSmsApplication$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15010
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15012
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15014
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 15016
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 15017
    .local v3, "_arg3":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15018
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setDefaultSmsApplication(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 15019
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15020
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$setDelegatedScopes$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14940
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14942
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 14944
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 14945
    .local v2, "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14946
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setDelegatedScopes(Landroid/content/ComponentName;Ljava/lang/String;Ljava/util/List;)V

    .line 14947
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14948
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setDeviceOwner$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14713
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14715
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 14717
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 14718
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14719
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setDeviceOwner(Landroid/content/ComponentName;IZ)Z

    move-result v3

    .line 14720
    .local v3, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14721
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 14722
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$setFactoryResetProtectionPolicy$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14519
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14521
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 14523
    .local v1, "_arg1":Ljava/lang/String;
    sget-object v2, Landroid/app/admin/FactoryResetProtectionPolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/FactoryResetProtectionPolicy;

    .line 14524
    .local v2, "_arg2":Landroid/app/admin/FactoryResetProtectionPolicy;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14525
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setFactoryResetProtectionPolicy(Landroid/content/ComponentName;Ljava/lang/String;Landroid/app/admin/FactoryResetProtectionPolicy;)V

    .line 14526
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14527
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setGlobalPrivateDns$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16047
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16049
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 16051
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 16052
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16053
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setGlobalPrivateDns(Landroid/content/ComponentName;ILjava/lang/String;)I

    move-result v3

    .line 16054
    .local v3, "_result":I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16055
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 16056
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$setGlobalProxy$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14536
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14538
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 14540
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 14541
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14542
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setGlobalProxy(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    .line 14543
    .local v3, "_result":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14544
    const/4 v4, 0x1

    invoke-virtual {p2, v3, v4}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 14545
    return v4
.end method

.method private blacklist onTransact$setGlobalSetting$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15415
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15417
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15419
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 15420
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15421
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setGlobalSetting(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V

    .line 15422
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15423
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setKeepUninstalledPackages$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15769
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15771
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15773
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 15774
    .local v2, "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15775
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setKeepUninstalledPackages(Landroid/content/ComponentName;Ljava/lang/String;Ljava/util/List;)V

    .line 15776
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15777
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setKeyGrantForApp$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 10
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16125
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/ComponentName;

    .line 16127
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 16129
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 16131
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 16133
    .local v5, "_arg3":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    .line 16134
    .local v6, "_arg4":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16135
    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setKeyGrantForApp(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 16136
    .local v0, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16137
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 16138
    const/4 v1, 0x1

    return v1
.end method

.method private blacklist onTransact$setKeyGrantToWifiAuth$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16145
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 16147
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 16149
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 16150
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16151
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setKeyGrantToWifiAuth(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    .line 16152
    .local v3, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16153
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 16154
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$setKeyPairCertificate$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 11
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14903
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/ComponentName;

    .line 14905
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 14907
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 14909
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 14911
    .local v5, "_arg3":[B
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .line 14913
    .local v6, "_arg4":[B
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v7

    .line 14914
    .local v7, "_arg5":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14915
    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setKeyPairCertificate(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;[B[BZ)Z

    move-result v0

    .line 14916
    .local v0, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14917
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 14918
    const/4 v1, 0x1

    return v1
.end method

.method private blacklist onTransact$setKeyguardDisabledFeatures$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14625
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14627
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 14629
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 14631
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 14632
    .local v3, "_arg3":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14633
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setKeyguardDisabledFeatures(Landroid/content/ComponentName;Ljava/lang/String;IZ)V

    .line 14634
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14635
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$setLockTaskFeatures$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15400
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15402
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15404
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 15405
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15406
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setLockTaskFeatures(Landroid/content/ComponentName;Ljava/lang/String;I)V

    .line 15407
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15408
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setLockTaskPackages$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15384
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15386
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15388
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 15389
    .local v2, "_arg2":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15390
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setLockTaskPackages(Landroid/content/ComponentName;Ljava/lang/String;[Ljava/lang/String;)V

    .line 15391
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15392
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setMaxPolicyStorageLimit$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16358
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 16360
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 16361
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16362
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setMaxPolicyStorageLimit(Ljava/lang/String;I)V

    .line 16363
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16364
    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$setMaximumFailedPasswordsForWipe$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14393
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14395
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 14397
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 14399
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 14400
    .local v3, "_arg3":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14401
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;Ljava/lang/String;IZ)V

    .line 14402
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14403
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$setMaximumTimeToLock$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 10
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14425
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/ComponentName;

    .line 14427
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 14429
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 14431
    .local v4, "_arg2":J
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    .line 14432
    .local v6, "_arg3":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14433
    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setMaximumTimeToLock(Landroid/content/ComponentName;Ljava/lang/String;JZ)V

    .line 14434
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14435
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist onTransact$setMinimumRequiredWifiSecurityLevel$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16228
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 16230
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 16231
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16232
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setMinimumRequiredWifiSecurityLevel(Ljava/lang/String;I)V

    .line 16233
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16234
    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$setMtePolicy$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16296
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 16298
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 16299
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16300
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setMtePolicy(ILjava/lang/String;)V

    .line 16301
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16302
    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$setMtePolicyBySystem$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16308
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 16310
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 16311
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16312
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setMtePolicyBySystem(Ljava/lang/String;I)V

    .line 16313
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16314
    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$setNetworkLoggingEnabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15864
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15866
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15868
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 15869
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15870
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setNetworkLoggingEnabled(Landroid/content/ComponentName;Ljava/lang/String;Z)V

    .line 15871
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15872
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setOrganizationIdForUser$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16201
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 16203
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 16205
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 16206
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16207
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setOrganizationIdForUser(Ljava/lang/String;Ljava/lang/String;I)V

    .line 16208
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16209
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setOrganizationName$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15811
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15813
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15815
    .local v1, "_arg1":Ljava/lang/String;
    sget-object v2, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 15816
    .local v2, "_arg2":Ljava/lang/CharSequence;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15817
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setOrganizationName(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 15818
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15819
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setPackagesSuspended$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 9
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14761
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14763
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 14765
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 14767
    .local v2, "_arg2":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 14768
    .local v3, "_arg3":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14769
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPackagesSuspended(Landroid/content/ComponentName;Ljava/lang/String;[Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v4

    .line 14770
    .local v4, "_result":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14771
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 14772
    const/4 v5, 0x1

    return v5
.end method

.method private blacklist onTransact$setPasswordExpirationTimeout$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 10
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14296
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/ComponentName;

    .line 14298
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 14300
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 14302
    .local v4, "_arg2":J
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    .line 14303
    .local v6, "_arg3":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14304
    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordExpirationTimeout(Landroid/content/ComponentName;Ljava/lang/String;JZ)V

    .line 14305
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14306
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist onTransact$setPasswordHistoryLength$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14267
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14269
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 14271
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 14272
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14273
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordHistoryLength(Landroid/content/ComponentName;IZ)V

    .line 14274
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14275
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setPasswordMinimumLength$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14063
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14065
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 14067
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 14068
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14069
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumLength(Landroid/content/ComponentName;IZ)V

    .line 14070
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14071
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setPasswordMinimumLetters$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14150
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14152
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 14154
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 14155
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14156
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumLetters(Landroid/content/ComponentName;IZ)V

    .line 14157
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14158
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setPasswordMinimumLowerCase$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14121
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14123
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 14125
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 14126
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14127
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumLowerCase(Landroid/content/ComponentName;IZ)V

    .line 14128
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14129
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setPasswordMinimumNonLetter$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14237
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14239
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 14241
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 14242
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14243
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumNonLetter(Landroid/content/ComponentName;IZ)V

    .line 14244
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14245
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setPasswordMinimumNumeric$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14179
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14181
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 14183
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 14184
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14185
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumNumeric(Landroid/content/ComponentName;IZ)V

    .line 14186
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14187
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setPasswordMinimumSymbols$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14208
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14210
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 14212
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 14213
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14214
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumSymbols(Landroid/content/ComponentName;IZ)V

    .line 14215
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14216
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setPasswordMinimumUpperCase$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14092
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14094
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 14096
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 14097
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14098
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumUpperCase(Landroid/content/ComponentName;IZ)V

    .line 14099
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14100
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setPasswordQuality$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14034
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14036
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 14038
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 14039
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14040
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordQuality(Landroid/content/ComponentName;IZ)V

    .line 14041
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14042
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setPermissionGrantState$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 11
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15730
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/ComponentName;

    .line 15732
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 15734
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 15736
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 15738
    .local v5, "_arg3":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 15740
    .local v6, "_arg4":I
    sget-object v0, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/os/RemoteCallback;

    .line 15741
    .local v7, "_arg5":Landroid/os/RemoteCallback;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15742
    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPermissionGrantState(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/RemoteCallback;)V

    .line 15743
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15744
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist onTransact$setPermissionPolicy$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15715
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15717
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15719
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 15720
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15721
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPermissionPolicy(Landroid/content/ComponentName;Ljava/lang/String;I)V

    .line 15722
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15723
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setPermittedInputMethods$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 9
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15167
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15169
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15171
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 15173
    .local v2, "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 15174
    .local v3, "_arg3":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15175
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPermittedInputMethods(Landroid/content/ComponentName;Ljava/lang/String;Ljava/util/List;Z)Z

    move-result v4

    .line 15176
    .local v4, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15177
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 15178
    const/4 v5, 0x1

    return v5
.end method

.method private blacklist onTransact$setProfileOwnerOnOrganizationOwnedDevice$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16064
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16066
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 16068
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 16069
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16070
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setProfileOwnerOnOrganizationOwnedDevice(Landroid/content/ComponentName;IZ)V

    .line 16071
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16072
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setRequiredPasswordComplexity$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14360
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 14362
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 14364
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 14365
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14366
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setRequiredPasswordComplexity(Ljava/lang/String;IZ)V

    .line 14367
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14368
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setRequiredStrongAuthTimeout$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 10
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14456
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/ComponentName;

    .line 14458
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 14460
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 14462
    .local v4, "_arg2":J
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    .line 14463
    .local v6, "_arg3":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14464
    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setRequiredStrongAuthTimeout(Landroid/content/ComponentName;Ljava/lang/String;JZ)V

    .line 14465
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14466
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist onTransact$setResetPasswordToken$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15922
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15924
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15926
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 15927
    .local v2, "_arg2":[B
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15928
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setResetPasswordToken(Landroid/content/ComponentName;Ljava/lang/String;[B)Z

    move-result v3

    .line 15929
    .local v3, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15930
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 15931
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$setScreenCaptureDisabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14590
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14592
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 14594
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 14596
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 14597
    .local v3, "_arg3":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14598
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setScreenCaptureDisabled(Landroid/content/ComponentName;Ljava/lang/String;ZZ)V

    .line 14599
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14600
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$setSecondaryLockscreenEnabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15367
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15369
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 15371
    .local v1, "_arg1":Z
    sget-object v2, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PersistableBundle;

    .line 15372
    .local v2, "_arg2":Landroid/os/PersistableBundle;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15373
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setSecondaryLockscreenEnabled(Landroid/content/ComponentName;ZLandroid/os/PersistableBundle;)V

    .line 15374
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15375
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setSecureSetting$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15445
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15447
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15449
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 15450
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15451
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setSecureSetting(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V

    .line 15452
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15453
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setSecurityLoggingEnabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15834
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15836
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15838
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 15839
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15840
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setSecurityLoggingEnabled(Landroid/content/ComponentName;Ljava/lang/String;Z)V

    .line 15841
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15842
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setShortSupportMessage$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15787
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15789
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15791
    .local v1, "_arg1":Ljava/lang/String;
    sget-object v2, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 15792
    .local v2, "_arg2":Ljava/lang/CharSequence;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15793
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setShortSupportMessage(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 15794
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15795
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setStatusBarDisabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15696
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15698
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15700
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 15701
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15702
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setStatusBarDisabled(Landroid/content/ComponentName;Ljava/lang/String;Z)Z

    move-result v3

    .line 15703
    .local v3, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15704
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 15705
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$setSystemSetting$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15429
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15431
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15433
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 15435
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 15436
    .local v3, "_arg3":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15437
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setSystemSetting(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 15438
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15439
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$setSystemUpdatePolicy$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15679
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15681
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15683
    .local v1, "_arg1":Ljava/lang/String;
    sget-object v2, Landroid/app/admin/SystemUpdatePolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/SystemUpdatePolicy;

    .line 15684
    .local v2, "_arg2":Landroid/app/admin/SystemUpdatePolicy;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15685
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setSystemUpdatePolicy(Landroid/content/ComponentName;Ljava/lang/String;Landroid/app/admin/SystemUpdatePolicy;)V

    .line 15686
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15687
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setTime$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 9
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15475
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15477
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15479
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 15480
    .local v2, "_arg2":J
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15481
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setTime(Landroid/content/ComponentName;Ljava/lang/String;J)Z

    move-result v4

    .line 15482
    .local v4, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15483
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 15484
    const/4 v5, 0x1

    return v5
.end method

.method private blacklist onTransact$setTimeZone$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15490
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15492
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15494
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 15495
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15496
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setTimeZone(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 15497
    .local v3, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15498
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 15499
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$setTrustAgentConfiguration$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 10
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15573
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/ComponentName;

    .line 15575
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 15577
    .local v3, "_arg1":Ljava/lang/String;
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/content/ComponentName;

    .line 15579
    .local v4, "_arg2":Landroid/content/ComponentName;
    sget-object v0, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/os/PersistableBundle;

    .line 15581
    .local v5, "_arg3":Landroid/os/PersistableBundle;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    .line 15582
    .local v6, "_arg4":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15583
    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setTrustAgentConfiguration(Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/PersistableBundle;Z)V

    .line 15584
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15585
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist onTransact$setUninstallBlocked$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15521
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15523
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15525
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 15527
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 15528
    .local v3, "_arg3":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15529
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setUninstallBlocked(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 15530
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15531
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$setUserControlDisabledPackages$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16161
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16163
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 16165
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 16166
    .local v2, "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16167
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setUserControlDisabledPackages(Landroid/content/ComponentName;Ljava/lang/String;Ljava/util/List;)V

    .line 16168
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16169
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setUserRestriction$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 10
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15067
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/ComponentName;

    .line 15069
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 15071
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 15073
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 15075
    .local v5, "_arg3":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    .line 15076
    .local v6, "_arg4":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15077
    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setUserRestriction(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 15078
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15079
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist onTransact$setUserRestrictionForUser$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15085
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 15087
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15089
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 15091
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 15092
    .local v3, "_arg3":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15093
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setUserRestrictionForUser(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 15094
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15095
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$setUserRestrictionGloballyFromSystem$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15102
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 15104
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15106
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 15107
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15108
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setUserRestrictionGloballyFromSystem(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 15109
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15110
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setWifiSsidPolicy$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16241
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 16243
    .local v0, "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/app/admin/WifiSsidPolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/WifiSsidPolicy;

    .line 16244
    .local v1, "_arg1":Landroid/app/admin/WifiSsidPolicy;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16245
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setWifiSsidPolicy(Ljava/lang/String;Landroid/app/admin/WifiSsidPolicy;)V

    .line 16246
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16247
    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$startManagedQuickContact$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 11
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15544
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15546
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 15548
    .local v2, "_arg1":J
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 15550
    .local v4, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 15552
    .local v5, "_arg3":J
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/content/Intent;

    .line 15553
    .local v7, "_arg4":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15554
    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->startManagedQuickContact(Ljava/lang/String;JZJLandroid/content/Intent;)V

    .line 15555
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15556
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist onTransact$startViewCalendarEventInManagedProfile$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 14
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16104
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 16106
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 16108
    .local v2, "_arg1":J
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 16110
    .local v4, "_arg2":J
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 16112
    .local v6, "_arg3":J
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v8

    .line 16114
    .local v8, "_arg4":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 16115
    .local v9, "_arg5":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16116
    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Landroid/app/admin/IDevicePolicyManager$Stub;->startViewCalendarEventInManagedProfile(Ljava/lang/String;JJJZI)Z

    move-result v10

    .line 16117
    .local v10, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16118
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 16119
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist onTransact$transferOwnership$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15991
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15993
    .local v0, "_arg0":Landroid/content/ComponentName;
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 15995
    .local v1, "_arg1":Landroid/content/ComponentName;
    sget-object v2, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PersistableBundle;

    .line 15996
    .local v2, "_arg2":Landroid/os/PersistableBundle;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15997
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->transferOwnership(Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/os/PersistableBundle;)V

    .line 15998
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15999
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$uninstallCaCerts$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14809
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14811
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 14813
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 14814
    .local v2, "_arg2":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14815
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->uninstallCaCerts(Landroid/content/ComponentName;Ljava/lang/String;[Ljava/lang/String;)V

    .line 14816
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14817
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$updateOverrideApn$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16013
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16015
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 16017
    .local v1, "_arg1":I
    sget-object v2, Landroid/telephony/data/ApnSetting;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/data/ApnSetting;

    .line 16018
    .local v2, "_arg2":Landroid/telephony/data/ApnSetting;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16019
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->updateOverrideApn(Landroid/content/ComponentName;ILandroid/telephony/data/ApnSetting;)Z

    move-result v3

    .line 16020
    .local v3, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16021
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 16022
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$wipeDataWithReason$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 9
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14501
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 14503
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 14505
    .local v2, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 14507
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 14509
    .local v4, "_arg3":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 14510
    .local v5, "_arg4":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14511
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->wipeDataWithReason(Ljava/lang/String;ILjava/lang/String;ZZ)V

    .line 14512
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14513
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 1554
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 16421
    const/16 v0, 0x19c

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 3222
    invoke-static {p1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 3226
    const-string v0, "android.app.admin.IDevicePolicyManager"

    .line 3227
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 3228
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3230
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 3231
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3232
    return v1

    .line 3234
    :cond_16
    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_18fa

    .line 6592
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 6588
    :pswitch_1f
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$getAppFunctionsPolicy$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6584
    :pswitch_24
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setAppFunctionsPolicy$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6575
    :pswitch_29
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6576
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6577
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getHeadlessDeviceOwnerMode(Ljava/lang/String;)I

    move-result v3

    .line 6578
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6579
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6580
    goto/16 :goto_18a9

    .line 6570
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :pswitch_3c
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$getPolicySizeForAdmin$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6561
    :pswitch_41
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6562
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6563
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getMaxPolicyStorageLimit(Ljava/lang/String;)I

    move-result v3

    .line 6564
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6565
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6566
    goto/16 :goto_18a9

    .line 6556
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :pswitch_54
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$forceSetMaxPolicyStorageLimit$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6552
    :pswitch_59
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setMaxPolicyStorageLimit$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6543
    :pswitch_5e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6544
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6545
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getSubscriptionIds(Ljava/lang/String;)[I

    move-result-object v3

    .line 6546
    .local v3, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6547
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 6548
    goto/16 :goto_18a9

    .line 6538
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":[I
    :pswitch_71
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$getContentProtectionPolicy$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6534
    :pswitch_76
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setContentProtectionPolicy$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6528
    :pswitch_7b
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->calculateHasIncompatibleAccounts()V

    .line 6529
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6530
    goto/16 :goto_18a9

    .line 6519
    :pswitch_83
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6520
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6521
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getFinancedDeviceKioskRoleHolder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 6522
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6523
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6524
    goto/16 :goto_18a9

    .line 6509
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_96
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6510
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6511
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->isDeviceFinanced(Ljava/lang/String;)Z

    move-result v3

    .line 6512
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6513
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6514
    goto/16 :goto_18a9

    .line 6499
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_a9
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 6500
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6501
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->triggerDevicePolicyEngineMigration(Z)Z

    move-result v3

    .line 6502
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6503
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6504
    goto/16 :goto_18a9

    .line 6491
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":Z
    :pswitch_bc
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getDevicePolicyState()Landroid/app/admin/DevicePolicyState;

    move-result-object v2

    .line 6492
    .local v2, "_result":Landroid/app/admin/DevicePolicyState;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6493
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6494
    goto/16 :goto_18a9

    .line 6484
    .end local v2    # "_result":Landroid/app/admin/DevicePolicyState;
    :pswitch_c8
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getManagedSubscriptionsPolicy()Landroid/app/admin/ManagedSubscriptionsPolicy;

    move-result-object v2

    .line 6485
    .local v2, "_result":Landroid/app/admin/ManagedSubscriptionsPolicy;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6486
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6487
    goto/16 :goto_18a9

    .line 6476
    .end local v2    # "_result":Landroid/app/admin/ManagedSubscriptionsPolicy;
    :pswitch_d4
    sget-object v2, Landroid/app/admin/ManagedSubscriptionsPolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/ManagedSubscriptionsPolicy;

    .line 6477
    .local v2, "_arg0":Landroid/app/admin/ManagedSubscriptionsPolicy;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6478
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setManagedSubscriptionsPolicy(Landroid/app/admin/ManagedSubscriptionsPolicy;)V

    .line 6479
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6480
    goto/16 :goto_18a9

    .line 6466
    .end local v2    # "_arg0":Landroid/app/admin/ManagedSubscriptionsPolicy;
    :pswitch_e7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6467
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6468
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getMtePolicy(Ljava/lang/String;)I

    move-result v3

    .line 6469
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6470
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6471
    goto/16 :goto_18a9

    .line 6461
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :pswitch_fa
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setMtePolicyBySystem$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6457
    :pswitch_ff
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setMtePolicy$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6448
    :pswitch_104
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6449
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6450
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getApplicationExemptions(Ljava/lang/String;)[I

    move-result-object v3

    .line 6451
    .local v3, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6452
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 6453
    goto/16 :goto_18a9

    .line 6443
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":[I
    :pswitch_117
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setApplicationExemptions$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6434
    :pswitch_11c
    sget-object v2, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 6435
    .local v2, "_arg0":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6436
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPolicyManagedProfiles(Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v3

    .line 6437
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6438
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 6439
    goto/16 :goto_18a9

    .line 6426
    .end local v2    # "_arg0":Landroid/os/UserHandle;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    :pswitch_133
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->shouldAllowBypassingDevicePolicyManagementRoleQualification()Z

    move-result v2

    .line 6427
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6428
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6429
    goto/16 :goto_18a9

    .line 6420
    .end local v2    # "_result":Z
    :pswitch_13f
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->resetShouldAllowBypassingDevicePolicyManagementRoleQualificationState()V

    .line 6421
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6422
    goto/16 :goto_18a9

    .line 6411
    :pswitch_147
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6412
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6413
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getString(Ljava/lang/String;)Landroid/app/admin/ParcelableResource;

    move-result-object v3

    .line 6414
    .local v3, "_result":Landroid/app/admin/ParcelableResource;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6415
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6416
    goto/16 :goto_18a9

    .line 6402
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Landroid/app/admin/ParcelableResource;
    :pswitch_15a
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 6403
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6404
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->resetStrings(Ljava/util/List;)V

    .line 6405
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6406
    goto/16 :goto_18a9

    .line 6393
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_169
    sget-object v2, Landroid/app/admin/DevicePolicyStringResource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 6394
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/DevicePolicyStringResource;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6395
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setStrings(Ljava/util/List;)V

    .line 6396
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6397
    goto/16 :goto_18a9

    .line 6384
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/DevicePolicyStringResource;>;"
    :pswitch_17a
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 6385
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6386
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setDpcDownloaded(Z)V

    .line 6387
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6388
    goto/16 :goto_18a9

    .line 6376
    .end local v2    # "_arg0":Z
    :pswitch_189
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->isDpcDownloaded()Z

    move-result v2

    .line 6377
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6378
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6379
    goto/16 :goto_18a9

    .line 6372
    .end local v2    # "_result":Z
    :pswitch_195
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$getDrawable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6364
    :pswitch_19a
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 6365
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6366
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->resetDrawables(Ljava/util/List;)V

    .line 6367
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6368
    goto/16 :goto_18a9

    .line 6355
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_1a9
    sget-object v2, Landroid/app/admin/DevicePolicyDrawableResource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 6356
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/DevicePolicyDrawableResource;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6357
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setDrawables(Ljava/util/List;)V

    .line 6358
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6359
    goto/16 :goto_18a9

    .line 6347
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/DevicePolicyDrawableResource;>;"
    :pswitch_1ba
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->listForegroundAffiliatedUsers()Ljava/util/List;

    move-result-object v2

    .line 6348
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6349
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 6350
    goto/16 :goto_18a9

    .line 6338
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    :pswitch_1c6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6339
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6340
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->isDevicePotentiallyStolen(Ljava/lang/String;)Z

    move-result v3

    .line 6341
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6342
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6343
    goto/16 :goto_18a9

    .line 6328
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_1d9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6329
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6330
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getWifiSsidPolicy(Ljava/lang/String;)Landroid/app/admin/WifiSsidPolicy;

    move-result-object v3

    .line 6331
    .local v3, "_result":Landroid/app/admin/WifiSsidPolicy;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6332
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6333
    goto/16 :goto_18a9

    .line 6323
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Landroid/app/admin/WifiSsidPolicy;
    :pswitch_1ec
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setWifiSsidPolicy$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6316
    :pswitch_1f1
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getMinimumRequiredWifiSecurityLevel()I

    move-result v2

    .line 6317
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6318
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6319
    goto/16 :goto_18a9

    .line 6312
    .end local v2    # "_result":I
    :pswitch_1fd
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setMinimumRequiredWifiSecurityLevel$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6305
    :pswitch_202
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->canUsbDataSignalingBeDisabled()Z

    move-result v2

    .line 6306
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6307
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6308
    goto/16 :goto_18a9

    .line 6296
    .end local v2    # "_result":Z
    :pswitch_20e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6297
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6298
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->isUsbDataSignalingEnabled(Ljava/lang/String;)Z

    move-result v3

    .line 6299
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6300
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6301
    goto/16 :goto_18a9

    .line 6285
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_221
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6287
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 6288
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6289
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setUsbDataSignalingEnabled(Ljava/lang/String;Z)V

    .line 6290
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6291
    goto/16 :goto_18a9

    .line 6277
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Z
    :pswitch_234
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->canAdminGrantSensorsPermissions()Z

    move-result v2

    .line 6278
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6279
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6280
    goto/16 :goto_18a9

    .line 6269
    .end local v2    # "_result":Z
    :pswitch_240
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6270
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6271
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->resetDefaultCrossProfileIntentFilters(I)V

    .line 6272
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6273
    goto/16 :goto_18a9

    .line 6259
    .end local v2    # "_arg0":I
    :pswitch_24f
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 6260
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6261
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getDeviceOwnerType(Landroid/content/ComponentName;)I

    move-result v3

    .line 6262
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6263
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6264
    goto/16 :goto_18a9

    .line 6248
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":I
    :pswitch_266
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 6250
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 6251
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6252
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setDeviceOwnerType(Landroid/content/ComponentName;I)V

    .line 6253
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6254
    goto/16 :goto_18a9

    .line 6238
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":I
    :pswitch_27d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6239
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6240
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->removeManagedProfile(I)Z

    move-result v3

    .line 6241
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6242
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6243
    goto/16 :goto_18a9

    .line 6227
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_290
    sget-object v2, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 6229
    .local v2, "_arg0":Landroid/os/UserHandle;
    sget-object v3, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/accounts/Account;

    .line 6230
    .local v3, "_arg1":Landroid/accounts/Account;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6231
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->finalizeWorkProfileProvisioning(Landroid/os/UserHandle;Landroid/accounts/Account;)V

    .line 6232
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6233
    goto/16 :goto_18a9

    .line 6216
    .end local v2    # "_arg0":Landroid/os/UserHandle;
    .end local v3    # "_arg1":Landroid/accounts/Account;
    :pswitch_2ab
    sget-object v2, Landroid/app/admin/FullyManagedDeviceProvisioningParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/FullyManagedDeviceProvisioningParams;

    .line 6218
    .local v2, "_arg0":Landroid/app/admin/FullyManagedDeviceProvisioningParams;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 6219
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6220
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->provisionFullyManagedDevice(Landroid/app/admin/FullyManagedDeviceProvisioningParams;Ljava/lang/String;)V

    .line 6221
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6222
    goto/16 :goto_18a9

    .line 6205
    .end local v2    # "_arg0":Landroid/app/admin/FullyManagedDeviceProvisioningParams;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_2c2
    sget-object v2, Landroid/app/admin/ManagedProfileProvisioningParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/ManagedProfileProvisioningParams;

    .line 6207
    .local v2, "_arg0":Landroid/app/admin/ManagedProfileProvisioningParams;
    sget-object v3, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    .line 6208
    .local v3, "_arg1":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6209
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->finalizeCreateManagedProfile(Landroid/app/admin/ManagedProfileProvisioningParams;Landroid/os/UserHandle;)V

    .line 6210
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6211
    goto/16 :goto_18a9

    .line 6193
    .end local v2    # "_arg0":Landroid/app/admin/ManagedProfileProvisioningParams;
    .end local v3    # "_arg1":Landroid/os/UserHandle;
    :pswitch_2dd
    sget-object v2, Landroid/app/admin/ManagedProfileProvisioningParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/ManagedProfileProvisioningParams;

    .line 6195
    .restart local v2    # "_arg0":Landroid/app/admin/ManagedProfileProvisioningParams;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 6196
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6197
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->createManagedProfile(Landroid/app/admin/ManagedProfileProvisioningParams;Ljava/lang/String;)Landroid/os/UserHandle;

    move-result-object v4

    .line 6198
    .local v4, "_result":Landroid/os/UserHandle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6199
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6200
    goto/16 :goto_18a9

    .line 6181
    .end local v2    # "_arg0":Landroid/app/admin/ManagedProfileProvisioningParams;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Landroid/os/UserHandle;
    :pswitch_2f8
    sget-object v2, Landroid/app/admin/ManagedProfileProvisioningParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/ManagedProfileProvisioningParams;

    .line 6183
    .restart local v2    # "_arg0":Landroid/app/admin/ManagedProfileProvisioningParams;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 6184
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6185
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->createAndProvisionManagedProfile(Landroid/app/admin/ManagedProfileProvisioningParams;Ljava/lang/String;)Landroid/os/UserHandle;

    move-result-object v4

    .line 6186
    .restart local v4    # "_result":Landroid/os/UserHandle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6187
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6188
    goto/16 :goto_18a9

    .line 6176
    .end local v2    # "_arg0":Landroid/app/admin/ManagedProfileProvisioningParams;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Landroid/os/UserHandle;
    :pswitch_313
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setOrganizationIdForUser$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6167
    :pswitch_318
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6168
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6169
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getEnrollmentSpecificId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 6170
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6171
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6172
    goto/16 :goto_18a9

    .line 6157
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_32b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6158
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6159
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->isSafeOperation(I)Z

    move-result v3

    .line 6160
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6161
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6162
    goto/16 :goto_18a9

    .line 6146
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_33e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6148
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 6149
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6150
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setNextOperationSafety(II)V

    .line 6151
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6152
    goto/16 :goto_18a9

    .line 6136
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_351
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6137
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6138
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->canProfileOwnerResetPasswordWhenLocked(I)Z

    move-result v3

    .line 6139
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6140
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6141
    goto/16 :goto_18a9

    .line 6128
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_364
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->isComplianceAcknowledgementRequired()Z

    move-result v2

    .line 6129
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6130
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6131
    goto/16 :goto_18a9

    .line 6122
    .end local v2    # "_result":Z
    :pswitch_370
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->acknowledgeDeviceCompliant()V

    .line 6123
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6124
    goto/16 :goto_18a9

    .line 6112
    :pswitch_378
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 6114
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 6115
    .local v3, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6116
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->setManagedProfileMaximumTimeOff(Landroid/content/ComponentName;J)V

    .line 6117
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6118
    goto/16 :goto_18a9

    .line 6102
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":J
    :pswitch_38f
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 6103
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6104
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getManagedProfileMaximumTimeOff(Landroid/content/ComponentName;)J

    move-result-wide v3

    .line 6105
    .local v3, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6106
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 6107
    goto/16 :goto_18a9

    .line 6091
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":J
    :pswitch_3a6
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 6093
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 6094
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6095
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPersonalAppsSuspended(Landroid/content/ComponentName;Z)V

    .line 6096
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6097
    goto/16 :goto_18a9

    .line 6081
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Z
    :pswitch_3bd
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 6082
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6083
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPersonalAppsSuspendedReasons(Landroid/content/ComponentName;)I

    move-result v3

    .line 6084
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6085
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6086
    goto/16 :goto_18a9

    .line 6071
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":I
    :pswitch_3d4
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 6072
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6073
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->isCommonCriteriaModeEnabled(Landroid/content/ComponentName;)Z

    move-result v3

    .line 6074
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6075
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6076
    goto/16 :goto_18a9

    .line 6066
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Z
    :pswitch_3eb
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setCommonCriteriaModeEnabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6055
    :pswitch_3f0
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 6057
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 6058
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6059
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->getUserControlDisabledPackages(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 6060
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6061
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 6062
    goto/16 :goto_18a9

    .line 6050
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_40b
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setUserControlDisabledPackages$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6039
    :pswitch_410
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6041
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 6042
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6043
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->isKeyPairGrantedToWifiAuth(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 6044
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6045
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6046
    goto/16 :goto_18a9

    .line 6034
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_427
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setKeyGrantToWifiAuth$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6023
    :pswitch_42c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6025
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 6026
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6027
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->getKeyPairGrants(Ljava/lang/String;Ljava/lang/String;)Landroid/app/admin/ParcelableGranteeMap;

    move-result-object v4

    .line 6028
    .local v4, "_result":Landroid/app/admin/ParcelableGranteeMap;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6029
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6030
    goto/16 :goto_18a9

    .line 6018
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Landroid/app/admin/ParcelableGranteeMap;
    :pswitch_443
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setKeyGrantForApp$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6014
    :pswitch_448
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$startViewCalendarEventInManagedProfile$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6007
    :pswitch_44d
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->isUnattendedManagedKiosk()Z

    move-result v2

    .line 6008
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6009
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6010
    goto/16 :goto_18a9

    .line 6000
    .end local v2    # "_result":Z
    :pswitch_459
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->isManagedKiosk()Z

    move-result v2

    .line 6001
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6002
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6003
    goto/16 :goto_18a9

    .line 5993
    .end local v2    # "_result":Z
    :pswitch_465
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getDefaultCrossProfilePackages()Ljava/util/List;

    move-result-object v2

    .line 5994
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5995
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 5996
    goto/16 :goto_18a9

    .line 5984
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_471
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5985
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5986
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAllCrossProfilePackages(I)Ljava/util/List;

    move-result-object v3

    .line 5987
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5988
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 5989
    goto/16 :goto_18a9

    .line 5974
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_484
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5975
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5976
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCrossProfilePackages(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v3

    .line 5977
    .restart local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5978
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 5979
    goto/16 :goto_18a9

    .line 5963
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_49b
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5965
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 5966
    .local v3, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5967
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setCrossProfilePackages(Landroid/content/ComponentName;Ljava/util/List;)V

    .line 5968
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5969
    goto/16 :goto_18a9

    .line 5953
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_4b2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5954
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5955
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCrossProfileCalendarPackagesForUser(I)Ljava/util/List;

    move-result-object v3

    .line 5956
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5957
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 5958
    goto/16 :goto_18a9

    .line 5941
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_4c5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5943
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 5944
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5945
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->isPackageAllowedToAccessCalendarForUser(Ljava/lang/String;I)Z

    move-result v4

    .line 5946
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5947
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5948
    goto/16 :goto_18a9

    .line 5931
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_4dc
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5932
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5933
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCrossProfileCalendarPackages(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v3

    .line 5934
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5935
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 5936
    goto/16 :goto_18a9

    .line 5920
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_4f3
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5922
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 5923
    .local v3, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5924
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setCrossProfileCalendarPackages(Landroid/content/ComponentName;Ljava/util/List;)V

    .line 5925
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5926
    goto/16 :goto_18a9

    .line 5915
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_50a
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$installUpdateFromFile$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5911
    :pswitch_50f
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setProfileOwnerOnOrganizationOwnedDevice$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5902
    :pswitch_514
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5903
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5904
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getGlobalPrivateDnsHost(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    .line 5905
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5906
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5907
    goto/16 :goto_18a9

    .line 5892
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_52b
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5893
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5894
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getGlobalPrivateDnsMode(Landroid/content/ComponentName;)I

    move-result v3

    .line 5895
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5896
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5897
    goto/16 :goto_18a9

    .line 5887
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":I
    :pswitch_542
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setGlobalPrivateDns$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5883
    :pswitch_547
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$isMeteredDataDisabledPackageForUser$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5874
    :pswitch_54c
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5875
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5876
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->isOverrideApnEnabled(Landroid/content/ComponentName;)Z

    move-result v3

    .line 5877
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5878
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5879
    goto/16 :goto_18a9

    .line 5863
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Z
    :pswitch_563
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5865
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 5866
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5867
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setOverrideApnsEnabled(Landroid/content/ComponentName;Z)V

    .line 5868
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5869
    goto/16 :goto_18a9

    .line 5853
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Z
    :pswitch_57a
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5854
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5855
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getOverrideApns(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v3

    .line 5856
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/data/ApnSetting;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5857
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 5858
    goto/16 :goto_18a9

    .line 5841
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/data/ApnSetting;>;"
    :pswitch_591
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5843
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 5844
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5845
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->removeOverrideApn(Landroid/content/ComponentName;I)Z

    move-result v4

    .line 5846
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5847
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5848
    goto/16 :goto_18a9

    .line 5836
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_5ac
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$updateOverrideApn$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5825
    :pswitch_5b1
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5827
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    sget-object v3, Landroid/telephony/data/ApnSetting;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/data/ApnSetting;

    .line 5828
    .local v3, "_arg1":Landroid/telephony/data/ApnSetting;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5829
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->addOverrideApn(Landroid/content/ComponentName;Landroid/telephony/data/ApnSetting;)I

    move-result v4

    .line 5830
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5831
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 5832
    goto/16 :goto_18a9

    .line 5815
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Landroid/telephony/data/ApnSetting;
    .end local v4    # "_result":I
    :pswitch_5d0
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5816
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5817
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getMeteredDataDisabledPackages(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v3

    .line 5818
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5819
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 5820
    goto/16 :goto_18a9

    .line 5803
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_5e7
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5805
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 5806
    .local v3, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5807
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setMeteredDataDisabledPackages(Landroid/content/ComponentName;Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 5808
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5809
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 5810
    goto/16 :goto_18a9

    .line 5787
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_602
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 5788
    .local v3, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5789
    invoke-virtual {p0, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->getEndUserSessionMessage(Landroid/content/ComponentName;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 5790
    .local v4, "_result":Ljava/lang/CharSequence;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5791
    if-eqz v4, :cond_61e

    .line 5792
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5793
    invoke-static {v4, p3, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto/16 :goto_18a9

    .line 5796
    :cond_61e
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5798
    goto/16 :goto_18a9

    .line 5771
    .end local v3    # "_arg0":Landroid/content/ComponentName;
    .end local v4    # "_result":Ljava/lang/CharSequence;
    :pswitch_623
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 5772
    .restart local v3    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5773
    invoke-virtual {p0, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->getStartUserSessionMessage(Landroid/content/ComponentName;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 5774
    .restart local v4    # "_result":Ljava/lang/CharSequence;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5775
    if-eqz v4, :cond_63f

    .line 5776
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5777
    invoke-static {v4, p3, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto/16 :goto_18a9

    .line 5780
    :cond_63f
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5782
    goto/16 :goto_18a9

    .line 5760
    .end local v3    # "_arg0":Landroid/content/ComponentName;
    .end local v4    # "_result":Ljava/lang/CharSequence;
    :pswitch_644
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5762
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    sget-object v3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 5763
    .local v3, "_arg1":Ljava/lang/CharSequence;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5764
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setEndUserSessionMessage(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V

    .line 5765
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5766
    goto/16 :goto_18a9

    .line 5749
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Ljava/lang/CharSequence;
    :pswitch_65f
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5751
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    sget-object v3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 5752
    .restart local v3    # "_arg1":Ljava/lang/CharSequence;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5753
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setStartUserSessionMessage(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V

    .line 5754
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5755
    goto/16 :goto_18a9

    .line 5741
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Ljava/lang/CharSequence;
    :pswitch_67a
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getTransferOwnershipBundle()Landroid/os/PersistableBundle;

    move-result-object v2

    .line 5742
    .local v2, "_result":Landroid/os/PersistableBundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5743
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5744
    goto/16 :goto_18a9

    .line 5737
    .end local v2    # "_result":Landroid/os/PersistableBundle;
    :pswitch_686
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$transferOwnership$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5733
    :pswitch_68b
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$getDisallowedSystemApps$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5726
    :pswitch_690
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->isLogoutEnabled()Z

    move-result v2

    .line 5727
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5728
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5729
    goto/16 :goto_18a9

    .line 5716
    .end local v2    # "_result":Z
    :pswitch_69c
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5718
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 5719
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5720
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setLogoutEnabled(Landroid/content/ComponentName;Z)V

    .line 5721
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5722
    goto/16 :goto_18a9

    .line 5711
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Z
    :pswitch_6b3
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$clearApplicationUserData$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5702
    :pswitch_6b8
    sget-object v2, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 5703
    .local v2, "_arg0":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5704
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getOwnerInstalledCaCerts(Landroid/os/UserHandle;)Landroid/content/pm/StringParceledListSlice;

    move-result-object v3

    .line 5705
    .local v3, "_result":Landroid/content/pm/StringParceledListSlice;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5706
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5707
    goto/16 :goto_18a9

    .line 5694
    .end local v2    # "_arg0":Landroid/os/UserHandle;
    .end local v3    # "_result":Landroid/content/pm/StringParceledListSlice;
    :pswitch_6cf
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->isCurrentInputMethodSetByOwner()Z

    move-result v2

    .line 5695
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5696
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5697
    goto/16 :goto_18a9

    .line 5690
    .end local v2    # "_result":Z
    :pswitch_6db
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$resetPasswordWithToken$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5679
    :pswitch_6e0
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5681
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 5682
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5683
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->isResetPasswordTokenActive(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v4

    .line 5684
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5685
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5686
    goto/16 :goto_18a9

    .line 5667
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_6fb
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5669
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 5670
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5671
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->clearResetPasswordToken(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v4

    .line 5672
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5673
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5674
    goto/16 :goto_18a9

    .line 5662
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_716
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setResetPasswordToken$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5655
    :pswitch_71b
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getLastNetworkLogRetrievalTime()J

    move-result-wide v2

    .line 5656
    .local v2, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5657
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 5658
    goto/16 :goto_18a9

    .line 5648
    .end local v2    # "_result":J
    :pswitch_727
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getLastBugReportRequestTime()J

    move-result-wide v2

    .line 5649
    .restart local v2    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5650
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 5651
    goto/16 :goto_18a9

    .line 5641
    .end local v2    # "_result":J
    :pswitch_733
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getLastSecurityLogRetrievalTime()J

    move-result-wide v2

    .line 5642
    .restart local v2    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5643
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 5644
    goto/16 :goto_18a9

    .line 5632
    .end local v2    # "_result":J
    :pswitch_73f
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5633
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5634
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->isEphemeralUser(Landroid/content/ComponentName;)Z

    move-result v3

    .line 5635
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5636
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5637
    goto/16 :goto_18a9

    .line 5622
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Z
    :pswitch_756
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5623
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5624
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getBindDeviceAdminTargetUsers(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v3

    .line 5625
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5626
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 5627
    goto/16 :goto_18a9

    .line 5617
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    :pswitch_76d
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$bindDeviceAdminServiceAsUser$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5613
    :pswitch_772
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$retrieveNetworkLogs$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5602
    :pswitch_777
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5604
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 5605
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5606
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->isNetworkLoggingEnabled(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v4

    .line 5607
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5608
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5609
    goto/16 :goto_18a9

    .line 5597
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_792
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setNetworkLoggingEnabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5588
    :pswitch_797
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5589
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5590
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->isBackupServiceEnabled(Landroid/content/ComponentName;)Z

    move-result v3

    .line 5591
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5592
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5593
    goto/16 :goto_18a9

    .line 5577
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Z
    :pswitch_7ae
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5579
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 5580
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5581
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setBackupServiceEnabled(Landroid/content/ComponentName;Z)V

    .line 5582
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5583
    goto/16 :goto_18a9

    .line 5568
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Z
    :pswitch_7c5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5569
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5570
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->forceUpdateUserSetupComplete(I)V

    .line 5571
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5572
    goto/16 :goto_18a9

    .line 5561
    .end local v2    # "_arg0":I
    :pswitch_7d4
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->setDeviceProvisioningConfigApplied()V

    .line 5562
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5563
    goto/16 :goto_18a9

    .line 5554
    :pswitch_7dc
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->isDeviceProvisioningConfigApplied()Z

    move-result v2

    .line 5555
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5556
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5557
    goto/16 :goto_18a9

    .line 5547
    .end local v2    # "_result":Z
    :pswitch_7e8
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->isDeviceProvisioned()Z

    move-result v2

    .line 5548
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5549
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5550
    goto/16 :goto_18a9

    .line 5539
    .end local v2    # "_result":Z
    :pswitch_7f4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5540
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5541
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->uninstallPackageWithActiveAdmins(Ljava/lang/String;)V

    .line 5542
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5543
    goto/16 :goto_18a9

    .line 5529
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_803
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5530
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5531
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->isUninstallInQueue(Ljava/lang/String;)Z

    move-result v3

    .line 5532
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5533
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5534
    goto/16 :goto_18a9

    .line 5518
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_816
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5520
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/admin/IAuditLogEventsCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IAuditLogEventsCallback;

    move-result-object v3

    .line 5521
    .local v3, "_arg1":Landroid/app/admin/IAuditLogEventsCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5522
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAuditLogEventsCallback(Ljava/lang/String;Landroid/app/admin/IAuditLogEventsCallback;)V

    .line 5523
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5524
    goto/16 :goto_18a9

    .line 5508
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/app/admin/IAuditLogEventsCallback;
    :pswitch_82d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5509
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5510
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->isAuditLogEnabled(Ljava/lang/String;)Z

    move-result v3

    .line 5511
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5512
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5513
    goto/16 :goto_18a9

    .line 5497
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_840
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5499
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 5500
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5501
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAuditLogEnabled(Ljava/lang/String;Z)V

    .line 5502
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5503
    goto/16 :goto_18a9

    .line 5489
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Z
    :pswitch_853
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->forceSecurityLogs()J

    move-result-wide v2

    .line 5490
    .local v2, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5491
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 5492
    goto/16 :goto_18a9

    .line 5482
    .end local v2    # "_result":J
    :pswitch_85f
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->forceNetworkLogs()J

    move-result-wide v2

    .line 5483
    .restart local v2    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5484
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 5485
    goto/16 :goto_18a9

    .line 5471
    .end local v2    # "_result":J
    :pswitch_86b
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5473
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 5474
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5475
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->retrievePreRebootSecurityLogs(Landroid/content/ComponentName;Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v4

    .line 5476
    .local v4, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5477
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5478
    goto/16 :goto_18a9

    .line 5459
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_886
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5461
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 5462
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5463
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->retrieveSecurityLogs(Landroid/content/ComponentName;Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v4

    .line 5464
    .restart local v4    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5465
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5466
    goto/16 :goto_18a9

    .line 5447
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_8a1
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5449
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 5450
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5451
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->isSecurityLoggingEnabled(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v4

    .line 5452
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5453
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5454
    goto/16 :goto_18a9

    .line 5442
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_8bc
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setSecurityLoggingEnabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5433
    :pswitch_8c1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5434
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5435
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->isAffiliatedUser(I)Z

    move-result v3

    .line 5436
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5437
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5438
    goto/16 :goto_18a9

    .line 5425
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_8d4
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->isCallingUserAffiliated()Z

    move-result v2

    .line 5426
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5427
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5428
    goto/16 :goto_18a9

    .line 5416
    .end local v2    # "_result":Z
    :pswitch_8e0
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5417
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5418
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAffiliationIds(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v3

    .line 5419
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5420
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 5421
    goto/16 :goto_18a9

    .line 5405
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_8f7
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5407
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 5408
    .local v3, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5409
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAffiliationIds(Landroid/content/ComponentName;Ljava/util/List;)V

    .line 5410
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5411
    goto/16 :goto_18a9

    .line 5394
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_90e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5396
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 5397
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5398
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setUserProvisioningState(II)V

    .line 5399
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5400
    goto/16 :goto_18a9

    .line 5384
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_921
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5385
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5386
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getUserProvisioningState(I)I

    move-result v3

    .line 5387
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5388
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5389
    goto/16 :goto_18a9

    .line 5368
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_934
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 5369
    .local v3, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5370
    invoke-virtual {p0, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->getOrganizationNameForUser(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 5371
    .local v4, "_result":Ljava/lang/CharSequence;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5372
    if-eqz v4, :cond_94c

    .line 5373
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5374
    invoke-static {v4, p3, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto/16 :goto_18a9

    .line 5377
    :cond_94c
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5379
    goto/16 :goto_18a9

    .line 5354
    .end local v3    # "_arg0":I
    .end local v4    # "_result":Ljava/lang/CharSequence;
    :pswitch_951
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getDeviceOwnerOrganizationName()Ljava/lang/CharSequence;

    move-result-object v3

    .line 5355
    .local v3, "_result":Ljava/lang/CharSequence;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5356
    if-eqz v3, :cond_962

    .line 5357
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5358
    invoke-static {v3, p3, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto/16 :goto_18a9

    .line 5361
    :cond_962
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5363
    goto/16 :goto_18a9

    .line 5337
    .end local v3    # "_result":Ljava/lang/CharSequence;
    :pswitch_967
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 5339
    .local v3, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 5340
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5341
    invoke-virtual {p0, v3, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->getOrganizationName(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 5342
    .local v5, "_result":Ljava/lang/CharSequence;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5343
    if-eqz v5, :cond_987

    .line 5344
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5345
    invoke-static {v5, p3, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto/16 :goto_18a9

    .line 5348
    :cond_987
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5350
    goto/16 :goto_18a9

    .line 5332
    .end local v3    # "_arg0":Landroid/content/ComponentName;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_result":Ljava/lang/CharSequence;
    :pswitch_98c
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setOrganizationName$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5323
    :pswitch_991
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5324
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5325
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getOrganizationColorForUser(I)I

    move-result v3

    .line 5326
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5327
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5328
    goto/16 :goto_18a9

    .line 5313
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_9a4
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5314
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5315
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getOrganizationColor(Landroid/content/ComponentName;)I

    move-result v3

    .line 5316
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5317
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5318
    goto/16 :goto_18a9

    .line 5304
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":I
    :pswitch_9bb
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5305
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5306
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->clearOrganizationIdForUser(I)V

    .line 5307
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5308
    goto/16 :goto_18a9

    .line 5293
    .end local v2    # "_arg0":I
    :pswitch_9ca
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5295
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 5296
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5297
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setOrganizationColorForUser(II)V

    .line 5298
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5299
    goto/16 :goto_18a9

    .line 5282
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_9dd
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5284
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 5285
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5286
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setOrganizationColor(Landroid/content/ComponentName;I)V

    .line 5287
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5288
    goto/16 :goto_18a9

    .line 5264
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":I
    :pswitch_9f4
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 5266
    .local v3, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 5267
    .local v4, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5268
    invoke-virtual {p0, v3, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->getLongSupportMessageForUser(Landroid/content/ComponentName;I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 5269
    .restart local v5    # "_result":Ljava/lang/CharSequence;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5270
    if-eqz v5, :cond_a14

    .line 5271
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5272
    invoke-static {v5, p3, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto/16 :goto_18a9

    .line 5275
    :cond_a14
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5277
    goto/16 :goto_18a9

    .line 5246
    .end local v3    # "_arg0":Landroid/content/ComponentName;
    .end local v4    # "_arg1":I
    .end local v5    # "_result":Ljava/lang/CharSequence;
    :pswitch_a19
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 5248
    .restart local v3    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 5249
    .restart local v4    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5250
    invoke-virtual {p0, v3, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->getShortSupportMessageForUser(Landroid/content/ComponentName;I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 5251
    .restart local v5    # "_result":Ljava/lang/CharSequence;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5252
    if-eqz v5, :cond_a39

    .line 5253
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5254
    invoke-static {v5, p3, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto/16 :goto_18a9

    .line 5257
    :cond_a39
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5259
    goto/16 :goto_18a9

    .line 5230
    .end local v3    # "_arg0":Landroid/content/ComponentName;
    .end local v4    # "_arg1":I
    .end local v5    # "_result":Ljava/lang/CharSequence;
    :pswitch_a3e
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 5231
    .restart local v3    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5232
    invoke-virtual {p0, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->getLongSupportMessage(Landroid/content/ComponentName;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 5233
    .local v4, "_result":Ljava/lang/CharSequence;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5234
    if-eqz v4, :cond_a5a

    .line 5235
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5236
    invoke-static {v4, p3, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto/16 :goto_18a9

    .line 5239
    :cond_a5a
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5241
    goto/16 :goto_18a9

    .line 5219
    .end local v3    # "_arg0":Landroid/content/ComponentName;
    .end local v4    # "_result":Ljava/lang/CharSequence;
    :pswitch_a5f
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5221
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    sget-object v3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 5222
    .local v3, "_arg1":Ljava/lang/CharSequence;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5223
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setLongSupportMessage(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V

    .line 5224
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5225
    goto/16 :goto_18a9

    .line 5201
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Ljava/lang/CharSequence;
    :pswitch_a7a
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 5203
    .local v3, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 5204
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5205
    invoke-virtual {p0, v3, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->getShortSupportMessage(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 5206
    .restart local v5    # "_result":Ljava/lang/CharSequence;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5207
    if-eqz v5, :cond_a9a

    .line 5208
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5209
    invoke-static {v5, p3, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto/16 :goto_18a9

    .line 5212
    :cond_a9a
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5214
    goto/16 :goto_18a9

    .line 5196
    .end local v3    # "_arg0":Landroid/content/ComponentName;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_result":Ljava/lang/CharSequence;
    :pswitch_a9f
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setShortSupportMessage$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5188
    :pswitch_aa4
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5189
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5190
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->reboot(Landroid/content/ComponentName;)V

    .line 5191
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5192
    goto/16 :goto_18a9

    .line 5176
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    :pswitch_ab7
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5178
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 5179
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5180
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->getWifiMacAddress(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 5181
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5182
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5183
    goto/16 :goto_18a9

    .line 5166
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Ljava/lang/String;
    :pswitch_ad2
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5167
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5168
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->isManagedProfile(Landroid/content/ComponentName;)Z

    move-result v3

    .line 5169
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5170
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5171
    goto/16 :goto_18a9

    .line 5154
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Z
    :pswitch_ae9
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5156
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 5157
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5158
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->getKeepUninstalledPackages(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 5159
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5160
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 5161
    goto/16 :goto_18a9

    .line 5149
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_b04
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setKeepUninstalledPackages$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5138
    :pswitch_b09
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5140
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 5141
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5142
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->checkProvisioningPrecondition(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 5143
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5144
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 5145
    goto/16 :goto_18a9

    .line 5126
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_b20
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5128
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 5129
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5130
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->isProvisioningAllowed(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 5131
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5132
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5133
    goto/16 :goto_18a9

    .line 5121
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_b37
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$getPermissionGrantState$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5117
    :pswitch_b3c
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setPermissionGrantState$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5108
    :pswitch_b41
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5109
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5110
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPermissionPolicy(Landroid/content/ComponentName;)I

    move-result v3

    .line 5111
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5112
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5113
    goto/16 :goto_18a9

    .line 5103
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":I
    :pswitch_b58
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setPermissionPolicy$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5092
    :pswitch_b5d
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5094
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 5095
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5096
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPendingSystemUpdate(Landroid/content/ComponentName;Ljava/lang/String;)Landroid/app/admin/SystemUpdateInfo;

    move-result-object v4

    .line 5097
    .local v4, "_result":Landroid/app/admin/SystemUpdateInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5098
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5099
    goto/16 :goto_18a9

    .line 5083
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Landroid/app/admin/SystemUpdateInfo;
    :pswitch_b78
    sget-object v2, Landroid/app/admin/SystemUpdateInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/SystemUpdateInfo;

    .line 5084
    .local v2, "_arg0":Landroid/app/admin/SystemUpdateInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5085
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->notifyPendingSystemUpdate(Landroid/app/admin/SystemUpdateInfo;)V

    .line 5086
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5087
    goto/16 :goto_18a9

    .line 5075
    .end local v2    # "_arg0":Landroid/app/admin/SystemUpdateInfo;
    :pswitch_b8b
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getDoNotAskCredentialsOnBoot()Z

    move-result v2

    .line 5076
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5077
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5078
    goto/16 :goto_18a9

    .line 5066
    .end local v2    # "_result":Z
    :pswitch_b97
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5067
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5068
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->isStatusBarDisabled(Ljava/lang/String;)Z

    move-result v3

    .line 5069
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5070
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5071
    goto/16 :goto_18a9

    .line 5061
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_baa
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setStatusBarDisabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5050
    :pswitch_baf
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5052
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 5053
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5054
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setKeyguardDisabled(Landroid/content/ComponentName;Z)Z

    move-result v4

    .line 5055
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5056
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5057
    goto/16 :goto_18a9

    .line 5043
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Z
    .end local v4    # "_result":Z
    :pswitch_bca
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->clearSystemUpdatePolicyFreezePeriodRecord()V

    .line 5044
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5045
    goto/16 :goto_18a9

    .line 5036
    :pswitch_bd2
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getSystemUpdatePolicy()Landroid/app/admin/SystemUpdatePolicy;

    move-result-object v2

    .line 5037
    .local v2, "_result":Landroid/app/admin/SystemUpdatePolicy;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5038
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5039
    goto/16 :goto_18a9

    .line 5032
    .end local v2    # "_result":Landroid/app/admin/SystemUpdatePolicy;
    :pswitch_bde
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setSystemUpdatePolicy$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5022
    :pswitch_be3
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5024
    .local v2, "_arg0":Landroid/content/ComponentName;
    sget-object v3, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    .line 5025
    .local v3, "_arg1":Landroid/graphics/Bitmap;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5026
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setUserIcon(Landroid/content/ComponentName;Landroid/graphics/Bitmap;)V

    .line 5027
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5028
    goto/16 :goto_18a9

    .line 5010
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Landroid/graphics/Bitmap;
    :pswitch_bfe
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5012
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 5013
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5014
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->isRemovingAdmin(Landroid/content/ComponentName;I)Z

    move-result v4

    .line 5015
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5016
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5017
    goto/16 :goto_18a9

    .line 5000
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_c19
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5001
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5002
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getForceEphemeralUsers(Landroid/content/ComponentName;)Z

    move-result v3

    .line 5003
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5004
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5005
    goto/16 :goto_18a9

    .line 4989
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Z
    :pswitch_c30
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4991
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 4992
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4993
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setForceEphemeralUsers(Landroid/content/ComponentName;Z)V

    .line 4994
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4995
    goto/16 :goto_18a9

    .line 4979
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Z
    :pswitch_c47
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4980
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4981
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAutoTimeZonePolicy(Ljava/lang/String;)I

    move-result v3

    .line 4982
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4983
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4984
    goto/16 :goto_18a9

    .line 4968
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :pswitch_c5a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4970
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 4971
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4972
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAutoTimeZonePolicy(Ljava/lang/String;I)V

    .line 4973
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4974
    goto/16 :goto_18a9

    .line 4956
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :pswitch_c6d
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4958
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4959
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4960
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAutoTimeZoneEnabled(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v4

    .line 4961
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4962
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4963
    goto/16 :goto_18a9

    .line 4951
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_c88
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setAutoTimeZoneEnabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4942
    :pswitch_c8d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4943
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4944
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAutoTimePolicy(Ljava/lang/String;)I

    move-result v3

    .line 4945
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4946
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4947
    goto/16 :goto_18a9

    .line 4931
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :pswitch_ca0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4933
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 4934
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4935
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAutoTimePolicy(Ljava/lang/String;I)V

    .line 4936
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4937
    goto/16 :goto_18a9

    .line 4919
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :pswitch_cb3
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4921
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4922
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4923
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAutoTimeEnabled(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v4

    .line 4924
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4925
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4926
    goto/16 :goto_18a9

    .line 4914
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_cce
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setAutoTimeEnabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4907
    :pswitch_cd3
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAutoTimeRequired()Z

    move-result v2

    .line 4908
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4909
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4910
    goto/16 :goto_18a9

    .line 4897
    .end local v2    # "_result":Z
    :pswitch_cdf
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4899
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 4900
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4901
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAutoTimeRequired(Landroid/content/ComponentName;Z)V

    .line 4902
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4903
    goto/16 :goto_18a9

    .line 4885
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Z
    :pswitch_cf6
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4887
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4888
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4889
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCrossProfileWidgetProviders(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 4890
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4891
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 4892
    goto/16 :goto_18a9

    .line 4880
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_d11
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$removeCrossProfileWidgetProvider$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4876
    :pswitch_d16
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$addCrossProfileWidgetProvider$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4872
    :pswitch_d1b
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$getTrustAgentConfiguration$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4868
    :pswitch_d20
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setTrustAgentConfiguration$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4859
    :pswitch_d25
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4860
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4861
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getBluetoothContactSharingDisabledForUser(I)Z

    move-result v3

    .line 4862
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4863
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4864
    goto/16 :goto_18a9

    .line 4849
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_d38
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4850
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4851
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getBluetoothContactSharingDisabled(Landroid/content/ComponentName;)Z

    move-result v3

    .line 4852
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4853
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4854
    goto/16 :goto_18a9

    .line 4838
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Z
    :pswitch_d4f
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4840
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 4841
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4842
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setBluetoothContactSharingDisabled(Landroid/content/ComponentName;Z)V

    .line 4843
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4844
    goto/16 :goto_18a9

    .line 4826
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Z
    :pswitch_d66
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4828
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4829
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4830
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->hasManagedProfileContactsAccess(ILjava/lang/String;)Z

    move-result v4

    .line 4831
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4832
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4833
    goto/16 :goto_18a9

    .line 4818
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_d7d
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getManagedProfileContactsAccessPolicy()Landroid/app/admin/PackagePolicy;

    move-result-object v2

    .line 4819
    .local v2, "_result":Landroid/app/admin/PackagePolicy;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4820
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4821
    goto/16 :goto_18a9

    .line 4810
    .end local v2    # "_result":Landroid/app/admin/PackagePolicy;
    :pswitch_d89
    sget-object v2, Landroid/app/admin/PackagePolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/PackagePolicy;

    .line 4811
    .local v2, "_arg0":Landroid/app/admin/PackagePolicy;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4812
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setManagedProfileContactsAccessPolicy(Landroid/app/admin/PackagePolicy;)V

    .line 4813
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4814
    goto/16 :goto_18a9

    .line 4800
    .end local v2    # "_arg0":Landroid/app/admin/PackagePolicy;
    :pswitch_d9c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4801
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4802
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCredentialManagerPolicy(I)Landroid/app/admin/PackagePolicy;

    move-result-object v3

    .line 4803
    .local v3, "_result":Landroid/app/admin/PackagePolicy;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4804
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4805
    goto/16 :goto_18a9

    .line 4791
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Landroid/app/admin/PackagePolicy;
    :pswitch_daf
    sget-object v2, Landroid/app/admin/PackagePolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/PackagePolicy;

    .line 4792
    .local v2, "_arg0":Landroid/app/admin/PackagePolicy;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4793
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setCredentialManagerPolicy(Landroid/app/admin/PackagePolicy;)V

    .line 4794
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4795
    goto/16 :goto_18a9

    .line 4779
    .end local v2    # "_arg0":Landroid/app/admin/PackagePolicy;
    :pswitch_dc2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4781
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4782
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4783
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->hasManagedProfileCallerIdAccess(ILjava/lang/String;)Z

    move-result v4

    .line 4784
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4785
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4786
    goto/16 :goto_18a9

    .line 4771
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_dd9
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getManagedProfileCallerIdAccessPolicy()Landroid/app/admin/PackagePolicy;

    move-result-object v2

    .line 4772
    .local v2, "_result":Landroid/app/admin/PackagePolicy;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4773
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4774
    goto/16 :goto_18a9

    .line 4763
    .end local v2    # "_result":Landroid/app/admin/PackagePolicy;
    :pswitch_de5
    sget-object v2, Landroid/app/admin/PackagePolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/PackagePolicy;

    .line 4764
    .local v2, "_arg0":Landroid/app/admin/PackagePolicy;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4765
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setManagedProfileCallerIdAccessPolicy(Landroid/app/admin/PackagePolicy;)V

    .line 4766
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4767
    goto/16 :goto_18a9

    .line 4758
    .end local v2    # "_arg0":Landroid/app/admin/PackagePolicy;
    :pswitch_df8
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$startManagedQuickContact$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4749
    :pswitch_dfd
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4750
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4751
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCrossProfileContactsSearchDisabledForUser(I)Z

    move-result v3

    .line 4752
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4753
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4754
    goto/16 :goto_18a9

    .line 4739
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_e10
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4740
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4741
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCrossProfileContactsSearchDisabled(Landroid/content/ComponentName;)Z

    move-result v3

    .line 4742
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4743
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4744
    goto/16 :goto_18a9

    .line 4728
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Z
    :pswitch_e27
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4730
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 4731
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4732
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setCrossProfileContactsSearchDisabled(Landroid/content/ComponentName;Z)V

    .line 4733
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4734
    goto/16 :goto_18a9

    .line 4718
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Z
    :pswitch_e3e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4719
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4720
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCrossProfileCallerIdDisabledForUser(I)Z

    move-result v3

    .line 4721
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4722
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4723
    goto/16 :goto_18a9

    .line 4708
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_e51
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4709
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4710
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCrossProfileCallerIdDisabled(Landroid/content/ComponentName;)Z

    move-result v3

    .line 4711
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4712
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4713
    goto/16 :goto_18a9

    .line 4697
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Z
    :pswitch_e68
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4699
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 4700
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4701
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setCrossProfileCallerIdDisabled(Landroid/content/ComponentName;Z)V

    .line 4702
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4703
    goto/16 :goto_18a9

    .line 4687
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Z
    :pswitch_e7f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4688
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4689
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->isUninstallBlocked(Ljava/lang/String;)Z

    move-result v3

    .line 4690
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4691
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4692
    goto/16 :goto_18a9

    .line 4682
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_e92
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setUninstallBlocked$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4678
    :pswitch_e97
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$notifyLockTaskModeChanged$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4669
    :pswitch_e9c
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4670
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4671
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->isMasterVolumeMuted(Landroid/content/ComponentName;)Z

    move-result v3

    .line 4672
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4673
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4674
    goto/16 :goto_18a9

    .line 4658
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Z
    :pswitch_eb3
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4660
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 4661
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4662
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setMasterVolumeMuted(Landroid/content/ComponentName;Z)V

    .line 4663
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4664
    goto/16 :goto_18a9

    .line 4653
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Z
    :pswitch_eca
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setTimeZone$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4649
    :pswitch_ecf
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setTime$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4639
    :pswitch_ed4
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4641
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 4642
    .restart local v3    # "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4643
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setLocationEnabled(Landroid/content/ComponentName;Z)V

    .line 4644
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4645
    goto/16 :goto_18a9

    .line 4629
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Z
    :pswitch_eeb
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4630
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4631
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->hasLockdownAdminConfiguredNetworks(Landroid/content/ComponentName;)Z

    move-result v3

    .line 4632
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4633
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4634
    goto/16 :goto_18a9

    .line 4624
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Z
    :pswitch_f02
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setConfiguredNetworksLockdownState$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4620
    :pswitch_f07
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setSecureSetting$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4616
    :pswitch_f0c
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setSystemSetting$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4612
    :pswitch_f11
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setGlobalSetting$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4601
    :pswitch_f16
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4603
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4604
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4605
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->getLockTaskFeatures(Landroid/content/ComponentName;Ljava/lang/String;)I

    move-result v4

    .line 4606
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4607
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4608
    goto/16 :goto_18a9

    .line 4596
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_f31
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setLockTaskFeatures$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4587
    :pswitch_f36
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4588
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4589
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->isLockTaskPermitted(Ljava/lang/String;)Z

    move-result v3

    .line 4590
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4591
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4592
    goto/16 :goto_18a9

    .line 4575
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_f49
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4577
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4578
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4579
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->getLockTaskPackages(Landroid/content/ComponentName;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 4580
    .local v4, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4581
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 4582
    goto/16 :goto_18a9

    .line 4570
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":[Ljava/lang/String;
    :pswitch_f64
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setLockTaskPackages$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4563
    :pswitch_f69
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPreferentialNetworkServiceConfigs()Ljava/util/List;

    move-result-object v2

    .line 4564
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/PreferentialNetworkServiceConfig;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4565
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 4566
    goto/16 :goto_18a9

    .line 4555
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/PreferentialNetworkServiceConfig;>;"
    :pswitch_f75
    sget-object v2, Landroid/app/admin/PreferentialNetworkServiceConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 4556
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/PreferentialNetworkServiceConfig;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4557
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPreferentialNetworkServiceConfigs(Ljava/util/List;)V

    .line 4558
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4559
    goto/16 :goto_18a9

    .line 4545
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/PreferentialNetworkServiceConfig;>;"
    :pswitch_f86
    sget-object v2, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 4546
    .local v2, "_arg0":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4547
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->isSecondaryLockscreenEnabled(Landroid/os/UserHandle;)Z

    move-result v3

    .line 4548
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4549
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4550
    goto/16 :goto_18a9

    .line 4540
    .end local v2    # "_arg0":Landroid/os/UserHandle;
    .end local v3    # "_result":Z
    :pswitch_f9d
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setSecondaryLockscreenEnabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4536
    :pswitch_fa2
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$getAccountTypesWithManagementDisabledAsUser$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4527
    :pswitch_fa7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4528
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4529
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAccountTypesWithManagementDisabled(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 4530
    .local v3, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4531
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 4532
    goto/16 :goto_18a9

    .line 4522
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":[Ljava/lang/String;
    :pswitch_fba
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setAccountManagementDisabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4518
    :pswitch_fbf
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$installExistingPackage$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4514
    :pswitch_fc4
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$enableSystemAppWithIntent$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4510
    :pswitch_fc9
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$enableSystemApp$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4501
    :pswitch_fce
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4502
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4503
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->isNewUserDisclaimerAcknowledged(I)Z

    move-result v3

    .line 4504
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4505
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4506
    goto/16 :goto_18a9

    .line 4492
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_fe1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4493
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4494
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->acknowledgeNewUserDisclaimer(I)V

    .line 4495
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4496
    goto/16 :goto_18a9

    .line 4482
    .end local v2    # "_arg0":I
    :pswitch_ff0
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4483
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4484
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getSecondaryUsers(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v3

    .line 4485
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4486
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 4487
    goto/16 :goto_18a9

    .line 4474
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    :pswitch_1007
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getLogoutUserId()I

    move-result v2

    .line 4475
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4476
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4477
    goto/16 :goto_18a9

    .line 4467
    .end local v2    # "_result":I
    :pswitch_1013
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->logoutUserInternal()I

    move-result v2

    .line 4468
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4469
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4470
    goto/16 :goto_18a9

    .line 4458
    .end local v2    # "_result":I
    :pswitch_101f
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4459
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4460
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->logoutUser(Landroid/content/ComponentName;)I

    move-result v3

    .line 4461
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4462
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4463
    goto/16 :goto_18a9

    .line 4446
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":I
    :pswitch_1036
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4448
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    sget-object v3, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    .line 4449
    .local v3, "_arg1":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4450
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->stopUser(Landroid/content/ComponentName;Landroid/os/UserHandle;)I

    move-result v4

    .line 4451
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4452
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4453
    goto/16 :goto_18a9

    .line 4434
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Landroid/os/UserHandle;
    .end local v4    # "_result":I
    :pswitch_1055
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4436
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    sget-object v3, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    .line 4437
    .restart local v3    # "_arg1":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4438
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->startUserInBackground(Landroid/content/ComponentName;Landroid/os/UserHandle;)I

    move-result v4

    .line 4439
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4440
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4441
    goto/16 :goto_18a9

    .line 4422
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Landroid/os/UserHandle;
    .end local v4    # "_result":I
    :pswitch_1074
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4424
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    sget-object v3, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    .line 4425
    .restart local v3    # "_arg1":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4426
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->switchUser(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z

    move-result v4

    .line 4427
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4428
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4429
    goto/16 :goto_18a9

    .line 4410
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Landroid/os/UserHandle;
    .end local v4    # "_result":Z
    :pswitch_1093
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4412
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    sget-object v3, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    .line 4413
    .restart local v3    # "_arg1":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4414
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->removeUser(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z

    move-result v4

    .line 4415
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4416
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4417
    goto/16 :goto_18a9

    .line 4405
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Landroid/os/UserHandle;
    .end local v4    # "_result":Z
    :pswitch_10b2
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$createAndManageUser$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4401
    :pswitch_10b7
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$isApplicationHidden$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4397
    :pswitch_10bc
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setApplicationHidden$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4386
    :pswitch_10c1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4388
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4389
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4390
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->getEnforcingAdminsForRestriction(ILjava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 4391
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/EnforcingAdmin;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4392
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 4393
    goto/16 :goto_18a9

    .line 4374
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/EnforcingAdmin;>;"
    :pswitch_10d8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4376
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4377
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4378
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->getEnforcingAdmin(ILjava/lang/String;)Landroid/app/admin/EnforcingAdmin;

    move-result-object v4

    .line 4379
    .local v4, "_result":Landroid/app/admin/EnforcingAdmin;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4380
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4381
    goto/16 :goto_18a9

    .line 4362
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Landroid/app/admin/EnforcingAdmin;
    :pswitch_10ef
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4364
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4365
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4366
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->getEnforcingAdminAndUserDetails(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 4367
    .local v4, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4368
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4369
    goto/16 :goto_18a9

    .line 4352
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Landroid/os/Bundle;
    :pswitch_1106
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4353
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4354
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->createAdminSupportIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 4355
    .local v3, "_result":Landroid/content/Intent;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4356
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4357
    goto/16 :goto_18a9

    .line 4340
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Landroid/content/Intent;
    :pswitch_1119
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4342
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 4343
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4344
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->isNotificationListenerServicePermitted(Ljava/lang/String;I)Z

    move-result v4

    .line 4345
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4346
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4347
    goto/16 :goto_18a9

    .line 4330
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_1130
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4331
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4332
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPermittedCrossProfileNotificationListeners(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v3

    .line 4333
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4334
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 4335
    goto/16 :goto_18a9

    .line 4318
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_1147
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4320
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 4321
    .local v3, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4322
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPermittedCrossProfileNotificationListeners(Landroid/content/ComponentName;Ljava/util/List;)Z

    move-result v4

    .line 4323
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4324
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4325
    goto/16 :goto_18a9

    .line 4313
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "_result":Z
    :pswitch_1162
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$isInputMethodPermittedByAdmin$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4304
    :pswitch_1167
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4305
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4306
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPermittedInputMethodsAsUser(I)Ljava/util/List;

    move-result-object v3

    .line 4307
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4308
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 4309
    goto/16 :goto_18a9

    .line 4299
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_117a
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$getPermittedInputMethods$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4295
    :pswitch_117f
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setPermittedInputMethods$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4291
    :pswitch_1184
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$isAccessibilityServicePermittedByAdmin$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4282
    :pswitch_1189
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4283
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4284
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPermittedAccessibilityServicesForUser(I)Ljava/util/List;

    move-result-object v3

    .line 4285
    .restart local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4286
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 4287
    goto/16 :goto_18a9

    .line 4272
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_119c
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4273
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4274
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPermittedAccessibilityServices(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v3

    .line 4275
    .restart local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4276
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 4277
    goto/16 :goto_18a9

    .line 4260
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_11b3
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4262
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 4263
    .local v3, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4264
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPermittedAccessibilityServices(Landroid/content/ComponentName;Ljava/util/List;)Z

    move-result v4

    .line 4265
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4266
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4267
    goto/16 :goto_18a9

    .line 4249
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "_result":Z
    :pswitch_11ce
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4251
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4252
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4253
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->clearCrossProfileIntentFilters(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 4254
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4255
    goto/16 :goto_18a9

    .line 4244
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_11e5
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$addCrossProfileIntentFilter$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4235
    :pswitch_11ea
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4236
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4237
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getUserRestrictionsGlobally(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 4238
    .local v3, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4239
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4240
    goto/16 :goto_18a9

    .line 4230
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Landroid/os/Bundle;
    :pswitch_11fd
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$getUserRestrictions$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4226
    :pswitch_1202
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setUserRestrictionGloballyFromSystem$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4216
    :pswitch_1207
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4218
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4219
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4220
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setUserRestrictionGlobally(Ljava/lang/String;Ljava/lang/String;)V

    .line 4221
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4222
    goto/16 :goto_18a9

    .line 4211
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_121a
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setUserRestrictionForUser$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4207
    :pswitch_121f
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setUserRestriction$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4198
    :pswitch_1224
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4199
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4200
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getRestrictionsProvider(I)Landroid/content/ComponentName;

    move-result-object v3

    .line 4201
    .local v3, "_result":Landroid/content/ComponentName;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4202
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4203
    goto/16 :goto_18a9

    .line 4187
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Landroid/content/ComponentName;
    :pswitch_1237
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4189
    .local v2, "_arg0":Landroid/content/ComponentName;
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 4190
    .local v3, "_arg1":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4191
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setRestrictionsProvider(Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 4192
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4193
    goto/16 :goto_18a9

    .line 4177
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Landroid/content/ComponentName;
    :pswitch_1252
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4178
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4179
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->isCallerApplicationRestrictionsManagingPackage(Ljava/lang/String;)Z

    move-result v3

    .line 4180
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4181
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4182
    goto/16 :goto_18a9

    .line 4167
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_1265
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4168
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4169
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getApplicationRestrictionsManagingPackage(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    .line 4170
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4171
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4172
    goto/16 :goto_18a9

    .line 4155
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_127c
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4157
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4158
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4159
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setApplicationRestrictionsManagingPackage(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v4

    .line 4160
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4161
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4162
    goto/16 :goto_18a9

    .line 4150
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_1297
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$getApplicationRestrictions$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4146
    :pswitch_129c
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setApplicationRestrictions$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4138
    :pswitch_12a1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4139
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4140
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setDefaultDialerApplication(Ljava/lang/String;)V

    .line 4141
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4142
    goto/16 :goto_18a9

    .line 4133
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_12b0
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setDefaultSmsApplication$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4129
    :pswitch_12b5
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$clearPackagePersistentPreferredActivities$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4125
    :pswitch_12ba
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$addPersistentPreferredActivity$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4116
    :pswitch_12bf
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4117
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4118
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAlwaysOnVpnLockdownAllowlist(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v3

    .line 4119
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4120
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 4121
    goto/16 :goto_18a9

    .line 4106
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_12d6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4107
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4108
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->isAlwaysOnVpnLockdownEnabledForUser(I)Z

    move-result v3

    .line 4109
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4110
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4111
    goto/16 :goto_18a9

    .line 4096
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_12e9
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4097
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4098
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->isAlwaysOnVpnLockdownEnabled(Landroid/content/ComponentName;)Z

    move-result v3

    .line 4099
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4100
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4101
    goto/16 :goto_18a9

    .line 4086
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Z
    :pswitch_1300
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4087
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4088
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAlwaysOnVpnPackageForUser(I)Ljava/lang/String;

    move-result-object v3

    .line 4089
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4090
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4091
    goto/16 :goto_18a9

    .line 4076
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_1313
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4077
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4078
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAlwaysOnVpnPackage(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    .line 4079
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4080
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4081
    goto/16 :goto_18a9

    .line 4071
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_132a
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setAlwaysOnVpnPackage$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4062
    :pswitch_132f
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4063
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4064
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCertInstallerPackage(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    .line 4065
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4066
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4067
    goto/16 :goto_18a9

    .line 4051
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_1346
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4053
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4054
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4055
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setCertInstallerPackage(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 4056
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4057
    goto/16 :goto_18a9

    .line 4039
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_135d
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4041
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4042
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4043
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->getDelegatePackages(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 4044
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4045
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 4046
    goto/16 :goto_18a9

    .line 4027
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_1378
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4029
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4030
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4031
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->getDelegatedScopes(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 4032
    .restart local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4033
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 4034
    goto/16 :goto_18a9

    .line 4022
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_1393
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setDelegatedScopes$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4018
    :pswitch_1398
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$choosePrivateKeyAlias$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4014
    :pswitch_139d
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setKeyPairCertificate$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4010
    :pswitch_13a2
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$generateKeyPair$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3999
    :pswitch_13a7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4001
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4002
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4003
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->hasKeyPair(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 4004
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4005
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4006
    goto/16 :goto_18a9

    .line 3994
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_13be
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$removeKeyPair$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3990
    :pswitch_13c3
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$installKeyPair$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3979
    :pswitch_13c8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3981
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3982
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3983
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->isCaCertApproved(Ljava/lang/String;I)Z

    move-result v4

    .line 3984
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3985
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3986
    goto/16 :goto_18a9

    .line 3974
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_13df
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$approveCaCert$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3964
    :pswitch_13e4
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 3966
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3967
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3968
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->enforceCanManageCaCerts(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 3969
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3970
    goto/16 :goto_18a9

    .line 3959
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_13fb
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$uninstallCaCerts$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3955
    :pswitch_1400
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$installCaCert$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3948
    :pswitch_1405
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->listPolicyExemptApps()Ljava/util/List;

    move-result-object v2

    .line 3949
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3950
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 3951
    goto/16 :goto_18a9

    .line 3944
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_1411
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$isPackageSuspended$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3940
    :pswitch_1416
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setPackagesSuspended$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3927
    :pswitch_141b
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getDeviceOwnerLockScreenInfo()Ljava/lang/CharSequence;

    move-result-object v3

    .line 3928
    .local v3, "_result":Ljava/lang/CharSequence;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3929
    if-eqz v3, :cond_142c

    .line 3930
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3931
    invoke-static {v3, p3, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto/16 :goto_18a9

    .line 3934
    :cond_142c
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3936
    goto/16 :goto_18a9

    .line 3917
    .end local v3    # "_result":Ljava/lang/CharSequence;
    :pswitch_1431
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 3919
    .local v2, "_arg0":Landroid/content/ComponentName;
    sget-object v3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 3920
    .local v3, "_arg1":Ljava/lang/CharSequence;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3921
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setDeviceOwnerLockScreenInfo(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V

    .line 3922
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3923
    goto/16 :goto_18a9

    .line 3912
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Ljava/lang/CharSequence;
    :pswitch_144c
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$checkDeviceIdentifierAccess$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3905
    :pswitch_1451
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->isOrganizationOwnedDeviceWithManagedProfile()Z

    move-result v2

    .line 3906
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3907
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3908
    goto/16 :goto_18a9

    .line 3898
    .end local v2    # "_result":Z
    :pswitch_145d
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->hasUserSetupCompleted()Z

    move-result v2

    .line 3899
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3900
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3901
    goto/16 :goto_18a9

    .line 3890
    .end local v2    # "_result":Z
    :pswitch_1469
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 3891
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3892
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->clearProfileOwner(Landroid/content/ComponentName;)V

    .line 3893
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3894
    goto/16 :goto_18a9

    .line 3879
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    :pswitch_147c
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 3881
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3882
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3883
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setProfileName(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 3884
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3885
    goto/16 :goto_18a9

    .line 3870
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_1493
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 3871
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3872
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setProfileEnabled(Landroid/content/ComponentName;)V

    .line 3873
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3874
    goto/16 :goto_18a9

    .line 3860
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    :pswitch_14a6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3861
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3862
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getProfileOwnerName(I)Ljava/lang/String;

    move-result-object v3

    .line 3863
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3864
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3865
    goto/16 :goto_18a9

    .line 3850
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_14b9
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 3851
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3852
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->isSupervisionComponent(Landroid/content/ComponentName;)Z

    move-result v3

    .line 3853
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3854
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3855
    goto/16 :goto_18a9

    .line 3840
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Z
    :pswitch_14d0
    sget-object v2, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 3841
    .local v2, "_arg0":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3842
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getProfileOwnerOrDeviceOwnerSupervisionComponent(Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v3

    .line 3843
    .local v3, "_result":Landroid/content/ComponentName;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3844
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3845
    goto/16 :goto_18a9

    .line 3830
    .end local v2    # "_arg0":Landroid/os/UserHandle;
    .end local v3    # "_result":Landroid/content/ComponentName;
    :pswitch_14e7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3831
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3832
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object v3

    .line 3833
    .restart local v3    # "_result":Landroid/content/ComponentName;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3834
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3835
    goto/16 :goto_18a9

    .line 3818
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Landroid/content/ComponentName;
    :pswitch_14fa
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 3820
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3821
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3822
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setProfileOwner(Landroid/content/ComponentName;I)Z

    move-result v4

    .line 3823
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3824
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3825
    goto/16 :goto_18a9

    .line 3810
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_1515
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getDeviceOwnerUserId()I

    move-result v2

    .line 3811
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3812
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3813
    goto/16 :goto_18a9

    .line 3802
    .end local v2    # "_result":I
    :pswitch_1521
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3803
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3804
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->clearDeviceOwner(Ljava/lang/String;)V

    .line 3805
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3806
    goto/16 :goto_18a9

    .line 3794
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_1530
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getDeviceOwnerName()Ljava/lang/String;

    move-result-object v2

    .line 3795
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3796
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3797
    goto/16 :goto_18a9

    .line 3787
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_153c
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->hasDeviceOwner()Z

    move-result v2

    .line 3788
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3789
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3790
    goto/16 :goto_18a9

    .line 3778
    .end local v2    # "_result":Z
    :pswitch_1548
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3779
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3780
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getDeviceOwnerComponentOnUser(I)Landroid/content/ComponentName;

    move-result-object v3

    .line 3781
    .local v3, "_result":Landroid/content/ComponentName;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3782
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3783
    goto/16 :goto_18a9

    .line 3768
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Landroid/content/ComponentName;
    :pswitch_155b
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 3769
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3770
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getDeviceOwnerComponent(Z)Landroid/content/ComponentName;

    move-result-object v3

    .line 3771
    .restart local v3    # "_result":Landroid/content/ComponentName;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3772
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3773
    goto/16 :goto_18a9

    .line 3763
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":Landroid/content/ComponentName;
    :pswitch_156e
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setDeviceOwner$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3755
    :pswitch_1573
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3756
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3757
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->reportKeyguardSecured(I)V

    .line 3758
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3759
    goto/16 :goto_18a9

    .line 3746
    .end local v2    # "_arg0":I
    :pswitch_1582
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3747
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3748
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->reportKeyguardDismissed(I)V

    .line 3749
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3750
    goto/16 :goto_18a9

    .line 3737
    .end local v2    # "_arg0":I
    :pswitch_1591
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3738
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3739
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->reportSuccessfulBiometricAttempt(I)V

    .line 3740
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3741
    goto/16 :goto_18a9

    .line 3728
    .end local v2    # "_arg0":I
    :pswitch_15a0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3729
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3730
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->reportFailedBiometricAttempt(I)V

    .line 3731
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3732
    goto/16 :goto_18a9

    .line 3719
    .end local v2    # "_arg0":I
    :pswitch_15af
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3720
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3721
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->reportSuccessfulPasswordAttempt(I)V

    .line 3722
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3723
    goto/16 :goto_18a9

    .line 3708
    .end local v2    # "_arg0":I
    :pswitch_15be
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3710
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 3711
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3712
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->reportFailedPasswordAttempt(IZ)V

    .line 3713
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3714
    goto/16 :goto_18a9

    .line 3697
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    :pswitch_15d1
    sget-object v2, Landroid/app/admin/PasswordMetrics;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/PasswordMetrics;

    .line 3699
    .local v2, "_arg0":Landroid/app/admin/PasswordMetrics;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3700
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3701
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->reportPasswordChanged(Landroid/app/admin/PasswordMetrics;I)V

    .line 3702
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3703
    goto/16 :goto_18a9

    .line 3692
    .end local v2    # "_arg0":Landroid/app/admin/PasswordMetrics;
    .end local v3    # "_arg1":I
    :pswitch_15e8
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$hasGrantedPolicy$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3682
    :pswitch_15ed
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 3684
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3685
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3686
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->forceRemoveActiveAdmin(Landroid/content/ComponentName;I)V

    .line 3687
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3688
    goto/16 :goto_18a9

    .line 3671
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":I
    :pswitch_1604
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 3673
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3674
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3675
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->removeActiveAdmin(Landroid/content/ComponentName;I)V

    .line 3676
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3677
    goto/16 :goto_18a9

    .line 3666
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":I
    :pswitch_161b
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$getRemoveWarning$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3655
    :pswitch_1620
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3657
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3658
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3659
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->packageHasActiveAdmins(Ljava/lang/String;I)Z

    move-result v4

    .line 3660
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3661
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3662
    goto/16 :goto_18a9

    .line 3645
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_1637
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3646
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3647
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getActiveAdmins(I)Ljava/util/List;

    move-result-object v3

    .line 3648
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3649
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 3650
    goto/16 :goto_18a9

    .line 3633
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    :pswitch_164a
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 3635
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3636
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3637
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->isAdminActive(Landroid/content/ComponentName;I)Z

    move-result v4

    .line 3638
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3639
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3640
    goto/16 :goto_18a9

    .line 3628
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_1665
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setActiveAdmin$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3624
    :pswitch_166a
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$getKeyguardDisabledFeatures$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3620
    :pswitch_166f
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setKeyguardDisabledFeatures$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3611
    :pswitch_1674
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3612
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3613
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getNearbyAppStreamingPolicy(I)I

    move-result v3

    .line 3614
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3615
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3616
    goto/16 :goto_18a9

    .line 3602
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_1687
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3603
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3604
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setNearbyAppStreamingPolicy(I)V

    .line 3605
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3606
    goto/16 :goto_18a9

    .line 3592
    .end local v2    # "_arg0":I
    :pswitch_1696
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3593
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3594
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getNearbyNotificationStreamingPolicy(I)I

    move-result v3

    .line 3595
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3596
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3597
    goto/16 :goto_18a9

    .line 3583
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_16a9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3584
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3585
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setNearbyNotificationStreamingPolicy(I)V

    .line 3586
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3587
    goto/16 :goto_18a9

    .line 3578
    .end local v2    # "_arg0":I
    :pswitch_16b8
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$getScreenCaptureDisabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3574
    :pswitch_16bd
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setScreenCaptureDisabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3570
    :pswitch_16c2
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$getCameraDisabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3566
    :pswitch_16c7
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setCameraDisabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3557
    :pswitch_16cc
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 3558
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3559
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->requestBugreport(Landroid/content/ComponentName;)Z

    move-result v3

    .line 3560
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3561
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3562
    goto/16 :goto_18a9

    .line 3545
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Z
    :pswitch_16e3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3547
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3548
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3549
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->getStorageEncryptionStatus(Ljava/lang/String;I)I

    move-result v4

    .line 3550
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3551
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3552
    goto/16 :goto_18a9

    .line 3533
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":I
    :pswitch_16fa
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 3535
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3536
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3537
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->getStorageEncryption(Landroid/content/ComponentName;I)Z

    move-result v4

    .line 3538
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3539
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3540
    goto/16 :goto_18a9

    .line 3521
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_1715
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 3523
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 3524
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3525
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setStorageEncryption(Landroid/content/ComponentName;Z)I

    move-result v4

    .line 3526
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3527
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3528
    goto/16 :goto_18a9

    .line 3510
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Z
    .end local v4    # "_result":I
    :pswitch_1730
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 3512
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    sget-object v3, Landroid/net/ProxyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ProxyInfo;

    .line 3513
    .local v3, "_arg1":Landroid/net/ProxyInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3514
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setRecommendedGlobalProxy(Landroid/content/ComponentName;Landroid/net/ProxyInfo;)V

    .line 3515
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3516
    goto/16 :goto_18a9

    .line 3500
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Landroid/net/ProxyInfo;
    :pswitch_174b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3501
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3502
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getGlobalProxyAdmin(I)Landroid/content/ComponentName;

    move-result-object v3

    .line 3503
    .local v3, "_result":Landroid/content/ComponentName;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3504
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3505
    goto/16 :goto_18a9

    .line 3495
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Landroid/content/ComponentName;
    :pswitch_175e
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setGlobalProxy$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3487
    :pswitch_1763
    sget-object v2, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/infra/AndroidFuture;

    .line 3488
    .local v2, "_arg0":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Boolean;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3489
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->sendLostModeLocationUpdate(Lcom/android/internal/infra/AndroidFuture;)V

    .line 3490
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3491
    goto/16 :goto_18a9

    .line 3479
    .end local v2    # "_arg0":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Boolean;>;"
    :pswitch_1776
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->isFactoryResetProtectionPolicySupported()Z

    move-result v2

    .line 3480
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3481
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3482
    goto/16 :goto_18a9

    .line 3470
    .end local v2    # "_result":Z
    :pswitch_1782
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 3471
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3472
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getFactoryResetProtectionPolicy(Landroid/content/ComponentName;)Landroid/app/admin/FactoryResetProtectionPolicy;

    move-result-object v3

    .line 3473
    .local v3, "_result":Landroid/app/admin/FactoryResetProtectionPolicy;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3474
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3475
    goto/16 :goto_18a9

    .line 3465
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Landroid/app/admin/FactoryResetProtectionPolicy;
    :pswitch_1799
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setFactoryResetProtectionPolicy$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3461
    :pswitch_179e
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$wipeDataWithReason$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3457
    :pswitch_17a3
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$lockNow$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3453
    :pswitch_17a8
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$getRequiredStrongAuthTimeout$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3449
    :pswitch_17ad
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setRequiredStrongAuthTimeout$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3445
    :pswitch_17b2
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$getMaximumTimeToLock$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3441
    :pswitch_17b7
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setMaximumTimeToLock$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3430
    :pswitch_17bc
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3432
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3433
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3434
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->resetPassword(Ljava/lang/String;I)Z

    move-result v4

    .line 3435
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3436
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3437
    goto/16 :goto_18a9

    .line 3425
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_17d3
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$getMaximumFailedPasswordsForWipe$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3421
    :pswitch_17d8
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setMaximumFailedPasswordsForWipe$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3410
    :pswitch_17dd
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3412
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 3413
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3414
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->getProfileWithMinimumFailedPasswordsForWipe(IZ)I

    move-result v4

    .line 3415
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3416
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3417
    goto/16 :goto_18a9

    .line 3405
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    .end local v4    # "_result":I
    :pswitch_17f4
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$getCurrentFailedPasswordAttempts$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3396
    :pswitch_17f9
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 3397
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3398
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->isUsingUnifiedPassword(Landroid/content/ComponentName;)Z

    move-result v3

    .line 3399
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3400
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3401
    goto/16 :goto_18a9

    .line 3384
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Z
    :pswitch_1810
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3386
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 3387
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3388
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAggregatedPasswordComplexityForUser(IZ)I

    move-result v4

    .line 3389
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3390
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3391
    goto/16 :goto_18a9

    .line 3372
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    .end local v4    # "_result":I
    :pswitch_1827
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3374
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 3375
    .restart local v3    # "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3376
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->getRequiredPasswordComplexity(Ljava/lang/String;Z)I

    move-result v4

    .line 3377
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3378
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3379
    goto :goto_18a9

    .line 3367
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Z
    .end local v4    # "_result":I
    :pswitch_183d
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setRequiredPasswordComplexity$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3358
    :pswitch_1842
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 3359
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3360
    invoke-virtual {p0, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordComplexity(Z)I

    move-result v3

    .line 3361
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3362
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3363
    goto :goto_18a9

    .line 3346
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":I
    :pswitch_1854
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3348
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3349
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3350
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->isPasswordSufficientAfterProfileUnification(II)Z

    move-result v4

    .line 3351
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3352
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3353
    goto :goto_18a9

    .line 3338
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_186a
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->isActivePasswordSufficientForDeviceRequirement()Z

    move-result v2

    .line 3339
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3340
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3341
    goto :goto_18a9

    .line 3334
    .end local v2    # "_result":Z
    :pswitch_1875
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$isActivePasswordSufficient$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3330
    :pswitch_187a
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$getPasswordExpiration$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3326
    :pswitch_187f
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$getPasswordExpirationTimeout$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3322
    :pswitch_1884
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setPasswordExpirationTimeout$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3318
    :pswitch_1889
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$getPasswordHistoryLength$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3314
    :pswitch_188e
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setPasswordHistoryLength$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3303
    :pswitch_1893
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3305
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 3306
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3307
    invoke-virtual {p0, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumMetrics(IZ)Landroid/app/admin/PasswordMetrics;

    move-result-object v4

    .line 3308
    .local v4, "_result":Landroid/app/admin/PasswordMetrics;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3309
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3310
    nop

    .line 6595
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    .end local v4    # "_result":Landroid/app/admin/PasswordMetrics;
    :goto_18a9
    return v1

    .line 3298
    :pswitch_18aa
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$getPasswordMinimumNonLetter$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3294
    :pswitch_18af
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setPasswordMinimumNonLetter$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3290
    :pswitch_18b4
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$getPasswordMinimumSymbols$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3286
    :pswitch_18b9
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setPasswordMinimumSymbols$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3282
    :pswitch_18be
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$getPasswordMinimumNumeric$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3278
    :pswitch_18c3
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setPasswordMinimumNumeric$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3274
    :pswitch_18c8
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$getPasswordMinimumLetters$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3270
    :pswitch_18cd
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setPasswordMinimumLetters$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3266
    :pswitch_18d2
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$getPasswordMinimumLowerCase$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3262
    :pswitch_18d7
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setPasswordMinimumLowerCase$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3258
    :pswitch_18dc
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$getPasswordMinimumUpperCase$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3254
    :pswitch_18e1
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setPasswordMinimumUpperCase$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3250
    :pswitch_18e6
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$getPasswordMinimumLength$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3246
    :pswitch_18eb
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setPasswordMinimumLength$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3242
    :pswitch_18f0
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$getPasswordQuality$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3238
    :pswitch_18f5
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setPasswordQuality$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_data_18fa
    .packed-switch 0x1
        :pswitch_18f5
        :pswitch_18f0
        :pswitch_18eb
        :pswitch_18e6
        :pswitch_18e1
        :pswitch_18dc
        :pswitch_18d7
        :pswitch_18d2
        :pswitch_18cd
        :pswitch_18c8
        :pswitch_18c3
        :pswitch_18be
        :pswitch_18b9
        :pswitch_18b4
        :pswitch_18af
        :pswitch_18aa
        :pswitch_1893
        :pswitch_188e
        :pswitch_1889
        :pswitch_1884
        :pswitch_187f
        :pswitch_187a
        :pswitch_1875
        :pswitch_186a
        :pswitch_1854
        :pswitch_1842
        :pswitch_183d
        :pswitch_1827
        :pswitch_1810
        :pswitch_17f9
        :pswitch_17f4
        :pswitch_17dd
        :pswitch_17d8
        :pswitch_17d3
        :pswitch_17bc
        :pswitch_17b7
        :pswitch_17b2
        :pswitch_17ad
        :pswitch_17a8
        :pswitch_17a3
        :pswitch_179e
        :pswitch_1799
        :pswitch_1782
        :pswitch_1776
        :pswitch_1763
        :pswitch_175e
        :pswitch_174b
        :pswitch_1730
        :pswitch_1715
        :pswitch_16fa
        :pswitch_16e3
        :pswitch_16cc
        :pswitch_16c7
        :pswitch_16c2
        :pswitch_16bd
        :pswitch_16b8
        :pswitch_16a9
        :pswitch_1696
        :pswitch_1687
        :pswitch_1674
        :pswitch_166f
        :pswitch_166a
        :pswitch_1665
        :pswitch_164a
        :pswitch_1637
        :pswitch_1620
        :pswitch_161b
        :pswitch_1604
        :pswitch_15ed
        :pswitch_15e8
        :pswitch_15d1
        :pswitch_15be
        :pswitch_15af
        :pswitch_15a0
        :pswitch_1591
        :pswitch_1582
        :pswitch_1573
        :pswitch_156e
        :pswitch_155b
        :pswitch_1548
        :pswitch_153c
        :pswitch_1530
        :pswitch_1521
        :pswitch_1515
        :pswitch_14fa
        :pswitch_14e7
        :pswitch_14d0
        :pswitch_14b9
        :pswitch_14a6
        :pswitch_1493
        :pswitch_147c
        :pswitch_1469
        :pswitch_145d
        :pswitch_1451
        :pswitch_144c
        :pswitch_1431
        :pswitch_141b
        :pswitch_1416
        :pswitch_1411
        :pswitch_1405
        :pswitch_1400
        :pswitch_13fb
        :pswitch_13e4
        :pswitch_13df
        :pswitch_13c8
        :pswitch_13c3
        :pswitch_13be
        :pswitch_13a7
        :pswitch_13a2
        :pswitch_139d
        :pswitch_1398
        :pswitch_1393
        :pswitch_1378
        :pswitch_135d
        :pswitch_1346
        :pswitch_132f
        :pswitch_132a
        :pswitch_1313
        :pswitch_1300
        :pswitch_12e9
        :pswitch_12d6
        :pswitch_12bf
        :pswitch_12ba
        :pswitch_12b5
        :pswitch_12b0
        :pswitch_12a1
        :pswitch_129c
        :pswitch_1297
        :pswitch_127c
        :pswitch_1265
        :pswitch_1252
        :pswitch_1237
        :pswitch_1224
        :pswitch_121f
        :pswitch_121a
        :pswitch_1207
        :pswitch_1202
        :pswitch_11fd
        :pswitch_11ea
        :pswitch_11e5
        :pswitch_11ce
        :pswitch_11b3
        :pswitch_119c
        :pswitch_1189
        :pswitch_1184
        :pswitch_117f
        :pswitch_117a
        :pswitch_1167
        :pswitch_1162
        :pswitch_1147
        :pswitch_1130
        :pswitch_1119
        :pswitch_1106
        :pswitch_10ef
        :pswitch_10d8
        :pswitch_10c1
        :pswitch_10bc
        :pswitch_10b7
        :pswitch_10b2
        :pswitch_1093
        :pswitch_1074
        :pswitch_1055
        :pswitch_1036
        :pswitch_101f
        :pswitch_1013
        :pswitch_1007
        :pswitch_ff0
        :pswitch_fe1
        :pswitch_fce
        :pswitch_fc9
        :pswitch_fc4
        :pswitch_fbf
        :pswitch_fba
        :pswitch_fa7
        :pswitch_fa2
        :pswitch_f9d
        :pswitch_f86
        :pswitch_f75
        :pswitch_f69
        :pswitch_f64
        :pswitch_f49
        :pswitch_f36
        :pswitch_f31
        :pswitch_f16
        :pswitch_f11
        :pswitch_f0c
        :pswitch_f07
        :pswitch_f02
        :pswitch_eeb
        :pswitch_ed4
        :pswitch_ecf
        :pswitch_eca
        :pswitch_eb3
        :pswitch_e9c
        :pswitch_e97
        :pswitch_e92
        :pswitch_e7f
        :pswitch_e68
        :pswitch_e51
        :pswitch_e3e
        :pswitch_e27
        :pswitch_e10
        :pswitch_dfd
        :pswitch_df8
        :pswitch_de5
        :pswitch_dd9
        :pswitch_dc2
        :pswitch_daf
        :pswitch_d9c
        :pswitch_d89
        :pswitch_d7d
        :pswitch_d66
        :pswitch_d4f
        :pswitch_d38
        :pswitch_d25
        :pswitch_d20
        :pswitch_d1b
        :pswitch_d16
        :pswitch_d11
        :pswitch_cf6
        :pswitch_cdf
        :pswitch_cd3
        :pswitch_cce
        :pswitch_cb3
        :pswitch_ca0
        :pswitch_c8d
        :pswitch_c88
        :pswitch_c6d
        :pswitch_c5a
        :pswitch_c47
        :pswitch_c30
        :pswitch_c19
        :pswitch_bfe
        :pswitch_be3
        :pswitch_bde
        :pswitch_bd2
        :pswitch_bca
        :pswitch_baf
        :pswitch_baa
        :pswitch_b97
        :pswitch_b8b
        :pswitch_b78
        :pswitch_b5d
        :pswitch_b58
        :pswitch_b41
        :pswitch_b3c
        :pswitch_b37
        :pswitch_b20
        :pswitch_b09
        :pswitch_b04
        :pswitch_ae9
        :pswitch_ad2
        :pswitch_ab7
        :pswitch_aa4
        :pswitch_a9f
        :pswitch_a7a
        :pswitch_a5f
        :pswitch_a3e
        :pswitch_a19
        :pswitch_9f4
        :pswitch_9dd
        :pswitch_9ca
        :pswitch_9bb
        :pswitch_9a4
        :pswitch_991
        :pswitch_98c
        :pswitch_967
        :pswitch_951
        :pswitch_934
        :pswitch_921
        :pswitch_90e
        :pswitch_8f7
        :pswitch_8e0
        :pswitch_8d4
        :pswitch_8c1
        :pswitch_8bc
        :pswitch_8a1
        :pswitch_886
        :pswitch_86b
        :pswitch_85f
        :pswitch_853
        :pswitch_840
        :pswitch_82d
        :pswitch_816
        :pswitch_803
        :pswitch_7f4
        :pswitch_7e8
        :pswitch_7dc
        :pswitch_7d4
        :pswitch_7c5
        :pswitch_7ae
        :pswitch_797
        :pswitch_792
        :pswitch_777
        :pswitch_772
        :pswitch_76d
        :pswitch_756
        :pswitch_73f
        :pswitch_733
        :pswitch_727
        :pswitch_71b
        :pswitch_716
        :pswitch_6fb
        :pswitch_6e0
        :pswitch_6db
        :pswitch_6cf
        :pswitch_6b8
        :pswitch_6b3
        :pswitch_69c
        :pswitch_690
        :pswitch_68b
        :pswitch_686
        :pswitch_67a
        :pswitch_65f
        :pswitch_644
        :pswitch_623
        :pswitch_602
        :pswitch_5e7
        :pswitch_5d0
        :pswitch_5b1
        :pswitch_5ac
        :pswitch_591
        :pswitch_57a
        :pswitch_563
        :pswitch_54c
        :pswitch_547
        :pswitch_542
        :pswitch_52b
        :pswitch_514
        :pswitch_50f
        :pswitch_50a
        :pswitch_4f3
        :pswitch_4dc
        :pswitch_4c5
        :pswitch_4b2
        :pswitch_49b
        :pswitch_484
        :pswitch_471
        :pswitch_465
        :pswitch_459
        :pswitch_44d
        :pswitch_448
        :pswitch_443
        :pswitch_42c
        :pswitch_427
        :pswitch_410
        :pswitch_40b
        :pswitch_3f0
        :pswitch_3eb
        :pswitch_3d4
        :pswitch_3bd
        :pswitch_3a6
        :pswitch_38f
        :pswitch_378
        :pswitch_370
        :pswitch_364
        :pswitch_351
        :pswitch_33e
        :pswitch_32b
        :pswitch_318
        :pswitch_313
        :pswitch_2f8
        :pswitch_2dd
        :pswitch_2c2
        :pswitch_2ab
        :pswitch_290
        :pswitch_27d
        :pswitch_266
        :pswitch_24f
        :pswitch_240
        :pswitch_234
        :pswitch_221
        :pswitch_20e
        :pswitch_202
        :pswitch_1fd
        :pswitch_1f1
        :pswitch_1ec
        :pswitch_1d9
        :pswitch_1c6
        :pswitch_1ba
        :pswitch_1a9
        :pswitch_19a
        :pswitch_195
        :pswitch_189
        :pswitch_17a
        :pswitch_169
        :pswitch_15a
        :pswitch_147
        :pswitch_13f
        :pswitch_133
        :pswitch_11c
        :pswitch_117
        :pswitch_104
        :pswitch_ff
        :pswitch_fa
        :pswitch_e7
        :pswitch_d4
        :pswitch_c8
        :pswitch_bc
        :pswitch_a9
        :pswitch_96
        :pswitch_83
        :pswitch_7b
        :pswitch_76
        :pswitch_71
        :pswitch_5e
        :pswitch_59
        :pswitch_54
        :pswitch_41
        :pswitch_3c
        :pswitch_29
        :pswitch_24
        :pswitch_1f
    .end packed-switch
.end method
