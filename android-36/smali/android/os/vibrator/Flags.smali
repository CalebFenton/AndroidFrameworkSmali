.class public final Landroid/os/vibrator/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Landroid/os/vibrator/FeatureFlags; = null

.field public static final blacklist FLAG_ADAPTIVE_HAPTICS_ENABLED:Ljava/lang/String; = "android.os.vibrator.adaptive_haptics_enabled"

.field public static final blacklist FLAG_CANCEL_BY_APPOPS:Ljava/lang/String; = "android.os.vibrator.cancel_by_appops"

.field public static final blacklist FLAG_FIX_AUDIO_COUPLED_HAPTICS_SCALING:Ljava/lang/String; = "android.os.vibrator.fix_audio_coupled_haptics_scaling"

.field public static final blacklist FLAG_FIX_EXTERNAL_VIBRATION_SYSTEM_UPDATE_AWARE:Ljava/lang/String; = "android.os.vibrator.fix_external_vibration_system_update_aware"

.field public static final blacklist FLAG_FIX_VIBRATION_THREAD_CALLBACK_HANDLING:Ljava/lang/String; = "android.os.vibrator.fix_vibration_thread_callback_handling"

.field public static final blacklist FLAG_HAPTICS_SCALE_V2_ENABLED:Ljava/lang/String; = "android.os.vibrator.haptics_scale_v2_enabled"

.field public static final blacklist FLAG_HAPTIC_FEEDBACK_INPUT_SOURCE_CUSTOMIZATION_ENABLED:Ljava/lang/String; = "android.os.vibrator.haptic_feedback_input_source_customization_enabled"

.field public static final blacklist FLAG_HAPTIC_FEEDBACK_VIBRATION_OEM_CUSTOMIZATION_ENABLED:Ljava/lang/String; = "android.os.vibrator.haptic_feedback_vibration_oem_customization_enabled"

.field public static final blacklist FLAG_LOAD_HAPTIC_FEEDBACK_VIBRATION_CUSTOMIZATION_FROM_RESOURCES:Ljava/lang/String; = "android.os.vibrator.load_haptic_feedback_vibration_customization_from_resources"

.field public static final blacklist FLAG_NORMALIZED_PWLE_EFFECTS:Ljava/lang/String; = "android.os.vibrator.normalized_pwle_effects"

.field public static final blacklist FLAG_PRIMITIVE_COMPOSITION_ABSOLUTE_DELAY:Ljava/lang/String; = "android.os.vibrator.primitive_composition_absolute_delay"

.field public static final blacklist FLAG_REMOVE_HIDL_SUPPORT:Ljava/lang/String; = "android.os.vibrator.remove_hidl_support"

.field public static final blacklist FLAG_THROTTLE_VIBRATION_PARAMS_REQUESTS:Ljava/lang/String; = "android.os.vibrator.throttle_vibration_params_requests"

.field public static final blacklist FLAG_VENDOR_VIBRATION_EFFECTS:Ljava/lang/String; = "android.os.vibrator.vendor_vibration_effects"

.field public static final blacklist FLAG_VIBRATION_ATTRIBUTE_IME_USAGE_API:Ljava/lang/String; = "android.os.vibrator.vibration_attribute_ime_usage_api"

.field public static final blacklist FLAG_VIBRATION_PIPELINE_ENABLED:Ljava/lang/String; = "android.os.vibrator.vibration_pipeline_enabled"

.field public static final blacklist FLAG_VIBRATION_XML_APIS:Ljava/lang/String; = "android.os.vibrator.vibration_xml_apis"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 161
    new-instance v0, Landroid/os/vibrator/FeatureFlagsImpl;

    invoke-direct {v0}, Landroid/os/vibrator/FeatureFlagsImpl;-><init>()V

    sput-object v0, Landroid/os/vibrator/Flags;->FEATURE_FLAGS:Landroid/os/vibrator/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist adaptiveHapticsEnabled()Z
    .registers 1

    .line 46
    sget-object v0, Landroid/os/vibrator/Flags;->FEATURE_FLAGS:Landroid/os/vibrator/FeatureFlags;

    invoke-interface {v0}, Landroid/os/vibrator/FeatureFlags;->adaptiveHapticsEnabled()Z

    move-result v0

    return v0
.end method

.method public static greylist cancelByAppops()Z
    .registers 1

    .line 53
    sget-object v0, Landroid/os/vibrator/Flags;->FEATURE_FLAGS:Landroid/os/vibrator/FeatureFlags;

    invoke-interface {v0}, Landroid/os/vibrator/FeatureFlags;->cancelByAppops()Z

    move-result v0

    return v0
.end method

.method public static greylist fixAudioCoupledHapticsScaling()Z
    .registers 1

    .line 60
    sget-object v0, Landroid/os/vibrator/Flags;->FEATURE_FLAGS:Landroid/os/vibrator/FeatureFlags;

    invoke-interface {v0}, Landroid/os/vibrator/FeatureFlags;->fixAudioCoupledHapticsScaling()Z

    move-result v0

    return v0
.end method

.method public static greylist fixExternalVibrationSystemUpdateAware()Z
    .registers 1

    .line 67
    sget-object v0, Landroid/os/vibrator/Flags;->FEATURE_FLAGS:Landroid/os/vibrator/FeatureFlags;

    invoke-interface {v0}, Landroid/os/vibrator/FeatureFlags;->fixExternalVibrationSystemUpdateAware()Z

    move-result v0

    return v0
.end method

.method public static greylist fixVibrationThreadCallbackHandling()Z
    .registers 1

    .line 74
    sget-object v0, Landroid/os/vibrator/Flags;->FEATURE_FLAGS:Landroid/os/vibrator/FeatureFlags;

    invoke-interface {v0}, Landroid/os/vibrator/FeatureFlags;->fixVibrationThreadCallbackHandling()Z

    move-result v0

    return v0
.end method

.method public static greylist hapticFeedbackInputSourceCustomizationEnabled()Z
    .registers 1

    .line 81
    sget-object v0, Landroid/os/vibrator/Flags;->FEATURE_FLAGS:Landroid/os/vibrator/FeatureFlags;

    invoke-interface {v0}, Landroid/os/vibrator/FeatureFlags;->hapticFeedbackInputSourceCustomizationEnabled()Z

    move-result v0

    return v0
.end method

.method public static greylist hapticFeedbackVibrationOemCustomizationEnabled()Z
    .registers 1

    .line 88
    sget-object v0, Landroid/os/vibrator/Flags;->FEATURE_FLAGS:Landroid/os/vibrator/FeatureFlags;

    invoke-interface {v0}, Landroid/os/vibrator/FeatureFlags;->hapticFeedbackVibrationOemCustomizationEnabled()Z

    move-result v0

    return v0
.end method

.method public static greylist hapticsScaleV2Enabled()Z
    .registers 1

    .line 95
    sget-object v0, Landroid/os/vibrator/Flags;->FEATURE_FLAGS:Landroid/os/vibrator/FeatureFlags;

    invoke-interface {v0}, Landroid/os/vibrator/FeatureFlags;->hapticsScaleV2Enabled()Z

    move-result v0

    return v0
.end method

.method public static greylist loadHapticFeedbackVibrationCustomizationFromResources()Z
    .registers 1

    .line 102
    sget-object v0, Landroid/os/vibrator/Flags;->FEATURE_FLAGS:Landroid/os/vibrator/FeatureFlags;

    invoke-interface {v0}, Landroid/os/vibrator/FeatureFlags;->loadHapticFeedbackVibrationCustomizationFromResources()Z

    move-result v0

    return v0
.end method

.method public static greylist normalizedPwleEffects()Z
    .registers 1

    .line 109
    sget-object v0, Landroid/os/vibrator/Flags;->FEATURE_FLAGS:Landroid/os/vibrator/FeatureFlags;

    invoke-interface {v0}, Landroid/os/vibrator/FeatureFlags;->normalizedPwleEffects()Z

    move-result v0

    return v0
.end method

.method public static greylist primitiveCompositionAbsoluteDelay()Z
    .registers 1

    .line 116
    sget-object v0, Landroid/os/vibrator/Flags;->FEATURE_FLAGS:Landroid/os/vibrator/FeatureFlags;

    invoke-interface {v0}, Landroid/os/vibrator/FeatureFlags;->primitiveCompositionAbsoluteDelay()Z

    move-result v0

    return v0
.end method

.method public static greylist removeHidlSupport()Z
    .registers 1

    .line 123
    sget-object v0, Landroid/os/vibrator/Flags;->FEATURE_FLAGS:Landroid/os/vibrator/FeatureFlags;

    invoke-interface {v0}, Landroid/os/vibrator/FeatureFlags;->removeHidlSupport()Z

    move-result v0

    return v0
.end method

.method public static greylist throttleVibrationParamsRequests()Z
    .registers 1

    .line 130
    sget-object v0, Landroid/os/vibrator/Flags;->FEATURE_FLAGS:Landroid/os/vibrator/FeatureFlags;

    invoke-interface {v0}, Landroid/os/vibrator/FeatureFlags;->throttleVibrationParamsRequests()Z

    move-result v0

    return v0
.end method

.method public static greylist vendorVibrationEffects()Z
    .registers 1

    .line 137
    sget-object v0, Landroid/os/vibrator/Flags;->FEATURE_FLAGS:Landroid/os/vibrator/FeatureFlags;

    invoke-interface {v0}, Landroid/os/vibrator/FeatureFlags;->vendorVibrationEffects()Z

    move-result v0

    return v0
.end method

.method public static greylist vibrationAttributeImeUsageApi()Z
    .registers 1

    .line 144
    sget-object v0, Landroid/os/vibrator/Flags;->FEATURE_FLAGS:Landroid/os/vibrator/FeatureFlags;

    invoke-interface {v0}, Landroid/os/vibrator/FeatureFlags;->vibrationAttributeImeUsageApi()Z

    move-result v0

    return v0
.end method

.method public static greylist vibrationPipelineEnabled()Z
    .registers 1

    .line 151
    sget-object v0, Landroid/os/vibrator/Flags;->FEATURE_FLAGS:Landroid/os/vibrator/FeatureFlags;

    invoke-interface {v0}, Landroid/os/vibrator/FeatureFlags;->vibrationPipelineEnabled()Z

    move-result v0

    return v0
.end method

.method public static greylist vibrationXmlApis()Z
    .registers 1

    .line 158
    sget-object v0, Landroid/os/vibrator/Flags;->FEATURE_FLAGS:Landroid/os/vibrator/FeatureFlags;

    invoke-interface {v0}, Landroid/os/vibrator/FeatureFlags;->vibrationXmlApis()Z

    move-result v0

    return v0
.end method
