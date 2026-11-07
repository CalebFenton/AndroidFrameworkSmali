.class public final Landroid/provider/Settings$Secure;
.super Landroid/provider/Settings$NameValueTable;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Secure"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/Settings$Secure$PrivateSpaceAutoLockOption;,
        Landroid/provider/Settings$Secure$DeviceStateRotationLockKey;,
        Landroid/provider/Settings$Secure$DeviceStateRotationLockSetting;,
        Landroid/provider/Settings$Secure$AccessibilityMagnificationCursorFollowingMode;,
        Landroid/provider/Settings$Secure$ResolutionMode;,
        Landroid/provider/Settings$Secure$HubModeTutorialState;,
        Landroid/provider/Settings$Secure$DockSetupState;,
        Landroid/provider/Settings$Secure$WhenToStartGlanceableHub;,
        Landroid/provider/Settings$Secure$UserSetupPersonalization;
    }
.end annotation


# static fields
.field public static final blacklist AAPM_USB_DATA_PROTECTION:Ljava/lang/String; = "aapm_usb_data_protection"

.field public static final blacklist ACCESSIBILITY_ALLOW_DIAGONAL_SCROLLING:Ljava/lang/String; = "accessibility_allow_diagonal_scrolling"

.field public static final blacklist ACCESSIBILITY_AUTOCLICK_CURSOR_AREA_SIZE:Ljava/lang/String; = "accessibility_autoclick_cursor_area_size"

.field public static final greylist-max-o ACCESSIBILITY_AUTOCLICK_DELAY:Ljava/lang/String; = "accessibility_autoclick_delay"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist ACCESSIBILITY_AUTOCLICK_ENABLED:Ljava/lang/String; = "accessibility_autoclick_enabled"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist ACCESSIBILITY_AUTOCLICK_IGNORE_MINOR_CURSOR_MOVEMENT:Ljava/lang/String; = "accessibility_autoclick_ignore_minor_cursor_movement"

.field public static final blacklist ACCESSIBILITY_AUTOCLICK_PANEL_POSITION:Ljava/lang/String; = "accessibility_autoclick_panel_position"

.field public static final blacklist ACCESSIBILITY_AUTOCLICK_REVERT_TO_LEFT_CLICK:Ljava/lang/String; = "accessibility_autoclick_revert_to_left_click"

.field public static final blacklist ACCESSIBILITY_BOUNCE_KEYS:Ljava/lang/String; = "accessibility_bounce_keys"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist ACCESSIBILITY_BUTTON_MODE:Ljava/lang/String; = "accessibility_button_mode"

.field public static final blacklist ACCESSIBILITY_BUTTON_MODE_FLOATING_MENU:I = 0x1

.field public static final blacklist ACCESSIBILITY_BUTTON_MODE_GESTURE:I = 0x2

.field public static final blacklist ACCESSIBILITY_BUTTON_MODE_NAVIGATION_BAR:I = 0x0

.field public static final blacklist ACCESSIBILITY_BUTTON_TARGETS:Ljava/lang/String; = "accessibility_button_targets"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o ACCESSIBILITY_BUTTON_TARGET_COMPONENT:Ljava/lang/String; = "accessibility_button_target_component"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o ACCESSIBILITY_CAPTIONING_BACKGROUND_COLOR:Ljava/lang/String; = "accessibility_captioning_background_color"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o ACCESSIBILITY_CAPTIONING_EDGE_COLOR:Ljava/lang/String; = "accessibility_captioning_edge_color"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o ACCESSIBILITY_CAPTIONING_EDGE_TYPE:Ljava/lang/String; = "accessibility_captioning_edge_type"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o ACCESSIBILITY_CAPTIONING_ENABLED:Ljava/lang/String; = "accessibility_captioning_enabled"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o ACCESSIBILITY_CAPTIONING_FONT_SCALE:Ljava/lang/String; = "accessibility_captioning_font_scale"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o ACCESSIBILITY_CAPTIONING_FOREGROUND_COLOR:Ljava/lang/String; = "accessibility_captioning_foreground_color"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o ACCESSIBILITY_CAPTIONING_LOCALE:Ljava/lang/String; = "accessibility_captioning_locale"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o ACCESSIBILITY_CAPTIONING_PRESET:Ljava/lang/String; = "accessibility_captioning_preset"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-r ACCESSIBILITY_CAPTIONING_TYPEFACE:Ljava/lang/String; = "accessibility_captioning_typeface"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o ACCESSIBILITY_CAPTIONING_WINDOW_COLOR:Ljava/lang/String; = "accessibility_captioning_window_color"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-r ACCESSIBILITY_DISPLAY_DALTONIZER:Ljava/lang/String; = "accessibility_display_daltonizer"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist ACCESSIBILITY_DISPLAY_DALTONIZER_ENABLED:Ljava/lang/String; = "accessibility_display_daltonizer_enabled"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist ACCESSIBILITY_DISPLAY_DALTONIZER_SATURATION_LEVEL:Ljava/lang/String; = "accessibility_display_daltonizer_saturation_level"

.field public static final whitelist ACCESSIBILITY_DISPLAY_INVERSION_ENABLED:Ljava/lang/String; = "accessibility_display_inversion_enabled"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o ACCESSIBILITY_DISPLAY_MAGNIFICATION_AUTO_UPDATE:Ljava/lang/String; = "accessibility_display_magnification_auto_update"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist ACCESSIBILITY_DISPLAY_MAGNIFICATION_EDGE_HAPTIC_ENABLED:Ljava/lang/String; = "accessibility_display_magnification_edge_haptic_enabled"

.field public static final greylist ACCESSIBILITY_DISPLAY_MAGNIFICATION_ENABLED:Ljava/lang/String; = "accessibility_display_magnification_enabled"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist ACCESSIBILITY_DISPLAY_MAGNIFICATION_NAVBAR_ENABLED:Ljava/lang/String; = "accessibility_display_magnification_navbar_enabled"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o ACCESSIBILITY_DISPLAY_MAGNIFICATION_SCALE:Ljava/lang/String; = "accessibility_display_magnification_scale"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist ACCESSIBILITY_ENABLED:Ljava/lang/String; = "accessibility_enabled"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist ACCESSIBILITY_FLOATING_MENU_FADE_ENABLED:Ljava/lang/String; = "accessibility_floating_menu_fade_enabled"

.field public static final blacklist ACCESSIBILITY_FLOATING_MENU_ICON_TYPE:Ljava/lang/String; = "accessibility_floating_menu_icon_type"

.field public static final blacklist ACCESSIBILITY_FLOATING_MENU_MIGRATION_TOOLTIP_PROMPT:Ljava/lang/String; = "accessibility_floating_menu_migration_tooltip_prompt"

.field public static final blacklist ACCESSIBILITY_FLOATING_MENU_OPACITY:Ljava/lang/String; = "accessibility_floating_menu_opacity"

.field public static final blacklist ACCESSIBILITY_FLOATING_MENU_SIZE:Ljava/lang/String; = "accessibility_floating_menu_size"

.field public static final blacklist ACCESSIBILITY_FONT_SCALING_HAS_BEEN_CHANGED:Ljava/lang/String; = "accessibility_font_scaling_has_been_changed"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist ACCESSIBILITY_FORCE_INVERT_COLOR_ENABLED:Ljava/lang/String; = "accessibility_force_invert_color_enabled"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist ACCESSIBILITY_GESTURE_TARGETS:Ljava/lang/String; = "accessibility_gesture_targets"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist ACCESSIBILITY_HCT_RECT_PROMPT_STATUS:Ljava/lang/String; = "accessibility_hct_rect_prompt_status"

.field public static final greylist-max-o ACCESSIBILITY_HIGH_TEXT_CONTRAST_ENABLED:Ljava/lang/String; = "high_text_contrast_enabled"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist ACCESSIBILITY_INTERACTIVE_UI_TIMEOUT_MS:Ljava/lang/String; = "accessibility_interactive_ui_timeout_ms"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist ACCESSIBILITY_KEY_GESTURE_TARGETS:Ljava/lang/String; = "accessibility_key_gesture_targets"

.field public static final greylist ACCESSIBILITY_LARGE_POINTER_ICON:Ljava/lang/String; = "accessibility_large_pointer_icon"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist ACCESSIBILITY_MAGNIFICATION_ALWAYS_ON_ENABLED:Ljava/lang/String; = "accessibility_magnification_always_on_enabled"

.field public static final blacklist ACCESSIBILITY_MAGNIFICATION_CAPABILITY:Ljava/lang/String; = "accessibility_magnification_capability"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist ACCESSIBILITY_MAGNIFICATION_CURSOR_FOLLOWING_MODE:Ljava/lang/String; = "accessibility_magnification_cursor_following_mode"

.field public static final blacklist ACCESSIBILITY_MAGNIFICATION_CURSOR_FOLLOWING_MODE_CENTER:I = 0x1

.field public static final blacklist ACCESSIBILITY_MAGNIFICATION_CURSOR_FOLLOWING_MODE_CONTINUOUS:I = 0x0

.field public static final blacklist ACCESSIBILITY_MAGNIFICATION_CURSOR_FOLLOWING_MODE_EDGE:I = 0x2

.field public static final blacklist ACCESSIBILITY_MAGNIFICATION_FOLLOW_TYPING_ENABLED:Ljava/lang/String; = "accessibility_magnification_follow_typing_enabled"

.field public static final blacklist ACCESSIBILITY_MAGNIFICATION_JOYSTICK_ENABLED:Ljava/lang/String; = "accessibility_magnification_joystick_enabled"

.field public static final blacklist ACCESSIBILITY_MAGNIFICATION_MODE:Ljava/lang/String; = "accessibility_magnification_mode"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist ACCESSIBILITY_MAGNIFICATION_MODE_ALL:I = 0x3

.field public static final blacklist ACCESSIBILITY_MAGNIFICATION_MODE_FULLSCREEN:I = 0x1

.field public static final blacklist ACCESSIBILITY_MAGNIFICATION_MODE_NONE:I = 0x0

.field public static final blacklist ACCESSIBILITY_MAGNIFICATION_MODE_WINDOW:I = 0x2

.field public static final blacklist ACCESSIBILITY_MAGNIFICATION_TWO_FINGER_TRIPLE_TAP_ENABLED:Ljava/lang/String; = "accessibility_magnification_two_finger_triple_tap_enabled"

.field public static final blacklist ACCESSIBILITY_MOUSE_KEYS_ENABLED:Ljava/lang/String; = "accessibility_mouse_keys_enabled"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist ACCESSIBILITY_NON_INTERACTIVE_UI_TIMEOUT_MS:Ljava/lang/String; = "accessibility_non_interactive_ui_timeout_ms"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist ACCESSIBILITY_PINCH_TO_ZOOM_ANYWHERE_ENABLED:Ljava/lang/String; = "accessibility_pinch_to_zoom_anywhere_enabled"

.field public static final blacklist ACCESSIBILITY_QS_TARGETS:Ljava/lang/String; = "accessibility_qs_targets"

.field public static final greylist-max-o ACCESSIBILITY_SHORTCUT_DIALOG_SHOWN:Ljava/lang/String; = "accessibility_shortcut_dialog_shown"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o ACCESSIBILITY_SHORTCUT_ON_LOCK_SCREEN:Ljava/lang/String; = "accessibility_shortcut_on_lock_screen"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist ACCESSIBILITY_SHORTCUT_TARGET_MAGNIFICATION_CONTROLLER:Ljava/lang/String; = "com.android.server.accessibility.MagnificationController"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-r ACCESSIBILITY_SHORTCUT_TARGET_SERVICE:Ljava/lang/String; = "accessibility_shortcut_target_service"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist ACCESSIBILITY_SHOW_WINDOW_MAGNIFICATION_PROMPT:Ljava/lang/String; = "accessibility_show_window_magnification_prompt"

.field public static final blacklist ACCESSIBILITY_SINGLE_FINGER_PANNING_ENABLED:Ljava/lang/String; = "accessibility_single_finger_panning_enabled"

.field public static final blacklist ACCESSIBILITY_SLOW_KEYS:Ljava/lang/String; = "accessibility_slow_keys"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o ACCESSIBILITY_SOFT_KEYBOARD_MODE:Ljava/lang/String; = "accessibility_soft_keyboard_mode"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist ACCESSIBILITY_SPEAK_PASSWORD:Ljava/lang/String; = "speak_password"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist ACCESSIBILITY_STICKY_KEYS:Ljava/lang/String; = "accessibility_sticky_keys"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist ACTIVE_UNLOCK_ON_BIOMETRIC_FAIL:Ljava/lang/String; = "active_unlock_on_biometric_fail"

.field public static final blacklist ACTIVE_UNLOCK_ON_FACE_ACQUIRE_INFO:Ljava/lang/String; = "active_unlock_on_face_acquire_info"

.field public static final blacklist ACTIVE_UNLOCK_ON_FACE_ERRORS:Ljava/lang/String; = "active_unlock_on_face_errors"

.field public static final blacklist ACTIVE_UNLOCK_ON_UNLOCK_INTENT:Ljava/lang/String; = "active_unlock_on_unlock_intent"

.field public static final blacklist ACTIVE_UNLOCK_ON_UNLOCK_INTENT_LEGACY:Ljava/lang/String; = "active_unlock_on_unlock_intent_legacy"

.field public static final blacklist ACTIVE_UNLOCK_ON_UNLOCK_INTENT_WHEN_BIOMETRIC_ENROLLED:Ljava/lang/String; = "active_unlock_on_unlock_intent_when_biometric_enrolled"

.field public static final blacklist ACTIVE_UNLOCK_ON_WAKE:Ljava/lang/String; = "active_unlock_on_wake"

.field public static final blacklist ACTIVE_UNLOCK_WAKEUPS_CONSIDERED_UNLOCK_INTENTS:Ljava/lang/String; = "active_unlock_wakeups_considered_unlock_intents"

.field public static final blacklist ACTIVE_UNLOCK_WAKEUPS_TO_FORCE_DISMISS_KEYGUARD:Ljava/lang/String; = "active_unlock_wakeups_to_force_dismiss_keyguard"

.field public static final blacklist ADAPTIVE_CHARGING_ENABLED:Ljava/lang/String; = "adaptive_charging_enabled"

.field public static final blacklist ADAPTIVE_CONNECTIVITY_ENABLED:Ljava/lang/String; = "adaptive_connectivity_enabled"

.field public static final blacklist ADAPTIVE_CONNECTIVITY_MOBILE_NETWORK_ENABLED:Ljava/lang/String; = "adaptive_connectivity_mobile_network_enabled"

.field public static final blacklist ADAPTIVE_CONNECTIVITY_WIFI_ENABLED:Ljava/lang/String; = "adaptive_connectivity_wifi_enabled"

.field public static final blacklist ADAPTIVE_SLEEP:Ljava/lang/String; = "adaptive_sleep"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist ADB_ENABLED:Ljava/lang/String; = "adb_enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist ADVANCED_PROTECTION_MODE:Ljava/lang/String; = "advanced_protection_mode"

.field public static final whitelist ALLOWED_GEOLOCATION_ORIGINS:Ljava/lang/String; = "allowed_geolocation_origins"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist ALLOW_MOCK_LOCATION:Ljava/lang/String; = "mock_location"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist ALLOW_PRIMARY_GAIA_ACCOUNT_REMOVAL_FOR_TESTS:Ljava/lang/String; = "allow_primary_gaia_account_removal_for_tests"

.field public static final greylist-max-o ALWAYS_ON_VPN_APP:Ljava/lang/String; = "always_on_vpn_app"

.field public static final greylist-max-o ALWAYS_ON_VPN_LOCKDOWN:Ljava/lang/String; = "always_on_vpn_lockdown"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist ALWAYS_ON_VPN_LOCKDOWN_WHITELIST:Ljava/lang/String; = "always_on_vpn_lockdown_whitelist"
    .annotation runtime Landroid/provider/Settings$Readable;
        maxTargetSdk = 0x1f
    .end annotation
.end field

.field public static final blacklist AMBIENT_CONTEXT_CONSENT_COMPONENT:Ljava/lang/String; = "ambient_context_consent_component"

.field public static final blacklist AMBIENT_CONTEXT_EVENT_ARRAY_EXTRA_KEY:Ljava/lang/String; = "ambient_context_event_array_key"

.field public static final blacklist AMBIENT_CONTEXT_PACKAGE_NAME_EXTRA_KEY:Ljava/lang/String; = "ambient_context_package_name_key"

.field public static final whitelist ANDROID_ID:Ljava/lang/String; = "android_id"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-r ANR_SHOW_BACKGROUND:Ljava/lang/String; = "anr_show_background"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist ASSISTANT:Ljava/lang/String; = "assistant"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o ASSIST_DISCLOSURE_ENABLED:Ljava/lang/String; = "assist_disclosure_enabled"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o ASSIST_GESTURE_ENABLED:Ljava/lang/String; = "assist_gesture_enabled"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o ASSIST_GESTURE_SENSITIVITY:Ljava/lang/String; = "assist_gesture_sensitivity"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist ASSIST_GESTURE_SETUP_COMPLETE:Ljava/lang/String; = "assist_gesture_setup_complete"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o ASSIST_GESTURE_SILENCE_ALERTS_ENABLED:Ljava/lang/String; = "assist_gesture_silence_alerts_enabled"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o ASSIST_GESTURE_WAKE_ENABLED:Ljava/lang/String; = "assist_gesture_wake_enabled"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist ASSIST_HANDLES_LEARNING_EVENT_COUNT:Ljava/lang/String; = "reminder_exp_learning_event_count"

.field public static final blacklist ASSIST_HANDLES_LEARNING_TIME_ELAPSED_MILLIS:Ljava/lang/String; = "reminder_exp_learning_time_elapsed"

.field public static final blacklist ASSIST_LONG_PRESS_HOME_ENABLED:Ljava/lang/String; = "assist_long_press_home_enabled"

.field public static final greylist-max-o ASSIST_SCREENSHOT_ENABLED:Ljava/lang/String; = "assist_screenshot_enabled"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o ASSIST_STRUCTURE_ENABLED:Ljava/lang/String; = "assist_structure_enabled"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist ASSIST_TOUCH_GESTURE_ENABLED:Ljava/lang/String; = "assist_touch_gesture_enabled"

.field public static final blacklist ATTENTIVE_TIMEOUT:Ljava/lang/String; = "attentive_timeout"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist AUDIO_DEVICE_INVENTORY:Ljava/lang/String; = "audio_device_inventory"

.field public static final blacklist AUDIO_SAFE_CSD_AS_A_FEATURE_ENABLED:Ljava/lang/String; = "audio_safe_csd_as_a_feature_enabled"

.field public static final whitelist AUTOFILL_FEATURE_FIELD_CLASSIFICATION:Ljava/lang/String; = "autofill_field_classification"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist AUTOFILL_SERVICE:Ljava/lang/String; = "autofill_service"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o AUTOFILL_SERVICE_SEARCH_URI:Ljava/lang/String; = "autofill_service_search_uri"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist AUTOFILL_USER_DATA_MAX_CATEGORY_COUNT:Ljava/lang/String; = "autofill_user_data_max_category_count"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist AUTOFILL_USER_DATA_MAX_FIELD_CLASSIFICATION_IDS_SIZE:Ljava/lang/String; = "autofill_user_data_max_field_classification_size"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist AUTOFILL_USER_DATA_MAX_USER_DATA_SIZE:Ljava/lang/String; = "autofill_user_data_max_user_data_size"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist AUTOFILL_USER_DATA_MAX_VALUE_LENGTH:Ljava/lang/String; = "autofill_user_data_max_value_length"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist AUTOFILL_USER_DATA_MIN_VALUE_LENGTH:Ljava/lang/String; = "autofill_user_data_min_value_length"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o AUTOMATIC_STORAGE_MANAGER_BYTES_CLEARED:Ljava/lang/String; = "automatic_storage_manager_bytes_cleared"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o AUTOMATIC_STORAGE_MANAGER_DAYS_TO_RETAIN:Ljava/lang/String; = "automatic_storage_manager_days_to_retain"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o AUTOMATIC_STORAGE_MANAGER_DAYS_TO_RETAIN_DEFAULT:I = 0x5a

.field public static final greylist-max-o AUTOMATIC_STORAGE_MANAGER_ENABLED:Ljava/lang/String; = "automatic_storage_manager_enabled"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o AUTOMATIC_STORAGE_MANAGER_LAST_RUN:Ljava/lang/String; = "automatic_storage_manager_last_run"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o AUTOMATIC_STORAGE_MANAGER_TURNED_OFF_BY_POLICY:Ljava/lang/String; = "automatic_storage_manager_turned_off_by_policy"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist AUTO_REVOKE_DISABLED:Ljava/lang/String; = "auto_revoke_disabled"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist AWARE_ENABLED:Ljava/lang/String; = "aware_enabled"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist AWARE_LOCK_ENABLED:Ljava/lang/String; = "aware_lock_enabled"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist AWARE_TAP_PAUSE_GESTURE_COUNT:Ljava/lang/String; = "aware_tap_pause_gesture_count"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist AWARE_TAP_PAUSE_TOUCH_COUNT:Ljava/lang/String; = "aware_tap_pause_touch_count"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist BACKGROUND_DATA:Ljava/lang/String; = "background_data"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-r BACKUP_AUTO_RESTORE:Ljava/lang/String; = "backup_auto_restore"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-r BACKUP_ENABLED:Ljava/lang/String; = "backup_enabled"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o BACKUP_LOCAL_TRANSPORT_PARAMETERS:Ljava/lang/String; = "backup_local_transport_parameters"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o BACKUP_MANAGER_CONSTANTS:Ljava/lang/String; = "backup_manager_constants"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-r BACKUP_PROVISIONED:Ljava/lang/String; = "backup_provisioned"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist BACKUP_SCHEDULING_ENABLED:Ljava/lang/String; = "backup_scheduling_enabled"

.field public static final greylist-max-r BACKUP_TRANSPORT:Ljava/lang/String; = "backup_transport"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist BACK_GESTURE_INSET_SCALE_LEFT:Ljava/lang/String; = "back_gesture_inset_scale_left"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist BACK_GESTURE_INSET_SCALE_RIGHT:Ljava/lang/String; = "back_gesture_inset_scale_right"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist BIOMETRIC_APP_ENABLED:Ljava/lang/String; = "biometric_app_enabled"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist BIOMETRIC_DEBUG_ENABLED:Ljava/lang/String; = "biometric_debug_enabled"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist BIOMETRIC_FACE_VIRTUAL_ENABLED:Ljava/lang/String; = "biometric_face_virtual_enabled"

.field public static final blacklist BIOMETRIC_FINGERPRINT_VIRTUAL_ENABLED:Ljava/lang/String; = "biometric_fingerprint_virtual_enabled"

.field public static final blacklist BIOMETRIC_KEYGUARD_ENABLED:Ljava/lang/String; = "biometric_keyguard_enabled"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist BIOMETRIC_VIRTUAL_ENABLED:Ljava/lang/String; = "biometric_virtual_enabled"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist BLUETOOTH_ADDRESS:Ljava/lang/String; = "bluetooth_address"
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation runtime Landroid/provider/Settings$Readable;
        maxTargetSdk = 0x1f
    .end annotation
.end field

.field public static final blacklist BLUETOOTH_ADDR_VALID:Ljava/lang/String; = "bluetooth_addr_valid"
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation runtime Landroid/provider/Settings$Readable;
        maxTargetSdk = 0x1f
    .end annotation
.end field

.field public static final blacklist BLUETOOTH_LE_BROADCAST_APP_SOURCE_NAME:Ljava/lang/String; = "bluetooth_le_broadcast_app_source_name"

.field public static final blacklist BLUETOOTH_LE_BROADCAST_CODE:Ljava/lang/String; = "bluetooth_le_broadcast_code"

.field public static final blacklist BLUETOOTH_LE_BROADCAST_FALLBACK_ACTIVE_DEVICE_ADDRESS:Ljava/lang/String; = "bluetooth_le_broadcast_fallback_active_device_address"

.field public static final blacklist BLUETOOTH_LE_BROADCAST_IMPROVE_COMPATIBILITY:Ljava/lang/String; = "bluetooth_le_broadcast_improve_compatibility"

.field public static final blacklist BLUETOOTH_LE_BROADCAST_NAME:Ljava/lang/String; = "bluetooth_le_broadcast_name"

.field public static final blacklist BLUETOOTH_LE_BROADCAST_PROGRAM_INFO:Ljava/lang/String; = "bluetooth_le_broadcast_program_info"

.field public static final blacklist BLUETOOTH_NAME:Ljava/lang/String; = "bluetooth_name"
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation runtime Landroid/provider/Settings$Readable;
        maxTargetSdk = 0x1f
    .end annotation
.end field

.field public static final whitelist BLUETOOTH_ON:Ljava/lang/String; = "bluetooth_on"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o BLUETOOTH_ON_WHILE_DRIVING:Ljava/lang/String; = "bluetooth_on_while_driving"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist BROWSER_CONTENT_FILTERS_ENABLED:Ljava/lang/String; = "browser_content_filters_enabled"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist BUBBLE_IMPORTANT_CONVERSATIONS:Ljava/lang/String; = "bubble_important_conversations"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o BUGREPORT_IN_POWER_MENU:Ljava/lang/String; = "bugreport_in_power_menu"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist CALL_SCREENING_DEFAULT_COMPONENT:Ljava/lang/String; = "call_screening_default_component"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist CAMERA_AUTOROTATE:Ljava/lang/String; = "camera_autorotate"

.field public static final greylist-max-o CAMERA_DOUBLE_TAP_POWER_GESTURE_DISABLED:Ljava/lang/String; = "camera_double_tap_power_gesture_disabled"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o CAMERA_DOUBLE_TWIST_TO_FLIP_ENABLED:Ljava/lang/String; = "camera_double_twist_to_flip_enabled"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist CAMERA_EXTENSIONS_FALLBACK:Ljava/lang/String; = "camera_extensions_fallback"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o CAMERA_GESTURE_DISABLED:Ljava/lang/String; = "camera_gesture_disabled"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o CAMERA_LIFT_TRIGGER_ENABLED:Ljava/lang/String; = "camera_lift_trigger_enabled"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o CAMERA_LIFT_TRIGGER_ENABLED_DEFAULT:I = 0x1

.field public static final greylist-max-o CARRIER_APPS_HANDLED:Ljava/lang/String; = "carrier_apps_handled"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist CHARGE_OPTIMIZATION_MODE:Ljava/lang/String; = "charge_optimization_mode"

.field public static final blacklist CHARGING_SOUNDS_ENABLED:Ljava/lang/String; = "charging_sounds_enabled"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist CHARGING_VIBRATION_ENABLED:Ljava/lang/String; = "charging_vibration_enabled"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist CLIPBOARD_SHOW_ACCESS_NOTIFICATIONS:Ljava/lang/String; = "clipboard_show_access_notifications"

.field private static final greylist-max-o CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist-max-o CMAS_ADDITIONAL_BROADCAST_PKG:Ljava/lang/String; = "cmas_additional_broadcast_pkg"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist COMMUNAL_MODE_ENABLED:Ljava/lang/String; = "communal_mode_enabled"

.field public static final blacklist COMMUNAL_MODE_TRUSTED_NETWORKS:Ljava/lang/String; = "communal_mode_trusted_networks"

.field public static final blacklist COMPAT_UI_EDUCATION_SHOWING:Ljava/lang/String; = "compat_ui_education_showing"

.field public static final whitelist COMPLETED_CATEGORY_PREFIX:Ljava/lang/String; = "suggested.completed_category."
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o CONNECTIVITY_RELEASE_PENDING_INTENT_DELAY_MS:Ljava/lang/String; = "connectivity_release_pending_intent_delay_ms"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist CONTENT_CAPTURE_ENABLED:Ljava/lang/String; = "content_capture_enabled"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist CONTENT_URI:Landroid/net/Uri;

.field public static final blacklist CONTEXTUAL_SCREEN_TIMEOUT_ENABLED:Ljava/lang/String; = "contextual_screen_timeout_enabled"

.field public static final blacklist CONTEXTUAL_SEARCH_PACKAGE:Ljava/lang/String; = "contextual_search_package"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist CONTRAST_LEVEL:Ljava/lang/String; = "contrast_level"

.field public static final blacklist CONTROLS_ENABLED:Ljava/lang/String; = "controls_enabled"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CREDENTIAL_SERVICE:Ljava/lang/String; = "credential_service"

.field public static final blacklist CREDENTIAL_SERVICE_PRIMARY:Ljava/lang/String; = "credential_service_primary"

.field public static final blacklist CROSS_PROFILE_CALENDAR_ENABLED:Ljava/lang/String; = "cross_profile_calendar_enabled"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist CUSTOM_BUGREPORT_HANDLER_APP:Ljava/lang/String; = "custom_bugreport_handler_app"

.field public static final blacklist CUSTOM_BUGREPORT_HANDLER_USER:Ljava/lang/String; = "custom_bugreport_handler_user"

.field public static final blacklist DARK_MODE_DIALOG_SEEN:Ljava/lang/String; = "dark_mode_dialog_seen"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist DARK_THEME_CUSTOM_END_TIME:Ljava/lang/String; = "dark_theme_custom_end_time"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist DARK_THEME_CUSTOM_START_TIME:Ljava/lang/String; = "dark_theme_custom_start_time"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist DATA_ROAMING:Ljava/lang/String; = "data_roaming"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist DEFAULT_DEVICE_INPUT_METHOD:Ljava/lang/String; = "default_device_input_method"

.field public static final whitelist DEFAULT_INPUT_METHOD:Ljava/lang/String; = "default_input_method"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist DEFAULT_NOTE_TASK_PROFILE:Ljava/lang/String; = "default_note_task_profile"

.field public static final blacklist DEFAULT_VOICE_INPUT_METHOD:Ljava/lang/String; = "default_voice_input_method"

.field public static final whitelist DEVELOPMENT_SETTINGS_ENABLED:Ljava/lang/String; = "development_settings_enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o DEVICE_PAIRED:Ljava/lang/String; = "device_paired"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist DEVICE_PROVISIONED:Ljava/lang/String; = "device_provisioned"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist DEVICE_STATE_ROTATION_KEY_FOLDED:I = 0x0

.field public static final blacklist DEVICE_STATE_ROTATION_KEY_HALF_FOLDED:I = 0x1

.field public static final blacklist DEVICE_STATE_ROTATION_KEY_REAR_DISPLAY:I = 0x3

.field public static final blacklist DEVICE_STATE_ROTATION_KEY_UNFOLDED:I = 0x2

.field public static final blacklist DEVICE_STATE_ROTATION_KEY_UNKNOWN:I = -0x1

.field public static final blacklist DEVICE_STATE_ROTATION_LOCK:Ljava/lang/String; = "device_state_rotation_lock"

.field public static final blacklist DEVICE_STATE_ROTATION_LOCK_IGNORED:I = 0x0

.field public static final blacklist DEVICE_STATE_ROTATION_LOCK_LOCKED:I = 0x1

.field public static final blacklist DEVICE_STATE_ROTATION_LOCK_UNLOCKED:I = 0x2

.field public static final greylist-max-r DIALER_DEFAULT_APPLICATION:Ljava/lang/String; = "dialer_default_application"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist DISABLED_PRINT_SERVICES:Ljava/lang/String; = "disabled_print_services"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o DISABLED_SYSTEM_INPUT_METHODS:Ljava/lang/String; = "disabled_system_input_methods"
    .annotation runtime Landroid/provider/Settings$Readable;
        maxTargetSdk = 0x21
    .end annotation
.end field

.field public static final blacklist DISABLE_ADAPTIVE_AUTH_LIMIT_LOCK:Ljava/lang/String; = "disable_adaptive_auth_limit_lock"

.field public static final blacklist DISABLE_SECURE_WINDOWS:Ljava/lang/String; = "disable_secure_windows"

.field public static final greylist-max-o DISPLAY_DENSITY_FORCED:Ljava/lang/String; = "display_density_forced"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist DISPLAY_WHITE_BALANCE_ENABLED:Ljava/lang/String; = "display_white_balance_enabled"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist DND_CONFIGS_MIGRATED:Ljava/lang/String; = "dnd_settings_migrated"

.field public static final blacklist DOCKED_CLOCK_FACE:Ljava/lang/String; = "docked_clock_face"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist DOCK_SETUP_COMPLETED:I = 0xa

.field public static final blacklist DOCK_SETUP_INCOMPLETE:I = 0x4

.field public static final blacklist DOCK_SETUP_NOT_STARTED:I = 0x0

.field public static final blacklist DOCK_SETUP_PAUSED:I = 0x2

.field public static final blacklist DOCK_SETUP_PROMPTED:I = 0x3

.field public static final blacklist DOCK_SETUP_STARTED:I = 0x1

.field public static final blacklist DOCK_SETUP_STATE:Ljava/lang/String; = "dock_setup_state"

.field public static final blacklist DOCK_SETUP_TIMED_OUT:I = 0xb

.field public static final blacklist DOUBLE_TAP_POWER_BUTTON_GESTURE:Ljava/lang/String; = "double_tap_power_button_gesture"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist DOUBLE_TAP_POWER_BUTTON_GESTURE_ENABLED:Ljava/lang/String; = "double_tap_power_button_gesture_enabled"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist DOUBLE_TAP_TO_SLEEP:Ljava/lang/String; = "double_tap_to_sleep"

.field public static final greylist-max-o DOUBLE_TAP_TO_WAKE:Ljava/lang/String; = "double_tap_to_wake"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist DOZE_ALWAYS_ON:Ljava/lang/String; = "doze_always_on"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist DOZE_ALWAYS_ON_WALLPAPER_ENABLED:Ljava/lang/String; = "doze_always_on_wallpaper_enabled"

.field public static final blacklist DOZE_DOUBLE_TAP_GESTURE:Ljava/lang/String; = "doze_pulse_on_double_tap"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist DOZE_ENABLED:Ljava/lang/String; = "doze_enabled"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist DOZE_PICK_UP_GESTURE:Ljava/lang/String; = "doze_pulse_on_pick_up"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o DOZE_PULSE_ON_LONG_PRESS:Ljava/lang/String; = "doze_pulse_on_long_press"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist DOZE_QUICK_PICKUP_GESTURE:Ljava/lang/String; = "doze_quick_pickup_gesture"

.field public static final blacklist DOZE_TAP_SCREEN_GESTURE:Ljava/lang/String; = "doze_tap_gesture"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist DOZE_WAKE_DISPLAY_GESTURE:Ljava/lang/String; = "doze_wake_display_gesture"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist DOZE_WAKE_LOCK_SCREEN_GESTURE:Ljava/lang/String; = "doze_wake_screen_gesture"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist DUAL_SHADE:Ljava/lang/String; = "dual_shade"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o EMERGENCY_ASSISTANCE_APPLICATION:Ljava/lang/String; = "emergency_assistance_application"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist EMERGENCY_GESTURE_ENABLED:Ljava/lang/String; = "emergency_gesture_enabled"

.field public static final blacklist EMERGENCY_GESTURE_SOUND_ENABLED:Ljava/lang/String; = "emergency_gesture_sound_enabled"

.field public static final blacklist EMERGENCY_GESTURE_UI_LAST_STARTED_MILLIS:Ljava/lang/String; = "emergency_gesture_ui_last_started_millis"

.field public static final blacklist EMERGENCY_GESTURE_UI_SHOWING:Ljava/lang/String; = "emergency_gesture_ui_showing"

.field public static final blacklist EMERGENCY_THERMAL_ALERT_DISABLED:Ljava/lang/String; = "emergency_thermal_alert_disabled"

.field public static final blacklist EM_VALUE:Ljava/lang/String; = "em_value"

.field public static final blacklist ENABLED_ACCESSIBILITY_AUDIO_DESCRIPTION_BY_DEFAULT:Ljava/lang/String; = "enabled_accessibility_audio_description_by_default"

.field public static final whitelist ENABLED_ACCESSIBILITY_SERVICES:Ljava/lang/String; = "enabled_accessibility_services"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist ENABLED_INPUT_METHODS:Ljava/lang/String; = "enabled_input_methods"
    .annotation runtime Landroid/provider/Settings$Readable;
        maxTargetSdk = 0x21
    .end annotation
.end field

.field public static final greylist-max-o ENABLED_NOTIFICATION_ASSISTANT:Ljava/lang/String; = "enabled_notification_assistant"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist ENABLED_NOTIFICATION_LISTENERS:Ljava/lang/String; = "enabled_notification_listeners"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist ENABLED_NOTIFICATION_POLICY_ACCESS_PACKAGES:Ljava/lang/String; = "enabled_notification_policy_access_packages"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist ENABLED_PRINT_SERVICES:Ljava/lang/String; = "enabled_print_services"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-r ENABLED_VR_LISTENERS:Ljava/lang/String; = "enabled_vr_listeners"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o ENHANCED_VOICE_PRIVACY_ENABLED:Ljava/lang/String; = "enhanced_voice_privacy_enabled"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist EXTRA_AUTOMATIC_POWER_SAVE_MODE:Ljava/lang/String; = "extra_automatic_power_save_mode"

.field public static final blacklist EXTRA_LOW_POWER_WARNING_ACKNOWLEDGED:Ljava/lang/String; = "extra_low_power_warning_acknowledged"

.field public static final blacklist FACE_APP_ENABLED:Ljava/lang/String; = "face_app_enabled"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist FACE_KEYGUARD_ENABLED:Ljava/lang/String; = "face_keyguard_enabled"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist FACE_UNLOCK_ALWAYS_REQUIRE_CONFIRMATION:Ljava/lang/String; = "face_unlock_always_require_confirmation"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist FACE_UNLOCK_APP_ENABLED:Ljava/lang/String; = "face_unlock_app_enabled"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist FACE_UNLOCK_ATTENTION_REQUIRED:Ljava/lang/String; = "face_unlock_attention_required"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist FACE_UNLOCK_DISMISSES_KEYGUARD:Ljava/lang/String; = "face_unlock_dismisses_keyguard"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist FACE_UNLOCK_DIVERSITY_REQUIRED:Ljava/lang/String; = "face_unlock_diversity_required"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist FACE_UNLOCK_KEYGUARD_ENABLED:Ljava/lang/String; = "face_unlock_keyguard_enabled"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist FACE_UNLOCK_RE_ENROLL:Ljava/lang/String; = "face_unlock_re_enroll"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist FINGERPRINT_APP_ENABLED:Ljava/lang/String; = "fingerptint_app_enabled"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist FINGERPRINT_KEYGUARD_ENABLED:Ljava/lang/String; = "fingerprint_keyguard_enabled"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist FINGERPRINT_SIDE_FPS_AUTH_DOWNTIME:Ljava/lang/String; = "fingerprint_side_fps_auth_downtime"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist FINGERPRINT_SIDE_FPS_BP_POWER_WINDOW:Ljava/lang/String; = "fingerprint_side_fps_bp_power_window"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist FINGERPRINT_SIDE_FPS_ENROLL_TAP_WINDOW:Ljava/lang/String; = "fingerprint_side_fps_enroll_tap_window"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist FINGERPRINT_SIDE_FPS_KG_POWER_WINDOW:Ljava/lang/String; = "fingerprint_side_fps_kg_power_window"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist FLASHLIGHT_AVAILABLE:Ljava/lang/String; = "flashlight_available"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist FLASHLIGHT_ENABLED:Ljava/lang/String; = "flashlight_enabled"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist FONT_WEIGHT_ADJUSTMENT:Ljava/lang/String; = "font_weight_adjustment"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist GAME_DASHBOARD_ALWAYS_ON:Ljava/lang/String; = "game_dashboard_always_on"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist GLANCEABLE_HUB_ENABLED:Ljava/lang/String; = "glanceable_hub_enabled"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist GLANCEABLE_HUB_START_CHARGING:I = 0x1

.field public static final blacklist GLANCEABLE_HUB_START_CHARGING_UPRIGHT:I = 0x2

.field public static final blacklist GLANCEABLE_HUB_START_DOCKED:I = 0x3

.field public static final blacklist GLANCEABLE_HUB_START_NEVER:I = 0x0

.field public static final blacklist GLOBAL_ACTIONS_PANEL_AVAILABLE:Ljava/lang/String; = "global_actions_panel_available"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist GLOBAL_ACTIONS_PANEL_DEBUG_ENABLED:Ljava/lang/String; = "global_actions_panel_debug_enabled"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist GLOBAL_ACTIONS_PANEL_ENABLED:Ljava/lang/String; = "global_actions_panel_enabled"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist HBM_SETTING_KEY:Ljava/lang/String; = "com.android.server.display.HBM_SETTING_KEY"

.field public static final blacklist HDMI_CEC_SET_MENU_LANGUAGE_DENYLIST:Ljava/lang/String; = "hdmi_cec_set_menu_language_denylist"

.field public static final blacklist HEARING_AID_CALL_ROUTING:Ljava/lang/String; = "hearing_aid_call_routing"

.field public static final blacklist HEARING_AID_MEDIA_ROUTING:Ljava/lang/String; = "hearing_aid_media_routing"

.field public static final blacklist HEARING_AID_NOTIFICATION_ROUTING:Ljava/lang/String; = "hearing_aid_notification_routing"

.field public static final blacklist HEARING_AID_RINGTONE_ROUTING:Ljava/lang/String; = "hearing_aid_ringtone_routing"

.field public static final blacklist HIDE_PRIVATESPACE_ENTRY_POINT:Ljava/lang/String; = "hide_privatespace_entry_point"

.field public static final blacklist HINGE_ANGLE_LIDEVENT_ENABLED:Ljava/lang/String; = "hinge_angle_lidevent_enabled"

.field public static final whitelist HTTP_PROXY:Ljava/lang/String; = "http_proxy"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist HUB_MODE_TUTORIAL_COMPLETED:I = 0xa

.field public static final blacklist HUB_MODE_TUTORIAL_NOT_STARTED:I = 0x0

.field public static final blacklist HUB_MODE_TUTORIAL_STARTED:I = 0x1

.field public static final blacklist HUB_MODE_TUTORIAL_STATE:Ljava/lang/String; = "hub_mode_tutorial_state"

.field public static final whitelist HUSH_GESTURE_USED:Ljava/lang/String; = "hush_gesture_used"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-r IMMERSIVE_MODE_CONFIRMATIONS:Ljava/lang/String; = "immersive_mode_confirmations"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o INCALL_BACK_BUTTON_BEHAVIOR:Ljava/lang/String; = "incall_back_button_behavior"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o INCALL_BACK_BUTTON_BEHAVIOR_DEFAULT:I = 0x0

.field public static final greylist-max-o INCALL_BACK_BUTTON_BEHAVIOR_HANGUP:I = 0x1

.field public static final greylist-max-o INCALL_BACK_BUTTON_BEHAVIOR_NONE:I = 0x0

.field public static final greylist INCALL_POWER_BUTTON_BEHAVIOR:Ljava/lang/String; = "incall_power_button_behavior"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o INCALL_POWER_BUTTON_BEHAVIOR_DEFAULT:I = 0x1

.field public static final greylist-max-o INCALL_POWER_BUTTON_BEHAVIOR_HANGUP:I = 0x2

.field public static final greylist-max-o INCALL_POWER_BUTTON_BEHAVIOR_SCREEN_OFF:I = 0x1

.field public static final greylist-max-o INPUT_METHODS_SUBTYPE_HISTORY:Ljava/lang/String; = "input_methods_subtype_history"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist INPUT_METHOD_SELECTOR_VISIBILITY:Ljava/lang/String; = "input_method_selector_visibility"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist INSTALL_NON_MARKET_APPS:Ljava/lang/String; = "install_non_market_apps"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist INSTANT_APPS_ENABLED:Ljava/lang/String; = "instant_apps_enabled"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o INSTANT_APP_SETTINGS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist IN_CALL_NOTIFICATION_ENABLED:Ljava/lang/String; = "in_call_notification_enabled"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o KEYGUARD_SLICE_URI:Ljava/lang/String; = "keyguard_slice_uri"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist KEY_REPEAT_DELAY_MS:Ljava/lang/String; = "key_repeat_delay"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist KEY_REPEAT_ENABLED:Ljava/lang/String; = "key_repeat_enabled"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist KEY_REPEAT_TIMEOUT_MS:Ljava/lang/String; = "key_repeat_timeout"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist KNOWN_TRUST_AGENTS_INITIALIZED:Ljava/lang/String; = "known_trust_agents_initialized"

.field public static final whitelist LAST_SETUP_SHOWN:Ljava/lang/String; = "last_setup_shown"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist LAUNCHER_TASKBAR_EDUCATION_SHOWING:Ljava/lang/String; = "launcher_taskbar_education_showing"

.field public static final greylist-max-o LEGACY_RESTORE_SETTINGS:[Ljava/lang/String;
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist LOCATION_ACCESS_CHECK_DELAY_MILLIS:Ljava/lang/String; = "location_access_check_delay_millis"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist LOCATION_ACCESS_CHECK_INTERVAL_MILLIS:Ljava/lang/String; = "location_access_check_interval_millis"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o LOCATION_CHANGER:Ljava/lang/String; = "location_changer"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o LOCATION_CHANGER_QUICK_SETTINGS:I = 0x2

.field public static final greylist-max-o LOCATION_CHANGER_SYSTEM_SETTINGS:I = 0x1

.field public static final greylist-max-o LOCATION_CHANGER_UNKNOWN:I = 0x0

.field public static final blacklist LOCATION_COARSE_ACCURACY_M:Ljava/lang/String; = "locationCoarseAccuracy"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist LOCATION_MODE:Ljava/lang/String; = "location_mode"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist LOCATION_MODE_BATTERY_SAVING:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist LOCATION_MODE_HIGH_ACCURACY:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist LOCATION_MODE_OFF:I = 0x0

.field public static final whitelist LOCATION_MODE_ON:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist LOCATION_MODE_SENSORS_ONLY:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist LOCATION_PERMISSIONS_UPGRADE_TO_Q_MODE:Ljava/lang/String; = "location_permissions_upgrade_to_q_mode"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist LOCATION_PROVIDERS_ALLOWED:Ljava/lang/String; = "location_providers_allowed"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist LOCATION_SHOW_SYSTEM_OPS:Ljava/lang/String; = "locationShowSystemOps"

.field public static final blacklist LOCATION_TIME_ZONE_DETECTION_ENABLED:Ljava/lang/String; = "location_time_zone_detection_enabled"

.field public static final blacklist LOCKSCREEN_ALLOW_TRIVIAL_CONTROLS:Ljava/lang/String; = "lockscreen_allow_trivial_controls"

.field public static final blacklist LOCKSCREEN_SHOW_CONTROLS:Ljava/lang/String; = "lockscreen_show_controls"

.field public static final blacklist LOCKSCREEN_SHOW_WALLET:Ljava/lang/String; = "lockscreen_show_wallet"

.field public static final blacklist LOCKSCREEN_USE_DOUBLE_LINE_CLOCK:Ljava/lang/String; = "lockscreen_use_double_line_clock"

.field public static final greylist-max-o LOCK_BIOMETRIC_WEAK_FLAGS:Ljava/lang/String; = "lock_biometric_weak_flags"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist LOCK_PATTERN_ENABLED:Ljava/lang/String; = "lock_pattern_autolock"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist LOCK_PATTERN_TACTILE_FEEDBACK_ENABLED:Ljava/lang/String; = "lock_pattern_tactile_feedback_enabled"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist LOCK_PATTERN_VISIBLE:Ljava/lang/String; = "lock_pattern_visible_pattern"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist LOCK_SCREEN_ALLOW_PRIVATE_NOTIFICATIONS:Ljava/lang/String; = "lock_screen_allow_private_notifications"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o LOCK_SCREEN_ALLOW_REMOTE_INPUT:Ljava/lang/String; = "lock_screen_allow_remote_input"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o LOCK_SCREEN_APPWIDGET_IDS:Ljava/lang/String; = "lock_screen_appwidget_ids"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist LOCK_SCREEN_CUSTOM_CLOCK_FACE:Ljava/lang/String; = "lock_screen_custom_clock_face"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o LOCK_SCREEN_FALLBACK_APPWIDGET_ID:Ljava/lang/String; = "lock_screen_fallback_appwidget_id"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-r LOCK_SCREEN_LOCK_AFTER_TIMEOUT:Ljava/lang/String; = "lock_screen_lock_after_timeout"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist LOCK_SCREEN_NOTIFICATION_MINIMALISM:Ljava/lang/String; = "lock_screen_notification_minimalism"

.field public static final greylist-max-o LOCK_SCREEN_OWNER_INFO:Ljava/lang/String; = "lock_screen_owner_info"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-r LOCK_SCREEN_OWNER_INFO_ENABLED:Ljava/lang/String; = "lock_screen_owner_info_enabled"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist LOCK_SCREEN_SHOW_NOTIFICATIONS:Ljava/lang/String; = "lock_screen_show_notifications"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist LOCK_SCREEN_SHOW_ONLY_UNSEEN_NOTIFICATIONS:Ljava/lang/String; = "lock_screen_show_only_unseen_notifications"

.field public static final blacklist LOCK_SCREEN_SHOW_QR_CODE_SCANNER:Ljava/lang/String; = "lock_screen_show_qr_code_scanner"

.field public static final blacklist LOCK_SCREEN_SHOW_SILENT_NOTIFICATIONS:Ljava/lang/String; = "lock_screen_show_silent_notifications"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o LOCK_SCREEN_STICKY_APPWIDGET:Ljava/lang/String; = "lock_screen_sticky_appwidget"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist LOCK_SCREEN_WEATHER_ENABLED:Ljava/lang/String; = "lockscreen_weather_enabled"

.field public static final greylist-max-o LOCK_TO_APP_EXIT_LOCKED:Ljava/lang/String; = "lock_to_app_exit_locked"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist LOGGING_ID:Ljava/lang/String; = "logging_id"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist LONG_PRESS_TIMEOUT:Ljava/lang/String; = "long_press_timeout"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o LOW_POWER_MANUAL_ACTIVATION_COUNT:Ljava/lang/String; = "low_power_manual_activation_count"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o LOW_POWER_WARNING_ACKNOWLEDGED:Ljava/lang/String; = "low_power_warning_acknowledged"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o MANAGED_PROFILE_CONTACT_REMOTE_SEARCH:Ljava/lang/String; = "managed_profile_contact_remote_search"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist MANAGED_PROVISIONING_DPC_DOWNLOADED:Ljava/lang/String; = "managed_provisioning_dpc_downloaded"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist MANDATORY_BIOMETRICS:Ljava/lang/String; = "mandatory_biometrics"

.field public static final blacklist MANDATORY_BIOMETRICS_REQUIREMENTS_SATISFIED:Ljava/lang/String; = "mandatory_biometrics_requirements_satisfied"

.field public static final greylist-max-o MANUAL_RINGER_TOGGLE_COUNT:Ljava/lang/String; = "manual_ringer_toggle_count"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist MATCH_CONTENT_FRAMERATE_ALWAYS:I = 0x2

.field public static final blacklist MATCH_CONTENT_FRAMERATE_NEVER:I = 0x0

.field public static final blacklist MATCH_CONTENT_FRAMERATE_SEAMLESSS_ONLY:I = 0x1

.field public static final blacklist MATCH_CONTENT_FRAME_RATE:Ljava/lang/String; = "match_content_frame_rate"

.field public static final blacklist MEDIA_CONTROLS_LOCK_SCREEN:Ljava/lang/String; = "media_controls_lock_screen"

.field public static final blacklist MEDIA_CONTROLS_RESUME:Ljava/lang/String; = "qs_media_resumption"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist MINIMAL_POST_PROCESSING_ALLOWED:Ljava/lang/String; = "minimal_post_processing_allowed"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist MIRROR_BUILT_IN_DISPLAY:Ljava/lang/String; = "mirror_built_in_display"

.field public static final greylist-max-o MOUNT_PLAY_NOTIFICATION_SND:Ljava/lang/String; = "mount_play_not_snd"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o MOUNT_UMS_AUTOSTART:Ljava/lang/String; = "mount_ums_autostart"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o MOUNT_UMS_NOTIFY_ENABLED:Ljava/lang/String; = "mount_ums_notify_enabled"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o MOUNT_UMS_PROMPT:Ljava/lang/String; = "mount_ums_prompt"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field private static final greylist MOVED_TO_GLOBAL:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist MOVED_TO_LOCK_SETTINGS:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist-max-o MULTI_PRESS_TIMEOUT:Ljava/lang/String; = "multi_press_timeout"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist NAS_SETTINGS_UPDATED:Ljava/lang/String; = "nas_settings_updated"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist NAVIGATION_MODE:Ljava/lang/String; = "navigation_mode"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist NAVIGATION_MODE_RESTORE:Ljava/lang/String; = "navigation_mode_restore"

.field public static final blacklist NAV_BAR_FORCE_VISIBLE:Ljava/lang/String; = "nav_bar_force_visible"

.field public static final blacklist NAV_BAR_KIDS_MODE:Ljava/lang/String; = "nav_bar_kids_mode"

.field public static final blacklist NEARBY_FAST_PAIR_SETTINGS_DEVICES_COMPONENT:Ljava/lang/String; = "nearby_fast_pair_settings_devices_component"

.field public static final blacklist NEARBY_SHARING_COMPONENT:Ljava/lang/String; = "nearby_sharing_component"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist NEARBY_SHARING_SLICE_URI:Ljava/lang/String; = "nearby_sharing_slice_uri"

.field public static final whitelist NETWORK_PREFERENCE:Ljava/lang/String; = "network_preference"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-r NFC_PAYMENT_DEFAULT_COMPONENT:Ljava/lang/String; = "nfc_payment_default_component"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o NFC_PAYMENT_FOREGROUND:Ljava/lang/String; = "nfc_payment_foreground"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o NIGHT_DISPLAY_ACTIVATED:Ljava/lang/String; = "night_display_activated"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o NIGHT_DISPLAY_AUTO_MODE:Ljava/lang/String; = "night_display_auto_mode"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o NIGHT_DISPLAY_COLOR_TEMPERATURE:Ljava/lang/String; = "night_display_color_temperature"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o NIGHT_DISPLAY_CUSTOM_END_TIME:Ljava/lang/String; = "night_display_custom_end_time"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o NIGHT_DISPLAY_CUSTOM_START_TIME:Ljava/lang/String; = "night_display_custom_start_time"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o NIGHT_DISPLAY_LAST_ACTIVATED_TIME:Ljava/lang/String; = "night_display_last_activated_time"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-r NOTIFICATION_BADGING:Ljava/lang/String; = "notification_badging"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist NOTIFICATION_BUBBLES:Ljava/lang/String; = "notification_bubbles"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist NOTIFICATION_DISMISS_RTL:Ljava/lang/String; = "notification_dismiss_rtl"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist NOTIFICATION_HISTORY_ENABLED:Ljava/lang/String; = "notification_history_enabled"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist NOTIFIED_NON_ACCESSIBILITY_CATEGORY_SERVICES:Ljava/lang/String; = "notified_non_accessibility_category_services"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o NUM_ROTATION_SUGGESTIONS_ACCEPTED:Ljava/lang/String; = "num_rotation_suggestions_accepted"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist ODI_CAPTIONS_ENABLED:Ljava/lang/String; = "odi_captions_enabled"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist ODI_CAPTIONS_VOLUME_UI_ENABLED:Ljava/lang/String; = "odi_captions_volume_ui_enabled"

.field public static final blacklist ONE_HANDED_MODE_ACTIVATED:Ljava/lang/String; = "one_handed_mode_activated"

.field public static final blacklist ONE_HANDED_MODE_ENABLED:Ljava/lang/String; = "one_handed_mode_enabled"

.field public static final blacklist ONE_HANDED_MODE_TIMEOUT:Ljava/lang/String; = "one_handed_mode_timeout"

.field public static final blacklist ONE_HANDED_TUTORIAL_SHOW_COUNT:Ljava/lang/String; = "one_handed_tutorial_show_count"

.field public static final blacklist ON_DEVICE_INFERENCE_UNBIND_TIMEOUT_MS:Ljava/lang/String; = "on_device_inference_unbind_timeout_ms"

.field public static final blacklist ON_DEVICE_INTELLIGENCE_IDLE_TIMEOUT_MS:Ljava/lang/String; = "on_device_intelligence_idle_timeout_ms"

.field public static final blacklist ON_DEVICE_INTELLIGENCE_UNBIND_TIMEOUT_MS:Ljava/lang/String; = "on_device_intelligence_unbind_timeout_ms"

.field public static final blacklist OTP_NOTIFICATION_REDACTION_LOCK_TIME:Ljava/lang/String; = "otp_redaction_lock_time"

.field public static final greylist-max-o PACKAGES_TO_CLEAR_DATA_BEFORE_FULL_RESTORE:Ljava/lang/String; = "packages_to_clear_data_before_full_restore"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist PARENTAL_CONTROL_ENABLED:Ljava/lang/String; = "parental_control_enabled"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist PARENTAL_CONTROL_LAST_UPDATE:Ljava/lang/String; = "parental_control_last_update"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist PARENTAL_CONTROL_REDIRECT_URL:Ljava/lang/String; = "parental_control_redirect_url"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o PAYMENT_SERVICE_SEARCH_URI:Ljava/lang/String; = "payment_service_search_uri"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist PEOPLE_STRIP:Ljava/lang/String; = "people_strip"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist POWER_MENU_LOCKED_SHOW_CONTENT:Ljava/lang/String; = "power_menu_locked_show_content"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o PREFERRED_TTY_MODE:Ljava/lang/String; = "preferred_tty_mode"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o PRINT_SERVICE_SEARCH_URI:Ljava/lang/String; = "print_service_search_uri"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist PRIVATE_SPACE_AUTO_LOCK:Ljava/lang/String; = "private_space_auto_lock"

.field public static final blacklist PRIVATE_SPACE_AUTO_LOCK_AFTER_DEVICE_RESTART:I = 0x2

.field public static final blacklist PRIVATE_SPACE_AUTO_LOCK_AFTER_INACTIVITY:I = 0x1

.field public static final blacklist PRIVATE_SPACE_AUTO_LOCK_ON_DEVICE_LOCK:I = 0x0

.field public static final greylist-max-o QS_AUTO_ADDED_TILES:Ljava/lang/String; = "qs_auto_tiles"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o QS_TILES:Ljava/lang/String; = "sysui_qs_tiles"
    .annotation runtime Landroid/provider/Settings$Readable;
        maxTargetSdk = 0x21
    .end annotation
.end field

.field public static final blacklist REDACT_OTP_NOTIFICATION_WHILE_CONNECTED_TO_WIFI:Ljava/lang/String; = "redact_otp_on_wifi"

.field public static final blacklist REDUCE_BRIGHT_COLORS_ACTIVATED:Ljava/lang/String; = "reduce_bright_colors_activated"

.field public static final blacklist REDUCE_BRIGHT_COLORS_LEVEL:Ljava/lang/String; = "reduce_bright_colors_level"

.field public static final blacklist REDUCE_BRIGHT_COLORS_PERSIST_ACROSS_REBOOTS:Ljava/lang/String; = "reduce_bright_colors_persist_across_reboots"

.field public static final blacklist RELEASE_COMPRESS_BLOCKS_ON_INSTALL:Ljava/lang/String; = "release_compress_blocks_on_install"

.field public static final blacklist RESOLUTION_MODE_FULL:I = 0x2

.field public static final blacklist RESOLUTION_MODE_HIGH:I = 0x1

.field public static final blacklist RESOLUTION_MODE_UNKNOWN:I = 0x0

.field public static final whitelist RTT_CALLING_MODE:Ljava/lang/String; = "rtt_calling_mode"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o SCREENSAVER_ACTIVATE_ON_DOCK:Ljava/lang/String; = "screensaver_activate_on_dock"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist SCREENSAVER_ACTIVATE_ON_POSTURED:Ljava/lang/String; = "screensaver_activate_on_postured"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o SCREENSAVER_ACTIVATE_ON_SLEEP:Ljava/lang/String; = "screensaver_activate_on_sleep"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist SCREENSAVER_COMPLICATIONS_ENABLED:Ljava/lang/String; = "screensaver_complications_enabled"

.field public static final greylist-max-o SCREENSAVER_COMPONENTS:Ljava/lang/String; = "screensaver_components"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o SCREENSAVER_DEFAULT_COMPONENT:Ljava/lang/String; = "screensaver_default_component"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o SCREENSAVER_ENABLED:Ljava/lang/String; = "screensaver_enabled"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist SCREENSAVER_HOME_CONTROLS_ENABLED:Ljava/lang/String; = "screensaver_home_controls_enabled"

.field public static final blacklist SCREEN_OFF_UNLOCK_UDFPS_ENABLED:Ljava/lang/String; = "screen_off_udfps_enabled"

.field public static final blacklist SCREEN_RESOLUTION_MODE:Ljava/lang/String; = "screen_resolution_mode"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist SEARCH_ALL_ENTRYPOINTS_ENABLED:Ljava/lang/String; = "search_all_entrypoints_enabled"

.field public static final blacklist SEARCH_CONTENT_FILTERS_ENABLED:Ljava/lang/String; = "search_content_filters_enabled"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o SEARCH_GLOBAL_SEARCH_ACTIVITY:Ljava/lang/String; = "search_global_search_activity"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o SEARCH_MAX_RESULTS_PER_SOURCE:Ljava/lang/String; = "search_max_results_per_source"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o SEARCH_MAX_RESULTS_TO_DISPLAY:Ljava/lang/String; = "search_max_results_to_display"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o SEARCH_MAX_SHORTCUTS_RETURNED:Ljava/lang/String; = "search_max_shortcuts_returned"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o SEARCH_MAX_SOURCE_EVENT_AGE_MILLIS:Ljava/lang/String; = "search_max_source_event_age_millis"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o SEARCH_MAX_STAT_AGE_MILLIS:Ljava/lang/String; = "search_max_stat_age_millis"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o SEARCH_MIN_CLICKS_FOR_SOURCE_RANKING:Ljava/lang/String; = "search_min_clicks_for_source_ranking"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o SEARCH_MIN_IMPRESSIONS_FOR_SOURCE_RANKING:Ljava/lang/String; = "search_min_impressions_for_source_ranking"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o SEARCH_NUM_PROMOTED_SOURCES:Ljava/lang/String; = "search_num_promoted_sources"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o SEARCH_PER_SOURCE_CONCURRENT_QUERY_LIMIT:Ljava/lang/String; = "search_per_source_concurrent_query_limit"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o SEARCH_PREFILL_MILLIS:Ljava/lang/String; = "search_prefill_millis"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o SEARCH_PROMOTED_SOURCE_DEADLINE_MILLIS:Ljava/lang/String; = "search_promoted_source_deadline_millis"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o SEARCH_QUERY_THREAD_CORE_POOL_SIZE:Ljava/lang/String; = "search_query_thread_core_pool_size"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o SEARCH_QUERY_THREAD_MAX_POOL_SIZE:Ljava/lang/String; = "search_query_thread_max_pool_size"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o SEARCH_SHORTCUT_REFRESH_CORE_POOL_SIZE:Ljava/lang/String; = "search_shortcut_refresh_core_pool_size"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o SEARCH_SHORTCUT_REFRESH_MAX_POOL_SIZE:Ljava/lang/String; = "search_shortcut_refresh_max_pool_size"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o SEARCH_SOURCE_TIMEOUT_MILLIS:Ljava/lang/String; = "search_source_timeout_millis"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o SEARCH_THREAD_KEEPALIVE_SECONDS:Ljava/lang/String; = "search_thread_keepalive_seconds"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o SEARCH_WEB_RESULTS_OVERRIDE_LIMIT:Ljava/lang/String; = "search_web_results_override_limit"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist SECURE_FRP_MODE:Ljava/lang/String; = "secure_frp_mode"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SELECTED_INPUT_METHOD_SUBTYPE:Ljava/lang/String; = "selected_input_method_subtype"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-r SELECTED_SPELL_CHECKER:Ljava/lang/String; = "selected_spell_checker"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-r SELECTED_SPELL_CHECKER_SUBTYPE:Ljava/lang/String; = "selected_spell_checker_subtype"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist SETTINGS_CLASSNAME:Ljava/lang/String; = "settings_classname"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist SFPS_PERFORMANT_AUTH_ENABLED:Ljava/lang/String; = "sfps_performant_auth_enabled_v2"

.field public static final greylist-max-o SHOW_FIRST_CRASH_DIALOG_DEV_OPTION:Ljava/lang/String; = "show_first_crash_dialog_dev_option"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o SHOW_IME_WITH_HARD_KEYBOARD:Ljava/lang/String; = "show_ime_with_hard_keyboard"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist SHOW_MEDIA_WHEN_BYPASSING:Ljava/lang/String; = "show_media_when_bypassing"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o SHOW_MODE_AUTO:I = 0x0

.field public static final greylist-max-o SHOW_MODE_HIDDEN:I = 0x1

.field public static final greylist-max-o SHOW_NOTE_ABOUT_NOTIFICATION_HIDING:Ljava/lang/String; = "show_note_about_notification_hiding"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist SHOW_NOTIFICATION_SNOOZE:Ljava/lang/String; = "show_notification_snooze"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist SHOW_QR_CODE_SCANNER_SETTING:Ljava/lang/String; = "show_qr_code_scanner_setting"

.field public static final greylist-max-o SHOW_ROTATION_SUGGESTIONS:Ljava/lang/String; = "show_rotation_suggestions"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o SHOW_ROTATION_SUGGESTIONS_DEFAULT:I = 0x1

.field public static final greylist-max-o SHOW_ROTATION_SUGGESTIONS_DISABLED:I = 0x0

.field public static final greylist-max-o SHOW_ROTATION_SUGGESTIONS_ENABLED:I = 0x1

.field public static final blacklist SILENCE_ALARMS_GESTURE_COUNT:Ljava/lang/String; = "silence_alarms_gesture_count"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist SILENCE_ALARMS_TOUCH_COUNT:Ljava/lang/String; = "silence_alarms_touch_count"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist SILENCE_CALL_GESTURE_COUNT:Ljava/lang/String; = "silence_call_gesture_count"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist SILENCE_CALL_TOUCH_COUNT:Ljava/lang/String; = "silence_call_touch_count"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist SILENCE_GESTURE:Ljava/lang/String; = "silence_gesture"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist SILENCE_TIMER_GESTURE_COUNT:Ljava/lang/String; = "silence_timer_gesture_count"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist SILENCE_TIMER_TOUCH_COUNT:Ljava/lang/String; = "silence_timer_touch_count"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist SKIP_ACCESSIBILITY_SHORTCUT_DIALOG_TIMEOUT_RESTRICTION:Ljava/lang/String; = "skip_accessibility_shortcut_dialog_timeout_restriction"

.field public static final blacklist SKIP_DIRECTION:Ljava/lang/String; = "skip_gesture_direction"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist SKIP_FIRST_USE_HINTS:Ljava/lang/String; = "skip_first_use_hints"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist SKIP_GESTURE:Ljava/lang/String; = "skip_gesture"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist SKIP_GESTURE_COUNT:Ljava/lang/String; = "skip_gesture_count"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist SKIP_TOUCH_COUNT:Ljava/lang/String; = "skip_touch_count"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o SLEEP_TIMEOUT:Ljava/lang/String; = "sleep_timeout"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-r SMS_DEFAULT_APPLICATION:Ljava/lang/String; = "sms_default_application"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist SPATIAL_AUDIO_ENABLED:Ljava/lang/String; = "spatial_audio_enabled"

.field public static final greylist-max-o SPELL_CHECKER_ENABLED:Ljava/lang/String; = "spell_checker_enabled"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist STATUS_BAR_SHOW_VIBRATE_ICON:Ljava/lang/String; = "status_bar_show_vibrate_icon"

.field public static final blacklist STYLUS_BUTTONS_ENABLED:Ljava/lang/String; = "stylus_buttons_enabled"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist STYLUS_HANDWRITING_DEFAULT_VALUE:I = 0x1
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist STYLUS_HANDWRITING_ENABLED:Ljava/lang/String; = "stylus_handwriting_enabled"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist STYLUS_POINTER_ICON_ENABLED:Ljava/lang/String; = "stylus_pointer_icon_enabled"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o SUPPRESS_AUTO_BATTERY_SAVER_SUGGESTION:Ljava/lang/String; = "suppress_auto_battery_saver_suggestion"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist SUPPRESS_DOZE:Ljava/lang/String; = "suppress_doze"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist SWIPE_BOTTOM_TO_NOTIFICATION_ENABLED:Ljava/lang/String; = "swipe_bottom_to_notification_enabled"

.field public static final blacklist SYNC_PARENT_SOUNDS:Ljava/lang/String; = "sync_parent_sounds"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o SYSTEM_NAVIGATION_KEYS_ENABLED:Ljava/lang/String; = "system_navigation_keys_enabled"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist TAPS_APP_TO_EXIT:Ljava/lang/String; = "taps_app_to_exit"

.field public static final blacklist TAP_GESTURE:Ljava/lang/String; = "tap_gesture"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist THEME_CUSTOMIZATION_OVERLAY_PACKAGES:Ljava/lang/String; = "theme_customization_overlay_packages"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist TIMEOUT_TO_DOCK_USER:Ljava/lang/String; = "timeout_to_dock_user"

.field public static final whitelist TOUCH_EXPLORATION_ENABLED:Ljava/lang/String; = "touch_exploration_enabled"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o TOUCH_EXPLORATION_GRANTED_ACCESSIBILITY_SERVICES:Ljava/lang/String; = "touch_exploration_granted_accessibility_services"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o TRUST_AGENTS_INITIALIZED:Ljava/lang/String; = "trust_agents_initialized"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist TTS_DEFAULT_COUNTRY:Ljava/lang/String; = "tts_default_country"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist TTS_DEFAULT_LANG:Ljava/lang/String; = "tts_default_lang"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o TTS_DEFAULT_LOCALE:Ljava/lang/String; = "tts_default_locale"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist TTS_DEFAULT_PITCH:Ljava/lang/String; = "tts_default_pitch"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist TTS_DEFAULT_RATE:Ljava/lang/String; = "tts_default_rate"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist TTS_DEFAULT_SYNTH:Ljava/lang/String; = "tts_default_synth"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist TTS_DEFAULT_VARIANT:Ljava/lang/String; = "tts_default_variant"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist TTS_ENABLED_PLUGINS:Ljava/lang/String; = "tts_enabled_plugins"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist TTS_USE_DEFAULTS:Ljava/lang/String; = "tts_use_defaults"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o TTY_MODE_ENABLED:Ljava/lang/String; = "tty_mode_enabled"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist TV_APP_USES_NON_SYSTEM_INPUTS:Ljava/lang/String; = "tv_app_uses_non_system_inputs"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o TV_INPUT_CUSTOM_LABELS:Ljava/lang/String; = "tv_input_custom_labels"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o TV_INPUT_HIDDEN_INPUTS:Ljava/lang/String; = "tv_input_hidden_inputs"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o TV_USER_SETUP_COMPLETE:Ljava/lang/String; = "tv_user_setup_complete"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o UI_NIGHT_MODE:Ljava/lang/String; = "ui_night_mode"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist UI_NIGHT_MODE_CUSTOM_TYPE:Ljava/lang/String; = "ui_night_mode_custom_type"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist UI_NIGHT_MODE_LAST_COMPUTED:Ljava/lang/String; = "ui_night_mode_last_computed"

.field public static final blacklist UI_NIGHT_MODE_OVERRIDE_OFF:Ljava/lang/String; = "ui_night_mode_override_off"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist UI_NIGHT_MODE_OVERRIDE_ON:Ljava/lang/String; = "ui_night_mode_override_on"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist UI_TRANSLATION_ENABLED:Ljava/lang/String; = "ui_translation_enabled"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o UNKNOWN_SOURCES_DEFAULT_REVERSED:Ljava/lang/String; = "unknown_sources_default_reversed"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o UNSAFE_VOLUME_MUSIC_ACTIVE_MS:Ljava/lang/String; = "unsafe_volume_music_active_ms"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o USB_AUDIO_AUTOMATIC_ROUTING_DISABLED:Ljava/lang/String; = "usb_audio_automatic_routing_disabled"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist USB_MASS_STORAGE_ENABLED:Ljava/lang/String; = "usb_mass_storage_enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist USER_SETUP_COMPLETE:Ljava/lang/String; = "user_setup_complete"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist USER_SETUP_PERSONALIZATION_COMPLETE:I = 0xa
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist USER_SETUP_PERSONALIZATION_NOT_STARTED:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist USER_SETUP_PERSONALIZATION_PAUSED:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist USER_SETUP_PERSONALIZATION_STARTED:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist USER_SETUP_PERSONALIZATION_STATE:Ljava/lang/String; = "user_setup_personalization_state"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist USE_GOOGLE_MAIL:Ljava/lang/String; = "use_google_mail"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist VISUAL_QUERY_ACCESSIBILITY_DETECTION_ENABLED:Ljava/lang/String; = "visual_query_accessibility_detection_enabled"

.field public static final blacklist VOICE_INTERACTION_SERVICE:Ljava/lang/String; = "voice_interaction_service"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-r VOICE_RECOGNITION_SERVICE:Ljava/lang/String; = "voice_recognition_service"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist VOLUME_DIALOG_DISMISS_TIMEOUT:Ljava/lang/String; = "volume_dialog_dismiss_timeout"

.field public static final whitelist VOLUME_HUSH_GESTURE:Ljava/lang/String; = "volume_hush_gesture"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist VOLUME_HUSH_MUTE:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist VOLUME_HUSH_OFF:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist VOLUME_HUSH_VIBRATE:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o VR_DISPLAY_MODE:Ljava/lang/String; = "vr_display_mode"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o VR_DISPLAY_MODE_LOW_PERSISTENCE:I = 0x0

.field public static final greylist-max-o VR_DISPLAY_MODE_OFF:I = 0x1

.field public static final blacklist V_TO_U_RESTORE_ALLOWLIST:Ljava/lang/String; = "v_to_u_restore_allowlist"

.field public static final blacklist V_TO_U_RESTORE_DENYLIST:Ljava/lang/String; = "v_to_u_restore_denylist"

.field public static final greylist-max-o WAKE_GESTURE_ENABLED:Ljava/lang/String; = "wake_gesture_enabled"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist WEAR_TALKBACK_ENABLED:Ljava/lang/String; = "wear_talkback_enabled"

.field public static final blacklist WHEN_TO_START_GLANCEABLE_HUB:Ljava/lang/String; = "when_to_start_glanceable_hub"

.field public static final greylist-max-o WIFI_IDLE_MS:Ljava/lang/String; = "wifi_idle_ms"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist WIFI_MAX_DHCP_RETRY_COUNT:Ljava/lang/String; = "wifi_max_dhcp_retry_count"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist WIFI_MOBILE_DATA_TRANSITION_WAKELOCK_TIMEOUT_MS:Ljava/lang/String; = "wifi_mobile_data_transition_wakelock_timeout_ms"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist WIFI_NETWORKS_AVAILABLE_NOTIFICATION_ON:Ljava/lang/String; = "wifi_networks_available_notification_on"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist WIFI_NETWORKS_AVAILABLE_REPEAT_DELAY:Ljava/lang/String; = "wifi_networks_available_repeat_delay"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist WIFI_NUM_OPEN_NETWORKS_KEPT:Ljava/lang/String; = "wifi_num_open_networks_kept"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist WIFI_ON:Ljava/lang/String; = "wifi_on"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist WIFI_WATCHDOG_ACCEPTABLE_PACKET_LOSS_PERCENTAGE:Ljava/lang/String; = "wifi_watchdog_acceptable_packet_loss_percentage"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist WIFI_WATCHDOG_AP_COUNT:Ljava/lang/String; = "wifi_watchdog_ap_count"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist WIFI_WATCHDOG_BACKGROUND_CHECK_DELAY_MS:Ljava/lang/String; = "wifi_watchdog_background_check_delay_ms"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist WIFI_WATCHDOG_BACKGROUND_CHECK_ENABLED:Ljava/lang/String; = "wifi_watchdog_background_check_enabled"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist WIFI_WATCHDOG_BACKGROUND_CHECK_TIMEOUT_MS:Ljava/lang/String; = "wifi_watchdog_background_check_timeout_ms"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist WIFI_WATCHDOG_INITIAL_IGNORED_PING_COUNT:Ljava/lang/String; = "wifi_watchdog_initial_ignored_ping_count"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist WIFI_WATCHDOG_MAX_AP_CHECKS:Ljava/lang/String; = "wifi_watchdog_max_ap_checks"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist WIFI_WATCHDOG_ON:Ljava/lang/String; = "wifi_watchdog_on"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist WIFI_WATCHDOG_PING_COUNT:Ljava/lang/String; = "wifi_watchdog_ping_count"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist WIFI_WATCHDOG_PING_DELAY_MS:Ljava/lang/String; = "wifi_watchdog_ping_delay_ms"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist WIFI_WATCHDOG_PING_TIMEOUT_MS:Ljava/lang/String; = "wifi_watchdog_ping_timeout_ms"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist WIFI_WATCHDOG_WATCH_LIST:Ljava/lang/String; = "wifi_watchdog_watch_list"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist ZEN_DURATION:Ljava/lang/String; = "zen_duration"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist ZEN_DURATION_FOREVER:I = 0x0

.field public static final blacklist ZEN_DURATION_PROMPT:I = -0x1

.field private static final greylist sNameValueCache:Landroid/provider/Settings$NameValueCache;

.field private static final greylist-max-r sProviderHolder:Landroid/provider/Settings$ContentProviderHolder;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 9

    .line 7018
    nop

    .line 7019
    const-string v0, "content://settings/secure"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    .line 7022
    new-instance v0, Landroid/provider/Settings$ContentProviderHolder;

    sget-object v1, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1}, Landroid/provider/Settings$ContentProviderHolder;-><init>(Landroid/net/Uri;)V

    sput-object v0, Landroid/provider/Settings$Secure;->sProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    .line 7027
    new-instance v2, Landroid/provider/Settings$NameValueCache;

    sget-object v3, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    sget-object v7, Landroid/provider/Settings$Secure;->sProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    const-class v8, Landroid/provider/Settings$Secure;

    const-string v4, "GET_secure"

    const-string v5, "PUT_secure"

    const-string v6, "DELETE_secure"

    invoke-direct/range {v2 .. v8}, Landroid/provider/Settings$NameValueCache;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/provider/Settings$ContentProviderHolder;Ljava/lang/Class;)V

    sput-object v2, Landroid/provider/Settings$Secure;->sNameValueCache:Landroid/provider/Settings$NameValueCache;

    .line 7040
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    sput-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_LOCK_SETTINGS:Ljava/util/HashSet;

    .line 7041
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_LOCK_SETTINGS:Ljava/util/HashSet;

    const-string/jumbo v1, "lock_pattern_autolock"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7042
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_LOCK_SETTINGS:Ljava/util/HashSet;

    const-string/jumbo v1, "lock_pattern_visible_pattern"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7043
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_LOCK_SETTINGS:Ljava/util/HashSet;

    const-string/jumbo v1, "lock_pattern_tactile_feedback_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7045
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    .line 7046
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "adb_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7047
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "assisted_gps_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7048
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "bluetooth_on"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7049
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "cdma_cell_broadcast_sms"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7050
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "roaming_settings"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7051
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "subscription_mode"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7052
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "data_activity_timeout_mobile"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7053
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "data_activity_timeout_wifi"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7054
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "data_roaming"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7055
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "development_settings_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7056
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "device_provisioned"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7057
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "display_size_forced"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7058
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "download_manager_max_bytes_over_mobile"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7059
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "download_manager_recommended_max_bytes_over_mobile"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7060
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "mobile_data"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7061
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "netstats_dev_bucket_duration"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7062
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "netstats_dev_delete_age"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7063
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "netstats_dev_persist_bytes"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7064
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "netstats_dev_rotate_age"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7065
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "netstats_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7066
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "netstats_global_alert_bytes"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7067
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "netstats_poll_interval"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7068
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "netstats_sample_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7069
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "netstats_time_cache_max_age"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7070
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "netstats_uid_bucket_duration"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7071
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "netstats_uid_delete_age"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7072
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "netstats_uid_persist_bytes"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7073
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "netstats_uid_rotate_age"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7074
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "netstats_uid_tag_bucket_duration"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7075
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "netstats_uid_tag_delete_age"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7076
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "netstats_uid_tag_persist_bytes"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7077
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "netstats_uid_tag_rotate_age"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7078
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "network_preference"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7079
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "nitz_update_diff"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7080
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "nitz_update_spacing"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7081
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "ntp_server"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7082
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "ntp_timeout"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7083
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "pdp_watchdog_error_poll_count"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7084
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "pdp_watchdog_long_poll_interval_ms"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7085
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "pdp_watchdog_max_pdp_reset_fail_count"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7086
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "pdp_watchdog_poll_interval_ms"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7087
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "pdp_watchdog_trigger_packet_count"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7088
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "setup_prepaid_data_service_url"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7089
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "setup_prepaid_detection_redir_host"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7090
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "setup_prepaid_detection_target_url"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7091
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "tether_dun_apn"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7092
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "tether_dun_required"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7093
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "tether_supported"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7094
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "usb_mass_storage_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7095
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "use_google_mail"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7096
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_country_code"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7097
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_framework_scan_interval_ms"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7098
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_frequency_band"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7099
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_idle_ms"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7100
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_max_dhcp_retry_count"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7101
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_mobile_data_transition_wakelock_timeout_ms"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7102
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_networks_available_notification_on"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7103
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_networks_available_repeat_delay"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7104
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_num_open_networks_kept"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7105
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_on"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7106
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_p2p_device_name"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7107
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_supplicant_scan_interval_ms"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7108
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_verbose_logging_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7109
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_enhanced_auto_join"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7110
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_network_show_rssi"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7111
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_watchdog_on"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7112
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_watchdog_poor_network_test_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7113
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_p2p_pending_factory_reset"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7114
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "wimax_networks_available_notification_on"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7115
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "verifier_timeout"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7116
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "verifier_default_response"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7117
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "data_stall_alarm_non_aggressive_delay_in_ms"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7118
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "data_stall_alarm_aggressive_delay_in_ms"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7119
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "gprs_register_check_period_ms"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7120
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "wtf_is_fatal"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7121
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "battery_discharge_duration_threshold"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7122
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "battery_discharge_threshold"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7123
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "send_action_app_error"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7124
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "dropbox_age_seconds"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7125
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "dropbox_max_files"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7126
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "dropbox_quota_kb"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7127
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "dropbox_quota_percent"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7128
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "dropbox_reserve_percent"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7129
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "dropbox:"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7130
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "logcat_for_"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7131
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "sys_free_storage_log_interval"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7132
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "disk_free_change_reporting_threshold"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7133
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "sys_storage_threshold_percentage"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7134
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "sys_storage_threshold_max_bytes"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7135
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "sys_storage_full_threshold_bytes"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7136
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "sync_max_retry_delay_in_seconds"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7137
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "connectivity_change_delay"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7138
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "captive_portal_detection_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7139
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "captive_portal_server"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7140
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "set_install_location"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7141
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "default_install_location"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7142
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "inet_condition_debounce_up_delay"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7143
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "inet_condition_debounce_down_delay"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7144
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "read_external_storage_enforced_default"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7145
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "http_proxy"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7146
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "global_http_proxy_host"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7147
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "global_http_proxy_port"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7148
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "global_http_proxy_exclusion_list"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7149
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "set_global_http_proxy"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7150
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "default_dns_server"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7151
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "preferred_network_mode"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7152
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "webview_data_reduction_proxy_key"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7153
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "secure_frp_mode"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 12868
    const-string v0, "enabled_notification_assistant"

    const-string v1, "enabled_notification_policy_access_packages"

    const-string v2, "enabled_notification_listeners"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/provider/Settings$Secure;->LEGACY_RESTORE_SETTINGS:[Ljava/lang/String;

    .line 13193
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Landroid/provider/Settings$Secure;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    .line 13196
    sget-object v0, Landroid/provider/Settings$Secure;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    const-string v1, "accessibility_enabled"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 13197
    sget-object v0, Landroid/provider/Settings$Secure;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    const-string/jumbo v1, "mock_location"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 13198
    sget-object v0, Landroid/provider/Settings$Secure;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    const-string v2, "allowed_geolocation_origins"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 13199
    sget-object v0, Landroid/provider/Settings$Secure;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    const-string v2, "content_capture_enabled"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 13200
    sget-object v0, Landroid/provider/Settings$Secure;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    const-string v2, "enabled_accessibility_services"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 13201
    sget-object v0, Landroid/provider/Settings$Secure;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    const-string/jumbo v3, "location_changer"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 13202
    sget-object v0, Landroid/provider/Settings$Secure;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    const-string/jumbo v3, "location_mode"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 13203
    sget-object v0, Landroid/provider/Settings$Secure;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    const-string/jumbo v3, "show_ime_with_hard_keyboard"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 13204
    sget-object v0, Landroid/provider/Settings$Secure;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    const-string v3, "accessibility_bounce_keys"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 13205
    sget-object v0, Landroid/provider/Settings$Secure;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    const-string v3, "accessibility_slow_keys"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 13206
    sget-object v0, Landroid/provider/Settings$Secure;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    const-string v3, "accessibility_sticky_keys"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 13207
    sget-object v0, Landroid/provider/Settings$Secure;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    const-string/jumbo v3, "notification_bubbles"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 13208
    sget-object v0, Landroid/provider/Settings$Secure;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    const-string/jumbo v3, "notification_history_enabled"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 13220
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Landroid/provider/Settings$Secure;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    .line 13222
    sget-object v0, Landroid/provider/Settings$Secure;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 13223
    sget-object v0, Landroid/provider/Settings$Secure;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    const-string/jumbo v2, "speak_password"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 13224
    sget-object v0, Landroid/provider/Settings$Secure;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    const-string v2, "accessibility_display_inversion_enabled"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 13225
    sget-object v0, Landroid/provider/Settings$Secure;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    const-string v2, "accessibility_captioning_enabled"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 13226
    sget-object v0, Landroid/provider/Settings$Secure;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    const-string v2, "accessibility_captioning_preset"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 13227
    sget-object v0, Landroid/provider/Settings$Secure;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    const-string v2, "accessibility_captioning_edge_type"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 13228
    sget-object v0, Landroid/provider/Settings$Secure;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    const-string v2, "accessibility_captioning_edge_color"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 13229
    sget-object v0, Landroid/provider/Settings$Secure;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    const-string v2, "accessibility_captioning_locale"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 13230
    sget-object v0, Landroid/provider/Settings$Secure;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    const-string v2, "accessibility_captioning_background_color"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 13231
    sget-object v0, Landroid/provider/Settings$Secure;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    const-string v2, "accessibility_captioning_foreground_color"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 13232
    sget-object v0, Landroid/provider/Settings$Secure;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    const-string v2, "accessibility_captioning_typeface"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 13233
    sget-object v0, Landroid/provider/Settings$Secure;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    const-string v2, "accessibility_captioning_font_scale"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 13234
    sget-object v0, Landroid/provider/Settings$Secure;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    const-string v2, "accessibility_captioning_window_color"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 13235
    sget-object v0, Landroid/provider/Settings$Secure;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    const-string v2, "accessibility_display_daltonizer_enabled"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 13236
    sget-object v0, Landroid/provider/Settings$Secure;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    const-string v2, "accessibility_display_daltonizer"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 13237
    sget-object v0, Landroid/provider/Settings$Secure;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    const-string v2, "accessibility_autoclick_delay"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 13238
    sget-object v0, Landroid/provider/Settings$Secure;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    const-string v2, "accessibility_autoclick_enabled"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 13239
    sget-object v0, Landroid/provider/Settings$Secure;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    const-string v2, "accessibility_large_pointer_icon"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 13241
    sget-object v0, Landroid/provider/Settings$Secure;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    const-string v2, "default_input_method"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 13242
    sget-object v0, Landroid/provider/Settings$Secure;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    const-string v2, "enabled_input_methods"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 13244
    sget-object v0, Landroid/provider/Settings$Secure;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    const-string v2, "android_id"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 13246
    sget-object v0, Landroid/provider/Settings$Secure;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 13247
    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 7011
    invoke-direct {p0}, Landroid/provider/Settings$NameValueTable;-><init>()V

    return-void
.end method

.method public static greylist-max-o clearProviderForTest()V
    .registers 1

    .line 7167
    sget-object v0, Landroid/provider/Settings$Secure;->sProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-virtual {v0}, Landroid/provider/Settings$ContentProviderHolder;->clearProviderForTest()V

    .line 7168
    sget-object v0, Landroid/provider/Settings$Secure;->sNameValueCache:Landroid/provider/Settings$NameValueCache;

    invoke-virtual {v0}, Landroid/provider/Settings$NameValueCache;->clearGenerationTrackerForTest()V

    .line 7169
    return-void
.end method

.method public static greylist-max-o getCloneToManagedProfileSettings(Ljava/util/Set;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 13213
    .local p0, "outKeySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v0, Landroid/provider/Settings$Secure;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    invoke-interface {p0, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 13214
    return-void
.end method

.method public static whitelist getFloat(Landroid/content/ContentResolver;Ljava/lang/String;)F
    .registers 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .line 7601
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)F

    move-result v0

    return v0
.end method

.method public static whitelist getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F
    .registers 4
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # F

    .line 7571
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Landroid/provider/Settings$Secure;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    return v0
.end method

.method public static greylist-max-o getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F
    .registers 6
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # F
    .param p3, "userHandle"    # I

    .line 7577
    invoke-static {p0, p1, p3}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 7578
    .local v0, "v":Ljava/lang/String;
    invoke-static {v0, p2}, Landroid/provider/Settings;->-$$Nest$smparseFloatSettingWithDefault(Ljava/lang/String;F)F

    move-result v1

    return v1
.end method

.method public static greylist-max-o getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)F
    .registers 5
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .line 7607
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 7608
    .local v0, "v":Ljava/lang/String;
    invoke-static {v0, p1}, Landroid/provider/Settings;->-$$Nest$smparseFloatSetting(Ljava/lang/String;Ljava/lang/String;)F

    move-result v1

    return v1
.end method

.method public static whitelist getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    .registers 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .line 7443
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static whitelist getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .registers 4
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # I

    .line 7413
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public static greylist-max-o getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .registers 5
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .line 7449
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 7450
    .local v0, "v":Ljava/lang/String;
    invoke-static {v0, p1}, Landroid/provider/Settings;->-$$Nest$smparseIntSetting(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static greylist getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I
    .registers 6
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # I
    .param p3, "userHandle"    # I

    .line 7419
    invoke-static {p0, p1, p3}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 7420
    .local v0, "v":Ljava/lang/String;
    invoke-static {v0, p2}, Landroid/provider/Settings;->-$$Nest$smparseIntSettingWithDefault(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static whitelist getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J
    .registers 4
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .line 7522
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J
    .registers 6
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # J

    .line 7492
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/provider/Settings$Secure;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public static greylist-max-o getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)J
    .registers 6
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .line 7528
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 7529
    .local v0, "v":Ljava/lang/String;
    invoke-static {v0, p1}, Landroid/provider/Settings;->-$$Nest$smparseLongSetting(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v1

    return-wide v1
.end method

.method public static greylist-max-r getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)J
    .registers 8
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # J
    .param p4, "userHandle"    # I

    .line 7499
    invoke-static {p0, p1, p4}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 7500
    .local v0, "v":Ljava/lang/String;
    invoke-static {v0, p2, p3}, Landroid/provider/Settings;->-$$Nest$smparseLongSettingWithDefault(Ljava/lang/String;J)J

    move-result-wide v1

    return-wide v1
.end method

.method public static greylist-max-o getMovedToGlobalSettings(Ljava/util/Set;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 7158
    .local p0, "outKeySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    invoke-interface {p0, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 7159
    return-void
.end method

.method public static blacklist getMovedToSystemSettings(Ljava/util/Set;)V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 7163
    .local p0, "outKeySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    return-void
.end method

.method public static blacklist getPublicSettings(Ljava/util/Set;Ljava/util/Set;Landroid/util/ArrayMap;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 7174
    .local p0, "allKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p1, "readableKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p2, "readableKeysWithMaxTargetSdk":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-class v0, Landroid/provider/Settings$Secure;

    invoke-static {v0, p0, p1, p2}, Landroid/provider/Settings;->-$$Nest$smgetPublicSettingsForClass(Ljava/lang/Class;Ljava/util/Set;Ljava/util/Set;Landroid/util/ArrayMap;)V

    .line 7176
    return-void
.end method

.method public static whitelist getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;

    .line 7185
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static greylist getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;
    .registers 8
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .line 7192
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 7193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " has moved from android.provider.Settings.Secure to android.provider.Settings.Global."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Settings"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7195
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Global;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 7198
    :cond_2b
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_LOCK_SETTINGS:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_78

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_78

    .line 7201
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 7203
    .local v0, "application":Landroid/app/Application;
    if-eqz v0, :cond_53

    .line 7204
    invoke-virtual {v0}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_53

    .line 7205
    invoke-virtual {v0}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x16

    if-gt v1, v2, :cond_53

    const/4 v1, 0x1

    goto :goto_54

    :cond_53
    const/4 v1, 0x0

    .line 7207
    .local v1, "isPreMnc":Z
    :goto_54
    if-eqz v1, :cond_59

    .line 7213
    const-string v2, "0"

    return-object v2

    .line 7215
    :cond_59
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Settings.Secure."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is deprecated and no longer accessible. See API documentation for potential replacements."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 7219
    .end local v0    # "application":Landroid/app/Application;
    .end local v1    # "isPreMnc":Z
    :cond_78
    sget-object v0, Landroid/provider/Settings$Secure;->sNameValueCache:Landroid/provider/Settings$NameValueCache;

    invoke-virtual {v0, p0, p1, p2}, Landroid/provider/Settings$NameValueCache;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getUriFor(Ljava/lang/String;)Landroid/net/Uri;
    .registers 3
    .param p0, "name"    # Ljava/lang/String;

    .line 7390
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 7391
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " has moved from android.provider.Settings.Secure to android.provider.Settings.Global, returning global URI."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Settings"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7393
    sget-object v0, Landroid/provider/Settings$Global;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0}, Landroid/provider/Settings$Global;->getUriFor(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 7395
    :cond_2d
    sget-object v0, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0}, Landroid/provider/Settings$Secure;->getUriFor(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z
    .registers 6
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "provider"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 13260
    const-string/jumbo v0, "location"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 13261
    .local v0, "binder":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/location/ILocationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationManager;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/ILocationManager;

    .line 13263
    .local v1, "lm":Landroid/location/ILocationManager;
    :try_start_11
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v2

    invoke-interface {v1, p1, v2}, Landroid/location/ILocationManager;->isProviderEnabledForUser(Ljava/lang/String;I)Z

    move-result v2
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_19} :catch_1a

    return v2

    .line 13264
    :catch_1a
    move-exception v2

    .line 13265
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public static whitelist putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z
    .registers 4
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # F

    .line 7625
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Landroid/provider/Settings$Secure;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    move-result v0

    return v0
.end method

.method public static greylist-max-o putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z
    .registers 5
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # F
    .param p3, "userHandle"    # I

    .line 7631
    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, p3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static whitelist putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    .registers 4
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 7467
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public static greylist putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    .registers 5
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I
    .param p3, "userHandle"    # I

    .line 7474
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, p3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static whitelist putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z
    .registers 5
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # J

    .line 7546
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/provider/Settings$Secure;->putLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)Z

    move-result v0

    return v0
.end method

.method public static greylist-max-r putLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)Z
    .registers 6
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # J
    .param p4, "userHandle"    # I

    .line 7553
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, p4}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static whitelist putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 7248
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static whitelist putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 12
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "makeDefault"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 7323
    nop

    .line 7324
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v5

    .line 7323
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .end local p0    # "resolver":Landroid/content/ContentResolver;
    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "value":Ljava/lang/String;
    .end local p3    # "tag":Ljava/lang/String;
    .end local p4    # "makeDefault":Z
    .local v0, "resolver":Landroid/content/ContentResolver;
    .local v1, "name":Ljava/lang/String;
    .local v2, "value":Ljava/lang/String;
    .local v3, "tag":Ljava/lang/String;
    .local v4, "makeDefault":Z
    invoke-static/range {v0 .. v6}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)Z

    move-result p0

    return p0
.end method

.method public static blacklist putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 11
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "overrideableByRestore"    # Z

    .line 7236
    nop

    .line 7237
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v5

    .line 7236
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v6, p3

    .end local p0    # "resolver":Landroid/content/ContentResolver;
    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "value":Ljava/lang/String;
    .end local p3    # "overrideableByRestore":Z
    .local v0, "resolver":Landroid/content/ContentResolver;
    .local v1, "name":Ljava/lang/String;
    .local v2, "value":Ljava/lang/String;
    .local v6, "overrideableByRestore":Z
    invoke-static/range {v0 .. v6}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)Z

    move-result p0

    return p0
.end method

.method public static greylist putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 11
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    .line 7255
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    .end local p0    # "resolver":Landroid/content/ContentResolver;
    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "value":Ljava/lang/String;
    .end local p3    # "userHandle":I
    .local v0, "resolver":Landroid/content/ContentResolver;
    .local v1, "name":Ljava/lang/String;
    .local v2, "value":Ljava/lang/String;
    .local v5, "userHandle":I
    invoke-static/range {v0 .. v6}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)Z

    move-result p0

    return p0
.end method

.method public static greylist-max-r putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)Z
    .registers 16
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "makeDefault"    # Z
    .param p5, "userHandle"    # I
    .param p6, "overrideableByRestore"    # Z

    .line 7268
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 7269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " has moved from android.provider.Settings.Secure to android.provider.Settings.Global"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Settings"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7271
    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    .end local p0    # "resolver":Landroid/content/ContentResolver;
    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "value":Ljava/lang/String;
    .end local p3    # "tag":Ljava/lang/String;
    .end local p4    # "makeDefault":Z
    .end local p5    # "userHandle":I
    .local v2, "resolver":Landroid/content/ContentResolver;
    .local v3, "name":Ljava/lang/String;
    .local v4, "value":Ljava/lang/String;
    .local v5, "tag":Ljava/lang/String;
    .local v6, "makeDefault":Z
    .local v7, "userHandle":I
    invoke-static/range {v2 .. v8}, Landroid/provider/Settings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)Z

    move-result p0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move v5, v6

    move v6, v7

    .end local v7    # "userHandle":I
    .local v1, "resolver":Landroid/content/ContentResolver;
    .local v2, "name":Ljava/lang/String;
    .local v3, "value":Ljava/lang/String;
    .local v4, "tag":Ljava/lang/String;
    .local v5, "makeDefault":Z
    .local v6, "userHandle":I
    return p0

    .line 7274
    .end local v1    # "resolver":Landroid/content/ContentResolver;
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    .end local v4    # "tag":Ljava/lang/String;
    .end local v5    # "makeDefault":Z
    .end local v6    # "userHandle":I
    .restart local p0    # "resolver":Landroid/content/ContentResolver;
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p2    # "value":Ljava/lang/String;
    .restart local p3    # "tag":Ljava/lang/String;
    .restart local p4    # "makeDefault":Z
    .restart local p5    # "userHandle":I
    :cond_38
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    .end local p0    # "resolver":Landroid/content/ContentResolver;
    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "value":Ljava/lang/String;
    .end local p3    # "tag":Ljava/lang/String;
    .end local p4    # "makeDefault":Z
    .end local p5    # "userHandle":I
    .restart local v1    # "resolver":Landroid/content/ContentResolver;
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v3    # "value":Ljava/lang/String;
    .restart local v4    # "tag":Ljava/lang/String;
    .restart local v5    # "makeDefault":Z
    .restart local v6    # "userHandle":I
    sget-object v0, Landroid/provider/Settings$Secure;->sNameValueCache:Landroid/provider/Settings$NameValueCache;

    move v7, p6

    .end local p6    # "overrideableByRestore":Z
    .local v7, "overrideableByRestore":Z
    invoke-virtual/range {v0 .. v7}, Landroid/provider/Settings$NameValueCache;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)Z

    move-result p0

    return p0
.end method

.method public static whitelist resetToDefaults(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .registers 4
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "tag"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 7344
    nop

    .line 7345
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v0

    .line 7344
    const/4 v1, 0x1

    invoke-static {p0, p1, v1, v0}, Landroid/provider/Settings$Secure;->resetToDefaultsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;II)V

    .line 7346
    return-void
.end method

.method public static greylist-max-o resetToDefaultsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;II)V
    .registers 11
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .param p3, "userHandle"    # I

    .line 7369
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v6, v0

    .line 7370
    .local v6, "arg":Landroid/os/Bundle;
    const-string v0, "_user"

    invoke-virtual {v6, v0, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 7371
    if-eqz p1, :cond_12

    .line 7372
    const-string v0, "_tag"

    invoke-virtual {v6, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7374
    :cond_12
    const-string v0, "_reset_mode"

    invoke-virtual {v6, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 7375
    sget-object v0, Landroid/provider/Settings$Secure;->sProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-virtual {v0, p0}, Landroid/provider/Settings$ContentProviderHolder;->getProvider(Landroid/content/ContentResolver;)Landroid/content/IContentProvider;

    move-result-object v1

    .line 7376
    .local v1, "cp":Landroid/content/IContentProvider;
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v2

    sget-object v0, Landroid/provider/Settings$Secure;->sProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-static {v0}, Landroid/provider/Settings$ContentProviderHolder;->-$$Nest$fgetmUri(Landroid/provider/Settings$ContentProviderHolder;)Landroid/net/Uri;

    move-result-object v0

    .line 7377
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    const-string v4, "RESET_secure"

    .line 7376
    const/4 v5, 0x0

    invoke-interface/range {v1 .. v6}, Landroid/content/IContentProvider;->call(Landroid/content/AttributionSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_31} :catch_33

    .line 7380
    nop

    .end local v1    # "cp":Landroid/content/IContentProvider;
    .end local v6    # "arg":Landroid/os/Bundle;
    goto :goto_4e

    .line 7378
    :catch_33
    move-exception v0

    .line 7379
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t reset do defaults for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Settings"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7381
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_4e
    return-void
.end method

.method public static whitelist setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V
    .registers 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 13280
    return-void
.end method
