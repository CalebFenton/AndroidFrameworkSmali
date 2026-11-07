.class public final Landroid/view/accessibility/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Landroid/view/accessibility/FeatureFlags; = null

.field public static final blacklist FLAG_A11Y_CHARACTER_IN_WINDOW_API:Ljava/lang/String; = "android.view.accessibility.a11y_character_in_window_api"

.field public static final blacklist FLAG_A11Y_EXPANSION_STATE_API:Ljava/lang/String; = "android.view.accessibility.a11y_expansion_state_api"

.field public static final blacklist FLAG_A11Y_IS_REQUIRED_API:Ljava/lang/String; = "android.view.accessibility.a11y_is_required_api"

.field public static final blacklist FLAG_A11Y_IS_VISITED_API:Ljava/lang/String; = "android.view.accessibility.a11y_is_visited_api"

.field public static final blacklist FLAG_A11Y_OVERLAY_CALLBACKS:Ljava/lang/String; = "android.view.accessibility.a11y_overlay_callbacks"

.field public static final blacklist FLAG_A11Y_QS_SHORTCUT:Ljava/lang/String; = "android.view.accessibility.a11y_qs_shortcut"

.field public static final blacklist FLAG_A11Y_SELECTION_API:Ljava/lang/String; = "android.view.accessibility.a11y_selection_api"

.field public static final blacklist FLAG_ALLOW_SHORTCUT_CHOOSER_ON_LOCKSCREEN:Ljava/lang/String; = "android.view.accessibility.allow_shortcut_chooser_on_lockscreen"

.field public static final blacklist FLAG_BRAILLE_DISPLAY_HID:Ljava/lang/String; = "android.view.accessibility.braille_display_hid"

.field public static final blacklist FLAG_CLEANUP_ACCESSIBILITY_WARNING_DIALOG:Ljava/lang/String; = "android.view.accessibility.cleanup_accessibility_warning_dialog"

.field public static final blacklist FLAG_COLLECTION_INFO_ITEM_COUNTS:Ljava/lang/String; = "android.view.accessibility.collection_info_item_counts"

.field public static final blacklist FLAG_COPY_EVENTS_FOR_GESTURE_DETECTION:Ljava/lang/String; = "android.view.accessibility.copy_events_for_gesture_detection"

.field public static final blacklist FLAG_DEPRECATE_ACCESSIBILITY_ANNOUNCEMENT_APIS:Ljava/lang/String; = "android.view.accessibility.deprecate_accessibility_announcement_apis"

.field public static final blacklist FLAG_DEPRECATE_ANI_LABEL_FOR_APIS:Ljava/lang/String; = "android.view.accessibility.deprecate_ani_label_for_apis"

.field public static final blacklist FLAG_ENABLE_SYSTEM_PINCH_ZOOM_GESTURE:Ljava/lang/String; = "android.view.accessibility.enable_system_pinch_zoom_gesture"

.field public static final blacklist FLAG_ENABLE_TYPE_WINDOW_CONTROL:Ljava/lang/String; = "android.view.accessibility.enable_type_window_control"

.field public static final blacklist FLAG_FLASH_NOTIFICATION_SYSTEM_API:Ljava/lang/String; = "android.view.accessibility.flash_notification_system_api"

.field public static final blacklist FLAG_FOCUS_RECT_MIN_SIZE:Ljava/lang/String; = "android.view.accessibility.focus_rect_min_size"

.field public static final blacklist FLAG_FORCE_INVERT_COLOR:Ljava/lang/String; = "android.view.accessibility.force_invert_color"

.field public static final blacklist FLAG_GLOBAL_ACTION_MEDIA_PLAY_PAUSE:Ljava/lang/String; = "android.view.accessibility.global_action_media_play_pause"

.field public static final blacklist FLAG_GLOBAL_ACTION_MENU:Ljava/lang/String; = "android.view.accessibility.global_action_menu"

.field public static final blacklist FLAG_GRANULAR_SCROLLING:Ljava/lang/String; = "android.view.accessibility.granular_scrolling"

.field public static final blacklist FLAG_INDETERMINATE_RANGE_INFO:Ljava/lang/String; = "android.view.accessibility.indeterminate_range_info"

.field public static final blacklist FLAG_MIGRATE_ENABLE_SHORTCUTS:Ljava/lang/String; = "android.view.accessibility.migrate_enable_shortcuts"

.field public static final blacklist FLAG_MOTION_EVENT_OBSERVING:Ljava/lang/String; = "android.view.accessibility.motion_event_observing"

.field public static final blacklist FLAG_PREVENT_A11Y_NONTOOL_FROM_INJECTING_INTO_SENSITIVE_VIEWS:Ljava/lang/String; = "android.view.accessibility.prevent_a11y_nontool_from_injecting_into_sensitive_views"

.field public static final blacklist FLAG_PREVENT_LEAKING_VIEWROOTIMPL:Ljava/lang/String; = "android.view.accessibility.prevent_leaking_viewrootimpl"

.field public static final blacklist FLAG_REDUCE_WINDOW_CONTENT_CHANGED_EVENT_THROTTLE:Ljava/lang/String; = "android.view.accessibility.reduce_window_content_changed_event_throttle"

.field public static final blacklist FLAG_REMOVE_CHILD_HOVER_CHECK_FOR_TOUCH_EXPLORATION:Ljava/lang/String; = "android.view.accessibility.remove_child_hover_check_for_touch_exploration"

.field public static final blacklist FLAG_REQUEST_RECTANGLE_WITH_SOURCE:Ljava/lang/String; = "android.view.accessibility.request_rectangle_with_source"

.field public static final blacklist FLAG_RESTORE_A11Y_SECURE_SETTINGS_ON_HSUM_DEVICE:Ljava/lang/String; = "android.view.accessibility.restore_a11y_secure_settings_on_hsum_device"

.field public static final blacklist FLAG_RESTORE_A11Y_SHORTCUT_TARGET_SERVICE:Ljava/lang/String; = "android.view.accessibility.restore_a11y_shortcut_target_service"

.field public static final blacklist FLAG_SKIP_ACCESSIBILITY_WARNING_DIALOG_FOR_TRUSTED_SERVICES:Ljava/lang/String; = "android.view.accessibility.skip_accessibility_warning_dialog_for_trusted_services"

.field public static final blacklist FLAG_SUPPLEMENTAL_DESCRIPTION:Ljava/lang/String; = "android.view.accessibility.supplemental_description"

.field public static final blacklist FLAG_SUPPORT_MULTIPLE_LABELEDBY:Ljava/lang/String; = "android.view.accessibility.support_multiple_labeledby"

.field public static final blacklist FLAG_SUPPORT_SYSTEM_PINCH_ZOOM_OPT_OUT_APIS:Ljava/lang/String; = "android.view.accessibility.support_system_pinch_zoom_opt_out_apis"

.field public static final blacklist FLAG_TRI_STATE_CHECKED:Ljava/lang/String; = "android.view.accessibility.tri_state_checked"

.field public static final blacklist FLAG_UPDATE_ALWAYS_ON_A11Y_SERVICE:Ljava/lang/String; = "android.view.accessibility.update_always_on_a11y_service"

.field public static final blacklist FLAG_WARNING_USE_DEFAULT_DIALOG_TYPE:Ljava/lang/String; = "android.view.accessibility.warning_use_default_dialog_type"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 359
    new-instance v0, Landroid/view/accessibility/FeatureFlagsImpl;

    invoke-direct {v0}, Landroid/view/accessibility/FeatureFlagsImpl;-><init>()V

    sput-object v0, Landroid/view/accessibility/Flags;->FEATURE_FLAGS:Landroid/view/accessibility/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist a11yCharacterInWindowApi()Z
    .registers 1

    .line 90
    sget-object v0, Landroid/view/accessibility/Flags;->FEATURE_FLAGS:Landroid/view/accessibility/FeatureFlags;

    invoke-interface {v0}, Landroid/view/accessibility/FeatureFlags;->a11yCharacterInWindowApi()Z

    move-result v0

    return v0
.end method

.method public static greylist a11yExpansionStateApi()Z
    .registers 1

    .line 97
    sget-object v0, Landroid/view/accessibility/Flags;->FEATURE_FLAGS:Landroid/view/accessibility/FeatureFlags;

    invoke-interface {v0}, Landroid/view/accessibility/FeatureFlags;->a11yExpansionStateApi()Z

    move-result v0

    return v0
.end method

.method public static greylist a11yIsRequiredApi()Z
    .registers 1

    .line 104
    sget-object v0, Landroid/view/accessibility/Flags;->FEATURE_FLAGS:Landroid/view/accessibility/FeatureFlags;

    invoke-interface {v0}, Landroid/view/accessibility/FeatureFlags;->a11yIsRequiredApi()Z

    move-result v0

    return v0
.end method

.method public static greylist a11yIsVisitedApi()Z
    .registers 1

    .line 111
    sget-object v0, Landroid/view/accessibility/Flags;->FEATURE_FLAGS:Landroid/view/accessibility/FeatureFlags;

    invoke-interface {v0}, Landroid/view/accessibility/FeatureFlags;->a11yIsVisitedApi()Z

    move-result v0

    return v0
.end method

.method public static greylist a11yOverlayCallbacks()Z
    .registers 1

    .line 118
    sget-object v0, Landroid/view/accessibility/Flags;->FEATURE_FLAGS:Landroid/view/accessibility/FeatureFlags;

    invoke-interface {v0}, Landroid/view/accessibility/FeatureFlags;->a11yOverlayCallbacks()Z

    move-result v0

    return v0
.end method

.method public static greylist a11yQsShortcut()Z
    .registers 1

    .line 125
    sget-object v0, Landroid/view/accessibility/Flags;->FEATURE_FLAGS:Landroid/view/accessibility/FeatureFlags;

    invoke-interface {v0}, Landroid/view/accessibility/FeatureFlags;->a11yQsShortcut()Z

    move-result v0

    return v0
.end method

.method public static greylist a11ySelectionApi()Z
    .registers 1

    .line 132
    sget-object v0, Landroid/view/accessibility/Flags;->FEATURE_FLAGS:Landroid/view/accessibility/FeatureFlags;

    invoke-interface {v0}, Landroid/view/accessibility/FeatureFlags;->a11ySelectionApi()Z

    move-result v0

    return v0
.end method

.method public static greylist allowShortcutChooserOnLockscreen()Z
    .registers 1

    .line 139
    sget-object v0, Landroid/view/accessibility/Flags;->FEATURE_FLAGS:Landroid/view/accessibility/FeatureFlags;

    invoke-interface {v0}, Landroid/view/accessibility/FeatureFlags;->allowShortcutChooserOnLockscreen()Z

    move-result v0

    return v0
.end method

.method public static greylist brailleDisplayHid()Z
    .registers 1

    .line 146
    sget-object v0, Landroid/view/accessibility/Flags;->FEATURE_FLAGS:Landroid/view/accessibility/FeatureFlags;

    invoke-interface {v0}, Landroid/view/accessibility/FeatureFlags;->brailleDisplayHid()Z

    move-result v0

    return v0
.end method

.method public static greylist cleanupAccessibilityWarningDialog()Z
    .registers 1

    .line 153
    sget-object v0, Landroid/view/accessibility/Flags;->FEATURE_FLAGS:Landroid/view/accessibility/FeatureFlags;

    invoke-interface {v0}, Landroid/view/accessibility/FeatureFlags;->cleanupAccessibilityWarningDialog()Z

    move-result v0

    return v0
.end method

.method public static greylist collectionInfoItemCounts()Z
    .registers 1

    .line 160
    sget-object v0, Landroid/view/accessibility/Flags;->FEATURE_FLAGS:Landroid/view/accessibility/FeatureFlags;

    invoke-interface {v0}, Landroid/view/accessibility/FeatureFlags;->collectionInfoItemCounts()Z

    move-result v0

    return v0
.end method

.method public static greylist copyEventsForGestureDetection()Z
    .registers 1

    .line 167
    sget-object v0, Landroid/view/accessibility/Flags;->FEATURE_FLAGS:Landroid/view/accessibility/FeatureFlags;

    invoke-interface {v0}, Landroid/view/accessibility/FeatureFlags;->copyEventsForGestureDetection()Z

    move-result v0

    return v0
.end method

.method public static greylist deprecateAccessibilityAnnouncementApis()Z
    .registers 1

    .line 174
    sget-object v0, Landroid/view/accessibility/Flags;->FEATURE_FLAGS:Landroid/view/accessibility/FeatureFlags;

    invoke-interface {v0}, Landroid/view/accessibility/FeatureFlags;->deprecateAccessibilityAnnouncementApis()Z

    move-result v0

    return v0
.end method

.method public static greylist deprecateAniLabelForApis()Z
    .registers 1

    .line 181
    sget-object v0, Landroid/view/accessibility/Flags;->FEATURE_FLAGS:Landroid/view/accessibility/FeatureFlags;

    invoke-interface {v0}, Landroid/view/accessibility/FeatureFlags;->deprecateAniLabelForApis()Z

    move-result v0

    return v0
.end method

.method public static greylist enableSystemPinchZoomGesture()Z
    .registers 1

    .line 188
    sget-object v0, Landroid/view/accessibility/Flags;->FEATURE_FLAGS:Landroid/view/accessibility/FeatureFlags;

    invoke-interface {v0}, Landroid/view/accessibility/FeatureFlags;->enableSystemPinchZoomGesture()Z

    move-result v0

    return v0
.end method

.method public static greylist enableTypeWindowControl()Z
    .registers 1

    .line 195
    sget-object v0, Landroid/view/accessibility/Flags;->FEATURE_FLAGS:Landroid/view/accessibility/FeatureFlags;

    invoke-interface {v0}, Landroid/view/accessibility/FeatureFlags;->enableTypeWindowControl()Z

    move-result v0

    return v0
.end method

.method public static greylist flashNotificationSystemApi()Z
    .registers 1

    .line 202
    sget-object v0, Landroid/view/accessibility/Flags;->FEATURE_FLAGS:Landroid/view/accessibility/FeatureFlags;

    invoke-interface {v0}, Landroid/view/accessibility/FeatureFlags;->flashNotificationSystemApi()Z

    move-result v0

    return v0
.end method

.method public static greylist focusRectMinSize()Z
    .registers 1

    .line 209
    sget-object v0, Landroid/view/accessibility/Flags;->FEATURE_FLAGS:Landroid/view/accessibility/FeatureFlags;

    invoke-interface {v0}, Landroid/view/accessibility/FeatureFlags;->focusRectMinSize()Z

    move-result v0

    return v0
.end method

.method public static greylist forceInvertColor()Z
    .registers 1

    .line 216
    sget-object v0, Landroid/view/accessibility/Flags;->FEATURE_FLAGS:Landroid/view/accessibility/FeatureFlags;

    invoke-interface {v0}, Landroid/view/accessibility/FeatureFlags;->forceInvertColor()Z

    move-result v0

    return v0
.end method

.method public static greylist globalActionMediaPlayPause()Z
    .registers 1

    .line 223
    sget-object v0, Landroid/view/accessibility/Flags;->FEATURE_FLAGS:Landroid/view/accessibility/FeatureFlags;

    invoke-interface {v0}, Landroid/view/accessibility/FeatureFlags;->globalActionMediaPlayPause()Z

    move-result v0

    return v0
.end method

.method public static greylist globalActionMenu()Z
    .registers 1

    .line 230
    sget-object v0, Landroid/view/accessibility/Flags;->FEATURE_FLAGS:Landroid/view/accessibility/FeatureFlags;

    invoke-interface {v0}, Landroid/view/accessibility/FeatureFlags;->globalActionMenu()Z

    move-result v0

    return v0
.end method

.method public static greylist granularScrolling()Z
    .registers 1

    .line 237
    sget-object v0, Landroid/view/accessibility/Flags;->FEATURE_FLAGS:Landroid/view/accessibility/FeatureFlags;

    invoke-interface {v0}, Landroid/view/accessibility/FeatureFlags;->granularScrolling()Z

    move-result v0

    return v0
.end method

.method public static greylist indeterminateRangeInfo()Z
    .registers 1

    .line 244
    sget-object v0, Landroid/view/accessibility/Flags;->FEATURE_FLAGS:Landroid/view/accessibility/FeatureFlags;

    invoke-interface {v0}, Landroid/view/accessibility/FeatureFlags;->indeterminateRangeInfo()Z

    move-result v0

    return v0
.end method

.method public static greylist migrateEnableShortcuts()Z
    .registers 1

    .line 251
    sget-object v0, Landroid/view/accessibility/Flags;->FEATURE_FLAGS:Landroid/view/accessibility/FeatureFlags;

    invoke-interface {v0}, Landroid/view/accessibility/FeatureFlags;->migrateEnableShortcuts()Z

    move-result v0

    return v0
.end method

.method public static greylist motionEventObserving()Z
    .registers 1

    .line 258
    sget-object v0, Landroid/view/accessibility/Flags;->FEATURE_FLAGS:Landroid/view/accessibility/FeatureFlags;

    invoke-interface {v0}, Landroid/view/accessibility/FeatureFlags;->motionEventObserving()Z

    move-result v0

    return v0
.end method

.method public static greylist preventA11yNontoolFromInjectingIntoSensitiveViews()Z
    .registers 1

    .line 265
    sget-object v0, Landroid/view/accessibility/Flags;->FEATURE_FLAGS:Landroid/view/accessibility/FeatureFlags;

    invoke-interface {v0}, Landroid/view/accessibility/FeatureFlags;->preventA11yNontoolFromInjectingIntoSensitiveViews()Z

    move-result v0

    return v0
.end method

.method public static greylist preventLeakingViewrootimpl()Z
    .registers 1

    .line 272
    sget-object v0, Landroid/view/accessibility/Flags;->FEATURE_FLAGS:Landroid/view/accessibility/FeatureFlags;

    invoke-interface {v0}, Landroid/view/accessibility/FeatureFlags;->preventLeakingViewrootimpl()Z

    move-result v0

    return v0
.end method

.method public static greylist reduceWindowContentChangedEventThrottle()Z
    .registers 1

    .line 279
    sget-object v0, Landroid/view/accessibility/Flags;->FEATURE_FLAGS:Landroid/view/accessibility/FeatureFlags;

    invoke-interface {v0}, Landroid/view/accessibility/FeatureFlags;->reduceWindowContentChangedEventThrottle()Z

    move-result v0

    return v0
.end method

.method public static greylist removeChildHoverCheckForTouchExploration()Z
    .registers 1

    .line 286
    sget-object v0, Landroid/view/accessibility/Flags;->FEATURE_FLAGS:Landroid/view/accessibility/FeatureFlags;

    invoke-interface {v0}, Landroid/view/accessibility/FeatureFlags;->removeChildHoverCheckForTouchExploration()Z

    move-result v0

    return v0
.end method

.method public static greylist requestRectangleWithSource()Z
    .registers 1

    .line 293
    sget-object v0, Landroid/view/accessibility/Flags;->FEATURE_FLAGS:Landroid/view/accessibility/FeatureFlags;

    invoke-interface {v0}, Landroid/view/accessibility/FeatureFlags;->requestRectangleWithSource()Z

    move-result v0

    return v0
.end method

.method public static greylist restoreA11ySecureSettingsOnHsumDevice()Z
    .registers 1

    .line 300
    sget-object v0, Landroid/view/accessibility/Flags;->FEATURE_FLAGS:Landroid/view/accessibility/FeatureFlags;

    invoke-interface {v0}, Landroid/view/accessibility/FeatureFlags;->restoreA11ySecureSettingsOnHsumDevice()Z

    move-result v0

    return v0
.end method

.method public static greylist restoreA11yShortcutTargetService()Z
    .registers 1

    .line 307
    sget-object v0, Landroid/view/accessibility/Flags;->FEATURE_FLAGS:Landroid/view/accessibility/FeatureFlags;

    invoke-interface {v0}, Landroid/view/accessibility/FeatureFlags;->restoreA11yShortcutTargetService()Z

    move-result v0

    return v0
.end method

.method public static greylist skipAccessibilityWarningDialogForTrustedServices()Z
    .registers 1

    .line 314
    sget-object v0, Landroid/view/accessibility/Flags;->FEATURE_FLAGS:Landroid/view/accessibility/FeatureFlags;

    invoke-interface {v0}, Landroid/view/accessibility/FeatureFlags;->skipAccessibilityWarningDialogForTrustedServices()Z

    move-result v0

    return v0
.end method

.method public static greylist supplementalDescription()Z
    .registers 1

    .line 321
    sget-object v0, Landroid/view/accessibility/Flags;->FEATURE_FLAGS:Landroid/view/accessibility/FeatureFlags;

    invoke-interface {v0}, Landroid/view/accessibility/FeatureFlags;->supplementalDescription()Z

    move-result v0

    return v0
.end method

.method public static greylist supportMultipleLabeledby()Z
    .registers 1

    .line 328
    sget-object v0, Landroid/view/accessibility/Flags;->FEATURE_FLAGS:Landroid/view/accessibility/FeatureFlags;

    invoke-interface {v0}, Landroid/view/accessibility/FeatureFlags;->supportMultipleLabeledby()Z

    move-result v0

    return v0
.end method

.method public static greylist supportSystemPinchZoomOptOutApis()Z
    .registers 1

    .line 335
    sget-object v0, Landroid/view/accessibility/Flags;->FEATURE_FLAGS:Landroid/view/accessibility/FeatureFlags;

    invoke-interface {v0}, Landroid/view/accessibility/FeatureFlags;->supportSystemPinchZoomOptOutApis()Z

    move-result v0

    return v0
.end method

.method public static greylist triStateChecked()Z
    .registers 1

    .line 342
    sget-object v0, Landroid/view/accessibility/Flags;->FEATURE_FLAGS:Landroid/view/accessibility/FeatureFlags;

    invoke-interface {v0}, Landroid/view/accessibility/FeatureFlags;->triStateChecked()Z

    move-result v0

    return v0
.end method

.method public static greylist updateAlwaysOnA11yService()Z
    .registers 1

    .line 349
    sget-object v0, Landroid/view/accessibility/Flags;->FEATURE_FLAGS:Landroid/view/accessibility/FeatureFlags;

    invoke-interface {v0}, Landroid/view/accessibility/FeatureFlags;->updateAlwaysOnA11yService()Z

    move-result v0

    return v0
.end method

.method public static greylist warningUseDefaultDialogType()Z
    .registers 1

    .line 356
    sget-object v0, Landroid/view/accessibility/Flags;->FEATURE_FLAGS:Landroid/view/accessibility/FeatureFlags;

    invoke-interface {v0}, Landroid/view/accessibility/FeatureFlags;->warningUseDefaultDialogType()Z

    move-result v0

    return v0
.end method
