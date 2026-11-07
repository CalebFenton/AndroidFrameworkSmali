.class public final Lcom/android/input/flags/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Lcom/android/input/flags/FeatureFlags;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist a11yCrashOnInconsistentEventStream()Z
    .registers 2

    .line 10
    const/4 v0, 0x0

    return v0
.end method

.method public greylist allowTransferOfEntireGesture()Z
    .registers 2

    .line 17
    const/4 v0, 0x1

    return v0
.end method

.method public greylist collectPalmRejectionQualityMetrics()Z
    .registers 2

    .line 24
    const/4 v0, 0x0

    return v0
.end method

.method public greylist connectedDisplaysAssociatedDisplayCursorBugfix()Z
    .registers 2

    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method public greylist connectedDisplaysCursor()Z
    .registers 2

    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public greylist deprecateSplitTouchApis()Z
    .registers 2

    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public greylist deviceAssociations()Z
    .registers 2

    .line 52
    const/4 v0, 0x1

    return v0
.end method

.method public greylist disableRejectTouchOnStylusHover()Z
    .registers 2

    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public greylist disableTouchInputMapperPointerUsage()Z
    .registers 2

    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public greylist enableAlphabeticKeyboardWake()Z
    .registers 2

    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public greylist enableButtonStateVerification()Z
    .registers 2

    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public greylist enableDisplayTopologyValidation()Z
    .registers 2

    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public greylist enableInboundEventVerification()Z
    .registers 2

    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public greylist enableInputEventTracing()Z
    .registers 2

    .line 101
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableInputPolicyProfile()Z
    .registers 2

    .line 108
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableKeyboardClassifier()Z
    .registers 2

    .line 115
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableMultiDeviceInput()Z
    .registers 2

    .line 122
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableMultiDeviceSameWindowStream()Z
    .registers 2

    .line 129
    const/4 v0, 0x0

    return v0
.end method

.method public greylist enableOutboundEventVerification()Z
    .registers 2

    .line 136
    const/4 v0, 0x0

    return v0
.end method

.method public greylist enablePerDeviceInputLatencyMetrics()Z
    .registers 2

    .line 143
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enablePredictionPruningViaJerkThresholding()Z
    .registers 2

    .line 150
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableTouchpadNoFocusChange()Z
    .registers 2

    .line 157
    const/4 v0, 0x1

    return v0
.end method

.method public greylist enableV2TouchpadTypingPalmRejection()Z
    .registers 2

    .line 164
    const/4 v0, 0x0

    return v0
.end method

.method public greylist inputDeviceViewBehaviorApi()Z
    .registers 2

    .line 171
    const/4 v0, 0x1

    return v0
.end method

.method public greylist keyboardRepeatKeys()Z
    .registers 2

    .line 178
    const/4 v0, 0x1

    return v0
.end method

.method public greylist overrideKeyBehaviorPermissionApis()Z
    .registers 2

    .line 185
    const/4 v0, 0x1

    return v0
.end method

.method public greylist preventMergingInputPointerDevices()Z
    .registers 2

    .line 192
    const/4 v0, 0x1

    return v0
.end method

.method public greylist rateLimitUserActivityPokeInDispatcher()Z
    .registers 2

    .line 199
    const/4 v0, 0x1

    return v0
.end method

.method public greylist rotaryInputTelemetry()Z
    .registers 2

    .line 206
    const/4 v0, 0x1

    return v0
.end method

.method public greylist setInputDeviceKernelWake()Z
    .registers 2

    .line 213
    const/4 v0, 0x0

    return v0
.end method

.method public greylist showPointersForPartialScreenshare()Z
    .registers 2

    .line 220
    const/4 v0, 0x0

    return v0
.end method

.method public greylist useClonedScreenCoordinatesAsRaw()Z
    .registers 2

    .line 227
    const/4 v0, 0x1

    return v0
.end method
