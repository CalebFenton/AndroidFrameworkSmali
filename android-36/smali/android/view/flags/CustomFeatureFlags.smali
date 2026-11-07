.class public Landroid/view/flags/CustomFeatureFlags;
.super Ljava/lang/Object;
.source "CustomFeatureFlags.java"

# interfaces
.implements Landroid/view/flags/FeatureFlags;


# instance fields
.field private blacklist mGetValueImpl:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Landroid/view/flags/FeatureFlags;",
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
    .registers 51
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Landroid/view/flags/FeatureFlags;",
            ">;>;)V"
        }
    .end annotation

    .line 16
    .local p1, "getValueImpl":Ljava/util/function/BiPredicate;, "Ljava/util/function/BiPredicate<Ljava/lang/String;Ljava/util/function/Predicate<Landroid/view/flags/FeatureFlags;>;>;"
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 409
    new-instance v1, Ljava/util/HashSet;

    const-string v47, "android.view.flags.view_velocity_api"

    const-string v48, ""

    const-string v2, "android.view.flags.add_schandle_to_vri_surface"

    const-string v3, "android.view.flags.buffer_stuffing_recovery"

    const-string v4, "android.view.flags.calculate_bounds_in_parent_from_bounds_in_screen"

    const-string v5, "android.view.flags.customizable_window_headers"

    const-string v6, "android.view.flags.date_time_view_relative_time_display_configs"

    const-string v7, "android.view.flags.deprecate_surface_view_z_order_apis"

    const-string v8, "android.view.flags.disable_draw_wake_lock"

    const-string v9, "android.view.flags.dynamic_view_rotary_haptics_configuration"

    const-string v10, "android.view.flags.enable_arrow_icon_on_hover_when_clickable"

    const-string v11, "android.view.flags.enable_dispatch_on_scroll_changed"

    const-string v12, "android.view.flags.enable_invalidate_check_thread"

    const-string v13, "android.view.flags.enable_scroll_feedback_for_touch"

    const-string v14, "android.view.flags.enable_surface_native_alloc_registration_ro"

    const-string v15, "android.view.flags.enable_use_measure_cache_during_force_layout"

    const-string v16, "android.view.flags.enable_vector_cursor_a11y_settings"

    const-string v17, "android.view.flags.enable_vector_cursors"

    const-string v18, "android.view.flags.expected_presentation_time_api"

    const-string v19, "android.view.flags.expected_presentation_time_read_only"

    const-string v20, "android.view.flags.root_view_changed_listener"

    const-string v21, "android.view.flags.scroll_capture_relax_scroll_view_criteria"

    const-string v22, "android.view.flags.scroll_capture_target_z_order_fix"

    const-string v23, "android.view.flags.scroll_feedback_api"

    const-string v24, "android.view.flags.sensitive_content_app_protection"

    const-string v25, "android.view.flags.sensitive_content_app_protection_api"

    const-string v26, "android.view.flags.sensitive_content_premature_protection_removed_fix"

    const-string v27, "android.view.flags.set_frame_rate_callback"

    const-string v28, "android.view.flags.surface_view_get_surface_package"

    const-string v29, "android.view.flags.surface_view_set_composition_order"

    const-string v30, "android.view.flags.toolkit_frame_rate_animation_bugfix_25q1"

    const-string v31, "android.view.flags.toolkit_frame_rate_by_size_read_only"

    const-string v32, "android.view.flags.toolkit_frame_rate_debug"

    const-string v33, "android.view.flags.toolkit_frame_rate_default_normal_read_only"

    const-string v34, "android.view.flags.toolkit_frame_rate_function_enabling_read_only"

    const-string v35, "android.view.flags.toolkit_frame_rate_small_uses_percent_read_only"

    const-string v36, "android.view.flags.toolkit_frame_rate_touch_boost_25q1"

    const-string v37, "android.view.flags.toolkit_frame_rate_typing_read_only"

    const-string v38, "android.view.flags.toolkit_frame_rate_velocity_mapping_read_only"

    const-string v39, "android.view.flags.toolkit_frame_rate_view_enabling_read_only"

    const-string v40, "android.view.flags.toolkit_initial_touch_boost"

    const-string v41, "android.view.flags.toolkit_metrics_for_frame_rate_decision"

    const-string v42, "android.view.flags.toolkit_set_frame_rate"

    const-string v43, "android.view.flags.toolkit_set_frame_rate_read_only"

    const-string v44, "android.view.flags.toolkit_viewgroup_set_requested_frame_rate_api"

    const-string v45, "android.view.flags.use_refactored_round_scrollbar"

    const-string v46, "android.view.flags.use_view_based_rotary_encoder_scroll_haptics"

    filled-new-array/range {v2 .. v48}, [Ljava/lang/String;

    move-result-object v2

    .line 410
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Landroid/view/flags/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    .line 17
    move-object/from16 v1, p1

    iput-object v1, v0, Landroid/view/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    .line 18
    return-void
.end method

.method private blacklist isOptimizationEnabled()Z
    .registers 2

    .line 351
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public greylist addSchandleToVriSurface()Z
    .registers 3

    .line 22
    new-instance v0, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda36;

    invoke-direct {v0}, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda36;-><init>()V

    const-string v1, "android.view.flags.add_schandle_to_vri_surface"

    invoke-virtual {p0, v1, v0}, Landroid/view/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist bufferStuffingRecovery()Z
    .registers 3

    .line 29
    new-instance v0, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda26;

    invoke-direct {v0}, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda26;-><init>()V

    const-string v1, "android.view.flags.buffer_stuffing_recovery"

    invoke-virtual {p0, v1, v0}, Landroid/view/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist calculateBoundsInParentFromBoundsInScreen()Z
    .registers 3

    .line 36
    new-instance v0, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda42;

    invoke-direct {v0}, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda42;-><init>()V

    const-string v1, "android.view.flags.calculate_bounds_in_parent_from_bounds_in_screen"

    invoke-virtual {p0, v1, v0}, Landroid/view/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist customizableWindowHeaders()Z
    .registers 3

    .line 43
    new-instance v0, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda19;

    invoke-direct {v0}, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda19;-><init>()V

    const-string v1, "android.view.flags.customizable_window_headers"

    invoke-virtual {p0, v1, v0}, Landroid/view/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist dateTimeViewRelativeTimeDisplayConfigs()Z
    .registers 3

    .line 50
    new-instance v0, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda8;-><init>()V

    const-string v1, "android.view.flags.date_time_view_relative_time_display_configs"

    invoke-virtual {p0, v1, v0}, Landroid/view/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist deprecateSurfaceViewZOrderApis()Z
    .registers 3

    .line 57
    new-instance v0, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda5;-><init>()V

    const-string v1, "android.view.flags.deprecate_surface_view_z_order_apis"

    invoke-virtual {p0, v1, v0}, Landroid/view/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist disableDrawWakeLock()Z
    .registers 3

    .line 64
    new-instance v0, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda2;-><init>()V

    const-string v1, "android.view.flags.disable_draw_wake_lock"

    invoke-virtual {p0, v1, v0}, Landroid/view/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist dynamicViewRotaryHapticsConfiguration()Z
    .registers 3

    .line 71
    new-instance v0, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda7;-><init>()V

    const-string v1, "android.view.flags.dynamic_view_rotary_haptics_configuration"

    invoke-virtual {p0, v1, v0}, Landroid/view/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableArrowIconOnHoverWhenClickable()Z
    .registers 3

    .line 78
    new-instance v0, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda41;

    invoke-direct {v0}, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda41;-><init>()V

    const-string v1, "android.view.flags.enable_arrow_icon_on_hover_when_clickable"

    invoke-virtual {p0, v1, v0}, Landroid/view/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableDispatchOnScrollChanged()Z
    .registers 3

    .line 85
    new-instance v0, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda35;

    invoke-direct {v0}, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda35;-><init>()V

    const-string v1, "android.view.flags.enable_dispatch_on_scroll_changed"

    invoke-virtual {p0, v1, v0}, Landroid/view/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableInvalidateCheckThread()Z
    .registers 3

    .line 92
    new-instance v0, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda17;

    invoke-direct {v0}, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda17;-><init>()V

    const-string v1, "android.view.flags.enable_invalidate_check_thread"

    invoke-virtual {p0, v1, v0}, Landroid/view/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableScrollFeedbackForTouch()Z
    .registers 3

    .line 99
    new-instance v0, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda44;

    invoke-direct {v0}, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda44;-><init>()V

    const-string v1, "android.view.flags.enable_scroll_feedback_for_touch"

    invoke-virtual {p0, v1, v0}, Landroid/view/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableSurfaceNativeAllocRegistrationRo()Z
    .registers 3

    .line 106
    new-instance v0, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda11;-><init>()V

    const-string v1, "android.view.flags.enable_surface_native_alloc_registration_ro"

    invoke-virtual {p0, v1, v0}, Landroid/view/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableUseMeasureCacheDuringForceLayout()Z
    .registers 3

    .line 113
    new-instance v0, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda22;

    invoke-direct {v0}, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda22;-><init>()V

    const-string v1, "android.view.flags.enable_use_measure_cache_during_force_layout"

    invoke-virtual {p0, v1, v0}, Landroid/view/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableVectorCursorA11ySettings()Z
    .registers 3

    .line 120
    new-instance v0, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda15;

    invoke-direct {v0}, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda15;-><init>()V

    const-string v1, "android.view.flags.enable_vector_cursor_a11y_settings"

    invoke-virtual {p0, v1, v0}, Landroid/view/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableVectorCursors()Z
    .registers 3

    .line 127
    new-instance v0, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda21;

    invoke-direct {v0}, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda21;-><init>()V

    const-string v1, "android.view.flags.enable_vector_cursors"

    invoke-virtual {p0, v1, v0}, Landroid/view/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist expectedPresentationTimeApi()Z
    .registers 3

    .line 134
    new-instance v0, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "android.view.flags.expected_presentation_time_api"

    invoke-virtual {p0, v1, v0}, Landroid/view/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist expectedPresentationTimeReadOnly()Z
    .registers 3

    .line 141
    new-instance v0, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda29;

    invoke-direct {v0}, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda29;-><init>()V

    const-string v1, "android.view.flags.expected_presentation_time_read_only"

    invoke-virtual {p0, v1, v0}, Landroid/view/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist getFlagNames()Ljava/util/List;
    .registers 48
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 359
    const-string v45, "android.view.flags.use_view_based_rotary_encoder_scroll_haptics"

    const-string v46, "android.view.flags.view_velocity_api"

    const-string v1, "android.view.flags.add_schandle_to_vri_surface"

    const-string v2, "android.view.flags.buffer_stuffing_recovery"

    const-string v3, "android.view.flags.calculate_bounds_in_parent_from_bounds_in_screen"

    const-string v4, "android.view.flags.customizable_window_headers"

    const-string v5, "android.view.flags.date_time_view_relative_time_display_configs"

    const-string v6, "android.view.flags.deprecate_surface_view_z_order_apis"

    const-string v7, "android.view.flags.disable_draw_wake_lock"

    const-string v8, "android.view.flags.dynamic_view_rotary_haptics_configuration"

    const-string v9, "android.view.flags.enable_arrow_icon_on_hover_when_clickable"

    const-string v10, "android.view.flags.enable_dispatch_on_scroll_changed"

    const-string v11, "android.view.flags.enable_invalidate_check_thread"

    const-string v12, "android.view.flags.enable_scroll_feedback_for_touch"

    const-string v13, "android.view.flags.enable_surface_native_alloc_registration_ro"

    const-string v14, "android.view.flags.enable_use_measure_cache_during_force_layout"

    const-string v15, "android.view.flags.enable_vector_cursor_a11y_settings"

    const-string v16, "android.view.flags.enable_vector_cursors"

    const-string v17, "android.view.flags.expected_presentation_time_api"

    const-string v18, "android.view.flags.expected_presentation_time_read_only"

    const-string v19, "android.view.flags.root_view_changed_listener"

    const-string v20, "android.view.flags.scroll_capture_relax_scroll_view_criteria"

    const-string v21, "android.view.flags.scroll_capture_target_z_order_fix"

    const-string v22, "android.view.flags.scroll_feedback_api"

    const-string v23, "android.view.flags.sensitive_content_app_protection"

    const-string v24, "android.view.flags.sensitive_content_app_protection_api"

    const-string v25, "android.view.flags.sensitive_content_premature_protection_removed_fix"

    const-string v26, "android.view.flags.set_frame_rate_callback"

    const-string v27, "android.view.flags.surface_view_get_surface_package"

    const-string v28, "android.view.flags.surface_view_set_composition_order"

    const-string v29, "android.view.flags.toolkit_frame_rate_animation_bugfix_25q1"

    const-string v30, "android.view.flags.toolkit_frame_rate_by_size_read_only"

    const-string v31, "android.view.flags.toolkit_frame_rate_debug"

    const-string v32, "android.view.flags.toolkit_frame_rate_default_normal_read_only"

    const-string v33, "android.view.flags.toolkit_frame_rate_function_enabling_read_only"

    const-string v34, "android.view.flags.toolkit_frame_rate_small_uses_percent_read_only"

    const-string v35, "android.view.flags.toolkit_frame_rate_touch_boost_25q1"

    const-string v36, "android.view.flags.toolkit_frame_rate_typing_read_only"

    const-string v37, "android.view.flags.toolkit_frame_rate_velocity_mapping_read_only"

    const-string v38, "android.view.flags.toolkit_frame_rate_view_enabling_read_only"

    const-string v39, "android.view.flags.toolkit_initial_touch_boost"

    const-string v40, "android.view.flags.toolkit_metrics_for_frame_rate_decision"

    const-string v41, "android.view.flags.toolkit_set_frame_rate"

    const-string v42, "android.view.flags.toolkit_set_frame_rate_read_only"

    const-string v43, "android.view.flags.toolkit_viewgroup_set_requested_frame_rate_api"

    const-string v44, "android.view.flags.use_refactored_round_scrollbar"

    filled-new-array/range {v1 .. v46}, [Ljava/lang/String;

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
            "Landroid/view/flags/FeatureFlags;",
            ">;)Z"
        }
    .end annotation

    .line 355
    .local p2, "getter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Landroid/view/flags/FeatureFlags;>;"
    iget-object v0, p0, Landroid/view/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist isFlagReadOnlyOptimized(Ljava/lang/String;)Z
    .registers 3
    .param p1, "flagName"    # Ljava/lang/String;

    .line 342
    iget-object v0, p0, Landroid/view/flags/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 343
    invoke-direct {p0}, Landroid/view/flags/CustomFeatureFlags;->isOptimizationEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 344
    const/4 v0, 0x1

    return v0

    .line 346
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public greylist rootViewChangedListener()Z
    .registers 3

    .line 148
    new-instance v0, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda30;

    invoke-direct {v0}, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda30;-><init>()V

    const-string v1, "android.view.flags.root_view_changed_listener"

    invoke-virtual {p0, v1, v0}, Landroid/view/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist scrollCaptureRelaxScrollViewCriteria()Z
    .registers 3

    .line 155
    new-instance v0, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda45;

    invoke-direct {v0}, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda45;-><init>()V

    const-string v1, "android.view.flags.scroll_capture_relax_scroll_view_criteria"

    invoke-virtual {p0, v1, v0}, Landroid/view/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist scrollCaptureTargetZOrderFix()Z
    .registers 3

    .line 162
    new-instance v0, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda32;

    invoke-direct {v0}, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda32;-><init>()V

    const-string v1, "android.view.flags.scroll_capture_target_z_order_fix"

    invoke-virtual {p0, v1, v0}, Landroid/view/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist scrollFeedbackApi()Z
    .registers 3

    .line 169
    new-instance v0, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda18;

    invoke-direct {v0}, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda18;-><init>()V

    const-string v1, "android.view.flags.scroll_feedback_api"

    invoke-virtual {p0, v1, v0}, Landroid/view/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist sensitiveContentAppProtection()Z
    .registers 3

    .line 176
    new-instance v0, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda27;

    invoke-direct {v0}, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda27;-><init>()V

    const-string v1, "android.view.flags.sensitive_content_app_protection"

    invoke-virtual {p0, v1, v0}, Landroid/view/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist sensitiveContentAppProtectionApi()Z
    .registers 3

    .line 183
    new-instance v0, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda13;-><init>()V

    const-string v1, "android.view.flags.sensitive_content_app_protection_api"

    invoke-virtual {p0, v1, v0}, Landroid/view/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist sensitiveContentPrematureProtectionRemovedFix()Z
    .registers 3

    .line 190
    new-instance v0, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda34;

    invoke-direct {v0}, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda34;-><init>()V

    const-string v1, "android.view.flags.sensitive_content_premature_protection_removed_fix"

    invoke-virtual {p0, v1, v0}, Landroid/view/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist setFrameRateCallback()Z
    .registers 3

    .line 197
    new-instance v0, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda6;-><init>()V

    const-string v1, "android.view.flags.set_frame_rate_callback"

    invoke-virtual {p0, v1, v0}, Landroid/view/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist surfaceViewGetSurfacePackage()Z
    .registers 3

    .line 204
    new-instance v0, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda3;-><init>()V

    const-string v1, "android.view.flags.surface_view_get_surface_package"

    invoke-virtual {p0, v1, v0}, Landroid/view/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist surfaceViewSetCompositionOrder()Z
    .registers 3

    .line 211
    new-instance v0, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda14;

    invoke-direct {v0}, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda14;-><init>()V

    const-string v1, "android.view.flags.surface_view_set_composition_order"

    invoke-virtual {p0, v1, v0}, Landroid/view/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist toolkitFrameRateAnimationBugfix25q1()Z
    .registers 3

    .line 218
    new-instance v0, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda38;

    invoke-direct {v0}, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda38;-><init>()V

    const-string v1, "android.view.flags.toolkit_frame_rate_animation_bugfix_25q1"

    invoke-virtual {p0, v1, v0}, Landroid/view/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist toolkitFrameRateBySizeReadOnly()Z
    .registers 3

    .line 225
    new-instance v0, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda10;-><init>()V

    const-string v1, "android.view.flags.toolkit_frame_rate_by_size_read_only"

    invoke-virtual {p0, v1, v0}, Landroid/view/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist toolkitFrameRateDebug()Z
    .registers 3

    .line 232
    new-instance v0, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda39;

    invoke-direct {v0}, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda39;-><init>()V

    const-string v1, "android.view.flags.toolkit_frame_rate_debug"

    invoke-virtual {p0, v1, v0}, Landroid/view/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist toolkitFrameRateDefaultNormalReadOnly()Z
    .registers 3

    .line 239
    new-instance v0, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda28;

    invoke-direct {v0}, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda28;-><init>()V

    const-string v1, "android.view.flags.toolkit_frame_rate_default_normal_read_only"

    invoke-virtual {p0, v1, v0}, Landroid/view/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist toolkitFrameRateFunctionEnablingReadOnly()Z
    .registers 3

    .line 246
    new-instance v0, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda37;

    invoke-direct {v0}, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda37;-><init>()V

    const-string v1, "android.view.flags.toolkit_frame_rate_function_enabling_read_only"

    invoke-virtual {p0, v1, v0}, Landroid/view/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist toolkitFrameRateSmallUsesPercentReadOnly()Z
    .registers 3

    .line 253
    new-instance v0, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda25;

    invoke-direct {v0}, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda25;-><init>()V

    const-string v1, "android.view.flags.toolkit_frame_rate_small_uses_percent_read_only"

    invoke-virtual {p0, v1, v0}, Landroid/view/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist toolkitFrameRateTouchBoost25q1()Z
    .registers 3

    .line 260
    new-instance v0, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda12;-><init>()V

    const-string v1, "android.view.flags.toolkit_frame_rate_touch_boost_25q1"

    invoke-virtual {p0, v1, v0}, Landroid/view/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist toolkitFrameRateTypingReadOnly()Z
    .registers 3

    .line 267
    new-instance v0, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda33;

    invoke-direct {v0}, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda33;-><init>()V

    const-string v1, "android.view.flags.toolkit_frame_rate_typing_read_only"

    invoke-virtual {p0, v1, v0}, Landroid/view/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist toolkitFrameRateVelocityMappingReadOnly()Z
    .registers 3

    .line 274
    new-instance v0, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda24;

    invoke-direct {v0}, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda24;-><init>()V

    const-string v1, "android.view.flags.toolkit_frame_rate_velocity_mapping_read_only"

    invoke-virtual {p0, v1, v0}, Landroid/view/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist toolkitFrameRateViewEnablingReadOnly()Z
    .registers 3

    .line 281
    new-instance v0, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda40;

    invoke-direct {v0}, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda40;-><init>()V

    const-string v1, "android.view.flags.toolkit_frame_rate_view_enabling_read_only"

    invoke-virtual {p0, v1, v0}, Landroid/view/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist toolkitInitialTouchBoost()Z
    .registers 3

    .line 288
    new-instance v0, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda20;

    invoke-direct {v0}, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda20;-><init>()V

    const-string v1, "android.view.flags.toolkit_initial_touch_boost"

    invoke-virtual {p0, v1, v0}, Landroid/view/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist toolkitMetricsForFrameRateDecision()Z
    .registers 3

    .line 295
    new-instance v0, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda31;

    invoke-direct {v0}, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda31;-><init>()V

    const-string v1, "android.view.flags.toolkit_metrics_for_frame_rate_decision"

    invoke-virtual {p0, v1, v0}, Landroid/view/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist toolkitSetFrameRate()Z
    .registers 3

    .line 302
    new-instance v0, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda43;

    invoke-direct {v0}, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda43;-><init>()V

    const-string v1, "android.view.flags.toolkit_set_frame_rate"

    invoke-virtual {p0, v1, v0}, Landroid/view/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist toolkitSetFrameRateReadOnly()Z
    .registers 3

    .line 309
    new-instance v0, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda16;

    invoke-direct {v0}, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda16;-><init>()V

    const-string v1, "android.view.flags.toolkit_set_frame_rate_read_only"

    invoke-virtual {p0, v1, v0}, Landroid/view/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist toolkitViewgroupSetRequestedFrameRateApi()Z
    .registers 3

    .line 316
    new-instance v0, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "android.view.flags.toolkit_viewgroup_set_requested_frame_rate_api"

    invoke-virtual {p0, v1, v0}, Landroid/view/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist useRefactoredRoundScrollbar()Z
    .registers 3

    .line 323
    new-instance v0, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda4;-><init>()V

    const-string v1, "android.view.flags.use_refactored_round_scrollbar"

    invoke-virtual {p0, v1, v0}, Landroid/view/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist useViewBasedRotaryEncoderScrollHaptics()Z
    .registers 3

    .line 330
    new-instance v0, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda23;

    invoke-direct {v0}, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda23;-><init>()V

    const-string v1, "android.view.flags.use_view_based_rotary_encoder_scroll_haptics"

    invoke-virtual {p0, v1, v0}, Landroid/view/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist viewVelocityApi()Z
    .registers 3

    .line 337
    new-instance v0, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Landroid/view/flags/CustomFeatureFlags$$ExternalSyntheticLambda9;-><init>()V

    const-string v1, "android.view.flags.view_velocity_api"

    invoke-virtual {p0, v1, v0}, Landroid/view/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method
