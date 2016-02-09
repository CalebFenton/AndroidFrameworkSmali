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


# static fields
.field public static final ACCESSIBILITY_CAPTIONING_BACKGROUND_COLOR:Ljava/lang/String; = "accessibility_captioning_background_color"

.field public static final ACCESSIBILITY_CAPTIONING_EDGE_COLOR:Ljava/lang/String; = "accessibility_captioning_edge_color"

.field public static final ACCESSIBILITY_CAPTIONING_EDGE_TYPE:Ljava/lang/String; = "accessibility_captioning_edge_type"

.field public static final ACCESSIBILITY_CAPTIONING_ENABLED:Ljava/lang/String; = "accessibility_captioning_enabled"

.field public static final ACCESSIBILITY_CAPTIONING_FONT_SCALE:Ljava/lang/String; = "accessibility_captioning_font_scale"

.field public static final ACCESSIBILITY_CAPTIONING_FOREGROUND_COLOR:Ljava/lang/String; = "accessibility_captioning_foreground_color"

.field public static final ACCESSIBILITY_CAPTIONING_LOCALE:Ljava/lang/String; = "accessibility_captioning_locale"

.field public static final ACCESSIBILITY_CAPTIONING_PRESET:Ljava/lang/String; = "accessibility_captioning_preset"

.field public static final ACCESSIBILITY_CAPTIONING_TYPEFACE:Ljava/lang/String; = "accessibility_captioning_typeface"

.field public static final ACCESSIBILITY_CAPTIONING_WINDOW_COLOR:Ljava/lang/String; = "accessibility_captioning_window_color"

.field public static final ACCESSIBILITY_DISPLAY_DALTONIZER:Ljava/lang/String; = "accessibility_display_daltonizer"

.field public static final ACCESSIBILITY_DISPLAY_DALTONIZER_ENABLED:Ljava/lang/String; = "accessibility_display_daltonizer_enabled"

.field public static final ACCESSIBILITY_DISPLAY_INVERSION_ENABLED:Ljava/lang/String; = "accessibility_display_inversion_enabled"

.field public static final ACCESSIBILITY_DISPLAY_MAGNIFICATION_AUTO_UPDATE:Ljava/lang/String; = "accessibility_display_magnification_auto_update"

.field public static final ACCESSIBILITY_DISPLAY_MAGNIFICATION_ENABLED:Ljava/lang/String; = "accessibility_display_magnification_enabled"

.field public static final ACCESSIBILITY_DISPLAY_MAGNIFICATION_SCALE:Ljava/lang/String; = "accessibility_display_magnification_scale"

.field public static final ACCESSIBILITY_ENABLED:Ljava/lang/String; = "accessibility_enabled"

.field public static final ACCESSIBILITY_HIGH_TEXT_CONTRAST_ENABLED:Ljava/lang/String; = "high_text_contrast_enabled"

.field public static final ACCESSIBILITY_SCREEN_READER_URL:Ljava/lang/String; = "accessibility_script_injection_url"

.field public static final ACCESSIBILITY_SCRIPT_INJECTION:Ljava/lang/String; = "accessibility_script_injection"

.field public static final ACCESSIBILITY_SPEAK_PASSWORD:Ljava/lang/String; = "speak_password"

.field public static final ACCESSIBILITY_WEB_CONTENT_KEY_BINDINGS:Ljava/lang/String; = "accessibility_web_content_key_bindings"

.field public static final ADB_ENABLED:Ljava/lang/String; = "adb_enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ALLOWED_GEOLOCATION_ORIGINS:Ljava/lang/String; = "allowed_geolocation_origins"

.field public static final ALLOW_MOCK_LOCATION:Ljava/lang/String; = "mock_location"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ANDROID_ID:Ljava/lang/String; = "android_id"

.field public static final ANR_SHOW_BACKGROUND:Ljava/lang/String; = "anr_show_background"

.field public static final ASSISTANT:Ljava/lang/String; = "assistant"

.field public static final ASSIST_SCREENSHOT_ENABLED:Ljava/lang/String; = "assist_screenshot_enabled"

.field public static final ASSIST_STRUCTURE_ENABLED:Ljava/lang/String; = "assist_structure_enabled"

.field public static final BACKGROUND_DATA:Ljava/lang/String; = "background_data"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final BACKUP_AUTO_RESTORE:Ljava/lang/String; = "backup_auto_restore"

.field public static final BACKUP_ENABLED:Ljava/lang/String; = "backup_enabled"

.field public static final BACKUP_PROVISIONED:Ljava/lang/String; = "backup_provisioned"

.field public static final BACKUP_TRANSPORT:Ljava/lang/String; = "backup_transport"

.field public static final BAR_SERVICE_COMPONENT:Ljava/lang/String; = "bar_service_component"

.field public static final BLUETOOTH_HCI_LOG:Ljava/lang/String; = "bluetooth_hci_log"

.field public static final BLUETOOTH_ON:Ljava/lang/String; = "bluetooth_on"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final BUGREPORT_IN_POWER_MENU:Ljava/lang/String; = "bugreport_in_power_menu"
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

.field public static final CONNECTIVITY_RELEASE_PENDING_INTENT_DELAY_MS:Ljava/lang/String; = "connectivity_release_pending_intent_delay_ms"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DATA_ROAMING:Ljava/lang/String; = "data_roaming"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DEFAULT_INPUT_METHOD:Ljava/lang/String; = "default_input_method"

.field public static final DEVELOPMENT_SETTINGS_ENABLED:Ljava/lang/String; = "development_settings_enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DEVICE_PROVISIONED:Ljava/lang/String; = "device_provisioned"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DIALER_DEFAULT_APPLICATION:Ljava/lang/String; = "dialer_default_application"

.field public static final DISABLED_SYSTEM_INPUT_METHODS:Ljava/lang/String; = "disabled_system_input_methods"

.field public static final DOUBLE_TAP_TO_WAKE:Ljava/lang/String; = "double_tap_to_wake"

.field public static final DOZE_ENABLED:Ljava/lang/String; = "doze_enabled"

.field public static final EMERGENCY_ASSISTANCE_APPLICATION:Ljava/lang/String; = "emergency_assistance_application"

.field public static final ENABLED_ACCESSIBILITY_SERVICES:Ljava/lang/String; = "enabled_accessibility_services"

.field public static final ENABLED_CONDITION_PROVIDERS:Ljava/lang/String; = "enabled_condition_providers"

.field public static final ENABLED_INPUT_METHODS:Ljava/lang/String; = "enabled_input_methods"

.field public static final ENABLED_NOTIFICATION_LISTENERS:Ljava/lang/String; = "enabled_notification_listeners"

.field public static final ENABLED_NOTIFICATION_POLICY_ACCESS_PACKAGES:Ljava/lang/String; = "enabled_notification_policy_access_packages"

.field public static final ENABLED_ON_FIRST_BOOT_SYSTEM_PRINT_SERVICES:Ljava/lang/String; = "enabled_on_first_boot_system_print_services"

.field public static final ENABLED_PRINT_SERVICES:Ljava/lang/String; = "enabled_print_services"

.field public static final ENHANCED_VOICE_PRIVACY_ENABLED:Ljava/lang/String; = "enhanced_voice_privacy_enabled"

.field public static final HTTP_PROXY:Ljava/lang/String; = "http_proxy"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final IMMERSIVE_MODE_CONFIRMATIONS:Ljava/lang/String; = "immersive_mode_confirmations"

.field public static final INCALL_POWER_BUTTON_BEHAVIOR:Ljava/lang/String; = "incall_power_button_behavior"

.field public static final INCALL_POWER_BUTTON_BEHAVIOR_DEFAULT:I = 0x1

.field public static final INCALL_POWER_BUTTON_BEHAVIOR_HANGUP:I = 0x2

.field public static final INCALL_POWER_BUTTON_BEHAVIOR_SCREEN_OFF:I = 0x1

.field public static final INPUT_METHODS_SUBTYPE_HISTORY:Ljava/lang/String; = "input_methods_subtype_history"

.field public static final INPUT_METHOD_SELECTOR_VISIBILITY:Ljava/lang/String; = "input_method_selector_visibility"

.field public static final INSTALL_NON_MARKET_APPS:Ljava/lang/String; = "install_non_market_apps"

.field public static final LAST_SETUP_SHOWN:Ljava/lang/String; = "last_setup_shown"

.field public static final LOCATION_MODE:Ljava/lang/String; = "location_mode"

.field public static final LOCATION_MODE_BATTERY_SAVING:I = 0x2

.field public static final LOCATION_MODE_HIGH_ACCURACY:I = 0x3

.field public static final LOCATION_MODE_OFF:I = 0x0

.field public static final LOCATION_MODE_SENSORS_ONLY:I = 0x1

.field public static final LOCATION_PROVIDERS_ALLOWED:Ljava/lang/String; = "location_providers_allowed"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCK_BIOMETRIC_WEAK_FLAGS:Ljava/lang/String; = "lock_biometric_weak_flags"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

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

.field public static final LOCK_SCREEN_ALLOW_PRIVATE_NOTIFICATIONS:Ljava/lang/String; = "lock_screen_allow_private_notifications"

.field public static final LOCK_SCREEN_APPWIDGET_IDS:Ljava/lang/String; = "lock_screen_appwidget_ids"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCK_SCREEN_FALLBACK_APPWIDGET_ID:Ljava/lang/String; = "lock_screen_fallback_appwidget_id"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCK_SCREEN_LOCK_AFTER_TIMEOUT:Ljava/lang/String; = "lock_screen_lock_after_timeout"

.field public static final LOCK_SCREEN_OWNER_INFO:Ljava/lang/String; = "lock_screen_owner_info"

.field public static final LOCK_SCREEN_OWNER_INFO_ENABLED:Ljava/lang/String; = "lock_screen_owner_info_enabled"

.field public static final LOCK_SCREEN_SHOW_NOTIFICATIONS:Ljava/lang/String; = "lock_screen_show_notifications"

.field public static final LOCK_SCREEN_STICKY_APPWIDGET:Ljava/lang/String; = "lock_screen_sticky_appwidget"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCK_TO_APP_EXIT_LOCKED:Ljava/lang/String; = "lock_to_app_exit_locked"

.field public static final LOGGING_ID:Ljava/lang/String; = "logging_id"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LONG_PRESS_TIMEOUT:Ljava/lang/String; = "long_press_timeout"

.field public static final MOUNT_PLAY_NOTIFICATION_SND:Ljava/lang/String; = "mount_play_not_snd"

.field public static final MOUNT_UMS_AUTOSTART:Ljava/lang/String; = "mount_ums_autostart"

.field public static final MOUNT_UMS_NOTIFY_ENABLED:Ljava/lang/String; = "mount_ums_notify_enabled"

.field public static final MOUNT_UMS_PROMPT:Ljava/lang/String; = "mount_ums_prompt"

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

.field private static final MOVED_TO_LOCK_SETTINGS:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final NETWORK_PREFERENCE:Ljava/lang/String; = "network_preference"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NFC_PAYMENT_DEFAULT_COMPONENT:Ljava/lang/String; = "nfc_payment_default_component"

.field public static final NFC_PAYMENT_FOREGROUND:Ljava/lang/String; = "nfc_payment_foreground"

.field public static final PACKAGE_VERIFIER_USER_CONSENT:Ljava/lang/String; = "package_verifier_user_consent"

.field public static final PARENTAL_CONTROL_ENABLED:Ljava/lang/String; = "parental_control_enabled"

.field public static final PARENTAL_CONTROL_LAST_UPDATE:Ljava/lang/String; = "parental_control_last_update"

.field public static final PARENTAL_CONTROL_REDIRECT_URL:Ljava/lang/String; = "parental_control_redirect_url"

.field public static final PAYMENT_SERVICE_SEARCH_URI:Ljava/lang/String; = "payment_service_search_uri"

.field public static final PREFERRED_TTY_MODE:Ljava/lang/String; = "preferred_tty_mode"

.field public static final PRINT_SERVICE_SEARCH_URI:Ljava/lang/String; = "print_service_search_uri"

.field public static final SCREENSAVER_ACTIVATE_ON_DOCK:Ljava/lang/String; = "screensaver_activate_on_dock"

.field public static final SCREENSAVER_ACTIVATE_ON_SLEEP:Ljava/lang/String; = "screensaver_activate_on_sleep"

.field public static final SCREENSAVER_COMPONENTS:Ljava/lang/String; = "screensaver_components"

.field public static final SCREENSAVER_DEFAULT_COMPONENT:Ljava/lang/String; = "screensaver_default_component"

.field public static final SCREENSAVER_ENABLED:Ljava/lang/String; = "screensaver_enabled"

.field public static final SEARCH_GLOBAL_SEARCH_ACTIVITY:Ljava/lang/String; = "search_global_search_activity"

.field public static final SEARCH_MAX_RESULTS_PER_SOURCE:Ljava/lang/String; = "search_max_results_per_source"

.field public static final SEARCH_MAX_RESULTS_TO_DISPLAY:Ljava/lang/String; = "search_max_results_to_display"

.field public static final SEARCH_MAX_SHORTCUTS_RETURNED:Ljava/lang/String; = "search_max_shortcuts_returned"

.field public static final SEARCH_MAX_SOURCE_EVENT_AGE_MILLIS:Ljava/lang/String; = "search_max_source_event_age_millis"

.field public static final SEARCH_MAX_STAT_AGE_MILLIS:Ljava/lang/String; = "search_max_stat_age_millis"

.field public static final SEARCH_MIN_CLICKS_FOR_SOURCE_RANKING:Ljava/lang/String; = "search_min_clicks_for_source_ranking"

.field public static final SEARCH_MIN_IMPRESSIONS_FOR_SOURCE_RANKING:Ljava/lang/String; = "search_min_impressions_for_source_ranking"

.field public static final SEARCH_NUM_PROMOTED_SOURCES:Ljava/lang/String; = "search_num_promoted_sources"

.field public static final SEARCH_PER_SOURCE_CONCURRENT_QUERY_LIMIT:Ljava/lang/String; = "search_per_source_concurrent_query_limit"

.field public static final SEARCH_PREFILL_MILLIS:Ljava/lang/String; = "search_prefill_millis"

.field public static final SEARCH_PROMOTED_SOURCE_DEADLINE_MILLIS:Ljava/lang/String; = "search_promoted_source_deadline_millis"

.field public static final SEARCH_QUERY_THREAD_CORE_POOL_SIZE:Ljava/lang/String; = "search_query_thread_core_pool_size"

.field public static final SEARCH_QUERY_THREAD_MAX_POOL_SIZE:Ljava/lang/String; = "search_query_thread_max_pool_size"

.field public static final SEARCH_SHORTCUT_REFRESH_CORE_POOL_SIZE:Ljava/lang/String; = "search_shortcut_refresh_core_pool_size"

.field public static final SEARCH_SHORTCUT_REFRESH_MAX_POOL_SIZE:Ljava/lang/String; = "search_shortcut_refresh_max_pool_size"

.field public static final SEARCH_SOURCE_TIMEOUT_MILLIS:Ljava/lang/String; = "search_source_timeout_millis"

.field public static final SEARCH_THREAD_KEEPALIVE_SECONDS:Ljava/lang/String; = "search_thread_keepalive_seconds"

.field public static final SEARCH_WEB_RESULTS_OVERRIDE_LIMIT:Ljava/lang/String; = "search_web_results_override_limit"

.field public static final SELECTED_INPUT_METHOD_SUBTYPE:Ljava/lang/String; = "selected_input_method_subtype"

.field public static final SELECTED_SPELL_CHECKER:Ljava/lang/String; = "selected_spell_checker"

.field public static final SELECTED_SPELL_CHECKER_SUBTYPE:Ljava/lang/String; = "selected_spell_checker_subtype"

.field public static final SETTINGS_CLASSNAME:Ljava/lang/String; = "settings_classname"

.field public static final SETTINGS_TO_BACKUP:[Ljava/lang/String;

.field public static final SHOW_IME_WITH_HARD_KEYBOARD:Ljava/lang/String; = "show_ime_with_hard_keyboard"

.field public static final SHOW_NOTE_ABOUT_NOTIFICATION_HIDING:Ljava/lang/String; = "show_note_about_notification_hiding"

.field public static final SKIP_FIRST_USE_HINTS:Ljava/lang/String; = "skip_first_use_hints"

.field public static final SLEEP_TIMEOUT:Ljava/lang/String; = "sleep_timeout"

.field public static final SMS_DEFAULT_APPLICATION:Ljava/lang/String; = "sms_default_application"

.field public static final SPELL_CHECKER_ENABLED:Ljava/lang/String; = "spell_checker_enabled"

.field public static final SYS_PROP_SETTING_VERSION:Ljava/lang/String; = "sys.settings_secure_version"

.field public static final TOUCH_EXPLORATION_ENABLED:Ljava/lang/String; = "touch_exploration_enabled"

.field public static final TOUCH_EXPLORATION_GRANTED_ACCESSIBILITY_SERVICES:Ljava/lang/String; = "touch_exploration_granted_accessibility_services"

.field public static final TRUST_AGENTS_INITIALIZED:Ljava/lang/String; = "trust_agents_initialized"

.field public static final TTS_DEFAULT_COUNTRY:Ljava/lang/String; = "tts_default_country"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TTS_DEFAULT_LANG:Ljava/lang/String; = "tts_default_lang"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TTS_DEFAULT_LOCALE:Ljava/lang/String; = "tts_default_locale"

.field public static final TTS_DEFAULT_PITCH:Ljava/lang/String; = "tts_default_pitch"

.field public static final TTS_DEFAULT_RATE:Ljava/lang/String; = "tts_default_rate"

.field public static final TTS_DEFAULT_SYNTH:Ljava/lang/String; = "tts_default_synth"

.field public static final TTS_DEFAULT_VARIANT:Ljava/lang/String; = "tts_default_variant"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TTS_ENABLED_PLUGINS:Ljava/lang/String; = "tts_enabled_plugins"

.field public static final TTS_USE_DEFAULTS:Ljava/lang/String; = "tts_use_defaults"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TTY_MODE_ENABLED:Ljava/lang/String; = "tty_mode_enabled"

.field public static final TV_INPUT_CUSTOM_LABELS:Ljava/lang/String; = "tv_input_custom_labels"

.field public static final TV_INPUT_HIDDEN_INPUTS:Ljava/lang/String; = "tv_input_hidden_inputs"

.field public static final UI_NIGHT_MODE:Ljava/lang/String; = "ui_night_mode"

.field public static final UNSAFE_VOLUME_MUSIC_ACTIVE_MS:Ljava/lang/String; = "unsafe_volume_music_active_ms"

.field public static final USB_AUDIO_AUTOMATIC_ROUTING_DISABLED:Ljava/lang/String; = "usb_audio_automatic_routing_disabled"

.field public static final USB_MASS_STORAGE_ENABLED:Ljava/lang/String; = "usb_mass_storage_enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final USER_SETUP_COMPLETE:Ljava/lang/String; = "user_setup_complete"

.field public static final USE_GOOGLE_MAIL:Ljava/lang/String; = "use_google_mail"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final VOICE_INTERACTION_SERVICE:Ljava/lang/String; = "voice_interaction_service"

.field public static final VOICE_RECOGNITION_SERVICE:Ljava/lang/String; = "voice_recognition_service"

.field public static final VOLUME_CONTROLLER_SERVICE_COMPONENT:Ljava/lang/String; = "volume_controller_service_component"

.field public static final WAKE_GESTURE_ENABLED:Ljava/lang/String; = "wake_gesture_enabled"

.field public static final WIFI_IDLE_MS:Ljava/lang/String; = "wifi_idle_ms"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

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

.field public static final WIFI_WATCHDOG_WATCH_LIST:Ljava/lang/String; = "wifi_watchdog_watch_list"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static sIsSystemProcess:Z

.field private static sLockSettings:Lcom/android/internal/widget/ILockSettings;

.field private static final sNameValueCache:Landroid/provider/Settings$NameValueCache;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x3

    #@1
    .line 3760
    const-string/jumbo v0, "content://settings/secure"

    #@4
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@7
    move-result-object v0

    #@8
    .line 3759
    sput-object v0, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    #@a
    .line 3763
    new-instance v0, Landroid/provider/Settings$NameValueCache;

    #@c
    .line 3764
    const-string/jumbo v1, "sys.settings_secure_version"

    #@f
    .line 3765
    sget-object v2, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    #@11
    .line 3766
    const-string/jumbo v3, "GET_secure"

    #@14
    .line 3767
    const-string/jumbo v4, "PUT_secure"

    #@17
    .line 3763
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/provider/Settings$NameValueCache;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    #@1a
    sput-object v0, Landroid/provider/Settings$Secure;->sNameValueCache:Landroid/provider/Settings$NameValueCache;

    #@1c
    .line 3769
    const/4 v0, 0x0

    #@1d
    sput-object v0, Landroid/provider/Settings$Secure;->sLockSettings:Lcom/android/internal/widget/ILockSettings;

    #@1f
    .line 3775
    new-instance v0, Ljava/util/HashSet;

    #@21
    invoke-direct {v0, v5}, Ljava/util/HashSet;-><init>(I)V

    #@24
    sput-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_LOCK_SETTINGS:Ljava/util/HashSet;

    #@26
    .line 3776
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_LOCK_SETTINGS:Ljava/util/HashSet;

    #@28
    const-string/jumbo v1, "lock_pattern_autolock"

    #@2b
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@2e
    .line 3777
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_LOCK_SETTINGS:Ljava/util/HashSet;

    #@30
    const-string/jumbo v1, "lock_pattern_visible_pattern"

    #@33
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@36
    .line 3778
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_LOCK_SETTINGS:Ljava/util/HashSet;

    #@38
    const-string/jumbo v1, "lock_pattern_tactile_feedback_enabled"

    #@3b
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@3e
    .line 3780
    new-instance v0, Ljava/util/HashSet;

    #@40
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@43
    sput-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@45
    .line 3781
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@47
    const-string/jumbo v1, "adb_enabled"

    #@4a
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@4d
    .line 3782
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@4f
    const-string/jumbo v1, "assisted_gps_enabled"

    #@52
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@55
    .line 3783
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@57
    const-string/jumbo v1, "bluetooth_on"

    #@5a
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@5d
    .line 3784
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@5f
    const-string/jumbo v1, "bugreport_in_power_menu"

    #@62
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@65
    .line 3785
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@67
    const-string/jumbo v1, "cdma_cell_broadcast_sms"

    #@6a
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@6d
    .line 3786
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@6f
    const-string/jumbo v1, "roaming_settings"

    #@72
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@75
    .line 3787
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@77
    const-string/jumbo v1, "subscription_mode"

    #@7a
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@7d
    .line 3788
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@7f
    const-string/jumbo v1, "data_activity_timeout_mobile"

    #@82
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@85
    .line 3789
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@87
    const-string/jumbo v1, "data_activity_timeout_wifi"

    #@8a
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@8d
    .line 3790
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@8f
    const-string/jumbo v1, "data_roaming"

    #@92
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@95
    .line 3791
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@97
    const-string/jumbo v1, "development_settings_enabled"

    #@9a
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@9d
    .line 3792
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@9f
    const-string/jumbo v1, "device_provisioned"

    #@a2
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@a5
    .line 3793
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@a7
    const-string/jumbo v1, "display_density_forced"

    #@aa
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@ad
    .line 3794
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@af
    const-string/jumbo v1, "display_size_forced"

    #@b2
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@b5
    .line 3795
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@b7
    const-string/jumbo v1, "download_manager_max_bytes_over_mobile"

    #@ba
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@bd
    .line 3796
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@bf
    const-string/jumbo v1, "download_manager_recommended_max_bytes_over_mobile"

    #@c2
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@c5
    .line 3797
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@c7
    const-string/jumbo v1, "mobile_data"

    #@ca
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@cd
    .line 3798
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@cf
    const-string/jumbo v1, "netstats_dev_bucket_duration"

    #@d2
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@d5
    .line 3799
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@d7
    const-string/jumbo v1, "netstats_dev_delete_age"

    #@da
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@dd
    .line 3800
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@df
    const-string/jumbo v1, "netstats_dev_persist_bytes"

    #@e2
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@e5
    .line 3801
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@e7
    const-string/jumbo v1, "netstats_dev_rotate_age"

    #@ea
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@ed
    .line 3802
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@ef
    const-string/jumbo v1, "netstats_enabled"

    #@f2
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@f5
    .line 3803
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@f7
    const-string/jumbo v1, "netstats_global_alert_bytes"

    #@fa
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@fd
    .line 3804
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@ff
    const-string/jumbo v1, "netstats_poll_interval"

    #@102
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@105
    .line 3805
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@107
    const-string/jumbo v1, "netstats_sample_enabled"

    #@10a
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@10d
    .line 3806
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@10f
    const-string/jumbo v1, "netstats_time_cache_max_age"

    #@112
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@115
    .line 3807
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@117
    const-string/jumbo v1, "netstats_uid_bucket_duration"

    #@11a
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@11d
    .line 3808
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@11f
    const-string/jumbo v1, "netstats_uid_delete_age"

    #@122
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@125
    .line 3809
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@127
    const-string/jumbo v1, "netstats_uid_persist_bytes"

    #@12a
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@12d
    .line 3810
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@12f
    const-string/jumbo v1, "netstats_uid_rotate_age"

    #@132
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@135
    .line 3811
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@137
    const-string/jumbo v1, "netstats_uid_tag_bucket_duration"

    #@13a
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@13d
    .line 3812
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@13f
    const-string/jumbo v1, "netstats_uid_tag_delete_age"

    #@142
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@145
    .line 3813
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@147
    const-string/jumbo v1, "netstats_uid_tag_persist_bytes"

    #@14a
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@14d
    .line 3814
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@14f
    const-string/jumbo v1, "netstats_uid_tag_rotate_age"

    #@152
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@155
    .line 3815
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@157
    const-string/jumbo v1, "network_preference"

    #@15a
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@15d
    .line 3816
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@15f
    const-string/jumbo v1, "nitz_update_diff"

    #@162
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@165
    .line 3817
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@167
    const-string/jumbo v1, "nitz_update_spacing"

    #@16a
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@16d
    .line 3818
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@16f
    const-string/jumbo v1, "ntp_server"

    #@172
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@175
    .line 3819
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@177
    const-string/jumbo v1, "ntp_timeout"

    #@17a
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@17d
    .line 3820
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@17f
    const-string/jumbo v1, "pdp_watchdog_error_poll_count"

    #@182
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@185
    .line 3821
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@187
    const-string/jumbo v1, "pdp_watchdog_long_poll_interval_ms"

    #@18a
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@18d
    .line 3822
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@18f
    const-string/jumbo v1, "pdp_watchdog_max_pdp_reset_fail_count"

    #@192
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@195
    .line 3823
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@197
    const-string/jumbo v1, "pdp_watchdog_poll_interval_ms"

    #@19a
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@19d
    .line 3824
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@19f
    const-string/jumbo v1, "pdp_watchdog_trigger_packet_count"

    #@1a2
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@1a5
    .line 3825
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@1a7
    const-string/jumbo v1, "sampling_profiler_ms"

    #@1aa
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@1ad
    .line 3826
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@1af
    const-string/jumbo v1, "setup_prepaid_data_service_url"

    #@1b2
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@1b5
    .line 3827
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@1b7
    const-string/jumbo v1, "setup_prepaid_detection_redir_host"

    #@1ba
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@1bd
    .line 3828
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@1bf
    const-string/jumbo v1, "setup_prepaid_detection_target_url"

    #@1c2
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@1c5
    .line 3829
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@1c7
    const-string/jumbo v1, "tether_dun_apn"

    #@1ca
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@1cd
    .line 3830
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@1cf
    const-string/jumbo v1, "tether_dun_required"

    #@1d2
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@1d5
    .line 3831
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@1d7
    const-string/jumbo v1, "tether_supported"

    #@1da
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@1dd
    .line 3832
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@1df
    const-string/jumbo v1, "usb_mass_storage_enabled"

    #@1e2
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@1e5
    .line 3833
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@1e7
    const-string/jumbo v1, "use_google_mail"

    #@1ea
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@1ed
    .line 3834
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@1ef
    const-string/jumbo v1, "wifi_country_code"

    #@1f2
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@1f5
    .line 3835
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@1f7
    const-string/jumbo v1, "wifi_framework_scan_interval_ms"

    #@1fa
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@1fd
    .line 3836
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@1ff
    const-string/jumbo v1, "wifi_frequency_band"

    #@202
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@205
    .line 3837
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@207
    const-string/jumbo v1, "wifi_idle_ms"

    #@20a
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@20d
    .line 3838
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@20f
    const-string/jumbo v1, "wifi_max_dhcp_retry_count"

    #@212
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@215
    .line 3839
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@217
    const-string/jumbo v1, "wifi_mobile_data_transition_wakelock_timeout_ms"

    #@21a
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@21d
    .line 3840
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@21f
    const-string/jumbo v1, "wifi_networks_available_notification_on"

    #@222
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@225
    .line 3841
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@227
    const-string/jumbo v1, "wifi_networks_available_repeat_delay"

    #@22a
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@22d
    .line 3842
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@22f
    const-string/jumbo v1, "wifi_num_open_networks_kept"

    #@232
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@235
    .line 3843
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@237
    const-string/jumbo v1, "wifi_on"

    #@23a
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@23d
    .line 3844
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@23f
    const-string/jumbo v1, "wifi_p2p_device_name"

    #@242
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@245
    .line 3845
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@247
    const-string/jumbo v1, "wifi_saved_state"

    #@24a
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@24d
    .line 3846
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@24f
    const-string/jumbo v1, "wifi_supplicant_scan_interval_ms"

    #@252
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@255
    .line 3847
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@257
    const-string/jumbo v1, "wifi_suspend_optimizations_enabled"

    #@25a
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@25d
    .line 3848
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@25f
    const-string/jumbo v1, "wifi_enhanced_auto_join"

    #@262
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@265
    .line 3849
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@267
    const-string/jumbo v1, "wifi_network_show_rssi"

    #@26a
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@26d
    .line 3850
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@26f
    const-string/jumbo v1, "wifi_watchdog_on"

    #@272
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@275
    .line 3851
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@277
    const-string/jumbo v1, "wifi_watchdog_poor_network_test_enabled"

    #@27a
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@27d
    .line 3852
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@27f
    const-string/jumbo v1, "wimax_networks_available_notification_on"

    #@282
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@285
    .line 3853
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@287
    const-string/jumbo v1, "package_verifier_enable"

    #@28a
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@28d
    .line 3854
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@28f
    const-string/jumbo v1, "verifier_timeout"

    #@292
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@295
    .line 3855
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@297
    const-string/jumbo v1, "verifier_default_response"

    #@29a
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@29d
    .line 3856
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@29f
    const-string/jumbo v1, "data_stall_alarm_non_aggressive_delay_in_ms"

    #@2a2
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@2a5
    .line 3857
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@2a7
    const-string/jumbo v1, "data_stall_alarm_aggressive_delay_in_ms"

    #@2aa
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@2ad
    .line 3858
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@2af
    const-string/jumbo v1, "gprs_register_check_period_ms"

    #@2b2
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@2b5
    .line 3859
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@2b7
    const-string/jumbo v1, "wtf_is_fatal"

    #@2ba
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@2bd
    .line 3860
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@2bf
    const-string/jumbo v1, "battery_discharge_duration_threshold"

    #@2c2
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@2c5
    .line 3861
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@2c7
    const-string/jumbo v1, "battery_discharge_threshold"

    #@2ca
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@2cd
    .line 3862
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@2cf
    const-string/jumbo v1, "send_action_app_error"

    #@2d2
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@2d5
    .line 3863
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@2d7
    const-string/jumbo v1, "dropbox_age_seconds"

    #@2da
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@2dd
    .line 3864
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@2df
    const-string/jumbo v1, "dropbox_max_files"

    #@2e2
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@2e5
    .line 3865
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@2e7
    const-string/jumbo v1, "dropbox_quota_kb"

    #@2ea
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@2ed
    .line 3866
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@2ef
    const-string/jumbo v1, "dropbox_quota_percent"

    #@2f2
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@2f5
    .line 3867
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@2f7
    const-string/jumbo v1, "dropbox_reserve_percent"

    #@2fa
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@2fd
    .line 3868
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@2ff
    const-string/jumbo v1, "dropbox:"

    #@302
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@305
    .line 3869
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@307
    const-string/jumbo v1, "logcat_for_"

    #@30a
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@30d
    .line 3870
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@30f
    const-string/jumbo v1, "sys_free_storage_log_interval"

    #@312
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@315
    .line 3871
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@317
    const-string/jumbo v1, "disk_free_change_reporting_threshold"

    #@31a
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@31d
    .line 3872
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@31f
    const-string/jumbo v1, "sys_storage_threshold_percentage"

    #@322
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@325
    .line 3873
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@327
    const-string/jumbo v1, "sys_storage_threshold_max_bytes"

    #@32a
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@32d
    .line 3874
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@32f
    const-string/jumbo v1, "sys_storage_full_threshold_bytes"

    #@332
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@335
    .line 3875
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@337
    const-string/jumbo v1, "sync_max_retry_delay_in_seconds"

    #@33a
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@33d
    .line 3876
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@33f
    const-string/jumbo v1, "connectivity_change_delay"

    #@342
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@345
    .line 3877
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@347
    const-string/jumbo v1, "captive_portal_detection_enabled"

    #@34a
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@34d
    .line 3878
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@34f
    const-string/jumbo v1, "captive_portal_server"

    #@352
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@355
    .line 3879
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@357
    const-string/jumbo v1, "nsd_on"

    #@35a
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@35d
    .line 3880
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@35f
    const-string/jumbo v1, "set_install_location"

    #@362
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@365
    .line 3881
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@367
    const-string/jumbo v1, "default_install_location"

    #@36a
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@36d
    .line 3882
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@36f
    const-string/jumbo v1, "inet_condition_debounce_up_delay"

    #@372
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@375
    .line 3883
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@377
    const-string/jumbo v1, "inet_condition_debounce_down_delay"

    #@37a
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@37d
    .line 3884
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@37f
    const-string/jumbo v1, "read_external_storage_enforced_default"

    #@382
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@385
    .line 3885
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@387
    const-string/jumbo v1, "http_proxy"

    #@38a
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@38d
    .line 3886
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@38f
    const-string/jumbo v1, "global_http_proxy_host"

    #@392
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@395
    .line 3887
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@397
    const-string/jumbo v1, "global_http_proxy_port"

    #@39a
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@39d
    .line 3888
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@39f
    const-string/jumbo v1, "global_http_proxy_exclusion_list"

    #@3a2
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@3a5
    .line 3889
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@3a7
    const-string/jumbo v1, "set_global_http_proxy"

    #@3aa
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@3ad
    .line 3890
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@3af
    const-string/jumbo v1, "default_dns_server"

    #@3b2
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@3b5
    .line 3891
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@3b7
    const-string/jumbo v1, "preferred_network_mode"

    #@3ba
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@3bd
    .line 3892
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@3bf
    const-string/jumbo v1, "webview_data_reduction_proxy_key"

    #@3c2
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@3c5
    .line 5723
    const/16 v0, 0x2e

    #@3c7
    new-array v0, v0, [Ljava/lang/String;

    #@3c9
    .line 5724
    const-string/jumbo v1, "bugreport_in_power_menu"

    #@3cc
    const/4 v2, 0x0

    #@3cd
    aput-object v1, v0, v2

    #@3cf
    .line 5725
    const-string/jumbo v1, "mock_location"

    #@3d2
    const/4 v2, 0x1

    #@3d3
    aput-object v1, v0, v2

    #@3d5
    .line 5726
    const-string/jumbo v1, "parental_control_enabled"

    #@3d8
    const/4 v2, 0x2

    #@3d9
    aput-object v1, v0, v2

    #@3db
    .line 5727
    const-string/jumbo v1, "parental_control_redirect_url"

    #@3de
    aput-object v1, v0, v5

    #@3e0
    .line 5728
    const-string/jumbo v1, "usb_mass_storage_enabled"

    #@3e3
    const/4 v2, 0x4

    #@3e4
    aput-object v1, v0, v2

    #@3e6
    .line 5729
    const-string/jumbo v1, "accessibility_display_magnification_enabled"

    #@3e9
    const/4 v2, 0x5

    #@3ea
    aput-object v1, v0, v2

    #@3ec
    .line 5730
    const-string/jumbo v1, "accessibility_display_magnification_scale"

    #@3ef
    const/4 v2, 0x6

    #@3f0
    aput-object v1, v0, v2

    #@3f2
    .line 5731
    const-string/jumbo v1, "accessibility_display_magnification_auto_update"

    #@3f5
    const/4 v2, 0x7

    #@3f6
    aput-object v1, v0, v2

    #@3f8
    .line 5732
    const-string/jumbo v1, "accessibility_script_injection"

    #@3fb
    const/16 v2, 0x8

    #@3fd
    aput-object v1, v0, v2

    #@3ff
    .line 5733
    const-string/jumbo v1, "backup_auto_restore"

    #@402
    const/16 v2, 0x9

    #@404
    aput-object v1, v0, v2

    #@406
    .line 5734
    const-string/jumbo v1, "enabled_accessibility_services"

    #@409
    const/16 v2, 0xa

    #@40b
    aput-object v1, v0, v2

    #@40d
    .line 5735
    const-string/jumbo v1, "enabled_notification_listeners"

    #@410
    const/16 v2, 0xb

    #@412
    aput-object v1, v0, v2

    #@414
    .line 5736
    const-string/jumbo v1, "enabled_input_methods"

    #@417
    const/16 v2, 0xc

    #@419
    aput-object v1, v0, v2

    #@41b
    .line 5737
    const-string/jumbo v1, "touch_exploration_granted_accessibility_services"

    #@41e
    const/16 v2, 0xd

    #@420
    aput-object v1, v0, v2

    #@422
    .line 5738
    const-string/jumbo v1, "touch_exploration_enabled"

    #@425
    const/16 v2, 0xe

    #@427
    aput-object v1, v0, v2

    #@429
    .line 5739
    const-string/jumbo v1, "accessibility_enabled"

    #@42c
    const/16 v2, 0xf

    #@42e
    aput-object v1, v0, v2

    #@430
    .line 5740
    const-string/jumbo v1, "speak_password"

    #@433
    const/16 v2, 0x10

    #@435
    aput-object v1, v0, v2

    #@437
    .line 5741
    const-string/jumbo v1, "high_text_contrast_enabled"

    #@43a
    const/16 v2, 0x11

    #@43c
    aput-object v1, v0, v2

    #@43e
    .line 5742
    const-string/jumbo v1, "accessibility_captioning_enabled"

    #@441
    const/16 v2, 0x12

    #@443
    aput-object v1, v0, v2

    #@445
    .line 5743
    const-string/jumbo v1, "accessibility_captioning_locale"

    #@448
    const/16 v2, 0x13

    #@44a
    aput-object v1, v0, v2

    #@44c
    .line 5744
    const-string/jumbo v1, "accessibility_captioning_background_color"

    #@44f
    const/16 v2, 0x14

    #@451
    aput-object v1, v0, v2

    #@453
    .line 5745
    const-string/jumbo v1, "accessibility_captioning_foreground_color"

    #@456
    const/16 v2, 0x15

    #@458
    aput-object v1, v0, v2

    #@45a
    .line 5746
    const-string/jumbo v1, "accessibility_captioning_edge_type"

    #@45d
    const/16 v2, 0x16

    #@45f
    aput-object v1, v0, v2

    #@461
    .line 5747
    const-string/jumbo v1, "accessibility_captioning_edge_color"

    #@464
    const/16 v2, 0x17

    #@466
    aput-object v1, v0, v2

    #@468
    .line 5748
    const-string/jumbo v1, "accessibility_captioning_typeface"

    #@46b
    const/16 v2, 0x18

    #@46d
    aput-object v1, v0, v2

    #@46f
    .line 5749
    const-string/jumbo v1, "accessibility_captioning_font_scale"

    #@472
    const/16 v2, 0x19

    #@474
    aput-object v1, v0, v2

    #@476
    .line 5750
    const-string/jumbo v1, "tts_use_defaults"

    #@479
    const/16 v2, 0x1a

    #@47b
    aput-object v1, v0, v2

    #@47d
    .line 5751
    const-string/jumbo v1, "tts_default_rate"

    #@480
    const/16 v2, 0x1b

    #@482
    aput-object v1, v0, v2

    #@484
    .line 5752
    const-string/jumbo v1, "tts_default_pitch"

    #@487
    const/16 v2, 0x1c

    #@489
    aput-object v1, v0, v2

    #@48b
    .line 5753
    const-string/jumbo v1, "tts_default_synth"

    #@48e
    const/16 v2, 0x1d

    #@490
    aput-object v1, v0, v2

    #@492
    .line 5754
    const-string/jumbo v1, "tts_default_lang"

    #@495
    const/16 v2, 0x1e

    #@497
    aput-object v1, v0, v2

    #@499
    .line 5755
    const-string/jumbo v1, "tts_default_country"

    #@49c
    const/16 v2, 0x1f

    #@49e
    aput-object v1, v0, v2

    #@4a0
    .line 5756
    const-string/jumbo v1, "tts_enabled_plugins"

    #@4a3
    const/16 v2, 0x20

    #@4a5
    aput-object v1, v0, v2

    #@4a7
    .line 5757
    const-string/jumbo v1, "tts_default_locale"

    #@4aa
    const/16 v2, 0x21

    #@4ac
    aput-object v1, v0, v2

    #@4ae
    .line 5758
    const-string/jumbo v1, "wifi_networks_available_notification_on"

    #@4b1
    const/16 v2, 0x22

    #@4b3
    aput-object v1, v0, v2

    #@4b5
    .line 5759
    const-string/jumbo v1, "wifi_networks_available_repeat_delay"

    #@4b8
    const/16 v2, 0x23

    #@4ba
    aput-object v1, v0, v2

    #@4bc
    .line 5760
    const-string/jumbo v1, "wifi_num_open_networks_kept"

    #@4bf
    const/16 v2, 0x24

    #@4c1
    aput-object v1, v0, v2

    #@4c3
    .line 5761
    const-string/jumbo v1, "selected_spell_checker"

    #@4c6
    const/16 v2, 0x25

    #@4c8
    aput-object v1, v0, v2

    #@4ca
    .line 5762
    const-string/jumbo v1, "selected_spell_checker_subtype"

    #@4cd
    const/16 v2, 0x26

    #@4cf
    aput-object v1, v0, v2

    #@4d1
    .line 5763
    const-string/jumbo v1, "spell_checker_enabled"

    #@4d4
    const/16 v2, 0x27

    #@4d6
    aput-object v1, v0, v2

    #@4d8
    .line 5764
    const-string/jumbo v1, "mount_play_not_snd"

    #@4db
    const/16 v2, 0x28

    #@4dd
    aput-object v1, v0, v2

    #@4df
    .line 5765
    const-string/jumbo v1, "mount_ums_autostart"

    #@4e2
    const/16 v2, 0x29

    #@4e4
    aput-object v1, v0, v2

    #@4e6
    .line 5766
    const-string/jumbo v1, "mount_ums_prompt"

    #@4e9
    const/16 v2, 0x2a

    #@4eb
    aput-object v1, v0, v2

    #@4ed
    .line 5767
    const-string/jumbo v1, "mount_ums_notify_enabled"

    #@4f0
    const/16 v2, 0x2b

    #@4f2
    aput-object v1, v0, v2

    #@4f4
    .line 5768
    const-string/jumbo v1, "sleep_timeout"

    #@4f7
    const/16 v2, 0x2c

    #@4f9
    aput-object v1, v0, v2

    #@4fb
    .line 5769
    const-string/jumbo v1, "double_tap_to_wake"

    #@4fe
    const/16 v2, 0x2d

    #@500
    aput-object v1, v0, v2

    #@502
    .line 5723
    sput-object v0, Landroid/provider/Settings$Secure;->SETTINGS_TO_BACKUP:[Ljava/lang/String;

    #@504
    .line 5776
    new-instance v0, Landroid/util/ArraySet;

    #@506
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    #@509
    sput-object v0, Landroid/provider/Settings$Secure;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    #@50b
    .line 5779
    sget-object v0, Landroid/provider/Settings$Secure;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    #@50d
    const-string/jumbo v1, "accessibility_enabled"

    #@510
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@513
    .line 5780
    sget-object v0, Landroid/provider/Settings$Secure;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    #@515
    const-string/jumbo v1, "mock_location"

    #@518
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@51b
    .line 5781
    sget-object v0, Landroid/provider/Settings$Secure;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    #@51d
    const-string/jumbo v1, "allowed_geolocation_origins"

    #@520
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@523
    .line 5782
    sget-object v0, Landroid/provider/Settings$Secure;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    #@525
    const-string/jumbo v1, "default_input_method"

    #@528
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@52b
    .line 5783
    sget-object v0, Landroid/provider/Settings$Secure;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    #@52d
    const-string/jumbo v1, "enabled_accessibility_services"

    #@530
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@533
    .line 5784
    sget-object v0, Landroid/provider/Settings$Secure;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    #@535
    const-string/jumbo v1, "enabled_input_methods"

    #@538
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@53b
    .line 5785
    sget-object v0, Landroid/provider/Settings$Secure;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    #@53d
    const-string/jumbo v1, "location_mode"

    #@540
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@543
    .line 5786
    sget-object v0, Landroid/provider/Settings$Secure;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    #@545
    const-string/jumbo v1, "location_providers_allowed"

    #@548
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@54b
    .line 5787
    sget-object v0, Landroid/provider/Settings$Secure;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    #@54d
    const-string/jumbo v1, "lock_screen_allow_private_notifications"

    #@550
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@553
    .line 5788
    sget-object v0, Landroid/provider/Settings$Secure;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    #@555
    const-string/jumbo v1, "selected_input_method_subtype"

    #@558
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@55b
    .line 5789
    sget-object v0, Landroid/provider/Settings$Secure;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    #@55d
    const-string/jumbo v1, "selected_spell_checker"

    #@560
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@563
    .line 5790
    sget-object v0, Landroid/provider/Settings$Secure;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    #@565
    const-string/jumbo v1, "selected_spell_checker_subtype"

    #@568
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@56b
    .line 3753
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 3753
    invoke-direct {p0}, Landroid/provider/Settings$NameValueTable;-><init>()V

    #@3
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
    .line 5795
    .local p0, "outKeySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v0, Landroid/provider/Settings$Secure;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    #@2
    invoke-interface {p0, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    #@5
    .line 5794
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
    .line 4226
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@3
    move-result v0

    #@4
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)F

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
    .line 4192
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@3
    move-result v0

    #@4
    invoke-static {p0, p1, p2, v0}, Landroid/provider/Settings$Secure;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

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
    .line 4198
    invoke-static {p0, p1, p3}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 4200
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
    .line 4201
    .restart local p2    # "def":F
    :catch_0
    move-exception v0

    #@c
    .line 4202
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
    .line 4232
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 4233
    .local v1, "v":Ljava/lang/String;
    if-nez v1, :cond_0

    #@6
    .line 4234
    new-instance v2, Landroid/provider/Settings$SettingNotFoundException;

    #@8
    invoke-direct {v2, p1}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    #@b
    throw v2

    #@c
    .line 4237
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
    .line 4238
    :catch_0
    move-exception v0

    #@12
    .line 4239
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
    .line 4048
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@3
    move-result v0

    #@4
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

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
    .line 4010
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@3
    move-result v0

    #@4
    invoke-static {p0, p1, p2, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

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
    .line 4054
    const-string/jumbo v2, "location_mode"

    #@3
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v2

    #@7
    if-eqz v2, :cond_0

    #@9
    .line 4057
    invoke-static {p0, p2}, Landroid/provider/Settings$Secure;->getLocationModeForUser(Landroid/content/ContentResolver;I)I

    #@c
    move-result v2

    #@d
    return v2

    #@e
    .line 4059
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    .line 4061
    .local v1, "v":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    move-result v2

    #@16
    return v2

    #@17
    .line 4062
    :catch_0
    move-exception v0

    #@18
    .line 4063
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Landroid/provider/Settings$SettingNotFoundException;

    #@1a
    invoke-direct {v2, p1}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v2
.end method

.method public static getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I
    .locals 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # I
    .param p3, "userHandle"    # I

    #@0
    .prologue
    .line 4015
    const-string/jumbo v2, "location_mode"

    #@3
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v2

    #@7
    if-eqz v2, :cond_0

    #@9
    .line 4018
    invoke-static {p0, p3}, Landroid/provider/Settings$Secure;->getLocationModeForUser(Landroid/content/ContentResolver;I)I

    #@c
    move-result v2

    #@d
    return v2

    #@e
    .line 4020
    :cond_0
    invoke-static {p0, p1, p3}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    .line 4022
    .local v1, "v":Ljava/lang/String;
    if-eqz v1, :cond_1

    #@14
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    move-result p2

    #@18
    .end local p2    # "def":I
    :cond_1
    return p2

    #@19
    .line 4023
    .restart local p2    # "def":I
    :catch_0
    move-exception v0

    #@1a
    .line 4024
    .local v0, "e":Ljava/lang/NumberFormatException;
    return p2
.end method

.method private static final getLocationModeForUser(Landroid/content/ContentResolver;I)I
    .locals 4
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 5932
    invoke-static {}, Landroid/provider/Settings;->-get0()Ljava/lang/Object;

    #@3
    move-result-object v3

    #@4
    monitor-enter v3

    #@5
    .line 5934
    :try_start_0
    const-string/jumbo v2, "gps"

    #@8
    .line 5933
    invoke-static {p0, v2, p1}, Landroid/provider/Settings$Secure;->isLocationProviderEnabledForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    #@b
    move-result v0

    #@c
    .line 5936
    .local v0, "gpsEnabled":Z
    const-string/jumbo v2, "network"

    #@f
    .line 5935
    invoke-static {p0, v2, p1}, Landroid/provider/Settings$Secure;->isLocationProviderEnabledForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    move-result v1

    #@13
    .line 5937
    .local v1, "networkEnabled":Z
    if-eqz v0, :cond_0

    #@15
    if-eqz v1, :cond_0

    #@17
    .line 5938
    const/4 v2, 0x3

    #@18
    monitor-exit v3

    #@19
    return v2

    #@1a
    .line 5939
    :cond_0
    if-eqz v0, :cond_1

    #@1c
    .line 5940
    const/4 v2, 0x1

    #@1d
    monitor-exit v3

    #@1e
    return v2

    #@1f
    .line 5941
    :cond_1
    if-eqz v1, :cond_2

    #@21
    .line 5942
    const/4 v2, 0x2

    #@22
    monitor-exit v3

    #@23
    return v2

    #@24
    .line 5944
    :cond_2
    const/4 v2, 0x0

    #@25
    monitor-exit v3

    #@26
    return v2

    #@27
    .line 5932
    .end local v0    # "gpsEnabled":Z
    .end local v1    # "networkEnabled":Z
    :catchall_0
    move-exception v2

    #@28
    monitor-exit v3

    #@29
    throw v2
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
    .line 4140
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@3
    move-result v0

    #@4
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)J

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
    .line 4105
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@3
    move-result v0

    #@4
    invoke-static {p0, p1, p2, p3, v0}, Landroid/provider/Settings$Secure;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)J

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
    .line 4146
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 4148
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
    .line 4149
    :catch_0
    move-exception v0

    #@a
    .line 4150
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
    .line 4111
    invoke-static {p0, p1, p4}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 4114
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
    .line 4118
    .local v2, "value":J
    :goto_0
    return-wide v2

    #@b
    .line 4114
    .end local v2    # "value":J
    :cond_0
    move-wide v2, p2

    #@c
    .restart local v2    # "value":J
    goto :goto_0

    #@d
    .line 4115
    .end local v2    # "value":J
    :catch_0
    move-exception v0

    #@e
    .line 4116
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
    .line 3897
    .local p0, "outKeySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@2
    invoke-interface {p0, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    #@5
    .line 3896
    return-void
.end method

.method public static getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3907
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@3
    move-result v0

    #@4
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    #@0
    .prologue
    .line 3913
    sget-object v3, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@2
    invoke-virtual {v3, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    #@5
    move-result v3

    #@6
    if-eqz v3, :cond_0

    #@8
    .line 3914
    const-string/jumbo v3, "Settings"

    #@b
    new-instance v4, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v5, "Setting "

    #@13
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v4

    #@17
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v4

    #@1b
    const-string/jumbo v5, " has moved from android.provider.Settings.Secure"

    #@1e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v4

    #@22
    .line 3915
    const-string/jumbo v5, " to android.provider.Settings.Global."

    #@25
    .line 3914
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v4

    #@29
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v4

    #@2d
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@30
    .line 3916
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Global;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    #@33
    move-result-object v3

    #@34
    return-object v3

    #@35
    .line 3919
    :cond_0
    sget-object v3, Landroid/provider/Settings$Secure;->MOVED_TO_LOCK_SETTINGS:Ljava/util/HashSet;

    #@37
    invoke-virtual {v3, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    #@3a
    move-result v3

    #@3b
    if-eqz v3, :cond_2

    #@3d
    .line 3920
    const-class v4, Landroid/provider/Settings$Secure;

    #@3f
    monitor-enter v4

    #@40
    .line 3921
    :try_start_0
    sget-object v3, Landroid/provider/Settings$Secure;->sLockSettings:Lcom/android/internal/widget/ILockSettings;

    #@42
    if-nez v3, :cond_1

    #@44
    .line 3923
    const-string/jumbo v3, "lock_settings"

    #@47
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@4a
    move-result-object v3

    #@4b
    .line 3922
    invoke-static {v3}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    #@4e
    move-result-object v3

    #@4f
    sput-object v3, Landroid/provider/Settings$Secure;->sLockSettings:Lcom/android/internal/widget/ILockSettings;

    #@51
    .line 3924
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@54
    move-result v3

    #@55
    const/16 v5, 0x3e8

    #@57
    if-ne v3, v5, :cond_3

    #@59
    const/4 v3, 0x1

    #@5a
    :goto_0
    sput-boolean v3, Landroid/provider/Settings$Secure;->sIsSystemProcess:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5c
    :cond_1
    monitor-exit v4

    #@5d
    .line 3927
    sget-object v3, Landroid/provider/Settings$Secure;->sLockSettings:Lcom/android/internal/widget/ILockSettings;

    #@5f
    if-eqz v3, :cond_2

    #@61
    sget-boolean v3, Landroid/provider/Settings$Secure;->sIsSystemProcess:Z

    #@63
    if-eqz v3, :cond_4

    #@65
    .line 3950
    :cond_2
    :goto_1
    sget-object v3, Landroid/provider/Settings$Secure;->sNameValueCache:Landroid/provider/Settings$NameValueCache;

    #@67
    invoke-virtual {v3, p0, p1, p2}, Landroid/provider/Settings$NameValueCache;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    #@6a
    move-result-object v3

    #@6b
    return-object v3

    #@6c
    .line 3924
    :cond_3
    const/4 v3, 0x0

    #@6d
    goto :goto_0

    #@6e
    .line 3920
    :catchall_0
    move-exception v3

    #@6f
    monitor-exit v4

    #@70
    throw v3

    #@71
    .line 3930
    :cond_4
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    #@74
    move-result-object v0

    #@75
    .line 3932
    .local v0, "application":Landroid/app/Application;
    if-eqz v0, :cond_6

    #@77
    .line 3933
    invoke-virtual {v0}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@7a
    move-result-object v3

    #@7b
    if-eqz v3, :cond_6

    #@7d
    .line 3934
    invoke-virtual {v0}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@80
    move-result-object v3

    #@81
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@83
    .line 3935
    const/16 v4, 0x16

    #@85
    .line 3934
    if-gt v3, v4, :cond_5

    #@87
    const/4 v1, 0x1

    #@88
    .line 3936
    .local v1, "isPreMnc":Z
    :goto_2
    if-eqz v1, :cond_7

    #@8a
    .line 3938
    :try_start_1
    sget-object v3, Landroid/provider/Settings$Secure;->sLockSettings:Lcom/android/internal/widget/ILockSettings;

    #@8c
    const-string/jumbo v4, "0"

    #@8f
    invoke-interface {v3, p1, v4, p2}, Lcom/android/internal/widget/ILockSettings;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@92
    move-result-object v3

    #@93
    return-object v3

    #@94
    .line 3934
    .end local v1    # "isPreMnc":Z
    :cond_5
    const/4 v1, 0x0

    #@95
    .restart local v1    # "isPreMnc":Z
    goto :goto_2

    #@96
    .line 3932
    .end local v1    # "isPreMnc":Z
    :cond_6
    const/4 v1, 0x0

    #@97
    .restart local v1    # "isPreMnc":Z
    goto :goto_2

    #@98
    .line 3943
    :cond_7
    new-instance v3, Ljava/lang/SecurityException;

    #@9a
    new-instance v4, Ljava/lang/StringBuilder;

    #@9c
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@9f
    const-string/jumbo v5, "Settings.Secure."

    #@a2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a5
    move-result-object v4

    #@a6
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a9
    move-result-object v4

    #@aa
    .line 3944
    const-string/jumbo v5, " is deprecated and no longer accessible."

    #@ad
    .line 3943
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v4

    #@b1
    .line 3945
    const-string/jumbo v5, " See API documentation for potential replacements."

    #@b4
    .line 3943
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b7
    move-result-object v4

    #@b8
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bb
    move-result-object v4

    #@bc
    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@bf
    throw v3

    #@c0
    .line 3939
    :catch_0
    move-exception v2

    #@c1
    .local v2, "re":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method public static getUriFor(Ljava/lang/String;)Landroid/net/Uri;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3987
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@2
    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 3988
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
    const-string/jumbo v2, " has moved from android.provider.Settings.Secure"

    #@1e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    .line 3989
    const-string/jumbo v2, " to android.provider.Settings.Global, returning global URI."

    #@25
    .line 3988
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
    .line 3990
    sget-object v0, Landroid/provider/Settings$Global;->CONTENT_URI:Landroid/net/Uri;

    #@32
    invoke-static {v0, p0}, Landroid/provider/Settings$Global;->getUriFor(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    #@35
    move-result-object v0

    #@36
    return-object v0

    #@37
    .line 3992
    :cond_0
    sget-object v0, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    #@39
    invoke-static {v0, p0}, Landroid/provider/Settings$Secure;->getUriFor(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    #@3c
    move-result-object v0

    #@3d
    return-object v0
.end method

.method public static final isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "provider"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 5810
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@3
    move-result v0

    #@4
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->isLocationProviderEnabledForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public static final isLocationProviderEnabledForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 5826
    const-string/jumbo v1, "location_providers_allowed"

    #@3
    .line 5825
    invoke-static {p0, v1, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    .line 5827
    .local v0, "allowedProviders":Ljava/lang/String;
    const/16 v1, 0x2c

    #@9
    invoke-static {v0, v1, p1}, Landroid/text/TextUtils;->delimitedStringContains(Ljava/lang/String;CLjava/lang/String;)Z

    #@c
    move-result v1

    #@d
    return v1
.end method

.method public static putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # F

    #@0
    .prologue
    .line 4257
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@3
    move-result v0

    #@4
    invoke-static {p0, p1, p2, v0}, Landroid/provider/Settings$Secure;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

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
    .line 4263
    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {p0, p1, v0, p3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

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
    .line 4081
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@3
    move-result v0

    #@4
    invoke-static {p0, p1, p2, v0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

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
    .line 4087
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {p0, p1, v0, p3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

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
    .line 4168
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@3
    move-result v0

    #@4
    invoke-static {p0, p1, p2, p3, v0}, Landroid/provider/Settings$Secure;->putLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)Z

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
    .line 4174
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {p0, p1, v0, p4}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

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
    .line 3961
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@3
    move-result v0

    #@4
    invoke-static {p0, p1, p2, v0}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public static putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 3
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    #@0
    .prologue
    .line 3967
    const-string/jumbo v0, "location_mode"

    #@3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 3970
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@c
    move-result v0

    #@d
    invoke-static {p0, v0, p3}, Landroid/provider/Settings$Secure;->setLocationModeForUser(Landroid/content/ContentResolver;II)Z

    #@10
    move-result v0

    #@11
    return v0

    #@12
    .line 3972
    :cond_0
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    #@14
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    #@17
    move-result v0

    #@18
    if-eqz v0, :cond_1

    #@1a
    .line 3973
    const-string/jumbo v0, "Settings"

    #@1d
    new-instance v1, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    const-string/jumbo v2, "Setting "

    #@25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    const-string/jumbo v2, " has moved from android.provider.Settings.System"

    #@30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    .line 3974
    const-string/jumbo v2, " to android.provider.Settings.Global"

    #@37
    .line 3973
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v1

    #@3b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v1

    #@3f
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@42
    .line 3975
    invoke-static {p0, p1, p2, p3}, Landroid/provider/Settings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    #@45
    move-result v0

    #@46
    return v0

    #@47
    .line 3977
    :cond_1
    sget-object v0, Landroid/provider/Settings$Secure;->sNameValueCache:Landroid/provider/Settings$NameValueCache;

    #@49
    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/provider/Settings$NameValueCache;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    #@4c
    move-result v0

    #@4d
    return v0
.end method

.method private static final setLocationModeForUser(Landroid/content/ContentResolver;II)Z
    .locals 8
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "mode"    # I
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 5886
    invoke-static {}, Landroid/provider/Settings;->-get0()Ljava/lang/Object;

    #@3
    move-result-object v5

    #@4
    monitor-enter v5

    #@5
    .line 5887
    const/4 v0, 0x0

    #@6
    .line 5888
    .local v0, "gps":Z
    const/4 v2, 0x0

    #@7
    .line 5889
    .local v2, "network":Z
    packed-switch p1, :pswitch_data_0

    #@a
    .line 5903
    :try_start_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@c
    new-instance v6, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v7, "Invalid location mode: "

    #@14
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v6

    #@18
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v6

    #@1c
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v6

    #@20
    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@23
    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    .line 5886
    :catchall_0
    move-exception v4

    #@25
    monitor-exit v5

    #@26
    throw v4

    #@27
    .line 5893
    :pswitch_0
    const/4 v0, 0x1

    #@28
    .line 5915
    :goto_0
    :pswitch_1
    :try_start_1
    const-string/jumbo v4, "network"

    #@2b
    .line 5914
    invoke-static {p0, v4, v2, p2}, Landroid/provider/Settings$Secure;->setLocationProviderEnabledForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    #@2e
    move-result v3

    #@2f
    .line 5917
    .local v3, "nlpSuccess":Z
    const-string/jumbo v4, "gps"

    #@32
    .line 5916
    invoke-static {p0, v4, v0, p2}, Landroid/provider/Settings$Secure;->setLocationProviderEnabledForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@35
    move-result v1

    #@36
    .line 5918
    .local v1, "gpsSuccess":Z
    if-eqz v1, :cond_0

    #@38
    .end local v3    # "nlpSuccess":Z
    :goto_1
    monitor-exit v5

    #@39
    return v3

    #@3a
    .line 5896
    .end local v1    # "gpsSuccess":Z
    :pswitch_2
    const/4 v2, 0x1

    #@3b
    .line 5897
    goto :goto_0

    #@3c
    .line 5899
    :pswitch_3
    const/4 v0, 0x1

    #@3d
    .line 5900
    const/4 v2, 0x1

    #@3e
    .line 5901
    goto :goto_0

    #@3f
    .line 5918
    .restart local v1    # "gpsSuccess":Z
    .restart local v3    # "nlpSuccess":Z
    :cond_0
    const/4 v3, 0x0

    #@40
    goto :goto_1

    #@41
    .line 5889
    nop

    #@42
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static final setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 5840
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@3
    move-result v0

    #@4
    invoke-static {p0, p1, p2, v0}, Landroid/provider/Settings$Secure;->setLocationProviderEnabledForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    #@7
    .line 5839
    return-void
.end method

.method public static final setLocationProviderEnabledForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z
    .locals 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .param p3, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 5858
    invoke-static {}, Landroid/provider/Settings;->-get0()Ljava/lang/Object;

    #@3
    move-result-object v1

    #@4
    monitor-enter v1

    #@5
    .line 5862
    if-eqz p2, :cond_0

    #@7
    .line 5863
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v2, "+"

    #@f
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object p1

    #@1b
    .line 5867
    :goto_0
    const-string/jumbo v0, "location_providers_allowed"

    #@1e
    invoke-static {p0, v0, p1, p3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    move-result v0

    #@22
    monitor-exit v1

    #@23
    return v0

    #@24
    .line 5865
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    const-string/jumbo v2, "-"

    #@2c
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v0

    #@30
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v0

    #@34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@37
    move-result-object p1

    #@38
    goto :goto_0

    #@39
    .line 5858
    :catchall_0
    move-exception v0

    #@3a
    monitor-exit v1

    #@3b
    throw v0
.end method
