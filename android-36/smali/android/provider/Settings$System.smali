.class public final Landroid/provider/Settings$System;
.super Landroid/provider/Settings$NameValueTable;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "System"
.end annotation


# static fields
.field public static final whitelist ACCELEROMETER_ROTATION:Ljava/lang/String; = "accelerometer_rotation"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist ADAPTIVE_SLEEP:Ljava/lang/String; = "adaptive_sleep"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ADB_ENABLED:Ljava/lang/String; = "adb_enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o ADVANCED_SETTINGS:Ljava/lang/String; = "advanced_settings"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o ADVANCED_SETTINGS_DEFAULT:I = 0x0

.field public static final whitelist AIRPLANE_MODE_ON:Ljava/lang/String; = "airplane_mode_on"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist AIRPLANE_MODE_RADIOS:Ljava/lang/String; = "airplane_mode_radios"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist AIRPLANE_MODE_TOGGLEABLE_RADIOS:Ljava/lang/String; = "airplane_mode_toggleable_radios"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ALARM_ALERT:Ljava/lang/String; = "alarm_alert"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o ALARM_ALERT_CACHE:Ljava/lang/String; = "alarm_alert_cache"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o ALARM_ALERT_CACHE_URI:Landroid/net/Uri;

.field public static final blacklist ALARM_VIBRATION_INTENSITY:Ljava/lang/String; = "alarm_vibration_intensity"

.field public static final whitelist ALWAYS_FINISH_ACTIVITIES:Ljava/lang/String; = "always_finish_activities"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ANDROID_ID:Ljava/lang/String; = "android_id"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ANIMATOR_DURATION_SCALE:Ljava/lang/String; = "animator_duration_scale"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist APPEND_FOR_LAST_AUDIBLE:Ljava/lang/String; = "_last_audible"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist APPLY_RAMPING_RINGER:Ljava/lang/String; = "apply_ramping_ringer"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist AUTO_LAUNCH_MEDIA_CONTROLS:Ljava/lang/String; = "auto_launch_media_controls"

.field public static final whitelist AUTO_TIME:Ljava/lang/String; = "auto_time"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist AUTO_TIME_ZONE:Ljava/lang/String; = "auto_time_zone"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist BLUETOOTH_DISCOVERABILITY:Ljava/lang/String; = "bluetooth_discoverability"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist BLUETOOTH_DISCOVERABILITY_TIMEOUT:Ljava/lang/String; = "bluetooth_discoverability_timeout"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist BLUETOOTH_ON:Ljava/lang/String; = "bluetooth_on"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CAMERA_FLASH_NOTIFICATION:Ljava/lang/String; = "camera_flash_notification"

.field public static final greylist-max-r CAR_DOCK_SOUND:Ljava/lang/String; = "car_dock_sound"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-r CAR_UNDOCK_SOUND:Ljava/lang/String; = "car_undock_sound"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CLOCKWORK_BLUETOOTH_SETTINGS_PREF:Ljava/lang/String; = "cw_bt_settings_pref"

.field public static final greylist-max-o CLONE_FROM_PARENT_ON_VALUE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-r CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist CONTENT_URI:Landroid/net/Uri;

.field public static final blacklist CV_ENABLED:Ljava/lang/String; = "cv_enabled"

.field public static final whitelist DATA_ROAMING:Ljava/lang/String; = "data_roaming"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist DATE_FORMAT:Ljava/lang/String; = "date_format"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist DEBUG_APP:Ljava/lang/String; = "debug_app"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist DEBUG_ENABLE_ENHANCED_CALL_BLOCKING:Ljava/lang/String; = "debug.enable_enhanced_calling"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

.field public static final blacklist DEFAULT_DEVICE_FONT_SCALE:Ljava/lang/String; = "device_font_scale"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field private static final greylist-max-o DEFAULT_FONT_SCALE:F = 1.0f

.field private static final blacklist DEFAULT_FONT_WEIGHT:I = 0x0

.field public static final whitelist DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

.field public static final whitelist DEFAULT_RINGTONE_URI:Landroid/net/Uri;

.field public static final greylist-max-r DESK_DOCK_SOUND:Ljava/lang/String; = "desk_dock_sound"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-r DESK_UNDOCK_SOUND:Ljava/lang/String; = "desk_undock_sound"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist DEVICE_PROVISIONED:Ljava/lang/String; = "device_provisioned"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist DIM_SCREEN:Ljava/lang/String; = "dim_screen"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o DISPLAY_COLOR_MODE:Ljava/lang/String; = "display_color_mode"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist DISPLAY_COLOR_MODE_VENDOR_HINT:Ljava/lang/String; = "display_color_mode_vendor_hint"

.field public static final greylist-max-r DOCK_SOUNDS_ENABLED:Ljava/lang/String; = "dock_sounds_enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist DTMF_TONE_TYPE_WHEN_DIALING:Ljava/lang/String; = "dtmf_tone_type"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist DTMF_TONE_WHEN_DIALING:Ljava/lang/String; = "dtmf_tone"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o EGG_MODE:Ljava/lang/String; = "egg_mode"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist END_BUTTON_BEHAVIOR:Ljava/lang/String; = "end_button_behavior"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o END_BUTTON_BEHAVIOR_DEFAULT:I = 0x2

.field public static final greylist-max-o END_BUTTON_BEHAVIOR_HOME:I = 0x1

.field public static final greylist-max-o END_BUTTON_BEHAVIOR_SLEEP:I = 0x2

.field public static final blacklist FOLD_LOCK_BEHAVIOR:Ljava/lang/String; = "fold_lock_behavior_setting"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist FONT_SCALE:Ljava/lang/String; = "font_scale"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist HAPTIC_FEEDBACK_ENABLED:Ljava/lang/String; = "haptic_feedback_enabled"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o HAPTIC_FEEDBACK_INTENSITY:Ljava/lang/String; = "haptic_feedback_intensity"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist HARDWARE_HAPTIC_FEEDBACK_INTENSITY:Ljava/lang/String; = "hardware_haptic_feedback_intensity"

.field public static final greylist HEARING_AID:Ljava/lang/String; = "hearing_aid"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist HIDE_ROTATION_LOCK_TOGGLE_FOR_ACCESSIBILITY:Ljava/lang/String; = "hide_rotation_lock_toggle_for_accessibility"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist HTTP_PROXY:Ljava/lang/String; = "http_proxy"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist INPUT_GAIN_INDEX_SETTINGS:Ljava/lang/String; = "input_gain_index_settings"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist INSTALL_NON_MARKET_APPS:Ljava/lang/String; = "install_non_market_apps"
    .annotation runtime Ljava/lang/Deprecated;
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

.field public static final blacklist KEYBOARD_VIBRATION_ENABLED:Ljava/lang/String; = "keyboard_vibration_enabled"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o LEGACY_RESTORE_SETTINGS:[Ljava/lang/String;

.field public static final blacklist LOCALE_PREFERENCES:Ljava/lang/String; = "locale_preferences"

.field public static final whitelist LOCATION_PROVIDERS_ALLOWED:Ljava/lang/String; = "location_providers_allowed"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o LOCKSCREEN_DISABLED:Ljava/lang/String; = "lockscreen.disabled"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-r LOCKSCREEN_SOUNDS_ENABLED:Ljava/lang/String; = "lockscreen_sounds_enabled"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist LOCK_PATTERN_ENABLED:Ljava/lang/String; = "lock_pattern_autolock"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist LOCK_PATTERN_TACTILE_FEEDBACK_ENABLED:Ljava/lang/String; = "lock_pattern_tactile_feedback_enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist LOCK_PATTERN_VISIBLE:Ljava/lang/String; = "lock_pattern_visible_pattern"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-r LOCK_SOUND:Ljava/lang/String; = "lock_sound"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o LOCK_TO_APP_ENABLED:Ljava/lang/String; = "lock_to_app_enabled"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist LOGGING_ID:Ljava/lang/String; = "logging_id"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o LOW_BATTERY_SOUND:Ljava/lang/String; = "low_battery_sound"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist MASTER_BALANCE:Ljava/lang/String; = "master_balance"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist MASTER_MONO:Ljava/lang/String; = "master_mono"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o MEDIA_BUTTON_RECEIVER:Ljava/lang/String; = "media_button_receiver"
    .annotation runtime Landroid/provider/Settings$Readable;
        maxTargetSdk = 0x1e
    .end annotation
.end field

.field public static final blacklist MEDIA_VIBRATION_INTENSITY:Ljava/lang/String; = "media_vibration_intensity"

.field public static final blacklist MIN_REFRESH_RATE:Ljava/lang/String; = "min_refresh_rate"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist MODE_RINGER:Ljava/lang/String; = "mode_ringer"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist MODE_RINGER_STREAMS_AFFECTED:Ljava/lang/String; = "mode_ringer_streams_affected"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist MOUSE_POINTER_ACCELERATION_ENABLED:Ljava/lang/String; = "mouse_pointer_acceleration_enabled"

.field public static final blacklist MOUSE_REVERSE_VERTICAL_SCROLLING:Ljava/lang/String; = "mouse_reverse_vertical_scrolling"

.field public static final blacklist MOUSE_SCROLLING_ACCELERATION:Ljava/lang/String; = "mouse_scrolling_acceleration"

.field public static final blacklist MOUSE_SCROLLING_SPEED:Ljava/lang/String; = "mouse_scrolling_speed"

.field public static final blacklist MOUSE_SWAP_PRIMARY_BUTTON:Ljava/lang/String; = "mouse_swap_primary_button"

.field private static final greylist-max-r MOVED_TO_GLOBAL:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist MOVED_TO_SECURE:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-r MOVED_TO_SECURE_THEN_GLOBAL:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist MULTI_AUDIO_FOCUS_ENABLED:Ljava/lang/String; = "multi_audio_focus_enabled"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist MUTE_STREAMS_AFFECTED:Ljava/lang/String; = "mute_streams_affected"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist NETWORK_PREFERENCE:Ljava/lang/String; = "network_preference"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist NEXT_ALARM_FORMATTED:Ljava/lang/String; = "next_alarm_formatted"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o NOTIFICATIONS_USE_RING_VOLUME:Ljava/lang/String; = "notifications_use_ring_volume"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist NOTIFICATION_COOLDOWN_ALL:Ljava/lang/String; = "notification_cooldown_all"

.field public static final blacklist NOTIFICATION_COOLDOWN_ENABLED:Ljava/lang/String; = "notification_cooldown_enabled"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist NOTIFICATION_COOLDOWN_VIBRATE_UNLOCKED:Ljava/lang/String; = "notification_cooldown_vibrate_unlocked"

.field public static final greylist-max-r NOTIFICATION_LIGHT_PULSE:Ljava/lang/String; = "notification_light_pulse"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist NOTIFICATION_SOUND:Ljava/lang/String; = "notification_sound"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o NOTIFICATION_SOUND_CACHE:Ljava/lang/String; = "notification_sound_cache"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o NOTIFICATION_SOUND_CACHE_URI:Landroid/net/Uri;

.field public static final greylist-max-o NOTIFICATION_VIBRATION_INTENSITY:Ljava/lang/String; = "notification_vibration_intensity"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist PARENTAL_CONTROL_ENABLED:Ljava/lang/String; = "parental_control_enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist PARENTAL_CONTROL_LAST_UPDATE:Ljava/lang/String; = "parental_control_last_update"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist PARENTAL_CONTROL_REDIRECT_URL:Ljava/lang/String; = "parental_control_redirect_url"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist PEAK_REFRESH_RATE:Ljava/lang/String; = "peak_refresh_rate"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist POINTER_FILL_STYLE:Ljava/lang/String; = "pointer_fill_style"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-r POINTER_LOCATION:Ljava/lang/String; = "pointer_location"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist POINTER_SCALE:Ljava/lang/String; = "pointer_scale"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-r POINTER_SPEED:Ljava/lang/String; = "pointer_speed"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist POINTER_STROKE_STYLE:Ljava/lang/String; = "pointer_stroke_style"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o POWER_SOUNDS_ENABLED:Ljava/lang/String; = "power_sounds_enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist PREFERRED_REGION:Ljava/lang/String; = "preferred_region"

.field public static final greylist-max-r PRIVATE_SETTINGS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist-max-r PUBLIC_SETTINGS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist RADIO_BLUETOOTH:Ljava/lang/String; = "bluetooth"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist RADIO_CELL:Ljava/lang/String; = "cell"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist RADIO_NFC:Ljava/lang/String; = "nfc"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist RADIO_WIFI:Ljava/lang/String; = "wifi"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o RADIO_WIMAX:Ljava/lang/String; = "wimax"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist RINGTONE:Ljava/lang/String; = "ringtone"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o RINGTONE_CACHE:Ljava/lang/String; = "ringtone_cache"

.field public static final greylist-max-o RINGTONE_CACHE_URI:Landroid/net/Uri;

.field public static final blacklist RING_VIBRATION_INTENSITY:Ljava/lang/String; = "ring_vibration_intensity"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist SCREEN_AUTO_BRIGHTNESS_ADJ:Ljava/lang/String; = "screen_auto_brightness_adj"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist SCREEN_BRIGHTNESS:Ljava/lang/String; = "screen_brightness"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist SCREEN_BRIGHTNESS_AUTOMATIC_BRIGHT:I = 0x1

.field public static final blacklist SCREEN_BRIGHTNESS_AUTOMATIC_DIM:I = 0x3

.field public static final blacklist SCREEN_BRIGHTNESS_AUTOMATIC_NORMAL:I = 0x2

.field public static final blacklist SCREEN_BRIGHTNESS_FOR_ALS:Ljava/lang/String; = "screen_brightness_for_als"

.field public static final whitelist SCREEN_BRIGHTNESS_MODE:Ljava/lang/String; = "screen_brightness_mode"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist SCREEN_BRIGHTNESS_MODE_AUTOMATIC:I = 0x1

.field public static final whitelist SCREEN_BRIGHTNESS_MODE_MANUAL:I = 0x0

.field public static final blacklist SCREEN_FLASH_NOTIFICATION:Ljava/lang/String; = "screen_flash_notification"

.field public static final blacklist SCREEN_FLASH_NOTIFICATION_COLOR:Ljava/lang/String; = "screen_flash_notification_color_global"

.field public static final whitelist SCREEN_OFF_TIMEOUT:Ljava/lang/String; = "screen_off_timeout"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist SETTINGS_CLASSNAME:Ljava/lang/String; = "settings_classname"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SETUP_WIZARD_HAS_RUN:Ljava/lang/String; = "setup_wizard_has_run"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o SHOW_BATTERY_PERCENT:Ljava/lang/String; = "status_bar_show_battery_percent"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist SHOW_GTALK_SERVICE_STATUS:Ljava/lang/String; = "SHOW_GTALK_SERVICE_STATUS"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist SHOW_KEY_PRESSES:Ljava/lang/String; = "show_key_presses"

.field public static final whitelist SHOW_PROCESSES:Ljava/lang/String; = "show_processes"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist SHOW_ROTARY_INPUT:Ljava/lang/String; = "show_rotary_input"

.field public static final greylist-max-r SHOW_TOUCHES:Ljava/lang/String; = "show_touches"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist SHOW_WEB_SUGGESTIONS:Ljava/lang/String; = "show_web_suggestions"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o SIP_ADDRESS_ONLY:Ljava/lang/String; = "SIP_ADDRESS_ONLY"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o SIP_ALWAYS:Ljava/lang/String; = "SIP_ALWAYS"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o SIP_ASK_ME_EACH_TIME:Ljava/lang/String; = "SIP_ASK_ME_EACH_TIME"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o SIP_CALL_OPTIONS:Ljava/lang/String; = "sip_call_options"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o SIP_RECEIVE_CALLS:Ljava/lang/String; = "sip_receive_calls"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist SOUND_EFFECTS_ENABLED:Ljava/lang/String; = "sound_effects_enabled"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist STAY_ON_WHILE_PLUGGED_IN:Ljava/lang/String; = "stay_on_while_plugged_in"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o SYSTEM_LOCALES:Ljava/lang/String; = "system_locales"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist TEXT_AUTO_CAPS:Ljava/lang/String; = "auto_caps"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist TEXT_AUTO_PUNCTUATE:Ljava/lang/String; = "auto_punctuate"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist TEXT_AUTO_REPLACE:Ljava/lang/String; = "auto_replace"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist TEXT_SHOW_PASSWORD:Ljava/lang/String; = "show_password"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist TIME_12_24:Ljava/lang/String; = "time_12_24"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist TOUCHPAD_ACCELERATION_ENABLED:Ljava/lang/String; = "touchpad_acceleration_enabled"

.field public static final blacklist TOUCHPAD_NATURAL_SCROLLING:Ljava/lang/String; = "touchpad_natural_scrolling"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist TOUCHPAD_POINTER_SPEED:Ljava/lang/String; = "touchpad_pointer_speed"

.field public static final blacklist TOUCHPAD_RIGHT_CLICK_ZONE:Ljava/lang/String; = "touchpad_right_click_zone"

.field public static final blacklist TOUCHPAD_SYSTEM_GESTURES:Ljava/lang/String; = "touchpad_system_gestures"

.field public static final blacklist TOUCHPAD_TAP_DRAGGING:Ljava/lang/String; = "touchpad_tap_dragging"

.field public static final blacklist TOUCHPAD_TAP_TO_CLICK:Ljava/lang/String; = "touchpad_tap_to_click"

.field public static final blacklist TOUCHPAD_THREE_FINGER_TAP_CUSTOMIZATION:Ljava/lang/String; = "touchpad_three_finger_tap_customization"

.field public static final blacklist TOUCHPAD_VISUALIZER:Ljava/lang/String; = "touchpad_visualizer"

.field public static final whitelist TRANSITION_ANIMATION_SCALE:Ljava/lang/String; = "transition_animation_scale"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-r TTY_MODE:Ljava/lang/String; = "tty_mode"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-r UNLOCK_SOUND:Ljava/lang/String; = "unlock_sound"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist UNREAD_NOTIFICATION_DOT_INDICATOR:Ljava/lang/String; = "unread_notification_dot_indicator"

.field public static final whitelist USB_MASS_STORAGE_ENABLED:Ljava/lang/String; = "usb_mass_storage_enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist USER_ROTATION:Ljava/lang/String; = "user_rotation"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist USE_GOOGLE_MAIL:Ljava/lang/String; = "use_google_mail"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o VIBRATE_INPUT_DEVICES:Ljava/lang/String; = "vibrate_input_devices"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-r VIBRATE_IN_SILENT:Ljava/lang/String; = "vibrate_in_silent"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist VIBRATE_ON:Ljava/lang/String; = "vibrate_on"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist VIBRATE_WHEN_RINGING:Ljava/lang/String; = "vibrate_when_ringing"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o VOLUME_ACCESSIBILITY:Ljava/lang/String; = "volume_a11y"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist VOLUME_ALARM:Ljava/lang/String; = "volume_alarm"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final blacklist VOLUME_ASSISTANT:Ljava/lang/String; = "volume_assistant"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist VOLUME_BLUETOOTH_SCO:Ljava/lang/String; = "volume_bluetooth_sco"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist-max-o VOLUME_MASTER:Ljava/lang/String; = "volume_master"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist VOLUME_MUSIC:Ljava/lang/String; = "volume_music"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist VOLUME_NOTIFICATION:Ljava/lang/String; = "volume_notification"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist VOLUME_RING:Ljava/lang/String; = "volume_ring"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist VOLUME_SETTINGS:[Ljava/lang/String;

.field public static final greylist-max-o VOLUME_SETTINGS_INT:[Ljava/lang/String;

.field public static final greylist VOLUME_SYSTEM:Ljava/lang/String; = "volume_system"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final greylist VOLUME_VOICE:Ljava/lang/String; = "volume_voice"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field public static final whitelist WAIT_FOR_DEBUGGER:Ljava/lang/String; = "wait_for_debugger"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist WALLPAPER_ACTIVITY:Ljava/lang/String; = "wallpaper_activity"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist WEAR_ACCESSIBILITY_GESTURE_ENABLED:Ljava/lang/String; = "wear_accessibility_gesture_enabled"

.field public static final blacklist WEAR_ACCESSIBILITY_GESTURE_ENABLED_DURING_OOBE:Ljava/lang/String; = "wear_accessibility_gesture_enabled_during_oobe"

.field public static final blacklist WEAR_TTS_PREWARM_ENABLED:Ljava/lang/String; = "wear_tts_prewarm_enabled"

.field public static final greylist-max-o WHEN_TO_MAKE_WIFI_CALLS:Ljava/lang/String; = "when_to_make_wifi_calls"
    .annotation runtime Landroid/provider/Settings$Readable;
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

.field public static final whitelist WIFI_SLEEP_POLICY:Ljava/lang/String; = "wifi_sleep_policy"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist WIFI_SLEEP_POLICY_DEFAULT:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist WIFI_SLEEP_POLICY_NEVER:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist WIFI_SLEEP_POLICY_NEVER_WHILE_PLUGGED:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist WIFI_STATIC_DNS1:Ljava/lang/String; = "wifi_static_dns1"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist WIFI_STATIC_DNS2:Ljava/lang/String; = "wifi_static_dns2"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist WIFI_STATIC_GATEWAY:Ljava/lang/String; = "wifi_static_gateway"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist WIFI_STATIC_IP:Ljava/lang/String; = "wifi_static_ip"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist WIFI_STATIC_NETMASK:Ljava/lang/String; = "wifi_static_netmask"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist WIFI_USE_STATIC_IP:Ljava/lang/String; = "wifi_use_static_ip"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation

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
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist WIFI_WATCHDOG_ON:Ljava/lang/String; = "wifi_watchdog_on"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist WIFI_WATCHDOG_PING_COUNT:Ljava/lang/String; = "wifi_watchdog_ping_count"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist WIFI_WATCHDOG_PING_DELAY_MS:Ljava/lang/String; = "wifi_watchdog_ping_delay_ms"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist WIFI_WATCHDOG_PING_TIMEOUT_MS:Ljava/lang/String; = "wifi_watchdog_ping_timeout_ms"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist WINDOW_ANIMATION_SCALE:Ljava/lang/String; = "window_animation_scale"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o WINDOW_ORIENTATION_LISTENER_LOG:Ljava/lang/String; = "window_orientation_listener_log"
    .annotation runtime Landroid/provider/Settings$Readable;
    .end annotation
.end field

.field private static final greylist sNameValueCache:Landroid/provider/Settings$NameValueCache;

.field private static final greylist-max-r sProviderHolder:Landroid/provider/Settings$ContentProviderHolder;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smputStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)Z
    .registers 7

    invoke-static/range {p0 .. p6}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)Z

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 22

    .line 4153
    nop

    .line 4154
    const-string v0, "content://settings/system"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    .line 4157
    new-instance v0, Landroid/provider/Settings$ContentProviderHolder;

    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1}, Landroid/provider/Settings$ContentProviderHolder;-><init>(Landroid/net/Uri;)V

    sput-object v0, Landroid/provider/Settings$System;->sProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    .line 4161
    new-instance v2, Landroid/provider/Settings$NameValueCache;

    sget-object v3, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    sget-object v7, Landroid/provider/Settings$System;->sProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    const-class v8, Landroid/provider/Settings$System;

    const-string v4, "GET_system"

    const-string v5, "PUT_system"

    const-string v6, "DELETE_system"

    invoke-direct/range {v2 .. v8}, Landroid/provider/Settings$NameValueCache;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/provider/Settings$ContentProviderHolder;Ljava/lang/Class;)V

    sput-object v2, Landroid/provider/Settings$System;->sNameValueCache:Landroid/provider/Settings$NameValueCache;

    .line 4172
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    sput-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    .line 4173
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "adaptive_sleep"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4174
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "android_id"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4175
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "http_proxy"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4176
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v2, "location_providers_allowed"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4177
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v2, "lock_biometric_weak_flags"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4178
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v2, "lock_pattern_autolock"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4179
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v2, "lock_pattern_visible_pattern"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4180
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v2, "lock_pattern_tactile_feedback_enabled"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4181
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v2, "logging_id"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4182
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v2, "parental_control_enabled"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4183
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v2, "parental_control_last_update"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4184
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v2, "parental_control_redirect_url"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4185
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v2, "settings_classname"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4186
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v2, "use_google_mail"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4187
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v2, "wifi_networks_available_repeat_delay"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4188
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v2, "wifi_num_open_networks_kept"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4189
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v2, "wifi_on"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4190
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v2, "wifi_watchdog_acceptable_packet_loss_percentage"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4191
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v2, "wifi_watchdog_ap_count"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4192
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v2, "wifi_watchdog_background_check_delay_ms"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4193
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v2, "wifi_watchdog_background_check_enabled"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4194
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v2, "wifi_watchdog_background_check_timeout_ms"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4195
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v2, "wifi_watchdog_initial_ignored_ping_count"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4196
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v2, "wifi_watchdog_max_ap_checks"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4197
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v2, "wifi_watchdog_on"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4198
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v2, "wifi_watchdog_ping_count"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4199
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v2, "wifi_watchdog_ping_delay_ms"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4200
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v2, "wifi_watchdog_ping_timeout_ms"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4203
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v2, "install_non_market_apps"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4211
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    .line 4212
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE_THEN_GLOBAL:Ljava/util/HashSet;

    .line 4216
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE_THEN_GLOBAL:Ljava/util/HashSet;

    const-string v2, "adb_enabled"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4217
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE_THEN_GLOBAL:Ljava/util/HashSet;

    const-string v2, "bluetooth_on"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4218
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE_THEN_GLOBAL:Ljava/util/HashSet;

    const-string v2, "data_roaming"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4219
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE_THEN_GLOBAL:Ljava/util/HashSet;

    const-string v2, "device_provisioned"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4220
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE_THEN_GLOBAL:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4221
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE_THEN_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "network_preference"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4222
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE_THEN_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "usb_mass_storage_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4223
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE_THEN_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_mobile_data_transition_wakelock_timeout_ms"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4224
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE_THEN_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_max_dhcp_retry_count"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4225
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE_THEN_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_networks_available_notification_on"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4228
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "airplane_mode_on"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4229
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "airplane_mode_radios"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4230
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "airplane_mode_toggleable_radios"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4231
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "auto_time"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4232
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "auto_time_zone"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4233
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "car_dock_sound"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4234
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v2, "car_undock_sound"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4235
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v3, "desk_dock_sound"

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4236
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v4, "desk_undock_sound"

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4237
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v5, "dock_sounds_enabled"

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4238
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v6, "lock_sound"

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4239
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v7, "unlock_sound"

    invoke-virtual {v0, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4240
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v8, "low_battery_sound"

    invoke-virtual {v0, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4241
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v9, "power_sounds_enabled"

    invoke-virtual {v0, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4242
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v10, "stay_on_while_plugged_in"

    invoke-virtual {v0, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4243
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v10, "wifi_sleep_policy"

    invoke-virtual {v0, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4244
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v10, "mode_ringer"

    invoke-virtual {v0, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4245
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v10, "window_animation_scale"

    invoke-virtual {v0, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4246
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v10, "transition_animation_scale"

    invoke-virtual {v0, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4247
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v10, "animator_duration_scale"

    invoke-virtual {v0, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4248
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v10, "fancy_ime_animations"

    invoke-virtual {v0, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4249
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v10, "compatibility_mode"

    invoke-virtual {v0, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4250
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v10, "emergency_tone"

    invoke-virtual {v0, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4251
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v10, "call_auto_retry"

    invoke-virtual {v0, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4252
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v10, "debug_app"

    invoke-virtual {v0, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4253
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v10, "wait_for_debugger"

    invoke-virtual {v0, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4254
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v10, "always_finish_activities"

    invoke-virtual {v0, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4255
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v10, "tzinfo_content_url"

    invoke-virtual {v0, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4256
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v10, "tzinfo_metadata_url"

    invoke-virtual {v0, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4257
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v10, "selinux_content_url"

    invoke-virtual {v0, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4258
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v10, "selinux_metadata_url"

    invoke-virtual {v0, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4259
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v10, "sms_short_codes_content_url"

    invoke-virtual {v0, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4260
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v10, "sms_short_codes_metadata_url"

    invoke-virtual {v0, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4261
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v10, "cert_pin_content_url"

    invoke-virtual {v0, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4262
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v10, "cert_pin_metadata_url"

    invoke-virtual {v0, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4263
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v10, "nfc"

    invoke-virtual {v0, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4264
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v10, "cell"

    invoke-virtual {v0, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4265
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v10, "wifi"

    invoke-virtual {v0, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4266
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v10, "bluetooth"

    invoke-virtual {v0, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4267
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v10, "wimax"

    invoke-virtual {v0, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4268
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v10, "show_processes"

    invoke-virtual {v0, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5632
    const-string/jumbo v16, "volume_notification"

    const-string/jumbo v17, "volume_bluetooth_sco"

    const-string/jumbo v11, "volume_voice"

    const-string/jumbo v12, "volume_system"

    const-string/jumbo v13, "volume_ring"

    const-string/jumbo v14, "volume_music"

    const-string/jumbo v15, "volume_alarm"

    filled-new-array/range {v11 .. v17}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/provider/Settings$System;->VOLUME_SETTINGS:[Ljava/lang/String;

    .line 5644
    const-string/jumbo v20, "volume_a11y"

    const-string/jumbo v21, "volume_assistant"

    const-string/jumbo v10, "volume_voice"

    const-string/jumbo v11, "volume_system"

    const-string/jumbo v12, "volume_ring"

    const-string/jumbo v13, "volume_music"

    const-string/jumbo v14, "volume_alarm"

    const-string/jumbo v15, "volume_notification"

    const-string/jumbo v16, "volume_bluetooth_sco"

    const-string v17, ""

    const-string v18, ""

    const-string v19, ""

    filled-new-array/range {v10 .. v21}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/provider/Settings$System;->VOLUME_SETTINGS_INT:[Ljava/lang/String;

    .line 5683
    const-string/jumbo v0, "ringtone"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    sput-object v10, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    .line 5688
    const-string/jumbo v10, "ringtone_cache"

    invoke-static {v10}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    sput-object v10, Landroid/provider/Settings$System;->RINGTONE_CACHE_URI:Landroid/net/Uri;

    .line 5705
    const-string/jumbo v10, "notification_sound"

    invoke-static {v10}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    sput-object v11, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    .line 5711
    const-string/jumbo v11, "notification_sound_cache"

    invoke-static {v11}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    sput-object v11, Landroid/provider/Settings$System;->NOTIFICATION_SOUND_CACHE_URI:Landroid/net/Uri;

    .line 5760
    const-string v11, "alarm_alert"

    invoke-static {v11}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    sput-object v12, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    .line 5766
    const-string v12, "alarm_alert_cache"

    invoke-static {v12}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    sput-object v12, Landroid/provider/Settings$System;->ALARM_ALERT_CACHE_URI:Landroid/net/Uri;

    .line 6520
    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/String;

    sput-object v12, Landroid/provider/Settings$System;->LEGACY_RESTORE_SETTINGS:[Ljava/lang/String;

    .line 6529
    new-instance v12, Landroid/util/ArraySet;

    invoke-direct {v12}, Landroid/util/ArraySet;-><init>()V

    sput-object v12, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    .line 6531
    sget-object v12, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v13, "end_button_behavior"

    invoke-interface {v12, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6532
    sget-object v12, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v14, "wifi_use_static_ip"

    invoke-interface {v12, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6533
    sget-object v12, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v15, "wifi_static_ip"

    invoke-interface {v12, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6534
    sget-object v12, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v15, "wifi_static_gateway"

    invoke-interface {v12, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6535
    sget-object v12, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v15, "wifi_static_netmask"

    invoke-interface {v12, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6536
    sget-object v12, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v15, "wifi_static_dns1"

    invoke-interface {v12, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6537
    sget-object v12, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v15, "wifi_static_dns2"

    invoke-interface {v12, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6538
    sget-object v12, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v15, "bluetooth_discoverability"

    invoke-interface {v12, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6539
    sget-object v12, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v15, "bluetooth_discoverability_timeout"

    invoke-interface {v12, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6540
    sget-object v12, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v15, "next_alarm_formatted"

    invoke-interface {v12, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6541
    sget-object v12, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v15, "font_scale"

    invoke-interface {v12, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6542
    sget-object v12, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    move-object/from16 v16, v15

    const-string/jumbo v15, "system_locales"

    invoke-interface {v12, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6543
    sget-object v12, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v15, "dim_screen"

    invoke-interface {v12, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6544
    sget-object v12, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v15, "screen_off_timeout"

    invoke-interface {v12, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6545
    sget-object v12, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v15, "screen_brightness"

    invoke-interface {v12, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6546
    sget-object v12, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v15, "screen_brightness_mode"

    invoke-interface {v12, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6547
    sget-object v12, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v15, "mode_ringer_streams_affected"

    invoke-interface {v12, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6548
    sget-object v12, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v15, "mute_streams_affected"

    invoke-interface {v12, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6549
    sget-object v12, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v15, "vibrate_on"

    invoke-interface {v12, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6550
    sget-object v12, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v15, "volume_ring"

    invoke-interface {v12, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6551
    sget-object v12, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v15, "volume_system"

    invoke-interface {v12, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6552
    sget-object v12, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v15, "volume_voice"

    invoke-interface {v12, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6553
    sget-object v12, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v15, "volume_music"

    invoke-interface {v12, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6554
    sget-object v12, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v15, "volume_alarm"

    invoke-interface {v12, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6555
    sget-object v12, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v15, "volume_notification"

    invoke-interface {v12, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6556
    sget-object v12, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v15, "volume_bluetooth_sco"

    invoke-interface {v12, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6557
    sget-object v12, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v15, "volume_assistant"

    invoke-interface {v12, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6558
    sget-object v12, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6559
    sget-object v12, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    invoke-interface {v12, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6560
    sget-object v12, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    invoke-interface {v12, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6561
    sget-object v12, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v15, "auto_replace"

    invoke-interface {v12, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6562
    sget-object v12, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v15, "auto_caps"

    invoke-interface {v12, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6563
    sget-object v12, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v15, "auto_punctuate"

    invoke-interface {v12, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6564
    sget-object v12, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v15, "show_password"

    invoke-interface {v12, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6565
    sget-object v12, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    move-object/from16 v17, v11

    const-string v11, "SHOW_GTALK_SERVICE_STATUS"

    invoke-interface {v12, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6566
    sget-object v11, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v12, "wallpaper_activity"

    invoke-interface {v11, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6567
    sget-object v11, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v12, "time_12_24"

    invoke-interface {v11, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6568
    sget-object v11, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    move-object/from16 v18, v10

    const-string v10, "date_format"

    invoke-interface {v11, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6569
    sget-object v11, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    move-object/from16 v19, v0

    const-string/jumbo v0, "setup_wizard_has_run"

    invoke-interface {v11, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6570
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v11, "accelerometer_rotation"

    invoke-interface {v0, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6571
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v11, "user_rotation"

    invoke-interface {v0, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6572
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v11, "dtmf_tone"

    invoke-interface {v0, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6573
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v11, "sound_effects_enabled"

    invoke-interface {v0, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6574
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    move-object/from16 v20, v12

    const-string/jumbo v12, "haptic_feedback_enabled"

    invoke-interface {v0, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6575
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    move-object/from16 v21, v15

    const-string/jumbo v15, "show_web_suggestions"

    invoke-interface {v0, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6576
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v15, "vibrate_when_ringing"

    invoke-interface {v0, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6577
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v15, "apply_ramping_ringer"

    invoke-interface {v0, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6586
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    .line 6588
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    invoke-interface {v0, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6589
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6590
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    const-string v13, "advanced_settings"

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6591
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    const-string/jumbo v13, "wear_accessibility_gesture_enabled"

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6592
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    const-string/jumbo v13, "wear_accessibility_gesture_enabled_during_oobe"

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6593
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    const-string/jumbo v13, "wear_tts_prewarm_enabled"

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6594
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    const-string/jumbo v13, "screen_auto_brightness_adj"

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6595
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    const-string/jumbo v13, "vibrate_input_devices"

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6596
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    const-string/jumbo v13, "volume_master"

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6597
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    const-string/jumbo v13, "master_mono"

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6598
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    const-string/jumbo v13, "master_balance"

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6599
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    const-string/jumbo v13, "notifications_use_ring_volume"

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6600
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    const-string/jumbo v13, "vibrate_in_silent"

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6601
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    const-string/jumbo v13, "media_button_receiver"

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6602
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    const-string/jumbo v13, "hide_rotation_lock_toggle_for_accessibility"

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6603
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    const-string v13, "dtmf_tone_type"

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6604
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    const-string/jumbo v13, "hearing_aid"

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6605
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    const-string/jumbo v13, "tty_mode"

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6606
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    const-string/jumbo v13, "notification_light_pulse"

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6607
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    const-string/jumbo v13, "pointer_location"

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6608
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    const-string/jumbo v13, "show_touches"

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6609
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    const-string/jumbo v13, "show_key_presses"

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6610
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    const-string/jumbo v13, "window_orientation_listener_log"

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6611
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6612
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6613
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    const-string/jumbo v5, "lockscreen_sounds_enabled"

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6614
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    const-string/jumbo v5, "lockscreen.disabled"

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6615
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6616
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6617
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6618
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6619
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6620
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6621
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6622
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "sip_receive_calls"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6623
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "sip_call_options"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6624
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    const-string v1, "SIP_ALWAYS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6625
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    const-string v1, "SIP_ADDRESS_ONLY"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6626
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    const-string v1, "SIP_ASK_ME_EACH_TIME"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6627
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "pointer_speed"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6628
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "pointer_fill_style"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6629
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "pointer_stroke_style"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6630
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "pointer_scale"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6631
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "lock_to_app_enabled"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6632
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    const-string v1, "egg_mode"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6633
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "status_bar_show_battery_percent"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6634
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    const-string v1, "display_color_mode"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6635
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    const-string v1, "display_color_mode_vendor_hint"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6636
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "locale_preferences"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6637
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "touchpad_pointer_speed"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6638
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "touchpad_natural_scrolling"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6639
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "touchpad_tap_to_click"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6640
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "touchpad_tap_dragging"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6641
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "touchpad_right_click_zone"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6642
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "touchpad_system_gestures"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6643
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "touchpad_acceleration_enabled"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6644
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    const-string v1, "camera_flash_notification"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6645
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "screen_flash_notification"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6646
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "screen_flash_notification_color_global"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6647
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    const-string v1, "device_font_scale"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6648
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "mouse_reverse_vertical_scrolling"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6649
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "mouse_swap_primary_button"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6650
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "mouse_pointer_acceleration_enabled"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6651
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "preferred_region"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6652
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "mouse_scrolling_acceleration"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6653
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "mouse_scrolling_speed"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6661
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Landroid/provider/Settings$System;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    .line 6663
    sget-object v0, Landroid/provider/Settings$System;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6664
    sget-object v0, Landroid/provider/Settings$System;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    invoke-interface {v0, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6665
    sget-object v0, Landroid/provider/Settings$System;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    invoke-interface {v0, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6666
    sget-object v0, Landroid/provider/Settings$System;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6667
    sget-object v0, Landroid/provider/Settings$System;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    move-object/from16 v2, v20

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6683
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/provider/Settings$System;->CLONE_FROM_PARENT_ON_VALUE:Ljava/util/Map;

    .line 6685
    sget-object v0, Landroid/provider/Settings$System;->CLONE_FROM_PARENT_ON_VALUE:Ljava/util/Map;

    const-string/jumbo v3, "sync_parent_sounds"

    move-object/from16 v4, v19

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6686
    sget-object v0, Landroid/provider/Settings$System;->CLONE_FROM_PARENT_ON_VALUE:Ljava/util/Map;

    move-object/from16 v4, v18

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6687
    sget-object v0, Landroid/provider/Settings$System;->CLONE_FROM_PARENT_ON_VALUE:Ljava/util/Map;

    move-object/from16 v4, v17

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6699
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Landroid/provider/Settings$System;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    .line 6701
    sget-object v0, Landroid/provider/Settings$System;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    const-string v3, "auto_replace"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6702
    sget-object v0, Landroid/provider/Settings$System;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    const-string v3, "auto_caps"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6703
    sget-object v0, Landroid/provider/Settings$System;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    const-string v3, "auto_punctuate"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6704
    sget-object v0, Landroid/provider/Settings$System;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6705
    sget-object v0, Landroid/provider/Settings$System;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6706
    sget-object v0, Landroid/provider/Settings$System;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6707
    sget-object v0, Landroid/provider/Settings$System;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    invoke-interface {v0, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6708
    sget-object v0, Landroid/provider/Settings$System;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6709
    sget-object v0, Landroid/provider/Settings$System;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    invoke-interface {v0, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6710
    sget-object v0, Landroid/provider/Settings$System;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    const-string v1, "accelerometer_rotation"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6711
    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 4143
    invoke-direct {p0}, Landroid/provider/Settings$NameValueTable;-><init>()V

    return-void
.end method

.method public static greylist-max-o adjustConfigurationForUser(Landroid/content/ContentResolver;Landroid/content/res/Configuration;IZ)V
    .registers 9
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "outConfig"    # Landroid/content/res/Configuration;
    .param p2, "userHandle"    # I
    .param p3, "updateSettingsIfEmpty"    # Z

    .line 4740
    invoke-static {p0, p2}, Landroid/provider/Settings$System;->getDefaultFontScale(Landroid/content/ContentResolver;I)F

    move-result v0

    .line 4741
    .local v0, "defaultFontScale":F
    const-string v1, "font_scale"

    invoke-static {p0, v1, v0, p2}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v1

    iput v1, p1, Landroid/content/res/Configuration;->fontScale:F

    .line 4743
    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_15

    .line 4744
    iput v0, p1, Landroid/content/res/Configuration;->fontScale:F

    .line 4746
    :cond_15
    const-string v1, "font_weight_adjustment"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, p2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, p1, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    .line 4748
    invoke-static {}, Landroid/app/Flags;->systemTermsOfAddressEnabled()Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 4750
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v3, Landroid/app/GrammaticalInflectionManager;

    .line 4751
    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/GrammaticalInflectionManager;

    .line 4752
    .local v1, "manager":Landroid/app/GrammaticalInflectionManager;
    nop

    .line 4753
    invoke-virtual {v1, p2}, Landroid/app/GrammaticalInflectionManager;->peekSystemGrammaticalGenderByUserId(I)I

    move-result v3

    .line 4752
    invoke-virtual {p1, v3}, Landroid/content/res/Configuration;->setGrammaticalGender(I)V

    .line 4756
    .end local v1    # "manager":Landroid/app/GrammaticalInflectionManager;
    :cond_3c
    nop

    .line 4757
    const-string/jumbo v1, "system_locales"

    invoke-static {p0, v1, p2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 4758
    .local v3, "localeValue":Ljava/lang/String;
    if-eqz v3, :cond_4e

    .line 4759
    invoke-static {v3}, Landroid/os/LocaleList;->forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V

    goto :goto_5c

    .line 4765
    :cond_4e
    if-eqz p3, :cond_5c

    .line 4769
    nop

    .line 4770
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object v4

    .line 4769
    invoke-static {p0, v1, v4, p2, v2}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;IZ)Z

    .line 4774
    :cond_5c
    :goto_5c
    return-void
.end method

.method public static whitelist canWrite(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 6999
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    .line 7000
    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 6999
    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings;->isCallingPackageAllowedToWriteSettings(Landroid/content/Context;ILjava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static greylist-max-o clearConfiguration(Landroid/content/res/Configuration;)V
    .registers 2
    .param p0, "inoutConfig"    # Landroid/content/res/Configuration;

    .line 4787
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/res/Configuration;->fontScale:F

    .line 4788
    iget-boolean v0, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    if-nez v0, :cond_14

    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    .line 4789
    invoke-virtual {p0}, Landroid/content/res/Configuration;->clearLocales()V

    .line 4791
    :cond_14
    const v0, 0x7fffffff

    iput v0, p0, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    .line 4792
    return-void
.end method

.method public static greylist-max-o clearProviderForTest()V
    .registers 1

    .line 4289
    sget-object v0, Landroid/provider/Settings$System;->sProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-virtual {v0}, Landroid/provider/Settings$ContentProviderHolder;->clearProviderForTest()V

    .line 4290
    sget-object v0, Landroid/provider/Settings$System;->sNameValueCache:Landroid/provider/Settings$NameValueCache;

    invoke-virtual {v0}, Landroid/provider/Settings$NameValueCache;->clearGenerationTrackerForTest()V

    .line 4291
    return-void
.end method

.method public static greylist-max-o getCloneFromParentOnValueSettings(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 6692
    .local p0, "outMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Landroid/provider/Settings$System;->CLONE_FROM_PARENT_ON_VALUE:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 6693
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

    .line 6672
    .local p0, "outKeySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v0, Landroid/provider/Settings$System;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    invoke-interface {p0, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 6673
    return-void
.end method

.method public static whitelist getConfiguration(Landroid/content/ContentResolver;Landroid/content/res/Configuration;)V
    .registers 4
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "outConfig"    # Landroid/content/res/Configuration;

    .line 4733
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Landroid/provider/Settings$System;->adjustConfigurationForUser(Landroid/content/ContentResolver;Landroid/content/res/Configuration;IZ)V

    .line 4735
    return-void
.end method

.method private static blacklist getDefaultFontScale(Landroid/content/ContentResolver;I)F
    .registers 4
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "userHandle"    # I

    .line 4777
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/Flags;->configurableFontScaleDefault()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_f

    .line 4778
    const-string v0, "device_font_scale"

    invoke-static {p0, v0, v1, p1}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v1

    goto :goto_10

    .line 4779
    :cond_f
    nop

    .line 4777
    :goto_10
    return v1
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

    .line 4691
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)F

    move-result v0

    return v0
.end method

.method public static whitelist getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F
    .registers 4
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # F

    .line 4661
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    return v0
.end method

.method public static greylist-max-o getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F
    .registers 6
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # F
    .param p3, "userHandle"    # I

    .line 4667
    invoke-static {p0, p1, p3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 4668
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

    .line 4697
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 4698
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

    .line 4534
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static whitelist getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .registers 4
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # I

    .line 4504
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public static greylist getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .registers 5
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .line 4541
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 4542
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

    .line 4510
    invoke-static {p0, p1, p3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 4511
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

    .line 4613
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J
    .registers 6
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # J

    .line 4584
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/provider/Settings$System;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)J

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

    .line 4619
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 4620
    .local v0, "v":Ljava/lang/String;
    invoke-static {v0, p1}, Landroid/provider/Settings;->-$$Nest$smparseLongSetting(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v1

    return-wide v1
.end method

.method public static greylist-max-o getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)J
    .registers 8
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # J
    .param p4, "userHandle"    # I

    .line 4590
    invoke-static {p0, p1, p4}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 4591
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

    .line 4273
    .local p0, "outKeySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    invoke-interface {p0, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 4274
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE_THEN_GLOBAL:Ljava/util/HashSet;

    invoke-interface {p0, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 4275
    return-void
.end method

.method public static greylist-max-o getMovedToSecureSettings(Ljava/util/Set;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 4279
    .local p0, "outKeySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    invoke-interface {p0, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 4280
    return-void
.end method

.method public static greylist-max-o getNonLegacyMovedKeys(Ljava/util/HashSet;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 4284
    .local p0, "outKeySet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 4285
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

    .line 4296
    .local p0, "allKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p1, "readableKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p2, "readableKeysWithMaxTargetSdk":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-class v0, Landroid/provider/Settings$System;

    invoke-static {v0, p0, p1, p2}, Landroid/provider/Settings;->-$$Nest$smgetPublicSettingsForClass(Ljava/lang/Class;Ljava/util/Set;Ljava/util/Set;Landroid/util/ArrayMap;)V

    .line 4298
    return-void
.end method

.method public static whitelist getShowGTalkServiceStatus(Landroid/content/ContentResolver;)Z
    .registers 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4828
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v0

    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getShowGTalkServiceStatusForUser(Landroid/content/ContentResolver;I)Z

    move-result v0

    return v0
.end method

.method public static greylist-max-o getShowGTalkServiceStatusForUser(Landroid/content/ContentResolver;I)Z
    .registers 4
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "userHandle"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4838
    const-string v0, "SHOW_GTALK_SERVICE_STATUS"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_a

    const/4 v1, 0x1

    :cond_a
    return v1
.end method

.method public static whitelist getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;

    .line 4307
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static greylist getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;
    .registers 6
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .line 4314
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Setting "

    const-string v2, "Settings"

    if-eqz v0, :cond_2b

    .line 4315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " has moved from android.provider.Settings.System to android.provider.Settings.Secure, returning read-only value."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4317
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4319
    :cond_2b
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_43

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE_THEN_GLOBAL:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    goto :goto_43

    .line 4325
    :cond_3c
    sget-object v0, Landroid/provider/Settings$System;->sNameValueCache:Landroid/provider/Settings$NameValueCache;

    invoke-virtual {v0, p0, p1, p2}, Landroid/provider/Settings$NameValueCache;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4320
    :cond_43
    :goto_43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " has moved from android.provider.Settings.System to android.provider.Settings.Global, returning read-only value."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4322
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Global;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getUriFor(Ljava/lang/String;)Landroid/net/Uri;
    .registers 4
    .param p0, "name"    # Ljava/lang/String;

    .line 4476
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Setting "

    const-string v2, "Settings"

    if-eqz v0, :cond_2d

    .line 4477
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " has moved from android.provider.Settings.System to android.provider.Settings.Secure, returning Secure URI."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4479
    sget-object v0, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0}, Landroid/provider/Settings$Secure;->getUriFor(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 4481
    :cond_2d
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_45

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE_THEN_GLOBAL:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    goto :goto_45

    .line 4486
    :cond_3e
    sget-object v0, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0}, Landroid/provider/Settings$System;->getUriFor(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 4482
    :cond_45
    :goto_45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " has moved from android.provider.Settings.System to android.provider.Settings.Global, returning read-only global URI."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4484
    sget-object v0, Landroid/provider/Settings$Global;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0}, Landroid/provider/Settings$Global;->getUriFor(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o hasInterestingConfigurationChanges(I)Z
    .registers 2
    .param p0, "changes"    # I

    .line 4821
    const/high16 v0, 0x40000000    # 2.0f

    and-int/2addr v0, p0

    if-nez v0, :cond_c

    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_a

    goto :goto_c

    :cond_a
    const/4 v0, 0x0

    goto :goto_d

    :cond_c
    :goto_c
    const/4 v0, 0x1

    :goto_d
    return v0
.end method

.method public static whitelist putConfiguration(Landroid/content/ContentResolver;Landroid/content/res/Configuration;)Z
    .registers 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 4803
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->putConfigurationForUser(Landroid/content/ContentResolver;Landroid/content/res/Configuration;I)Z

    move-result v0

    return v0
.end method

.method public static greylist-max-o putConfigurationForUser(Landroid/content/ContentResolver;Landroid/content/res/Configuration;I)Z
    .registers 6
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "userHandle"    # I

    .line 4809
    const-string v0, "font_scale"

    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    invoke-static {p0, v0, v1, p2}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    .line 4811
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object v0

    .line 4810
    const-string/jumbo v2, "system_locales"

    invoke-static {p0, v2, v0, p2, v1}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;IZ)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v1, 0x1

    goto :goto_1f

    :cond_1e
    nop

    .line 4809
    :goto_1f
    return v1
.end method

.method public static whitelist putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z
    .registers 4
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # F

    .line 4715
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    move-result v0

    return v0
.end method

.method public static greylist-max-o putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z
    .registers 5
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # F
    .param p3, "userHandle"    # I

    .line 4721
    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, p3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static whitelist putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    .registers 4
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 4559
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public static greylist putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    .registers 5
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I
    .param p3, "userHandle"    # I

    .line 4566
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, p3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static whitelist putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z
    .registers 5
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # J

    .line 4637
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/provider/Settings$System;->putLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)Z

    move-result v0

    return v0
.end method

.method public static greylist-max-o putLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)Z
    .registers 6
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # J
    .param p4, "userHandle"    # I

    .line 4643
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, p4}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static whitelist putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 4336
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static whitelist putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 5
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "overrideableByRestore"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4355
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0, p3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;IZ)Z

    move-result v0

    return v0
.end method

.method public static whitelist putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;ZZ)Z
    .registers 12
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "makeDefault"    # Z
    .param p4, "overrideableByRestore"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4376
    nop

    .line 4377
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v5

    .line 4376
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v6, p4

    .end local p0    # "resolver":Landroid/content/ContentResolver;
    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "value":Ljava/lang/String;
    .end local p3    # "makeDefault":Z
    .end local p4    # "overrideableByRestore":Z
    .local v0, "resolver":Landroid/content/ContentResolver;
    .local v1, "name":Ljava/lang/String;
    .local v2, "value":Ljava/lang/String;
    .local v4, "makeDefault":Z
    .local v6, "overrideableByRestore":Z
    invoke-static/range {v0 .. v6}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)Z

    move-result p0

    return p0
.end method

.method public static greylist putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 5
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    .line 4384
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;IZ)Z

    move-result v0

    return v0
.end method

.method private static blacklist putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;IZ)Z
    .registers 12
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "userHandle"    # I
    .param p4, "overrideableByRestore"    # Z

    .line 4390
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    move v6, p4

    .end local p0    # "resolver":Landroid/content/ContentResolver;
    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "value":Ljava/lang/String;
    .end local p3    # "userHandle":I
    .end local p4    # "overrideableByRestore":Z
    .local v0, "resolver":Landroid/content/ContentResolver;
    .local v1, "name":Ljava/lang/String;
    .local v2, "value":Ljava/lang/String;
    .local v5, "userHandle":I
    .local v6, "overrideableByRestore":Z
    invoke-static/range {v0 .. v6}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)Z

    move-result p0

    return p0
.end method

.method private static blacklist putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)Z
    .registers 15
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "makeDefault"    # Z
    .param p5, "userHandle"    # I
    .param p6, "overrideableByRestore"    # Z

    .line 4400
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v3, "Setting "

    const-string v4, "Settings"

    if-eqz v0, :cond_28

    .line 4401
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " has moved from android.provider.Settings.System to android.provider.Settings.Secure, value is unchanged."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4403
    return v1

    .line 4405
    :cond_28
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_47

    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE_THEN_GLOBAL:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    goto :goto_47

    .line 4410
    :cond_39
    sget-object v0, Landroid/provider/Settings$System;->sNameValueCache:Landroid/provider/Settings$NameValueCache;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/provider/Settings$NameValueCache;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)Z

    move-result v0

    return v0

    .line 4406
    :cond_47
    :goto_47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " has moved from android.provider.Settings.System to android.provider.Settings.Global, value is unchanged."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4408
    return v1
.end method

.method public static whitelist resetToDefaults(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .registers 4
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "tag"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4431
    nop

    .line 4432
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v0

    .line 4431
    const/4 v1, 0x1

    invoke-static {p0, p1, v1, v0}, Landroid/provider/Settings$System;->resetToDefaultsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;II)V

    .line 4433
    return-void
.end method

.method public static blacklist resetToDefaultsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;II)V
    .registers 11
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .param p3, "userHandle"    # I

    .line 4455
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v6, v0

    .line 4456
    .local v6, "arg":Landroid/os/Bundle;
    const-string v0, "_user"

    invoke-virtual {v6, v0, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4457
    if-eqz p1, :cond_12

    .line 4458
    const-string v0, "_tag"

    invoke-virtual {v6, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4460
    :cond_12
    const-string v0, "_reset_mode"

    invoke-virtual {v6, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4461
    sget-object v0, Landroid/provider/Settings$System;->sProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-virtual {v0, p0}, Landroid/provider/Settings$ContentProviderHolder;->getProvider(Landroid/content/ContentResolver;)Landroid/content/IContentProvider;

    move-result-object v1

    .line 4462
    .local v1, "cp":Landroid/content/IContentProvider;
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v2

    sget-object v0, Landroid/provider/Settings$System;->sProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-static {v0}, Landroid/provider/Settings$ContentProviderHolder;->-$$Nest$fgetmUri(Landroid/provider/Settings$ContentProviderHolder;)Landroid/net/Uri;

    move-result-object v0

    .line 4463
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    const-string v4, "RESET_system"

    .line 4462
    const/4 v5, 0x0

    invoke-interface/range {v1 .. v6}, Landroid/content/IContentProvider;->call(Landroid/content/AttributionSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_31} :catch_33

    .line 4466
    nop

    .end local v1    # "cp":Landroid/content/IContentProvider;
    .end local v6    # "arg":Landroid/os/Bundle;
    goto :goto_4e

    .line 4464
    :catch_33
    move-exception v0

    .line 4465
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t reset do defaults for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Settings"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4467
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_4e
    return-void
.end method

.method public static whitelist setShowGTalkServiceStatus(Landroid/content/ContentResolver;Z)V
    .registers 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "flag"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4844
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->setShowGTalkServiceStatusForUser(Landroid/content/ContentResolver;ZI)V

    .line 4845
    return-void
.end method

.method public static greylist-max-o setShowGTalkServiceStatusForUser(Landroid/content/ContentResolver;ZI)V
    .registers 4
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "flag"    # Z
    .param p2, "userHandle"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4854
    const-string v0, "SHOW_GTALK_SERVICE_STATUS"

    invoke-static {p0, v0, p1, p2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 4855
    return-void
.end method
