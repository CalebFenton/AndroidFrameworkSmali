.class public Landroid/os/vibrator/CustomFeatureFlags;
.super Ljava/lang/Object;
.source "CustomFeatureFlags.java"

# interfaces
.implements Landroid/os/vibrator/FeatureFlags;


# instance fields
.field private blacklist mGetValueImpl:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Landroid/os/vibrator/FeatureFlags;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mReadOnlyFlagsSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/util/function/BiPredicate;)V
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Landroid/os/vibrator/FeatureFlags;",
            ">;>;)V"
        }
    .end annotation

    .line 16
    .local p1, "getValueImpl":Ljava/util/function/BiPredicate;, "Ljava/util/function/BiPredicate<Ljava/lang/String;Ljava/util/function/Predicate<Landroid/os/vibrator/FeatureFlags;>;>;"
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 177
    new-instance v1, Ljava/util/HashSet;

    const-string v18, "android.os.vibrator.vibration_xml_apis"

    const-string v19, ""

    const-string v2, "android.os.vibrator.adaptive_haptics_enabled"

    const-string v3, "android.os.vibrator.cancel_by_appops"

    const-string v4, "android.os.vibrator.fix_audio_coupled_haptics_scaling"

    const-string v5, "android.os.vibrator.fix_external_vibration_system_update_aware"

    const-string v6, "android.os.vibrator.fix_vibration_thread_callback_handling"

    const-string v7, "android.os.vibrator.haptic_feedback_input_source_customization_enabled"

    const-string v8, "android.os.vibrator.haptic_feedback_vibration_oem_customization_enabled"

    const-string v9, "android.os.vibrator.haptics_scale_v2_enabled"

    const-string v10, "android.os.vibrator.load_haptic_feedback_vibration_customization_from_resources"

    const-string v11, "android.os.vibrator.normalized_pwle_effects"

    const-string v12, "android.os.vibrator.primitive_composition_absolute_delay"

    const-string v13, "android.os.vibrator.remove_hidl_support"

    const-string v14, "android.os.vibrator.throttle_vibration_params_requests"

    const-string v15, "android.os.vibrator.vendor_vibration_effects"

    const-string v16, "android.os.vibrator.vibration_attribute_ime_usage_api"

    const-string v17, "android.os.vibrator.vibration_pipeline_enabled"

    filled-new-array/range {v2 .. v19}, [Ljava/lang/String;

    move-result-object v2

    .line 178
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Landroid/os/vibrator/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    .line 17
    move-object/from16 v1, p1

    iput-object v1, v0, Landroid/os/vibrator/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    .line 18
    return-void
.end method

.method private blacklist isOptimizationEnabled()Z
    .registers 2

    .line 148
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public greylist adaptiveHapticsEnabled()Z
    .registers 3

    .line 22
    new-instance v0, Landroid/os/vibrator/CustomFeatureFlags$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Landroid/os/vibrator/CustomFeatureFlags$$ExternalSyntheticLambda8;-><init>()V

    const-string v1, "android.os.vibrator.adaptive_haptics_enabled"

    invoke-virtual {p0, v1, v0}, Landroid/os/vibrator/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist cancelByAppops()Z
    .registers 3

    .line 29
    new-instance v0, Landroid/os/vibrator/CustomFeatureFlags$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Landroid/os/vibrator/CustomFeatureFlags$$ExternalSyntheticLambda9;-><init>()V

    const-string v1, "android.os.vibrator.cancel_by_appops"

    invoke-virtual {p0, v1, v0}, Landroid/os/vibrator/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist fixAudioCoupledHapticsScaling()Z
    .registers 3

    .line 36
    new-instance v0, Landroid/os/vibrator/CustomFeatureFlags$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Landroid/os/vibrator/CustomFeatureFlags$$ExternalSyntheticLambda11;-><init>()V

    const-string v1, "android.os.vibrator.fix_audio_coupled_haptics_scaling"

    invoke-virtual {p0, v1, v0}, Landroid/os/vibrator/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist fixExternalVibrationSystemUpdateAware()Z
    .registers 3

    .line 43
    new-instance v0, Landroid/os/vibrator/CustomFeatureFlags$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Landroid/os/vibrator/CustomFeatureFlags$$ExternalSyntheticLambda5;-><init>()V

    const-string v1, "android.os.vibrator.fix_external_vibration_system_update_aware"

    invoke-virtual {p0, v1, v0}, Landroid/os/vibrator/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist fixVibrationThreadCallbackHandling()Z
    .registers 3

    .line 50
    new-instance v0, Landroid/os/vibrator/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/os/vibrator/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "android.os.vibrator.fix_vibration_thread_callback_handling"

    invoke-virtual {p0, v1, v0}, Landroid/os/vibrator/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist getFlagNames()Ljava/util/List;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 156
    const-string v16, "android.os.vibrator.vibration_pipeline_enabled"

    const-string v17, "android.os.vibrator.vibration_xml_apis"

    const-string v1, "android.os.vibrator.adaptive_haptics_enabled"

    const-string v2, "android.os.vibrator.cancel_by_appops"

    const-string v3, "android.os.vibrator.fix_audio_coupled_haptics_scaling"

    const-string v4, "android.os.vibrator.fix_external_vibration_system_update_aware"

    const-string v5, "android.os.vibrator.fix_vibration_thread_callback_handling"

    const-string v6, "android.os.vibrator.haptic_feedback_input_source_customization_enabled"

    const-string v7, "android.os.vibrator.haptic_feedback_vibration_oem_customization_enabled"

    const-string v8, "android.os.vibrator.haptics_scale_v2_enabled"

    const-string v9, "android.os.vibrator.load_haptic_feedback_vibration_customization_from_resources"

    const-string v10, "android.os.vibrator.normalized_pwle_effects"

    const-string v11, "android.os.vibrator.primitive_composition_absolute_delay"

    const-string v12, "android.os.vibrator.remove_hidl_support"

    const-string v13, "android.os.vibrator.throttle_vibration_params_requests"

    const-string v14, "android.os.vibrator.vendor_vibration_effects"

    const-string v15, "android.os.vibrator.vibration_attribute_ime_usage_api"

    filled-new-array/range {v1 .. v17}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z
    .registers 4
    .param p1, "flagName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Landroid/os/vibrator/FeatureFlags;",
            ">;)Z"
        }
    .end annotation

    .line 152
    .local p2, "getter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Landroid/os/vibrator/FeatureFlags;>;"
    iget-object v0, p0, Landroid/os/vibrator/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public greylist hapticFeedbackInputSourceCustomizationEnabled()Z
    .registers 3

    .line 57
    new-instance v0, Landroid/os/vibrator/CustomFeatureFlags$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Landroid/os/vibrator/CustomFeatureFlags$$ExternalSyntheticLambda2;-><init>()V

    const-string v1, "android.os.vibrator.haptic_feedback_input_source_customization_enabled"

    invoke-virtual {p0, v1, v0}, Landroid/os/vibrator/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist hapticFeedbackVibrationOemCustomizationEnabled()Z
    .registers 3

    .line 64
    new-instance v0, Landroid/os/vibrator/CustomFeatureFlags$$ExternalSyntheticLambda14;

    invoke-direct {v0}, Landroid/os/vibrator/CustomFeatureFlags$$ExternalSyntheticLambda14;-><init>()V

    const-string v1, "android.os.vibrator.haptic_feedback_vibration_oem_customization_enabled"

    invoke-virtual {p0, v1, v0}, Landroid/os/vibrator/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist hapticsScaleV2Enabled()Z
    .registers 3

    .line 71
    new-instance v0, Landroid/os/vibrator/CustomFeatureFlags$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Landroid/os/vibrator/CustomFeatureFlags$$ExternalSyntheticLambda12;-><init>()V

    const-string v1, "android.os.vibrator.haptics_scale_v2_enabled"

    invoke-virtual {p0, v1, v0}, Landroid/os/vibrator/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist isFlagReadOnlyOptimized(Ljava/lang/String;)Z
    .registers 3
    .param p1, "flagName"    # Ljava/lang/String;

    .line 139
    iget-object v0, p0, Landroid/os/vibrator/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 140
    invoke-direct {p0}, Landroid/os/vibrator/CustomFeatureFlags;->isOptimizationEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 141
    const/4 v0, 0x1

    return v0

    .line 143
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public greylist loadHapticFeedbackVibrationCustomizationFromResources()Z
    .registers 3

    .line 78
    new-instance v0, Landroid/os/vibrator/CustomFeatureFlags$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Landroid/os/vibrator/CustomFeatureFlags$$ExternalSyntheticLambda3;-><init>()V

    const-string v1, "android.os.vibrator.load_haptic_feedback_vibration_customization_from_resources"

    invoke-virtual {p0, v1, v0}, Landroid/os/vibrator/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist normalizedPwleEffects()Z
    .registers 3

    .line 85
    new-instance v0, Landroid/os/vibrator/CustomFeatureFlags$$ExternalSyntheticLambda16;

    invoke-direct {v0}, Landroid/os/vibrator/CustomFeatureFlags$$ExternalSyntheticLambda16;-><init>()V

    const-string v1, "android.os.vibrator.normalized_pwle_effects"

    invoke-virtual {p0, v1, v0}, Landroid/os/vibrator/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist primitiveCompositionAbsoluteDelay()Z
    .registers 3

    .line 92
    new-instance v0, Landroid/os/vibrator/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/os/vibrator/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "android.os.vibrator.primitive_composition_absolute_delay"

    invoke-virtual {p0, v1, v0}, Landroid/os/vibrator/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist removeHidlSupport()Z
    .registers 3

    .line 99
    new-instance v0, Landroid/os/vibrator/CustomFeatureFlags$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Landroid/os/vibrator/CustomFeatureFlags$$ExternalSyntheticLambda13;-><init>()V

    const-string v1, "android.os.vibrator.remove_hidl_support"

    invoke-virtual {p0, v1, v0}, Landroid/os/vibrator/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist throttleVibrationParamsRequests()Z
    .registers 3

    .line 106
    new-instance v0, Landroid/os/vibrator/CustomFeatureFlags$$ExternalSyntheticLambda15;

    invoke-direct {v0}, Landroid/os/vibrator/CustomFeatureFlags$$ExternalSyntheticLambda15;-><init>()V

    const-string v1, "android.os.vibrator.throttle_vibration_params_requests"

    invoke-virtual {p0, v1, v0}, Landroid/os/vibrator/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist vendorVibrationEffects()Z
    .registers 3

    .line 113
    new-instance v0, Landroid/os/vibrator/CustomFeatureFlags$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Landroid/os/vibrator/CustomFeatureFlags$$ExternalSyntheticLambda6;-><init>()V

    const-string v1, "android.os.vibrator.vendor_vibration_effects"

    invoke-virtual {p0, v1, v0}, Landroid/os/vibrator/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist vibrationAttributeImeUsageApi()Z
    .registers 3

    .line 120
    new-instance v0, Landroid/os/vibrator/CustomFeatureFlags$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Landroid/os/vibrator/CustomFeatureFlags$$ExternalSyntheticLambda4;-><init>()V

    const-string v1, "android.os.vibrator.vibration_attribute_ime_usage_api"

    invoke-virtual {p0, v1, v0}, Landroid/os/vibrator/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist vibrationPipelineEnabled()Z
    .registers 3

    .line 127
    new-instance v0, Landroid/os/vibrator/CustomFeatureFlags$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Landroid/os/vibrator/CustomFeatureFlags$$ExternalSyntheticLambda10;-><init>()V

    const-string v1, "android.os.vibrator.vibration_pipeline_enabled"

    invoke-virtual {p0, v1, v0}, Landroid/os/vibrator/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist vibrationXmlApis()Z
    .registers 3

    .line 134
    new-instance v0, Landroid/os/vibrator/CustomFeatureFlags$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Landroid/os/vibrator/CustomFeatureFlags$$ExternalSyntheticLambda7;-><init>()V

    const-string v1, "android.os.vibrator.vibration_xml_apis"

    invoke-virtual {p0, v1, v0}, Landroid/os/vibrator/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method
