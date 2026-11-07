.class public final Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/FeatureFlags;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist activeAdminCleanup()Z
    .registers 2

    .line 10
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist allowQueryingProfileType()Z
    .registers 2

    .line 17
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist assistContentUserRestrictionEnabled()Z
    .registers 2

    .line 24
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist backupConnectedAppsSettings()Z
    .registers 2

    .line 31
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist backupServiceSecurityLogEventEnabled()Z
    .registers 2

    .line 38
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist coexistenceMigrationForSupervisionEnabled()Z
    .registers 2

    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist crossUserSuspensionEnabledRo()Z
    .registers 2

    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dedicatedDeviceControlApiEnabled()Z
    .registers 2

    .line 59
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist defaultSmsPersonalAppSuspensionFixEnabled()Z
    .registers 2

    .line 66
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist devicePolicySizeTrackingEnabled()Z
    .registers 2

    .line 73
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist deviceTheftApiEnabled()Z
    .registers 2

    .line 80
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist deviceTheftImplEnabled()Z
    .registers 2

    .line 87
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist disallowUserControlStoppedStateFix()Z
    .registers 2

    .line 94
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist enableSupervisionServiceSync()Z
    .registers 2

    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist esimManagementEnabled()Z
    .registers 2

    .line 108
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist esimManagementUxEnabled()Z
    .registers 2

    .line 115
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist headlessDeviceOwnerSingleUserEnabled()Z
    .registers 2

    .line 122
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist headlessSingleMinTargetSdk()Z
    .registers 2

    .line 129
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist internalLogEventListener()Z
    .registers 2

    .line 136
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist isMtePolicyEnforced()Z
    .registers 2

    .line 143
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist isRecursiveRequiredAppMergingEnabled()Z
    .registers 2

    .line 150
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist lockNowCoexistence()Z
    .registers 2

    .line 157
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist managementModePolicyMetrics()Z
    .registers 2

    .line 164
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist onboardingBugreportStorageBugFix()Z
    .registers 2

    .line 171
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist onboardingBugreportV2Enabled()Z
    .registers 2

    .line 178
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist onboardingConsentlessBugreports()Z
    .registers 2

    .line 185
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist permissionMigrationForZeroTrustApiEnabled()Z
    .registers 2

    .line 192
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist policyEngineMigrationV2Enabled()Z
    .registers 2

    .line 199
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist provisioningContextParameter()Z
    .registers 2

    .line 206
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist quietModeCredentialBugFix()Z
    .registers 2

    .line 213
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist removeManagedEsimOnWorkProfileDeletion()Z
    .registers 2

    .line 220
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist removeManagedProfileEnabled()Z
    .registers 2

    .line 227
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist resetPasswordWithTokenCoexistence()Z
    .registers 2

    .line 234
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist secondaryLockscreenApiEnabled()Z
    .registers 2

    .line 241
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist securityLogV2Enabled()Z
    .registers 2

    .line 248
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist setApplicationRestrictionsCoexistence()Z
    .registers 2

    .line 255
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setAutoTimeEnabledCoexistence()Z
    .registers 2

    .line 262
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist setAutoTimeZoneEnabledCoexistence()Z
    .registers 2

    .line 269
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist setBackupServiceEnabledCoexistence()Z
    .registers 2

    .line 276
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setKeyguardDisabledFeaturesCoexistence()Z
    .registers 2

    .line 283
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setMtePolicyCoexistence()Z
    .registers 2

    .line 290
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setPermissionGrantStateCoexistence()Z
    .registers 2

    .line 297
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist splitCreateManagedProfileEnabled()Z
    .registers 2

    .line 304
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist suspendPackagesCoexistence()Z
    .registers 2

    .line 311
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist unmanagedModeMigration()Z
    .registers 2

    .line 318
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist unsuspendNotSuspended()Z
    .registers 2

    .line 325
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist usePolicyIntersectionForPermittedInputMethods()Z
    .registers 2

    .line 332
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist userProvisioningSameState()Z
    .registers 2

    .line 339
    const/4 v0, 0x1

    return v0
.end method
