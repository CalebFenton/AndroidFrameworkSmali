.class public Landroid/view/accessibility/CustomFeatureFlags;
.super Ljava/lang/Object;
.source "CustomFeatureFlags.java"

# interfaces
.implements Landroid/view/accessibility/FeatureFlags;


# instance fields
.field private blacklist mGetValueImpl:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Landroid/view/accessibility/FeatureFlags;",
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
    .registers 44
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Landroid/view/accessibility/FeatureFlags;",
            ">;>;)V"
        }
    .end annotation

    .line 16
    .local p1, "getValueImpl":Ljava/util/function/BiPredicate;, "Ljava/util/function/BiPredicate<Ljava/lang/String;Ljava/util/function/Predicate<Landroid/view/accessibility/FeatureFlags;>;>;"
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 353
    new-instance v1, Ljava/util/HashSet;

    const-string v40, "android.view.accessibility.warning_use_default_dialog_type"

    const-string v41, ""

    const-string v2, "android.view.accessibility.a11y_character_in_window_api"

    const-string v3, "android.view.accessibility.a11y_expansion_state_api"

    const-string v4, "android.view.accessibility.a11y_is_required_api"

    const-string v5, "android.view.accessibility.a11y_is_visited_api"

    const-string v6, "android.view.accessibility.a11y_overlay_callbacks"

    const-string v7, "android.view.accessibility.a11y_qs_shortcut"

    const-string v8, "android.view.accessibility.a11y_selection_api"

    const-string v9, "android.view.accessibility.allow_shortcut_chooser_on_lockscreen"

    const-string v10, "android.view.accessibility.braille_display_hid"

    const-string v11, "android.view.accessibility.cleanup_accessibility_warning_dialog"

    const-string v12, "android.view.accessibility.collection_info_item_counts"

    const-string v13, "android.view.accessibility.copy_events_for_gesture_detection"

    const-string v14, "android.view.accessibility.deprecate_accessibility_announcement_apis"

    const-string v15, "android.view.accessibility.deprecate_ani_label_for_apis"

    const-string v16, "android.view.accessibility.enable_system_pinch_zoom_gesture"

    const-string v17, "android.view.accessibility.enable_type_window_control"

    const-string v18, "android.view.accessibility.flash_notification_system_api"

    const-string v19, "android.view.accessibility.focus_rect_min_size"

    const-string v20, "android.view.accessibility.force_invert_color"

    const-string v21, "android.view.accessibility.global_action_media_play_pause"

    const-string v22, "android.view.accessibility.global_action_menu"

    const-string v23, "android.view.accessibility.granular_scrolling"

    const-string v24, "android.view.accessibility.indeterminate_range_info"

    const-string v25, "android.view.accessibility.migrate_enable_shortcuts"

    const-string v26, "android.view.accessibility.motion_event_observing"

    const-string v27, "android.view.accessibility.prevent_a11y_nontool_from_injecting_into_sensitive_views"

    const-string v28, "android.view.accessibility.prevent_leaking_viewrootimpl"

    const-string v29, "android.view.accessibility.reduce_window_content_changed_event_throttle"

    const-string v30, "android.view.accessibility.remove_child_hover_check_for_touch_exploration"

    const-string v31, "android.view.accessibility.request_rectangle_with_source"

    const-string v32, "android.view.accessibility.restore_a11y_secure_settings_on_hsum_device"

    const-string v33, "android.view.accessibility.restore_a11y_shortcut_target_service"

    const-string v34, "android.view.accessibility.skip_accessibility_warning_dialog_for_trusted_services"

    const-string v35, "android.view.accessibility.supplemental_description"

    const-string v36, "android.view.accessibility.support_multiple_labeledby"

    const-string v37, "android.view.accessibility.support_system_pinch_zoom_opt_out_apis"

    const-string v38, "android.view.accessibility.tri_state_checked"

    const-string v39, "android.view.accessibility.update_always_on_a11y_service"

    filled-new-array/range {v2 .. v41}, [Ljava/lang/String;

    move-result-object v2

    .line 354
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Landroid/view/accessibility/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    .line 17
    move-object/from16 v1, p1

    iput-object v1, v0, Landroid/view/accessibility/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    .line 18
    return-void
.end method

.method private blacklist isOptimizationEnabled()Z
    .registers 2

    .line 302
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public greylist a11yCharacterInWindowApi()Z
    .registers 3

    .line 22
    new-instance v0, Landroid/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Landroid/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda12;-><init>()V

    const-string v1, "android.view.accessibility.a11y_character_in_window_api"

    invoke-virtual {p0, v1, v0}, Landroid/view/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist a11yExpansionStateApi()Z
    .registers 3

    .line 29
    new-instance v0, Landroid/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda17;

    invoke-direct {v0}, Landroid/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda17;-><init>()V

    const-string v1, "android.view.accessibility.a11y_expansion_state_api"

    invoke-virtual {p0, v1, v0}, Landroid/view/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist a11yIsRequiredApi()Z
    .registers 3

    .line 36
    new-instance v0, Landroid/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Landroid/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda8;-><init>()V

    const-string v1, "android.view.accessibility.a11y_is_required_api"

    invoke-virtual {p0, v1, v0}, Landroid/view/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist a11yIsVisitedApi()Z
    .registers 3

    .line 43
    new-instance v0, Landroid/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Landroid/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda11;-><init>()V

    const-string v1, "android.view.accessibility.a11y_is_visited_api"

    invoke-virtual {p0, v1, v0}, Landroid/view/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist a11yOverlayCallbacks()Z
    .registers 3

    .line 50
    new-instance v0, Landroid/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Landroid/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda3;-><init>()V

    const-string v1, "android.view.accessibility.a11y_overlay_callbacks"

    invoke-virtual {p0, v1, v0}, Landroid/view/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist a11yQsShortcut()Z
    .registers 3

    .line 57
    new-instance v0, Landroid/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Landroid/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda7;-><init>()V

    const-string v1, "android.view.accessibility.a11y_qs_shortcut"

    invoke-virtual {p0, v1, v0}, Landroid/view/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist a11ySelectionApi()Z
    .registers 3

    .line 64
    new-instance v0, Landroid/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Landroid/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda5;-><init>()V

    const-string v1, "android.view.accessibility.a11y_selection_api"

    invoke-virtual {p0, v1, v0}, Landroid/view/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist allowShortcutChooserOnLockscreen()Z
    .registers 3

    .line 71
    new-instance v0, Landroid/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda28;

    invoke-direct {v0}, Landroid/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda28;-><init>()V

    const-string v1, "android.view.accessibility.allow_shortcut_chooser_on_lockscreen"

    invoke-virtual {p0, v1, v0}, Landroid/view/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist brailleDisplayHid()Z
    .registers 3

    .line 78
    new-instance v0, Landroid/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Landroid/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda13;-><init>()V

    const-string v1, "android.view.accessibility.braille_display_hid"

    invoke-virtual {p0, v1, v0}, Landroid/view/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist cleanupAccessibilityWarningDialog()Z
    .registers 3

    .line 85
    new-instance v0, Landroid/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda30;

    invoke-direct {v0}, Landroid/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda30;-><init>()V

    const-string v1, "android.view.accessibility.cleanup_accessibility_warning_dialog"

    invoke-virtual {p0, v1, v0}, Landroid/view/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist collectionInfoItemCounts()Z
    .registers 3

    .line 92
    new-instance v0, Landroid/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda19;

    invoke-direct {v0}, Landroid/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda19;-><init>()V

    const-string v1, "android.view.accessibility.collection_info_item_counts"

    invoke-virtual {p0, v1, v0}, Landroid/view/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist copyEventsForGestureDetection()Z
    .registers 3

    .line 99
    new-instance v0, Landroid/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda26;

    invoke-direct {v0}, Landroid/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda26;-><init>()V

    const-string v1, "android.view.accessibility.copy_events_for_gesture_detection"

    invoke-virtual {p0, v1, v0}, Landroid/view/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist deprecateAccessibilityAnnouncementApis()Z
    .registers 3

    .line 106
    new-instance v0, Landroid/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda38;

    invoke-direct {v0}, Landroid/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda38;-><init>()V

    const-string v1, "android.view.accessibility.deprecate_accessibility_announcement_apis"

    invoke-virtual {p0, v1, v0}, Landroid/view/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist deprecateAniLabelForApis()Z
    .registers 3

    .line 113
    new-instance v0, Landroid/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "android.view.accessibility.deprecate_ani_label_for_apis"

    invoke-virtual {p0, v1, v0}, Landroid/view/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableSystemPinchZoomGesture()Z
    .registers 3

    .line 120
    new-instance v0, Landroid/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda20;

    invoke-direct {v0}, Landroid/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda20;-><init>()V

    const-string v1, "android.view.accessibility.enable_system_pinch_zoom_gesture"

    invoke-virtual {p0, v1, v0}, Landroid/view/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enableTypeWindowControl()Z
    .registers 3

    .line 127
    new-instance v0, Landroid/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda35;

    invoke-direct {v0}, Landroid/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda35;-><init>()V

    const-string v1, "android.view.accessibility.enable_type_window_control"

    invoke-virtual {p0, v1, v0}, Landroid/view/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist flashNotificationSystemApi()Z
    .registers 3

    .line 134
    new-instance v0, Landroid/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda25;

    invoke-direct {v0}, Landroid/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda25;-><init>()V

    const-string v1, "android.view.accessibility.flash_notification_system_api"

    invoke-virtual {p0, v1, v0}, Landroid/view/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist focusRectMinSize()Z
    .registers 3

    .line 141
    new-instance v0, Landroid/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda23;

    invoke-direct {v0}, Landroid/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda23;-><init>()V

    const-string v1, "android.view.accessibility.focus_rect_min_size"

    invoke-virtual {p0, v1, v0}, Landroid/view/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist forceInvertColor()Z
    .registers 3

    .line 148
    new-instance v0, Landroid/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda36;

    invoke-direct {v0}, Landroid/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda36;-><init>()V

    const-string v1, "android.view.accessibility.force_invert_color"

    invoke-virtual {p0, v1, v0}, Landroid/view/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist getFlagNames()Ljava/util/List;
    .registers 41
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 310
    const-string v38, "android.view.accessibility.update_always_on_a11y_service"

    const-string v39, "android.view.accessibility.warning_use_default_dialog_type"

    const-string v1, "android.view.accessibility.a11y_character_in_window_api"

    const-string v2, "android.view.accessibility.a11y_expansion_state_api"

    const-string v3, "android.view.accessibility.a11y_is_required_api"

    const-string v4, "android.view.accessibility.a11y_is_visited_api"

    const-string v5, "android.view.accessibility.a11y_overlay_callbacks"

    const-string v6, "android.view.accessibility.a11y_qs_shortcut"

    const-string v7, "android.view.accessibility.a11y_selection_api"

    const-string v8, "android.view.accessibility.allow_shortcut_chooser_on_lockscreen"

    const-string v9, "android.view.accessibility.braille_display_hid"

    const-string v10, "android.view.accessibility.cleanup_accessibility_warning_dialog"

    const-string v11, "android.view.accessibility.collection_info_item_counts"

    const-string v12, "android.view.accessibility.copy_events_for_gesture_detection"

    const-string v13, "android.view.accessibility.deprecate_accessibility_announcement_apis"

    const-string v14, "android.view.accessibility.deprecate_ani_label_for_apis"

    const-string v15, "android.view.accessibility.enable_system_pinch_zoom_gesture"

    const-string v16, "android.view.accessibility.enable_type_window_control"

    const-string v17, "android.view.accessibility.flash_notification_system_api"

    const-string v18, "android.view.accessibility.focus_rect_min_size"

    const-string v19, "android.view.accessibility.force_invert_color"

    const-string v20, "android.view.accessibility.global_action_media_play_pause"

    const-string v21, "android.view.accessibility.global_action_menu"

    const-string v22, "android.view.accessibility.granular_scrolling"

    const-string v23, "android.view.accessibility.indeterminate_range_info"

    const-string v24, "android.view.accessibility.migrate_enable_shortcuts"

    const-string v25, "android.view.accessibility.motion_event_observing"

    const-string v26, "android.view.accessibility.prevent_a11y_nontool_from_injecting_into_sensitive_views"

    const-string v27, "android.view.accessibility.prevent_leaking_viewrootimpl"

    const-string v28, "android.view.accessibility.reduce_window_content_changed_event_throttle"

    const-string v29, "android.view.accessibility.remove_child_hover_check_for_touch_exploration"

    const-string v30, "android.view.accessibility.request_rectangle_with_source"

    const-string v31, "android.view.accessibility.restore_a11y_secure_settings_on_hsum_device"

    const-string v32, "android.view.accessibility.restore_a11y_shortcut_target_service"

    const-string v33, "android.view.accessibility.skip_accessibility_warning_dialog_for_trusted_services"

    const-string v34, "android.view.accessibility.supplemental_description"

    const-string v35, "android.view.accessibility.support_multiple_labeledby"

    const-string v36, "android.view.accessibility.support_system_pinch_zoom_opt_out_apis"

    const-string v37, "android.view.accessibility.tri_state_checked"

    filled-new-array/range {v1 .. v39}, [Ljava/lang/String;

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
            "Landroid/view/accessibility/FeatureFlags;",
            ">;)Z"
        }
    .end annotation

    .line 306
    .local p2, "getter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Landroid/view/accessibility/FeatureFlags;>;"
    iget-object v0, p0, Landroid/view/accessibility/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public greylist globalActionMediaPlayPause()Z
    .registers 3

    .line 155
    new-instance v0, Landroid/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda37;

    invoke-direct {v0}, Landroid/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda37;-><init>()V

    const-string v1, "android.view.accessibility.global_action_media_play_pause"

    invoke-virtual {p0, v1, v0}, Landroid/view/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist globalActionMenu()Z
    .registers 3

    .line 162
    new-instance v0, Landroid/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda34;

    invoke-direct {v0}, Landroid/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda34;-><init>()V

    const-string v1, "android.view.accessibility.global_action_menu"

    invoke-virtual {p0, v1, v0}, Landroid/view/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist granularScrolling()Z
    .registers 3

    .line 169
    new-instance v0, Landroid/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "android.view.accessibility.granular_scrolling"

    invoke-virtual {p0, v1, v0}, Landroid/view/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist indeterminateRangeInfo()Z
    .registers 3

    .line 176
    new-instance v0, Landroid/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda22;

    invoke-direct {v0}, Landroid/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda22;-><init>()V

    const-string v1, "android.view.accessibility.indeterminate_range_info"

    invoke-virtual {p0, v1, v0}, Landroid/view/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist isFlagReadOnlyOptimized(Ljava/lang/String;)Z
    .registers 3
    .param p1, "flagName"    # Ljava/lang/String;

    .line 293
    iget-object v0, p0, Landroid/view/accessibility/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 294
    invoke-direct {p0}, Landroid/view/accessibility/CustomFeatureFlags;->isOptimizationEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 295
    const/4 v0, 0x1

    return v0

    .line 297
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public greylist migrateEnableShortcuts()Z
    .registers 3

    .line 183
    new-instance v0, Landroid/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda29;

    invoke-direct {v0}, Landroid/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda29;-><init>()V

    const-string v1, "android.view.accessibility.migrate_enable_shortcuts"

    invoke-virtual {p0, v1, v0}, Landroid/view/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist motionEventObserving()Z
    .registers 3

    .line 190
    new-instance v0, Landroid/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda24;

    invoke-direct {v0}, Landroid/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda24;-><init>()V

    const-string v1, "android.view.accessibility.motion_event_observing"

    invoke-virtual {p0, v1, v0}, Landroid/view/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist preventA11yNontoolFromInjectingIntoSensitiveViews()Z
    .registers 3

    .line 197
    new-instance v0, Landroid/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda16;

    invoke-direct {v0}, Landroid/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda16;-><init>()V

    const-string v1, "android.view.accessibility.prevent_a11y_nontool_from_injecting_into_sensitive_views"

    invoke-virtual {p0, v1, v0}, Landroid/view/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist preventLeakingViewrootimpl()Z
    .registers 3

    .line 204
    new-instance v0, Landroid/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda15;

    invoke-direct {v0}, Landroid/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda15;-><init>()V

    const-string v1, "android.view.accessibility.prevent_leaking_viewrootimpl"

    invoke-virtual {p0, v1, v0}, Landroid/view/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist reduceWindowContentChangedEventThrottle()Z
    .registers 3

    .line 211
    new-instance v0, Landroid/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Landroid/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda2;-><init>()V

    const-string v1, "android.view.accessibility.reduce_window_content_changed_event_throttle"

    invoke-virtual {p0, v1, v0}, Landroid/view/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist removeChildHoverCheckForTouchExploration()Z
    .registers 3

    .line 218
    new-instance v0, Landroid/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Landroid/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda4;-><init>()V

    const-string v1, "android.view.accessibility.remove_child_hover_check_for_touch_exploration"

    invoke-virtual {p0, v1, v0}, Landroid/view/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist requestRectangleWithSource()Z
    .registers 3

    .line 225
    new-instance v0, Landroid/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda18;

    invoke-direct {v0}, Landroid/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda18;-><init>()V

    const-string v1, "android.view.accessibility.request_rectangle_with_source"

    invoke-virtual {p0, v1, v0}, Landroid/view/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist restoreA11ySecureSettingsOnHsumDevice()Z
    .registers 3

    .line 232
    new-instance v0, Landroid/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda31;

    invoke-direct {v0}, Landroid/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda31;-><init>()V

    const-string v1, "android.view.accessibility.restore_a11y_secure_settings_on_hsum_device"

    invoke-virtual {p0, v1, v0}, Landroid/view/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist restoreA11yShortcutTargetService()Z
    .registers 3

    .line 239
    new-instance v0, Landroid/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda33;

    invoke-direct {v0}, Landroid/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda33;-><init>()V

    const-string v1, "android.view.accessibility.restore_a11y_shortcut_target_service"

    invoke-virtual {p0, v1, v0}, Landroid/view/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist skipAccessibilityWarningDialogForTrustedServices()Z
    .registers 3

    .line 246
    new-instance v0, Landroid/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda21;

    invoke-direct {v0}, Landroid/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda21;-><init>()V

    const-string v1, "android.view.accessibility.skip_accessibility_warning_dialog_for_trusted_services"

    invoke-virtual {p0, v1, v0}, Landroid/view/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist supplementalDescription()Z
    .registers 3

    .line 253
    new-instance v0, Landroid/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda27;

    invoke-direct {v0}, Landroid/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda27;-><init>()V

    const-string v1, "android.view.accessibility.supplemental_description"

    invoke-virtual {p0, v1, v0}, Landroid/view/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist supportMultipleLabeledby()Z
    .registers 3

    .line 260
    new-instance v0, Landroid/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Landroid/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda6;-><init>()V

    const-string v1, "android.view.accessibility.support_multiple_labeledby"

    invoke-virtual {p0, v1, v0}, Landroid/view/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist supportSystemPinchZoomOptOutApis()Z
    .registers 3

    .line 267
    new-instance v0, Landroid/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda14;

    invoke-direct {v0}, Landroid/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda14;-><init>()V

    const-string v1, "android.view.accessibility.support_system_pinch_zoom_opt_out_apis"

    invoke-virtual {p0, v1, v0}, Landroid/view/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist triStateChecked()Z
    .registers 3

    .line 274
    new-instance v0, Landroid/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Landroid/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda9;-><init>()V

    const-string v1, "android.view.accessibility.tri_state_checked"

    invoke-virtual {p0, v1, v0}, Landroid/view/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist updateAlwaysOnA11yService()Z
    .registers 3

    .line 281
    new-instance v0, Landroid/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda32;

    invoke-direct {v0}, Landroid/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda32;-><init>()V

    const-string v1, "android.view.accessibility.update_always_on_a11y_service"

    invoke-virtual {p0, v1, v0}, Landroid/view/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist warningUseDefaultDialogType()Z
    .registers 3

    .line 288
    new-instance v0, Landroid/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Landroid/view/accessibility/CustomFeatureFlags$$ExternalSyntheticLambda10;-><init>()V

    const-string v1, "android.view.accessibility.warning_use_default_dialog_type"

    invoke-virtual {p0, v1, v0}, Landroid/view/accessibility/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method
