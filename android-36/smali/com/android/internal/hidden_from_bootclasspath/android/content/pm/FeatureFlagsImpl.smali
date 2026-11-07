.class public final Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist allowSdkSandboxQueryIntentActivities()Z
    .registers 2

    .line 10
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist alwaysLoadPastCertsV4()Z
    .registers 2

    .line 17
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist appCompatOption16kb()Z
    .registers 2

    .line 24
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist archiving()Z
    .registers 2

    .line 31
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist aslInApkAppMetadataSource()Z
    .registers 2

    .line 38
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist audioPlaybackCaptureAllowance()Z
    .registers 2

    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist cacheSdkSystemFeatures()Z
    .registers 2

    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist changeLauncherBadging()Z
    .registers 2

    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist cloudCompilationPm()Z
    .registers 2

    .line 66
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist cloudCompilationVerification()Z
    .registers 2

    .line 73
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist componentStateChangedMetrics()Z
    .registers 2

    .line 80
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist deletePackagesSilentlyBackport()Z
    .registers 2

    .line 87
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist disallowSdkLibsToBeApps()Z
    .registers 2

    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist emergencyInstallPermission()Z
    .registers 2

    .line 101
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist encodeAppIntent()Z
    .registers 2

    .line 108
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist fixDuplicatedFlags()Z
    .registers 2

    .line 115
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist fixSystemAppsFirstInstallTime()Z
    .registers 2

    .line 122
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist forceMultiArchNativeLibsMatch()Z
    .registers 2

    .line 129
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getPackageInfo()Z
    .registers 2

    .line 136
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getPackageInfoWithFd()Z
    .registers 2

    .line 143
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getPackageStorageStats()Z
    .registers 2

    .line 150
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getResolvedApkPath()Z
    .registers 2

    .line 157
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist improveHomeAppBehavior()Z
    .registers 2

    .line 164
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist improveInstallDontKill()Z
    .registers 2

    .line 171
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist improveInstallFreeze()Z
    .registers 2

    .line 178
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist includeFeatureFlagsInPackageCacher()Z
    .registers 2

    .line 185
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist introduceMediaProcessingType()Z
    .registers 2

    .line 192
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist lightweightInvisibleLabelDetection()Z
    .registers 2

    .line 199
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist minTargetSdk24()Z
    .registers 2

    .line 206
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist nullableDataDir()Z
    .registers 2

    .line 213
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist optimizeParsingInRegisteredServicesCache()Z
    .registers 2

    .line 220
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist packageRestartQueryDisabledByDefault()Z
    .registers 2

    .line 227
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist parallelPackageParsingAcrossSystemDirs()Z
    .registers 2

    .line 234
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist provideInfoOfApkInApex()Z
    .registers 2

    .line 241
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist quarantinedEnabled()Z
    .registers 2

    .line 248
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist readInstallInfo()Z
    .registers 2

    .line 255
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist recoverabilityDetection()Z
    .registers 2

    .line 262
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist reduceBroadcastsForComponentStateChanges()Z
    .registers 2

    .line 269
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist relativeReferenceIntentFilters()Z
    .registers 2

    .line 276
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist removeCrossUserPermissionHack()Z
    .registers 2

    .line 283
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist removeHiddenModuleUsage()Z
    .registers 2

    .line 290
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist restrictNonpreloadsSystemShareduids()Z
    .registers 2

    .line 297
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist rollbackLifetime()Z
    .registers 2

    .line 304
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist sdkDependencyInstaller()Z
    .registers 2

    .line 311
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist sdkLibIndependence()Z
    .registers 2

    .line 318
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setPreVerifiedDomains()Z
    .registers 2

    .line 325
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist stayStopped()Z
    .registers 2

    .line 332
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist uidBasedProviderLookup()Z
    .registers 2

    .line 339
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist useArtServiceV2()Z
    .registers 2

    .line 346
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist usePiaV2()Z
    .registers 2

    .line 353
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist waitApplicationKilled()Z
    .registers 2

    .line 360
    const/4 v0, 0x1

    return v0
.end method
