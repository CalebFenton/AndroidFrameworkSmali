.class public final Lcom/android/input/flags/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/input/flags/FeatureFlags; = null

.field public static final blacklist FLAG_A11Y_CRASH_ON_INCONSISTENT_EVENT_STREAM:Ljava/lang/String; = "com.android.input.flags.a11y_crash_on_inconsistent_event_stream"

.field public static final blacklist FLAG_ALLOW_TRANSFER_OF_ENTIRE_GESTURE:Ljava/lang/String; = "com.android.input.flags.allow_transfer_of_entire_gesture"

.field public static final blacklist FLAG_COLLECT_PALM_REJECTION_QUALITY_METRICS:Ljava/lang/String; = "com.android.input.flags.collect_palm_rejection_quality_metrics"

.field public static final blacklist FLAG_CONNECTED_DISPLAYS_ASSOCIATED_DISPLAY_CURSOR_BUGFIX:Ljava/lang/String; = "com.android.input.flags.connected_displays_associated_display_cursor_bugfix"

.field public static final blacklist FLAG_CONNECTED_DISPLAYS_CURSOR:Ljava/lang/String; = "com.android.input.flags.connected_displays_cursor"

.field public static final blacklist FLAG_DEPRECATE_SPLIT_TOUCH_APIS:Ljava/lang/String; = "com.android.input.flags.deprecate_split_touch_apis"

.field public static final blacklist FLAG_DEVICE_ASSOCIATIONS:Ljava/lang/String; = "com.android.input.flags.device_associations"

.field public static final blacklist FLAG_DISABLE_REJECT_TOUCH_ON_STYLUS_HOVER:Ljava/lang/String; = "com.android.input.flags.disable_reject_touch_on_stylus_hover"

.field public static final blacklist FLAG_DISABLE_TOUCH_INPUT_MAPPER_POINTER_USAGE:Ljava/lang/String; = "com.android.input.flags.disable_touch_input_mapper_pointer_usage"

.field public static final blacklist FLAG_ENABLE_ALPHABETIC_KEYBOARD_WAKE:Ljava/lang/String; = "com.android.input.flags.enable_alphabetic_keyboard_wake"

.field public static final blacklist FLAG_ENABLE_BUTTON_STATE_VERIFICATION:Ljava/lang/String; = "com.android.input.flags.enable_button_state_verification"

.field public static final blacklist FLAG_ENABLE_DISPLAY_TOPOLOGY_VALIDATION:Ljava/lang/String; = "com.android.input.flags.enable_display_topology_validation"

.field public static final blacklist FLAG_ENABLE_INBOUND_EVENT_VERIFICATION:Ljava/lang/String; = "com.android.input.flags.enable_inbound_event_verification"

.field public static final blacklist FLAG_ENABLE_INPUT_EVENT_TRACING:Ljava/lang/String; = "com.android.input.flags.enable_input_event_tracing"

.field public static final blacklist FLAG_ENABLE_INPUT_POLICY_PROFILE:Ljava/lang/String; = "com.android.input.flags.enable_input_policy_profile"

.field public static final blacklist FLAG_ENABLE_KEYBOARD_CLASSIFIER:Ljava/lang/String; = "com.android.input.flags.enable_keyboard_classifier"

.field public static final blacklist FLAG_ENABLE_MULTI_DEVICE_INPUT:Ljava/lang/String; = "com.android.input.flags.enable_multi_device_input"

.field public static final blacklist FLAG_ENABLE_MULTI_DEVICE_SAME_WINDOW_STREAM:Ljava/lang/String; = "com.android.input.flags.enable_multi_device_same_window_stream"

.field public static final blacklist FLAG_ENABLE_OUTBOUND_EVENT_VERIFICATION:Ljava/lang/String; = "com.android.input.flags.enable_outbound_event_verification"

.field public static final blacklist FLAG_ENABLE_PER_DEVICE_INPUT_LATENCY_METRICS:Ljava/lang/String; = "com.android.input.flags.enable_per_device_input_latency_metrics"

.field public static final blacklist FLAG_ENABLE_PREDICTION_PRUNING_VIA_JERK_THRESHOLDING:Ljava/lang/String; = "com.android.input.flags.enable_prediction_pruning_via_jerk_thresholding"

.field public static final blacklist FLAG_ENABLE_TOUCHPAD_NO_FOCUS_CHANGE:Ljava/lang/String; = "com.android.input.flags.enable_touchpad_no_focus_change"

.field public static final blacklist FLAG_ENABLE_V2_TOUCHPAD_TYPING_PALM_REJECTION:Ljava/lang/String; = "com.android.input.flags.enable_v2_touchpad_typing_palm_rejection"

.field public static final blacklist FLAG_INPUT_DEVICE_VIEW_BEHAVIOR_API:Ljava/lang/String; = "com.android.input.flags.input_device_view_behavior_api"

.field public static final blacklist FLAG_KEYBOARD_REPEAT_KEYS:Ljava/lang/String; = "com.android.input.flags.keyboard_repeat_keys"

.field public static final blacklist FLAG_OVERRIDE_KEY_BEHAVIOR_PERMISSION_APIS:Ljava/lang/String; = "com.android.input.flags.override_key_behavior_permission_apis"

.field public static final blacklist FLAG_PREVENT_MERGING_INPUT_POINTER_DEVICES:Ljava/lang/String; = "com.android.input.flags.prevent_merging_input_pointer_devices"

.field public static final blacklist FLAG_RATE_LIMIT_USER_ACTIVITY_POKE_IN_DISPATCHER:Ljava/lang/String; = "com.android.input.flags.rate_limit_user_activity_poke_in_dispatcher"

.field public static final blacklist FLAG_ROTARY_INPUT_TELEMETRY:Ljava/lang/String; = "com.android.input.flags.rotary_input_telemetry"

.field public static final blacklist FLAG_SET_INPUT_DEVICE_KERNEL_WAKE:Ljava/lang/String; = "com.android.input.flags.set_input_device_kernel_wake"

.field public static final blacklist FLAG_SHOW_POINTERS_FOR_PARTIAL_SCREENSHARE:Ljava/lang/String; = "com.android.input.flags.show_pointers_for_partial_screenshare"

.field public static final blacklist FLAG_USE_CLONED_SCREEN_COORDINATES_AS_RAW:Ljava/lang/String; = "com.android.input.flags.use_cloned_screen_coordinates_as_raw"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 296
    new-instance v0, Lcom/android/input/flags/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/input/flags/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/input/flags/Flags;->FEATURE_FLAGS:Lcom/android/input/flags/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist a11yCrashOnInconsistentEventStream()Z
    .registers 1

    .line 76
    sget-object v0, Lcom/android/input/flags/Flags;->FEATURE_FLAGS:Lcom/android/input/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/input/flags/FeatureFlags;->a11yCrashOnInconsistentEventStream()Z

    move-result v0

    return v0
.end method

.method public static greylist allowTransferOfEntireGesture()Z
    .registers 1

    .line 83
    sget-object v0, Lcom/android/input/flags/Flags;->FEATURE_FLAGS:Lcom/android/input/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/input/flags/FeatureFlags;->allowTransferOfEntireGesture()Z

    move-result v0

    return v0
.end method

.method public static greylist collectPalmRejectionQualityMetrics()Z
    .registers 1

    .line 90
    sget-object v0, Lcom/android/input/flags/Flags;->FEATURE_FLAGS:Lcom/android/input/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/input/flags/FeatureFlags;->collectPalmRejectionQualityMetrics()Z

    move-result v0

    return v0
.end method

.method public static greylist connectedDisplaysAssociatedDisplayCursorBugfix()Z
    .registers 1

    .line 97
    sget-object v0, Lcom/android/input/flags/Flags;->FEATURE_FLAGS:Lcom/android/input/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/input/flags/FeatureFlags;->connectedDisplaysAssociatedDisplayCursorBugfix()Z

    move-result v0

    return v0
.end method

.method public static greylist connectedDisplaysCursor()Z
    .registers 1

    .line 104
    sget-object v0, Lcom/android/input/flags/Flags;->FEATURE_FLAGS:Lcom/android/input/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/input/flags/FeatureFlags;->connectedDisplaysCursor()Z

    move-result v0

    return v0
.end method

.method public static greylist deprecateSplitTouchApis()Z
    .registers 1

    .line 111
    sget-object v0, Lcom/android/input/flags/Flags;->FEATURE_FLAGS:Lcom/android/input/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/input/flags/FeatureFlags;->deprecateSplitTouchApis()Z

    move-result v0

    return v0
.end method

.method public static greylist deviceAssociations()Z
    .registers 1

    .line 118
    sget-object v0, Lcom/android/input/flags/Flags;->FEATURE_FLAGS:Lcom/android/input/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/input/flags/FeatureFlags;->deviceAssociations()Z

    move-result v0

    return v0
.end method

.method public static greylist disableRejectTouchOnStylusHover()Z
    .registers 1

    .line 125
    sget-object v0, Lcom/android/input/flags/Flags;->FEATURE_FLAGS:Lcom/android/input/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/input/flags/FeatureFlags;->disableRejectTouchOnStylusHover()Z

    move-result v0

    return v0
.end method

.method public static greylist disableTouchInputMapperPointerUsage()Z
    .registers 1

    .line 132
    sget-object v0, Lcom/android/input/flags/Flags;->FEATURE_FLAGS:Lcom/android/input/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/input/flags/FeatureFlags;->disableTouchInputMapperPointerUsage()Z

    move-result v0

    return v0
.end method

.method public static greylist enableAlphabeticKeyboardWake()Z
    .registers 1

    .line 139
    sget-object v0, Lcom/android/input/flags/Flags;->FEATURE_FLAGS:Lcom/android/input/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/input/flags/FeatureFlags;->enableAlphabeticKeyboardWake()Z

    move-result v0

    return v0
.end method

.method public static greylist enableButtonStateVerification()Z
    .registers 1

    .line 146
    sget-object v0, Lcom/android/input/flags/Flags;->FEATURE_FLAGS:Lcom/android/input/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/input/flags/FeatureFlags;->enableButtonStateVerification()Z

    move-result v0

    return v0
.end method

.method public static greylist enableDisplayTopologyValidation()Z
    .registers 1

    .line 153
    sget-object v0, Lcom/android/input/flags/Flags;->FEATURE_FLAGS:Lcom/android/input/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/input/flags/FeatureFlags;->enableDisplayTopologyValidation()Z

    move-result v0

    return v0
.end method

.method public static greylist enableInboundEventVerification()Z
    .registers 1

    .line 160
    sget-object v0, Lcom/android/input/flags/Flags;->FEATURE_FLAGS:Lcom/android/input/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/input/flags/FeatureFlags;->enableInboundEventVerification()Z

    move-result v0

    return v0
.end method

.method public static greylist enableInputEventTracing()Z
    .registers 1

    .line 167
    sget-object v0, Lcom/android/input/flags/Flags;->FEATURE_FLAGS:Lcom/android/input/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/input/flags/FeatureFlags;->enableInputEventTracing()Z

    move-result v0

    return v0
.end method

.method public static greylist enableInputPolicyProfile()Z
    .registers 1

    .line 174
    sget-object v0, Lcom/android/input/flags/Flags;->FEATURE_FLAGS:Lcom/android/input/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/input/flags/FeatureFlags;->enableInputPolicyProfile()Z

    move-result v0

    return v0
.end method

.method public static greylist enableKeyboardClassifier()Z
    .registers 1

    .line 181
    sget-object v0, Lcom/android/input/flags/Flags;->FEATURE_FLAGS:Lcom/android/input/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/input/flags/FeatureFlags;->enableKeyboardClassifier()Z

    move-result v0

    return v0
.end method

.method public static greylist enableMultiDeviceInput()Z
    .registers 1

    .line 188
    sget-object v0, Lcom/android/input/flags/Flags;->FEATURE_FLAGS:Lcom/android/input/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/input/flags/FeatureFlags;->enableMultiDeviceInput()Z

    move-result v0

    return v0
.end method

.method public static greylist enableMultiDeviceSameWindowStream()Z
    .registers 1

    .line 195
    sget-object v0, Lcom/android/input/flags/Flags;->FEATURE_FLAGS:Lcom/android/input/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/input/flags/FeatureFlags;->enableMultiDeviceSameWindowStream()Z

    move-result v0

    return v0
.end method

.method public static greylist enableOutboundEventVerification()Z
    .registers 1

    .line 202
    sget-object v0, Lcom/android/input/flags/Flags;->FEATURE_FLAGS:Lcom/android/input/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/input/flags/FeatureFlags;->enableOutboundEventVerification()Z

    move-result v0

    return v0
.end method

.method public static greylist enablePerDeviceInputLatencyMetrics()Z
    .registers 1

    .line 209
    sget-object v0, Lcom/android/input/flags/Flags;->FEATURE_FLAGS:Lcom/android/input/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/input/flags/FeatureFlags;->enablePerDeviceInputLatencyMetrics()Z

    move-result v0

    return v0
.end method

.method public static greylist enablePredictionPruningViaJerkThresholding()Z
    .registers 1

    .line 216
    sget-object v0, Lcom/android/input/flags/Flags;->FEATURE_FLAGS:Lcom/android/input/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/input/flags/FeatureFlags;->enablePredictionPruningViaJerkThresholding()Z

    move-result v0

    return v0
.end method

.method public static greylist enableTouchpadNoFocusChange()Z
    .registers 1

    .line 223
    sget-object v0, Lcom/android/input/flags/Flags;->FEATURE_FLAGS:Lcom/android/input/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/input/flags/FeatureFlags;->enableTouchpadNoFocusChange()Z

    move-result v0

    return v0
.end method

.method public static greylist enableV2TouchpadTypingPalmRejection()Z
    .registers 1

    .line 230
    sget-object v0, Lcom/android/input/flags/Flags;->FEATURE_FLAGS:Lcom/android/input/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/input/flags/FeatureFlags;->enableV2TouchpadTypingPalmRejection()Z

    move-result v0

    return v0
.end method

.method public static greylist inputDeviceViewBehaviorApi()Z
    .registers 1

    .line 237
    sget-object v0, Lcom/android/input/flags/Flags;->FEATURE_FLAGS:Lcom/android/input/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/input/flags/FeatureFlags;->inputDeviceViewBehaviorApi()Z

    move-result v0

    return v0
.end method

.method public static greylist keyboardRepeatKeys()Z
    .registers 1

    .line 244
    sget-object v0, Lcom/android/input/flags/Flags;->FEATURE_FLAGS:Lcom/android/input/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/input/flags/FeatureFlags;->keyboardRepeatKeys()Z

    move-result v0

    return v0
.end method

.method public static greylist overrideKeyBehaviorPermissionApis()Z
    .registers 1

    .line 251
    sget-object v0, Lcom/android/input/flags/Flags;->FEATURE_FLAGS:Lcom/android/input/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/input/flags/FeatureFlags;->overrideKeyBehaviorPermissionApis()Z

    move-result v0

    return v0
.end method

.method public static greylist preventMergingInputPointerDevices()Z
    .registers 1

    .line 258
    sget-object v0, Lcom/android/input/flags/Flags;->FEATURE_FLAGS:Lcom/android/input/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/input/flags/FeatureFlags;->preventMergingInputPointerDevices()Z

    move-result v0

    return v0
.end method

.method public static greylist rateLimitUserActivityPokeInDispatcher()Z
    .registers 1

    .line 265
    sget-object v0, Lcom/android/input/flags/Flags;->FEATURE_FLAGS:Lcom/android/input/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/input/flags/FeatureFlags;->rateLimitUserActivityPokeInDispatcher()Z

    move-result v0

    return v0
.end method

.method public static greylist rotaryInputTelemetry()Z
    .registers 1

    .line 272
    sget-object v0, Lcom/android/input/flags/Flags;->FEATURE_FLAGS:Lcom/android/input/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/input/flags/FeatureFlags;->rotaryInputTelemetry()Z

    move-result v0

    return v0
.end method

.method public static greylist setInputDeviceKernelWake()Z
    .registers 1

    .line 279
    sget-object v0, Lcom/android/input/flags/Flags;->FEATURE_FLAGS:Lcom/android/input/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/input/flags/FeatureFlags;->setInputDeviceKernelWake()Z

    move-result v0

    return v0
.end method

.method public static greylist showPointersForPartialScreenshare()Z
    .registers 1

    .line 286
    sget-object v0, Lcom/android/input/flags/Flags;->FEATURE_FLAGS:Lcom/android/input/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/input/flags/FeatureFlags;->showPointersForPartialScreenshare()Z

    move-result v0

    return v0
.end method

.method public static greylist useClonedScreenCoordinatesAsRaw()Z
    .registers 1

    .line 293
    sget-object v0, Lcom/android/input/flags/Flags;->FEATURE_FLAGS:Lcom/android/input/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/input/flags/FeatureFlags;->useClonedScreenCoordinatesAsRaw()Z

    move-result v0

    return v0
.end method
