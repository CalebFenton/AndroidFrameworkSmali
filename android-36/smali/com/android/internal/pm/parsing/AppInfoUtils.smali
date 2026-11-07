.class public Lcom/android/internal/pm/parsing/AppInfoUtils;
.super Ljava/lang/Object;
.source "AppInfoUtils.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist appInfoFlags(Lcom/android/server/pm/pkg/AndroidPackage;)I
    .registers 4
    .param p0, "pkg"    # Lcom/android/server/pm/pkg/AndroidPackage;

    .line 32
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isExternalStorage()Z

    move-result v0

    const/high16 v1, 0x40000

    invoke-static {v0, v1}, Lcom/android/internal/pm/parsing/AppInfoUtils;->flag(ZI)I

    move-result v0

    .line 33
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isHardwareAccelerated()Z

    move-result v1

    const/high16 v2, 0x20000000

    invoke-static {v1, v2}, Lcom/android/internal/pm/parsing/AppInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 34
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isBackupAllowed()Z

    move-result v1

    const v2, 0x8000

    invoke-static {v1, v2}, Lcom/android/internal/pm/parsing/AppInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 35
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isKillAfterRestoreAllowed()Z

    move-result v1

    const/high16 v2, 0x10000

    invoke-static {v1, v2}, Lcom/android/internal/pm/parsing/AppInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 36
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isRestoreAnyVersion()Z

    move-result v1

    const/high16 v2, 0x20000

    invoke-static {v1, v2}, Lcom/android/internal/pm/parsing/AppInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 37
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isFullBackupOnly()Z

    move-result v1

    const/high16 v2, 0x4000000

    invoke-static {v1, v2}, Lcom/android/internal/pm/parsing/AppInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 38
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isPersistent()Z

    move-result v1

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lcom/android/internal/pm/parsing/AppInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 39
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isDebuggable()Z

    move-result v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/android/internal/pm/parsing/AppInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 40
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isVmSafeMode()Z

    move-result v1

    const/16 v2, 0x4000

    invoke-static {v1, v2}, Lcom/android/internal/pm/parsing/AppInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 41
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isDeclaredHavingCode()Z

    move-result v1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/android/internal/pm/parsing/AppInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 42
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isTaskReparentingAllowed()Z

    move-result v1

    const/16 v2, 0x20

    invoke-static {v1, v2}, Lcom/android/internal/pm/parsing/AppInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 43
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isClearUserDataAllowed()Z

    move-result v1

    const/16 v2, 0x40

    invoke-static {v1, v2}, Lcom/android/internal/pm/parsing/AppInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 44
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isLargeHeap()Z

    move-result v1

    const/high16 v2, 0x100000

    invoke-static {v1, v2}, Lcom/android/internal/pm/parsing/AppInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 45
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isCleartextTrafficAllowed()Z

    move-result v1

    const/high16 v2, 0x8000000

    invoke-static {v1, v2}, Lcom/android/internal/pm/parsing/AppInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 46
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isRtlSupported()Z

    move-result v1

    const/high16 v2, 0x400000

    invoke-static {v1, v2}, Lcom/android/internal/pm/parsing/AppInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 47
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isTestOnly()Z

    move-result v1

    const/16 v2, 0x100

    invoke-static {v1, v2}, Lcom/android/internal/pm/parsing/AppInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 48
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isMultiArch()Z

    move-result v1

    const/high16 v2, -0x80000000

    invoke-static {v1, v2}, Lcom/android/internal/pm/parsing/AppInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 49
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isExtractNativeLibrariesRequested()Z

    move-result v1

    const/high16 v2, 0x10000000

    invoke-static {v1, v2}, Lcom/android/internal/pm/parsing/AppInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 50
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isGame()Z

    move-result v1

    const/high16 v2, 0x2000000

    invoke-static {v1, v2}, Lcom/android/internal/pm/parsing/AppInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 51
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isSmallScreensSupported()Z

    move-result v1

    const/16 v2, 0x200

    invoke-static {v1, v2}, Lcom/android/internal/pm/parsing/AppInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 52
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isNormalScreensSupported()Z

    move-result v1

    const/16 v2, 0x400

    invoke-static {v1, v2}, Lcom/android/internal/pm/parsing/AppInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 53
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isLargeScreensSupported()Z

    move-result v1

    const/16 v2, 0x800

    invoke-static {v1, v2}, Lcom/android/internal/pm/parsing/AppInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 54
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isExtraLargeScreensSupported()Z

    move-result v1

    const/high16 v2, 0x80000

    invoke-static {v1, v2}, Lcom/android/internal/pm/parsing/AppInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 55
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isResizeable()Z

    move-result v1

    const/16 v2, 0x1000

    invoke-static {v1, v2}, Lcom/android/internal/pm/parsing/AppInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 56
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isAnyDensity()Z

    move-result v1

    const/16 v2, 0x2000

    invoke-static {v1, v2}, Lcom/android/internal/pm/parsing/AppInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 57
    invoke-static {p0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageLegacyUtils;->isSystem(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/internal/pm/parsing/AppInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 58
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isFactoryTest()Z

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lcom/android/internal/pm/parsing/AppInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 60
    .local v0, "pkgWithoutStateFlags":I
    return v0
.end method

.method public static blacklist appInfoPrivateFlags(Lcom/android/server/pm/pkg/AndroidPackage;)I
    .registers 4
    .param p0, "pkg"    # Lcom/android/server/pm/pkg/AndroidPackage;

    .line 67
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isStaticSharedLibrary()Z

    move-result v0

    const/16 v1, 0x4000

    invoke-static {v0, v1}, Lcom/android/internal/pm/parsing/AppInfoUtils;->flag(ZI)I

    move-result v0

    .line 68
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isResourceOverlay()Z

    move-result v1

    const/high16 v2, 0x10000000

    invoke-static {v1, v2}, Lcom/android/internal/pm/parsing/AppInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 69
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isIsolatedSplitLoading()Z

    move-result v1

    const v2, 0x8000

    invoke-static {v1, v2}, Lcom/android/internal/pm/parsing/AppInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 70
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isHasDomainUrls()Z

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lcom/android/internal/pm/parsing/AppInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 71
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isProfileableByShell()Z

    move-result v1

    const/high16 v2, 0x800000

    invoke-static {v1, v2}, Lcom/android/internal/pm/parsing/AppInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 72
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isBackupInForeground()Z

    move-result v1

    const/16 v2, 0x2000

    invoke-static {v1, v2}, Lcom/android/internal/pm/parsing/AppInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 73
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isUseEmbeddedDex()Z

    move-result v1

    const/high16 v2, 0x2000000

    invoke-static {v1, v2}, Lcom/android/internal/pm/parsing/AppInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 74
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isDefaultToDeviceProtectedStorage()Z

    move-result v1

    const/16 v2, 0x20

    invoke-static {v1, v2}, Lcom/android/internal/pm/parsing/AppInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 75
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isDirectBootAware()Z

    move-result v1

    const/16 v2, 0x40

    invoke-static {v1, v2}, Lcom/android/internal/pm/parsing/AppInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 76
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isPartiallyDirectBootAware()Z

    move-result v1

    const/16 v2, 0x100

    invoke-static {v1, v2}, Lcom/android/internal/pm/parsing/AppInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 77
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isClearUserDataOnFailedRestoreAllowed()Z

    move-result v1

    const/high16 v2, 0x4000000

    invoke-static {v1, v2}, Lcom/android/internal/pm/parsing/AppInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 78
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isAllowAudioPlaybackCapture()Z

    move-result v1

    const/high16 v2, 0x8000000

    invoke-static {v1, v2}, Lcom/android/internal/pm/parsing/AppInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 79
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isRequestLegacyExternalStorage()Z

    move-result v1

    const/high16 v2, 0x20000000

    invoke-static {v1, v2}, Lcom/android/internal/pm/parsing/AppInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 80
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isNonSdkApiRequested()Z

    move-result v1

    const/high16 v2, 0x400000

    invoke-static {v1, v2}, Lcom/android/internal/pm/parsing/AppInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 81
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isUserDataFragile()Z

    move-result v1

    const/high16 v2, 0x1000000

    invoke-static {v1, v2}, Lcom/android/internal/pm/parsing/AppInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 82
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isSaveStateDisallowed()Z

    move-result v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/android/internal/pm/parsing/AppInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 83
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isResizeableActivityViaSdkVersion()Z

    move-result v1

    const/16 v2, 0x1000

    invoke-static {v1, v2}, Lcom/android/internal/pm/parsing/AppInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 84
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isAllowNativeHeapPointerTagging()Z

    move-result v1

    const/high16 v2, -0x80000000

    invoke-static {v1, v2}, Lcom/android/internal/pm/parsing/AppInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 85
    invoke-static {p0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageLegacyUtils;->isSystemExt(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v1

    const/high16 v2, 0x200000

    invoke-static {v1, v2}, Lcom/android/internal/pm/parsing/AppInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 86
    invoke-static {p0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageLegacyUtils;->isPrivileged(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v1

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lcom/android/internal/pm/parsing/AppInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 87
    invoke-static {p0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageLegacyUtils;->isOem(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v1

    const/high16 v2, 0x20000

    invoke-static {v1, v2}, Lcom/android/internal/pm/parsing/AppInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 88
    invoke-static {p0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageLegacyUtils;->isVendor(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v1

    const/high16 v2, 0x40000

    invoke-static {v1, v2}, Lcom/android/internal/pm/parsing/AppInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 89
    invoke-static {p0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageLegacyUtils;->isProduct(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v1

    const/high16 v2, 0x80000

    invoke-static {v1, v2}, Lcom/android/internal/pm/parsing/AppInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 90
    invoke-static {p0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageLegacyUtils;->isOdm(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Lcom/android/internal/pm/parsing/AppInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 91
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isSignedWithPlatformKey()Z

    move-result v1

    const/high16 v2, 0x100000

    invoke-static {v1, v2}, Lcom/android/internal/pm/parsing/AppInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 93
    .local v0, "pkgWithoutStateFlags":I
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getResizeableActivity()Ljava/lang/Boolean;

    move-result-object v1

    .line 94
    .local v1, "resizeableActivity":Ljava/lang/Boolean;
    if-eqz v1, :cond_123

    .line 95
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_121

    .line 96
    or-int/lit16 v0, v0, 0x400

    goto :goto_123

    .line 98
    :cond_121
    or-int/lit16 v0, v0, 0x800

    .line 102
    :cond_123
    :goto_123
    return v0
.end method

.method public static blacklist appInfoPrivateFlagsExt(Lcom/android/server/pm/pkg/AndroidPackage;Z)I
    .registers 5
    .param p0, "pkg"    # Lcom/android/server/pm/pkg/AndroidPackage;
    .param p1, "isAllowlistedForHiddenApis"    # Z

    .line 111
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isProfileable()Z

    move-result v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/internal/pm/parsing/AppInfoUtils;->flag(ZI)I

    move-result v0

    .line 112
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->hasRequestForegroundServiceExemption()Z

    move-result v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/android/internal/pm/parsing/AppInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 113
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isAttributionsUserVisible()Z

    move-result v1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/android/internal/pm/parsing/AppInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 114
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isOnBackInvokedCallbackEnabled()Z

    move-result v1

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lcom/android/internal/pm/parsing/AppInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 115
    const/16 v1, 0x10

    invoke-static {p1, v1}, Lcom/android/internal/pm/parsing/AppInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 116
    .local v0, "pkgWithoutStateFlags":I
    return v0
.end method

.method private static blacklist flag(ZI)I
    .registers 3
    .param p0, "hasFlag"    # Z
    .param p1, "flag"    # I

    .line 122
    if-eqz p0, :cond_4

    move v0, p1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method
