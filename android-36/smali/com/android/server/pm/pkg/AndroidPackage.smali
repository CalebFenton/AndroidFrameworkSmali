.class public interface abstract Lcom/android/server/pm/pkg/AndroidPackage;
.super Ljava/lang/Object;
.source "AndroidPackage.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->SYSTEM_SERVER:Landroid/annotation/SystemApi$Client;
.end annotation


# virtual methods
.method public abstract blacklist getActivities()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/pm/pkg/component/ParsedActivity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist getAdoptPermissions()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist getAlternateLauncherIconResIds()[I
.end method

.method public abstract blacklist getAlternateLauncherLabelResIds()[I
.end method

.method public abstract blacklist getApexSystemServices()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/pm/pkg/component/ParsedApexSystemService;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist getAppComponentFactory()Ljava/lang/String;
.end method

.method public abstract blacklist getApplicationClassName()Ljava/lang/String;
.end method

.method public abstract blacklist getAttributions()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/pm/pkg/component/ParsedAttribution;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist getAutoRevokePermissions()I
.end method

.method public abstract blacklist getBackupAgentName()Ljava/lang/String;
.end method

.method public abstract blacklist getBannerResourceId()I
.end method

.method public abstract blacklist getBaseApkPath()Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract blacklist getBaseRevisionCode()I
.end method

.method public abstract blacklist getCategory()I
.end method

.method public abstract blacklist getClassLoaderName()Ljava/lang/String;
.end method

.method public abstract blacklist getCompatibleWidthLimitDp()I
.end method

.method public abstract blacklist getCompileSdkVersion()I
.end method

.method public abstract blacklist getCompileSdkVersionCodeName()Ljava/lang/String;
.end method

.method public abstract blacklist getConfigPreferences()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/ConfigurationInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist getDataExtractionRulesResourceId()I
.end method

.method public abstract blacklist getDescriptionResourceId()I
.end method

.method public abstract blacklist getEmergencyInstaller()Ljava/lang/String;
.end method

.method public abstract blacklist getFeatureGroups()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/FeatureGroupInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist getFullBackupContentResourceId()I
.end method

.method public abstract blacklist getGwpAsanMode()I
.end method

.method public abstract blacklist getIconResourceId()I
.end method

.method public abstract blacklist getImplicitPermissions()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist getInstallLocation()I
.end method

.method public abstract blacklist getInstrumentations()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist getIntentMatchingFlags()I
.end method

.method public abstract blacklist getKeySetMapping()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/security/PublicKey;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract blacklist getKnownActivityEmbeddingCerts()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist getLabelResourceId()I
.end method

.method public abstract blacklist getLargestWidthLimitDp()I
.end method

.method public abstract blacklist getLibraryNames()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist getLocaleConfigResourceId()I
.end method

.method public abstract blacklist getLogoResourceId()I
.end method

.method public abstract blacklist getLongVersionCode()J
.end method

.method public abstract blacklist getManageSpaceActivityName()Ljava/lang/String;
.end method

.method public abstract blacklist getManifestPackageName()Ljava/lang/String;
.end method

.method public abstract blacklist getMaxAspectRatio()F
.end method

.method public abstract blacklist getMaxSdkVersion()I
.end method

.method public abstract blacklist getMemtagMode()I
.end method

.method public abstract blacklist getMetaData()Landroid/os/Bundle;
.end method

.method public abstract blacklist getMimeGroups()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist getMinAspectRatio()F
.end method

.method public abstract blacklist getMinExtensionVersions()Landroid/util/SparseIntArray;
.end method

.method public abstract blacklist getMinSdkVersion()I
.end method

.method public abstract blacklist getNativeHeapZeroInitialized()I
.end method

.method public abstract blacklist getNativeLibraryDir()Ljava/lang/String;
.end method

.method public abstract blacklist getNativeLibraryRootDir()Ljava/lang/String;
.end method

.method public abstract blacklist getNetworkSecurityConfigResourceId()I
.end method

.method public abstract blacklist getNonLocalizedLabel()Ljava/lang/CharSequence;
.end method

.method public abstract blacklist getOriginalPackages()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist getOverlayCategory()Ljava/lang/String;
.end method

.method public abstract blacklist getOverlayPriority()I
.end method

.method public abstract blacklist getOverlayTarget()Ljava/lang/String;
.end method

.method public abstract blacklist getOverlayTargetOverlayableName()Ljava/lang/String;
.end method

.method public abstract blacklist getOverlayables()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist getPackageName()Ljava/lang/String;
.end method

.method public abstract blacklist getPageSizeAppCompatFlags()I
.end method

.method public abstract blacklist getPath()Ljava/lang/String;
.end method

.method public abstract blacklist getPermission()Ljava/lang/String;
.end method

.method public abstract blacklist getPermissionGroups()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist getPermissions()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/pm/pkg/component/ParsedPermission;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist getPreferredActivityFilters()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract blacklist getProcessName()Ljava/lang/String;
.end method

.method public abstract blacklist getProcesses()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/internal/pm/pkg/component/ParsedProcess;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist getProperties()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageManager$Property;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist getProtectedBroadcasts()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist getProviders()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/pm/pkg/component/ParsedProvider;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist getQueriesIntents()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist getQueriesPackages()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist getQueriesProviders()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist getReceivers()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/pm/pkg/component/ParsedActivity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist getRequestedFeatures()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/FeatureInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist getRequestedPermissions()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist getRequiredAccountType()Ljava/lang/String;
.end method

.method public abstract blacklist getRequiresSmallestWidthDp()I
.end method

.method public abstract blacklist getResizeableActivity()Ljava/lang/Boolean;
.end method

.method public abstract blacklist getRestrictUpdateHash()[B
.end method

.method public abstract blacklist getRestrictedAccountType()Ljava/lang/String;
.end method

.method public abstract blacklist getRoundIconResourceId()I
.end method

.method public abstract blacklist getSdkLibVersionMajor()I
.end method

.method public abstract blacklist getSdkLibraryName()Ljava/lang/String;
.end method

.method public abstract blacklist getSecondaryNativeLibraryDir()Ljava/lang/String;
.end method

.method public abstract blacklist getServices()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/pm/pkg/component/ParsedService;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist getSharedUserId()Ljava/lang/String;
.end method

.method public abstract blacklist getSharedUserLabelResourceId()I
.end method

.method public abstract blacklist getSigningDetails()Landroid/content/pm/SigningDetails;
.end method

.method public abstract blacklist getSplitClassLoaderNames()[Ljava/lang/String;
.end method

.method public abstract blacklist getSplitCodePaths()[Ljava/lang/String;
.end method

.method public abstract blacklist getSplitDependencies()Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "[I>;"
        }
    .end annotation
.end method

.method public abstract blacklist getSplitFlags()[I
.end method

.method public abstract blacklist getSplitNames()[Ljava/lang/String;
.end method

.method public abstract blacklist getSplitRevisionCodes()[I
.end method

.method public abstract blacklist getSplits()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/pm/pkg/AndroidPackageSplit;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist getStaticSharedLibraryName()Ljava/lang/String;
.end method

.method public abstract blacklist getStaticSharedLibraryVersion()J
.end method

.method public abstract blacklist getStorageUuid()Ljava/util/UUID;
.end method

.method public abstract blacklist getTargetSandboxVersion()I
.end method

.method public abstract blacklist getTargetSdkVersion()I
.end method

.method public abstract blacklist getTaskAffinity()Ljava/lang/String;
.end method

.method public abstract blacklist getThemeResourceId()I
.end method

.method public abstract blacklist getUiOptions()I
.end method

.method public abstract blacklist getUid()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract blacklist getUpgradeKeySets()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist getUsesLibraries()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist getUsesNativeLibraries()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist getUsesOptionalLibraries()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist getUsesOptionalNativeLibraries()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist getUsesPermissions()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist getUsesSdkLibraries()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist getUsesSdkLibrariesCertDigests()[[Ljava/lang/String;
.end method

.method public abstract blacklist getUsesSdkLibrariesOptional()[Z
.end method

.method public abstract blacklist getUsesSdkLibrariesVersionsMajor()[J
.end method

.method public abstract blacklist getUsesStaticLibraries()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist getUsesStaticLibrariesCertDigests()[[Ljava/lang/String;
.end method

.method public abstract blacklist getUsesStaticLibrariesVersions()[J
.end method

.method public abstract blacklist getVersionName()Ljava/lang/String;
.end method

.method public abstract blacklist getVolumeUuid()Ljava/lang/String;
.end method

.method public abstract blacklist getZygotePreloadName()Ljava/lang/String;
.end method

.method public abstract blacklist hasPreserveLegacyExternalStorage()Z
.end method

.method public abstract blacklist hasRequestForegroundServiceExemption()Z
.end method

.method public abstract blacklist hasRequestRawExternalStorageAccess()Ljava/lang/Boolean;
.end method

.method public abstract blacklist is32BitAbiPreferred()Z
.end method

.method public abstract blacklist isAllowAudioPlaybackCapture()Z
.end method

.method public abstract blacklist isAllowCrossUidActivitySwitchFromBelow()Z
.end method

.method public abstract blacklist isAllowNativeHeapPointerTagging()Z
.end method

.method public abstract blacklist isAnyDensity()Z
.end method

.method public abstract blacklist isApex()Z
.end method

.method public abstract blacklist isAttributionsUserVisible()Z
.end method

.method public abstract blacklist isBackupAllowed()Z
.end method

.method public abstract blacklist isBackupInForeground()Z
.end method

.method public abstract blacklist isClearUserDataAllowed()Z
.end method

.method public abstract blacklist isClearUserDataOnFailedRestoreAllowed()Z
.end method

.method public abstract blacklist isCleartextTrafficAllowed()Z
.end method

.method public abstract blacklist isCoreApp()Z
.end method

.method public abstract blacklist isCrossProfile()Z
.end method

.method public abstract blacklist isDebuggable()Z
.end method

.method public abstract blacklist isDeclaredHavingCode()Z
.end method

.method public abstract blacklist isDefaultToDeviceProtectedStorage()Z
.end method

.method public abstract blacklist isDirectBootAware()Z
.end method

.method public abstract blacklist isEnabled()Z
.end method

.method public abstract blacklist isExternalStorage()Z
.end method

.method public abstract blacklist isExtraLargeScreensSupported()Z
.end method

.method public abstract blacklist isExtractNativeLibrariesRequested()Z
.end method

.method public abstract blacklist isFactoryTest()Z
.end method

.method public abstract blacklist isForceQueryable()Z
.end method

.method public abstract blacklist isFullBackupOnly()Z
.end method

.method public abstract blacklist isGame()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract blacklist isHardwareAccelerated()Z
.end method

.method public abstract blacklist isHasDomainUrls()Z
.end method

.method public abstract blacklist isIsolatedSplitLoading()Z
.end method

.method public abstract blacklist isKillAfterRestoreAllowed()Z
.end method

.method public abstract blacklist isLargeHeap()Z
.end method

.method public abstract blacklist isLargeScreensSupported()Z
.end method

.method public abstract blacklist isLeavingSharedUser()Z
.end method

.method public abstract blacklist isMultiArch()Z
.end method

.method public abstract blacklist isNativeLibraryRootRequiresIsa()Z
.end method

.method public abstract blacklist isNonSdkApiRequested()Z
.end method

.method public abstract blacklist isNormalScreensSupported()Z
.end method

.method public abstract blacklist isOnBackInvokedCallbackEnabled()Z
.end method

.method public abstract blacklist isOverlayIsStatic()Z
.end method

.method public abstract blacklist isPartiallyDirectBootAware()Z
.end method

.method public abstract blacklist isPersistent()Z
.end method

.method public abstract blacklist isProfileable()Z
.end method

.method public abstract blacklist isProfileableByShell()Z
.end method

.method public abstract blacklist isRequestLegacyExternalStorage()Z
.end method

.method public abstract blacklist isRequiredForAllUsers()Z
.end method

.method public abstract blacklist isResetEnabledSettingsOnAppDataCleared()Z
.end method

.method public abstract blacklist isResizeable()Z
.end method

.method public abstract blacklist isResizeableActivityViaSdkVersion()Z
.end method

.method public abstract blacklist isResourceOverlay()Z
.end method

.method public abstract blacklist isRestoreAnyVersion()Z
.end method

.method public abstract blacklist isRtlSupported()Z
.end method

.method public abstract blacklist isSaveStateDisallowed()Z
.end method

.method public abstract blacklist isSdkLibrary()Z
.end method

.method public abstract blacklist isSignedWithPlatformKey()Z
.end method

.method public abstract blacklist isSmallScreensSupported()Z
.end method

.method public abstract blacklist isStaticSharedLibrary()Z
.end method

.method public abstract blacklist isStub()Z
.end method

.method public abstract blacklist isTaskReparentingAllowed()Z
.end method

.method public abstract blacklist isTestOnly()Z
.end method

.method public abstract blacklist isUpdatableSystem()Z
.end method

.method public abstract blacklist isUseEmbeddedDex()Z
.end method

.method public abstract blacklist isUserDataFragile()Z
.end method

.method public abstract blacklist isVisibleToInstantApps()Z
.end method

.method public abstract blacklist isVmSafeMode()Z
.end method
