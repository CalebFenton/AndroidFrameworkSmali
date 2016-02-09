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

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/Settings$System$Validator;,
        Landroid/provider/Settings$System$DiscreteValueValidator;,
        Landroid/provider/Settings$System$InclusiveIntegerRangeValidator;,
        Landroid/provider/Settings$System$InclusiveFloatRangeValidator;,
        Landroid/provider/Settings$System$1;,
        Landroid/provider/Settings$System$2;,
        Landroid/provider/Settings$System$3;,
        Landroid/provider/Settings$System$4;,
        Landroid/provider/Settings$System$5;,
        Landroid/provider/Settings$System$6;,
        Landroid/provider/Settings$System$7;,
        Landroid/provider/Settings$System$8;,
        Landroid/provider/Settings$System$9;
    }
.end annotation


# static fields
.field public static final ACCELEROMETER_ROTATION:Ljava/lang/String; = "accelerometer_rotation"

.field public static final ACCELEROMETER_ROTATION_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final ADB_ENABLED:Ljava/lang/String; = "adb_enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ADVANCED_SETTINGS:Ljava/lang/String; = "advanced_settings"

.field public static final ADVANCED_SETTINGS_DEFAULT:I = 0x0

.field private static final ADVANCED_SETTINGS_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final AIRPLANE_MODE_ON:Ljava/lang/String; = "airplane_mode_on"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final AIRPLANE_MODE_RADIOS:Ljava/lang/String; = "airplane_mode_radios"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final AIRPLANE_MODE_TOGGLEABLE_RADIOS:Ljava/lang/String; = "airplane_mode_toggleable_radios"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ALARM_ALERT:Ljava/lang/String; = "alarm_alert"

.field private static final ALARM_ALERT_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final ALWAYS_FINISH_ACTIVITIES:Ljava/lang/String; = "always_finish_activities"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ANDROID_ID:Ljava/lang/String; = "android_id"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ANIMATOR_DURATION_SCALE:Ljava/lang/String; = "animator_duration_scale"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final APPEND_FOR_LAST_AUDIBLE:Ljava/lang/String; = "_last_audible"

.field public static final AUTO_TIME:Ljava/lang/String; = "auto_time"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final AUTO_TIME_ZONE:Ljava/lang/String; = "auto_time_zone"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final BLUETOOTH_DISCOVERABILITY:Ljava/lang/String; = "bluetooth_discoverability"

.field public static final BLUETOOTH_DISCOVERABILITY_TIMEOUT:Ljava/lang/String; = "bluetooth_discoverability_timeout"

.field private static final BLUETOOTH_DISCOVERABILITY_TIMEOUT_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field private static final BLUETOOTH_DISCOVERABILITY_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final BLUETOOTH_ON:Ljava/lang/String; = "bluetooth_on"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CAR_DOCK_SOUND:Ljava/lang/String; = "car_dock_sound"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CAR_UNDOCK_SOUND:Ljava/lang/String; = "car_undock_sound"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DATA_ROAMING:Ljava/lang/String; = "data_roaming"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DATE_FORMAT:Ljava/lang/String; = "date_format"

.field public static final DATE_FORMAT_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final DEBUG_APP:Ljava/lang/String; = "debug_app"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

.field public static final DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

.field public static final DEFAULT_RINGTONE_URI:Landroid/net/Uri;

.field public static final DESK_DOCK_SOUND:Ljava/lang/String; = "desk_dock_sound"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DESK_UNDOCK_SOUND:Ljava/lang/String; = "desk_undock_sound"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DEVICE_PROVISIONED:Ljava/lang/String; = "device_provisioned"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DIM_SCREEN:Ljava/lang/String; = "dim_screen"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final DIM_SCREEN_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final DOCK_SOUNDS_ENABLED:Ljava/lang/String; = "dock_sounds_enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DTMF_TONE_TYPE_WHEN_DIALING:Ljava/lang/String; = "dtmf_tone_type"

.field public static final DTMF_TONE_TYPE_WHEN_DIALING_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final DTMF_TONE_WHEN_DIALING:Ljava/lang/String; = "dtmf_tone"

.field public static final DTMF_TONE_WHEN_DIALING_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final EGG_MODE:Ljava/lang/String; = "egg_mode"

.field public static final EGG_MODE_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final END_BUTTON_BEHAVIOR:Ljava/lang/String; = "end_button_behavior"

.field public static final END_BUTTON_BEHAVIOR_DEFAULT:I = 0x2

.field public static final END_BUTTON_BEHAVIOR_HOME:I = 0x1

.field public static final END_BUTTON_BEHAVIOR_SLEEP:I = 0x2

.field private static final END_BUTTON_BEHAVIOR_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final FONT_SCALE:Ljava/lang/String; = "font_scale"

.field private static final FONT_SCALE_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final HAPTIC_FEEDBACK_ENABLED:Ljava/lang/String; = "haptic_feedback_enabled"

.field public static final HAPTIC_FEEDBACK_ENABLED_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final HEARING_AID:Ljava/lang/String; = "hearing_aid"

.field public static final HEARING_AID_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final HIDE_ROTATION_LOCK_TOGGLE_FOR_ACCESSIBILITY:Ljava/lang/String; = "hide_rotation_lock_toggle_for_accessibility"

.field public static final HIDE_ROTATION_LOCK_TOGGLE_FOR_ACCESSIBILITY_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final HTTP_PROXY:Ljava/lang/String; = "http_proxy"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final INSTALL_NON_MARKET_APPS:Ljava/lang/String; = "install_non_market_apps"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCATION_PROVIDERS_ALLOWED:Ljava/lang/String; = "location_providers_allowed"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCKSCREEN_DISABLED:Ljava/lang/String; = "lockscreen.disabled"

.field public static final LOCKSCREEN_DISABLED_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final LOCKSCREEN_SOUNDS_ENABLED:Ljava/lang/String; = "lockscreen_sounds_enabled"

.field public static final LOCKSCREEN_SOUNDS_ENABLED_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final LOCK_PATTERN_ENABLED:Ljava/lang/String; = "lock_pattern_autolock"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCK_PATTERN_TACTILE_FEEDBACK_ENABLED:Ljava/lang/String; = "lock_pattern_tactile_feedback_enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCK_PATTERN_VISIBLE:Ljava/lang/String; = "lock_pattern_visible_pattern"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCK_SOUND:Ljava/lang/String; = "lock_sound"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCK_TO_APP_ENABLED:Ljava/lang/String; = "lock_to_app_enabled"

.field public static final LOCK_TO_APP_ENABLED_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final LOGGING_ID:Ljava/lang/String; = "logging_id"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOW_BATTERY_SOUND:Ljava/lang/String; = "low_battery_sound"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MEDIA_BUTTON_RECEIVER:Ljava/lang/String; = "media_button_receiver"

.field private static final MEDIA_BUTTON_RECEIVER_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final MICROPHONE_MUTE:Ljava/lang/String; = "microphone_mute"

.field private static final MICROPHONE_MUTE_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final MODE_RINGER:Ljava/lang/String; = "mode_ringer"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MODE_RINGER_STREAMS_AFFECTED:Ljava/lang/String; = "mode_ringer_streams_affected"

.field private static final MODE_RINGER_STREAMS_AFFECTED_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field private static final MOVED_TO_GLOBAL:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MOVED_TO_SECURE:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MOVED_TO_SECURE_THEN_GLOBAL:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final MUTE_STREAMS_AFFECTED:Ljava/lang/String; = "mute_streams_affected"

.field private static final MUTE_STREAMS_AFFECTED_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final NETWORK_PREFERENCE:Ljava/lang/String; = "network_preference"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NEXT_ALARM_FORMATTED:Ljava/lang/String; = "next_alarm_formatted"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final NEXT_ALARM_FORMATTED_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final NOTIFICATIONS_USE_RING_VOLUME:Ljava/lang/String; = "notifications_use_ring_volume"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final NOTIFICATIONS_USE_RING_VOLUME_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final NOTIFICATION_LIGHT_PULSE:Ljava/lang/String; = "notification_light_pulse"

.field public static final NOTIFICATION_LIGHT_PULSE_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final NOTIFICATION_SOUND:Ljava/lang/String; = "notification_sound"

.field private static final NOTIFICATION_SOUND_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final PARENTAL_CONTROL_ENABLED:Ljava/lang/String; = "parental_control_enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PARENTAL_CONTROL_LAST_UPDATE:Ljava/lang/String; = "parental_control_last_update"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PARENTAL_CONTROL_REDIRECT_URL:Ljava/lang/String; = "parental_control_redirect_url"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final POINTER_LOCATION:Ljava/lang/String; = "pointer_location"

.field public static final POINTER_LOCATION_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final POINTER_SPEED:Ljava/lang/String; = "pointer_speed"

.field public static final POINTER_SPEED_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final POWER_SOUNDS_ENABLED:Ljava/lang/String; = "power_sounds_enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PRIVATE_SETTINGS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final PUBLIC_SETTINGS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final RADIO_BLUETOOTH:Ljava/lang/String; = "bluetooth"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RADIO_CELL:Ljava/lang/String; = "cell"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RADIO_NFC:Ljava/lang/String; = "nfc"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RADIO_WIFI:Ljava/lang/String; = "wifi"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RADIO_WIMAX:Ljava/lang/String; = "wimax"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RINGTONE:Ljava/lang/String; = "ringtone"

.field private static final RINGTONE_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final SCREEN_AUTO_BRIGHTNESS_ADJ:Ljava/lang/String; = "screen_auto_brightness_adj"

.field private static final SCREEN_AUTO_BRIGHTNESS_ADJ_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final SCREEN_BRIGHTNESS:Ljava/lang/String; = "screen_brightness"

.field public static final SCREEN_BRIGHTNESS_MODE:Ljava/lang/String; = "screen_brightness_mode"

.field public static final SCREEN_BRIGHTNESS_MODE_AUTOMATIC:I = 0x1

.field public static final SCREEN_BRIGHTNESS_MODE_MANUAL:I = 0x0

.field private static final SCREEN_BRIGHTNESS_MODE_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field private static final SCREEN_BRIGHTNESS_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final SCREEN_OFF_TIMEOUT:Ljava/lang/String; = "screen_off_timeout"

.field private static final SCREEN_OFF_TIMEOUT_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final SETTINGS_CLASSNAME:Ljava/lang/String; = "settings_classname"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SETTINGS_TO_BACKUP:[Ljava/lang/String;

.field public static final SETUP_WIZARD_HAS_RUN:Ljava/lang/String; = "setup_wizard_has_run"

.field public static final SETUP_WIZARD_HAS_RUN_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final SHOW_GTALK_SERVICE_STATUS:Ljava/lang/String; = "SHOW_GTALK_SERVICE_STATUS"

.field private static final SHOW_GTALK_SERVICE_STATUS_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final SHOW_PROCESSES:Ljava/lang/String; = "show_processes"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SHOW_TOUCHES:Ljava/lang/String; = "show_touches"

.field public static final SHOW_TOUCHES_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final SHOW_WEB_SUGGESTIONS:Ljava/lang/String; = "show_web_suggestions"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SHOW_WEB_SUGGESTIONS_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final SIP_ADDRESS_ONLY:Ljava/lang/String; = "SIP_ADDRESS_ONLY"

.field public static final SIP_ADDRESS_ONLY_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final SIP_ALWAYS:Ljava/lang/String; = "SIP_ALWAYS"

.field public static final SIP_ALWAYS_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final SIP_ASK_ME_EACH_TIME:Ljava/lang/String; = "SIP_ASK_ME_EACH_TIME"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SIP_ASK_ME_EACH_TIME_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final SIP_CALL_OPTIONS:Ljava/lang/String; = "sip_call_options"

.field public static final SIP_CALL_OPTIONS_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final SIP_RECEIVE_CALLS:Ljava/lang/String; = "sip_receive_calls"

.field public static final SIP_RECEIVE_CALLS_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final SOUND_EFFECTS_ENABLED:Ljava/lang/String; = "sound_effects_enabled"

.field public static final SOUND_EFFECTS_ENABLED_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final STAY_ON_WHILE_PLUGGED_IN:Ljava/lang/String; = "stay_on_while_plugged_in"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SYS_PROP_SETTING_VERSION:Ljava/lang/String; = "sys.settings_system_version"

.field public static final TEXT_AUTO_CAPS:Ljava/lang/String; = "auto_caps"

.field private static final TEXT_AUTO_CAPS_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final TEXT_AUTO_PUNCTUATE:Ljava/lang/String; = "auto_punctuate"

.field private static final TEXT_AUTO_PUNCTUATE_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final TEXT_AUTO_REPLACE:Ljava/lang/String; = "auto_replace"

.field private static final TEXT_AUTO_REPLACE_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final TEXT_SHOW_PASSWORD:Ljava/lang/String; = "show_password"

.field private static final TEXT_SHOW_PASSWORD_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final TIME_12_24:Ljava/lang/String; = "time_12_24"

.field public static final TIME_12_24_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final TRANSITION_ANIMATION_SCALE:Ljava/lang/String; = "transition_animation_scale"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TTY_MODE:Ljava/lang/String; = "tty_mode"

.field public static final TTY_MODE_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final UNLOCK_SOUND:Ljava/lang/String; = "unlock_sound"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final USB_MASS_STORAGE_ENABLED:Ljava/lang/String; = "usb_mass_storage_enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final USER_ROTATION:Ljava/lang/String; = "user_rotation"

.field public static final USER_ROTATION_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final USE_GOOGLE_MAIL:Ljava/lang/String; = "use_google_mail"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final VALIDATORS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/provider/Settings$System$Validator;",
            ">;"
        }
    .end annotation
.end field

.field public static final VIBRATE_INPUT_DEVICES:Ljava/lang/String; = "vibrate_input_devices"

.field private static final VIBRATE_INPUT_DEVICES_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final VIBRATE_IN_SILENT:Ljava/lang/String; = "vibrate_in_silent"

.field private static final VIBRATE_IN_SILENT_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final VIBRATE_ON:Ljava/lang/String; = "vibrate_on"

.field private static final VIBRATE_ON_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final VIBRATE_WHEN_RINGING:Ljava/lang/String; = "vibrate_when_ringing"

.field public static final VIBRATE_WHEN_RINGING_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final VOLUME_ALARM:Ljava/lang/String; = "volume_alarm"

.field public static final VOLUME_BLUETOOTH_SCO:Ljava/lang/String; = "volume_bluetooth_sco"

.field public static final VOLUME_MASTER:Ljava/lang/String; = "volume_master"

.field public static final VOLUME_MASTER_MUTE:Ljava/lang/String; = "volume_master_mute"

.field private static final VOLUME_MASTER_MUTE_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final VOLUME_MUSIC:Ljava/lang/String; = "volume_music"

.field public static final VOLUME_NOTIFICATION:Ljava/lang/String; = "volume_notification"

.field public static final VOLUME_RING:Ljava/lang/String; = "volume_ring"

.field public static final VOLUME_SETTINGS:[Ljava/lang/String;

.field public static final VOLUME_SYSTEM:Ljava/lang/String; = "volume_system"

.field public static final VOLUME_VOICE:Ljava/lang/String; = "volume_voice"

.field public static final WAIT_FOR_DEBUGGER:Ljava/lang/String; = "wait_for_debugger"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WALLPAPER_ACTIVITY:Ljava/lang/String; = "wallpaper_activity"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final WALLPAPER_ACTIVITY_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final WHEN_TO_MAKE_WIFI_CALLS:Ljava/lang/String; = "when_to_make_wifi_calls"

.field public static final WIFI_MAX_DHCP_RETRY_COUNT:Ljava/lang/String; = "wifi_max_dhcp_retry_count"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_MOBILE_DATA_TRANSITION_WAKELOCK_TIMEOUT_MS:Ljava/lang/String; = "wifi_mobile_data_transition_wakelock_timeout_ms"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_NETWORKS_AVAILABLE_NOTIFICATION_ON:Ljava/lang/String; = "wifi_networks_available_notification_on"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_NETWORKS_AVAILABLE_REPEAT_DELAY:Ljava/lang/String; = "wifi_networks_available_repeat_delay"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_NUM_OPEN_NETWORKS_KEPT:Ljava/lang/String; = "wifi_num_open_networks_kept"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_ON:Ljava/lang/String; = "wifi_on"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_SLEEP_POLICY:Ljava/lang/String; = "wifi_sleep_policy"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_SLEEP_POLICY_DEFAULT:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_SLEEP_POLICY_NEVER:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_SLEEP_POLICY_NEVER_WHILE_PLUGGED:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_STATIC_DNS1:Ljava/lang/String; = "wifi_static_dns1"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final WIFI_STATIC_DNS1_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final WIFI_STATIC_DNS2:Ljava/lang/String; = "wifi_static_dns2"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final WIFI_STATIC_DNS2_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final WIFI_STATIC_GATEWAY:Ljava/lang/String; = "wifi_static_gateway"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final WIFI_STATIC_GATEWAY_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final WIFI_STATIC_IP:Ljava/lang/String; = "wifi_static_ip"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final WIFI_STATIC_IP_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final WIFI_STATIC_NETMASK:Ljava/lang/String; = "wifi_static_netmask"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final WIFI_STATIC_NETMASK_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final WIFI_USE_STATIC_IP:Ljava/lang/String; = "wifi_use_static_ip"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final WIFI_USE_STATIC_IP_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field public static final WIFI_WATCHDOG_ACCEPTABLE_PACKET_LOSS_PERCENTAGE:Ljava/lang/String; = "wifi_watchdog_acceptable_packet_loss_percentage"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_AP_COUNT:Ljava/lang/String; = "wifi_watchdog_ap_count"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_BACKGROUND_CHECK_DELAY_MS:Ljava/lang/String; = "wifi_watchdog_background_check_delay_ms"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_BACKGROUND_CHECK_ENABLED:Ljava/lang/String; = "wifi_watchdog_background_check_enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_BACKGROUND_CHECK_TIMEOUT_MS:Ljava/lang/String; = "wifi_watchdog_background_check_timeout_ms"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_INITIAL_IGNORED_PING_COUNT:Ljava/lang/String; = "wifi_watchdog_initial_ignored_ping_count"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_MAX_AP_CHECKS:Ljava/lang/String; = "wifi_watchdog_max_ap_checks"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_ON:Ljava/lang/String; = "wifi_watchdog_on"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_PING_COUNT:Ljava/lang/String; = "wifi_watchdog_ping_count"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_PING_DELAY_MS:Ljava/lang/String; = "wifi_watchdog_ping_delay_ms"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_PING_TIMEOUT_MS:Ljava/lang/String; = "wifi_watchdog_ping_timeout_ms"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WINDOW_ANIMATION_SCALE:Ljava/lang/String; = "window_animation_scale"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WINDOW_ORIENTATION_LISTENER_LOG:Ljava/lang/String; = "window_orientation_listener_log"

.field public static final WINDOW_ORIENTATION_LISTENER_LOG_VALIDATOR:Landroid/provider/Settings$System$Validator;

.field private static final sBooleanValidator:Landroid/provider/Settings$System$Validator;

.field private static final sLenientIpAddressValidator:Landroid/provider/Settings$System$Validator;

.field private static final sNameValueCache:Landroid/provider/Settings$NameValueCache;

.field private static final sNonNegativeIntegerValidator:Landroid/provider/Settings$System$Validator;

.field private static final sUriValidator:Landroid/provider/Settings$System$Validator;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    #@0
    .prologue
    const/4 v9, 0x4

    #@1
    const/4 v8, 0x3

    #@2
    const/4 v7, 0x1

    #@3
    const/4 v6, 0x2

    #@4
    const/4 v5, 0x0

    #@5
    .line 1472
    const-string/jumbo v0, "content://settings/system"

    #@8
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@b
    move-result-object v0

    #@c
    .line 1471
    sput-object v0, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    #@e
    .line 1474
    new-instance v0, Landroid/provider/Settings$NameValueCache;

    #@10
    .line 1475
    const-string/jumbo v1, "sys.settings_system_version"

    #@13
    .line 1476
    sget-object v2, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    #@15
    .line 1477
    const-string/jumbo v3, "GET_system"

    #@18
    .line 1478
    const-string/jumbo v4, "PUT_system"

    #@1b
    .line 1474
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/provider/Settings$NameValueCache;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    #@1e
    sput-object v0, Landroid/provider/Settings$System;->sNameValueCache:Landroid/provider/Settings$NameValueCache;

    #@20
    .line 1482
    new-instance v0, Ljava/util/HashSet;

    #@22
    const/16 v1, 0x1e

    #@24
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    #@27
    sput-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    #@29
    .line 1483
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    #@2b
    const-string/jumbo v1, "android_id"

    #@2e
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@31
    .line 1484
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    #@33
    const-string/jumbo v1, "http_proxy"

    #@36
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@39
    .line 1485
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    #@3b
    const-string/jumbo v1, "location_providers_allowed"

    #@3e
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@41
    .line 1486
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    #@43
    const-string/jumbo v1, "lock_biometric_weak_flags"

    #@46
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@49
    .line 1487
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    #@4b
    const-string/jumbo v1, "lock_pattern_autolock"

    #@4e
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@51
    .line 1488
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    #@53
    const-string/jumbo v1, "lock_pattern_visible_pattern"

    #@56
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@59
    .line 1489
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    #@5b
    const-string/jumbo v1, "lock_pattern_tactile_feedback_enabled"

    #@5e
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@61
    .line 1490
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    #@63
    const-string/jumbo v1, "logging_id"

    #@66
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@69
    .line 1491
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    #@6b
    const-string/jumbo v1, "parental_control_enabled"

    #@6e
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@71
    .line 1492
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    #@73
    const-string/jumbo v1, "parental_control_last_update"

    #@76
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@79
    .line 1493
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    #@7b
    const-string/jumbo v1, "parental_control_redirect_url"

    #@7e
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@81
    .line 1494
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    #@83
    const-string/jumbo v1, "settings_classname"

    #@86
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@89
    .line 1495
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    #@8b
    const-string/jumbo v1, "use_google_mail"

    #@8e
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@91
    .line 1496
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    #@93
    const-string/jumbo v1, "wifi_networks_available_notification_on"

    #@96
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@99
    .line 1497
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    #@9b
    const-string/jumbo v1, "wifi_networks_available_repeat_delay"

    #@9e
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@a1
    .line 1498
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    #@a3
    const-string/jumbo v1, "wifi_num_open_networks_kept"

    #@a6
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@a9
    .line 1499
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    #@ab
    const-string/jumbo v1, "wifi_on"

    #@ae
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@b1
    .line 1500
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    #@b3
    const-string/jumbo v1, "wifi_watchdog_acceptable_packet_loss_percentage"

    #@b6
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@b9
    .line 1501
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    #@bb
    const-string/jumbo v1, "wifi_watchdog_ap_count"

    #@be
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@c1
    .line 1502
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    #@c3
    const-string/jumbo v1, "wifi_watchdog_background_check_delay_ms"

    #@c6
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@c9
    .line 1503
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    #@cb
    const-string/jumbo v1, "wifi_watchdog_background_check_enabled"

    #@ce
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@d1
    .line 1504
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    #@d3
    const-string/jumbo v1, "wifi_watchdog_background_check_timeout_ms"

    #@d6
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@d9
    .line 1505
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    #@db
    const-string/jumbo v1, "wifi_watchdog_initial_ignored_ping_count"

    #@de
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@e1
    .line 1506
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    #@e3
    const-string/jumbo v1, "wifi_watchdog_max_ap_checks"

    #@e6
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@e9
    .line 1507
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    #@eb
    const-string/jumbo v1, "wifi_watchdog_on"

    #@ee
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@f1
    .line 1508
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    #@f3
    const-string/jumbo v1, "wifi_watchdog_ping_count"

    #@f6
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@f9
    .line 1509
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    #@fb
    const-string/jumbo v1, "wifi_watchdog_ping_delay_ms"

    #@fe
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@101
    .line 1510
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    #@103
    const-string/jumbo v1, "wifi_watchdog_ping_timeout_ms"

    #@106
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@109
    .line 1513
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    #@10b
    const-string/jumbo v1, "install_non_market_apps"

    #@10e
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@111
    .line 1519
    new-instance v0, Ljava/util/HashSet;

    #@113
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@116
    sput-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@118
    .line 1520
    new-instance v0, Ljava/util/HashSet;

    #@11a
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@11d
    sput-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE_THEN_GLOBAL:Ljava/util/HashSet;

    #@11f
    .line 1524
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE_THEN_GLOBAL:Ljava/util/HashSet;

    #@121
    const-string/jumbo v1, "adb_enabled"

    #@124
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@127
    .line 1525
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE_THEN_GLOBAL:Ljava/util/HashSet;

    #@129
    const-string/jumbo v1, "bluetooth_on"

    #@12c
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@12f
    .line 1526
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE_THEN_GLOBAL:Ljava/util/HashSet;

    #@131
    const-string/jumbo v1, "data_roaming"

    #@134
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@137
    .line 1527
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE_THEN_GLOBAL:Ljava/util/HashSet;

    #@139
    const-string/jumbo v1, "device_provisioned"

    #@13c
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@13f
    .line 1528
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE_THEN_GLOBAL:Ljava/util/HashSet;

    #@141
    const-string/jumbo v1, "usb_mass_storage_enabled"

    #@144
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@147
    .line 1529
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE_THEN_GLOBAL:Ljava/util/HashSet;

    #@149
    const-string/jumbo v1, "http_proxy"

    #@14c
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@14f
    .line 1532
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@151
    const-string/jumbo v1, "airplane_mode_on"

    #@154
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@157
    .line 1533
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@159
    const-string/jumbo v1, "airplane_mode_radios"

    #@15c
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@15f
    .line 1534
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@161
    const-string/jumbo v1, "airplane_mode_toggleable_radios"

    #@164
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@167
    .line 1535
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@169
    const-string/jumbo v1, "auto_time"

    #@16c
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@16f
    .line 1536
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@171
    const-string/jumbo v1, "auto_time_zone"

    #@174
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@177
    .line 1537
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@179
    const-string/jumbo v1, "car_dock_sound"

    #@17c
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@17f
    .line 1538
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@181
    const-string/jumbo v1, "car_undock_sound"

    #@184
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@187
    .line 1539
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@189
    const-string/jumbo v1, "desk_dock_sound"

    #@18c
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@18f
    .line 1540
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@191
    const-string/jumbo v1, "desk_undock_sound"

    #@194
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@197
    .line 1541
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@199
    const-string/jumbo v1, "dock_sounds_enabled"

    #@19c
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@19f
    .line 1542
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@1a1
    const-string/jumbo v1, "lock_sound"

    #@1a4
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@1a7
    .line 1543
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@1a9
    const-string/jumbo v1, "unlock_sound"

    #@1ac
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@1af
    .line 1544
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@1b1
    const-string/jumbo v1, "low_battery_sound"

    #@1b4
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@1b7
    .line 1545
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@1b9
    const-string/jumbo v1, "power_sounds_enabled"

    #@1bc
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@1bf
    .line 1546
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@1c1
    const-string/jumbo v1, "stay_on_while_plugged_in"

    #@1c4
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@1c7
    .line 1547
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@1c9
    const-string/jumbo v1, "wifi_sleep_policy"

    #@1cc
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@1cf
    .line 1548
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@1d1
    const-string/jumbo v1, "mode_ringer"

    #@1d4
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@1d7
    .line 1549
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@1d9
    const-string/jumbo v1, "window_animation_scale"

    #@1dc
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@1df
    .line 1550
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@1e1
    const-string/jumbo v1, "transition_animation_scale"

    #@1e4
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@1e7
    .line 1551
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@1e9
    const-string/jumbo v1, "animator_duration_scale"

    #@1ec
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@1ef
    .line 1552
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@1f1
    const-string/jumbo v1, "fancy_ime_animations"

    #@1f4
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@1f7
    .line 1553
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@1f9
    const-string/jumbo v1, "compatibility_mode"

    #@1fc
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@1ff
    .line 1554
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@201
    const-string/jumbo v1, "emergency_tone"

    #@204
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@207
    .line 1555
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@209
    const-string/jumbo v1, "call_auto_retry"

    #@20c
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@20f
    .line 1556
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@211
    const-string/jumbo v1, "debug_app"

    #@214
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@217
    .line 1557
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@219
    const-string/jumbo v1, "wait_for_debugger"

    #@21c
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@21f
    .line 1558
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@221
    const-string/jumbo v1, "show_processes"

    #@224
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@227
    .line 1559
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@229
    const-string/jumbo v1, "always_finish_activities"

    #@22c
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@22f
    .line 1560
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@231
    const-string/jumbo v1, "tzinfo_content_url"

    #@234
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@237
    .line 1561
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@239
    const-string/jumbo v1, "tzinfo_metadata_url"

    #@23c
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@23f
    .line 1562
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@241
    const-string/jumbo v1, "selinux_content_url"

    #@244
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@247
    .line 1563
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@249
    const-string/jumbo v1, "selinux_metadata_url"

    #@24c
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@24f
    .line 1564
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@251
    const-string/jumbo v1, "sms_short_codes_content_url"

    #@254
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@257
    .line 1565
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@259
    const-string/jumbo v1, "sms_short_codes_metadata_url"

    #@25c
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@25f
    .line 1566
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@261
    const-string/jumbo v1, "cert_pin_content_url"

    #@264
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@267
    .line 1567
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@269
    const-string/jumbo v1, "cert_pin_metadata_url"

    #@26c
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@26f
    .line 1571
    new-instance v0, Landroid/provider/Settings$System$DiscreteValueValidator;

    #@271
    new-array v1, v6, [Ljava/lang/String;

    #@273
    const-string/jumbo v2, "0"

    #@276
    aput-object v2, v1, v5

    #@278
    const-string/jumbo v2, "1"

    #@27b
    aput-object v2, v1, v7

    #@27d
    invoke-direct {v0, v1}, Landroid/provider/Settings$System$DiscreteValueValidator;-><init>([Ljava/lang/String;)V

    #@280
    .line 1570
    sput-object v0, Landroid/provider/Settings$System;->sBooleanValidator:Landroid/provider/Settings$System$Validator;

    #@282
    .line 1573
    new-instance v0, Landroid/provider/Settings$System$1;

    #@284
    invoke-direct {v0}, Landroid/provider/Settings$System$1;-><init>()V

    #@287
    sput-object v0, Landroid/provider/Settings$System;->sNonNegativeIntegerValidator:Landroid/provider/Settings$System$Validator;

    #@289
    .line 1584
    new-instance v0, Landroid/provider/Settings$System$2;

    #@28b
    invoke-direct {v0}, Landroid/provider/Settings$System$2;-><init>()V

    #@28e
    sput-object v0, Landroid/provider/Settings$System;->sUriValidator:Landroid/provider/Settings$System$Validator;

    #@290
    .line 1596
    new-instance v0, Landroid/provider/Settings$System$3;

    #@292
    invoke-direct {v0}, Landroid/provider/Settings$System$3;-><init>()V

    #@295
    sput-object v0, Landroid/provider/Settings$System;->sLenientIpAddressValidator:Landroid/provider/Settings$System$Validator;

    #@297
    .line 2111
    new-instance v0, Landroid/provider/Settings$System$InclusiveIntegerRangeValidator;

    #@299
    invoke-direct {v0, v5, v8}, Landroid/provider/Settings$System$InclusiveIntegerRangeValidator;-><init>(II)V

    #@29c
    .line 2110
    sput-object v0, Landroid/provider/Settings$System;->END_BUTTON_BEHAVIOR_VALIDATOR:Landroid/provider/Settings$System$Validator;

    #@29e
    .line 2137
    sget-object v0, Landroid/provider/Settings$System;->sBooleanValidator:Landroid/provider/Settings$System$Validator;

    #@2a0
    sput-object v0, Landroid/provider/Settings$System;->ADVANCED_SETTINGS_VALIDATOR:Landroid/provider/Settings$System$Validator;

    #@2a2
    .line 2238
    sget-object v0, Landroid/provider/Settings$System;->sBooleanValidator:Landroid/provider/Settings$System$Validator;

    #@2a4
    sput-object v0, Landroid/provider/Settings$System;->WIFI_USE_STATIC_IP_VALIDATOR:Landroid/provider/Settings$System$Validator;

    #@2a6
    .line 2250
    sget-object v0, Landroid/provider/Settings$System;->sLenientIpAddressValidator:Landroid/provider/Settings$System$Validator;

    #@2a8
    sput-object v0, Landroid/provider/Settings$System;->WIFI_STATIC_IP_VALIDATOR:Landroid/provider/Settings$System$Validator;

    #@2aa
    .line 2262
    sget-object v0, Landroid/provider/Settings$System;->sLenientIpAddressValidator:Landroid/provider/Settings$System$Validator;

    #@2ac
    sput-object v0, Landroid/provider/Settings$System;->WIFI_STATIC_GATEWAY_VALIDATOR:Landroid/provider/Settings$System$Validator;

    #@2ae
    .line 2274
    sget-object v0, Landroid/provider/Settings$System;->sLenientIpAddressValidator:Landroid/provider/Settings$System$Validator;

    #@2b0
    sput-object v0, Landroid/provider/Settings$System;->WIFI_STATIC_NETMASK_VALIDATOR:Landroid/provider/Settings$System$Validator;

    #@2b2
    .line 2286
    sget-object v0, Landroid/provider/Settings$System;->sLenientIpAddressValidator:Landroid/provider/Settings$System$Validator;

    #@2b4
    sput-object v0, Landroid/provider/Settings$System;->WIFI_STATIC_DNS1_VALIDATOR:Landroid/provider/Settings$System$Validator;

    #@2b6
    .line 2298
    sget-object v0, Landroid/provider/Settings$System;->sLenientIpAddressValidator:Landroid/provider/Settings$System$Validator;

    #@2b8
    sput-object v0, Landroid/provider/Settings$System;->WIFI_STATIC_DNS2_VALIDATOR:Landroid/provider/Settings$System$Validator;

    #@2ba
    .line 2312
    new-instance v0, Landroid/provider/Settings$System$InclusiveIntegerRangeValidator;

    #@2bc
    invoke-direct {v0, v5, v6}, Landroid/provider/Settings$System$InclusiveIntegerRangeValidator;-><init>(II)V

    #@2bf
    .line 2311
    sput-object v0, Landroid/provider/Settings$System;->BLUETOOTH_DISCOVERABILITY_VALIDATOR:Landroid/provider/Settings$System$Validator;

    #@2c1
    .line 2323
    sget-object v0, Landroid/provider/Settings$System;->sNonNegativeIntegerValidator:Landroid/provider/Settings$System$Validator;

    #@2c3
    .line 2322
    sput-object v0, Landroid/provider/Settings$System;->BLUETOOTH_DISCOVERABILITY_TIMEOUT_VALIDATOR:Landroid/provider/Settings$System$Validator;

    #@2c5
    .line 2357
    new-instance v0, Landroid/provider/Settings$System$4;

    #@2c7
    invoke-direct {v0}, Landroid/provider/Settings$System$4;-><init>()V

    #@2ca
    sput-object v0, Landroid/provider/Settings$System;->NEXT_ALARM_FORMATTED_VALIDATOR:Landroid/provider/Settings$System$Validator;

    #@2cc
    .line 2372
    new-instance v0, Landroid/provider/Settings$System$5;

    #@2ce
    invoke-direct {v0}, Landroid/provider/Settings$System$5;-><init>()V

    #@2d1
    sput-object v0, Landroid/provider/Settings$System;->FONT_SCALE_VALIDATOR:Landroid/provider/Settings$System$Validator;

    #@2d3
    .line 2407
    sget-object v0, Landroid/provider/Settings$System;->sBooleanValidator:Landroid/provider/Settings$System$Validator;

    #@2d5
    sput-object v0, Landroid/provider/Settings$System;->DIM_SCREEN_VALIDATOR:Landroid/provider/Settings$System$Validator;

    #@2d7
    .line 2417
    sget-object v0, Landroid/provider/Settings$System;->sNonNegativeIntegerValidator:Landroid/provider/Settings$System$Validator;

    #@2d9
    sput-object v0, Landroid/provider/Settings$System;->SCREEN_OFF_TIMEOUT_VALIDATOR:Landroid/provider/Settings$System$Validator;

    #@2db
    .line 2425
    new-instance v0, Landroid/provider/Settings$System$InclusiveIntegerRangeValidator;

    #@2dd
    const/16 v1, 0xff

    #@2df
    invoke-direct {v0, v5, v1}, Landroid/provider/Settings$System$InclusiveIntegerRangeValidator;-><init>(II)V

    #@2e2
    .line 2424
    sput-object v0, Landroid/provider/Settings$System;->SCREEN_BRIGHTNESS_VALIDATOR:Landroid/provider/Settings$System$Validator;

    #@2e4
    .line 2432
    sget-object v0, Landroid/provider/Settings$System;->sBooleanValidator:Landroid/provider/Settings$System$Validator;

    #@2e6
    sput-object v0, Landroid/provider/Settings$System;->SCREEN_BRIGHTNESS_MODE_VALIDATOR:Landroid/provider/Settings$System$Validator;

    #@2e8
    .line 2442
    new-instance v0, Landroid/provider/Settings$System$InclusiveFloatRangeValidator;

    #@2ea
    const/high16 v1, -0x40800000    # -1.0f

    #@2ec
    const/high16 v2, 0x3f800000    # 1.0f

    #@2ee
    invoke-direct {v0, v1, v2}, Landroid/provider/Settings$System$InclusiveFloatRangeValidator;-><init>(FF)V

    #@2f1
    .line 2441
    sput-object v0, Landroid/provider/Settings$System;->SCREEN_AUTO_BRIGHTNESS_ADJ_VALIDATOR:Landroid/provider/Settings$System$Validator;

    #@2f3
    .line 2480
    sget-object v0, Landroid/provider/Settings$System;->sNonNegativeIntegerValidator:Landroid/provider/Settings$System$Validator;

    #@2f5
    .line 2479
    sput-object v0, Landroid/provider/Settings$System;->MODE_RINGER_STREAMS_AFFECTED_VALIDATOR:Landroid/provider/Settings$System$Validator;

    #@2f7
    .line 2490
    sget-object v0, Landroid/provider/Settings$System;->sNonNegativeIntegerValidator:Landroid/provider/Settings$System$Validator;

    #@2f9
    .line 2489
    sput-object v0, Landroid/provider/Settings$System;->MUTE_STREAMS_AFFECTED_VALIDATOR:Landroid/provider/Settings$System$Validator;

    #@2fb
    .line 2498
    sget-object v0, Landroid/provider/Settings$System;->sBooleanValidator:Landroid/provider/Settings$System$Validator;

    #@2fd
    sput-object v0, Landroid/provider/Settings$System;->VIBRATE_ON_VALIDATOR:Landroid/provider/Settings$System$Validator;

    #@2ff
    .line 2514
    sget-object v0, Landroid/provider/Settings$System;->sBooleanValidator:Landroid/provider/Settings$System$Validator;

    #@301
    sput-object v0, Landroid/provider/Settings$System;->VIBRATE_INPUT_DEVICES_VALIDATOR:Landroid/provider/Settings$System$Validator;

    #@303
    .line 2586
    sget-object v0, Landroid/provider/Settings$System;->sBooleanValidator:Landroid/provider/Settings$System$Validator;

    #@305
    sput-object v0, Landroid/provider/Settings$System;->VOLUME_MASTER_MUTE_VALIDATOR:Landroid/provider/Settings$System$Validator;

    #@307
    .line 2595
    sget-object v0, Landroid/provider/Settings$System;->sBooleanValidator:Landroid/provider/Settings$System$Validator;

    #@309
    sput-object v0, Landroid/provider/Settings$System;->MICROPHONE_MUTE_VALIDATOR:Landroid/provider/Settings$System$Validator;

    #@30b
    .line 2615
    sget-object v0, Landroid/provider/Settings$System;->sBooleanValidator:Landroid/provider/Settings$System$Validator;

    #@30d
    sput-object v0, Landroid/provider/Settings$System;->NOTIFICATIONS_USE_RING_VOLUME_VALIDATOR:Landroid/provider/Settings$System$Validator;

    #@30f
    .line 2631
    sget-object v0, Landroid/provider/Settings$System;->sBooleanValidator:Landroid/provider/Settings$System$Validator;

    #@311
    sput-object v0, Landroid/provider/Settings$System;->VIBRATE_IN_SILENT_VALIDATOR:Landroid/provider/Settings$System$Validator;

    #@313
    .line 2638
    const/4 v0, 0x7

    #@314
    new-array v0, v0, [Ljava/lang/String;

    #@316
    .line 2639
    const-string/jumbo v1, "volume_voice"

    #@319
    aput-object v1, v0, v5

    #@31b
    const-string/jumbo v1, "volume_system"

    #@31e
    aput-object v1, v0, v7

    #@320
    const-string/jumbo v1, "volume_ring"

    #@323
    aput-object v1, v0, v6

    #@325
    const-string/jumbo v1, "volume_music"

    #@328
    aput-object v1, v0, v8

    #@32a
    .line 2640
    const-string/jumbo v1, "volume_alarm"

    #@32d
    aput-object v1, v0, v9

    #@32f
    const-string/jumbo v1, "volume_notification"

    #@332
    const/4 v2, 0x5

    #@333
    aput-object v1, v0, v2

    #@335
    const-string/jumbo v1, "volume_bluetooth_sco"

    #@338
    const/4 v2, 0x6

    #@339
    aput-object v1, v0, v2

    #@33b
    .line 2638
    sput-object v0, Landroid/provider/Settings$System;->VOLUME_SETTINGS:[Ljava/lang/String;

    #@33d
    .line 2663
    sget-object v0, Landroid/provider/Settings$System;->sUriValidator:Landroid/provider/Settings$System$Validator;

    #@33f
    sput-object v0, Landroid/provider/Settings$System;->RINGTONE_VALIDATOR:Landroid/provider/Settings$System$Validator;

    #@341
    .line 2673
    const-string/jumbo v0, "ringtone"

    #@344
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@347
    move-result-object v0

    #@348
    sput-object v0, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    #@34a
    .line 2683
    sget-object v0, Landroid/provider/Settings$System;->sUriValidator:Landroid/provider/Settings$System$Validator;

    #@34c
    sput-object v0, Landroid/provider/Settings$System;->NOTIFICATION_SOUND_VALIDATOR:Landroid/provider/Settings$System$Validator;

    #@34e
    .line 2691
    const-string/jumbo v0, "notification_sound"

    #@351
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@354
    move-result-object v0

    #@355
    sput-object v0, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    #@357
    .line 2701
    sget-object v0, Landroid/provider/Settings$System;->sUriValidator:Landroid/provider/Settings$System$Validator;

    #@359
    sput-object v0, Landroid/provider/Settings$System;->ALARM_ALERT_VALIDATOR:Landroid/provider/Settings$System$Validator;

    #@35b
    .line 2709
    const-string/jumbo v0, "alarm_alert"

    #@35e
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@361
    move-result-object v0

    #@362
    sput-object v0, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    #@364
    .line 2718
    new-instance v0, Landroid/provider/Settings$System$6;

    #@366
    invoke-direct {v0}, Landroid/provider/Settings$System$6;-><init>()V

    #@369
    sput-object v0, Landroid/provider/Settings$System;->MEDIA_BUTTON_RECEIVER_VALIDATOR:Landroid/provider/Settings$System$Validator;

    #@36b
    .line 2735
    sget-object v0, Landroid/provider/Settings$System;->sBooleanValidator:Landroid/provider/Settings$System$Validator;

    #@36d
    sput-object v0, Landroid/provider/Settings$System;->TEXT_AUTO_REPLACE_VALIDATOR:Landroid/provider/Settings$System$Validator;

    #@36f
    .line 2742
    sget-object v0, Landroid/provider/Settings$System;->sBooleanValidator:Landroid/provider/Settings$System$Validator;

    #@371
    sput-object v0, Landroid/provider/Settings$System;->TEXT_AUTO_CAPS_VALIDATOR:Landroid/provider/Settings$System$Validator;

    #@373
    .line 2750
    sget-object v0, Landroid/provider/Settings$System;->sBooleanValidator:Landroid/provider/Settings$System$Validator;

    #@375
    sput-object v0, Landroid/provider/Settings$System;->TEXT_AUTO_PUNCTUATE_VALIDATOR:Landroid/provider/Settings$System$Validator;

    #@377
    .line 2757
    sget-object v0, Landroid/provider/Settings$System;->sBooleanValidator:Landroid/provider/Settings$System$Validator;

    #@379
    sput-object v0, Landroid/provider/Settings$System;->TEXT_SHOW_PASSWORD_VALIDATOR:Landroid/provider/Settings$System$Validator;

    #@37b
    .line 2762
    sget-object v0, Landroid/provider/Settings$System;->sBooleanValidator:Landroid/provider/Settings$System$Validator;

    #@37d
    sput-object v0, Landroid/provider/Settings$System;->SHOW_GTALK_SERVICE_STATUS_VALIDATOR:Landroid/provider/Settings$System$Validator;

    #@37f
    .line 2772
    new-instance v0, Landroid/provider/Settings$System$7;

    #@381
    invoke-direct {v0}, Landroid/provider/Settings$System$7;-><init>()V

    #@384
    sput-object v0, Landroid/provider/Settings$System;->WALLPAPER_ACTIVITY_VALIDATOR:Landroid/provider/Settings$System$Validator;

    #@386
    .line 2807
    new-instance v0, Landroid/provider/Settings$System$DiscreteValueValidator;

    #@388
    new-array v1, v6, [Ljava/lang/String;

    #@38a
    const-string/jumbo v2, "12"

    #@38d
    aput-object v2, v1, v5

    #@38f
    const-string/jumbo v2, "24"

    #@392
    aput-object v2, v1, v7

    #@394
    invoke-direct {v0, v1}, Landroid/provider/Settings$System$DiscreteValueValidator;-><init>([Ljava/lang/String;)V

    #@397
    .line 2806
    sput-object v0, Landroid/provider/Settings$System;->TIME_12_24_VALIDATOR:Landroid/provider/Settings$System$Validator;

    #@399
    .line 2818
    new-instance v0, Landroid/provider/Settings$System$8;

    #@39b
    invoke-direct {v0}, Landroid/provider/Settings$System$8;-><init>()V

    #@39e
    sput-object v0, Landroid/provider/Settings$System;->DATE_FORMAT_VALIDATOR:Landroid/provider/Settings$System$Validator;

    #@3a0
    .line 2840
    sget-object v0, Landroid/provider/Settings$System;->sBooleanValidator:Landroid/provider/Settings$System$Validator;

    #@3a2
    sput-object v0, Landroid/provider/Settings$System;->SETUP_WIZARD_HAS_RUN_VALIDATOR:Landroid/provider/Settings$System$Validator;

    #@3a4
    .line 2879
    sget-object v0, Landroid/provider/Settings$System;->sBooleanValidator:Landroid/provider/Settings$System$Validator;

    #@3a6
    sput-object v0, Landroid/provider/Settings$System;->ACCELEROMETER_ROTATION_VALIDATOR:Landroid/provider/Settings$System$Validator;

    #@3a8
    .line 2893
    new-instance v0, Landroid/provider/Settings$System$InclusiveIntegerRangeValidator;

    #@3aa
    invoke-direct {v0, v5, v8}, Landroid/provider/Settings$System$InclusiveIntegerRangeValidator;-><init>(II)V

    #@3ad
    .line 2892
    sput-object v0, Landroid/provider/Settings$System;->USER_ROTATION_VALIDATOR:Landroid/provider/Settings$System$Validator;

    #@3af
    .line 2911
    sget-object v0, Landroid/provider/Settings$System;->sBooleanValidator:Landroid/provider/Settings$System$Validator;

    #@3b1
    .line 2910
    sput-object v0, Landroid/provider/Settings$System;->HIDE_ROTATION_LOCK_TOGGLE_FOR_ACCESSIBILITY_VALIDATOR:Landroid/provider/Settings$System$Validator;

    #@3b3
    .line 2926
    sget-object v0, Landroid/provider/Settings$System;->sBooleanValidator:Landroid/provider/Settings$System$Validator;

    #@3b5
    sput-object v0, Landroid/provider/Settings$System;->VIBRATE_WHEN_RINGING_VALIDATOR:Landroid/provider/Settings$System$Validator;

    #@3b7
    .line 2935
    sget-object v0, Landroid/provider/Settings$System;->sBooleanValidator:Landroid/provider/Settings$System$Validator;

    #@3b9
    sput-object v0, Landroid/provider/Settings$System;->DTMF_TONE_WHEN_DIALING_VALIDATOR:Landroid/provider/Settings$System$Validator;

    #@3bb
    .line 2946
    sget-object v0, Landroid/provider/Settings$System;->sBooleanValidator:Landroid/provider/Settings$System$Validator;

    #@3bd
    sput-object v0, Landroid/provider/Settings$System;->DTMF_TONE_TYPE_WHEN_DIALING_VALIDATOR:Landroid/provider/Settings$System$Validator;

    #@3bf
    .line 2956
    sget-object v0, Landroid/provider/Settings$System;->sBooleanValidator:Landroid/provider/Settings$System$Validator;

    #@3c1
    sput-object v0, Landroid/provider/Settings$System;->HEARING_AID_VALIDATOR:Landroid/provider/Settings$System$Validator;

    #@3c3
    .line 2970
    new-instance v0, Landroid/provider/Settings$System$InclusiveIntegerRangeValidator;

    #@3c5
    invoke-direct {v0, v5, v8}, Landroid/provider/Settings$System$InclusiveIntegerRangeValidator;-><init>(II)V

    #@3c8
    sput-object v0, Landroid/provider/Settings$System;->TTY_MODE_VALIDATOR:Landroid/provider/Settings$System$Validator;

    #@3ca
    .line 2979
    sget-object v0, Landroid/provider/Settings$System;->sBooleanValidator:Landroid/provider/Settings$System$Validator;

    #@3cc
    sput-object v0, Landroid/provider/Settings$System;->SOUND_EFFECTS_ENABLED_VALIDATOR:Landroid/provider/Settings$System$Validator;

    #@3ce
    .line 2988
    sget-object v0, Landroid/provider/Settings$System;->sBooleanValidator:Landroid/provider/Settings$System$Validator;

    #@3d0
    sput-object v0, Landroid/provider/Settings$System;->HAPTIC_FEEDBACK_ENABLED_VALIDATOR:Landroid/provider/Settings$System$Validator;

    #@3d2
    .line 2998
    sget-object v0, Landroid/provider/Settings$System;->sBooleanValidator:Landroid/provider/Settings$System$Validator;

    #@3d4
    sput-object v0, Landroid/provider/Settings$System;->SHOW_WEB_SUGGESTIONS_VALIDATOR:Landroid/provider/Settings$System$Validator;

    #@3d6
    .line 3008
    sget-object v0, Landroid/provider/Settings$System;->sBooleanValidator:Landroid/provider/Settings$System$Validator;

    #@3d8
    sput-object v0, Landroid/provider/Settings$System;->NOTIFICATION_LIGHT_PULSE_VALIDATOR:Landroid/provider/Settings$System$Validator;

    #@3da
    .line 3019
    sget-object v0, Landroid/provider/Settings$System;->sBooleanValidator:Landroid/provider/Settings$System$Validator;

    #@3dc
    sput-object v0, Landroid/provider/Settings$System;->POINTER_LOCATION_VALIDATOR:Landroid/provider/Settings$System$Validator;

    #@3de
    .line 3030
    sget-object v0, Landroid/provider/Settings$System;->sBooleanValidator:Landroid/provider/Settings$System$Validator;

    #@3e0
    sput-object v0, Landroid/provider/Settings$System;->SHOW_TOUCHES_VALIDATOR:Landroid/provider/Settings$System$Validator;

    #@3e2
    .line 3044
    sget-object v0, Landroid/provider/Settings$System;->sBooleanValidator:Landroid/provider/Settings$System$Validator;

    #@3e4
    sput-object v0, Landroid/provider/Settings$System;->WINDOW_ORIENTATION_LISTENER_LOG_VALIDATOR:Landroid/provider/Settings$System$Validator;

    #@3e6
    .line 3069
    sget-object v0, Landroid/provider/Settings$System;->sBooleanValidator:Landroid/provider/Settings$System$Validator;

    #@3e8
    sput-object v0, Landroid/provider/Settings$System;->LOCKSCREEN_SOUNDS_ENABLED_VALIDATOR:Landroid/provider/Settings$System$Validator;

    #@3ea
    .line 3078
    sget-object v0, Landroid/provider/Settings$System;->sBooleanValidator:Landroid/provider/Settings$System$Validator;

    #@3ec
    sput-object v0, Landroid/provider/Settings$System;->LOCKSCREEN_DISABLED_VALIDATOR:Landroid/provider/Settings$System$Validator;

    #@3ee
    .line 3145
    sget-object v0, Landroid/provider/Settings$System;->sBooleanValidator:Landroid/provider/Settings$System$Validator;

    #@3f0
    sput-object v0, Landroid/provider/Settings$System;->SIP_RECEIVE_CALLS_VALIDATOR:Landroid/provider/Settings$System$Validator;

    #@3f2
    .line 3156
    new-instance v0, Landroid/provider/Settings$System$DiscreteValueValidator;

    #@3f4
    .line 3157
    new-array v1, v6, [Ljava/lang/String;

    #@3f6
    const-string/jumbo v2, "SIP_ALWAYS"

    #@3f9
    aput-object v2, v1, v5

    #@3fb
    const-string/jumbo v2, "SIP_ADDRESS_ONLY"

    #@3fe
    aput-object v2, v1, v7

    #@400
    .line 3156
    invoke-direct {v0, v1}, Landroid/provider/Settings$System$DiscreteValueValidator;-><init>([Ljava/lang/String;)V

    #@403
    sput-object v0, Landroid/provider/Settings$System;->SIP_CALL_OPTIONS_VALIDATOR:Landroid/provider/Settings$System$Validator;

    #@405
    .line 3166
    sget-object v0, Landroid/provider/Settings$System;->sBooleanValidator:Landroid/provider/Settings$System$Validator;

    #@407
    sput-object v0, Landroid/provider/Settings$System;->SIP_ALWAYS_VALIDATOR:Landroid/provider/Settings$System$Validator;

    #@409
    .line 3175
    sget-object v0, Landroid/provider/Settings$System;->sBooleanValidator:Landroid/provider/Settings$System$Validator;

    #@40b
    sput-object v0, Landroid/provider/Settings$System;->SIP_ADDRESS_ONLY_VALIDATOR:Landroid/provider/Settings$System$Validator;

    #@40d
    .line 3188
    sget-object v0, Landroid/provider/Settings$System;->sBooleanValidator:Landroid/provider/Settings$System$Validator;

    #@40f
    sput-object v0, Landroid/provider/Settings$System;->SIP_ASK_ME_EACH_TIME_VALIDATOR:Landroid/provider/Settings$System$Validator;

    #@411
    .line 3202
    new-instance v0, Landroid/provider/Settings$System$InclusiveFloatRangeValidator;

    #@413
    const/high16 v1, -0x3f200000    # -7.0f

    #@415
    const/high16 v2, 0x40e00000    # 7.0f

    #@417
    invoke-direct {v0, v1, v2}, Landroid/provider/Settings$System$InclusiveFloatRangeValidator;-><init>(FF)V

    #@41a
    .line 3201
    sput-object v0, Landroid/provider/Settings$System;->POINTER_SPEED_VALIDATOR:Landroid/provider/Settings$System$Validator;

    #@41c
    .line 3211
    sget-object v0, Landroid/provider/Settings$System;->sBooleanValidator:Landroid/provider/Settings$System$Validator;

    #@41e
    sput-object v0, Landroid/provider/Settings$System;->LOCK_TO_APP_ENABLED_VALIDATOR:Landroid/provider/Settings$System$Validator;

    #@420
    .line 3223
    new-instance v0, Landroid/provider/Settings$System$9;

    #@422
    invoke-direct {v0}, Landroid/provider/Settings$System$9;-><init>()V

    #@425
    sput-object v0, Landroid/provider/Settings$System;->EGG_MODE_VALIDATOR:Landroid/provider/Settings$System$Validator;

    #@427
    .line 3251
    const/16 v0, 0x2a

    #@429
    new-array v0, v0, [Ljava/lang/String;

    #@42b
    .line 3252
    const-string/jumbo v1, "stay_on_while_plugged_in"

    #@42e
    aput-object v1, v0, v5

    #@430
    .line 3253
    const-string/jumbo v1, "wifi_use_static_ip"

    #@433
    aput-object v1, v0, v7

    #@435
    .line 3254
    const-string/jumbo v1, "wifi_static_ip"

    #@438
    aput-object v1, v0, v6

    #@43a
    .line 3255
    const-string/jumbo v1, "wifi_static_gateway"

    #@43d
    aput-object v1, v0, v8

    #@43f
    .line 3256
    const-string/jumbo v1, "wifi_static_netmask"

    #@442
    aput-object v1, v0, v9

    #@444
    .line 3257
    const-string/jumbo v1, "wifi_static_dns1"

    #@447
    const/4 v2, 0x5

    #@448
    aput-object v1, v0, v2

    #@44a
    .line 3258
    const-string/jumbo v1, "wifi_static_dns2"

    #@44d
    const/4 v2, 0x6

    #@44e
    aput-object v1, v0, v2

    #@450
    .line 3259
    const-string/jumbo v1, "bluetooth_discoverability"

    #@453
    const/4 v2, 0x7

    #@454
    aput-object v1, v0, v2

    #@456
    .line 3260
    const-string/jumbo v1, "bluetooth_discoverability_timeout"

    #@459
    const/16 v2, 0x8

    #@45b
    aput-object v1, v0, v2

    #@45d
    .line 3261
    const-string/jumbo v1, "dim_screen"

    #@460
    const/16 v2, 0x9

    #@462
    aput-object v1, v0, v2

    #@464
    .line 3262
    const-string/jumbo v1, "screen_off_timeout"

    #@467
    const/16 v2, 0xa

    #@469
    aput-object v1, v0, v2

    #@46b
    .line 3263
    const-string/jumbo v1, "screen_brightness"

    #@46e
    const/16 v2, 0xb

    #@470
    aput-object v1, v0, v2

    #@472
    .line 3264
    const-string/jumbo v1, "screen_brightness_mode"

    #@475
    const/16 v2, 0xc

    #@477
    aput-object v1, v0, v2

    #@479
    .line 3265
    const-string/jumbo v1, "screen_auto_brightness_adj"

    #@47c
    const/16 v2, 0xd

    #@47e
    aput-object v1, v0, v2

    #@480
    .line 3266
    const-string/jumbo v1, "vibrate_input_devices"

    #@483
    const/16 v2, 0xe

    #@485
    aput-object v1, v0, v2

    #@487
    .line 3267
    const-string/jumbo v1, "mode_ringer_streams_affected"

    #@48a
    const/16 v2, 0xf

    #@48c
    aput-object v1, v0, v2

    #@48e
    .line 3268
    const-string/jumbo v1, "auto_replace"

    #@491
    const/16 v2, 0x10

    #@493
    aput-object v1, v0, v2

    #@495
    .line 3269
    const-string/jumbo v1, "auto_caps"

    #@498
    const/16 v2, 0x11

    #@49a
    aput-object v1, v0, v2

    #@49c
    .line 3270
    const-string/jumbo v1, "auto_punctuate"

    #@49f
    const/16 v2, 0x12

    #@4a1
    aput-object v1, v0, v2

    #@4a3
    .line 3271
    const-string/jumbo v1, "show_password"

    #@4a6
    const/16 v2, 0x13

    #@4a8
    aput-object v1, v0, v2

    #@4aa
    .line 3272
    const-string/jumbo v1, "auto_time"

    #@4ad
    const/16 v2, 0x14

    #@4af
    aput-object v1, v0, v2

    #@4b1
    .line 3273
    const-string/jumbo v1, "auto_time_zone"

    #@4b4
    const/16 v2, 0x15

    #@4b6
    aput-object v1, v0, v2

    #@4b8
    .line 3274
    const-string/jumbo v1, "time_12_24"

    #@4bb
    const/16 v2, 0x16

    #@4bd
    aput-object v1, v0, v2

    #@4bf
    .line 3275
    const-string/jumbo v1, "date_format"

    #@4c2
    const/16 v2, 0x17

    #@4c4
    aput-object v1, v0, v2

    #@4c6
    .line 3276
    const-string/jumbo v1, "dtmf_tone"

    #@4c9
    const/16 v2, 0x18

    #@4cb
    aput-object v1, v0, v2

    #@4cd
    .line 3277
    const-string/jumbo v1, "dtmf_tone_type"

    #@4d0
    const/16 v2, 0x19

    #@4d2
    aput-object v1, v0, v2

    #@4d4
    .line 3278
    const-string/jumbo v1, "hearing_aid"

    #@4d7
    const/16 v2, 0x1a

    #@4d9
    aput-object v1, v0, v2

    #@4db
    .line 3279
    const-string/jumbo v1, "tty_mode"

    #@4de
    const/16 v2, 0x1b

    #@4e0
    aput-object v1, v0, v2

    #@4e2
    .line 3280
    const-string/jumbo v1, "sound_effects_enabled"

    #@4e5
    const/16 v2, 0x1c

    #@4e7
    aput-object v1, v0, v2

    #@4e9
    .line 3281
    const-string/jumbo v1, "haptic_feedback_enabled"

    #@4ec
    const/16 v2, 0x1d

    #@4ee
    aput-object v1, v0, v2

    #@4f0
    .line 3282
    const-string/jumbo v1, "power_sounds_enabled"

    #@4f3
    const/16 v2, 0x1e

    #@4f5
    aput-object v1, v0, v2

    #@4f7
    .line 3283
    const-string/jumbo v1, "dock_sounds_enabled"

    #@4fa
    const/16 v2, 0x1f

    #@4fc
    aput-object v1, v0, v2

    #@4fe
    .line 3284
    const-string/jumbo v1, "lockscreen_sounds_enabled"

    #@501
    const/16 v2, 0x20

    #@503
    aput-object v1, v0, v2

    #@505
    .line 3285
    const-string/jumbo v1, "show_web_suggestions"

    #@508
    const/16 v2, 0x21

    #@50a
    aput-object v1, v0, v2

    #@50c
    .line 3286
    const-string/jumbo v1, "notification_light_pulse"

    #@50f
    const/16 v2, 0x22

    #@511
    aput-object v1, v0, v2

    #@513
    .line 3287
    const-string/jumbo v1, "sip_call_options"

    #@516
    const/16 v2, 0x23

    #@518
    aput-object v1, v0, v2

    #@51a
    .line 3288
    const-string/jumbo v1, "sip_receive_calls"

    #@51d
    const/16 v2, 0x24

    #@51f
    aput-object v1, v0, v2

    #@521
    .line 3289
    const-string/jumbo v1, "pointer_speed"

    #@524
    const/16 v2, 0x25

    #@526
    aput-object v1, v0, v2

    #@528
    .line 3290
    const-string/jumbo v1, "vibrate_when_ringing"

    #@52b
    const/16 v2, 0x26

    #@52d
    aput-object v1, v0, v2

    #@52f
    .line 3291
    const-string/jumbo v1, "ringtone"

    #@532
    const/16 v2, 0x27

    #@534
    aput-object v1, v0, v2

    #@536
    .line 3292
    const-string/jumbo v1, "lock_to_app_enabled"

    #@539
    const/16 v2, 0x28

    #@53b
    aput-object v1, v0, v2

    #@53d
    .line 3293
    const-string/jumbo v1, "notification_sound"

    #@540
    const/16 v2, 0x29

    #@542
    aput-object v1, v0, v2

    #@544
    .line 3251
    sput-object v0, Landroid/provider/Settings$System;->SETTINGS_TO_BACKUP:[Ljava/lang/String;

    #@546
    .line 3301
    new-instance v0, Landroid/util/ArraySet;

    #@548
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    #@54b
    sput-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    #@54d
    .line 3303
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    #@54f
    const-string/jumbo v1, "end_button_behavior"

    #@552
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@555
    .line 3304
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    #@557
    const-string/jumbo v1, "wifi_use_static_ip"

    #@55a
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@55d
    .line 3305
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    #@55f
    const-string/jumbo v1, "wifi_static_ip"

    #@562
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@565
    .line 3306
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    #@567
    const-string/jumbo v1, "wifi_static_gateway"

    #@56a
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@56d
    .line 3307
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    #@56f
    const-string/jumbo v1, "wifi_static_netmask"

    #@572
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@575
    .line 3308
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    #@577
    const-string/jumbo v1, "wifi_static_dns1"

    #@57a
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@57d
    .line 3309
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    #@57f
    const-string/jumbo v1, "wifi_static_dns2"

    #@582
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@585
    .line 3310
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    #@587
    const-string/jumbo v1, "bluetooth_discoverability"

    #@58a
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@58d
    .line 3311
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    #@58f
    const-string/jumbo v1, "bluetooth_discoverability_timeout"

    #@592
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@595
    .line 3312
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    #@597
    const-string/jumbo v1, "next_alarm_formatted"

    #@59a
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@59d
    .line 3313
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    #@59f
    const-string/jumbo v1, "font_scale"

    #@5a2
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@5a5
    .line 3314
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    #@5a7
    const-string/jumbo v1, "dim_screen"

    #@5aa
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@5ad
    .line 3315
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    #@5af
    const-string/jumbo v1, "screen_off_timeout"

    #@5b2
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@5b5
    .line 3316
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    #@5b7
    const-string/jumbo v1, "screen_brightness"

    #@5ba
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@5bd
    .line 3317
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    #@5bf
    const-string/jumbo v1, "screen_brightness_mode"

    #@5c2
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@5c5
    .line 3318
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    #@5c7
    const-string/jumbo v1, "mode_ringer_streams_affected"

    #@5ca
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@5cd
    .line 3319
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    #@5cf
    const-string/jumbo v1, "mute_streams_affected"

    #@5d2
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@5d5
    .line 3320
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    #@5d7
    const-string/jumbo v1, "vibrate_on"

    #@5da
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@5dd
    .line 3321
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    #@5df
    const-string/jumbo v1, "volume_ring"

    #@5e2
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@5e5
    .line 3322
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    #@5e7
    const-string/jumbo v1, "volume_system"

    #@5ea
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@5ed
    .line 3323
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    #@5ef
    const-string/jumbo v1, "volume_voice"

    #@5f2
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@5f5
    .line 3324
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    #@5f7
    const-string/jumbo v1, "volume_music"

    #@5fa
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@5fd
    .line 3325
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    #@5ff
    const-string/jumbo v1, "volume_alarm"

    #@602
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@605
    .line 3326
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    #@607
    const-string/jumbo v1, "volume_notification"

    #@60a
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@60d
    .line 3327
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    #@60f
    const-string/jumbo v1, "volume_bluetooth_sco"

    #@612
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@615
    .line 3328
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    #@617
    const-string/jumbo v1, "ringtone"

    #@61a
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@61d
    .line 3329
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    #@61f
    const-string/jumbo v1, "notification_sound"

    #@622
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@625
    .line 3330
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    #@627
    const-string/jumbo v1, "alarm_alert"

    #@62a
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@62d
    .line 3331
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    #@62f
    const-string/jumbo v1, "auto_replace"

    #@632
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@635
    .line 3332
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    #@637
    const-string/jumbo v1, "auto_caps"

    #@63a
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@63d
    .line 3333
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    #@63f
    const-string/jumbo v1, "auto_punctuate"

    #@642
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@645
    .line 3334
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    #@647
    const-string/jumbo v1, "show_password"

    #@64a
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@64d
    .line 3335
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    #@64f
    const-string/jumbo v1, "SHOW_GTALK_SERVICE_STATUS"

    #@652
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@655
    .line 3336
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    #@657
    const-string/jumbo v1, "wallpaper_activity"

    #@65a
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@65d
    .line 3337
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    #@65f
    const-string/jumbo v1, "time_12_24"

    #@662
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@665
    .line 3338
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    #@667
    const-string/jumbo v1, "date_format"

    #@66a
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@66d
    .line 3339
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    #@66f
    const-string/jumbo v1, "setup_wizard_has_run"

    #@672
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@675
    .line 3340
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    #@677
    const-string/jumbo v1, "accelerometer_rotation"

    #@67a
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@67d
    .line 3341
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    #@67f
    const-string/jumbo v1, "user_rotation"

    #@682
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@685
    .line 3342
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    #@687
    const-string/jumbo v1, "dtmf_tone"

    #@68a
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@68d
    .line 3343
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    #@68f
    const-string/jumbo v1, "sound_effects_enabled"

    #@692
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@695
    .line 3344
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    #@697
    const-string/jumbo v1, "haptic_feedback_enabled"

    #@69a
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@69d
    .line 3345
    sget-object v0, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    #@69f
    const-string/jumbo v1, "show_web_suggestions"

    #@6a2
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@6a5
    .line 3353
    new-instance v0, Landroid/util/ArraySet;

    #@6a7
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    #@6aa
    sput-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    #@6ac
    .line 3355
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    #@6ae
    const-string/jumbo v1, "wifi_use_static_ip"

    #@6b1
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@6b4
    .line 3356
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    #@6b6
    const-string/jumbo v1, "end_button_behavior"

    #@6b9
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@6bc
    .line 3357
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    #@6be
    const-string/jumbo v1, "advanced_settings"

    #@6c1
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@6c4
    .line 3358
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    #@6c6
    const-string/jumbo v1, "screen_auto_brightness_adj"

    #@6c9
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@6cc
    .line 3359
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    #@6ce
    const-string/jumbo v1, "vibrate_input_devices"

    #@6d1
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@6d4
    .line 3360
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    #@6d6
    const-string/jumbo v1, "volume_master"

    #@6d9
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@6dc
    .line 3361
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    #@6de
    const-string/jumbo v1, "volume_master_mute"

    #@6e1
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@6e4
    .line 3362
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    #@6e6
    const-string/jumbo v1, "microphone_mute"

    #@6e9
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@6ec
    .line 3363
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    #@6ee
    const-string/jumbo v1, "notifications_use_ring_volume"

    #@6f1
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@6f4
    .line 3364
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    #@6f6
    const-string/jumbo v1, "vibrate_in_silent"

    #@6f9
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@6fc
    .line 3365
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    #@6fe
    const-string/jumbo v1, "media_button_receiver"

    #@701
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@704
    .line 3366
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    #@706
    const-string/jumbo v1, "hide_rotation_lock_toggle_for_accessibility"

    #@709
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@70c
    .line 3367
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    #@70e
    const-string/jumbo v1, "vibrate_when_ringing"

    #@711
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@714
    .line 3368
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    #@716
    const-string/jumbo v1, "dtmf_tone_type"

    #@719
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@71c
    .line 3369
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    #@71e
    const-string/jumbo v1, "hearing_aid"

    #@721
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@724
    .line 3370
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    #@726
    const-string/jumbo v1, "tty_mode"

    #@729
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@72c
    .line 3371
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    #@72e
    const-string/jumbo v1, "notification_light_pulse"

    #@731
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@734
    .line 3372
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    #@736
    const-string/jumbo v1, "pointer_location"

    #@739
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@73c
    .line 3373
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    #@73e
    const-string/jumbo v1, "show_touches"

    #@741
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@744
    .line 3374
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    #@746
    const-string/jumbo v1, "window_orientation_listener_log"

    #@749
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@74c
    .line 3375
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    #@74e
    const-string/jumbo v1, "power_sounds_enabled"

    #@751
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@754
    .line 3376
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    #@756
    const-string/jumbo v1, "dock_sounds_enabled"

    #@759
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@75c
    .line 3377
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    #@75e
    const-string/jumbo v1, "lockscreen_sounds_enabled"

    #@761
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@764
    .line 3378
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    #@766
    const-string/jumbo v1, "lockscreen.disabled"

    #@769
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@76c
    .line 3379
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    #@76e
    const-string/jumbo v1, "low_battery_sound"

    #@771
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@774
    .line 3380
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    #@776
    const-string/jumbo v1, "desk_dock_sound"

    #@779
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@77c
    .line 3381
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    #@77e
    const-string/jumbo v1, "desk_undock_sound"

    #@781
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@784
    .line 3382
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    #@786
    const-string/jumbo v1, "car_dock_sound"

    #@789
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@78c
    .line 3383
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    #@78e
    const-string/jumbo v1, "car_undock_sound"

    #@791
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@794
    .line 3384
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    #@796
    const-string/jumbo v1, "lock_sound"

    #@799
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@79c
    .line 3385
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    #@79e
    const-string/jumbo v1, "unlock_sound"

    #@7a1
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@7a4
    .line 3386
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    #@7a6
    const-string/jumbo v1, "sip_receive_calls"

    #@7a9
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@7ac
    .line 3387
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    #@7ae
    const-string/jumbo v1, "sip_call_options"

    #@7b1
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@7b4
    .line 3388
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    #@7b6
    const-string/jumbo v1, "SIP_ALWAYS"

    #@7b9
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@7bc
    .line 3389
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    #@7be
    const-string/jumbo v1, "SIP_ADDRESS_ONLY"

    #@7c1
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@7c4
    .line 3390
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    #@7c6
    const-string/jumbo v1, "SIP_ASK_ME_EACH_TIME"

    #@7c9
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@7cc
    .line 3391
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    #@7ce
    const-string/jumbo v1, "pointer_speed"

    #@7d1
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@7d4
    .line 3392
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    #@7d6
    const-string/jumbo v1, "lock_to_app_enabled"

    #@7d9
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@7dc
    .line 3393
    sget-object v0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    #@7de
    const-string/jumbo v1, "egg_mode"

    #@7e1
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@7e4
    .line 3401
    new-instance v0, Landroid/util/ArrayMap;

    #@7e6
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@7e9
    sput-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    #@7eb
    .line 3403
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    #@7ed
    const-string/jumbo v1, "end_button_behavior"

    #@7f0
    sget-object v2, Landroid/provider/Settings$System;->END_BUTTON_BEHAVIOR_VALIDATOR:Landroid/provider/Settings$System$Validator;

    #@7f2
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7f5
    .line 3404
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    #@7f7
    const-string/jumbo v1, "wifi_use_static_ip"

    #@7fa
    sget-object v2, Landroid/provider/Settings$System;->WIFI_USE_STATIC_IP_VALIDATOR:Landroid/provider/Settings$System$Validator;

    #@7fc
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7ff
    .line 3405
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    #@801
    const-string/jumbo v1, "bluetooth_discoverability"

    #@804
    sget-object v2, Landroid/provider/Settings$System;->BLUETOOTH_DISCOVERABILITY_VALIDATOR:Landroid/provider/Settings$System$Validator;

    #@806
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@809
    .line 3406
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    #@80b
    const-string/jumbo v1, "bluetooth_discoverability_timeout"

    #@80e
    .line 3407
    sget-object v2, Landroid/provider/Settings$System;->BLUETOOTH_DISCOVERABILITY_TIMEOUT_VALIDATOR:Landroid/provider/Settings$System$Validator;

    #@810
    .line 3406
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@813
    .line 3408
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    #@815
    const-string/jumbo v1, "next_alarm_formatted"

    #@818
    sget-object v2, Landroid/provider/Settings$System;->NEXT_ALARM_FORMATTED_VALIDATOR:Landroid/provider/Settings$System$Validator;

    #@81a
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@81d
    .line 3409
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    #@81f
    const-string/jumbo v1, "font_scale"

    #@822
    sget-object v2, Landroid/provider/Settings$System;->FONT_SCALE_VALIDATOR:Landroid/provider/Settings$System$Validator;

    #@824
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@827
    .line 3410
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    #@829
    const-string/jumbo v1, "dim_screen"

    #@82c
    sget-object v2, Landroid/provider/Settings$System;->DIM_SCREEN_VALIDATOR:Landroid/provider/Settings$System$Validator;

    #@82e
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@831
    .line 3411
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    #@833
    const-string/jumbo v1, "screen_off_timeout"

    #@836
    sget-object v2, Landroid/provider/Settings$System;->SCREEN_OFF_TIMEOUT_VALIDATOR:Landroid/provider/Settings$System$Validator;

    #@838
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@83b
    .line 3412
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    #@83d
    const-string/jumbo v1, "screen_brightness"

    #@840
    sget-object v2, Landroid/provider/Settings$System;->SCREEN_BRIGHTNESS_VALIDATOR:Landroid/provider/Settings$System$Validator;

    #@842
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@845
    .line 3413
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    #@847
    const-string/jumbo v1, "screen_brightness_mode"

    #@84a
    sget-object v2, Landroid/provider/Settings$System;->SCREEN_BRIGHTNESS_MODE_VALIDATOR:Landroid/provider/Settings$System$Validator;

    #@84c
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@84f
    .line 3414
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    #@851
    const-string/jumbo v1, "mode_ringer_streams_affected"

    #@854
    sget-object v2, Landroid/provider/Settings$System;->MODE_RINGER_STREAMS_AFFECTED_VALIDATOR:Landroid/provider/Settings$System$Validator;

    #@856
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@859
    .line 3415
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    #@85b
    const-string/jumbo v1, "mute_streams_affected"

    #@85e
    sget-object v2, Landroid/provider/Settings$System;->MUTE_STREAMS_AFFECTED_VALIDATOR:Landroid/provider/Settings$System$Validator;

    #@860
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@863
    .line 3416
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    #@865
    const-string/jumbo v1, "vibrate_on"

    #@868
    sget-object v2, Landroid/provider/Settings$System;->VIBRATE_ON_VALIDATOR:Landroid/provider/Settings$System$Validator;

    #@86a
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@86d
    .line 3417
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    #@86f
    const-string/jumbo v1, "ringtone"

    #@872
    sget-object v2, Landroid/provider/Settings$System;->RINGTONE_VALIDATOR:Landroid/provider/Settings$System$Validator;

    #@874
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@877
    .line 3418
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    #@879
    const-string/jumbo v1, "notification_sound"

    #@87c
    sget-object v2, Landroid/provider/Settings$System;->NOTIFICATION_SOUND_VALIDATOR:Landroid/provider/Settings$System$Validator;

    #@87e
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@881
    .line 3419
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    #@883
    const-string/jumbo v1, "alarm_alert"

    #@886
    sget-object v2, Landroid/provider/Settings$System;->ALARM_ALERT_VALIDATOR:Landroid/provider/Settings$System$Validator;

    #@888
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@88b
    .line 3420
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    #@88d
    const-string/jumbo v1, "auto_replace"

    #@890
    sget-object v2, Landroid/provider/Settings$System;->TEXT_AUTO_REPLACE_VALIDATOR:Landroid/provider/Settings$System$Validator;

    #@892
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@895
    .line 3421
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    #@897
    const-string/jumbo v1, "auto_caps"

    #@89a
    sget-object v2, Landroid/provider/Settings$System;->TEXT_AUTO_CAPS_VALIDATOR:Landroid/provider/Settings$System$Validator;

    #@89c
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@89f
    .line 3422
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    #@8a1
    const-string/jumbo v1, "auto_punctuate"

    #@8a4
    sget-object v2, Landroid/provider/Settings$System;->TEXT_AUTO_PUNCTUATE_VALIDATOR:Landroid/provider/Settings$System$Validator;

    #@8a6
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8a9
    .line 3423
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    #@8ab
    const-string/jumbo v1, "show_password"

    #@8ae
    sget-object v2, Landroid/provider/Settings$System;->TEXT_SHOW_PASSWORD_VALIDATOR:Landroid/provider/Settings$System$Validator;

    #@8b0
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8b3
    .line 3424
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    #@8b5
    const-string/jumbo v1, "SHOW_GTALK_SERVICE_STATUS"

    #@8b8
    sget-object v2, Landroid/provider/Settings$System;->SHOW_GTALK_SERVICE_STATUS_VALIDATOR:Landroid/provider/Settings$System$Validator;

    #@8ba
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8bd
    .line 3425
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    #@8bf
    const-string/jumbo v1, "wallpaper_activity"

    #@8c2
    sget-object v2, Landroid/provider/Settings$System;->WALLPAPER_ACTIVITY_VALIDATOR:Landroid/provider/Settings$System$Validator;

    #@8c4
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8c7
    .line 3426
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    #@8c9
    const-string/jumbo v1, "time_12_24"

    #@8cc
    sget-object v2, Landroid/provider/Settings$System;->TIME_12_24_VALIDATOR:Landroid/provider/Settings$System$Validator;

    #@8ce
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8d1
    .line 3427
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    #@8d3
    const-string/jumbo v1, "date_format"

    #@8d6
    sget-object v2, Landroid/provider/Settings$System;->DATE_FORMAT_VALIDATOR:Landroid/provider/Settings$System$Validator;

    #@8d8
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8db
    .line 3428
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    #@8dd
    const-string/jumbo v1, "setup_wizard_has_run"

    #@8e0
    sget-object v2, Landroid/provider/Settings$System;->SETUP_WIZARD_HAS_RUN_VALIDATOR:Landroid/provider/Settings$System$Validator;

    #@8e2
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8e5
    .line 3429
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    #@8e7
    const-string/jumbo v1, "accelerometer_rotation"

    #@8ea
    sget-object v2, Landroid/provider/Settings$System;->ACCELEROMETER_ROTATION_VALIDATOR:Landroid/provider/Settings$System$Validator;

    #@8ec
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8ef
    .line 3430
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    #@8f1
    const-string/jumbo v1, "user_rotation"

    #@8f4
    sget-object v2, Landroid/provider/Settings$System;->USER_ROTATION_VALIDATOR:Landroid/provider/Settings$System$Validator;

    #@8f6
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8f9
    .line 3431
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    #@8fb
    const-string/jumbo v1, "dtmf_tone"

    #@8fe
    sget-object v2, Landroid/provider/Settings$System;->DTMF_TONE_WHEN_DIALING_VALIDATOR:Landroid/provider/Settings$System$Validator;

    #@900
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@903
    .line 3432
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    #@905
    const-string/jumbo v1, "sound_effects_enabled"

    #@908
    sget-object v2, Landroid/provider/Settings$System;->SOUND_EFFECTS_ENABLED_VALIDATOR:Landroid/provider/Settings$System$Validator;

    #@90a
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@90d
    .line 3433
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    #@90f
    const-string/jumbo v1, "haptic_feedback_enabled"

    #@912
    sget-object v2, Landroid/provider/Settings$System;->HAPTIC_FEEDBACK_ENABLED_VALIDATOR:Landroid/provider/Settings$System$Validator;

    #@914
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@917
    .line 3434
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    #@919
    const-string/jumbo v1, "show_web_suggestions"

    #@91c
    sget-object v2, Landroid/provider/Settings$System;->SHOW_WEB_SUGGESTIONS_VALIDATOR:Landroid/provider/Settings$System$Validator;

    #@91e
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@921
    .line 3435
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    #@923
    const-string/jumbo v1, "wifi_use_static_ip"

    #@926
    sget-object v2, Landroid/provider/Settings$System;->WIFI_USE_STATIC_IP_VALIDATOR:Landroid/provider/Settings$System$Validator;

    #@928
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@92b
    .line 3436
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    #@92d
    const-string/jumbo v1, "end_button_behavior"

    #@930
    sget-object v2, Landroid/provider/Settings$System;->END_BUTTON_BEHAVIOR_VALIDATOR:Landroid/provider/Settings$System$Validator;

    #@932
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@935
    .line 3437
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    #@937
    const-string/jumbo v1, "advanced_settings"

    #@93a
    sget-object v2, Landroid/provider/Settings$System;->ADVANCED_SETTINGS_VALIDATOR:Landroid/provider/Settings$System$Validator;

    #@93c
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@93f
    .line 3438
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    #@941
    const-string/jumbo v1, "screen_auto_brightness_adj"

    #@944
    sget-object v2, Landroid/provider/Settings$System;->SCREEN_AUTO_BRIGHTNESS_ADJ_VALIDATOR:Landroid/provider/Settings$System$Validator;

    #@946
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@949
    .line 3439
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    #@94b
    const-string/jumbo v1, "vibrate_input_devices"

    #@94e
    sget-object v2, Landroid/provider/Settings$System;->VIBRATE_INPUT_DEVICES_VALIDATOR:Landroid/provider/Settings$System$Validator;

    #@950
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@953
    .line 3440
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    #@955
    const-string/jumbo v1, "volume_master_mute"

    #@958
    sget-object v2, Landroid/provider/Settings$System;->VOLUME_MASTER_MUTE_VALIDATOR:Landroid/provider/Settings$System$Validator;

    #@95a
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@95d
    .line 3441
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    #@95f
    const-string/jumbo v1, "microphone_mute"

    #@962
    sget-object v2, Landroid/provider/Settings$System;->MICROPHONE_MUTE_VALIDATOR:Landroid/provider/Settings$System$Validator;

    #@964
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@967
    .line 3442
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    #@969
    const-string/jumbo v1, "notifications_use_ring_volume"

    #@96c
    sget-object v2, Landroid/provider/Settings$System;->NOTIFICATIONS_USE_RING_VOLUME_VALIDATOR:Landroid/provider/Settings$System$Validator;

    #@96e
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@971
    .line 3443
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    #@973
    const-string/jumbo v1, "vibrate_in_silent"

    #@976
    sget-object v2, Landroid/provider/Settings$System;->VIBRATE_IN_SILENT_VALIDATOR:Landroid/provider/Settings$System$Validator;

    #@978
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@97b
    .line 3444
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    #@97d
    const-string/jumbo v1, "media_button_receiver"

    #@980
    sget-object v2, Landroid/provider/Settings$System;->MEDIA_BUTTON_RECEIVER_VALIDATOR:Landroid/provider/Settings$System$Validator;

    #@982
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@985
    .line 3445
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    #@987
    const-string/jumbo v1, "hide_rotation_lock_toggle_for_accessibility"

    #@98a
    .line 3446
    sget-object v2, Landroid/provider/Settings$System;->HIDE_ROTATION_LOCK_TOGGLE_FOR_ACCESSIBILITY_VALIDATOR:Landroid/provider/Settings$System$Validator;

    #@98c
    .line 3445
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@98f
    .line 3447
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    #@991
    const-string/jumbo v1, "vibrate_when_ringing"

    #@994
    sget-object v2, Landroid/provider/Settings$System;->VIBRATE_WHEN_RINGING_VALIDATOR:Landroid/provider/Settings$System$Validator;

    #@996
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@999
    .line 3448
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    #@99b
    const-string/jumbo v1, "dtmf_tone_type"

    #@99e
    sget-object v2, Landroid/provider/Settings$System;->DTMF_TONE_TYPE_WHEN_DIALING_VALIDATOR:Landroid/provider/Settings$System$Validator;

    #@9a0
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9a3
    .line 3449
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    #@9a5
    const-string/jumbo v1, "hearing_aid"

    #@9a8
    sget-object v2, Landroid/provider/Settings$System;->HEARING_AID_VALIDATOR:Landroid/provider/Settings$System$Validator;

    #@9aa
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9ad
    .line 3450
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    #@9af
    const-string/jumbo v1, "tty_mode"

    #@9b2
    sget-object v2, Landroid/provider/Settings$System;->TTY_MODE_VALIDATOR:Landroid/provider/Settings$System$Validator;

    #@9b4
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9b7
    .line 3451
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    #@9b9
    const-string/jumbo v1, "notification_light_pulse"

    #@9bc
    sget-object v2, Landroid/provider/Settings$System;->NOTIFICATION_LIGHT_PULSE_VALIDATOR:Landroid/provider/Settings$System$Validator;

    #@9be
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9c1
    .line 3452
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    #@9c3
    const-string/jumbo v1, "pointer_location"

    #@9c6
    sget-object v2, Landroid/provider/Settings$System;->POINTER_LOCATION_VALIDATOR:Landroid/provider/Settings$System$Validator;

    #@9c8
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9cb
    .line 3453
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    #@9cd
    const-string/jumbo v1, "show_touches"

    #@9d0
    sget-object v2, Landroid/provider/Settings$System;->SHOW_TOUCHES_VALIDATOR:Landroid/provider/Settings$System$Validator;

    #@9d2
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9d5
    .line 3454
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    #@9d7
    const-string/jumbo v1, "window_orientation_listener_log"

    #@9da
    .line 3455
    sget-object v2, Landroid/provider/Settings$System;->WINDOW_ORIENTATION_LISTENER_LOG_VALIDATOR:Landroid/provider/Settings$System$Validator;

    #@9dc
    .line 3454
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9df
    .line 3456
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    #@9e1
    const-string/jumbo v1, "lockscreen_sounds_enabled"

    #@9e4
    sget-object v2, Landroid/provider/Settings$System;->LOCKSCREEN_SOUNDS_ENABLED_VALIDATOR:Landroid/provider/Settings$System$Validator;

    #@9e6
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9e9
    .line 3457
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    #@9eb
    const-string/jumbo v1, "lockscreen.disabled"

    #@9ee
    sget-object v2, Landroid/provider/Settings$System;->LOCKSCREEN_DISABLED_VALIDATOR:Landroid/provider/Settings$System$Validator;

    #@9f0
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9f3
    .line 3458
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    #@9f5
    const-string/jumbo v1, "sip_receive_calls"

    #@9f8
    sget-object v2, Landroid/provider/Settings$System;->SIP_RECEIVE_CALLS_VALIDATOR:Landroid/provider/Settings$System$Validator;

    #@9fa
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9fd
    .line 3459
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    #@9ff
    const-string/jumbo v1, "sip_call_options"

    #@a02
    sget-object v2, Landroid/provider/Settings$System;->SIP_CALL_OPTIONS_VALIDATOR:Landroid/provider/Settings$System$Validator;

    #@a04
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a07
    .line 3460
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    #@a09
    const-string/jumbo v1, "SIP_ALWAYS"

    #@a0c
    sget-object v2, Landroid/provider/Settings$System;->SIP_ALWAYS_VALIDATOR:Landroid/provider/Settings$System$Validator;

    #@a0e
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a11
    .line 3461
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    #@a13
    const-string/jumbo v1, "SIP_ADDRESS_ONLY"

    #@a16
    sget-object v2, Landroid/provider/Settings$System;->SIP_ADDRESS_ONLY_VALIDATOR:Landroid/provider/Settings$System$Validator;

    #@a18
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a1b
    .line 3462
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    #@a1d
    const-string/jumbo v1, "SIP_ASK_ME_EACH_TIME"

    #@a20
    sget-object v2, Landroid/provider/Settings$System;->SIP_ASK_ME_EACH_TIME_VALIDATOR:Landroid/provider/Settings$System$Validator;

    #@a22
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a25
    .line 3463
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    #@a27
    const-string/jumbo v1, "pointer_speed"

    #@a2a
    sget-object v2, Landroid/provider/Settings$System;->POINTER_SPEED_VALIDATOR:Landroid/provider/Settings$System$Validator;

    #@a2c
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a2f
    .line 3464
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    #@a31
    const-string/jumbo v1, "lock_to_app_enabled"

    #@a34
    sget-object v2, Landroid/provider/Settings$System;->LOCK_TO_APP_ENABLED_VALIDATOR:Landroid/provider/Settings$System$Validator;

    #@a36
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a39
    .line 3465
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    #@a3b
    const-string/jumbo v1, "egg_mode"

    #@a3e
    sget-object v2, Landroid/provider/Settings$System;->EGG_MODE_VALIDATOR:Landroid/provider/Settings$System$Validator;

    #@a40
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a43
    .line 3466
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    #@a45
    const-string/jumbo v1, "wifi_static_ip"

    #@a48
    sget-object v2, Landroid/provider/Settings$System;->WIFI_STATIC_IP_VALIDATOR:Landroid/provider/Settings$System$Validator;

    #@a4a
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a4d
    .line 3467
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    #@a4f
    const-string/jumbo v1, "wifi_static_gateway"

    #@a52
    sget-object v2, Landroid/provider/Settings$System;->WIFI_STATIC_GATEWAY_VALIDATOR:Landroid/provider/Settings$System$Validator;

    #@a54
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a57
    .line 3468
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    #@a59
    const-string/jumbo v1, "wifi_static_netmask"

    #@a5c
    sget-object v2, Landroid/provider/Settings$System;->WIFI_STATIC_NETMASK_VALIDATOR:Landroid/provider/Settings$System$Validator;

    #@a5e
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a61
    .line 3469
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    #@a63
    const-string/jumbo v1, "wifi_static_dns1"

    #@a66
    sget-object v2, Landroid/provider/Settings$System;->WIFI_STATIC_DNS1_VALIDATOR:Landroid/provider/Settings$System$Validator;

    #@a68
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a6b
    .line 3470
    sget-object v0, Landroid/provider/Settings$System;->VALIDATORS:Ljava/util/Map;

    #@a6d
    const-string/jumbo v1, "wifi_static_dns2"

    #@a70
    sget-object v2, Landroid/provider/Settings$System;->WIFI_STATIC_DNS2_VALIDATOR:Landroid/provider/Settings$System$Validator;

    #@a72
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a75
    .line 3477
    new-instance v0, Landroid/util/ArraySet;

    #@a77
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    #@a7a
    sput-object v0, Landroid/provider/Settings$System;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    #@a7c
    .line 3479
    sget-object v0, Landroid/provider/Settings$System;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    #@a7e
    const-string/jumbo v1, "date_format"

    #@a81
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@a84
    .line 3480
    sget-object v0, Landroid/provider/Settings$System;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    #@a86
    const-string/jumbo v1, "haptic_feedback_enabled"

    #@a89
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@a8c
    .line 3481
    sget-object v0, Landroid/provider/Settings$System;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    #@a8e
    const-string/jumbo v1, "sound_effects_enabled"

    #@a91
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@a94
    .line 3482
    sget-object v0, Landroid/provider/Settings$System;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    #@a96
    const-string/jumbo v1, "show_password"

    #@a99
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@a9c
    .line 3483
    sget-object v0, Landroid/provider/Settings$System;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    #@a9e
    const-string/jumbo v1, "time_12_24"

    #@aa1
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@aa4
    .line 1460
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 1460
    invoke-direct {p0}, Landroid/provider/Settings$NameValueTable;-><init>()V

    #@3
    return-void
.end method

.method public static canWrite(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 3741
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v0

    #@4
    .line 3742
    .local v0, "uid":I
    invoke-static {p0, v0}, Landroid/provider/Settings;->getPackageNameForUid(Landroid/content/Context;I)Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    .line 3743
    const/4 v2, 0x0

    #@9
    .line 3742
    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings;->isCallingPackageAllowedToWriteSettings(Landroid/content/Context;ILjava/lang/String;Z)Z

    #@c
    move-result v1

    #@d
    return v1
.end method

.method public static clearConfiguration(Landroid/content/res/Configuration;)V
    .locals 1
    .param p0, "inoutConfig"    # Landroid/content/res/Configuration;

    #@0
    .prologue
    .line 1982
    const/4 v0, 0x0

    #@1
    iput v0, p0, Landroid/content/res/Configuration;->fontScale:F

    #@3
    .line 1981
    return-void
.end method

.method public static getCloneToManagedProfileSettings(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 3488
    .local p0, "outKeySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v0, Landroid/provider/Settings$System;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    #@2
    invoke-interface {p0, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    #@5
    .line 3487
    return-void
.end method

.method public static getConfiguration(Landroid/content/ContentResolver;Landroid/content/res/Configuration;)V
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "outConfig"    # Landroid/content/res/Configuration;

    #@0
    .prologue
    .line 1964
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@3
    move-result v0

    #@4
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->getConfigurationForUser(Landroid/content/ContentResolver;Landroid/content/res/Configuration;I)V

    #@7
    .line 1963
    return-void
.end method

.method public static getConfigurationForUser(Landroid/content/ContentResolver;Landroid/content/res/Configuration;I)V
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "outConfig"    # Landroid/content/res/Configuration;
    .param p2, "userHandle"    # I

    #@0
    .prologue
    .line 1971
    const-string/jumbo v0, "font_scale"

    #@3
    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    #@5
    .line 1970
    invoke-static {p0, v0, v1, p2}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    #@8
    move-result v0

    #@9
    iput v0, p1, Landroid/content/res/Configuration;->fontScale:F

    #@b
    .line 1972
    iget v0, p1, Landroid/content/res/Configuration;->fontScale:F

    #@d
    const/4 v1, 0x0

    #@e
    cmpg-float v0, v0, v1

    #@10
    if-gez v0, :cond_0

    #@12
    .line 1973
    const/high16 v0, 0x3f800000    # 1.0f

    #@14
    iput v0, p1, Landroid/content/res/Configuration;->fontScale:F

    #@16
    .line 1969
    :cond_0
    return-void
.end method

.method public static getFloat(Landroid/content/ContentResolver;Ljava/lang/String;)F
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 1915
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@3
    move-result v0

    #@4
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)F

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public static getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # F

    #@0
    .prologue
    .line 1881
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@3
    move-result v0

    #@4
    invoke-static {p0, p1, p2, v0}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public static getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # F
    .param p3, "userHandle"    # I

    #@0
    .prologue
    .line 1887
    invoke-static {p0, p1, p3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 1889
    .local v1, "v":Ljava/lang/String;
    if-eqz v1, :cond_0

    #@6
    :try_start_0
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result p2

    #@a
    .end local p2    # "def":F
    :cond_0
    return p2

    #@b
    .line 1890
    .restart local p2    # "def":F
    :catch_0
    move-exception v0

    #@c
    .line 1891
    .local v0, "e":Ljava/lang/NumberFormatException;
    return p2
.end method

.method public static getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)F
    .locals 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 1921
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 1922
    .local v1, "v":Ljava/lang/String;
    if-nez v1, :cond_0

    #@6
    .line 1923
    new-instance v2, Landroid/provider/Settings$SettingNotFoundException;

    #@8
    invoke-direct {v2, p1}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    #@b
    throw v2

    #@c
    .line 1926
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    move-result v2

    #@10
    return v2

    #@11
    .line 1927
    :catch_0
    move-exception v0

    #@12
    .line 1928
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Landroid/provider/Settings$SettingNotFoundException;

    #@14
    invoke-direct {v2, p1}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    #@17
    throw v2
.end method

.method public static getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 1742
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@3
    move-result v0

    #@4
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public static getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # I

    #@0
    .prologue
    .line 1709
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@3
    move-result v0

    #@4
    invoke-static {p0, p1, p2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public static getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 1748
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 1750
    .local v1, "v":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result v2

    #@8
    return v2

    #@9
    .line 1751
    :catch_0
    move-exception v0

    #@a
    .line 1752
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Landroid/provider/Settings$SettingNotFoundException;

    #@c
    invoke-direct {v2, p1}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    #@f
    throw v2
.end method

.method public static getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # I
    .param p3, "userHandle"    # I

    #@0
    .prologue
    .line 1714
    invoke-static {p0, p1, p3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 1716
    .local v1, "v":Ljava/lang/String;
    if-eqz v1, :cond_0

    #@6
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result p2

    #@a
    .end local p2    # "def":I
    :cond_0
    return p2

    #@b
    .line 1717
    .restart local p2    # "def":I
    :catch_0
    move-exception v0

    #@c
    .line 1718
    .local v0, "e":Ljava/lang/NumberFormatException;
    return p2
.end method

.method public static getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 1829
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@3
    move-result v0

    #@4
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)J

    #@7
    move-result-wide v0

    #@8
    return-wide v0
.end method

.method public static getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # J

    #@0
    .prologue
    .line 1794
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@3
    move-result v0

    #@4
    invoke-static {p0, p1, p2, p3, v0}, Landroid/provider/Settings$System;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)J

    #@7
    move-result-wide v0

    #@8
    return-wide v0
.end method

.method public static getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)J
    .locals 4
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 1835
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 1837
    .local v1, "valString":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result-wide v2

    #@8
    return-wide v2

    #@9
    .line 1838
    :catch_0
    move-exception v0

    #@a
    .line 1839
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Landroid/provider/Settings$SettingNotFoundException;

    #@c
    invoke-direct {v2, p1}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    #@f
    throw v2
.end method

.method public static getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)J
    .locals 4
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # J
    .param p4, "userHandle"    # I

    #@0
    .prologue
    .line 1800
    invoke-static {p0, p1, p4}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 1803
    .local v1, "valString":Ljava/lang/String;
    if-eqz v1, :cond_0

    #@6
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result-wide v2

    #@a
    .line 1807
    .local v2, "value":J
    :goto_0
    return-wide v2

    #@b
    .line 1803
    .end local v2    # "value":J
    :cond_0
    move-wide v2, p2

    #@c
    .restart local v2    # "value":J
    goto :goto_0

    #@d
    .line 1804
    .end local v2    # "value":J
    :catch_0
    move-exception v0

    #@e
    .line 1805
    .local v0, "e":Ljava/lang/NumberFormatException;
    move-wide v2, p2

    #@f
    .restart local v2    # "value":J
    goto :goto_0
.end method

.method public static getMovedToGlobalSettings(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1607
    .local p0, "outKeySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@2
    invoke-interface {p0, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    #@5
    .line 1608
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE_THEN_GLOBAL:Ljava/util/HashSet;

    #@7
    invoke-interface {p0, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    #@a
    .line 1606
    return-void
.end method

.method public static getMovedToSecureSettings(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1613
    .local p0, "outKeySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    #@2
    invoke-interface {p0, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    #@5
    .line 1612
    return-void
.end method

.method public static getNonLegacyMovedKeys(Ljava/util/HashSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1618
    .local p0, "outKeySet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@2
    invoke-virtual {p0, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    #@5
    .line 1617
    return-void
.end method

.method public static getShowGTalkServiceStatus(Landroid/content/ContentResolver;)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 2011
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@3
    move-result v0

    #@4
    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getShowGTalkServiceStatusForUser(Landroid/content/ContentResolver;I)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public static getShowGTalkServiceStatusForUser(Landroid/content/ContentResolver;I)Z
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "userHandle"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2020
    const-string/jumbo v1, "SHOW_GTALK_SERVICE_STATUS"

    #@4
    invoke-static {p0, v1, v0, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    const/4 v0, 0x1

    #@b
    :cond_0
    return v0
.end method

.method public static getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1628
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@3
    move-result v0

    #@4
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    #@0
    .prologue
    .line 1634
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1635
    const-string/jumbo v0, "Settings"

    #@b
    new-instance v1, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v2, "Setting "

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    const-string/jumbo v2, " has moved from android.provider.Settings.System"

    #@1e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    .line 1636
    const-string/jumbo v2, " to android.provider.Settings.Secure, returning read-only value."

    #@25
    .line 1635
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v1

    #@2d
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@30
    .line 1637
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    #@33
    move-result-object v0

    #@34
    return-object v0

    #@35
    .line 1639
    :cond_0
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@37
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    #@3a
    move-result v0

    #@3b
    if-nez v0, :cond_1

    #@3d
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE_THEN_GLOBAL:Ljava/util/HashSet;

    #@3f
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    #@42
    move-result v0

    #@43
    if-eqz v0, :cond_2

    #@45
    .line 1640
    :cond_1
    const-string/jumbo v0, "Settings"

    #@48
    new-instance v1, Ljava/lang/StringBuilder;

    #@4a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@4d
    const-string/jumbo v2, "Setting "

    #@50
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v1

    #@54
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v1

    #@58
    const-string/jumbo v2, " has moved from android.provider.Settings.System"

    #@5b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v1

    #@5f
    .line 1641
    const-string/jumbo v2, " to android.provider.Settings.Global, returning read-only value."

    #@62
    .line 1640
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v1

    #@66
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@69
    move-result-object v1

    #@6a
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@6d
    .line 1642
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Global;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    #@70
    move-result-object v0

    #@71
    return-object v0

    #@72
    .line 1644
    :cond_2
    sget-object v0, Landroid/provider/Settings$System;->sNameValueCache:Landroid/provider/Settings$NameValueCache;

    #@74
    invoke-virtual {v0, p0, p1, p2}, Landroid/provider/Settings$NameValueCache;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    #@77
    move-result-object v0

    #@78
    return-object v0
.end method

.method public static getUriFor(Ljava/lang/String;)Landroid/net/Uri;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1681
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    #@2
    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1682
    const-string/jumbo v0, "Settings"

    #@b
    new-instance v1, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v2, "Setting "

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    const-string/jumbo v2, " has moved from android.provider.Settings.System"

    #@1e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    .line 1683
    const-string/jumbo v2, " to android.provider.Settings.Secure, returning Secure URI."

    #@25
    .line 1682
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v1

    #@2d
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@30
    .line 1684
    sget-object v0, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    #@32
    invoke-static {v0, p0}, Landroid/provider/Settings$Secure;->getUriFor(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    #@35
    move-result-object v0

    #@36
    return-object v0

    #@37
    .line 1686
    :cond_0
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@39
    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    #@3c
    move-result v0

    #@3d
    if-nez v0, :cond_1

    #@3f
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE_THEN_GLOBAL:Ljava/util/HashSet;

    #@41
    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    #@44
    move-result v0

    #@45
    if-eqz v0, :cond_2

    #@47
    .line 1687
    :cond_1
    const-string/jumbo v0, "Settings"

    #@4a
    new-instance v1, Ljava/lang/StringBuilder;

    #@4c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@4f
    const-string/jumbo v2, "Setting "

    #@52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v1

    #@56
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v1

    #@5a
    const-string/jumbo v2, " has moved from android.provider.Settings.System"

    #@5d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v1

    #@61
    .line 1688
    const-string/jumbo v2, " to android.provider.Settings.Global, returning read-only global URI."

    #@64
    .line 1687
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v1

    #@68
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6b
    move-result-object v1

    #@6c
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@6f
    .line 1689
    sget-object v0, Landroid/provider/Settings$Global;->CONTENT_URI:Landroid/net/Uri;

    #@71
    invoke-static {v0, p0}, Landroid/provider/Settings$Global;->getUriFor(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    #@74
    move-result-object v0

    #@75
    return-object v0

    #@76
    .line 1691
    :cond_2
    sget-object v0, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    #@78
    invoke-static {v0, p0}, Landroid/provider/Settings$System;->getUriFor(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    #@7b
    move-result-object v0

    #@7c
    return-object v0
.end method

.method public static hasInterestingConfigurationChanges(I)Z
    .locals 2
    .param p0, "changes"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2005
    const/high16 v1, 0x40000000    # 2.0f

    #@3
    and-int/2addr v1, p0

    #@4
    if-eqz v1, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :cond_0
    return v0
.end method

.method public static putConfiguration(Landroid/content/ContentResolver;Landroid/content/res/Configuration;)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "config"    # Landroid/content/res/Configuration;

    #@0
    .prologue
    .line 1994
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@3
    move-result v0

    #@4
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->putConfigurationForUser(Landroid/content/ContentResolver;Landroid/content/res/Configuration;I)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public static putConfigurationForUser(Landroid/content/ContentResolver;Landroid/content/res/Configuration;I)Z
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "userHandle"    # I

    #@0
    .prologue
    .line 2000
    const-string/jumbo v0, "font_scale"

    #@3
    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    #@5
    invoke-static {p0, v0, v1, p2}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public static putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # F

    #@0
    .prologue
    .line 1946
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@3
    move-result v0

    #@4
    invoke-static {p0, p1, p2, v0}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public static putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # F
    .param p3, "userHandle"    # I

    #@0
    .prologue
    .line 1952
    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {p0, p1, v0, p3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public static putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    #@0
    .prologue
    .line 1770
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@3
    move-result v0

    #@4
    invoke-static {p0, p1, p2, v0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public static putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I
    .param p3, "userHandle"    # I

    #@0
    .prologue
    .line 1776
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {p0, p1, v0, p3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public static putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # J

    #@0
    .prologue
    .line 1857
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@3
    move-result v0

    #@4
    invoke-static {p0, p1, p2, p3, v0}, Landroid/provider/Settings$System;->putLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public static putLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)Z
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # J
    .param p4, "userHandle"    # I

    #@0
    .prologue
    .line 1863
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {p0, p1, v0, p4}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public static putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1655
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@3
    move-result v0

    #@4
    invoke-static {p0, p1, p2, v0}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public static putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 4
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1661
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    #@3
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 1662
    const-string/jumbo v0, "Settings"

    #@c
    new-instance v1, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v2, "Setting "

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    const-string/jumbo v2, " has moved from android.provider.Settings.System"

    #@1f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    .line 1663
    const-string/jumbo v2, " to android.provider.Settings.Secure, value is unchanged."

    #@26
    .line 1662
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v1

    #@2e
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@31
    .line 1664
    return v3

    #@32
    .line 1666
    :cond_0
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@34
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    #@37
    move-result v0

    #@38
    if-nez v0, :cond_1

    #@3a
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE_THEN_GLOBAL:Ljava/util/HashSet;

    #@3c
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    #@3f
    move-result v0

    #@40
    if-eqz v0, :cond_2

    #@42
    .line 1667
    :cond_1
    const-string/jumbo v0, "Settings"

    #@45
    new-instance v1, Ljava/lang/StringBuilder;

    #@47
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@4a
    const-string/jumbo v2, "Setting "

    #@4d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v1

    #@51
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v1

    #@55
    const-string/jumbo v2, " has moved from android.provider.Settings.System"

    #@58
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v1

    #@5c
    .line 1668
    const-string/jumbo v2, " to android.provider.Settings.Global, value is unchanged."

    #@5f
    .line 1667
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v1

    #@63
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@66
    move-result-object v1

    #@67
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@6a
    .line 1669
    return v3

    #@6b
    .line 1671
    :cond_2
    sget-object v0, Landroid/provider/Settings$System;->sNameValueCache:Landroid/provider/Settings$NameValueCache;

    #@6d
    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/provider/Settings$NameValueCache;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    #@70
    move-result v0

    #@71
    return v0
.end method

.method public static setShowGTalkServiceStatus(Landroid/content/ContentResolver;Z)V
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "flag"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 2026
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@3
    move-result v0

    #@4
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->setShowGTalkServiceStatusForUser(Landroid/content/ContentResolver;ZI)V

    #@7
    .line 2025
    return-void
.end method

.method public static setShowGTalkServiceStatusForUser(Landroid/content/ContentResolver;ZI)V
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "flag"    # Z
    .param p2, "userHandle"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 2036
    const-string/jumbo v1, "SHOW_GTALK_SERVICE_STATUS"

    #@3
    if-eqz p1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :goto_0
    invoke-static {p0, v1, v0, p2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    #@9
    .line 2035
    return-void

    #@a
    .line 2036
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method
