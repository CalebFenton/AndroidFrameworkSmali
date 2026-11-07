.class public final Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/FeatureFlags;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist allowHostPermissionDialogsOnVirtualDevices()Z
    .registers 2

    .line 10
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist appOpsServiceHandlerFix()Z
    .registers 2

    .line 17
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist appopAccessTrackingLoggingEnabled()Z
    .registers 2

    .line 24
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist appopModeCachingEnabled()Z
    .registers 2

    .line 31
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist checkOpOverloadApiEnabled()Z
    .registers 2

    .line 38
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist checkOpValidatePackage()Z
    .registers 2

    .line 45
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist delayUidStateChangesFromCapabilityUpdates()Z
    .registers 2

    .line 52
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist deviceAwareAppOpNewSchemaEnabled()Z
    .registers 2

    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist deviceAwarePermissionApisEnabled()Z
    .registers 2

    .line 66
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist deviceAwarePermissionsEnabled()Z
    .registers 2

    .line 73
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist deviceIdInOpProxyInfoEnabled()Z
    .registers 2

    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist devicePolicyManagementRoleSplitCreateManagedProfileEnabled()Z
    .registers 2

    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dontRemoveExistingUidStates()Z
    .registers 2

    .line 94
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist enableAiaiProxiedTextClassifiers()Z
    .registers 2

    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist enableAllSqliteAppopsAccesses()Z
    .registers 2

    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist enableOtpInTextClassifiers()Z
    .registers 2

    .line 115
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist enableSqliteAppopsAccesses()Z
    .registers 2

    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist enableSystemSupervisionRoleBehavior()Z
    .registers 2

    .line 129
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist enforceDefaultDeviceIdInMyAttributionSource()Z
    .registers 2

    .line 136
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist enhancedConfirmationInCallApisEnabled()Z
    .registers 2

    .line 143
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist enhancedConfirmationModeApisEnabled()Z
    .registers 2

    .line 150
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist factoryResetPrepPermissionApis()Z
    .registers 2

    .line 157
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist finePowerMonitorPermission()Z
    .registers 2

    .line 164
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist finishRunningOpsForKilledPackages()Z
    .registers 2

    .line 171
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getEmergencyRoleHolderApiEnabled()Z
    .registers 2

    .line 178
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist grantReadBlockedNumbersToSystemUiIntelligence()Z
    .registers 2

    .line 185
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist healthConnectBackupRestorePermissionEnabled()Z
    .registers 2

    .line 192
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist ignoreProcessText()Z
    .registers 2

    .line 199
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist locationBypassPrivacyDashboardEnabled()Z
    .registers 2

    .line 206
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist noteOpBatchingEnabled()Z
    .registers 2

    .line 213
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist opEnableMobileDataByUser()Z
    .registers 2

    .line 220
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist permissionRequestShortCircuitEnabled()Z
    .registers 2

    .line 227
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist permissionTreeApisDeprecated()Z
    .registers 2

    .line 234
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist rangingPermissionEnabled()Z
    .registers 2

    .line 241
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist rateLimitBatchedNoteOpAsyncCallbacksEnabled()Z
    .registers 2

    .line 248
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist recordAllRuntimeAppopsSqlite()Z
    .registers 2

    .line 255
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist replaceBodySensorPermissionEnabled()Z
    .registers 2

    .line 262
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist retailDemoRoleEnabled()Z
    .registers 2

    .line 269
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist runtimePermissionAppopsMappingEnabled()Z
    .registers 2

    .line 276
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist sensitiveContentImprovements()Z
    .registers 2

    .line 283
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist sensitiveContentMetricsBugfix()Z
    .registers 2

    .line 290
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist sensitiveContentRecentsScreenshotBugfix()Z
    .registers 2

    .line 297
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist sensitiveNotificationAppProtection()Z
    .registers 2

    .line 304
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist serverSideAttributionRegistration()Z
    .registers 2

    .line 311
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist setNextAttributionSource()Z
    .registers 2

    .line 318
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist shouldRegisterAttributionSource()Z
    .registers 2

    .line 325
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist signaturePermissionAllowlistEnabled()Z
    .registers 2

    .line 332
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist sqliteDiscreteOpEventLoggingEnabled()Z
    .registers 2

    .line 339
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist supervisionRolePermissionUpdateEnabled()Z
    .registers 2

    .line 346
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist syncOnOpNotedApi()Z
    .registers 2

    .line 353
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist systemSelectionToolbarEnabled()Z
    .registers 2

    .line 360
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist systemServerRoleControllerEnabled()Z
    .registers 2

    .line 367
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist systemVendorIntelligenceRoleEnabled()Z
    .registers 2

    .line 374
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist textClassifierChoiceApiEnabled()Z
    .registers 2

    .line 381
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist unknownCallPackageInstallBlockingEnabled()Z
    .registers 2

    .line 388
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist unknownCallSettingBlockedLoggingEnabled()Z
    .registers 2

    .line 395
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist updatableTextClassifierForOtpDetectionEnabled()Z
    .registers 2

    .line 402
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist useFrozenAwareRemoteCallbackList()Z
    .registers 2

    .line 409
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist useProfileLabelsForDefaultAppSectionTitles()Z
    .registers 2

    .line 416
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist useSystemSelectionToolbarInSysui()Z
    .registers 2

    .line 423
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist voiceActivationPermissionApis()Z
    .registers 2

    .line 430
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist walletRoleCrossUserEnabled()Z
    .registers 2

    .line 437
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist walletRoleEnabled()Z
    .registers 2

    .line 444
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist walletRoleIconPropertyEnabled()Z
    .registers 2

    .line 451
    const/4 v0, 0x1

    return v0
.end method
