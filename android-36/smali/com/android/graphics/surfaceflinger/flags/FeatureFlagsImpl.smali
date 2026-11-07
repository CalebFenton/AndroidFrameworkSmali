.class public final Lcom/android/graphics/surfaceflinger/flags/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Lcom/android/graphics/surfaceflinger/flags/FeatureFlags;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist addSfSkippedFramesToTrace()Z
    .registers 2

    .line 10
    const/4 v0, 0x1

    return v0
.end method

.method public greylist adpfFmqSf()Z
    .registers 2

    .line 17
    const/4 v0, 0x1

    return v0
.end method

.method public greylist adpfGpuSf()Z
    .registers 2

    .line 24
    const/4 v0, 0x1

    return v0
.end method

.method public greylist adpfNativeSessionManager()Z
    .registers 2

    .line 31
    const/4 v0, 0x1

    return v0
.end method

.method public greylist allowNVsyncsInTargeter()Z
    .registers 2

    .line 38
    const/4 v0, 0x1

    return v0
.end method

.method public greylist arrSetframerateApi()Z
    .registers 2

    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public greylist arrSetframerateGteEnum()Z
    .registers 2

    .line 52
    const/4 v0, 0x1

    return v0
.end method

.method public greylist arrSurfacecontrolSetframerateApi()Z
    .registers 2

    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public greylist begoneBrightHlg()Z
    .registers 2

    .line 66
    const/4 v0, 0x1

    return v0
.end method

.method public greylist cacheWhenSourceCropLayerOnlyMoved()Z
    .registers 2

    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public greylist ceFencePromise()Z
    .registers 2

    .line 80
    const/4 v0, 0x1

    return v0
.end method

.method public greylist commitNotComposited()Z
    .registers 2

    .line 87
    const/4 v0, 0x1

    return v0
.end method

.method public greylist connectedDisplay()Z
    .registers 2

    .line 94
    const/4 v0, 0x1

    return v0
.end method

.method public greylist connectedDisplayHdr()Z
    .registers 2

    .line 101
    const/4 v0, 0x1

    return v0
.end method

.method public greylist correctDpiWithDisplaySize()Z
    .registers 2

    .line 108
    const/4 v0, 0x1

    return v0
.end method

.method public greylist deprecateFrameTracker()Z
    .registers 2

    .line 115
    const/4 v0, 0x0

    return v0
.end method

.method public greylist deprecateVsyncSf()Z
    .registers 2

    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method public greylist detachedMirror()Z
    .registers 2

    .line 129
    const/4 v0, 0x1

    return v0
.end method

.method public greylist disableSyntheticVsyncForPerformance()Z
    .registers 2

    .line 136
    const/4 v0, 0x1

    return v0
.end method

.method public greylist displayConfigErrorHal()Z
    .registers 2

    .line 143
    const/4 v0, 0x1

    return v0
.end method

.method public greylist displayProtected()Z
    .registers 2

    .line 150
    const/4 v0, 0x1

    return v0
.end method

.method public greylist dontSkipOnEarlyRo()Z
    .registers 2

    .line 157
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableFroDependentFeatures()Z
    .registers 2

    .line 164
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableLayerCommandBatching()Z
    .registers 2

    .line 171
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableSmallAreaDetection()Z
    .registers 2

    .line 178
    const/4 v0, 0x1

    return v0
.end method

.method public greylist filterFramesBeforeTraceStarts()Z
    .registers 2

    .line 185
    const/4 v0, 0x1

    return v0
.end method

.method public greylist flushBufferSlotsToUncache()Z
    .registers 2

    .line 192
    const/4 v0, 0x1

    return v0
.end method

.method public greylist forceCompileGraphiteRenderengine()Z
    .registers 2

    .line 199
    const/4 v0, 0x0

    return v0
.end method

.method public greylist fp16ClientTarget()Z
    .registers 2

    .line 206
    const/4 v0, 0x0

    return v0
.end method

.method public greylist frameRateCategoryMrr()Z
    .registers 2

    .line 213
    const/4 v0, 0x0

    return v0
.end method

.method public greylist gameDefaultFrameRate()Z
    .registers 2

    .line 220
    const/4 v0, 0x1

    return v0
.end method

.method public greylist graphiteRenderengine()Z
    .registers 2

    .line 227
    const/4 v0, 0x0

    return v0
.end method

.method public greylist graphiteRenderenginePreviewRollout()Z
    .registers 2

    .line 234
    const/4 v0, 0x0

    return v0
.end method

.method public greylist hdcpLevelHal()Z
    .registers 2

    .line 241
    const/4 v0, 0x1

    return v0
.end method

.method public greylist hdcpNegotiation()Z
    .registers 2

    .line 248
    const/4 v0, 0x0

    return v0
.end method

.method public greylist hotplug2()Z
    .registers 2

    .line 255
    const/4 v0, 0x1

    return v0
.end method

.method public greylist increaseMissedFrameJankThreshold()Z
    .registers 2

    .line 262
    const/4 v0, 0x0

    return v0
.end method

.method public greylist latchUnsignaledWithAutoRefreshChanged()Z
    .registers 2

    .line 269
    const/4 v0, 0x1

    return v0
.end method

.method public greylist localTonemapScreenshots()Z
    .registers 2

    .line 276
    const/4 v0, 0x1

    return v0
.end method

.method public greylist misc1()Z
    .registers 2

    .line 283
    const/4 v0, 0x1

    return v0
.end method

.method public greylist monitorBufferFences()Z
    .registers 2

    .line 290
    const/4 v0, 0x0

    return v0
.end method

.method public greylist multithreadedPresent()Z
    .registers 2

    .line 297
    const/4 v0, 0x1

    return v0
.end method

.method public greylist noVsyncsOnScreenOff()Z
    .registers 2

    .line 304
    const/4 v0, 0x0

    return v0
.end method

.method public greylist overrideTrustedOverlay()Z
    .registers 2

    .line 311
    const/4 v0, 0x1

    return v0
.end method

.method public greylist protectedIfClient()Z
    .registers 2

    .line 318
    const/4 v0, 0x1

    return v0
.end method

.method public greylist refreshRateOverlayOnExternalDisplay()Z
    .registers 2

    .line 325
    const/4 v0, 0x0

    return v0
.end method

.method public greylist rejectDupeLayerstacks()Z
    .registers 2

    .line 332
    const/4 v0, 0x1

    return v0
.end method

.method public greylist renderableBufferUsage()Z
    .registers 2

    .line 339
    const/4 v0, 0x0

    return v0
.end method

.method public greylist restoreBlurStep()Z
    .registers 2

    .line 346
    const/4 v0, 0x1

    return v0
.end method

.method public greylist screenshotFencePreservation()Z
    .registers 2

    .line 353
    const/4 v0, 0x1

    return v0
.end method

.method public greylist singleHopScreenshot()Z
    .registers 2

    .line 360
    const/4 v0, 0x1

    return v0
.end method

.method public greylist skipInvisibleWindowsInInput()Z
    .registers 2

    .line 367
    const/4 v0, 0x0

    return v0
.end method

.method public greylist stableEdidIds()Z
    .registers 2

    .line 374
    const/4 v0, 0x0

    return v0
.end method

.method public greylist syncedResolutionSwitch()Z
    .registers 2

    .line 381
    const/4 v0, 0x0

    return v0
.end method

.method public greylist trueHdrScreenshots()Z
    .registers 2

    .line 388
    const/4 v0, 0x1

    return v0
.end method

.method public greylist useKnownRefreshRateForFpsConsistency()Z
    .registers 2

    .line 395
    const/4 v0, 0x0

    return v0
.end method

.method public greylist viewSetRequestedFrameRateMrr()Z
    .registers 2

    .line 402
    const/4 v0, 0x0

    return v0
.end method

.method public greylist vrrBugfix24q4()Z
    .registers 2

    .line 409
    const/4 v0, 0x1

    return v0
.end method

.method public greylist vrrBugfixDroppedFrame()Z
    .registers 2

    .line 416
    const/4 v0, 0x1

    return v0
.end method

.method public greylist vrrConfig()Z
    .registers 2

    .line 423
    const/4 v0, 0x1

    return v0
.end method

.method public greylist vsyncPredictorRecovery()Z
    .registers 2

    .line 430
    const/4 v0, 0x0

    return v0
.end method

.method public greylist vulkanRenderengine()Z
    .registers 2

    .line 437
    const/4 v0, 0x0

    return v0
.end method

.method public greylist windowBlurKawase2()Z
    .registers 2

    .line 444
    const/4 v0, 0x0

    return v0
.end method
