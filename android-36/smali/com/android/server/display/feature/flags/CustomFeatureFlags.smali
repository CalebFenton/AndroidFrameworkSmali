.class public Lcom/android/server/display/feature/flags/CustomFeatureFlags;
.super Ljava/lang/Object;
.source "CustomFeatureFlags.java"

# interfaces
.implements Lcom/android/server/display/feature/flags/FeatureFlags;


# instance fields
.field private blacklist mGetValueImpl:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/display/feature/flags/FeatureFlags;",
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
    .registers 65
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/display/feature/flags/FeatureFlags;",
            ">;>;)V"
        }
    .end annotation

    .line 16
    .local p1, "getValueImpl":Ljava/util/function/BiPredicate;, "Ljava/util/function/BiPredicate<Ljava/lang/String;Ljava/util/function/Predicate<Lcom/android/server/display/feature/flags/FeatureFlags;>;>;"
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 521
    new-instance v1, Ljava/util/HashSet;

    const-string v61, "com.android.server.display.feature.flags.virtual_display_limit"

    const-string v62, ""

    const-string v2, "com.android.server.display.feature.flags.always_rotate_display_device"

    const-string v3, "com.android.server.display.feature.flags.auto_brightness_mode_bedtime_wear"

    const-string v4, "com.android.server.display.feature.flags.auto_brightness_modes"

    const-string v5, "com.android.server.display.feature.flags.back_up_smooth_display_and_force_peak_refresh_rate"

    const-string v6, "com.android.server.display.feature.flags.base_density_for_external_displays"

    const-string v7, "com.android.server.display.feature.flags.block_autobrightness_changes_on_stylus_usage"

    const-string v8, "com.android.server.display.feature.flags.brightness_int_range_user_perception"

    const-string v9, "com.android.server.display.feature.flags.brightness_wear_bedtime_mode_clamper"

    const-string v10, "com.android.server.display.feature.flags.committed_state_separate_event"

    const-string v11, "com.android.server.display.feature.flags.delay_implicit_rr_registration_until_rr_accessed"

    const-string v12, "com.android.server.display.feature.flags.display_category_built_in"

    const-string v13, "com.android.server.display.feature.flags.display_listener_performance_improvements"

    const-string v14, "com.android.server.display.feature.flags.display_topology"

    const-string v15, "com.android.server.display.feature.flags.doze_brightness_float"

    const-string v16, "com.android.server.display.feature.flags.enable_adaptive_tone_improvements_1"

    const-string v17, "com.android.server.display.feature.flags.enable_adaptive_tone_improvements_2"

    const-string v18, "com.android.server.display.feature.flags.enable_apply_display_changed_during_display_added"

    const-string v19, "com.android.server.display.feature.flags.enable_battery_stats_for_all_displays"

    const-string v20, "com.android.server.display.feature.flags.enable_connected_display_error_handling"

    const-string v21, "com.android.server.display.feature.flags.enable_display_content_mode_management"

    const-string v22, "com.android.server.display.feature.flags.enable_display_offload"

    const-string v23, "com.android.server.display.feature.flags.enable_display_resolution_range_voting"

    const-string v24, "com.android.server.display.feature.flags.enable_displays_refresh_rates_synchronization"

    const-string v25, "com.android.server.display.feature.flags.enable_get_suggested_frame_rate"

    const-string v26, "com.android.server.display.feature.flags.enable_get_supported_refresh_rates"

    const-string v27, "com.android.server.display.feature.flags.enable_has_arr_support"

    const-string v28, "com.android.server.display.feature.flags.enable_hdr_override_plugin_type"

    const-string v29, "com.android.server.display.feature.flags.enable_mode_limit_for_external_display"

    const-string v30, "com.android.server.display.feature.flags.enable_peak_refresh_rate_physical_limit"

    const-string v31, "com.android.server.display.feature.flags.enable_pixel_anisotropy_correction"

    const-string v32, "com.android.server.display.feature.flags.enable_plugin_manager"

    const-string v33, "com.android.server.display.feature.flags.enable_port_in_display_layout"

    const-string v34, "com.android.server.display.feature.flags.enable_power_throttling_clamper"

    const-string v35, "com.android.server.display.feature.flags.enable_restrict_display_modes"

    const-string v36, "com.android.server.display.feature.flags.enable_synthetic_60hz_modes"

    const-string v37, "com.android.server.display.feature.flags.enable_user_preferred_mode_vote"

    const-string v38, "com.android.server.display.feature.flags.enable_user_refresh_rate_for_external_display"

    const-string v39, "com.android.server.display.feature.flags.enable_vsync_low_light_vote"

    const-string v40, "com.android.server.display.feature.flags.enable_vsync_low_power_vote"

    const-string v41, "com.android.server.display.feature.flags.enable_waiting_confirmation_before_mirroring"

    const-string v42, "com.android.server.display.feature.flags.even_dimmer"

    const-string v43, "com.android.server.display.feature.flags.fast_hdr_transitions"

    const-string v44, "com.android.server.display.feature.flags.framerate_override_triggers_rr_callbacks"

    const-string v45, "com.android.server.display.feature.flags.highest_hdr_sdr_ratio_api"

    const-string v46, "com.android.server.display.feature.flags.idle_screen_config_in_subscribing_light_sensor"

    const-string v47, "com.android.server.display.feature.flags.idle_screen_refresh_rate_timeout"

    const-string v48, "com.android.server.display.feature.flags.ignore_app_preferred_refresh_rate_request"

    const-string v49, "com.android.server.display.feature.flags.is_always_on_available_api"

    const-string v50, "com.android.server.display.feature.flags.new_hdr_brightness_modifier"

    const-string v51, "com.android.server.display.feature.flags.normal_brightness_for_doze_parameter"

    const-string v52, "com.android.server.display.feature.flags.offload_doze_override_holds_wakelock"

    const-string v53, "com.android.server.display.feature.flags.offload_session_cancel_block_screen_on"

    const-string v54, "com.android.server.display.feature.flags.refactor_display_power_controller"

    const-string v55, "com.android.server.display.feature.flags.refresh_rate_event_for_foreground_apps"

    const-string v56, "com.android.server.display.feature.flags.resolution_backup_restore"

    const-string v57, "com.android.server.display.feature.flags.sensor_based_brightness_throttling"

    const-string v58, "com.android.server.display.feature.flags.separate_timeouts"

    const-string v59, "com.android.server.display.feature.flags.subscribe_granular_display_events"

    const-string v60, "com.android.server.display.feature.flags.use_fusion_prox_sensor"

    filled-new-array/range {v2 .. v62}, [Ljava/lang/String;

    move-result-object v2

    .line 522
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/android/server/display/feature/flags/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    .line 17
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/server/display/feature/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    .line 18
    return-void
.end method

.method private blacklist isOptimizationEnabled()Z
    .registers 2

    .line 449
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public greylist alwaysRotateDisplayDevice()Z
    .registers 3

    .line 22
    new-instance v0, Lcom/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda27;

    invoke-direct {v0}, Lcom/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda27;-><init>()V

    const-string v1, "com.android.server.display.feature.flags.always_rotate_display_device"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/display/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist autoBrightnessModeBedtimeWear()Z
    .registers 3

    .line 29
    new-instance v0, Lcom/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.server.display.feature.flags.auto_brightness_mode_bedtime_wear"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/display/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist autoBrightnessModes()Z
    .registers 3

    .line 36
    new-instance v0, Lcom/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.server.display.feature.flags.auto_brightness_modes"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/display/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist backUpSmoothDisplayAndForcePeakRefreshRate()Z
    .registers 3

    .line 43
    new-instance v0, Lcom/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda17;

    invoke-direct {v0}, Lcom/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda17;-><init>()V

    const-string v1, "com.android.server.display.feature.flags.back_up_smooth_display_and_force_peak_refresh_rate"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/display/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist baseDensityForExternalDisplays()Z
    .registers 3

    .line 50
    new-instance v0, Lcom/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda50;

    invoke-direct {v0}, Lcom/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda50;-><init>()V

    const-string v1, "com.android.server.display.feature.flags.base_density_for_external_displays"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/display/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist blockAutobrightnessChangesOnStylusUsage()Z
    .registers 3

    .line 57
    new-instance v0, Lcom/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda59;

    invoke-direct {v0}, Lcom/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda59;-><init>()V

    const-string v1, "com.android.server.display.feature.flags.block_autobrightness_changes_on_stylus_usage"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/display/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist brightnessIntRangeUserPerception()Z
    .registers 3

    .line 64
    new-instance v0, Lcom/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda29;

    invoke-direct {v0}, Lcom/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda29;-><init>()V

    const-string v1, "com.android.server.display.feature.flags.brightness_int_range_user_perception"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/display/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist brightnessWearBedtimeModeClamper()Z
    .registers 3

    .line 71
    new-instance v0, Lcom/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda6;-><init>()V

    const-string v1, "com.android.server.display.feature.flags.brightness_wear_bedtime_mode_clamper"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/display/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist committedStateSeparateEvent()Z
    .registers 3

    .line 78
    new-instance v0, Lcom/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda32;

    invoke-direct {v0}, Lcom/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda32;-><init>()V

    const-string v1, "com.android.server.display.feature.flags.committed_state_separate_event"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/display/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist delayImplicitRrRegistrationUntilRrAccessed()Z
    .registers 3

    .line 85
    new-instance v0, Lcom/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda31;

    invoke-direct {v0}, Lcom/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda31;-><init>()V

    const-string v1, "com.android.server.display.feature.flags.delay_implicit_rr_registration_until_rr_accessed"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/display/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist displayCategoryBuiltIn()Z
    .registers 3

    .line 92
    new-instance v0, Lcom/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda49;

    invoke-direct {v0}, Lcom/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda49;-><init>()V

    const-string v1, "com.android.server.display.feature.flags.display_category_built_in"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/display/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist displayListenerPerformanceImprovements()Z
    .registers 3

    .line 99
    new-instance v0, Lcom/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda43;

    invoke-direct {v0}, Lcom/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda43;-><init>()V

    const-string v1, "com.android.server.display.feature.flags.display_listener_performance_improvements"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/display/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist displayTopology()Z
    .registers 3

    .line 106
    new-instance v0, Lcom/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda24;

    invoke-direct {v0}, Lcom/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda24;-><init>()V

    const-string v1, "com.android.server.display.feature.flags.display_topology"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/display/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist dozeBrightnessFloat()Z
    .registers 3

    .line 113
    new-instance v0, Lcom/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda15;

    invoke-direct {v0}, Lcom/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda15;-><init>()V

    const-string v1, "com.android.server.display.feature.flags.doze_brightness_float"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/display/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableAdaptiveToneImprovements1()Z
    .registers 3

    .line 120
    new-instance v0, Lcom/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda35;

    invoke-direct {v0}, Lcom/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda35;-><init>()V

    const-string v1, "com.android.server.display.feature.flags.enable_adaptive_tone_improvements_1"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/display/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableAdaptiveToneImprovements2()Z
    .registers 3

    .line 127
    new-instance v0, Lcom/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lcom/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda10;-><init>()V

    const-string v1, "com.android.server.display.feature.flags.enable_adaptive_tone_improvements_2"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/display/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableApplyDisplayChangedDuringDisplayAdded()Z
    .registers 3

    .line 134
    new-instance v0, Lcom/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda4;-><init>()V

    const-string v1, "com.android.server.display.feature.flags.enable_apply_display_changed_during_display_added"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/display/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableBatteryStatsForAllDisplays()Z
    .registers 3

    .line 141
    new-instance v0, Lcom/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda21;

    invoke-direct {v0}, Lcom/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda21;-><init>()V

    const-string v1, "com.android.server.display.feature.flags.enable_battery_stats_for_all_displays"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/display/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableConnectedDisplayErrorHandling()Z
    .registers 3

    .line 148
    new-instance v0, Lcom/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda30;

    invoke-direct {v0}, Lcom/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda30;-><init>()V

    const-string v1, "com.android.server.display.feature.flags.enable_connected_display_error_handling"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/display/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableDisplayContentModeManagement()Z
    .registers 3

    .line 155
    new-instance v0, Lcom/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda37;

    invoke-direct {v0}, Lcom/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda37;-><init>()V

    const-string v1, "com.android.server.display.feature.flags.enable_display_content_mode_management"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/display/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableDisplayOffload()Z
    .registers 3

    .line 162
    new-instance v0, Lcom/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda57;

    invoke-direct {v0}, Lcom/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda57;-><init>()V

    const-string v1, "com.android.server.display.feature.flags.enable_display_offload"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/display/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableDisplayResolutionRangeVoting()Z
    .registers 3

    .line 169
    new-instance v0, Lcom/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda34;

    invoke-direct {v0}, Lcom/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda34;-><init>()V

    const-string v1, "com.android.server.display.feature.flags.enable_display_resolution_range_voting"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/display/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableDisplaysRefreshRatesSynchronization()Z
    .registers 3

    .line 176
    new-instance v0, Lcom/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda56;

    invoke-direct {v0}, Lcom/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda56;-><init>()V

    const-string v1, "com.android.server.display.feature.flags.enable_displays_refresh_rates_synchronization"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/display/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableGetSuggestedFrameRate()Z
    .registers 3

    .line 183
    new-instance v0, Lcom/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda16;

    invoke-direct {v0}, Lcom/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda16;-><init>()V

    const-string v1, "com.android.server.display.feature.flags.enable_get_suggested_frame_rate"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/display/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableGetSupportedRefreshRates()Z
    .registers 3

    .line 190
    new-instance v0, Lcom/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda5;-><init>()V

    const-string v1, "com.android.server.display.feature.flags.enable_get_supported_refresh_rates"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/display/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableHasArrSupport()Z
    .registers 3

    .line 197
    new-instance v0, Lcom/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda25;

    invoke-direct {v0}, Lcom/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda25;-><init>()V

    const-string v1, "com.android.server.display.feature.flags.enable_has_arr_support"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/display/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableHdrOverridePluginType()Z
    .registers 3

    .line 204
    new-instance v0, Lcom/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda39;

    invoke-direct {v0}, Lcom/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda39;-><init>()V

    const-string v1, "com.android.server.display.feature.flags.enable_hdr_override_plugin_type"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/display/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableModeLimitForExternalDisplay()Z
    .registers 3

    .line 211
    new-instance v0, Lcom/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda18;

    invoke-direct {v0}, Lcom/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda18;-><init>()V

    const-string v1, "com.android.server.display.feature.flags.enable_mode_limit_for_external_display"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/display/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enablePeakRefreshRatePhysicalLimit()Z
    .registers 3

    .line 218
    new-instance v0, Lcom/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda2;-><init>()V

    const-string v1, "com.android.server.display.feature.flags.enable_peak_refresh_rate_physical_limit"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/display/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enablePixelAnisotropyCorrection()Z
    .registers 3

    .line 225
    new-instance v0, Lcom/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda40;

    invoke-direct {v0}, Lcom/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda40;-><init>()V

    const-string v1, "com.android.server.display.feature.flags.enable_pixel_anisotropy_correction"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/display/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enablePluginManager()Z
    .registers 3

    .line 232
    new-instance v0, Lcom/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda41;

    invoke-direct {v0}, Lcom/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda41;-><init>()V

    const-string v1, "com.android.server.display.feature.flags.enable_plugin_manager"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/display/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enablePortInDisplayLayout()Z
    .registers 3

    .line 239
    new-instance v0, Lcom/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda23;

    invoke-direct {v0}, Lcom/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda23;-><init>()V

    const-string v1, "com.android.server.display.feature.flags.enable_port_in_display_layout"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/display/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enablePowerThrottlingClamper()Z
    .registers 3

    .line 246
    new-instance v0, Lcom/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda46;

    invoke-direct {v0}, Lcom/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda46;-><init>()V

    const-string v1, "com.android.server.display.feature.flags.enable_power_throttling_clamper"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/display/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableRestrictDisplayModes()Z
    .registers 3

    .line 253
    new-instance v0, Lcom/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda52;

    invoke-direct {v0}, Lcom/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda52;-><init>()V

    const-string v1, "com.android.server.display.feature.flags.enable_restrict_display_modes"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/display/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableSynthetic60hzModes()Z
    .registers 3

    .line 260
    new-instance v0, Lcom/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda48;

    invoke-direct {v0}, Lcom/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda48;-><init>()V

    const-string v1, "com.android.server.display.feature.flags.enable_synthetic_60hz_modes"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/display/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableUserPreferredModeVote()Z
    .registers 3

    .line 267
    new-instance v0, Lcom/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda58;

    invoke-direct {v0}, Lcom/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda58;-><init>()V

    const-string v1, "com.android.server.display.feature.flags.enable_user_preferred_mode_vote"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/display/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableUserRefreshRateForExternalDisplay()Z
    .registers 3

    .line 274
    new-instance v0, Lcom/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda44;

    invoke-direct {v0}, Lcom/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda44;-><init>()V

    const-string v1, "com.android.server.display.feature.flags.enable_user_refresh_rate_for_external_display"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/display/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableVsyncLowLightVote()Z
    .registers 3

    .line 281
    new-instance v0, Lcom/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda36;

    invoke-direct {v0}, Lcom/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda36;-><init>()V

    const-string v1, "com.android.server.display.feature.flags.enable_vsync_low_light_vote"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/display/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableVsyncLowPowerVote()Z
    .registers 3

    .line 288
    new-instance v0, Lcom/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda26;

    invoke-direct {v0}, Lcom/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda26;-><init>()V

    const-string v1, "com.android.server.display.feature.flags.enable_vsync_low_power_vote"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/display/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableWaitingConfirmationBeforeMirroring()Z
    .registers 3

    .line 295
    new-instance v0, Lcom/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda38;

    invoke-direct {v0}, Lcom/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda38;-><init>()V

    const-string v1, "com.android.server.display.feature.flags.enable_waiting_confirmation_before_mirroring"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/display/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist evenDimmer()Z
    .registers 3

    .line 302
    new-instance v0, Lcom/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda42;

    invoke-direct {v0}, Lcom/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda42;-><init>()V

    const-string v1, "com.android.server.display.feature.flags.even_dimmer"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/display/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist fastHdrTransitions()Z
    .registers 3

    .line 309
    new-instance v0, Lcom/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Lcom/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda12;-><init>()V

    const-string v1, "com.android.server.display.feature.flags.fast_hdr_transitions"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/display/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist framerateOverrideTriggersRrCallbacks()Z
    .registers 3

    .line 316
    new-instance v0, Lcom/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda3;-><init>()V

    const-string v1, "com.android.server.display.feature.flags.framerate_override_triggers_rr_callbacks"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/display/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist getFlagNames()Ljava/util/List;
    .registers 62
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 457
    const-string v59, "com.android.server.display.feature.flags.use_fusion_prox_sensor"

    const-string v60, "com.android.server.display.feature.flags.virtual_display_limit"

    const-string v1, "com.android.server.display.feature.flags.always_rotate_display_device"

    const-string v2, "com.android.server.display.feature.flags.auto_brightness_mode_bedtime_wear"

    const-string v3, "com.android.server.display.feature.flags.auto_brightness_modes"

    const-string v4, "com.android.server.display.feature.flags.back_up_smooth_display_and_force_peak_refresh_rate"

    const-string v5, "com.android.server.display.feature.flags.base_density_for_external_displays"

    const-string v6, "com.android.server.display.feature.flags.block_autobrightness_changes_on_stylus_usage"

    const-string v7, "com.android.server.display.feature.flags.brightness_int_range_user_perception"

    const-string v8, "com.android.server.display.feature.flags.brightness_wear_bedtime_mode_clamper"

    const-string v9, "com.android.server.display.feature.flags.committed_state_separate_event"

    const-string v10, "com.android.server.display.feature.flags.delay_implicit_rr_registration_until_rr_accessed"

    const-string v11, "com.android.server.display.feature.flags.display_category_built_in"

    const-string v12, "com.android.server.display.feature.flags.display_listener_performance_improvements"

    const-string v13, "com.android.server.display.feature.flags.display_topology"

    const-string v14, "com.android.server.display.feature.flags.doze_brightness_float"

    const-string v15, "com.android.server.display.feature.flags.enable_adaptive_tone_improvements_1"

    const-string v16, "com.android.server.display.feature.flags.enable_adaptive_tone_improvements_2"

    const-string v17, "com.android.server.display.feature.flags.enable_apply_display_changed_during_display_added"

    const-string v18, "com.android.server.display.feature.flags.enable_battery_stats_for_all_displays"

    const-string v19, "com.android.server.display.feature.flags.enable_connected_display_error_handling"

    const-string v20, "com.android.server.display.feature.flags.enable_display_content_mode_management"

    const-string v21, "com.android.server.display.feature.flags.enable_display_offload"

    const-string v22, "com.android.server.display.feature.flags.enable_display_resolution_range_voting"

    const-string v23, "com.android.server.display.feature.flags.enable_displays_refresh_rates_synchronization"

    const-string v24, "com.android.server.display.feature.flags.enable_get_suggested_frame_rate"

    const-string v25, "com.android.server.display.feature.flags.enable_get_supported_refresh_rates"

    const-string v26, "com.android.server.display.feature.flags.enable_has_arr_support"

    const-string v27, "com.android.server.display.feature.flags.enable_hdr_override_plugin_type"

    const-string v28, "com.android.server.display.feature.flags.enable_mode_limit_for_external_display"

    const-string v29, "com.android.server.display.feature.flags.enable_peak_refresh_rate_physical_limit"

    const-string v30, "com.android.server.display.feature.flags.enable_pixel_anisotropy_correction"

    const-string v31, "com.android.server.display.feature.flags.enable_plugin_manager"

    const-string v32, "com.android.server.display.feature.flags.enable_port_in_display_layout"

    const-string v33, "com.android.server.display.feature.flags.enable_power_throttling_clamper"

    const-string v34, "com.android.server.display.feature.flags.enable_restrict_display_modes"

    const-string v35, "com.android.server.display.feature.flags.enable_synthetic_60hz_modes"

    const-string v36, "com.android.server.display.feature.flags.enable_user_preferred_mode_vote"

    const-string v37, "com.android.server.display.feature.flags.enable_user_refresh_rate_for_external_display"

    const-string v38, "com.android.server.display.feature.flags.enable_vsync_low_light_vote"

    const-string v39, "com.android.server.display.feature.flags.enable_vsync_low_power_vote"

    const-string v40, "com.android.server.display.feature.flags.enable_waiting_confirmation_before_mirroring"

    const-string v41, "com.android.server.display.feature.flags.even_dimmer"

    const-string v42, "com.android.server.display.feature.flags.fast_hdr_transitions"

    const-string v43, "com.android.server.display.feature.flags.framerate_override_triggers_rr_callbacks"

    const-string v44, "com.android.server.display.feature.flags.highest_hdr_sdr_ratio_api"

    const-string v45, "com.android.server.display.feature.flags.idle_screen_config_in_subscribing_light_sensor"

    const-string v46, "com.android.server.display.feature.flags.idle_screen_refresh_rate_timeout"

    const-string v47, "com.android.server.display.feature.flags.ignore_app_preferred_refresh_rate_request"

    const-string v48, "com.android.server.display.feature.flags.is_always_on_available_api"

    const-string v49, "com.android.server.display.feature.flags.new_hdr_brightness_modifier"

    const-string v50, "com.android.server.display.feature.flags.normal_brightness_for_doze_parameter"

    const-string v51, "com.android.server.display.feature.flags.offload_doze_override_holds_wakelock"

    const-string v52, "com.android.server.display.feature.flags.offload_session_cancel_block_screen_on"

    const-string v53, "com.android.server.display.feature.flags.refactor_display_power_controller"

    const-string v54, "com.android.server.display.feature.flags.refresh_rate_event_for_foreground_apps"

    const-string v55, "com.android.server.display.feature.flags.resolution_backup_restore"

    const-string v56, "com.android.server.display.feature.flags.sensor_based_brightness_throttling"

    const-string v57, "com.android.server.display.feature.flags.separate_timeouts"

    const-string v58, "com.android.server.display.feature.flags.subscribe_granular_display_events"

    filled-new-array/range {v1 .. v60}, [Ljava/lang/String;

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
            "Lcom/android/server/display/feature/flags/FeatureFlags;",
            ">;)Z"
        }
    .end annotation

    .line 453
    .local p2, "getter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/display/feature/flags/FeatureFlags;>;"
    iget-object v0, p0, Lcom/android/server/display/feature/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public greylist highestHdrSdrRatioApi()Z
    .registers 3

    .line 323
    new-instance v0, Lcom/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda20;

    invoke-direct {v0}, Lcom/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda20;-><init>()V

    const-string v1, "com.android.server.display.feature.flags.highest_hdr_sdr_ratio_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/display/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist idleScreenConfigInSubscribingLightSensor()Z
    .registers 3

    .line 330
    new-instance v0, Lcom/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda53;

    invoke-direct {v0}, Lcom/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda53;-><init>()V

    const-string v1, "com.android.server.display.feature.flags.idle_screen_config_in_subscribing_light_sensor"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/display/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist idleScreenRefreshRateTimeout()Z
    .registers 3

    .line 337
    new-instance v0, Lcom/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda54;

    invoke-direct {v0}, Lcom/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda54;-><init>()V

    const-string v1, "com.android.server.display.feature.flags.idle_screen_refresh_rate_timeout"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/display/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist ignoreAppPreferredRefreshRateRequest()Z
    .registers 3

    .line 344
    new-instance v0, Lcom/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Lcom/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda13;-><init>()V

    const-string v1, "com.android.server.display.feature.flags.ignore_app_preferred_refresh_rate_request"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/display/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist isAlwaysOnAvailableApi()Z
    .registers 3

    .line 351
    new-instance v0, Lcom/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda55;

    invoke-direct {v0}, Lcom/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda55;-><init>()V

    const-string v1, "com.android.server.display.feature.flags.is_always_on_available_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/display/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist isFlagReadOnlyOptimized(Ljava/lang/String;)Z
    .registers 3
    .param p1, "flagName"    # Ljava/lang/String;

    .line 440
    iget-object v0, p0, Lcom/android/server/display/feature/flags/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 441
    invoke-direct {p0}, Lcom/android/server/display/feature/flags/CustomFeatureFlags;->isOptimizationEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 442
    const/4 v0, 0x1

    return v0

    .line 444
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public greylist newHdrBrightnessModifier()Z
    .registers 3

    .line 358
    new-instance v0, Lcom/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda28;

    invoke-direct {v0}, Lcom/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda28;-><init>()V

    const-string v1, "com.android.server.display.feature.flags.new_hdr_brightness_modifier"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/display/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist normalBrightnessForDozeParameter()Z
    .registers 3

    .line 365
    new-instance v0, Lcom/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda9;-><init>()V

    const-string v1, "com.android.server.display.feature.flags.normal_brightness_for_doze_parameter"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/display/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist offloadDozeOverrideHoldsWakelock()Z
    .registers 3

    .line 372
    new-instance v0, Lcom/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda45;

    invoke-direct {v0}, Lcom/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda45;-><init>()V

    const-string v1, "com.android.server.display.feature.flags.offload_doze_override_holds_wakelock"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/display/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist offloadSessionCancelBlockScreenOn()Z
    .registers 3

    .line 379
    new-instance v0, Lcom/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda7;-><init>()V

    const-string v1, "com.android.server.display.feature.flags.offload_session_cancel_block_screen_on"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/display/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist refactorDisplayPowerController()Z
    .registers 3

    .line 386
    new-instance v0, Lcom/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda47;

    invoke-direct {v0}, Lcom/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda47;-><init>()V

    const-string v1, "com.android.server.display.feature.flags.refactor_display_power_controller"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/display/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist refreshRateEventForForegroundApps()Z
    .registers 3

    .line 393
    new-instance v0, Lcom/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda51;

    invoke-direct {v0}, Lcom/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda51;-><init>()V

    const-string v1, "com.android.server.display.feature.flags.refresh_rate_event_for_foreground_apps"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/display/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist resolutionBackupRestore()Z
    .registers 3

    .line 400
    new-instance v0, Lcom/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda19;

    invoke-direct {v0}, Lcom/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda19;-><init>()V

    const-string v1, "com.android.server.display.feature.flags.resolution_backup_restore"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/display/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist sensorBasedBrightnessThrottling()Z
    .registers 3

    .line 407
    new-instance v0, Lcom/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda33;

    invoke-direct {v0}, Lcom/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda33;-><init>()V

    const-string v1, "com.android.server.display.feature.flags.sensor_based_brightness_throttling"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/display/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist separateTimeouts()Z
    .registers 3

    .line 414
    new-instance v0, Lcom/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda8;-><init>()V

    const-string v1, "com.android.server.display.feature.flags.separate_timeouts"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/display/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist subscribeGranularDisplayEvents()Z
    .registers 3

    .line 421
    new-instance v0, Lcom/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Lcom/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda11;-><init>()V

    const-string v1, "com.android.server.display.feature.flags.subscribe_granular_display_events"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/display/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist useFusionProxSensor()Z
    .registers 3

    .line 428
    new-instance v0, Lcom/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda14;

    invoke-direct {v0}, Lcom/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda14;-><init>()V

    const-string v1, "com.android.server.display.feature.flags.use_fusion_prox_sensor"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/display/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist virtualDisplayLimit()Z
    .registers 3

    .line 435
    new-instance v0, Lcom/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda22;

    invoke-direct {v0}, Lcom/android/server/display/feature/flags/CustomFeatureFlags$$ExternalSyntheticLambda22;-><init>()V

    const-string v1, "com.android.server.display.feature.flags.virtual_display_limit"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/display/feature/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method
