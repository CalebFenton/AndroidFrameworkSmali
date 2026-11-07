.class public final Lcom/android/server/display/feature/flags/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Lcom/android/server/display/feature/flags/FeatureFlags;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist alwaysRotateDisplayDevice()Z
    .registers 2

    .line 10
    const/4 v0, 0x1

    return v0
.end method

.method public greylist autoBrightnessModeBedtimeWear()Z
    .registers 2

    .line 17
    const/4 v0, 0x1

    return v0
.end method

.method public greylist autoBrightnessModes()Z
    .registers 2

    .line 24
    const/4 v0, 0x1

    return v0
.end method

.method public greylist backUpSmoothDisplayAndForcePeakRefreshRate()Z
    .registers 2

    .line 31
    const/4 v0, 0x1

    return v0
.end method

.method public greylist baseDensityForExternalDisplays()Z
    .registers 2

    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public greylist blockAutobrightnessChangesOnStylusUsage()Z
    .registers 2

    .line 45
    const/4 v0, 0x1

    return v0
.end method

.method public greylist brightnessIntRangeUserPerception()Z
    .registers 2

    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public greylist brightnessWearBedtimeModeClamper()Z
    .registers 2

    .line 59
    const/4 v0, 0x1

    return v0
.end method

.method public greylist committedStateSeparateEvent()Z
    .registers 2

    .line 66
    const/4 v0, 0x1

    return v0
.end method

.method public greylist delayImplicitRrRegistrationUntilRrAccessed()Z
    .registers 2

    .line 73
    const/4 v0, 0x1

    return v0
.end method

.method public greylist displayCategoryBuiltIn()Z
    .registers 2

    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public greylist displayListenerPerformanceImprovements()Z
    .registers 2

    .line 87
    const/4 v0, 0x1

    return v0
.end method

.method public greylist displayTopology()Z
    .registers 2

    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public greylist dozeBrightnessFloat()Z
    .registers 2

    .line 101
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableAdaptiveToneImprovements1()Z
    .registers 2

    .line 108
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableAdaptiveToneImprovements2()Z
    .registers 2

    .line 115
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableApplyDisplayChangedDuringDisplayAdded()Z
    .registers 2

    .line 122
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableBatteryStatsForAllDisplays()Z
    .registers 2

    .line 129
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableConnectedDisplayErrorHandling()Z
    .registers 2

    .line 136
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableDisplayContentModeManagement()Z
    .registers 2

    .line 143
    const/4 v0, 0x0

    return v0
.end method

.method public greylist enableDisplayOffload()Z
    .registers 2

    .line 150
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableDisplayResolutionRangeVoting()Z
    .registers 2

    .line 157
    const/4 v0, 0x0

    return v0
.end method

.method public greylist enableDisplaysRefreshRatesSynchronization()Z
    .registers 2

    .line 164
    const/4 v0, 0x0

    return v0
.end method

.method public greylist enableGetSuggestedFrameRate()Z
    .registers 2

    .line 171
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableGetSupportedRefreshRates()Z
    .registers 2

    .line 178
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableHasArrSupport()Z
    .registers 2

    .line 185
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableHdrOverridePluginType()Z
    .registers 2

    .line 192
    const/4 v0, 0x0

    return v0
.end method

.method public greylist enableModeLimitForExternalDisplay()Z
    .registers 2

    .line 199
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enablePeakRefreshRatePhysicalLimit()Z
    .registers 2

    .line 206
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enablePixelAnisotropyCorrection()Z
    .registers 2

    .line 213
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enablePluginManager()Z
    .registers 2

    .line 220
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enablePortInDisplayLayout()Z
    .registers 2

    .line 227
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enablePowerThrottlingClamper()Z
    .registers 2

    .line 234
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableRestrictDisplayModes()Z
    .registers 2

    .line 241
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableSynthetic60hzModes()Z
    .registers 2

    .line 248
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableUserPreferredModeVote()Z
    .registers 2

    .line 255
    const/4 v0, 0x0

    return v0
.end method

.method public greylist enableUserRefreshRateForExternalDisplay()Z
    .registers 2

    .line 262
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableVsyncLowLightVote()Z
    .registers 2

    .line 269
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableVsyncLowPowerVote()Z
    .registers 2

    .line 276
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableWaitingConfirmationBeforeMirroring()Z
    .registers 2

    .line 283
    const/4 v0, 0x1

    return v0
.end method

.method public greylist evenDimmer()Z
    .registers 2

    .line 290
    const/4 v0, 0x1

    return v0
.end method

.method public greylist fastHdrTransitions()Z
    .registers 2

    .line 297
    const/4 v0, 0x1

    return v0
.end method

.method public greylist framerateOverrideTriggersRrCallbacks()Z
    .registers 2

    .line 304
    const/4 v0, 0x1

    return v0
.end method

.method public greylist highestHdrSdrRatioApi()Z
    .registers 2

    .line 311
    const/4 v0, 0x1

    return v0
.end method

.method public greylist idleScreenConfigInSubscribingLightSensor()Z
    .registers 2

    .line 318
    const/4 v0, 0x1

    return v0
.end method

.method public greylist idleScreenRefreshRateTimeout()Z
    .registers 2

    .line 325
    const/4 v0, 0x1

    return v0
.end method

.method public greylist ignoreAppPreferredRefreshRateRequest()Z
    .registers 2

    .line 332
    const/4 v0, 0x1

    return v0
.end method

.method public greylist isAlwaysOnAvailableApi()Z
    .registers 2

    .line 339
    const/4 v0, 0x0

    return v0
.end method

.method public greylist newHdrBrightnessModifier()Z
    .registers 2

    .line 346
    const/4 v0, 0x1

    return v0
.end method

.method public greylist normalBrightnessForDozeParameter()Z
    .registers 2

    .line 353
    const/4 v0, 0x1

    return v0
.end method

.method public greylist offloadDozeOverrideHoldsWakelock()Z
    .registers 2

    .line 360
    const/4 v0, 0x1

    return v0
.end method

.method public greylist offloadSessionCancelBlockScreenOn()Z
    .registers 2

    .line 367
    const/4 v0, 0x1

    return v0
.end method

.method public greylist refactorDisplayPowerController()Z
    .registers 2

    .line 374
    const/4 v0, 0x1

    return v0
.end method

.method public greylist refreshRateEventForForegroundApps()Z
    .registers 2

    .line 381
    const/4 v0, 0x1

    return v0
.end method

.method public greylist resolutionBackupRestore()Z
    .registers 2

    .line 388
    const/4 v0, 0x1

    return v0
.end method

.method public greylist sensorBasedBrightnessThrottling()Z
    .registers 2

    .line 395
    const/4 v0, 0x1

    return v0
.end method

.method public greylist separateTimeouts()Z
    .registers 2

    .line 402
    const/4 v0, 0x0

    return v0
.end method

.method public greylist subscribeGranularDisplayEvents()Z
    .registers 2

    .line 409
    const/4 v0, 0x1

    return v0
.end method

.method public greylist useFusionProxSensor()Z
    .registers 2

    .line 416
    const/4 v0, 0x1

    return v0
.end method

.method public greylist virtualDisplayLimit()Z
    .registers 2

    .line 423
    const/4 v0, 0x1

    return v0
.end method
