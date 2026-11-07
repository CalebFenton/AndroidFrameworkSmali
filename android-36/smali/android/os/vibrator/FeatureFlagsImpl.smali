.class public final Landroid/os/vibrator/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Landroid/os/vibrator/FeatureFlags;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist adaptiveHapticsEnabled()Z
    .registers 2

    .line 10
    const/4 v0, 0x1

    return v0
.end method

.method public greylist cancelByAppops()Z
    .registers 2

    .line 17
    const/4 v0, 0x1

    return v0
.end method

.method public greylist fixAudioCoupledHapticsScaling()Z
    .registers 2

    .line 24
    const/4 v0, 0x1

    return v0
.end method

.method public greylist fixExternalVibrationSystemUpdateAware()Z
    .registers 2

    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method public greylist fixVibrationThreadCallbackHandling()Z
    .registers 2

    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public greylist hapticFeedbackInputSourceCustomizationEnabled()Z
    .registers 2

    .line 45
    const/4 v0, 0x1

    return v0
.end method

.method public greylist hapticFeedbackVibrationOemCustomizationEnabled()Z
    .registers 2

    .line 52
    const/4 v0, 0x1

    return v0
.end method

.method public greylist hapticsScaleV2Enabled()Z
    .registers 2

    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public greylist loadHapticFeedbackVibrationCustomizationFromResources()Z
    .registers 2

    .line 66
    const/4 v0, 0x1

    return v0
.end method

.method public greylist normalizedPwleEffects()Z
    .registers 2

    .line 73
    const/4 v0, 0x1

    return v0
.end method

.method public greylist primitiveCompositionAbsoluteDelay()Z
    .registers 2

    .line 80
    const/4 v0, 0x1

    return v0
.end method

.method public greylist removeHidlSupport()Z
    .registers 2

    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public greylist throttleVibrationParamsRequests()Z
    .registers 2

    .line 94
    const/4 v0, 0x1

    return v0
.end method

.method public greylist vendorVibrationEffects()Z
    .registers 2

    .line 101
    const/4 v0, 0x1

    return v0
.end method

.method public greylist vibrationAttributeImeUsageApi()Z
    .registers 2

    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method public greylist vibrationPipelineEnabled()Z
    .registers 2

    .line 115
    const/4 v0, 0x0

    return v0
.end method

.method public greylist vibrationXmlApis()Z
    .registers 2

    .line 122
    const/4 v0, 0x1

    return v0
.end method
