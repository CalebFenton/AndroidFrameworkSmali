.class public final Landroid/provider/Settings$Global$Wearable;
.super Landroid/provider/Settings$NameValueTable;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Settings$Global;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Wearable"
.end annotation


# static fields
.field public static final blacklist ACCESSIBILITY_VIBRATION_WATCH_ENABLED:Ljava/lang/String; = "a11y_vibration_watch_enabled"

.field public static final blacklist ACCESSIBILITY_VIBRATION_WATCH_SPEED:Ljava/lang/String; = "vibration_speed"

.field public static final blacklist ACCESSIBILITY_VIBRATION_WATCH_SPEED_FAST:I = 0x3

.field public static final blacklist ACCESSIBILITY_VIBRATION_WATCH_SPEED_MEDIUM:I = 0x2

.field public static final blacklist ACCESSIBILITY_VIBRATION_WATCH_SPEED_SLOW:I = 0x1

.field public static final blacklist ACCESSIBILITY_VIBRATION_WATCH_SPEED_VERY_FAST:I = 0x4

.field public static final blacklist ACCESSIBILITY_VIBRATION_WATCH_SPEED_VERY_SLOW:I = 0x0

.field public static final blacklist ACCESSIBILITY_VIBRATION_WATCH_TYPE:Ljava/lang/String; = "a11y_vibration_watch_type"

.field public static final blacklist ACCESSIBILITY_VIBRATION_WATCH_TYPE_DIGIT:I = 0x0

.field public static final blacklist ACCESSIBILITY_VIBRATION_WATCH_TYPE_TERSE:I = 0x1

.field public static final blacklist ALT_BYPASS_WIFI_REQUIREMENT_TIME_MILLIS:Ljava/lang/String; = "alt_bypass_wifi_requirement_time_millis"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist AMBIENT_ENABLED:Ljava/lang/String; = "ambient_enabled"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist AMBIENT_FORCE_WHEN_DOCKED:Ljava/lang/String; = "ambient_force_when_docked"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist AMBIENT_LOW_BIT_ENABLED:Ljava/lang/String; = "ambient_low_bit_enabled"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist AMBIENT_LOW_BIT_ENABLED_DEV:Ljava/lang/String; = "ambient_low_bit_enabled_dev"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist AMBIENT_PLUGGED_TIMEOUT_MIN:Ljava/lang/String; = "ambient_plugged_timeout_min"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist AMBIENT_TILT_TO_BRIGHT:Ljava/lang/String; = "ambient_tilt_to_bright"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist AMBIENT_TILT_TO_WAKE:Ljava/lang/String; = "ambient_tilt_to_wake"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist AMBIENT_TOUCH_TO_WAKE:Ljava/lang/String; = "ambient_touch_to_wake"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist ANDROID_WEAR_VERSION:Ljava/lang/String; = "android_wear_version"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist AUTO_BEDTIME_MODE:Ljava/lang/String; = "auto_bedtime_mode"

.field public static final blacklist AUTO_TIME_OFF:I = 0x2

.field public static final blacklist AUTO_TIME_ZONE_OFF:I = 0x2

.field public static final blacklist AUTO_WIFI:Ljava/lang/String; = "auto_wifi"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist AUTO_WIFI_DISABLED:I = 0x0

.field public static final blacklist AUTO_WIFI_ENABLED:I = 0x1

.field public static final blacklist BATTERY_SAVER_MODE:Ljava/lang/String; = "battery_saver_mode"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist BATTERY_SAVER_MODE_CUSTOM:I = 0x4

.field public static final blacklist BATTERY_SAVER_MODE_LIGHT:I = 0x1

.field public static final blacklist BATTERY_SAVER_MODE_NONE:I = 0x0

.field public static final blacklist BATTERY_SAVER_MODE_TIME_ONLY:I = 0x3

.field public static final blacklist BATTERY_SAVER_MODE_TRADITIONAL_WATCH:I = 0x2

.field public static final blacklist BEDTIME_HARD_MODE:Ljava/lang/String; = "bedtime_hard_mode"

.field public static final blacklist BEDTIME_MODE:Ljava/lang/String; = "bedtime_mode"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist BLUETOOTH_ROLE_CENTRAL:I = 0x1

.field public static final blacklist BLUETOOTH_ROLE_PERIPHERAL:I = 0x2

.field public static final blacklist BUG_REPORT:Ljava/lang/String; = "bug_report"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist BUG_REPORT_DISABLED:I = 0x0

.field public static final blacklist BUG_REPORT_ENABLED:I = 0x1

.field public static final blacklist BURN_IN_PROTECTION_ENABLED:Ljava/lang/String; = "burn_in_protection"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist CALL_FORWARD_ACTION_OFF:I = 0x2

.field public static final blacklist CALL_FORWARD_ACTION_ON:I = 0x1

.field public static final blacklist CALL_FORWARD_NO_LAST_ACTION:I = -0x1

.field public static final blacklist CHARGING_SOUNDS_ENABLED:Ljava/lang/String; = "wear_charging_sounds_enabled"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist CLOCKWORK_24HR_TIME:Ljava/lang/String; = "clockwork_24hr_time"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist CLOCKWORK_AUTO_TIME:Ljava/lang/String; = "clockwork_auto_time"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist CLOCKWORK_AUTO_TIME_ZONE:Ljava/lang/String; = "clockwork_auto_time_zone"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist CLOCKWORK_LONG_PRESS_TO_ASSISTANT_ENABLED:Ljava/lang/String; = "clockwork_long_press_to_assistant_enabled"

.field public static final blacklist CLOCKWORK_SYSUI_MAIN_ACTIVITY:Ljava/lang/String; = "clockwork_sysui_main_activity"

.field public static final blacklist CLOCKWORK_SYSUI_PACKAGE:Ljava/lang/String; = "clockwork_sysui_package"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist COMBINED_LOCATION_ENABLE:Ljava/lang/String; = "combined_location_enable"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist COMPANION_APP_NAME:Ljava/lang/String; = "wear_companion_app_name"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist COMPANION_BLE_ROLE:Ljava/lang/String; = "companion_ble_role"

.field public static final blacklist COMPANION_NAME:Ljava/lang/String; = "companion_bt_name"

.field public static final blacklist COMPANION_OS_VERSION:Ljava/lang/String; = "wear_companion_os_version"

.field public static final blacklist COMPANION_OS_VERSION_UNDEFINED:I = -0x1

.field public static final blacklist CONNECTIVITY_KEEP_DATA_ON:Ljava/lang/String; = "wear_connectivity_keep_data_on"
    .annotation runtime Landroid/provider/Settings$Readable;
        maxTargetSdk = 0x22
    .end annotation
.end field

.field public static final blacklist CONSISTENT_NOTIFICATION_BLOCKING_ENABLED:Ljava/lang/String; = "consistent_notification_blocking_enabled"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist COOLDOWN_MODE_ON:Ljava/lang/String; = "cooldown_mode_on"

.field public static final blacklist CUSTOM_COLOR_BACKGROUND:Ljava/lang/String; = "custom_background_color"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist CUSTOM_COLOR_FOREGROUND:Ljava/lang/String; = "custom_foreground_color"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist DECOMPOSABLE_WATCHFACE:Ljava/lang/String; = "current_watchface_decomposable"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist DEFAULT_VIBRATION:Ljava/lang/String; = "default_vibration"
    .annotation runtime Landroid/provider/Settings$Readable;
        maxTargetSdk = 0x22
    .end annotation
.end field

.field public static final blacklist DISABLE_AOD_WHILE_PLUGGED:Ljava/lang/String; = "disable_aod_while_plugged"

.field public static final blacklist DYNAMIC_COLOR_THEME_ENABLED:Ljava/lang/String; = "dynamic_color_theme_enabled"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist ENABLE_ALL_LANGUAGES:Ljava/lang/String; = "enable_all_languages"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist GESTURE_DISMISS_ACTION_USER_PREFERENCE:Ljava/lang/String; = "gesture_dismiss_action_user_preference"

.field public static final blacklist GESTURE_PRIMARY_ACTION_USER_PREFERENCE:Ljava/lang/String; = "gesture_primary_action_user_preference"

.field public static final blacklist GESTURE_TOUCH_AND_HOLD_WATCH_FACE_ENABLED:Ljava/lang/String; = "gesture_touch_and_hold_watchface_enabled"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist GMS_CHECKIN_TIMEOUT_MIN:Ljava/lang/String; = "gms_checkin_timeout_min"

.field public static final blacklist HAS_PAY_TOKENS:Ljava/lang/String; = "has_pay_tokens"

.field public static final blacklist HFP_CLIENT_DISABLED:I = 0x2

.field public static final blacklist HFP_CLIENT_ENABLED:I = 0x1

.field public static final blacklist HFP_CLIENT_UNSET:I = 0x0

.field public static final blacklist HOTWORD_DETECTION_ENABLED:Ljava/lang/String; = "hotword_detection_enabled"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist INVALID_AUTO_TIME_STATE:I = 0x3

.field public static final blacklist INVALID_AUTO_TIME_ZONE_STATE:I = 0x3

.field public static final blacklist LAST_CALL_FORWARD_ACTION:Ljava/lang/String; = "last_call_forward_action"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist LOCK_SCREEN_STATE:Ljava/lang/String; = "lock_screen_state"

.field public static final blacklist LOCK_SCREEN_STATE_NONE:I = 0x0

.field public static final blacklist LOCK_SCREEN_STATE_PATTERN:I = 0x2

.field public static final blacklist LOCK_SCREEN_STATE_PIN:I = 0x1

.field public static final blacklist MASTER_GESTURES_ENABLED:Ljava/lang/String; = "master_gestures_enabled"

.field public static final blacklist MOBILE_SIGNAL_DETECTOR:Ljava/lang/String; = "mobile_signal_detector"

.field public static final blacklist MUTE_WHEN_OFF_BODY_ENABLED:Ljava/lang/String; = "obtain_mute_when_off_body"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist NETWORK_LOCATION_OPT_IN:Ljava/lang/String; = "network_location_opt_in"

.field public static final blacklist OBTAIN_PAIRED_DEVICE_LOCATION:Ljava/lang/String; = "obtain_paired_device_location"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist OEM_SETUP_COMPLETED_FAILURE:I = 0x0

.field public static final blacklist OEM_SETUP_COMPLETED_STATUS:Ljava/lang/String; = "oem_setup_completed_status"

.field public static final blacklist OEM_SETUP_COMPLETED_SUCCESS:I = 0x1

.field public static final blacklist OEM_SETUP_VERSION:Ljava/lang/String; = "oem_setup_version"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist PAIRED_DEVICE_OS_TYPE:Ljava/lang/String; = "paired_device_os_type"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist PAIRED_DEVICE_OS_TYPE_ANDROID:I = 0x1

.field public static final blacklist PAIRED_DEVICE_OS_TYPE_IOS:I = 0x2

.field public static final blacklist PAIRED_DEVICE_OS_TYPE_NONE:I = 0x3

.field public static final blacklist PAIRED_DEVICE_OS_TYPE_UNKNOWN:I = 0x0

.field public static final blacklist PHONE_PLAY_STORE_AVAILABILITY:Ljava/lang/String; = "phone_play_store_availability"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist PHONE_PLAY_STORE_AVAILABILITY_UNKNOWN:I = 0x0

.field public static final blacklist PHONE_PLAY_STORE_AVAILABLE:I = 0x1

.field public static final blacklist PHONE_PLAY_STORE_UNAVAILABLE:I = 0x2

.field public static final blacklist PHONE_SWITCHING_REQUEST_SOURCE:Ljava/lang/String; = "phone_switching_request_source"

.field public static final blacklist PHONE_SWITCHING_REQUEST_SOURCE_COMPANION:I = 0x3

.field public static final blacklist PHONE_SWITCHING_REQUEST_SOURCE_COMPANION_USER_CONFIRMATION:I = 0x2

.field public static final blacklist PHONE_SWITCHING_REQUEST_SOURCE_NONE:I = 0x0

.field public static final blacklist PHONE_SWITCHING_REQUEST_SOURCE_WATCH:I = 0x1

.field public static final blacklist PHONE_SWITCHING_STATUS:Ljava/lang/String; = "phone_switching_status"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist PHONE_SWITCHING_STATUS_ACCOUNTS_MATCHED:I = 0xc

.field public static final blacklist PHONE_SWITCHING_STATUS_CANCELLED:I = 0x3

.field public static final blacklist PHONE_SWITCHING_STATUS_FAILED:I = 0x4

.field public static final blacklist PHONE_SWITCHING_STATUS_IN_PROGRESS_ADVERTISING:I = 0x5

.field public static final blacklist PHONE_SWITCHING_STATUS_IN_PROGRESS_BONDED:I = 0x6

.field public static final blacklist PHONE_SWITCHING_STATUS_IN_PROGRESS_MIGRATION:I = 0x8

.field public static final blacklist PHONE_SWITCHING_STATUS_IN_PROGRESS_MIGRATION_CANCELLED:I = 0xa

.field public static final blacklist PHONE_SWITCHING_STATUS_IN_PROGRESS_MIGRATION_FAILED:I = 0x9

.field public static final blacklist PHONE_SWITCHING_STATUS_IN_PROGRESS_MIGRATION_SUCCESS:I = 0xb

.field public static final blacklist PHONE_SWITCHING_STATUS_IN_PROGRESS_PHONE_COMPLETE:I = 0x7

.field public static final blacklist PHONE_SWITCHING_STATUS_NOT_STARTED:I = 0x0

.field public static final blacklist PHONE_SWITCHING_STATUS_STARTED:I = 0x1

.field public static final blacklist PHONE_SWITCHING_STATUS_SUCCESS:I = 0x2

.field public static final blacklist REDUCE_MOTION:Ljava/lang/String; = "reduce_motion"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist RSB_WAKE_ENABLED:Ljava/lang/String; = "rsb_wake_enabled"

.field public static final blacklist RTL_SWIPE_TO_DISMISS_ENABLED_DEV:Ljava/lang/String; = "rtl_swipe_to_dismiss_enabled_dev"

.field public static final blacklist SCREENSHOT_ENABLED:Ljava/lang/String; = "screenshot_enabled"

.field public static final blacklist SCREEN_UNLOCK_SOUND_ENABLED:Ljava/lang/String; = "screen_unlock_sound_enabled"

.field public static final blacklist SETUP_LOCALE:Ljava/lang/String; = "setup_locale"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist SETUP_SKIPPED:Ljava/lang/String; = "setup_skipped"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist SETUP_SKIPPED_NO:I = 0x2

.field public static final blacklist SETUP_SKIPPED_UNKNOWN:I = 0x0

.field public static final blacklist SETUP_SKIPPED_YES:I = 0x1

.field public static final blacklist SIDE_BUTTON:Ljava/lang/String; = "side_button"

.field public static final blacklist SMART_ILLUMINATE_ENABLED:Ljava/lang/String; = "smart_illuminate_enabled"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist SMART_REPLIES_ENABLED:Ljava/lang/String; = "smart_replies_enabled"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist STATUS_TRAY_CONFIGURATION_DEFAULT:I = 0x0

.field public static final blacklist STATUS_TRAY_CONFIGURATION_SYSTEM_HIDDEN:I = 0x1

.field public static final blacklist STEM_1_DATA:Ljava/lang/String; = "STEM_1_DATA"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist STEM_1_DEFAULT_DATA:Ljava/lang/String; = "STEM_1_DEFAULT_DATA"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist STEM_1_TYPE:Ljava/lang/String; = "STEM_1_TYPE"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist STEM_2_DATA:Ljava/lang/String; = "STEM_2_DATA"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist STEM_2_DEFAULT_DATA:Ljava/lang/String; = "STEM_2_DEFAULT_DATA"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist STEM_2_TYPE:Ljava/lang/String; = "STEM_2_TYPE"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist STEM_3_DATA:Ljava/lang/String; = "STEM_3_DATA"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist STEM_3_DEFAULT_DATA:Ljava/lang/String; = "STEM_3_DEFAULT_DATA"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist STEM_3_TYPE:Ljava/lang/String; = "STEM_3_TYPE"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist STEM_TYPE_APP_LAUNCH:I = 0x0

.field public static final blacklist STEM_TYPE_CONTACT_LAUNCH:I = 0x1

.field public static final blacklist STEM_TYPE_UNKNOWN:I = -0x1

.field public static final blacklist SYNC_TIME_FROM_NETWORK:I = 0x1

.field public static final blacklist SYNC_TIME_FROM_PHONE:I = 0x0

.field public static final blacklist SYNC_TIME_ZONE_FROM_NETWORK:I = 0x1

.field public static final blacklist SYNC_TIME_ZONE_FROM_PHONE:I = 0x0

.field public static final blacklist SYSTEM_CAPABILITIES:Ljava/lang/String; = "system_capabilities"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist SYSTEM_EDITION:Ljava/lang/String; = "android_wear_system_edition"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist TETHERED_CONFIG_RESTRICTED:I = 0x3

.field public static final blacklist TETHERED_CONFIG_STANDALONE:I = 0x1

.field public static final blacklist TETHERED_CONFIG_TETHERED:I = 0x2

.field public static final blacklist TETHERED_CONFIG_UNKNOWN:I = 0x0

.field public static final blacklist TETHER_CONFIG_STATE:Ljava/lang/String; = "tethered_config_state"

.field public static final blacklist UNGAZE_ENABLED:Ljava/lang/String; = "ungaze_enabled"

.field public static final blacklist UPGRADE_DATA_MIGRATION_DONE:I = 0x2

.field public static final blacklist UPGRADE_DATA_MIGRATION_NOT_NEEDED:I = 0x0

.field public static final blacklist UPGRADE_DATA_MIGRATION_PENDING:I = 0x1

.field public static final blacklist UPGRADE_DATA_MIGRATION_STATUS:Ljava/lang/String; = "upgrade_data_migration_status"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist USER_HFP_CLIENT_SETTING:Ljava/lang/String; = "user_hfp_client_setting"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist VIBRATE_FOR_ACTIVE_UNLOCK:Ljava/lang/String; = "wear_vibrate_for_active_unlock"

.field public static final blacklist WEAR_ACTIVITY_AUTO_RESUME_TIMEOUT_MS:Ljava/lang/String; = "wear_activity_auto_resume_timeout_ms"
    .annotation runtime Landroid/provider/Settings$Readable;
        maxTargetSdk = 0x22
    .end annotation
.end field

.field public static final blacklist WEAR_ACTIVITY_AUTO_RESUME_TIMEOUT_SET_BY_USER:Ljava/lang/String; = "wear_activity_auto_resume_timeout_set_by_user"

.field public static final blacklist WEAR_LAUNCHER_UI_MODE:Ljava/lang/String; = "wear_launcher_ui_mode"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist WEAR_MEDIA_CONTROLS_PACKAGE:Ljava/lang/String; = "wear_media_controls_package"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist WEAR_MEDIA_SESSIONS_PACKAGE:Ljava/lang/String; = "wear_media_sessions_package"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist WEAR_OS_VERSION_STRING:Ljava/lang/String; = "wear_os_version_string"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist WEAR_PLATFORM_MR_NUMBER:Ljava/lang/String; = "wear_platform_mr_number"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist WEAR_POWER_ANOMALY_SERVICE_ENABLED:Ljava/lang/String; = "wear_power_anomaly_service_enabled"

.field public static final blacklist WEAR_SYSTEM_STATUS_TRAY_CONFIGURATION:Ljava/lang/String; = "wear_system_status_tray_configuration"

.field public static final blacklist WET_MODE_ON:Ljava/lang/String; = "wet_mode_on"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist WIFI_POWER_SAVE:Ljava/lang/String; = "wifi_power_save"

.field public static final blacklist WRIST_DETECTION_AUTO_LOCKING_ENABLED:Ljava/lang/String; = "wear_wrist_detection_auto_locking_enabled"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist WRIST_ORIENTATION_MODE:Ljava/lang/String; = "wear_wrist_orientation_mode"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 19837
    invoke-direct {p0}, Landroid/provider/Settings$NameValueTable;-><init>()V

    return-void
.end method
