.class public interface abstract Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.super Ljava/lang/Object;
.source "ParsingPackage.java"


# virtual methods
.method public abstract blacklist addActivity(Lcom/android/internal/pm/pkg/component/ParsedActivity;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist addAdoptPermission(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist addApexSystemService(Lcom/android/internal/pm/pkg/component/ParsedApexSystemService;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist addAttribution(Lcom/android/internal/pm/pkg/component/ParsedAttribution;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist addConfigPreference(Landroid/content/pm/ConfigurationInfo;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist addFeatureFlag(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist addFeatureGroup(Landroid/content/pm/FeatureGroupInfo;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist addImplicitPermission(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist addInstrumentation(Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist addKeySet(Ljava/lang/String;Ljava/security/PublicKey;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist addLibraryName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist addOriginalPackage(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist addOverlayable(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist addPermission(Lcom/android/internal/pm/pkg/component/ParsedPermission;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist addPermissionGroup(Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist addPreferredActivityFilter(Ljava/lang/String;Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist addProperty(Landroid/content/pm/PackageManager$Property;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist addProtectedBroadcast(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist addProvider(Lcom/android/internal/pm/pkg/component/ParsedProvider;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist addQueriesIntent(Landroid/content/Intent;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist addQueriesPackage(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist addQueriesProvider(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist addReceiver(Lcom/android/internal/pm/pkg/component/ParsedActivity;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist addReqFeature(Landroid/content/pm/FeatureInfo;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist addService(Lcom/android/internal/pm/pkg/component/ParsedService;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist addUsesLibrary(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist addUsesNativeLibrary(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist addUsesOptionalLibrary(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist addUsesOptionalNativeLibrary(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist addUsesPermission(Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist addUsesSdkLibrary(Ljava/lang/String;J[Ljava/lang/String;Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist addUsesStaticLibrary(Ljava/lang/String;J[Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist asSplit([Ljava/lang/String;[Ljava/lang/String;[ILandroid/util/SparseArray;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[I",
            "Landroid/util/SparseArray<",
            "[I>;)",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;"
        }
    .end annotation
.end method

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

.method public abstract blacklist getBaseApkPath()Ljava/lang/String;
.end method

.method public abstract blacklist getClassLoaderName()Ljava/lang/String;
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

.method public abstract blacklist getMaxAspectRatio()F
.end method

.method public abstract blacklist getMaxSdkVersion()I
.end method

.method public abstract blacklist getMetaData()Landroid/os/Bundle;
.end method

.method public abstract blacklist getMinAspectRatio()F
.end method

.method public abstract blacklist getMinSdkVersion()I
.end method

.method public abstract blacklist getPackageName()Ljava/lang/String;
.end method

.method public abstract blacklist getPermission()Ljava/lang/String;
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

.method public abstract blacklist getProcessName()Ljava/lang/String;
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

.method public abstract blacklist getResizeableActivity()Ljava/lang/Boolean;
.end method

.method public abstract blacklist getSdkLibraryName()Ljava/lang/String;
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

.method public abstract blacklist getSplitCodePaths()[Ljava/lang/String;
.end method

.method public abstract blacklist getSplitNames()[Ljava/lang/String;
.end method

.method public abstract blacklist getStaticSharedLibraryName()Ljava/lang/String;
.end method

.method public abstract blacklist getTargetSdkVersion()I
.end method

.method public abstract blacklist getTaskAffinity()Ljava/lang/String;
.end method

.method public abstract blacklist getUiOptions()I
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

.method public abstract blacklist getZygotePreloadName()Ljava/lang/String;
.end method

.method public abstract blacklist hideAsParsed()Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
.end method

.method public abstract blacklist isAllowCrossUidActivitySwitchFromBelow()Z
.end method

.method public abstract blacklist isAnyDensity()Z
.end method

.method public abstract blacklist isBackupAllowed()Z
.end method

.method public abstract blacklist isExtraLargeScreensSupported()Z
.end method

.method public abstract blacklist isHardwareAccelerated()Z
.end method

.method public abstract blacklist isLargeScreensSupported()Z
.end method

.method public abstract blacklist isNormalScreensSupported()Z
.end method

.method public abstract blacklist isProfileable()Z
.end method

.method public abstract blacklist isProfileableByShell()Z
.end method

.method public abstract blacklist isResizeable()Z
.end method

.method public abstract blacklist isResizeableActivityViaSdkVersion()Z
.end method

.method public abstract blacklist isSaveStateDisallowed()Z
.end method

.method public abstract blacklist isSmallScreensSupported()Z
.end method

.method public abstract blacklist isStaticSharedLibrary()Z
.end method

.method public abstract blacklist isTaskReparentingAllowed()Z
.end method

.method public abstract blacklist removeUsesOptionalLibrary(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist removeUsesOptionalNativeLibrary(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist set32BitAbiPreferred(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist setAllowAudioPlaybackCapture(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist setAllowCrossUidActivitySwitchFromBelow(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist setAllowNativeHeapPointerTagging(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist setAlternateLauncherIconResIds([I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist setAlternateLauncherLabelResIds([I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist setAnyDensity(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist setAppComponentFactory(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist setApplicationClassName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist setAttributionsAreUserVisible(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist setAutoRevokePermissions(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist setBackupAgentName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist setBackupAllowed(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist setBackupInForeground(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist setBannerResourceId(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist setBaseRevisionCode(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist setCategory(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist setClassLoaderName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist setClearUserDataAllowed(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist setClearUserDataOnFailedRestoreAllowed(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist setCleartextTrafficAllowed(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist setCompatibleWidthLimitDp(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist setCompileSdkVersion(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist setCompileSdkVersionCodeName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist setCrossProfile(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist setDataExtractionRulesResourceId(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist setDebuggable(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist setDeclaredHavingCode(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist setDefaultToDeviceProtectedStorage(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist setDescriptionResourceId(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist setDirectBootAware(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist setEmergencyInstaller(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist setEnabled(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist setExternalStorage(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist setExtraLargeScreensSupported(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist setExtractNativeLibrariesRequested(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist setForceQueryable(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist setFullBackupContentResourceId(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist setFullBackupOnly(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist setGame(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist setGwpAsanMode(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist setHardwareAccelerated(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist setHasDomainUrls(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist setIconResourceId(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist setInstallLocation(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist setIntentMatchingFlags(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist setIsolatedSplitLoading(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist setKillAfterRestoreAllowed(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist setKnownActivityEmbeddingCerts(Ljava/util/Set;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;"
        }
    .end annotation
.end method

.method public abstract blacklist setLabelResourceId(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist setLargeHeap(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist setLargeScreensSupported(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist setLargestWidthLimitDp(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist setLeavingSharedUser(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist setLocaleConfigResourceId(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist setLogoResourceId(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist setManageSpaceActivityName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist setMaxAspectRatio(F)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist setMaxSdkVersion(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist setMemtagMode(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist setMetaData(Landroid/os/Bundle;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist setMinAspectRatio(F)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist setMinExtensionVersions(Landroid/util/SparseIntArray;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist setMinSdkVersion(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist setMultiArch(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist setNativeHeapZeroInitialized(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist setNetworkSecurityConfigResourceId(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist setNonLocalizedLabel(Ljava/lang/CharSequence;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist setNonSdkApiRequested(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist setNormalScreensSupported(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist setOnBackInvokedCallbackEnabled(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist setOverlayCategory(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist setOverlayIsStatic(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist setOverlayPriority(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist setOverlayTarget(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist setOverlayTargetOverlayableName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist setPageSizeAppCompatFlags(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist setPartiallyDirectBootAware(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist setPermission(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist setPersistent(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist setPreserveLegacyExternalStorage(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist setProcessName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist setProcesses(Ljava/util/Map;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/internal/pm/pkg/component/ParsedProcess;",
            ">;)",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;"
        }
    .end annotation
.end method

.method public abstract blacklist setProfileable(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist setProfileableByShell(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist setRequestForegroundServiceExemption(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist setRequestLegacyExternalStorage(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist setRequestRawExternalStorageAccess(Ljava/lang/Boolean;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist setRequiredAccountType(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist setRequiredForAllUsers(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist setRequiresSmallestWidthDp(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist setResetEnabledSettingsOnAppDataCleared(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist setResizeable(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist setResizeableActivity(Ljava/lang/Boolean;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist setResizeableActivityViaSdkVersion(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist setResourceOverlay(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist setRestoreAnyVersion(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist setRestrictUpdateHash([B)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist setRestrictedAccountType(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist setRoundIconResourceId(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist setRtlSupported(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist setSaveStateDisallowed(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist setSdkLibVersionMajor(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist setSdkLibrary(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist setSdkLibraryName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist setSharedUserId(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist setSharedUserLabelResourceId(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist setSigningDetails(Landroid/content/pm/SigningDetails;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist setSmallScreensSupported(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist setSplitClassLoaderName(ILjava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist setSplitHasCode(IZ)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist setStaticSharedLibrary(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist setStaticSharedLibraryName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist setStaticSharedLibraryVersion(J)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist setTargetSandboxVersion(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist setTargetSdkVersion(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist setTaskAffinity(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist setTaskReparentingAllowed(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist setTestOnly(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist setThemeResourceId(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist setUiOptions(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist setUpdatableSystem(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist setUpgradeKeySets(Ljava/util/Set;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;"
        }
    .end annotation
.end method

.method public abstract blacklist setUseEmbeddedDex(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist setUserDataFragile(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist setVersionCode(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist setVersionCodeMajor(I)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist setVersionName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist setVisibleToInstantApps(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist setVmSafeMode(Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist setVolumeUuid(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist setZygotePreloadName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist sortActivities()Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist sortReceivers()Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract blacklist sortServices()Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
.end method
