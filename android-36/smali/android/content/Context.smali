.class public abstract Landroid/content/Context;
.super Ljava/lang/Object;
.source "Context.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/Context$CreatePackageOptions;,
        Landroid/content/Context$ServiceName;,
        Landroid/content/Context$PermissionRequestState;,
        Landroid/content/Context$RegisterReceiverFlags;,
        Landroid/content/Context$BindServiceFlags;,
        Landroid/content/Context$BindServiceFlagsLongBits;,
        Landroid/content/Context$BindServiceFlagsBits;,
        Landroid/content/Context$DatabaseMode;,
        Landroid/content/Context$PreferencesMode;,
        Landroid/content/Context$FileMode;
    }
.end annotation


# static fields
.field public static final whitelist ACCESSIBILITY_SERVICE:Ljava/lang/String; = "accessibility"

.field public static final whitelist ACCOUNT_SERVICE:Ljava/lang/String; = "account"

.field public static final whitelist ACTIVITY_SERVICE:Ljava/lang/String; = "activity"

.field public static final blacklist ACTIVITY_TASK_SERVICE:Ljava/lang/String; = "activity_task"

.field public static final blacklist ADB_SERVICE:Ljava/lang/String; = "adb"

.field public static final whitelist ADVANCED_PROTECTION_SERVICE:Ljava/lang/String; = "advanced_protection"

.field public static final whitelist ALARM_SERVICE:Ljava/lang/String; = "alarm"

.field public static final whitelist AMBIENT_CONTEXT_SERVICE:Ljava/lang/String; = "ambient_context"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist APPWIDGET_SERVICE:Ljava/lang/String; = "appwidget"

.field public static final blacklist APP_BINDING_SERVICE:Ljava/lang/String; = "app_binding"

.field public static final whitelist APP_FUNCTION_SERVICE:Ljava/lang/String; = "app_function"

.field public static final whitelist APP_HIBERNATION_SERVICE:Ljava/lang/String; = "app_hibernation"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist APP_INTEGRITY_SERVICE:Ljava/lang/String; = "app_integrity"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist APP_OPS_SERVICE:Ljava/lang/String; = "appops"

.field public static final whitelist APP_PREDICTION_SERVICE:Ljava/lang/String; = "app_prediction"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist APP_SEARCH_SERVICE:Ljava/lang/String; = "app_search"

.field public static final blacklist ATTENTION_SERVICE:Ljava/lang/String; = "attention"

.field public static final blacklist ATTESTATION_VERIFICATION_SERVICE:Ljava/lang/String; = "attestation_verification"

.field public static final whitelist AUDIO_DEVICE_VOLUME_SERVICE:Ljava/lang/String; = "audio_device_volume"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist AUDIO_SERVICE:Ljava/lang/String; = "audio"

.field public static final blacklist AUTHENTICATION_POLICY_SERVICE:Ljava/lang/String; = "authentication_policy"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist AUTH_SERVICE:Ljava/lang/String; = "auth"

.field public static final greylist-max-o AUTOFILL_MANAGER_SERVICE:Ljava/lang/String; = "autofill"

.field public static final blacklist BACKGROUND_INSTALL_CONTROL_SERVICE:Ljava/lang/String; = "background_install_control"

.field public static final whitelist BACKUP_SERVICE:Ljava/lang/String; = "backup"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist BATTERY_SERVICE:Ljava/lang/String; = "batterymanager"

.field public static final whitelist BATTERY_STATS_SERVICE:Ljava/lang/String; = "batterystats"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist BINARY_TRANSPARENCY_SERVICE:Ljava/lang/String; = "transparency"

.field public static final whitelist BIND_ABOVE_CLIENT:I = 0x8

.field public static final whitelist BIND_ADJUST_WITH_ACTIVITY:I = 0x80

.field public static final whitelist BIND_ALLOW_ACTIVITY_STARTS:I = 0x200

.field public static final whitelist BIND_ALLOW_BACKGROUND_ACTIVITY_STARTS:I = 0x100000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist BIND_ALLOW_FOREGROUND_SERVICE_STARTS_FROM_BACKGROUND:I = 0x40000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist BIND_ALLOW_FREEZE:J = 0x400000000L

.field public static final greylist-max-o BIND_ALLOW_INSTANT:I = 0x400000

.field public static final whitelist BIND_ALLOW_OOM_MANAGEMENT:I = 0x10

.field public static final greylist-max-o BIND_ALLOW_WHITELIST_MANAGEMENT:I = 0x1000000

.field public static final blacklist BIND_ALMOST_PERCEPTIBLE:I = 0x10000

.field public static final whitelist BIND_AUTO_CREATE:I = 0x1

.field public static final blacklist BIND_BYPASS_POWER_NETWORK_RESTRICTIONS:I = 0x20000

.field public static final blacklist BIND_BYPASS_USER_NETWORK_RESTRICTIONS:J = 0x100000000L

.field public static final whitelist BIND_DEBUG_UNBIND:I = 0x2

.field public static final whitelist BIND_EXTERNAL_SERVICE:I = -0x80000000

.field public static final whitelist BIND_EXTERNAL_SERVICE_LONG:J = 0x4000000000000000L

.field public static final greylist-max-o BIND_FOREGROUND_SERVICE:I = 0x4000000
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final greylist-max-o BIND_FOREGROUND_SERVICE_WHILE_AWAKE:I = 0x2000000

.field public static final whitelist BIND_IMPORTANT:I = 0x40

.field public static final greylist-max-o BIND_IMPORTANT_BACKGROUND:I = 0x800000

.field public static final whitelist BIND_INCLUDE_CAPABILITIES:I = 0x1000

.field public static final blacklist BIND_MATCH_QUARANTINED_COMPONENTS:J = 0x200000000L

.field public static final blacklist BIND_NOT_APP_COMPONENT_USAGE:I = 0x8000

.field public static final whitelist BIND_NOT_FOREGROUND:I = 0x4

.field public static final whitelist BIND_NOT_PERCEPTIBLE:I = 0x100

.field public static final greylist-max-o BIND_NOT_VISIBLE:I = 0x40000000

.field public static final whitelist BIND_PACKAGE_ISOLATED_PROCESS:I = 0x4000

.field public static final blacklist BIND_REDUCTION_FLAGS:J = 0x440000130L

.field public static final blacklist BIND_RESTRICT_ASSOCIATIONS:I = 0x200000

.field public static final blacklist BIND_SCHEDULE_LIKE_TOP_APP:I = 0x80000

.field public static final whitelist BIND_SHARED_ISOLATED_PROCESS:I = 0x2000

.field public static final greylist-max-o BIND_SHOWING_UI:I = 0x20000000

.field public static final greylist-max-o BIND_TREAT_LIKE_ACTIVITY:I = 0x8000000

.field public static final blacklist BIND_TREAT_LIKE_VISIBLE_FOREGROUND_SERVICE:I = 0x10000000

.field public static final greylist-max-o BIND_VISIBLE:I = 0x10000000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist BIND_WAIVE_PRIORITY:I = 0x20

.field public static final whitelist BIOMETRIC_SERVICE:Ljava/lang/String; = "biometric"

.field public static final whitelist BLOB_STORE_SERVICE:Ljava/lang/String; = "blob_store"

.field public static final blacklist BLOCKED_NUMBERS_SERVICE:Ljava/lang/String; = "blocked_numbers"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist BLUETOOTH_SERVICE:Ljava/lang/String; = "bluetooth"

.field public static final whitelist BUGREPORT_SERVICE:Ljava/lang/String; = "bugreport"

.field public static final whitelist CAMERA_SERVICE:Ljava/lang/String; = "camera"

.field public static final whitelist CAPTIONING_SERVICE:Ljava/lang/String; = "captioning"

.field public static final whitelist CARRIER_CONFIG_SERVICE:Ljava/lang/String; = "carrier_config"

.field public static final whitelist CLIPBOARD_SERVICE:Ljava/lang/String; = "clipboard"

.field public static final whitelist CLOUDSEARCH_SERVICE:Ljava/lang/String; = "cloudsearch"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist COLOR_DISPLAY_SERVICE:Ljava/lang/String; = "color_display"

.field public static final whitelist COMPANION_DEVICE_SERVICE:Ljava/lang/String; = "companiondevice"

.field public static final whitelist CONNECTIVITY_DIAGNOSTICS_SERVICE:Ljava/lang/String; = "connectivity_diagnostics"

.field public static final whitelist CONNECTIVITY_SERVICE:Ljava/lang/String; = "connectivity"

.field public static final whitelist CONSUMER_IR_SERVICE:Ljava/lang/String; = "consumer_ir"

.field public static final whitelist CONTACT_KEYS_SERVICE:Ljava/lang/String; = "contact_keys"

.field public static final blacklist CONTENT_CAPTURE_MANAGER_SERVICE:Ljava/lang/String; = "content_capture"

.field public static final whitelist CONTENT_SUGGESTIONS_SERVICE:Ljava/lang/String; = "content_suggestions"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CONTEXTHUB_SERVICE:Ljava/lang/String; = "contexthub"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CONTEXTUAL_SEARCH_SERVICE:Ljava/lang/String; = "contextual_search"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o CONTEXT_CREDENTIAL_PROTECTED_STORAGE:I = 0x10

.field public static final greylist-max-o CONTEXT_DEVICE_PROTECTED_STORAGE:I = 0x8

.field public static final whitelist CONTEXT_IGNORE_SECURITY:I = 0x2

.field public static final whitelist CONTEXT_INCLUDE_CODE:I = 0x1

.field public static final greylist-max-o CONTEXT_REGISTER_PACKAGE:I = 0x40000000

.field public static final whitelist CONTEXT_RESTRICTED:I = 0x4

.field public static final greylist-max-p COUNTRY_DETECTOR:Ljava/lang/String; = "country_detector"

.field public static final whitelist CREDENTIAL_SERVICE:Ljava/lang/String; = "credential"

.field public static final whitelist CROSS_PROFILE_APPS_SERVICE:Ljava/lang/String; = "crossprofileapps"

.field public static final blacklist DATA_LOADER_MANAGER_SERVICE:Ljava/lang/String; = "dataloader_manager"

.field public static final greylist-max-o DEVICE_IDENTIFIERS_SERVICE:Ljava/lang/String; = "device_identifiers"

.field public static final greylist-max-o DEVICE_IDLE_CONTROLLER:Ljava/lang/String; = "deviceidle"

.field public static final whitelist DEVICE_ID_DEFAULT:I = 0x0

.field public static final whitelist DEVICE_ID_INVALID:I = -0x1

.field public static final whitelist DEVICE_LOCK_SERVICE:Ljava/lang/String; = "device_lock"

.field public static final whitelist DEVICE_POLICY_SERVICE:Ljava/lang/String; = "device_policy"

.field public static final blacklist DEVICE_STATE_SERVICE:Ljava/lang/String; = "device_state"

.field public static final whitelist DISPLAY_HASH_SERVICE:Ljava/lang/String; = "display_hash"

.field public static final whitelist DISPLAY_SERVICE:Ljava/lang/String; = "display"

.field public static final whitelist DOMAIN_VERIFICATION_SERVICE:Ljava/lang/String; = "domain_verification"

.field public static final whitelist DOWNLOAD_SERVICE:Ljava/lang/String; = "download"

.field public static final blacklist DREAM_SERVICE:Ljava/lang/String; = "dream"

.field public static final whitelist DROPBOX_SERVICE:Ljava/lang/String; = "dropbox"

.field public static final blacklist DYNAMIC_INSTRUMENTATION_SERVICE:Ljava/lang/String; = "dynamic_instrumentation"

.field public static final blacklist DYNAMIC_SYSTEM_SERVICE:Ljava/lang/String; = "dynamic_system"

.field public static final whitelist ECM_ENHANCED_CONFIRMATION_SERVICE:Ljava/lang/String; = "ecm_enhanced_confirmation"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ETHERNET_SERVICE:Ljava/lang/String; = "ethernet"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EUICC_CARD_SERVICE:Ljava/lang/String; = "euicc_card"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EUICC_SERVICE:Ljava/lang/String; = "euicc"

.field public static final blacklist FACE_SERVICE:Ljava/lang/String; = "face"

.field public static final blacklist FEATURE_FLAGS_SERVICE:Ljava/lang/String; = "feature_flags"

.field public static final whitelist FILE_INTEGRITY_SERVICE:Ljava/lang/String; = "file_integrity"

.field public static final whitelist FINGERPRINT_SERVICE:Ljava/lang/String; = "fingerprint"

.field public static final whitelist FONT_SERVICE:Ljava/lang/String; = "font"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist GAME_SERVICE:Ljava/lang/String; = "game"

.field public static final greylist-max-o GATEKEEPER_SERVICE:Ljava/lang/String; = "android.service.gatekeeper.IGateKeeperService"

.field public static final whitelist GRAMMATICAL_INFLECTION_SERVICE:Ljava/lang/String; = "grammatical_inflection"

.field public static final whitelist HARDWARE_PROPERTIES_SERVICE:Ljava/lang/String; = "hardware_properties"

.field public static final whitelist HDMI_CONTROL_SERVICE:Ljava/lang/String; = "hdmi_control"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist HEALTHCONNECT_SERVICE:Ljava/lang/String; = "healthconnect"

.field public static final blacklist IDMAP_SERVICE:Ljava/lang/String; = "idmap"

.field public static final blacklist INCIDENT_COMPANION_SERVICE:Ljava/lang/String; = "incidentcompanion"

.field public static final greylist-max-o INCIDENT_SERVICE:Ljava/lang/String; = "incident"

.field public static final blacklist INCREMENTAL_SERVICE:Ljava/lang/String; = "incremental"

.field public static final whitelist INPUT_METHOD_SERVICE:Ljava/lang/String; = "input_method"

.field public static final whitelist INPUT_SERVICE:Ljava/lang/String; = "input"

.field public static final blacklist INTRUSION_DETECTION_SERVICE:Ljava/lang/String; = "intrusion_detection"

.field public static final whitelist IPSEC_SERVICE:Ljava/lang/String; = "ipsec"

.field public static final blacklist IRIS_SERVICE:Ljava/lang/String; = "iris"

.field public static final whitelist JOB_SCHEDULER_SERVICE:Ljava/lang/String; = "jobscheduler"

.field public static final whitelist KEYGUARD_SERVICE:Ljava/lang/String; = "keyguard"

.field public static final whitelist KEYSTORE_SERVICE:Ljava/lang/String; = "keystore"

.field public static final whitelist LAUNCHER_APPS_SERVICE:Ljava/lang/String; = "launcherapps"

.field public static final whitelist LAYOUT_INFLATER_SERVICE:Ljava/lang/String; = "layout_inflater"

.field public static final blacklist LEGACY_PERMISSION_SERVICE:Ljava/lang/String; = "legacy_permission"

.field public static final blacklist LIGHTS_SERVICE:Ljava/lang/String; = "lights"

.field public static final whitelist LOCALE_SERVICE:Ljava/lang/String; = "locale"

.field public static final whitelist LOCATION_SERVICE:Ljava/lang/String; = "location"

.field public static final greylist-max-o LOWPAN_SERVICE:Ljava/lang/String; = "lowpan"

.field public static final whitelist MEDIA_COMMUNICATION_SERVICE:Ljava/lang/String; = "media_communication"

.field public static final whitelist MEDIA_METRICS_SERVICE:Ljava/lang/String; = "media_metrics"

.field public static final whitelist MEDIA_PROJECTION_SERVICE:Ljava/lang/String; = "media_projection"

.field public static final whitelist MEDIA_QUALITY_SERVICE:Ljava/lang/String; = "media_quality"

.field public static final whitelist MEDIA_ROUTER_SERVICE:Ljava/lang/String; = "media_router"

.field public static final whitelist MEDIA_SESSION_SERVICE:Ljava/lang/String; = "media_session"

.field public static final whitelist MEDIA_TRANSCODING_SERVICE:Ljava/lang/String; = "media_transcoding"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MIDI_SERVICE:Ljava/lang/String; = "midi"

.field public static final blacklist MMS_SERVICE:Ljava/lang/String; = "mms"

.field public static final whitelist MODE_APPEND:I = 0x8000

.field public static final whitelist MODE_ENABLE_WRITE_AHEAD_LOGGING:I = 0x8

.field public static final whitelist MODE_MULTI_PROCESS:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist MODE_NO_LOCALIZED_COLLATORS:I = 0x10

.field public static final whitelist MODE_PRIVATE:I = 0x0

.field public static final whitelist MODE_WORLD_READABLE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist MODE_WORLD_WRITEABLE:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist MUSIC_RECOGNITION_SERVICE:Ljava/lang/String; = "music_recognition"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NEARBY_SERVICE:Ljava/lang/String; = "nearby"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NETD_SERVICE:Ljava/lang/String; = "netd"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o NETWORKMANAGEMENT_SERVICE:Ljava/lang/String; = "network_management"

.field public static final greylist-max-o NETWORK_POLICY_SERVICE:Ljava/lang/String; = "netpolicy"

.field public static final whitelist NETWORK_SCORE_SERVICE:Ljava/lang/String; = "network_score"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist NETWORK_STACK_SERVICE:Ljava/lang/String; = "network_stack"

.field public static final whitelist NETWORK_STATS_SERVICE:Ljava/lang/String; = "netstats"

.field public static final greylist-max-o NETWORK_WATCHLIST_SERVICE:Ljava/lang/String; = "network_watchlist"

.field public static final whitelist NFC_SERVICE:Ljava/lang/String; = "nfc"

.field public static final whitelist NOTIFICATION_SERVICE:Ljava/lang/String; = "notification"

.field public static final whitelist NSD_SERVICE:Ljava/lang/String; = "servicediscovery"

.field public static final whitelist OEM_LOCK_SERVICE:Ljava/lang/String; = "oem_lock"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ON_DEVICE_INTELLIGENCE_SERVICE:Ljava/lang/String; = "on_device_intelligence"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OVERLAY_SERVICE:Ljava/lang/String; = "overlay"

.field public static final blacklist OVERRIDABLE_COMPONENT_CALLBACKS:J = 0xb84ba9cL

.field public static final blacklist PAC_PROXY_SERVICE:Ljava/lang/String; = "pac_proxy"
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final whitelist PEOPLE_SERVICE:Ljava/lang/String; = "people"

.field public static final whitelist PERFORMANCE_HINT_SERVICE:Ljava/lang/String; = "performance_hint"

.field public static final blacklist PERMISSION_CHECKER_SERVICE:Ljava/lang/String; = "permission_checker"

.field public static final whitelist PERMISSION_CONTROLLER_SERVICE:Ljava/lang/String; = "permission_controller"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist PERMISSION_ENFORCER_SERVICE:Ljava/lang/String; = "permission_enforcer"

.field public static final blacklist PERMISSION_REQUEST_STATE_GRANTED:I = 0x0

.field public static final blacklist PERMISSION_REQUEST_STATE_REQUESTABLE:I = 0x1

.field public static final blacklist PERMISSION_REQUEST_STATE_UNREQUESTABLE:I = 0x2

.field public static final whitelist PERMISSION_SERVICE:Ljava/lang/String; = "permission"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PERSISTENT_DATA_BLOCK_SERVICE:Ljava/lang/String; = "persistent_data_block"

.field public static final blacklist PLATFORM_COMPAT_NATIVE_SERVICE:Ljava/lang/String; = "platform_compat_native"

.field public static final blacklist PLATFORM_COMPAT_SERVICE:Ljava/lang/String; = "platform_compat"

.field public static final blacklist POWER_EXEMPTION_SERVICE:Ljava/lang/String; = "power_exemption"

.field public static final whitelist POWER_SERVICE:Ljava/lang/String; = "power"

.field public static final blacklist POWER_STATS_SERVICE:Ljava/lang/String; = "powerstats"

.field public static final blacklist POWER_WHITELIST_MANAGER:Ljava/lang/String; = "power_whitelist"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist PRINT_SERVICE:Ljava/lang/String; = "print"

.field public static final whitelist PROFILING_SERVICE:Ljava/lang/String; = "profiling"

.field public static final blacklist PROTOLOG_CONFIGURATION_SERVICE:Ljava/lang/String; = "protolog_configuration"

.field public static final greylist-max-o RADIO_SERVICE:Ljava/lang/String; = "broadcastradio"

.field public static final whitelist RANGING_SERVICE:Ljava/lang/String; = "ranging"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist REBOOT_READINESS_SERVICE:Ljava/lang/String; = "reboot_readiness"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist RECEIVER_EXPORTED:I = 0x2

.field public static final blacklist RECEIVER_EXPORTED_UNAUDITED:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist RECEIVER_NOT_EXPORTED:I = 0x4

.field public static final whitelist RECEIVER_VISIBLE_TO_INSTANT_APPS:I = 0x1

.field public static final greylist-max-o RECOVERY_SERVICE:Ljava/lang/String; = "recovery"

.field public static final blacklist REMOTE_AUTH_SERVICE:Ljava/lang/String; = "remote_auth"

.field public static final blacklist REMOTE_PROVISIONING_SERVICE:Ljava/lang/String; = "remote_provisioning"

.field public static final blacklist RESOURCES_SERVICE:Ljava/lang/String; = "resources"

.field public static final whitelist RESTRICTIONS_SERVICE:Ljava/lang/String; = "restrictions"

.field public static final whitelist ROLE_SERVICE:Ljava/lang/String; = "role"

.field public static final whitelist ROLLBACK_SERVICE:Ljava/lang/String; = "rollback"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist ROTATION_RESOLVER_SERVICE:Ljava/lang/String; = "resolver"

.field public static final whitelist SAFETY_CENTER_SERVICE:Ljava/lang/String; = "safety_center"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SATELLITE_SERVICE:Ljava/lang/String; = "satellite"

.field public static final whitelist SEARCH_SERVICE:Ljava/lang/String; = "search"

.field public static final whitelist SEARCH_UI_SERVICE:Ljava/lang/String; = "search_ui"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SECURE_ELEMENT_SERVICE:Ljava/lang/String; = "secure_element"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SECURITY_STATE_SERVICE:Ljava/lang/String; = "security_state"

.field public static final blacklist SELECTION_TOOLBAR_SERVICE:Ljava/lang/String; = "selection_toolbar"

.field public static final blacklist SENSITIVE_CONTENT_PROTECTION_SERVICE:Ljava/lang/String; = "sensitive_content_protection_service"

.field public static final blacklist SENSOR_PRIVACY_SERVICE:Ljava/lang/String; = "sensor_privacy"

.field public static final whitelist SENSOR_SERVICE:Ljava/lang/String; = "sensor"

.field public static final greylist-max-o SERIAL_SERVICE:Ljava/lang/String; = "serial"

.field public static final whitelist SHARED_CONNECTIVITY_SERVICE:Ljava/lang/String; = "shared_connectivity"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SHORTCUT_SERVICE:Ljava/lang/String; = "shortcut"

.field public static final greylist-max-o SIP_SERVICE:Ljava/lang/String; = "sip"

.field public static final greylist-max-o SLICE_SERVICE:Ljava/lang/String; = "slice"

.field public static final whitelist SMARTSPACE_SERVICE:Ljava/lang/String; = "smartspace"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist SMS_SERVICE:Ljava/lang/String; = "sms"

.field public static final blacklist SOUND_TRIGGER_MIDDLEWARE_SERVICE:Ljava/lang/String; = "soundtrigger_middleware"

.field public static final greylist-max-o SOUND_TRIGGER_SERVICE:Ljava/lang/String; = "soundtrigger"

.field public static final blacklist SPEECH_RECOGNITION_SERVICE:Ljava/lang/String; = "speech_recognition"

.field public static final blacklist STATS_BOOTSTRAP_ATOM_SERVICE:Ljava/lang/String; = "statsbootstrap"

.field public static final greylist-max-o STATS_COMPANION_SERVICE:Ljava/lang/String; = "statscompanion"

.field public static final whitelist STATS_MANAGER:Ljava/lang/String; = "stats"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist STATS_MANAGER_SERVICE:Ljava/lang/String; = "statsmanager"

.field public static final whitelist STATUS_BAR_SERVICE:Ljava/lang/String; = "statusbar"

.field public static final whitelist STORAGE_SERVICE:Ljava/lang/String; = "storage"

.field public static final whitelist STORAGE_STATS_SERVICE:Ljava/lang/String; = "storagestats"

.field public static final blacklist SUPERVISION_SERVICE:Ljava/lang/String; = "supervision"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SYSTEM_CONFIG_SERVICE:Ljava/lang/String; = "system_config"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SYSTEM_HEALTH_SERVICE:Ljava/lang/String; = "systemhealth"

.field public static final whitelist SYSTEM_UPDATE_SERVICE:Ljava/lang/String; = "system_update"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist TELECOM_SERVICE:Ljava/lang/String; = "telecom"

.field public static final whitelist TELEPHONY_IMS_SERVICE:Ljava/lang/String; = "telephony_ims"

.field public static final blacklist TELEPHONY_RCS_MESSAGE_SERVICE:Ljava/lang/String; = "ircsmessage"

.field public static final blacklist TELEPHONY_REGISTRY_SERVICE:Ljava/lang/String; = "telephony_registry"

.field public static final whitelist TELEPHONY_SERVICE:Ljava/lang/String; = "phone"

.field public static final whitelist TELEPHONY_SUBSCRIPTION_SERVICE:Ljava/lang/String; = "telephony_subscription_service"

.field public static final blacklist TEST_NETWORK_SERVICE:Ljava/lang/String; = "test_network"
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final whitelist TETHERING_SERVICE:Ljava/lang/String; = "tethering"

.field public static final whitelist TEXT_CLASSIFICATION_SERVICE:Ljava/lang/String; = "textclassification"

.field public static final whitelist TEXT_SERVICES_MANAGER_SERVICE:Ljava/lang/String; = "textservices"

.field public static final blacklist TEXT_TO_SPEECH_MANAGER_SERVICE:Ljava/lang/String; = "texttospeech"

.field public static final blacklist THERMAL_SERVICE:Ljava/lang/String; = "thermalservice"

.field public static final whitelist THREAD_NETWORK_SERVICE:Ljava/lang/String; = "thread_network"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist TIME_DETECTOR_SERVICE:Ljava/lang/String; = "time_detector"

.field public static final whitelist TIME_MANAGER_SERVICE:Ljava/lang/String; = "time_manager"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist TIME_ZONE_DETECTOR_SERVICE:Ljava/lang/String; = "time_zone_detector"

.field public static final whitelist TRANSLATION_MANAGER_SERVICE:Ljava/lang/String; = "translation"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o TRUST_SERVICE:Ljava/lang/String; = "trust"

.field public static final whitelist TV_AD_SERVICE:Ljava/lang/String; = "tv_ad"

.field public static final whitelist TV_INPUT_SERVICE:Ljava/lang/String; = "tv_input"

.field public static final whitelist TV_INTERACTIVE_APP_SERVICE:Ljava/lang/String; = "tv_interactive_app"

.field public static final blacklist TV_TUNER_RESOURCE_MGR_SERVICE:Ljava/lang/String; = "tv_tuner_resource_mgr"

.field public static final whitelist UI_MODE_SERVICE:Ljava/lang/String; = "uimode"

.field public static final whitelist UI_TRANSLATION_SERVICE:Ljava/lang/String; = "ui_translation"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o UPDATE_LOCK_SERVICE:Ljava/lang/String; = "updatelock"

.field public static final blacklist URI_GRANTS_SERVICE:Ljava/lang/String; = "uri_grants"

.field public static final whitelist USAGE_STATS_SERVICE:Ljava/lang/String; = "usagestats"

.field public static final whitelist USB_SERVICE:Ljava/lang/String; = "usb"

.field public static final whitelist USER_SERVICE:Ljava/lang/String; = "user"

.field public static final whitelist UWB_SERVICE:Ljava/lang/String; = "uwb"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist VCN_MANAGEMENT_SERVICE:Ljava/lang/String; = "vcn_management"
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final whitelist VIBRATOR_MANAGER_SERVICE:Ljava/lang/String; = "vibrator_manager"

.field public static final whitelist VIBRATOR_SERVICE:Ljava/lang/String; = "vibrator"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist VIRTUALIZATION_SERVICE:Ljava/lang/String; = "virtualization"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist VIRTUAL_DEVICE_SERVICE:Ljava/lang/String; = "virtualdevice"

.field public static final greylist-max-o VOICE_INTERACTION_MANAGER_SERVICE:Ljava/lang/String; = "voiceinteraction"

.field public static final whitelist VPN_MANAGEMENT_SERVICE:Ljava/lang/String; = "vpn_management"

.field public static final whitelist VR_SERVICE:Ljava/lang/String; = "vrmanager"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist WALLPAPER_EFFECTS_GENERATION_SERVICE:Ljava/lang/String; = "wallpaper_effects_generation"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist WALLPAPER_SERVICE:Ljava/lang/String; = "wallpaper"

.field public static final whitelist WEARABLE_SENSING_SERVICE:Ljava/lang/String; = "wearable_sensing"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist WEBVIEW_UPDATE_SERVICE:Ljava/lang/String; = "webviewupdate"
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final whitelist WIFI_AWARE_SERVICE:Ljava/lang/String; = "wifiaware"

.field public static final whitelist WIFI_NL80211_SERVICE:Ljava/lang/String; = "wifinl80211"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist WIFI_P2P_SERVICE:Ljava/lang/String; = "wifip2p"

.field public static final whitelist WIFI_RTT_RANGING_SERVICE:Ljava/lang/String; = "wifirtt"

.field public static final whitelist WIFI_RTT_SERVICE:Ljava/lang/String; = "rttmanager"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist WIFI_SCANNING_SERVICE:Ljava/lang/String; = "wifiscanner"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist WIFI_SERVICE:Ljava/lang/String; = "wifi"

.field public static final whitelist WIFI_USD_SERVICE:Ljava/lang/String; = "wifi_usd"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist WINDOW_SERVICE:Ljava/lang/String; = "window"

.field private static greylist-max-o sLastAutofillId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 914
    const/4 v0, -0x1

    sput v0, Landroid/content/Context;->sLastAutofillId:I

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getToken(Landroid/content/Context;)Landroid/os/IBinder;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 8241
    invoke-virtual {p0}, Landroid/content/Context;->getActivityToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Landroid/content/Context;->getActivityToken()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_f

    .line 8242
    :cond_b
    invoke-virtual {p0}, Landroid/content/Context;->getWindowContextToken()Landroid/os/IBinder;

    move-result-object v0

    .line 8241
    :goto_f
    return-object v0
.end method


# virtual methods
.method public greylist-max-o assertRuntimeOverlayThemable()V
    .registers 3

    .line 8348
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    if-eq v0, v1, :cond_b

    .line 8352
    return-void

    .line 8349
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Non-UI context used to display UI; get a UI context from ActivityThread#getSystemUiContext()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist bindIsolatedService(Landroid/content/Intent;ILjava/lang/String;Ljava/util/concurrent/Executor;Landroid/content/ServiceConnection;)Z
    .registers 8
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "instanceName"    # Ljava/lang/String;
    .param p4, "executor"    # Ljava/util/concurrent/Executor;
    .param p5, "conn"    # Landroid/content/ServiceConnection;

    .line 4071
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist bindIsolatedService(Landroid/content/Intent;Landroid/content/Context$BindServiceFlags;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/content/ServiceConnection;)Z
    .registers 8
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "flags"    # Landroid/content/Context$BindServiceFlags;
    .param p3, "instanceName"    # Ljava/lang/String;
    .param p4, "executor"    # Ljava/util/concurrent/Executor;
    .param p5, "conn"    # Landroid/content/ServiceConnection;

    .line 4081
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist bindService(Landroid/content/Intent;ILjava/util/concurrent/Executor;Landroid/content/ServiceConnection;)Z
    .registers 7
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "conn"    # Landroid/content/ServiceConnection;

    .line 4023
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist bindService(Landroid/content/Intent;Landroid/content/Context$BindServiceFlags;Ljava/util/concurrent/Executor;Landroid/content/ServiceConnection;)Z
    .registers 7
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "flags"    # Landroid/content/Context$BindServiceFlags;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "conn"    # Landroid/content/ServiceConnection;

    .line 4033
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract whitelist bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
.end method

.method public whitelist bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;Landroid/content/Context$BindServiceFlags;)Z
    .registers 6
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "conn"    # Landroid/content/ServiceConnection;
    .param p3, "flags"    # Landroid/content/Context$BindServiceFlags;

    .line 4002
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/Handler;Landroid/os/UserHandle;)Z
    .registers 8
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "conn"    # Landroid/content/ServiceConnection;
    .param p3, "flags"    # I
    .param p4, "handler"    # Landroid/os/Handler;
    .param p5, "user"    # Landroid/os/UserHandle;

    .line 4158
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    .registers 7
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "conn"    # Landroid/content/ServiceConnection;
    .param p3, "flags"    # I
    .param p4, "user"    # Landroid/os/UserHandle;

    .line 4126
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;Landroid/content/Context$BindServiceFlags;Landroid/os/Handler;Landroid/os/UserHandle;)Z
    .registers 8
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "conn"    # Landroid/content/ServiceConnection;
    .param p3, "flags"    # Landroid/content/Context$BindServiceFlags;
    .param p4, "handler"    # Landroid/os/Handler;
    .param p5, "user"    # Landroid/os/UserHandle;

    .line 4174
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;Landroid/content/Context$BindServiceFlags;Landroid/os/UserHandle;)Z
    .registers 7
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "conn"    # Landroid/content/ServiceConnection;
    .param p3, "flags"    # Landroid/content/Context$BindServiceFlags;
    .param p4, "user"    # Landroid/os/UserHandle;

    .line 4142
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract greylist-max-o canLoadUnsafeResources()Z
.end method

.method public greylist-max-r canStartActivityForResult()Z
    .registers 2

    .line 2305
    const/4 v0, 0x0

    return v0
.end method

.method public abstract whitelist checkCallingOrSelfPermission(Ljava/lang/String;)I
.end method

.method public abstract whitelist checkCallingOrSelfUriPermission(Landroid/net/Uri;I)I
.end method

.method public whitelist checkCallingOrSelfUriPermissions(Ljava/util/List;I)[I
    .registers 5
    .param p2, "modeFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;I)[I"
        }
    .end annotation

    .line 7324
    .local p1, "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract whitelist checkCallingPermission(Ljava/lang/String;)I
.end method

.method public abstract whitelist checkCallingUriPermission(Landroid/net/Uri;I)I
.end method

.method public whitelist checkCallingUriPermissions(Ljava/util/List;I)[I
    .registers 5
    .param p2, "modeFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;I)[I"
        }
    .end annotation

    .line 7282
    .local p1, "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist checkContentUriPermissionFull(Landroid/net/Uri;III)I
    .registers 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "modeFlags"    # I

    .line 7197
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract whitelist checkPermission(Ljava/lang/String;II)I
.end method

.method public abstract greylist-max-r checkPermission(Ljava/lang/String;IILandroid/os/IBinder;)I
.end method

.method public abstract whitelist checkSelfPermission(Ljava/lang/String;)I
.end method

.method public abstract whitelist checkUriPermission(Landroid/net/Uri;III)I
.end method

.method public abstract greylist-max-o checkUriPermission(Landroid/net/Uri;IIILandroid/os/IBinder;)I
.end method

.method public abstract whitelist checkUriPermission(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;III)I
.end method

.method public whitelist checkUriPermissions(Ljava/util/List;III)[I
    .registers 7
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "modeFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;III)[I"
        }
    .end annotation

    .line 7227
    .local p1, "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract whitelist clearWallpaper()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public blacklist closeSystemDialogs()V
    .registers 3

    .line 8419
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract greylist createApplicationContext(Landroid/content/pm/ApplicationInfo;I)Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public whitelist createAttributionContext(Ljava/lang/String;)Landroid/content/Context;
    .registers 4
    .param p1, "attributionTag"    # Ljava/lang/String;

    .line 7920
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract whitelist createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;
.end method

.method public whitelist createContext(Landroid/content/ContextParams;)Landroid/content/Context;
    .registers 4
    .param p1, "contextParams"    # Landroid/content/ContextParams;

    .line 7905
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;
    .registers 5
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "flags"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 7603
    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    if-nez v0, :cond_5

    .line 7606
    return-object p0

    .line 7604
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "createContextAsUser not overridden!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist createContextForSdkInSandbox(Landroid/content/pm/ApplicationInfo;I)Landroid/content/Context;
    .registers 5
    .param p1, "sdkInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "flags"    # I
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 7636
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract whitelist createContextForSplit(Ljava/lang/String;)Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract whitelist createCredentialProtectedStorageContext()Landroid/content/Context;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end method

.method public whitelist createDeviceContext(I)Landroid/content/Context;
    .registers 4
    .param p1, "deviceId"    # I

    .line 7749
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract whitelist createDeviceProtectedStorageContext()Landroid/content/Context;
.end method

.method public abstract whitelist createDisplayContext(Landroid/view/Display;)Landroid/content/Context;
.end method

.method public greylist createFeatureContext(Ljava/lang/String;)Landroid/content/Context;
    .registers 4
    .param p1, "attributionTag"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7929
    new-instance v0, Landroid/content/ContextParams$Builder;

    invoke-virtual {p0}, Landroid/content/Context;->getParams()Landroid/content/ContextParams;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/ContextParams$Builder;-><init>(Landroid/content/ContextParams;)V

    .line 7930
    invoke-virtual {v0, p1}, Landroid/content/ContextParams$Builder;->setAttributionTag(Ljava/lang/String;)Landroid/content/ContextParams$Builder;

    move-result-object v0

    .line 7931
    invoke-virtual {v0}, Landroid/content/ContextParams$Builder;->build()Landroid/content/ContextParams;

    move-result-object v0

    .line 7929
    invoke-virtual {p0, v0}, Landroid/content/Context;->createContext(Landroid/content/ContextParams;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public whitelist createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "user"    # Landroid/os/UserHandle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 7587
    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    if-nez v0, :cond_5

    .line 7590
    return-object p0

    .line 7588
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "createPackageContextAsUser not overridden!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist createTokenContext(Landroid/os/IBinder;Landroid/view/Display;)Landroid/content/Context;
    .registers 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "display"    # Landroid/view/Display;

    .line 8005
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist createWindowContext(ILandroid/os/Bundle;)Landroid/content/Context;
    .registers 5
    .param p1, "type"    # I
    .param p2, "options"    # Landroid/os/Bundle;

    .line 7862
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist createWindowContext(Landroid/view/Display;ILandroid/os/Bundle;)Landroid/content/Context;
    .registers 6
    .param p1, "display"    # Landroid/view/Display;
    .param p2, "type"    # I
    .param p3, "options"    # Landroid/os/Bundle;

    .line 7892
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract whitelist databaseList()[Ljava/lang/String;
.end method

.method public abstract whitelist deleteDatabase(Ljava/lang/String;)Z
.end method

.method public abstract whitelist deleteFile(Ljava/lang/String;)Z
.end method

.method public abstract whitelist deleteSharedPreferences(Ljava/lang/String;)Z
.end method

.method public blacklist destroy()V
    .registers 1

    .line 8388
    return-void
.end method

.method public abstract whitelist enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract whitelist enforceCallingOrSelfUriPermission(Landroid/net/Uri;ILjava/lang/String;)V
.end method

.method public abstract whitelist enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract whitelist enforceCallingUriPermission(Landroid/net/Uri;ILjava/lang/String;)V
.end method

.method public abstract whitelist enforcePermission(Ljava/lang/String;IILjava/lang/String;)V
.end method

.method public abstract whitelist enforceUriPermission(Landroid/net/Uri;IIILjava/lang/String;)V
.end method

.method public abstract whitelist enforceUriPermission(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V
.end method

.method public abstract whitelist fileList()[Ljava/lang/String;
.end method

.method public greylist-max-o getActivityToken()Landroid/os/IBinder;
    .registers 3

    .line 8215
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract whitelist getApplicationContext()Landroid/content/Context;
.end method

.method public abstract whitelist getApplicationInfo()Landroid/content/pm/ApplicationInfo;
.end method

.method public abstract whitelist getAssets()Landroid/content/res/AssetManager;
.end method

.method public blacklist getAssociatedDisplayId()I
    .registers 3

    .line 8065
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getAttributionSource()Landroid/content/AttributionSource;
    .registers 2

    .line 1197
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getAttributionTag()Ljava/lang/String;
    .registers 2

    .line 1188
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o getAutofillClient()Landroid/view/autofill/AutofillManager$AutofillClient;
    .registers 2

    .line 8282
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getAutofillOptions()Landroid/content/AutofillOptions;
    .registers 2

    .line 8312
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract greylist getBasePackageName()Ljava/lang/String;
.end method

.method public abstract whitelist getCacheDir()Ljava/io/File;
.end method

.method public abstract whitelist getClassLoader()Ljava/lang/ClassLoader;
.end method

.method public abstract whitelist getCodeCacheDir()Ljava/io/File;
.end method

.method public final whitelist getColor(I)I
    .registers 4
    .param p1, "id"    # I

    .line 1035
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    return v0
.end method

.method public final whitelist getColorStateList(I)Landroid/content/res/ColorStateList;
    .registers 4
    .param p1, "id"    # I

    .line 1067
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getContentCaptureClient()Landroid/view/contentcapture/ContentCaptureManager$ContentCaptureClient;
    .registers 2

    .line 8296
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getContentCaptureOptions()Landroid/content/ContentCaptureOptions;
    .registers 2

    .line 8329
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract whitelist getContentResolver()Landroid/content/ContentResolver;
.end method

.method public blacklist getCrateDir(Ljava/lang/String;)Ljava/io/File;
    .registers 4
    .param p1, "crateId"    # Ljava/lang/String;

    .line 1478
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract whitelist getDataDir()Ljava/io/File;
.end method

.method public abstract whitelist getDatabasePath(Ljava/lang/String;)Ljava/io/File;
.end method

.method public whitelist getDeviceId()I
    .registers 3

    .line 8131
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract whitelist getDir(Ljava/lang/String;I)Ljava/io/File;
.end method

.method public whitelist getDisplay()Landroid/view/Display;
    .registers 3

    .line 8031
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract greylist-max-o getDisplayAdjustments(I)Landroid/view/DisplayAdjustments;
.end method

.method public abstract blacklist getDisplayId()I
.end method

.method public blacklist getDisplayNoVerify()Landroid/view/Display;
    .registers 3

    .line 8042
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist getDrawable(I)Landroid/graphics/drawable/Drawable;
    .registers 4
    .param p1, "id"    # I

    .line 1051
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist getExternalCacheDir()Ljava/io/File;
.end method

.method public abstract whitelist getExternalCacheDirs()[Ljava/io/File;
.end method

.method public abstract whitelist getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;
.end method

.method public abstract whitelist getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;
.end method

.method public abstract whitelist getExternalMediaDirs()[Ljava/io/File;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public greylist getFeatureId()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1206
    invoke-virtual {p0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist getFileStreamPath(Ljava/lang/String;)Ljava/io/File;
.end method

.method public abstract whitelist getFilesDir()Ljava/io/File;
.end method

.method public greylist-max-o getIApplicationThread()Landroid/app/IApplicationThread;
    .registers 3

    .line 8258
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getMainExecutor()Ljava/util/concurrent/Executor;
    .registers 4

    .line 883
    new-instance v0, Landroid/os/HandlerExecutor;

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

.method public abstract whitelist getMainLooper()Landroid/os/Looper;
.end method

.method public greylist-max-o getMainThreadHandler()Landroid/os/Handler;
    .registers 3

    .line 8275
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o getNextAutofillId()I
    .registers 3

    .line 927
    sget v0, Landroid/content/Context;->sLastAutofillId:I

    const v1, 0x3ffffffe    # 1.9999998f

    if-ne v0, v1, :cond_a

    .line 928
    const/4 v0, -0x1

    sput v0, Landroid/content/Context;->sLastAutofillId:I

    .line 931
    :cond_a
    sget v0, Landroid/content/Context;->sLastAutofillId:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/content/Context;->sLastAutofillId:I

    .line 933
    sget v0, Landroid/content/Context;->sLastAutofillId:I

    return v0
.end method

.method public abstract whitelist getNoBackupFilesDir()Ljava/io/File;
.end method

.method public abstract whitelist getObbDir()Ljava/io/File;
.end method

.method public abstract whitelist getObbDirs()[Ljava/io/File;
.end method

.method public whitelist getOpPackageName()Ljava/lang/String;
    .registers 3

    .line 1177
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract whitelist getPackageCodePath()Ljava/lang/String;
.end method

.method public abstract whitelist getPackageManager()Landroid/content/pm/PackageManager;
.end method

.method public abstract whitelist getPackageName()Ljava/lang/String;
.end method

.method public abstract whitelist getPackageResourcePath()Ljava/lang/String;
.end method

.method public whitelist getParams()Landroid/content/ContextParams;
    .registers 2

    .line 1214
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getPermissionRequestState(Ljava/lang/String;)I
    .registers 4
    .param p1, "permission"    # Ljava/lang/String;

    .line 7056
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract whitelist getPreloadsFileCache()Ljava/io/File;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end method

.method public blacklist getProcessToken()Landroid/os/IBinder;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 8268
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getRegisteredIntentFilters(Landroid/content/BroadcastReceiver;)Ljava/util/List;
    .registers 4
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/BroadcastReceiver;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/IntentFilter;",
            ">;"
        }
    .end annotation

    .line 3724
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract whitelist getResources()Landroid/content/res/Resources;
.end method

.method public blacklist getServiceDispatcher(Landroid/content/ServiceConnection;Landroid/os/Handler;J)Landroid/app/IServiceConnection;
    .registers 7
    .param p1, "conn"    # Landroid/content/ServiceConnection;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "flags"    # J

    .line 8251
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract greylist getSharedPreferences(Ljava/io/File;I)Landroid/content/SharedPreferences;
.end method

.method public abstract whitelist getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
.end method

.method public abstract greylist getSharedPreferencesPath(Ljava/lang/String;)Ljava/io/File;
.end method

.method public greylist getSharedPrefsFile(Ljava/lang/String;)Ljava/io/File;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1251
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSharedPreferencesPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist getString(I)Ljava/lang/String;
    .registers 3
    .param p1, "resId"    # I

    .line 1001
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final varargs whitelist getString(I[Ljava/lang/Object;)Ljava/lang/String;
    .registers 4
    .param p1, "resId"    # I
    .param p2, "formatArgs"    # [Ljava/lang/Object;

    .line 1018
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist getSystemService(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 4629
    .local p1, "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemServiceName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 4630
    .local v0, "serviceName":Ljava/lang/String;
    if-eqz v0, :cond_b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    return-object v1
.end method

.method public abstract whitelist getSystemService(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract whitelist getSystemServiceName(Ljava/lang/Class;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public final whitelist getText(I)Ljava/lang/CharSequence;
    .registers 3
    .param p1, "resId"    # I

    .line 987
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist getTheme()Landroid/content/res/Resources$Theme;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        deepExport = true
    .end annotation
.end method

.method public greylist getThemeResId()I
    .registers 2

    .line 1084
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getUser()Landroid/os/UserHandle;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 7664
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    return-object v0
.end method

.method public greylist getUserId()I
    .registers 2

    .line 7674
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    return v0
.end method

.method public abstract whitelist getWallpaper()Landroid/graphics/drawable/Drawable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract whitelist getWallpaperDesiredMinimumHeight()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract whitelist getWallpaperDesiredMinimumWidth()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public blacklist getWindowContextToken()Landroid/os/IBinder;
    .registers 3

    .line 8227
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract whitelist grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V
.end method

.method public final greylist-max-o isAutofillCompatibilityEnabled()Z
    .registers 3

    .line 8303
    invoke-virtual {p0}, Landroid/content/Context;->getAutofillOptions()Landroid/content/AutofillOptions;

    move-result-object v0

    .line 8304
    .local v0, "options":Landroid/content/AutofillOptions;
    if-eqz v0, :cond_c

    iget-boolean v1, v0, Landroid/content/AutofillOptions;->compatModeEnabled:Z

    if-eqz v1, :cond_c

    const/4 v1, 0x1

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    return v1
.end method

.method public blacklist isConfigurationContext()Z
    .registers 3

    .line 8408
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract whitelist isCredentialProtectedStorage()Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end method

.method public abstract whitelist isDeviceProtectedStorage()Z
.end method

.method public whitelist isRestricted()Z
    .registers 2

    .line 8178
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isUiContext()Z
    .registers 3

    .line 8376
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract whitelist moveDatabaseFrom(Landroid/content/Context;Ljava/lang/String;)Z
.end method

.method public abstract whitelist moveSharedPreferencesFrom(Landroid/content/Context;Ljava/lang/String;)Z
.end method

.method public final whitelist obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;
    .registers 4
    .param p1, "resid"    # I
    .param p2, "attrs"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 1117
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    .registers 5
    .param p1, "set"    # Landroid/util/AttributeSet;
    .param p2, "attrs"    # [I

    .line 1131
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
    .registers 6
    .param p1, "set"    # Landroid/util/AttributeSet;
    .param p2, "attrs"    # [I
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 1146
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist obtainStyledAttributes([I)Landroid/content/res/TypedArray;
    .registers 3
    .param p1, "attrs"    # [I

    .line 1103
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method

.method public abstract whitelist openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method

.method public abstract whitelist openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
.end method

.method public abstract whitelist openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;
.end method

.method public abstract whitelist peekWallpaper()Landroid/graphics/drawable/Drawable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public whitelist registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V
    .registers 3
    .param p1, "callback"    # Landroid/content/ComponentCallbacks;

    .line 967
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 968
    return-void
.end method

.method public whitelist registerDeviceIdChangeListener(Ljava/util/concurrent/Executor;Ljava/util/function/IntConsumer;)V
    .registers 5
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Ljava/util/function/IntConsumer;

    .line 8154
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract whitelist registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
.end method

.method public abstract whitelist registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;
.end method

.method public abstract whitelist registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
.end method

.method public abstract whitelist registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;
.end method

.method public abstract greylist registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
.end method

.method public abstract greylist registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;
.end method

.method public whitelist registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    .registers 7
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "filter"    # Landroid/content/IntentFilter;
    .param p3, "broadcastPermission"    # Ljava/lang/String;
    .param p4, "scheduler"    # Landroid/os/Handler;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3577
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;
    .registers 8
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "filter"    # Landroid/content/IntentFilter;
    .param p3, "broadcastPermission"    # Ljava/lang/String;
    .param p4, "scheduler"    # Landroid/os/Handler;
    .param p5, "flags"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3619
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract greylist-max-o reloadSharedPreferences()V
.end method

.method public abstract whitelist removeStickyBroadcast(Landroid/content/Intent;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract whitelist removeStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public whitelist revokeSelfPermissionOnKill(Ljava/lang/String;)V
    .registers 3
    .param p1, "permName"    # Ljava/lang/String;

    .line 7444
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->revokeSelfPermissionsOnKill(Ljava/util/Collection;)V

    .line 7445
    return-void
.end method

.method public whitelist revokeSelfPermissionsOnKill(Ljava/util/Collection;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 7481
    .local p1, "permissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/AbstractMethodError;

    const-string v1, "Must be overridden in implementing class"

    invoke-direct {v0, v1}, Ljava/lang/AbstractMethodError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract whitelist revokeUriPermission(Landroid/net/Uri;I)V
.end method

.method public abstract whitelist revokeUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V
.end method

.method public abstract whitelist sendBroadcast(Landroid/content/Intent;)V
.end method

.method public abstract whitelist sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
.end method

.method public abstract greylist sendBroadcast(Landroid/content/Intent;Ljava/lang/String;I)V
.end method

.method public whitelist sendBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "receiverPermission"    # Ljava/lang/String;
    .param p3, "options"    # Landroid/os/Bundle;

    .line 2671
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract whitelist sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
.end method

.method public abstract whitelist sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
.end method

.method public abstract greylist-max-r sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;I)V
.end method

.method public abstract whitelist sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end method

.method public abstract greylist-max-o sendBroadcastAsUserMultiplePermissions(Landroid/content/Intent;Landroid/os/UserHandle;[Ljava/lang/String;)V
.end method

.method public greylist-max-o sendBroadcastMultiplePermissions(Landroid/content/Intent;[Ljava/lang/String;)V
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "receiverPermissions"    # [Ljava/lang/String;

    .line 2506
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist sendBroadcastMultiplePermissions(Landroid/content/Intent;[Ljava/lang/String;Landroid/app/BroadcastOptions;)V
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "receiverPermissions"    # [Ljava/lang/String;
    .param p3, "options"    # Landroid/app/BroadcastOptions;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2583
    nop

    .line 2584
    if-nez p3, :cond_5

    const/4 v0, 0x0

    goto :goto_9

    :cond_5
    invoke-virtual {p3}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 2583
    :goto_9
    invoke-virtual {p0, p1, p2, v0}, Landroid/content/Context;->sendBroadcastMultiplePermissions(Landroid/content/Intent;[Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2585
    return-void
.end method

.method public blacklist sendBroadcastMultiplePermissions(Landroid/content/Intent;[Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "receiverPermissions"    # [Ljava/lang/String;
    .param p3, "options"    # Landroid/os/Bundle;

    .line 2562
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist sendBroadcastMultiplePermissions(Landroid/content/Intent;[Ljava/lang/String;[Ljava/lang/String;)V
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "receiverPermissions"    # [Ljava/lang/String;
    .param p3, "excludedPermissions"    # [Ljava/lang/String;

    .line 2517
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/content/Context;->sendBroadcastMultiplePermissions(Landroid/content/Intent;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 2518
    return-void
.end method

.method public blacklist sendBroadcastMultiplePermissions(Landroid/content/Intent;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .registers 11
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "receiverPermissions"    # [Ljava/lang/String;
    .param p3, "excludedPermissions"    # [Ljava/lang/String;
    .param p4, "excludedPackages"    # [Ljava/lang/String;

    .line 2529
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .end local p1    # "intent":Landroid/content/Intent;
    .end local p2    # "receiverPermissions":[Ljava/lang/String;
    .end local p3    # "excludedPermissions":[Ljava/lang/String;
    .end local p4    # "excludedPackages":[Ljava/lang/String;
    .local v1, "intent":Landroid/content/Intent;
    .local v2, "receiverPermissions":[Ljava/lang/String;
    .local v3, "excludedPermissions":[Ljava/lang/String;
    .local v4, "excludedPackages":[Ljava/lang/String;
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->sendBroadcastMultiplePermissions(Landroid/content/Intent;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/app/BroadcastOptions;)V

    .line 2531
    return-void
.end method

.method public blacklist sendBroadcastMultiplePermissions(Landroid/content/Intent;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/app/BroadcastOptions;)V
    .registers 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "receiverPermissions"    # [Ljava/lang/String;
    .param p3, "excludedPermissions"    # [Ljava/lang/String;
    .param p4, "excludedPackages"    # [Ljava/lang/String;
    .param p5, "options"    # Landroid/app/BroadcastOptions;

    .line 2542
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist sendBroadcastWithMultiplePermissions(Landroid/content/Intent;[Ljava/lang/String;)V
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "receiverPermissions"    # [Ljava/lang/String;

    .line 2611
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->sendBroadcastMultiplePermissions(Landroid/content/Intent;[Ljava/lang/String;)V

    .line 2612
    return-void
.end method

.method public blacklist sendOrderedBroadcast(Landroid/content/Intent;ILjava/lang/String;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 12
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "initialCode"    # I
    .param p3, "receiverPermission"    # Ljava/lang/String;
    .param p4, "receiverAppOp"    # Ljava/lang/String;
    .param p5, "resultReceiver"    # Landroid/content/BroadcastReceiver;
    .param p6, "scheduler"    # Landroid/os/Handler;
    .param p7, "initialData"    # Ljava/lang/String;
    .param p8, "initialExtras"    # Landroid/os/Bundle;
    .param p9, "options"    # Landroid/os/Bundle;

    .line 3074
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract whitelist sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
.end method

.method public abstract greylist sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract whitelist sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
.end method

.method public whitelist sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "receiverPermission"    # Ljava/lang/String;
    .param p3, "options"    # Landroid/os/Bundle;

    .line 2730
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 11
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "receiverPermission"    # Ljava/lang/String;
    .param p3, "options"    # Landroid/os/Bundle;
    .param p4, "resultReceiver"    # Landroid/content/BroadcastReceiver;
    .param p5, "scheduler"    # Landroid/os/Handler;
    .param p6, "initialCode"    # I
    .param p7, "initialData"    # Ljava/lang/String;
    .param p8, "initialExtras"    # Landroid/os/Bundle;

    .line 2824
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 11
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "receiverPermission"    # Ljava/lang/String;
    .param p3, "receiverAppOp"    # Ljava/lang/String;
    .param p4, "resultReceiver"    # Landroid/content/BroadcastReceiver;
    .param p5, "scheduler"    # Landroid/os/Handler;
    .param p6, "initialCode"    # I
    .param p7, "initialData"    # Ljava/lang/String;
    .param p8, "initialExtras"    # Landroid/os/Bundle;

    .line 3031
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract greylist-max-r sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract greylist sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract whitelist sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
.end method

.method public blacklist sendOrderedBroadcastAsUserMultiplePermissions(Landroid/content/Intent;Landroid/os/UserHandle;[Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 13
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "receiverPermissions"    # [Ljava/lang/String;
    .param p4, "appOp"    # I
    .param p5, "options"    # Landroid/os/Bundle;
    .param p6, "resultReceiver"    # Landroid/content/BroadcastReceiver;
    .param p7, "scheduler"    # Landroid/os/Handler;
    .param p8, "initialCode"    # I
    .param p9, "initialData"    # Ljava/lang/String;
    .param p10, "initialExtras"    # Landroid/os/Bundle;

    .line 2993
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist sendOrderedBroadcastMultiplePermissions(Landroid/content/Intent;[Ljava/lang/String;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 12
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "receiverPermissions"    # [Ljava/lang/String;
    .param p3, "receiverAppOp"    # Ljava/lang/String;
    .param p4, "resultReceiver"    # Landroid/content/BroadcastReceiver;
    .param p5, "scheduler"    # Landroid/os/Handler;
    .param p6, "initialCode"    # I
    .param p7, "initialData"    # Ljava/lang/String;
    .param p8, "initialExtras"    # Landroid/os/Bundle;
    .param p9, "options"    # Landroid/os/Bundle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3089
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract whitelist sendStickyBroadcast(Landroid/content/Intent;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public whitelist sendStickyBroadcast(Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3144
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract whitelist sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract greylist-max-o sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Landroid/os/Bundle;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract whitelist sendStickyOrderedBroadcast(Landroid/content/Intent;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract whitelist sendStickyOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public greylist-max-o setAutofillClient(Landroid/view/autofill/AutofillManager$AutofillClient;)V
    .registers 2
    .param p1, "client"    # Landroid/view/autofill/AutofillManager$AutofillClient;

    .line 8289
    return-void
.end method

.method public blacklist setAutofillOptions(Landroid/content/AutofillOptions;)V
    .registers 2
    .param p1, "options"    # Landroid/content/AutofillOptions;

    .line 8320
    return-void
.end method

.method public blacklist setContentCaptureOptions(Landroid/content/ContentCaptureOptions;)V
    .registers 2
    .param p1, "options"    # Landroid/content/ContentCaptureOptions;

    .line 8338
    return-void
.end method

.method public abstract whitelist setTheme(I)V
.end method

.method public abstract whitelist setWallpaper(Landroid/graphics/Bitmap;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract whitelist setWallpaper(Ljava/io/InputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract whitelist startActivities([Landroid/content/Intent;)V
.end method

.method public abstract whitelist startActivities([Landroid/content/Intent;Landroid/os/Bundle;)V
.end method

.method public greylist-max-o startActivitiesAsUser([Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)I
    .registers 6
    .param p1, "intents"    # [Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "userHandle"    # Landroid/os/UserHandle;

    .line 2379
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract whitelist startActivity(Landroid/content/Intent;)V
.end method

.method public abstract whitelist startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
.end method

.method public whitelist startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "userId"    # Landroid/os/UserHandle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2275
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2227
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist startActivityForResult(Ljava/lang/String;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .registers 7
    .param p1, "who"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "requestCode"    # I
    .param p4, "options"    # Landroid/os/Bundle;

    .line 2294
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This method is only implemented for Activity-based Contexts. Check canStartActivityForResult() before calling."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract whitelist startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;
.end method

.method public abstract greylist-max-o startForegroundServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
.end method

.method public abstract whitelist startInstrumentation(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;)Z
.end method

.method public abstract whitelist startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation
.end method

.method public abstract whitelist startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;IIILandroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation
.end method

.method public abstract whitelist startService(Landroid/content/Intent;)Landroid/content/ComponentName;
.end method

.method public abstract greylist startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
.end method

.method public abstract whitelist stopService(Landroid/content/Intent;)Z
.end method

.method public abstract greylist-max-o stopServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Z
.end method

.method public abstract whitelist unbindService(Landroid/content/ServiceConnection;)V
.end method

.method public whitelist unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V
    .registers 3
    .param p1, "callback"    # Landroid/content/ComponentCallbacks;

    .line 975
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 976
    return-void
.end method

.method public whitelist unregisterDeviceIdChangeListener(Ljava/util/function/IntConsumer;)V
    .registers 4
    .param p1, "listener"    # Ljava/util/function/IntConsumer;

    .line 8167
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract whitelist unregisterReceiver(Landroid/content/BroadcastReceiver;)V
.end method

.method public blacklist updateDeviceId(I)V
    .registers 4
    .param p1, "deviceId"    # I

    .line 8096
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract greylist-max-o updateDisplay(I)V
.end method

.method public whitelist updateServiceGroup(Landroid/content/ServiceConnection;II)V
    .registers 6
    .param p1, "conn"    # Landroid/content/ServiceConnection;
    .param p2, "group"    # I
    .param p3, "importance"    # I

    .line 4212
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
