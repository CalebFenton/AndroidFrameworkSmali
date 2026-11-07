.class public Landroid/app/AppOpsManager;
.super Ljava/lang/Object;
.source "AppOpsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/AppOpsManager$RestrictionBypass;,
        Landroid/app/AppOpsManager$AttributedOpEntry;,
        Landroid/app/AppOpsManager$HistoricalOpsRequest;,
        Landroid/app/AppOpsManager$OnOpChangedListener;,
        Landroid/app/AppOpsManager$OnOpActiveChangedListener;,
        Landroid/app/AppOpsManager$OnOpStartedListener;,
        Landroid/app/AppOpsManager$OnOpNotedListener;,
        Landroid/app/AppOpsManager$AppOpModeQuery;,
        Landroid/app/AppOpsManager$NotedOp;,
        Landroid/app/AppOpsManager$PausedNotedAppOpsCollection;,
        Landroid/app/AppOpsManager$OnOpNotedCallback;,
        Landroid/app/AppOpsManager$HistoricalOps;,
        Landroid/app/AppOpsManager$NoteOpEvent;,
        Landroid/app/AppOpsManager$OpEventProxyInfo;,
        Landroid/app/AppOpsManager$AppOpsCollector;,
        Landroid/app/AppOpsManager$OpNotedCallbackFlags;,
        Landroid/app/AppOpsManager$NotedOpCollectionMode;,
        Landroid/app/AppOpsManager$OnOpActiveChangedInternalListener;,
        Landroid/app/AppOpsManager$OnOpChangedInternalListener;,
        Landroid/app/AppOpsManager$OnOpNotedInternalListener;,
        Landroid/app/AppOpsManager$HistoricalOp;,
        Landroid/app/AppOpsManager$AttributedHistoricalOps;,
        Landroid/app/AppOpsManager$HistoricalPackageOps;,
        Landroid/app/AppOpsManager$HistoricalUidOps;,
        Landroid/app/AppOpsManager$HistoricalOpsRequestFilter;,
        Landroid/app/AppOpsManager$OpHistoryFlags;,
        Landroid/app/AppOpsManager$HistoricalOpsVisitor;,
        Landroid/app/AppOpsManager$OpEntry;,
        Landroid/app/AppOpsManager$PackageOps;,
        Landroid/app/AppOpsManager$ShouldCollectNoteOp;,
        Landroid/app/AppOpsManager$AppOpString;,
        Landroid/app/AppOpsManager$DataBucketKey;,
        Landroid/app/AppOpsManager$SamplingStrategy;,
        Landroid/app/AppOpsManager$AttributionFlags;,
        Landroid/app/AppOpsManager$OpFlags;,
        Landroid/app/AppOpsManager$UidState;,
        Landroid/app/AppOpsManager$Mode;,
        Landroid/app/AppOpsManager$HistoricalMode;
    }
.end annotation


# static fields
.field private static final blacklist APP_OP_MODE_CACHING_API:Ljava/lang/String; = "getAppOpMode"

.field private static final blacklist APP_OP_MODE_CACHING_NAME:Ljava/lang/String; = "appOpModeCache"

.field private static final blacklist APP_OP_MODE_CACHING_SIZE:I = 0x800

.field private static final blacklist APP_OP_PERMISSION_PACKAGE_OPS:[I

.field private static final blacklist APP_OP_PERMISSION_UID_OPS:[I

.field public static final blacklist ATTRIBUTION_CHAIN_ID_NONE:I = -0x1

.field public static final blacklist ATTRIBUTION_FLAGS_NONE:I = 0x0

.field public static final blacklist ATTRIBUTION_FLAG_ACCESSOR:I = 0x1

.field public static final blacklist ATTRIBUTION_FLAG_INTERMEDIARY:I = 0x2

.field public static final blacklist ATTRIBUTION_FLAG_RECEIVER:I = 0x4

.field public static final blacklist ATTRIBUTION_FLAG_TRUSTED:I = 0x8

.field private static final blacklist BITMASK_LEN:I = 0x3

.field public static final blacklist CALL_BACK_ON_CHANGED_LISTENER_WITH_SWITCHED_OP_CHANGE:J = 0x8d50f1eL

.field public static final blacklist CALL_BACK_ON_SWITCHED_OP:I = 0x2

.field private static final blacklist COLLECT_ASYNC:I = 0x3

.field private static final blacklist COLLECT_SELF:I = 0x1

.field private static final blacklist COLLECT_SYNC:I = 0x2

.field private static final blacklist DONT_COLLECT:I = 0x0

.field public static final blacklist FILTER_BY_ATTRIBUTION_TAG:I = 0x4

.field public static final blacklist FILTER_BY_OP_NAMES:I = 0x8

.field public static final blacklist FILTER_BY_PACKAGE_NAME:I = 0x2

.field public static final blacklist FILTER_BY_UID:I = 0x1

.field private static final blacklist FLAGS_MASK:I = -0x1

.field private static final blacklist FULL_LOG:Ljava/lang/String; = "privacy_attribution_tag_full_log_enabled"

.field public static final blacklist HISTORICAL_MODE_DISABLED:I = 0x0

.field public static final blacklist HISTORICAL_MODE_ENABLED_ACTIVE:I = 0x1

.field public static final blacklist HISTORICAL_MODE_ENABLED_PASSIVE:I = 0x2

.field public static final whitelist HISTORY_FLAGS_ALL:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist HISTORY_FLAG_AGGREGATE:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist HISTORY_FLAG_DISCRETE:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist HISTORY_FLAG_GET_ATTRIBUTION_CHAINS:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist KEY_BG_STATE_SETTLE_TIME:Ljava/lang/String; = "bg_state_settle_time"

.field public static final blacklist KEY_FG_SERVICE_STATE_SETTLE_TIME:Ljava/lang/String; = "fg_service_state_settle_time"

.field public static final blacklist KEY_HISTORICAL_OPS:Ljava/lang/String; = "historical_ops"

.field public static final blacklist KEY_TOP_STATE_SETTLE_TIME:Ljava/lang/String; = "top_state_settle_time"

.field public static final blacklist MAX_PRIORITY_UID_STATE:I = 0x64

.field private static final blacklist MAX_UNFORWARDED_OPS:I = 0xa

.field public static final blacklist MIN_PRIORITY_UID_STATE:I = 0x2bc

.field public static final whitelist MODE_ALLOWED:I = 0x0

.field public static final whitelist MODE_DEFAULT:I = 0x3

.field public static final whitelist MODE_ERRORED:I = 0x2

.field public static final whitelist MODE_FOREGROUND:I = 0x4

.field public static final whitelist MODE_IGNORED:I = 0x1

.field public static final greylist-max-o MODE_NAMES:[Ljava/lang/String;

.field private static final blacklist NOTE_OP_BATCHING_DELAY_MILLIS:I = 0x3e8

.field public static final blacklist NOTE_OP_COLLECTION_ENABLED:Z = false

.field public static final whitelist OPSTR_ACCEPT_HANDOVER:Ljava/lang/String; = "android:accept_handover"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_ACCESS_ACCESSIBILITY:Ljava/lang/String; = "android:access_accessibility"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist OPSTR_ACCESS_MEDIA_LOCATION:Ljava/lang/String; = "android:access_media_location"

.field public static final whitelist OPSTR_ACCESS_NOTIFICATIONS:Ljava/lang/String; = "android:access_notifications"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_ACCESS_RESTRICTED_SETTINGS:Ljava/lang/String; = "android:access_restricted_settings"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_ACTIVATE_PLATFORM_VPN:Ljava/lang/String; = "android:activate_platform_vpn"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_ACTIVATE_VPN:Ljava/lang/String; = "android:activate_vpn"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist OPSTR_ACTIVITY_RECOGNITION:Ljava/lang/String; = "android:activity_recognition"

.field public static final blacklist OPSTR_ACTIVITY_RECOGNITION_SOURCE:Ljava/lang/String; = "android:activity_recognition_source"

.field public static final whitelist OPSTR_ADD_VOICEMAIL:Ljava/lang/String; = "android:add_voicemail"

.field public static final whitelist OPSTR_ANSWER_PHONE_CALLS:Ljava/lang/String; = "android:answer_phone_calls"

.field public static final blacklist OPSTR_ARCHIVE_ICON_OVERLAY:Ljava/lang/String; = "android:archive_icon_overlay"

.field public static final whitelist OPSTR_ASSIST_SCREENSHOT:Ljava/lang/String; = "android:assist_screenshot"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_ASSIST_STRUCTURE:Ljava/lang/String; = "android:assist_structure"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_AUDIO_ACCESSIBILITY_VOLUME:Ljava/lang/String; = "android:audio_accessibility_volume"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_AUDIO_ALARM_VOLUME:Ljava/lang/String; = "android:audio_alarm_volume"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_AUDIO_BLUETOOTH_VOLUME:Ljava/lang/String; = "android:audio_bluetooth_volume"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_AUDIO_MASTER_VOLUME:Ljava/lang/String; = "android:audio_master_volume"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_AUDIO_MEDIA_VOLUME:Ljava/lang/String; = "android:audio_media_volume"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_AUDIO_NOTIFICATION_VOLUME:Ljava/lang/String; = "android:audio_notification_volume"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_AUDIO_RING_VOLUME:Ljava/lang/String; = "android:audio_ring_volume"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_AUDIO_VOICE_VOLUME:Ljava/lang/String; = "android:audio_voice_volume"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_AUTO_REVOKE_MANAGED_BY_INSTALLER:Ljava/lang/String; = "android:auto_revoke_managed_by_installer"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_AUTO_REVOKE_PERMISSIONS_IF_UNUSED:Ljava/lang/String; = "android:auto_revoke_permissions_if_unused"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_BIND_ACCESSIBILITY_SERVICE:Ljava/lang/String; = "android:bind_accessibility_service"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist OPSTR_BLUETOOTH_ADVERTISE:Ljava/lang/String; = "android:bluetooth_advertise"

.field public static final blacklist OPSTR_BLUETOOTH_CONNECT:Ljava/lang/String; = "android:bluetooth_connect"

.field public static final greylist-max-o OPSTR_BLUETOOTH_SCAN:Ljava/lang/String; = "android:bluetooth_scan"

.field public static final whitelist OPSTR_BODY_SENSORS:Ljava/lang/String; = "android:body_sensors"

.field public static final whitelist OPSTR_CALL_PHONE:Ljava/lang/String; = "android:call_phone"

.field public static final whitelist OPSTR_CAMERA:Ljava/lang/String; = "android:camera"

.field public static final blacklist OPSTR_CAMERA_SANDBOXED:Ljava/lang/String; = "android:camera_sandboxed"

.field public static final whitelist OPSTR_CAPTURE_CONSENTLESS_BUGREPORT_ON_USERDEBUG_BUILD:Ljava/lang/String; = "android:capture_consentless_bugreport_on_userdebug_build"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_CHANGE_WIFI_STATE:Ljava/lang/String; = "android:change_wifi_state"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_COARSE_LOCATION:Ljava/lang/String; = "android:coarse_location"

.field public static final blacklist OPSTR_COARSE_LOCATION_SOURCE:Ljava/lang/String; = "android:coarse_location_source"

.field public static final blacklist OPSTR_CONTROL_AUDIO:Ljava/lang/String; = "android:control_audio"

.field public static final blacklist OPSTR_CONTROL_AUDIO_PARTIAL:Ljava/lang/String; = "android:control_audio_partial"

.field public static final whitelist OPSTR_CREATE_ACCESSIBILITY_OVERLAY:Ljava/lang/String; = "android:create_accessibility_overlay"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist OPSTR_DEPRECATED_2:Ljava/lang/String; = "android:deprecated_2"

.field public static final blacklist OPSTR_DEPRECATED_3:Ljava/lang/String; = "android:deprecated_3"

.field public static final blacklist OPSTR_DEPRECATED_4:Ljava/lang/String; = "android:deprecated_4"

.field public static final whitelist OPSTR_EMERGENCY_LOCATION:Ljava/lang/String; = "android:emergency_location"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_ENABLE_MOBILE_DATA_BY_USER:Ljava/lang/String; = "android:enable_mobile_data_by_user"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_ESTABLISH_VPN_MANAGER:Ljava/lang/String; = "android:establish_vpn_manager"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_ESTABLISH_VPN_SERVICE:Ljava/lang/String; = "android:establish_vpn_service"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist OPSTR_EYE_TRACKING_COARSE:Ljava/lang/String; = "android:eye_tracking_coarse"

.field public static final blacklist OPSTR_EYE_TRACKING_FINE:Ljava/lang/String; = "android:eye_tracking_fine"

.field public static final blacklist OPSTR_FACE_TRACKING:Ljava/lang/String; = "android:face_tracking"

.field public static final whitelist OPSTR_FINE_LOCATION:Ljava/lang/String; = "android:fine_location"

.field public static final blacklist OPSTR_FINE_LOCATION_SOURCE:Ljava/lang/String; = "android:fine_location_source"

.field public static final blacklist OPSTR_FOREGROUND_SERVICE_SPECIAL_USE:Ljava/lang/String; = "android:foreground_service_special_use"

.field public static final whitelist OPSTR_GET_ACCOUNTS:Ljava/lang/String; = "android:get_accounts"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_GET_USAGE_STATS:Ljava/lang/String; = "android:get_usage_stats"

.field public static final whitelist OPSTR_GPS:Ljava/lang/String; = "android:gps"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist OPSTR_HAND_TRACKING:Ljava/lang/String; = "android:hand_tracking"

.field public static final blacklist OPSTR_HEAD_TRACKING:Ljava/lang/String; = "android:head_tracking"

.field public static final whitelist OPSTR_INSTANT_APP_START_FOREGROUND:Ljava/lang/String; = "android:instant_app_start_foreground"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_INTERACT_ACROSS_PROFILES:Ljava/lang/String; = "android:interact_across_profiles"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_LEGACY_STORAGE:Ljava/lang/String; = "android:legacy_storage"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_LOADER_USAGE_STATS:Ljava/lang/String; = "android:loader_usage_stats"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist OPSTR_MANAGE_CREDENTIALS:Ljava/lang/String; = "android:manage_credentials"

.field public static final whitelist OPSTR_MANAGE_EXTERNAL_STORAGE:Ljava/lang/String; = "android:manage_external_storage"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_MANAGE_IPSEC_TUNNELS:Ljava/lang/String; = "android:manage_ipsec_tunnels"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist OPSTR_MANAGE_MEDIA:Ljava/lang/String; = "android:manage_media"

.field public static final whitelist OPSTR_MANAGE_ONGOING_CALLS:Ljava/lang/String; = "android:manage_ongoing_calls"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_MEDIA_ROUTING_CONTROL:Ljava/lang/String; = "android:media_routing_control"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_MOCK_LOCATION:Ljava/lang/String; = "android:mock_location"

.field public static final whitelist OPSTR_MONITOR_HIGH_POWER_LOCATION:Ljava/lang/String; = "android:monitor_location_high_power"

.field public static final whitelist OPSTR_MONITOR_LOCATION:Ljava/lang/String; = "android:monitor_location"

.field public static final whitelist OPSTR_MUTE_MICROPHONE:Ljava/lang/String; = "android:mute_microphone"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist OPSTR_NEARBY_WIFI_DEVICES:Ljava/lang/String; = "android:nearby_wifi_devices"

.field public static final whitelist OPSTR_NEIGHBORING_CELLS:Ljava/lang/String; = "android:neighboring_cells"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist OPSTR_NO_ISOLATED_STORAGE:Ljava/lang/String; = "android:no_isolated_storage"
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final whitelist OPSTR_PHONE_CALL_CAMERA:Ljava/lang/String; = "android:phone_call_camera"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_PHONE_CALL_MICROPHONE:Ljava/lang/String; = "android:phone_call_microphone"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_PICTURE_IN_PICTURE:Ljava/lang/String; = "android:picture_in_picture"

.field public static final whitelist OPSTR_PLAY_AUDIO:Ljava/lang/String; = "android:play_audio"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_POST_NOTIFICATION:Ljava/lang/String; = "android:post_notification"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_PROCESS_OUTGOING_CALLS:Ljava/lang/String; = "android:process_outgoing_calls"

.field public static final whitelist OPSTR_PROJECT_MEDIA:Ljava/lang/String; = "android:project_media"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist OPSTR_QUERY_ALL_PACKAGES:Ljava/lang/String; = "android:query_all_packages"

.field public static final whitelist OPSTR_RANGING:Ljava/lang/String; = "android:ranging"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_RAPID_CLEAR_NOTIFICATIONS_BY_LISTENER:Ljava/lang/String; = "android:rapid_clear_notifications_by_listener"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_READ_CALENDAR:Ljava/lang/String; = "android:read_calendar"

.field public static final whitelist OPSTR_READ_CALL_LOG:Ljava/lang/String; = "android:read_call_log"

.field public static final whitelist OPSTR_READ_CELL_BROADCASTS:Ljava/lang/String; = "android:read_cell_broadcasts"

.field public static final whitelist OPSTR_READ_CLIPBOARD:Ljava/lang/String; = "android:read_clipboard"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_READ_CONTACTS:Ljava/lang/String; = "android:read_contacts"

.field public static final blacklist OPSTR_READ_DEVICE_IDENTIFIERS:Ljava/lang/String; = "android:read_device_identifiers"

.field public static final whitelist OPSTR_READ_EXTERNAL_STORAGE:Ljava/lang/String; = "android:read_external_storage"

.field public static final whitelist OPSTR_READ_HEART_RATE:Ljava/lang/String; = "android:read_heart_rate"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_READ_ICC_SMS:Ljava/lang/String; = "android:read_icc_sms"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_READ_MEDIA_AUDIO:Ljava/lang/String; = "android:read_media_audio"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_READ_MEDIA_IMAGES:Ljava/lang/String; = "android:read_media_images"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_READ_MEDIA_VIDEO:Ljava/lang/String; = "android:read_media_video"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_READ_MEDIA_VISUAL_USER_SELECTED:Ljava/lang/String; = "android:read_media_visual_user_selected"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_READ_OXYGEN_SATURATION:Ljava/lang/String; = "android:read_oxygen_saturation"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_READ_PHONE_NUMBERS:Ljava/lang/String; = "android:read_phone_numbers"

.field public static final whitelist OPSTR_READ_PHONE_STATE:Ljava/lang/String; = "android:read_phone_state"

.field public static final whitelist OPSTR_READ_SKIN_TEMPERATURE:Ljava/lang/String; = "android:read_skin_temperature"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_READ_SMS:Ljava/lang/String; = "android:read_sms"

.field public static final blacklist OPSTR_READ_SYSTEM_GRAMMATICAL_GENDER:Ljava/lang/String; = "android:read_system_grammatical_gender"

.field public static final whitelist OPSTR_READ_WRITE_HEALTH_DATA:Ljava/lang/String; = "android:read_write_health_data"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_RECEIVE_AMBIENT_TRIGGER_AUDIO:Ljava/lang/String; = "android:receive_ambient_trigger_audio"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_RECEIVE_EMERGENCY_BROADCAST:Ljava/lang/String; = "android:receive_emergency_broadcast"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_RECEIVE_EXPLICIT_USER_INTERACTION_AUDIO:Ljava/lang/String; = "android:receive_explicit_user_interaction_audio"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_RECEIVE_MMS:Ljava/lang/String; = "android:receive_mms"

.field public static final blacklist OPSTR_RECEIVE_SANDBOX_TRIGGER_AUDIO:Ljava/lang/String; = "android:receive_sandbox_trigger_audio"

.field public static final blacklist OPSTR_RECEIVE_SENSITIVE_NOTIFICATIONS:Ljava/lang/String; = "android:receive_sensitive_notifications"

.field public static final whitelist OPSTR_RECEIVE_SMS:Ljava/lang/String; = "android:receive_sms"

.field public static final whitelist OPSTR_RECEIVE_WAP_PUSH:Ljava/lang/String; = "android:receive_wap_push"

.field public static final whitelist OPSTR_RECORD_AUDIO:Ljava/lang/String; = "android:record_audio"

.field public static final blacklist OPSTR_RECORD_AUDIO_HOTWORD:Ljava/lang/String; = "android:record_audio_hotword"

.field public static final blacklist OPSTR_RECORD_AUDIO_OUTPUT:Ljava/lang/String; = "android:record_audio_output"

.field public static final blacklist OPSTR_RECORD_AUDIO_SANDBOXED:Ljava/lang/String; = "android:record_audio_sandboxed"

.field public static final blacklist OPSTR_RECORD_INCOMING_PHONE_AUDIO:Ljava/lang/String; = "android:record_incoming_phone_audio"

.field public static final whitelist OPSTR_REQUEST_DELETE_PACKAGES:Ljava/lang/String; = "android:request_delete_packages"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_REQUEST_INSTALL_PACKAGES:Ljava/lang/String; = "android:request_install_packages"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist OPSTR_RESERVED_FOR_TESTING:Ljava/lang/String; = "android:reserved_for_testing"

.field public static final whitelist OPSTR_RUN_ANY_IN_BACKGROUND:Ljava/lang/String; = "android:run_any_in_background"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_RUN_IN_BACKGROUND:Ljava/lang/String; = "android:run_in_background"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist OPSTR_RUN_USER_INITIATED_JOBS:Ljava/lang/String; = "android:run_user_initiated_jobs"

.field public static final blacklist OPSTR_SCENE_UNDERSTANDING_COARSE:Ljava/lang/String; = "android:scene_understanding_coarse"

.field public static final blacklist OPSTR_SCENE_UNDERSTANDING_FINE:Ljava/lang/String; = "android:scene_understanding_fine"

.field public static final blacklist OPSTR_SCHEDULE_EXACT_ALARM:Ljava/lang/String; = "android:schedule_exact_alarm"

.field public static final whitelist OPSTR_SEND_SMS:Ljava/lang/String; = "android:send_sms"

.field public static final blacklist OPSTR_SMS_FINANCIAL_TRANSACTIONS:Ljava/lang/String; = "android:sms_financial_transactions"

.field public static final whitelist OPSTR_START_FOREGROUND:Ljava/lang/String; = "android:start_foreground"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_SYSTEM_ALERT_WINDOW:Ljava/lang/String; = "android:system_alert_window"

.field public static final blacklist OPSTR_SYSTEM_EXEMPT_FROM_ACTIVITY_BG_START_RESTRICTION:Ljava/lang/String; = "android:system_exempt_from_activity_bg_start_restriction"

.field public static final blacklist OPSTR_SYSTEM_EXEMPT_FROM_DISMISSIBLE_NOTIFICATIONS:Ljava/lang/String; = "android:system_exempt_from_dismissible_notifications"

.field public static final whitelist OPSTR_SYSTEM_EXEMPT_FROM_HIBERNATION:Ljava/lang/String; = "android:system_exempt_from_hibernation"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist OPSTR_SYSTEM_EXEMPT_FROM_POWER_RESTRICTIONS:Ljava/lang/String; = "android:system_exempt_from_power_restrictions"

.field public static final blacklist OPSTR_SYSTEM_EXEMPT_FROM_SUSPENSION:Ljava/lang/String; = "android:system_exempt_from_suspension"

.field public static final whitelist OPSTR_TAKE_AUDIO_FOCUS:Ljava/lang/String; = "android:take_audio_focus"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_TAKE_MEDIA_BUTTONS:Ljava/lang/String; = "android:take_media_buttons"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_TOAST_WINDOW:Ljava/lang/String; = "android:toast_window"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_TURN_SCREEN_ON:Ljava/lang/String; = "android:turn_screen_on"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist OPSTR_UNARCHIVAL_CONFIRMATION:Ljava/lang/String; = "android:unarchival_support"

.field public static final blacklist OPSTR_USE_BIOMETRIC:Ljava/lang/String; = "android:use_biometric"

.field public static final whitelist OPSTR_USE_FINGERPRINT:Ljava/lang/String; = "android:use_fingerprint"

.field public static final blacklist OPSTR_USE_FULL_SCREEN_INTENT:Ljava/lang/String; = "android:use_full_screen_intent"

.field public static final blacklist OPSTR_USE_ICC_AUTH_WITH_DEVICE_IDENTIFIER:Ljava/lang/String; = "android:use_icc_auth_with_device_identifier"

.field public static final whitelist OPSTR_USE_SIP:Ljava/lang/String; = "android:use_sip"

.field public static final blacklist OPSTR_UWB_RANGING:Ljava/lang/String; = "android:uwb_ranging"

.field public static final whitelist OPSTR_VIBRATE:Ljava/lang/String; = "android:vibrate"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_WAKE_LOCK:Ljava/lang/String; = "android:wake_lock"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_WIFI_SCAN:Ljava/lang/String; = "android:wifi_scan"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_WRITE_CALENDAR:Ljava/lang/String; = "android:write_calendar"

.field public static final whitelist OPSTR_WRITE_CALL_LOG:Ljava/lang/String; = "android:write_call_log"

.field public static final whitelist OPSTR_WRITE_CLIPBOARD:Ljava/lang/String; = "android:write_clipboard"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_WRITE_CONTACTS:Ljava/lang/String; = "android:write_contacts"

.field public static final whitelist OPSTR_WRITE_EXTERNAL_STORAGE:Ljava/lang/String; = "android:write_external_storage"

.field public static final whitelist OPSTR_WRITE_ICC_SMS:Ljava/lang/String; = "android:write_icc_sms"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_WRITE_MEDIA_AUDIO:Ljava/lang/String; = "android:write_media_audio"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_WRITE_MEDIA_IMAGES:Ljava/lang/String; = "android:write_media_images"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_WRITE_MEDIA_VIDEO:Ljava/lang/String; = "android:write_media_video"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OPSTR_WRITE_SETTINGS:Ljava/lang/String; = "android:write_settings"

.field public static final whitelist OPSTR_WRITE_SMS:Ljava/lang/String; = "android:write_sms"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist OPSTR_WRITE_SYSTEM_PREFERENCES:Ljava/lang/String; = "android:write_system_preferences"

.field public static final whitelist OPSTR_WRITE_WALLPAPER:Ljava/lang/String; = "android:write_wallpaper"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final blacklist OPS_WITHOUT_CACHING:Landroid/util/SparseBooleanArray;

.field public static final greylist OP_ACCEPT_HANDOVER:I = 0x4a

.field public static final blacklist OP_ACCESS_ACCESSIBILITY:I = 0x58

.field public static final blacklist OP_ACCESS_MEDIA_LOCATION:I = 0x5a

.field public static final greylist OP_ACCESS_NOTIFICATIONS:I = 0x19

.field public static final blacklist OP_ACCESS_RESTRICTED_SETTINGS:I = 0x77

.field public static final blacklist OP_ACTIVATE_PLATFORM_VPN:I = 0x5e

.field public static final greylist OP_ACTIVATE_VPN:I = 0x2f

.field public static final blacklist OP_ACTIVITY_RECOGNITION:I = 0x4f

.field public static final blacklist OP_ACTIVITY_RECOGNITION_SOURCE:I = 0x71

.field public static final greylist OP_ADD_VOICEMAIL:I = 0x34

.field public static final greylist OP_ANSWER_PHONE_CALLS:I = 0x45

.field public static final blacklist OP_ARCHIVE_ICON_OVERLAY:I = 0x91

.field public static final greylist OP_ASSIST_SCREENSHOT:I = 0x32

.field public static final greylist OP_ASSIST_STRUCTURE:I = 0x31

.field public static final greylist OP_AUDIO_ACCESSIBILITY_VOLUME:I = 0x40

.field public static final greylist OP_AUDIO_ALARM_VOLUME:I = 0x25

.field public static final greylist OP_AUDIO_BLUETOOTH_VOLUME:I = 0x27

.field public static final greylist OP_AUDIO_MASTER_VOLUME:I = 0x21

.field public static final greylist OP_AUDIO_MEDIA_VOLUME:I = 0x24

.field public static final greylist OP_AUDIO_NOTIFICATION_VOLUME:I = 0x26

.field public static final greylist OP_AUDIO_RING_VOLUME:I = 0x23

.field public static final greylist OP_AUDIO_VOICE_VOLUME:I = 0x22

.field public static final blacklist OP_AUTO_REVOKE_MANAGED_BY_INSTALLER:I = 0x62

.field public static final blacklist OP_AUTO_REVOKE_PERMISSIONS_IF_UNUSED:I = 0x61

.field public static final greylist OP_BIND_ACCESSIBILITY_SERVICE:I = 0x49

.field public static final blacklist OP_BLUETOOTH_ADVERTISE:I = 0x72

.field public static final blacklist OP_BLUETOOTH_CONNECT:I = 0x6f

.field public static final greylist OP_BLUETOOTH_SCAN:I = 0x4d

.field public static final greylist OP_BODY_SENSORS:I = 0x38

.field public static final greylist OP_CALL_PHONE:I = 0xd

.field public static final greylist OP_CAMERA:I = 0x1a

.field public static final blacklist OP_CAMERA_SANDBOXED:I = 0x86

.field public static final blacklist OP_CAPTURE_CONSENTLESS_BUGREPORT_ON_USERDEBUG_BUILD:I = 0x83

.field public static final greylist OP_CHANGE_WIFI_STATE:I = 0x47

.field public static final greylist OP_COARSE_LOCATION:I = 0x0

.field public static final blacklist OP_COARSE_LOCATION_SOURCE:I = 0x6d

.field public static final blacklist OP_CONTROL_AUDIO:I = 0x9a

.field public static final blacklist OP_CONTROL_AUDIO_PARTIAL:I = 0x9b

.field public static final blacklist OP_CREATE_ACCESSIBILITY_OVERLAY:I = 0x8a

.field private static final blacklist OP_DEPRECATED_1:I = 0x60

.field private static final blacklist OP_DEPRECATED_2:I = 0x84

.field private static final blacklist OP_DEPRECATED_3:I = 0x89

.field private static final blacklist OP_DEPRECATED_4:I = 0x90

.field public static final blacklist OP_EMERGENCY_LOCATION:I = 0x93

.field public static final blacklist OP_ENABLE_MOBILE_DATA_BY_USER:I = 0x8c

.field public static final blacklist OP_ESTABLISH_VPN_MANAGER:I = 0x76

.field public static final blacklist OP_ESTABLISH_VPN_SERVICE:I = 0x75

.field public static final blacklist OP_EYE_TRACKING_COARSE:I = 0x9c

.field public static final blacklist OP_EYE_TRACKING_FINE:I = 0x9d

.field public static final blacklist OP_FACE_TRACKING:I = 0x9e

.field public static final greylist OP_FINE_LOCATION:I = 0x1

.field public static final blacklist OP_FINE_LOCATION_SOURCE:I = 0x6c

.field public static final whitelist OP_FLAGS_ALL:I = 0x1f
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OP_FLAGS_ALL_TRUSTED:I = 0xd
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OP_FLAG_SELF:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OP_FLAG_TRUSTED_PROXIED:I = 0x8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OP_FLAG_TRUSTED_PROXY:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OP_FLAG_UNTRUSTED_PROXIED:I = 0x10
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist OP_FLAG_UNTRUSTED_PROXY:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist OP_FOREGROUND_SERVICE_SPECIAL_USE:I = 0x7f

.field public static final greylist OP_GET_ACCOUNTS:I = 0x3e

.field public static final greylist OP_GET_USAGE_STATS:I = 0x2b

.field public static final greylist OP_GPS:I = 0x2

.field public static final blacklist OP_HAND_TRACKING:I = 0x9f

.field public static final blacklist OP_HEAD_TRACKING:I = 0xa0

.field public static final greylist OP_INSTANT_APP_START_FOREGROUND:I = 0x44

.field public static final blacklist OP_INTERACT_ACROSS_PROFILES:I = 0x5d

.field public static final blacklist OP_LEGACY_STORAGE:I = 0x57

.field public static final blacklist OP_LOADER_USAGE_STATS:I = 0x5f

.field public static final blacklist OP_MANAGE_CREDENTIALS:I = 0x68

.field public static final blacklist OP_MANAGE_EXTERNAL_STORAGE:I = 0x5c

.field public static final greylist OP_MANAGE_IPSEC_TUNNELS:I = 0x4b

.field public static final blacklist OP_MANAGE_MEDIA:I = 0x6e

.field public static final blacklist OP_MANAGE_ONGOING_CALLS:I = 0x67

.field public static final blacklist OP_MEDIA_ROUTING_CONTROL:I = 0x8b

.field public static final greylist OP_MOCK_LOCATION:I = 0x3a

.field public static final greylist OP_MONITOR_HIGH_POWER_LOCATION:I = 0x2a

.field public static final greylist OP_MONITOR_LOCATION:I = 0x29

.field public static final greylist OP_MUTE_MICROPHONE:I = 0x2c

.field public static final blacklist OP_NEARBY_WIFI_DEVICES:I = 0x74

.field public static final greylist OP_NEIGHBORING_CELLS:I = 0xc

.field public static final greylist-max-r OP_NONE:I = -0x1

.field private static final blacklist OP_NOTED_CALLBACK_FLAG_ALL:I = 0x1

.field public static final whitelist OP_NOTED_CALLBACK_FLAG_IGNORE_ASYNC:I = 0x1

.field public static final blacklist OP_NO_ISOLATED_STORAGE:I = 0x63

.field public static final blacklist OP_PHONE_CALL_CAMERA:I = 0x65

.field public static final blacklist OP_PHONE_CALL_MICROPHONE:I = 0x64

.field public static final greylist OP_PICTURE_IN_PICTURE:I = 0x43

.field public static final greylist OP_PLAY_AUDIO:I = 0x1c

.field public static final greylist OP_POST_NOTIFICATION:I = 0xb

.field public static final greylist OP_PROCESS_OUTGOING_CALLS:I = 0x36

.field public static final greylist OP_PROJECT_MEDIA:I = 0x2e

.field public static final blacklist OP_QUERY_ALL_PACKAGES:I = 0x5b

.field public static final blacklist OP_RANGING:I = 0x97

.field public static final blacklist OP_RAPID_CLEAR_NOTIFICATIONS_BY_LISTENER:I = 0x8e

.field public static final greylist OP_READ_CALENDAR:I = 0x8

.field public static final greylist OP_READ_CALL_LOG:I = 0x6

.field public static final greylist OP_READ_CELL_BROADCASTS:I = 0x39

.field public static final greylist OP_READ_CLIPBOARD:I = 0x1d

.field public static final greylist OP_READ_CONTACTS:I = 0x4

.field public static final blacklist OP_READ_DEVICE_IDENTIFIERS:I = 0x59

.field public static final greylist OP_READ_EXTERNAL_STORAGE:I = 0x3b

.field public static final blacklist OP_READ_HEART_RATE:I = 0x95

.field public static final greylist OP_READ_ICC_SMS:I = 0x15

.field public static final blacklist OP_READ_MEDIA_AUDIO:I = 0x51

.field public static final blacklist OP_READ_MEDIA_IMAGES:I = 0x55

.field public static final blacklist OP_READ_MEDIA_VIDEO:I = 0x53

.field public static final blacklist OP_READ_MEDIA_VISUAL_USER_SELECTED:I = 0x7b

.field public static final blacklist OP_READ_OXYGEN_SATURATION:I = 0x98

.field public static final greylist OP_READ_PHONE_NUMBERS:I = 0x41

.field public static final greylist OP_READ_PHONE_STATE:I = 0x33

.field public static final blacklist OP_READ_SKIN_TEMPERATURE:I = 0x96

.field public static final greylist OP_READ_SMS:I = 0xe

.field public static final blacklist OP_READ_SYSTEM_GRAMMATICAL_GENDER:I = 0x8f

.field public static final blacklist OP_READ_WRITE_HEALTH_DATA:I = 0x7e

.field public static final blacklist OP_RECEIVE_AMBIENT_TRIGGER_AUDIO:I = 0x78

.field public static final greylist OP_RECEIVE_EMERGECY_SMS:I = 0x11

.field public static final blacklist OP_RECEIVE_EXPLICIT_USER_INTERACTION_AUDIO:I = 0x79

.field public static final greylist OP_RECEIVE_MMS:I = 0x12

.field public static final blacklist OP_RECEIVE_SANDBOX_TRIGGER_AUDIO:I = 0x88

.field public static final blacklist OP_RECEIVE_SENSITIVE_NOTIFICATIONS:I = 0x94

.field public static final greylist OP_RECEIVE_SMS:I = 0x10

.field public static final greylist OP_RECEIVE_WAP_PUSH:I = 0x13

.field public static final greylist OP_RECORD_AUDIO:I = 0x1b

.field public static final blacklist OP_RECORD_AUDIO_HOTWORD:I = 0x66

.field public static final blacklist OP_RECORD_AUDIO_OUTPUT:I = 0x6a

.field public static final blacklist OP_RECORD_AUDIO_SANDBOXED:I = 0x87

.field public static final blacklist OP_RECORD_INCOMING_PHONE_AUDIO:I = 0x73

.field public static final greylist OP_REQUEST_DELETE_PACKAGES:I = 0x48

.field public static final greylist OP_REQUEST_INSTALL_PACKAGES:I = 0x42

.field public static final blacklist OP_RESERVED_FOR_TESTING:I = 0x8d

.field public static final greylist OP_RUN_ANY_IN_BACKGROUND:I = 0x46

.field public static final greylist OP_RUN_IN_BACKGROUND:I = 0x3f

.field public static final blacklist OP_RUN_USER_INITIATED_JOBS:I = 0x7a

.field public static final blacklist OP_SCENE_UNDERSTANDING_COARSE:I = 0xa1

.field public static final blacklist OP_SCENE_UNDERSTANDING_FINE:I = 0xa2

.field public static final blacklist OP_SCHEDULE_EXACT_ALARM:I = 0x6b

.field public static final greylist OP_SEND_SMS:I = 0x14

.field public static final blacklist OP_SMS_FINANCIAL_TRANSACTIONS:I = 0x50

.field public static final greylist OP_START_FOREGROUND:I = 0x4c

.field public static final greylist OP_SYSTEM_ALERT_WINDOW:I = 0x18

.field public static final blacklist OP_SYSTEM_EXEMPT_FROM_ACTIVITY_BG_START_RESTRICTION:I = 0x82

.field public static final blacklist OP_SYSTEM_EXEMPT_FROM_DISMISSIBLE_NOTIFICATIONS:I = 0x7d

.field public static final blacklist OP_SYSTEM_EXEMPT_FROM_HIBERNATION:I = 0x81

.field public static final blacklist OP_SYSTEM_EXEMPT_FROM_POWER_RESTRICTIONS:I = 0x80

.field public static final blacklist OP_SYSTEM_EXEMPT_FROM_SUSPENSION:I = 0x7c

.field public static final greylist OP_TAKE_AUDIO_FOCUS:I = 0x20

.field public static final greylist OP_TAKE_MEDIA_BUTTONS:I = 0x1f

.field public static final greylist OP_TOAST_WINDOW:I = 0x2d

.field public static final greylist OP_TURN_SCREEN_ON:I = 0x3d

.field public static final blacklist OP_UNARCHIVAL_CONFIRMATION:I = 0x92

.field public static final blacklist OP_USE_BIOMETRIC:I = 0x4e

.field public static final greylist OP_USE_FINGERPRINT:I = 0x37

.field public static final blacklist OP_USE_FULL_SCREEN_INTENT:I = 0x85

.field public static final blacklist OP_USE_ICC_AUTH_WITH_DEVICE_IDENTIFIER:I = 0x69

.field public static final greylist OP_USE_SIP:I = 0x35

.field public static final blacklist OP_UWB_RANGING:I = 0x70

.field public static final greylist OP_VIBRATE:I = 0x3

.field public static final greylist OP_WAKE_LOCK:I = 0x28

.field public static final greylist OP_WIFI_SCAN:I = 0xa

.field public static final greylist OP_WRITE_CALENDAR:I = 0x9

.field public static final greylist OP_WRITE_CALL_LOG:I = 0x7

.field public static final greylist OP_WRITE_CLIPBOARD:I = 0x1e

.field public static final greylist OP_WRITE_CONTACTS:I = 0x5

.field public static final greylist OP_WRITE_EXTERNAL_STORAGE:I = 0x3c

.field public static final greylist OP_WRITE_ICC_SMS:I = 0x16

.field public static final blacklist OP_WRITE_MEDIA_AUDIO:I = 0x52

.field public static final blacklist OP_WRITE_MEDIA_IMAGES:I = 0x56

.field public static final blacklist OP_WRITE_MEDIA_VIDEO:I = 0x54

.field public static final greylist OP_WRITE_SETTINGS:I = 0x17

.field public static final greylist OP_WRITE_SMS:I = 0xf

.field public static final blacklist OP_WRITE_SYSTEM_PREFERENCES:I = 0x99

.field public static final greylist OP_WRITE_WALLPAPER:I = 0x30

.field private static final blacklist RUNTIME_PERMISSION_OPS:[I

.field public static final blacklist SAMPLING_STRATEGY_BOOT_TIME_SAMPLING:I = 0x3

.field public static final blacklist SAMPLING_STRATEGY_DEFAULT:I = 0x0

.field public static final blacklist SAMPLING_STRATEGY_RARELY_USED:I = 0x2

.field public static final blacklist SAMPLING_STRATEGY_UNIFORM:I = 0x1

.field public static final blacklist SAMPLING_STRATEGY_UNIFORM_OPS:I = 0x4

.field public static final blacklist SECURITY_EXCEPTION_ON_INVALID_ATTRIBUTION_TAG_CHANGE:J = 0x901b1a2L

.field private static final blacklist SHOULD_COLLECT_NOTE_OP:B = 0x2t

.field private static final blacklist SHOULD_COLLECT_NOTE_OP_NOT_INITIALIZED:B = 0x0t

.field private static final blacklist SHOULD_NOT_COLLECT_NOTE_OP:B = 0x1t

.field public static final blacklist UID_STATES:[I

.field public static final whitelist UID_STATE_BACKGROUND:I = 0x258
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist UID_STATE_CACHED:I = 0x2bc
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist UID_STATE_FOREGROUND:I = 0x1f4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist UID_STATE_FOREGROUND_SERVICE:I = 0x190
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist UID_STATE_FOREGROUND_SERVICE_LOCATION:I = 0x12c
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist UID_STATE_MAX_LAST_NON_RESTRICTED:I = 0x1f4

.field public static final blacklist UID_STATE_NONEXISTENT:I = 0x7fffffff

.field private static final blacklist UID_STATE_OFFSET:I = 0x1f

.field public static final whitelist UID_STATE_PERSISTENT:I = 0x64
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist UID_STATE_TOP:I = 0xc8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist WATCH_FOREGROUND_CHANGES:I = 0x1

.field public static final greylist-max-r _NUM_OP:I = 0xa3

.field static final blacklist sAppOpInfos:[Landroid/app/AppOpInfo;

.field private static final blacklist sAppOpModeCache:Landroid/os/IpcDataCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/IpcDataCache<",
            "Landroid/app/AppOpsManager$AppOpModeQuery;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sAppOpsNotedInThisBinderTransaction:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/BitSet;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final blacklist sAppOpsToNote:[B

.field private static final blacklist sBatchedNoteOpLock:Ljava/lang/Object;

.field private static final blacklist sBinderThreadCallingUid:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static blacklist sClientId:Landroid/os/IBinder;

.field private static blacklist sConfig:Lcom/android/internal/app/MessageSamplingConfig;

.field private static blacklist sFullLog:Ljava/lang/Boolean;

.field private static final blacklist sGetAppOpModeQuery:Landroid/os/IpcDataCache$QueryHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/IpcDataCache$QueryHandler<",
            "Landroid/app/AppOpsManager$AppOpModeQuery;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sHandlerThread:Landroid/os/HandlerThread;

.field private static blacklist sIgnoreAsyncNotedCallback:Z

.field private static blacklist sIsBatchedNoteOpCallScheduled:Z

.field private static final blacklist sLock:Ljava/lang/Object;

.field private static blacklist sMessageCollector:Landroid/app/AppOpsManager$OnOpNotedCallback;

.field private static blacklist sOnOpNotedCallback:Landroid/app/AppOpsManager$OnOpNotedCallback;

.field private static greylist-max-o sOpStrToOp:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sPendingNotedOps:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/app/AppOpsManager$NotedOp;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static greylist-max-o sPermToOp:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static blacklist sService:Lcom/android/internal/app/IAppOpsService;

.field private static blacklist sUnforwardedOps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/AsyncNotedAppOp;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mActiveWatchers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/app/AppOpsManager$OnOpActiveChangedListener;",
            "Lcom/android/internal/app/IAppOpsActiveCallback;",
            ">;"
        }
    .end annotation
.end field

.field final greylist-max-o mContext:Landroid/content/Context;

.field private final greylist-max-o mModeWatchers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/app/AppOpsManager$OnOpChangedListener;",
            "Lcom/android/internal/app/IAppOpsCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mNotedWatchers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/app/AppOpsManager$OnOpNotedListener;",
            "Lcom/android/internal/app/IAppOpsNotedCallback;",
            ">;"
        }
    .end annotation
.end field

.field final greylist mService:Lcom/android/internal/app/IAppOpsService;

.field private final blacklist mStartedWatchers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/app/AppOpsManager$OnOpStartedListener;",
            "Lcom/android/internal/app/IAppOpsStartedCallback;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mUsageHelper:Landroid/permission/PermissionUsageHelper;


# direct methods
.method public static synthetic blacklist $r8$lambda$ZCdUg5mlmWB8DXCRpS1C_JBbS7Y(Landroid/app/AppOpsManager;)V
    .registers 1

    invoke-direct {p0}, Landroid/app/AppOpsManager;->lambda$batchDuplicateNoteOps$5()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsConfig()Lcom/android/internal/app/MessageSamplingConfig;
    .registers 1

    sget-object v0, Landroid/app/AppOpsManager;->sConfig:Lcom/android/internal/app/MessageSamplingConfig;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfputsConfig(Lcom/android/internal/app/MessageSamplingConfig;)V
    .registers 1

    sput-object p0, Landroid/app/AppOpsManager;->sConfig:Lcom/android/internal/app/MessageSamplingConfig;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smcollectKeys(Landroid/util/LongSparseLongArray;Landroid/util/LongSparseArray;)Landroid/util/LongSparseArray;
    .registers 2

    invoke-static {p0, p1}, Landroid/app/AppOpsManager;->collectKeys(Landroid/util/LongSparseLongArray;Landroid/util/LongSparseArray;)Landroid/util/LongSparseArray;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smdeduplicateDiscreteEvents(Ljava/util/List;)Ljava/util/List;
    .registers 1

    invoke-static {p0}, Landroid/app/AppOpsManager;->deduplicateDiscreteEvents(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smequalsLongSparseLongArray(Landroid/util/LongSparseLongArray;Landroid/util/LongSparseLongArray;)Z
    .registers 2

    invoke-static {p0, p1}, Landroid/app/AppOpsManager;->equalsLongSparseLongArray(Landroid/util/LongSparseLongArray;Landroid/util/LongSparseLongArray;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smgetFormattedStackTrace()Ljava/lang/String;
    .registers 1

    invoke-static {}, Landroid/app/AppOpsManager;->getFormattedStackTrace()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smgetLastEvent(Landroid/util/LongSparseArray;III)Landroid/app/AppOpsManager$NoteOpEvent;
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/app/AppOpsManager;->getLastEvent(Landroid/util/LongSparseArray;III)Landroid/app/AppOpsManager$NoteOpEvent;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smgetService()Lcom/android/internal/app/IAppOpsService;
    .registers 1

    invoke-static {}, Landroid/app/AppOpsManager;->getService()Lcom/android/internal/app/IAppOpsService;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smisCollectingStackTraces()Z
    .registers 1

    invoke-static {}, Landroid/app/AppOpsManager;->isCollectingStackTraces()Z

    move-result v0

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$smlistForFlagsInStates(Ljava/util/List;III)Ljava/util/List;
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/app/AppOpsManager;->listForFlagsInStates(Ljava/util/List;III)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smmergeAttributedOpEntries(Ljava/util/List;)Landroid/app/AppOpsManager$AttributedOpEntry;
    .registers 1

    invoke-static {p0}, Landroid/app/AppOpsManager;->mergeAttributedOpEntries(Ljava/util/List;)Landroid/app/AppOpsManager$AttributedOpEntry;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smreadDiscreteAccessArrayFromParcel(Landroid/os/Parcel;)Ljava/util/List;
    .registers 1

    invoke-static {p0}, Landroid/app/AppOpsManager;->readDiscreteAccessArrayFromParcel(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smreadLongSparseLongArrayFromParcel(Landroid/os/Parcel;)Landroid/util/LongSparseLongArray;
    .registers 1

    invoke-static {p0}, Landroid/app/AppOpsManager;->readLongSparseLongArrayFromParcel(Landroid/os/Parcel;)Landroid/util/LongSparseLongArray;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smsumForFlagsInStates(Landroid/util/LongSparseLongArray;III)J
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/app/AppOpsManager;->sumForFlagsInStates(Landroid/util/LongSparseLongArray;III)J

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic blacklist -$$Nest$smwriteDiscreteAccessArrayToParcel(Ljava/util/List;Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/app/AppOpsManager;->writeDiscreteAccessArrayToParcel(Ljava/util/List;Landroid/os/Parcel;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smwriteLongSparseLongArrayToParcel(Landroid/util/LongSparseLongArray;Landroid/os/Parcel;)V
    .registers 2

    invoke-static {p0, p1}, Landroid/app/AppOpsManager;->writeLongSparseLongArrayToParcel(Landroid/util/LongSparseLongArray;Landroid/os/Parcel;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 63

    .line 231
    const/4 v0, 0x0

    sput-object v0, Landroid/app/AppOpsManager;->sFullLog:Ljava/lang/Boolean;

    .line 262
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Landroid/app/AppOpsManager;->sLock:Ljava/lang/Object;

    .line 265
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    sput-object v1, Landroid/app/AppOpsManager;->sPendingNotedOps:Landroid/util/ArrayMap;

    .line 277
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Landroid/app/AppOpsManager;->sBatchedNoteOpLock:Ljava/lang/Object;

    .line 279
    const/4 v1, 0x0

    sput-boolean v1, Landroid/app/AppOpsManager;->sIsBatchedNoteOpCallScheduled:Z

    .line 301
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Landroid/app/AppOpsManager;->sUnforwardedOps:Ljava/util/ArrayList;

    .line 307
    new-instance v2, Landroid/app/AppOpsManager$1;

    invoke-direct {v2}, Landroid/app/AppOpsManager$1;-><init>()V

    sput-object v2, Landroid/app/AppOpsManager;->sMessageCollector:Landroid/app/AppOpsManager$OnOpNotedCallback;

    .line 495
    const-string v2, "default"

    const-string v3, "foreground"

    const-string v4, "allow"

    const-string/jumbo v5, "ignore"

    const-string v6, "deny"

    filled-new-array {v4, v5, v6, v2, v3}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/app/AppOpsManager;->MODE_NAMES:[Ljava/lang/String;

    .line 625
    const/4 v2, 0x7

    new-array v3, v2, [I

    fill-array-data v3, :array_14b2

    sput-object v3, Landroid/app/AppOpsManager;->UID_STATES:[I

    .line 2690
    const/16 v3, 0xa3

    new-array v4, v3, [B

    sput-object v4, Landroid/app/AppOpsManager;->sAppOpsToNote:[B

    .line 2692
    nop

    .line 2745
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->rangingPermissionEnabled()Z

    move-result v4

    const/16 v5, 0x97

    const/4 v6, -0x1

    if-eqz v4, :cond_55

    move/from16 v46, v5

    goto :goto_57

    :cond_55
    move/from16 v46, v6

    .line 2749
    :goto_57
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->replaceBodySensorPermissionEnabled()Z

    move-result v4

    const/16 v7, 0x95

    if-eqz v4, :cond_62

    move/from16 v48, v7

    goto :goto_64

    :cond_62
    move/from16 v48, v6

    .line 2750
    :goto_64
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->replaceBodySensorPermissionEnabled()Z

    move-result v4

    const/16 v8, 0x96

    if-eqz v4, :cond_6f

    move/from16 v49, v8

    goto :goto_71

    :cond_6f
    move/from16 v49, v6

    .line 2751
    :goto_71
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->replaceBodySensorPermissionEnabled()Z

    move-result v4

    const/16 v9, 0x98

    if-eqz v4, :cond_7c

    move/from16 v50, v9

    goto :goto_7e

    :cond_7c
    move/from16 v50, v6

    .line 2753
    :goto_7e
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/xr/Flags;->xrManifestEntries()Z

    move-result v4

    const/16 v10, 0x9c

    if-eqz v4, :cond_89

    move/from16 v51, v10

    goto :goto_8b

    :cond_89
    move/from16 v51, v6

    .line 2754
    :goto_8b
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/xr/Flags;->xrManifestEntries()Z

    move-result v4

    const/16 v11, 0x9d

    if-eqz v4, :cond_96

    move/from16 v52, v11

    goto :goto_98

    :cond_96
    move/from16 v52, v6

    .line 2755
    :goto_98
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/xr/Flags;->xrManifestEntries()Z

    move-result v4

    const/16 v12, 0x9e

    if-eqz v4, :cond_a3

    move/from16 v53, v12

    goto :goto_a5

    :cond_a3
    move/from16 v53, v6

    .line 2756
    :goto_a5
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/xr/Flags;->xrManifestEntries()Z

    move-result v4

    if-eqz v4, :cond_b0

    const/16 v4, 0x9f

    move/from16 v54, v4

    goto :goto_b2

    :cond_b0
    move/from16 v54, v6

    .line 2757
    :goto_b2
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/xr/Flags;->xrManifestEntries()Z

    move-result v4

    if-eqz v4, :cond_bd

    const/16 v4, 0xa0

    move/from16 v55, v4

    goto :goto_bf

    :cond_bd
    move/from16 v55, v6

    .line 2758
    :goto_bf
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/xr/Flags;->xrManifestEntries()Z

    move-result v4

    if-eqz v4, :cond_ca

    const/16 v4, 0xa1

    move/from16 v56, v4

    goto :goto_cc

    :cond_ca
    move/from16 v56, v6

    .line 2759
    :goto_cc
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/xr/Flags;->xrManifestEntries()Z

    move-result v4

    if-eqz v4, :cond_d7

    const/16 v4, 0xa2

    move/from16 v57, v4

    goto :goto_d9

    :cond_d7
    move/from16 v57, v6

    :goto_d9
    move v4, v7

    const/4 v7, 0x4

    move v13, v8

    const/4 v8, 0x5

    move v14, v9

    const/16 v9, 0x3e

    move v15, v10

    const/16 v10, 0x8

    move/from16 v16, v11

    const/16 v11, 0x9

    move/from16 v17, v12

    const/16 v12, 0x14

    move/from16 v18, v13

    const/16 v13, 0x10

    move/from16 v19, v14

    const/16 v14, 0xe

    move/from16 v20, v15

    const/16 v15, 0x13

    move/from16 v21, v16

    const/16 v16, 0x12

    move/from16 v22, v17

    const/16 v17, 0x39

    move/from16 v23, v18

    const/16 v18, 0x3b

    move/from16 v24, v19

    const/16 v19, 0x3c

    move/from16 v25, v20

    const/16 v20, 0x5a

    move/from16 v26, v21

    const/16 v21, 0x0

    move/from16 v27, v22

    const/16 v22, 0x1

    move/from16 v28, v23

    const/16 v23, 0x33

    move/from16 v29, v24

    const/16 v24, 0x41

    move/from16 v30, v25

    const/16 v25, 0xd

    move/from16 v31, v26

    const/16 v26, 0x6

    move/from16 v32, v27

    const/16 v27, 0x7

    move/from16 v33, v28

    const/16 v28, 0x34

    move/from16 v34, v29

    const/16 v29, 0x35

    move/from16 v35, v30

    const/16 v30, 0x36

    move/from16 v36, v31

    const/16 v31, 0x45

    move/from16 v37, v32

    const/16 v32, 0x4a

    move/from16 v38, v33

    const/16 v33, 0x1b

    move/from16 v39, v34

    const/16 v34, 0x1a

    move/from16 v40, v35

    const/16 v35, 0x38

    move/from16 v41, v36

    const/16 v36, 0x4f

    move/from16 v42, v37

    const/16 v37, 0x51

    move/from16 v43, v38

    const/16 v38, 0x53

    move/from16 v44, v39

    const/16 v39, 0x55

    move/from16 v45, v40

    const/16 v40, 0x7b

    move/from16 v47, v41

    const/16 v41, 0x4d

    move/from16 v58, v42

    const/16 v42, 0x6f

    move/from16 v59, v43

    const/16 v43, 0x72

    move/from16 v60, v44

    const/16 v44, 0x70

    move/from16 v61, v45

    const/16 v45, 0x74

    move/from16 v62, v47

    const/16 v47, 0xb

    move v0, v4

    move/from16 v4, v59

    filled-new-array/range {v7 .. v57}, [I

    move-result-object v7

    sput-object v7, Landroid/app/AppOpsManager;->RUNTIME_PERMISSION_OPS:[I

    .line 2766
    const/16 v7, 0xa

    new-array v7, v7, [I

    fill-array-data v7, :array_14c4

    sput-object v7, Landroid/app/AppOpsManager;->APP_OP_PERMISSION_PACKAGE_OPS:[I

    .line 2783
    const/16 v7, 0xf

    new-array v7, v7, [I

    fill-array-data v7, :array_14dc

    sput-object v7, Landroid/app/AppOpsManager;->APP_OP_PERMISSION_UID_OPS:[I

    .line 2802
    new-array v7, v3, [Landroid/app/AppOpInfo;

    new-instance v8, Landroid/app/AppOpInfo$Builder;

    const-string v9, "android:coarse_location"

    const-string v10, "COARSE_LOCATION"

    invoke-direct {v8, v1, v9, v10}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2804
    const-string v9, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v8, v9}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v8

    .line 2805
    const-string/jumbo v9, "no_share_location"

    invoke-virtual {v8, v9}, Landroid/app/AppOpInfo$Builder;->setRestriction(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v8

    new-instance v10, Landroid/app/AppOpsManager$RestrictionBypass;

    const/4 v11, 0x1

    invoke-direct {v10, v11, v1, v1}, Landroid/app/AppOpsManager$RestrictionBypass;-><init>(ZZZ)V

    .line 2806
    invoke-virtual {v8, v10}, Landroid/app/AppOpInfo$Builder;->setAllowSystemRestrictionBypass(Landroid/app/AppOpsManager$RestrictionBypass;)Landroid/app/AppOpInfo$Builder;

    move-result-object v8

    .line 2807
    invoke-virtual {v8, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v8

    aput-object v8, v7, v1

    new-instance v8, Landroid/app/AppOpInfo$Builder;

    const-string v10, "android:fine_location"

    const-string v11, "FINE_LOCATION"

    const/4 v12, 0x1

    invoke-direct {v8, v12, v10, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2809
    const-string v10, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v8, v10}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v8

    .line 2810
    invoke-virtual {v8, v9}, Landroid/app/AppOpInfo$Builder;->setRestriction(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v8

    new-instance v10, Landroid/app/AppOpsManager$RestrictionBypass;

    const/4 v11, 0x1

    invoke-direct {v10, v11, v1, v1}, Landroid/app/AppOpsManager$RestrictionBypass;-><init>(ZZZ)V

    .line 2811
    invoke-virtual {v8, v10}, Landroid/app/AppOpInfo$Builder;->setAllowSystemRestrictionBypass(Landroid/app/AppOpsManager$RestrictionBypass;)Landroid/app/AppOpInfo$Builder;

    move-result-object v8

    .line 2812
    invoke-virtual {v8, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v8

    const/4 v10, 0x1

    aput-object v8, v7, v10

    new-instance v8, Landroid/app/AppOpInfo$Builder;

    const-string v10, "android:gps"

    const-string v11, "GPS"

    const/4 v12, 0x2

    invoke-direct {v8, v12, v10, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2814
    invoke-virtual {v8, v1}, Landroid/app/AppOpInfo$Builder;->setSwitchCode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v8

    .line 2815
    invoke-virtual {v8, v9}, Landroid/app/AppOpInfo$Builder;->setRestriction(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v8

    .line 2816
    invoke-virtual {v8, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v8

    const/4 v10, 0x2

    aput-object v8, v7, v10

    new-instance v8, Landroid/app/AppOpInfo$Builder;

    const-string v10, "android:vibrate"

    const-string v11, "VIBRATE"

    const/4 v12, 0x3

    invoke-direct {v8, v12, v10, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2818
    const/4 v10, 0x3

    invoke-virtual {v8, v10}, Landroid/app/AppOpInfo$Builder;->setSwitchCode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v8

    const-string v10, "android.permission.VIBRATE"

    invoke-virtual {v8, v10}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v8

    .line 2819
    invoke-virtual {v8, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v8

    const/4 v10, 0x3

    aput-object v8, v7, v10

    new-instance v8, Landroid/app/AppOpInfo$Builder;

    const-string v10, "android:read_contacts"

    const-string v11, "READ_CONTACTS"

    const/4 v12, 0x4

    invoke-direct {v8, v12, v10, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2821
    const-string v10, "android.permission.READ_CONTACTS"

    invoke-virtual {v8, v10}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v8

    .line 2822
    invoke-virtual {v8, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v8

    const/4 v10, 0x4

    aput-object v8, v7, v10

    new-instance v8, Landroid/app/AppOpInfo$Builder;

    const-string v10, "android:write_contacts"

    const-string v11, "WRITE_CONTACTS"

    const/4 v12, 0x5

    invoke-direct {v8, v12, v10, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2824
    const-string v10, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v8, v10}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v8

    .line 2825
    invoke-virtual {v8, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v8

    const/4 v10, 0x5

    aput-object v8, v7, v10

    new-instance v8, Landroid/app/AppOpInfo$Builder;

    const-string v10, "android:read_call_log"

    const-string v11, "READ_CALL_LOG"

    const/4 v12, 0x6

    invoke-direct {v8, v12, v10, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2827
    const-string v10, "android.permission.READ_CALL_LOG"

    invoke-virtual {v8, v10}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v8

    .line 2828
    const-string/jumbo v10, "no_outgoing_calls"

    invoke-virtual {v8, v10}, Landroid/app/AppOpInfo$Builder;->setRestriction(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v8

    .line 2829
    invoke-virtual {v8, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v8

    const/4 v10, 0x6

    aput-object v8, v7, v10

    new-instance v8, Landroid/app/AppOpInfo$Builder;

    const-string v10, "android:write_call_log"

    const-string v11, "WRITE_CALL_LOG"

    invoke-direct {v8, v2, v10, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2831
    const-string v10, "android.permission.WRITE_CALL_LOG"

    invoke-virtual {v8, v10}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v8

    .line 2832
    const-string/jumbo v10, "no_outgoing_calls"

    invoke-virtual {v8, v10}, Landroid/app/AppOpInfo$Builder;->setRestriction(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v8

    .line 2833
    invoke-virtual {v8, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v8

    aput-object v8, v7, v2

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:read_calendar"

    const-string v10, "READ_CALENDAR"

    const/16 v11, 0x8

    invoke-direct {v2, v11, v8, v10}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2835
    const-string v8, "android.permission.READ_CALENDAR"

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2836
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x8

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:write_calendar"

    const-string v10, "WRITE_CALENDAR"

    const/16 v11, 0x9

    invoke-direct {v2, v11, v8, v10}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2838
    const-string v8, "android.permission.WRITE_CALENDAR"

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2839
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x9

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:wifi_scan"

    const-string v10, "WIFI_SCAN"

    const/16 v11, 0xa

    invoke-direct {v2, v11, v8, v10}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2841
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setSwitchCode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2842
    const-string v8, "android.permission.ACCESS_WIFI_STATE"

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2843
    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setRestriction(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    new-instance v8, Landroid/app/AppOpsManager$RestrictionBypass;

    const/4 v10, 0x1

    invoke-direct {v8, v1, v10, v1}, Landroid/app/AppOpsManager$RestrictionBypass;-><init>(ZZZ)V

    .line 2844
    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setAllowSystemRestrictionBypass(Landroid/app/AppOpsManager$RestrictionBypass;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2845
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0xa

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:post_notification"

    const-string v10, "POST_NOTIFICATION"

    const/16 v11, 0xb

    invoke-direct {v2, v11, v8, v10}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2847
    const-string v8, "android.permission.POST_NOTIFICATIONS"

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2848
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0xb

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:neighboring_cells"

    const-string v10, "NEIGHBORING_CELLS"

    const/16 v11, 0xc

    invoke-direct {v2, v11, v8, v10}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2850
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setSwitchCode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0xc

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:call_phone"

    const-string v10, "CALL_PHONE"

    const/16 v11, 0xd

    invoke-direct {v2, v11, v8, v10}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2852
    const/16 v8, 0xd

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setSwitchCode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    const-string v8, "android.permission.CALL_PHONE"

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2853
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0xd

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:read_sms"

    const-string v10, "READ_SMS"

    const/16 v11, 0xe

    invoke-direct {v2, v11, v8, v10}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2855
    const-string v8, "android.permission.READ_SMS"

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2856
    const-string/jumbo v8, "no_sms"

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setRestriction(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2857
    const/4 v10, 0x1

    invoke-virtual {v2, v10}, Landroid/app/AppOpInfo$Builder;->setDisableReset(Z)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v10, 0xe

    aput-object v2, v7, v10

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v10, "android:write_sms"

    const-string v11, "WRITE_SMS"

    const/16 v12, 0xf

    invoke-direct {v2, v12, v10, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2859
    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setRestriction(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2860
    const/4 v10, 0x1

    invoke-virtual {v2, v10}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/app/AppOpInfo$Builder;->setDisableReset(Z)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v10, 0xf

    aput-object v2, v7, v10

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v10, "android:receive_sms"

    const-string v11, "RECEIVE_SMS"

    const/16 v12, 0x10

    invoke-direct {v2, v12, v10, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2862
    const-string v10, "android.permission.RECEIVE_SMS"

    invoke-virtual {v2, v10}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2863
    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setRestriction(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2864
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    const/4 v10, 0x1

    invoke-virtual {v2, v10}, Landroid/app/AppOpInfo$Builder;->setDisableReset(Z)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v10, 0x10

    aput-object v2, v7, v10

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v10, "android:receive_emergency_broadcast"

    const-string v11, "RECEIVE_EMERGENCY_BROADCAST"

    const/16 v12, 0x11

    invoke-direct {v2, v12, v10, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2866
    const/16 v10, 0x10

    invoke-virtual {v2, v10}, Landroid/app/AppOpInfo$Builder;->setSwitchCode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2867
    const-string v10, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    invoke-virtual {v2, v10}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2868
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v10, 0x11

    aput-object v2, v7, v10

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v10, "android:receive_mms"

    const-string v11, "RECEIVE_MMS"

    const/16 v12, 0x12

    invoke-direct {v2, v12, v10, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2870
    const-string v10, "android.permission.RECEIVE_MMS"

    invoke-virtual {v2, v10}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2871
    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setRestriction(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2872
    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v10, 0x12

    aput-object v2, v7, v10

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v10, "android:receive_wap_push"

    const-string v11, "RECEIVE_WAP_PUSH"

    const/16 v12, 0x13

    invoke-direct {v2, v12, v10, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2874
    const-string v10, "android.permission.RECEIVE_WAP_PUSH"

    invoke-virtual {v2, v10}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2875
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    const/4 v10, 0x1

    invoke-virtual {v2, v10}, Landroid/app/AppOpInfo$Builder;->setDisableReset(Z)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v10, 0x13

    aput-object v2, v7, v10

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v10, "android:send_sms"

    const-string v11, "SEND_SMS"

    const/16 v12, 0x14

    invoke-direct {v2, v12, v10, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2877
    const-string v10, "android.permission.SEND_SMS"

    invoke-virtual {v2, v10}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2878
    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setRestriction(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2879
    const/4 v10, 0x1

    invoke-virtual {v2, v10}, Landroid/app/AppOpInfo$Builder;->setDisableReset(Z)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v10, 0x14

    aput-object v2, v7, v10

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v10, "android:read_icc_sms"

    const-string v11, "READ_ICC_SMS"

    const/16 v12, 0x15

    invoke-direct {v2, v12, v10, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2881
    const/16 v10, 0xe

    invoke-virtual {v2, v10}, Landroid/app/AppOpInfo$Builder;->setSwitchCode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    const-string v10, "android.permission.READ_SMS"

    invoke-virtual {v2, v10}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2882
    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setRestriction(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2883
    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v10, 0x15

    aput-object v2, v7, v10

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v10, "android:write_icc_sms"

    const-string v11, "WRITE_ICC_SMS"

    const/16 v12, 0x16

    invoke-direct {v2, v12, v10, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2885
    const/16 v10, 0xf

    invoke-virtual {v2, v10}, Landroid/app/AppOpInfo$Builder;->setSwitchCode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setRestriction(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2886
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v10, 0x16

    aput-object v2, v7, v10

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v10, "android:write_settings"

    const-string v11, "WRITE_SETTINGS"

    const/16 v12, 0x17

    invoke-direct {v2, v12, v10, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2888
    const-string v10, "android.permission.WRITE_SETTINGS"

    invoke-virtual {v2, v10}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v10, 0x17

    aput-object v2, v7, v10

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v10, "android:system_alert_window"

    const-string v11, "SYSTEM_ALERT_WINDOW"

    const/16 v12, 0x18

    invoke-direct {v2, v12, v10, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2891
    const-string v10, "android.permission.SYSTEM_ALERT_WINDOW"

    invoke-virtual {v2, v10}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2892
    const-string/jumbo v10, "no_create_windows"

    invoke-virtual {v2, v10}, Landroid/app/AppOpInfo$Builder;->setRestriction(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    new-instance v10, Landroid/app/AppOpsManager$RestrictionBypass;

    const/4 v11, 0x1

    invoke-direct {v10, v1, v11, v1}, Landroid/app/AppOpsManager$RestrictionBypass;-><init>(ZZZ)V

    .line 2893
    invoke-virtual {v2, v10}, Landroid/app/AppOpInfo$Builder;->setAllowSystemRestrictionBypass(Landroid/app/AppOpsManager$RestrictionBypass;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2894
    invoke-static {}, Landroid/app/AppOpsManager;->getSystemAlertWindowDefault()I

    move-result v10

    invoke-virtual {v2, v10}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v10, 0x18

    aput-object v2, v7, v10

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v10, "android:access_notifications"

    const-string v11, "ACCESS_NOTIFICATIONS"

    const/16 v12, 0x19

    invoke-direct {v2, v12, v10, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2897
    const-string v10, "android.permission.ACCESS_NOTIFICATIONS"

    invoke-virtual {v2, v10}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v10, 0x19

    aput-object v2, v7, v10

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v10, "android:camera"

    const-string v11, "CAMERA"

    const/16 v12, 0x1a

    invoke-direct {v2, v12, v10, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2899
    const-string v10, "android.permission.CAMERA"

    invoke-virtual {v2, v10}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2900
    const-string/jumbo v10, "no_camera"

    invoke-virtual {v2, v10}, Landroid/app/AppOpInfo$Builder;->setRestriction(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2901
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v10, 0x1a

    aput-object v2, v7, v10

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v10, "android:record_audio"

    const-string v11, "RECORD_AUDIO"

    const/16 v12, 0x1b

    invoke-direct {v2, v12, v10, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2903
    const-string v10, "android.permission.RECORD_AUDIO"

    invoke-virtual {v2, v10}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2904
    const-string/jumbo v10, "no_record_audio"

    invoke-virtual {v2, v10}, Landroid/app/AppOpInfo$Builder;->setRestriction(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    new-instance v10, Landroid/app/AppOpsManager$RestrictionBypass;

    const/4 v11, 0x1

    invoke-direct {v10, v1, v1, v11}, Landroid/app/AppOpsManager$RestrictionBypass;-><init>(ZZZ)V

    .line 2905
    invoke-virtual {v2, v10}, Landroid/app/AppOpInfo$Builder;->setAllowSystemRestrictionBypass(Landroid/app/AppOpsManager$RestrictionBypass;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2906
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v10, 0x1b

    aput-object v2, v7, v10

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v10, "android:play_audio"

    const-string v11, "PLAY_AUDIO"

    const/16 v12, 0x1c

    invoke-direct {v2, v12, v10, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2908
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v10, 0x1c

    aput-object v2, v7, v10

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v10, "android:read_clipboard"

    const-string v11, "READ_CLIPBOARD"

    const/16 v12, 0x1d

    invoke-direct {v2, v12, v10, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2910
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v10, 0x1d

    aput-object v2, v7, v10

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v10, "android:write_clipboard"

    const-string v11, "WRITE_CLIPBOARD"

    const/16 v12, 0x1e

    invoke-direct {v2, v12, v10, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2912
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v10, 0x1e

    aput-object v2, v7, v10

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v10, "android:take_media_buttons"

    const-string v11, "TAKE_MEDIA_BUTTONS"

    const/16 v12, 0x1f

    invoke-direct {v2, v12, v10, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2914
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2915
    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v10, 0x1f

    aput-object v2, v7, v10

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v10, "android:take_audio_focus"

    const-string v11, "TAKE_AUDIO_FOCUS"

    const/16 v12, 0x20

    invoke-direct {v2, v12, v10, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2917
    const/4 v10, 0x4

    invoke-virtual {v2, v10}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v10, 0x20

    aput-object v2, v7, v10

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v10, "android:audio_master_volume"

    const-string v11, "AUDIO_MASTER_VOLUME"

    const/16 v12, 0x21

    invoke-direct {v2, v12, v10, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2919
    const/16 v10, 0x21

    invoke-virtual {v2, v10}, Landroid/app/AppOpInfo$Builder;->setSwitchCode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2920
    const-string/jumbo v10, "no_adjust_volume"

    invoke-virtual {v2, v10}, Landroid/app/AppOpInfo$Builder;->setRestriction(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2921
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v11, 0x21

    aput-object v2, v7, v11

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v11, "android:audio_voice_volume"

    const-string v12, "AUDIO_VOICE_VOLUME"

    const/16 v13, 0x22

    invoke-direct {v2, v13, v11, v12}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2923
    invoke-virtual {v2, v10}, Landroid/app/AppOpInfo$Builder;->setRestriction(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2924
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v11, 0x22

    aput-object v2, v7, v11

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v11, "android:audio_ring_volume"

    const-string v12, "AUDIO_RING_VOLUME"

    const/16 v13, 0x23

    invoke-direct {v2, v13, v11, v12}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2926
    invoke-virtual {v2, v10}, Landroid/app/AppOpInfo$Builder;->setRestriction(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2927
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v11, 0x23

    aput-object v2, v7, v11

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v11, "android:audio_media_volume"

    const-string v12, "AUDIO_MEDIA_VOLUME"

    const/16 v13, 0x24

    invoke-direct {v2, v13, v11, v12}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2929
    invoke-virtual {v2, v10}, Landroid/app/AppOpInfo$Builder;->setRestriction(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2930
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v11, 0x24

    aput-object v2, v7, v11

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v11, "android:audio_alarm_volume"

    const-string v12, "AUDIO_ALARM_VOLUME"

    const/16 v13, 0x25

    invoke-direct {v2, v13, v11, v12}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2932
    invoke-virtual {v2, v10}, Landroid/app/AppOpInfo$Builder;->setRestriction(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2933
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v11, 0x25

    aput-object v2, v7, v11

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v11, "android:audio_notification_volume"

    const-string v12, "AUDIO_NOTIFICATION_VOLUME"

    const/16 v13, 0x26

    invoke-direct {v2, v13, v11, v12}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2935
    const/16 v11, 0x26

    invoke-virtual {v2, v11}, Landroid/app/AppOpInfo$Builder;->setSwitchCode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2936
    invoke-virtual {v2, v10}, Landroid/app/AppOpInfo$Builder;->setRestriction(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2937
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    aput-object v2, v7, v11

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v11, "android:audio_bluetooth_volume"

    const-string v12, "AUDIO_BLUETOOTH_VOLUME"

    const/16 v13, 0x27

    invoke-direct {v2, v13, v11, v12}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2939
    invoke-virtual {v2, v10}, Landroid/app/AppOpInfo$Builder;->setRestriction(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2940
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v11, 0x27

    aput-object v2, v7, v11

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v11, "android:wake_lock"

    const-string v12, "WAKE_LOCK"

    const/16 v13, 0x28

    invoke-direct {v2, v13, v11, v12}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2942
    const-string v11, "android.permission.WAKE_LOCK"

    invoke-virtual {v2, v11}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2943
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v11, 0x28

    aput-object v2, v7, v11

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v11, "android:monitor_location"

    const-string v12, "MONITOR_LOCATION"

    const/16 v13, 0x29

    invoke-direct {v2, v13, v11, v12}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2945
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setSwitchCode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2946
    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setRestriction(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2947
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v11, 0x29

    aput-object v2, v7, v11

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v11, "android:monitor_location_high_power"

    const-string v12, "MONITOR_HIGH_POWER_LOCATION"

    const/16 v13, 0x2a

    invoke-direct {v2, v13, v11, v12}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2949
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setSwitchCode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2950
    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setRestriction(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2951
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v9, 0x2a

    aput-object v2, v7, v9

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v9, "android:get_usage_stats"

    const-string v11, "GET_USAGE_STATS"

    const/16 v12, 0x2b

    invoke-direct {v2, v12, v9, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2953
    const-string v9, "android.permission.PACKAGE_USAGE_STATS"

    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v9, 0x2b

    aput-object v2, v7, v9

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v9, "android:mute_microphone"

    const-string v11, "MUTE_MICROPHONE"

    const/16 v12, 0x2c

    invoke-direct {v2, v12, v9, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2955
    const-string/jumbo v9, "no_unmute_microphone"

    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setRestriction(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2956
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v9, 0x2c

    aput-object v2, v7, v9

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v9, "android:toast_window"

    const-string v11, "TOAST_WINDOW"

    const/16 v12, 0x2d

    invoke-direct {v2, v12, v9, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2958
    const-string/jumbo v9, "no_create_windows"

    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setRestriction(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    new-instance v9, Landroid/app/AppOpsManager$RestrictionBypass;

    const/4 v11, 0x1

    invoke-direct {v9, v1, v11, v1}, Landroid/app/AppOpsManager$RestrictionBypass;-><init>(ZZZ)V

    .line 2959
    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setAllowSystemRestrictionBypass(Landroid/app/AppOpsManager$RestrictionBypass;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2960
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v9, 0x2d

    aput-object v2, v7, v9

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v9, "android:project_media"

    const-string v11, "PROJECT_MEDIA"

    const/16 v12, 0x2e

    invoke-direct {v2, v12, v9, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2962
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v9, 0x2e

    aput-object v2, v7, v9

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v9, "android:activate_vpn"

    const-string v11, "ACTIVATE_VPN"

    const/16 v12, 0x2f

    invoke-direct {v2, v12, v9, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2964
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v9, 0x2f

    aput-object v2, v7, v9

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v9, "android:write_wallpaper"

    const-string v11, "WRITE_WALLPAPER"

    const/16 v12, 0x30

    invoke-direct {v2, v12, v9, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2966
    const-string/jumbo v9, "no_wallpaper"

    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setRestriction(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2967
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v9, 0x30

    aput-object v2, v7, v9

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v9, "android:assist_structure"

    const-string v11, "ASSIST_STRUCTURE"

    const/16 v12, 0x31

    invoke-direct {v2, v12, v9, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2969
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v9, 0x31

    aput-object v2, v7, v9

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v9, "android:assist_screenshot"

    const-string v11, "ASSIST_SCREENSHOT"

    const/16 v12, 0x32

    invoke-direct {v2, v12, v9, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2971
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2972
    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v9, 0x32

    aput-object v2, v7, v9

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v9, "android:read_phone_state"

    const-string v11, "READ_PHONE_STATE"

    const/16 v12, 0x33

    invoke-direct {v2, v12, v9, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2974
    const-string v9, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2975
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v9, 0x33

    aput-object v2, v7, v9

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v9, "android:add_voicemail"

    const-string v11, "ADD_VOICEMAIL"

    const/16 v12, 0x34

    invoke-direct {v2, v12, v9, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2977
    const-string v9, "com.android.voicemail.permission.ADD_VOICEMAIL"

    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2978
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v9, 0x34

    aput-object v2, v7, v9

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v9, "android:use_sip"

    const-string v11, "USE_SIP"

    const/16 v12, 0x35

    invoke-direct {v2, v12, v9, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2980
    const-string v9, "android.permission.USE_SIP"

    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2981
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v9, 0x35

    aput-object v2, v7, v9

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v9, "android:process_outgoing_calls"

    const-string v11, "PROCESS_OUTGOING_CALLS"

    const/16 v12, 0x36

    invoke-direct {v2, v12, v9, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2983
    const/16 v9, 0x36

    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setSwitchCode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2984
    const-string v9, "android.permission.PROCESS_OUTGOING_CALLS"

    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2985
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v9, 0x36

    aput-object v2, v7, v9

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v9, "android:use_fingerprint"

    const-string v11, "USE_FINGERPRINT"

    const/16 v12, 0x37

    invoke-direct {v2, v12, v9, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2987
    const-string v9, "android.permission.USE_FINGERPRINT"

    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2988
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v9, 0x37

    aput-object v2, v7, v9

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v9, "android:body_sensors"

    const-string v11, "BODY_SENSORS"

    const/16 v12, 0x38

    invoke-direct {v2, v12, v9, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2990
    const-string v9, "android.permission.BODY_SENSORS"

    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2991
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v9, 0x38

    aput-object v2, v7, v9

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v9, "android:read_cell_broadcasts"

    const-string v11, "READ_CELL_BROADCASTS"

    const/16 v12, 0x39

    invoke-direct {v2, v12, v9, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2993
    const-string v9, "android.permission.READ_CELL_BROADCASTS"

    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2994
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setDisableReset(Z)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v9, 0x39

    aput-object v2, v7, v9

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v9, "android:mock_location"

    const-string v11, "MOCK_LOCATION"

    const/16 v12, 0x3a

    invoke-direct {v2, v12, v9, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2996
    const/4 v9, 0x2

    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v9, 0x3a

    aput-object v2, v7, v9

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v9, "android:read_external_storage"

    const-string v11, "READ_EXTERNAL_STORAGE"

    const/16 v12, 0x3b

    invoke-direct {v2, v12, v9, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2998
    const-string v9, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 2999
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v9, 0x3b

    aput-object v2, v7, v9

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v9, "android:write_external_storage"

    const-string v11, "WRITE_EXTERNAL_STORAGE"

    const/16 v12, 0x3c

    invoke-direct {v2, v12, v9, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3001
    const-string v9, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3002
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v9, 0x3c

    aput-object v2, v7, v9

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v9, "android:turn_screen_on"

    const-string v11, "TURN_SCREEN_ON"

    const/16 v12, 0x3d

    invoke-direct {v2, v12, v9, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3004
    const-string v9, "android.permission.TURN_SCREEN_ON"

    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3005
    const/4 v9, 0x3

    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v9, 0x3d

    aput-object v2, v7, v9

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v9, "android:get_accounts"

    const-string v11, "GET_ACCOUNTS"

    const/16 v12, 0x3e

    invoke-direct {v2, v12, v9, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3007
    const-string v9, "android.permission.GET_ACCOUNTS"

    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3008
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v9, 0x3e

    aput-object v2, v7, v9

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v9, "android:run_in_background"

    const-string v11, "RUN_IN_BACKGROUND"

    const/16 v12, 0x3f

    invoke-direct {v2, v12, v9, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3010
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3011
    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v9, 0x3f

    aput-object v2, v7, v9

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v9, "android:audio_accessibility_volume"

    const-string v11, "AUDIO_ACCESSIBILITY_VOLUME"

    const/16 v12, 0x40

    invoke-direct {v2, v12, v9, v11}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3014
    invoke-virtual {v2, v10}, Landroid/app/AppOpInfo$Builder;->setRestriction(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3015
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v9, 0x40

    aput-object v2, v7, v9

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v9, "android:read_phone_numbers"

    const-string v10, "READ_PHONE_NUMBERS"

    const/16 v11, 0x41

    invoke-direct {v2, v11, v9, v10}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3017
    const-string v9, "android.permission.READ_PHONE_NUMBERS"

    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3018
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v9, 0x41

    aput-object v2, v7, v9

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v9, "android:request_install_packages"

    const-string v10, "REQUEST_INSTALL_PACKAGES"

    const/16 v11, 0x42

    invoke-direct {v2, v11, v9, v10}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3020
    const/16 v9, 0x42

    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setSwitchCode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3021
    const-string v9, "android.permission.REQUEST_INSTALL_PACKAGES"

    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v9, 0x42

    aput-object v2, v7, v9

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v9, "android:picture_in_picture"

    const-string v10, "PICTURE_IN_PICTURE"

    const/16 v11, 0x43

    invoke-direct {v2, v11, v9, v10}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3023
    const/16 v9, 0x43

    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setSwitchCode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3024
    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    aput-object v2, v7, v9

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v9, "android:instant_app_start_foreground"

    const-string v10, "INSTANT_APP_START_FOREGROUND"

    const/16 v11, 0x44

    invoke-direct {v2, v11, v9, v10}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3027
    const-string v9, "android.permission.INSTANT_APP_FOREGROUND_SERVICE"

    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v9, 0x44

    aput-object v2, v7, v9

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v9, "android:answer_phone_calls"

    const-string v10, "ANSWER_PHONE_CALLS"

    const/16 v11, 0x45

    invoke-direct {v2, v11, v9, v10}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3029
    const/16 v9, 0x45

    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setSwitchCode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3030
    const-string v9, "android.permission.ANSWER_PHONE_CALLS"

    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3031
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v9, 0x45

    aput-object v2, v7, v9

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v9, "android:run_any_in_background"

    const-string v10, "RUN_ANY_IN_BACKGROUND"

    const/16 v11, 0x46

    invoke-direct {v2, v11, v9, v10}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3034
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v9, 0x46

    aput-object v2, v7, v9

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v9, "android:change_wifi_state"

    const-string v10, "CHANGE_WIFI_STATE"

    const/16 v11, 0x47

    invoke-direct {v2, v11, v9, v10}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3036
    const/16 v9, 0x47

    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setSwitchCode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3037
    const-string v9, "android.permission.CHANGE_WIFI_STATE"

    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3038
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v9, 0x47

    aput-object v2, v7, v9

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v9, "android:request_delete_packages"

    const-string v10, "REQUEST_DELETE_PACKAGES"

    const/16 v11, 0x48

    invoke-direct {v2, v11, v9, v10}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3041
    const-string v9, "android.permission.REQUEST_DELETE_PACKAGES"

    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3042
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v9, 0x48

    aput-object v2, v7, v9

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v9, "android:bind_accessibility_service"

    const-string v10, "BIND_ACCESSIBILITY_SERVICE"

    const/16 v11, 0x49

    invoke-direct {v2, v11, v9, v10}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3045
    const-string v9, "android.permission.BIND_ACCESSIBILITY_SERVICE"

    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3046
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v9, 0x49

    aput-object v2, v7, v9

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v9, "android:accept_handover"

    const-string v10, "ACCEPT_HANDOVER"

    const/16 v11, 0x4a

    invoke-direct {v2, v11, v9, v10}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3048
    const/16 v9, 0x4a

    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setSwitchCode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3049
    const-string v9, "android.permission.ACCEPT_HANDOVER"

    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3050
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v9, 0x4a

    aput-object v2, v7, v9

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v9, "android:manage_ipsec_tunnels"

    const-string v10, "MANAGE_IPSEC_TUNNELS"

    const/16 v11, 0x4b

    invoke-direct {v2, v11, v9, v10}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3053
    const-string v9, "android.permission.MANAGE_IPSEC_TUNNELS"

    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3054
    const/4 v9, 0x2

    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v9, 0x4b

    aput-object v2, v7, v9

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v9, "android:start_foreground"

    const-string v10, "START_FOREGROUND"

    const/16 v11, 0x4c

    invoke-direct {v2, v11, v9, v10}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3056
    const-string v9, "android.permission.FOREGROUND_SERVICE"

    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3057
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v9, 0x4c

    aput-object v2, v7, v9

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v9, "android:bluetooth_scan"

    const-string v10, "BLUETOOTH_SCAN"

    const/16 v11, 0x4d

    invoke-direct {v2, v11, v9, v10}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3059
    const-string v9, "android.permission.BLUETOOTH_SCAN"

    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    new-instance v9, Landroid/app/AppOpsManager$RestrictionBypass;

    const/4 v10, 0x1

    invoke-direct {v9, v1, v10, v1}, Landroid/app/AppOpsManager$RestrictionBypass;-><init>(ZZZ)V

    .line 3060
    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setAllowSystemRestrictionBypass(Landroid/app/AppOpsManager$RestrictionBypass;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3061
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v9, 0x4d

    aput-object v2, v7, v9

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v9, "android:use_biometric"

    const-string v10, "USE_BIOMETRIC"

    const/16 v11, 0x4e

    invoke-direct {v2, v11, v9, v10}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3063
    const-string v9, "android.permission.USE_BIOMETRIC"

    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3064
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v9, 0x4e

    aput-object v2, v7, v9

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v9, "android:activity_recognition"

    const-string v10, "ACTIVITY_RECOGNITION"

    const/16 v11, 0x4f

    invoke-direct {v2, v11, v9, v10}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3067
    const-string v9, "android.permission.ACTIVITY_RECOGNITION"

    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3068
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v9, 0x4f

    aput-object v2, v7, v9

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v9, "android:sms_financial_transactions"

    const-string v10, "SMS_FINANCIAL_TRANSACTIONS"

    const/16 v11, 0x50

    invoke-direct {v2, v11, v9, v10}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3071
    const-string v9, "android.permission.SMS_FINANCIAL_TRANSACTIONS"

    invoke-virtual {v2, v9}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3072
    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setRestriction(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x50

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:read_media_audio"

    const-string v9, "READ_MEDIA_AUDIO"

    const/16 v10, 0x51

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3074
    const-string v8, "android.permission.READ_MEDIA_AUDIO"

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3075
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x51

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:write_media_audio"

    const-string v9, "WRITE_MEDIA_AUDIO"

    const/16 v10, 0x52

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3077
    const/4 v8, 0x2

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x52

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:read_media_video"

    const-string v9, "READ_MEDIA_VIDEO"

    const/16 v10, 0x53

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3079
    const-string v8, "android.permission.READ_MEDIA_VIDEO"

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3080
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x53

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:write_media_video"

    const-string v9, "WRITE_MEDIA_VIDEO"

    const/16 v10, 0x54

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3082
    const/4 v8, 0x2

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setDisableReset(Z)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x54

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:read_media_images"

    const-string v9, "READ_MEDIA_IMAGES"

    const/16 v10, 0x55

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3084
    const-string v8, "android.permission.READ_MEDIA_IMAGES"

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3085
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x55

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:write_media_images"

    const-string v9, "WRITE_MEDIA_IMAGES"

    const/16 v10, 0x56

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3087
    const/4 v8, 0x2

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setDisableReset(Z)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x56

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:legacy_storage"

    const-string v9, "LEGACY_STORAGE"

    const/16 v10, 0x57

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3089
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setDisableReset(Z)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x57

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:access_accessibility"

    const-string v9, "ACCESS_ACCESSIBILITY"

    const/16 v10, 0x58

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3091
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x58

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:read_device_identifiers"

    const-string v9, "READ_DEVICE_IDENTIFIERS"

    const/16 v10, 0x59

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3093
    const/4 v8, 0x2

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x59

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:access_media_location"

    const-string v9, "ACCESS_MEDIA_LOCATION"

    const/16 v10, 0x5a

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3095
    const-string v8, "android.permission.ACCESS_MEDIA_LOCATION"

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3096
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x5a

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:query_all_packages"

    const-string v9, "QUERY_ALL_PACKAGES"

    const/16 v10, 0x5b

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3098
    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x5b

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:manage_external_storage"

    const-string v9, "MANAGE_EXTERNAL_STORAGE"

    const/16 v10, 0x5c

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3101
    const-string v8, "android.permission.MANAGE_EXTERNAL_STORAGE"

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x5c

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:interact_across_profiles"

    const-string v9, "INTERACT_ACROSS_PROFILES"

    const/16 v10, 0x5d

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3104
    const-string v8, "android.permission.INTERACT_ACROSS_PROFILES"

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x5d

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:activate_platform_vpn"

    const-string v9, "ACTIVATE_PLATFORM_VPN"

    const/16 v10, 0x5e

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3106
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x5e

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:loader_usage_stats"

    const-string v9, "LOADER_USAGE_STATS"

    const/16 v10, 0x5f

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3108
    const-string v8, "android.permission.LOADER_USAGE_STATS"

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x5f

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, ""

    const-string v9, ""

    invoke-direct {v2, v6, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3109
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x60

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:auto_revoke_permissions_if_unused"

    const-string v9, "AUTO_REVOKE_PERMISSIONS_IF_UNUSED"

    const/16 v10, 0x61

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3112
    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x61

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:auto_revoke_managed_by_installer"

    const-string v9, "AUTO_REVOKE_MANAGED_BY_INSTALLER"

    const/16 v10, 0x62

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3115
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x62

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:no_isolated_storage"

    const-string v9, "NO_ISOLATED_STORAGE"

    const/16 v10, 0x63

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3117
    const/4 v8, 0x2

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3118
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setDisableReset(Z)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x63

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:phone_call_microphone"

    const-string v9, "PHONE_CALL_MICROPHONE"

    const/16 v10, 0x64

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3120
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x64

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:phone_call_camera"

    const-string v9, "PHONE_CALL_CAMERA"

    const/16 v10, 0x65

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3122
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x65

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:record_audio_hotword"

    const-string v9, "RECORD_AUDIO_HOTWORD"

    const/16 v10, 0x66

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3124
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x66

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:manage_ongoing_calls"

    const-string v9, "MANAGE_ONGOING_CALLS"

    const/16 v10, 0x67

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3126
    const-string v8, "android.permission.MANAGE_ONGOING_CALLS"

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3127
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setDisableReset(Z)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x67

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:manage_credentials"

    const-string v9, "MANAGE_CREDENTIALS"

    const/16 v10, 0x68

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3129
    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x68

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:use_icc_auth_with_device_identifier"

    const-string v9, "USE_ICC_AUTH_WITH_DEVICE_IDENTIFIER"

    const/16 v10, 0x69

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3132
    const-string v8, "android.permission.USE_ICC_AUTH_WITH_DEVICE_IDENTIFIER"

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3133
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setDisableReset(Z)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x69

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:record_audio_output"

    const-string v9, "RECORD_AUDIO_OUTPUT"

    const/16 v10, 0x6a

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3135
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x6a

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:schedule_exact_alarm"

    const-string v9, "SCHEDULE_EXACT_ALARM"

    const/16 v10, 0x6b

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3137
    const-string v8, "android.permission.SCHEDULE_EXACT_ALARM"

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3138
    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x6b

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:fine_location_source"

    const-string v9, "FINE_LOCATION_SOURCE"

    const/16 v10, 0x6c

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3140
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setSwitchCode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3141
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x6c

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:coarse_location_source"

    const-string v9, "COARSE_LOCATION_SOURCE"

    const/16 v10, 0x6d

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3143
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setSwitchCode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3144
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x6d

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:manage_media"

    const-string v9, "MANAGE_MEDIA"

    const/16 v10, 0x6e

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3146
    const-string v8, "android.permission.MANAGE_MEDIA"

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x6e

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:bluetooth_connect"

    const-string v9, "BLUETOOTH_CONNECT"

    const/16 v10, 0x6f

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3148
    const-string v8, "android.permission.BLUETOOTH_CONNECT"

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3149
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x6f

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:uwb_ranging"

    const-string v9, "UWB_RANGING"

    const/16 v10, 0x70

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3151
    const-string v8, "android.permission.UWB_RANGING"

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3152
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x70

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:activity_recognition_source"

    const-string v9, "ACTIVITY_RECOGNITION_SOURCE"

    const/16 v10, 0x71

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3155
    const/16 v8, 0x4f

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setSwitchCode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3156
    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x71

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:bluetooth_advertise"

    const-string v9, "BLUETOOTH_ADVERTISE"

    const/16 v10, 0x72

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3158
    const-string v8, "android.permission.BLUETOOTH_ADVERTISE"

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3159
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x72

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:record_incoming_phone_audio"

    const-string v9, "RECORD_INCOMING_PHONE_AUDIO"

    const/16 v10, 0x73

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3161
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x73

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:nearby_wifi_devices"

    const-string v9, "NEARBY_WIFI_DEVICES"

    const/16 v10, 0x74

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3163
    const-string v8, "android.permission.NEARBY_WIFI_DEVICES"

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3164
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x74

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:establish_vpn_service"

    const-string v9, "ESTABLISH_VPN_SERVICE"

    const/16 v10, 0x75

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3166
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x75

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:establish_vpn_manager"

    const-string v9, "ESTABLISH_VPN_MANAGER"

    const/16 v10, 0x76

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3168
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x76

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:access_restricted_settings"

    const-string v9, "ACCESS_RESTRICTED_SETTINGS"

    const/16 v10, 0x77

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3170
    const/4 v8, 0x3

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3171
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setDisableReset(Z)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setRestrictRead(Z)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x77

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:receive_ambient_trigger_audio"

    const-string v9, "RECEIVE_SOUNDTRIGGER_AUDIO"

    const/16 v10, 0x78

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3173
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3174
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setForceCollectNotes(Z)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x78

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:receive_explicit_user_interaction_audio"

    const-string v9, "RECEIVE_EXPLICIT_USER_INTERACTION_AUDIO"

    const/16 v10, 0x79

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3177
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3178
    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x79

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:run_user_initiated_jobs"

    const-string v9, "RUN_USER_INITIATED_JOBS"

    const/16 v10, 0x7a

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3180
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3181
    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x7a

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:read_media_visual_user_selected"

    const-string v9, "READ_MEDIA_VISUAL_USER_SELECTED"

    const/16 v10, 0x7b

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3184
    const-string v8, "android.permission.READ_MEDIA_VISUAL_USER_SELECTED"

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3185
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x7b

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:system_exempt_from_suspension"

    const-string v9, "SYSTEM_EXEMPT_FROM_SUSPENSION"

    const/16 v10, 0x7c

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3189
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setDisableReset(Z)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x7c

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:system_exempt_from_dismissible_notifications"

    const-string v9, "SYSTEM_EXEMPT_FROM_DISMISSIBLE_NOTIFICATIONS"

    const/16 v10, 0x7d

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3193
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setDisableReset(Z)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x7d

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:read_write_health_data"

    const-string v9, "READ_WRITE_HEALTH_DATA"

    const/16 v10, 0x7e

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3195
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x7e

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:foreground_service_special_use"

    const-string v9, "FOREGROUND_SERVICE_SPECIAL_USE"

    const/16 v10, 0x7f

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3198
    const-string v8, "android.permission.FOREGROUND_SERVICE_SPECIAL_USE"

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x7f

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:system_exempt_from_power_restrictions"

    const-string v9, "SYSTEM_EXEMPT_FROM_POWER_RESTRICTIONS"

    const/16 v10, 0x80

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3202
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setDisableReset(Z)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x80

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:system_exempt_from_hibernation"

    const-string v9, "SYSTEM_EXEMPT_FROM_HIBERNATION"

    const/16 v10, 0x81

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3206
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setDisableReset(Z)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x81

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:system_exempt_from_activity_bg_start_restriction"

    const-string v9, "SYSTEM_EXEMPT_FROM_ACTIVITY_BG_START_RESTRICTION"

    const/16 v10, 0x82

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3210
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setDisableReset(Z)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x82

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:capture_consentless_bugreport_on_userdebug_build"

    const-string v9, "CAPTURE_CONSENTLESS_BUGREPORT_ON_USERDEBUG_BUILD"

    const/16 v10, 0x83

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3215
    const-string v8, "android.permission.CAPTURE_CONSENTLESS_BUGREPORT_ON_USERDEBUG_BUILD"

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3216
    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x83

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:deprecated_2"

    const-string v9, "DEPRECATED_2"

    const/16 v10, 0x84

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3218
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x84

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:use_full_screen_intent"

    const-string v9, "USE_FULL_SCREEN_INTENT"

    const/16 v10, 0x85

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3220
    const-string v8, "android.permission.USE_FULL_SCREEN_INTENT"

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3221
    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x85

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:camera_sandboxed"

    const-string v9, "CAMERA_SANDBOXED"

    const/16 v10, 0x86

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3223
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x86

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:record_audio_sandboxed"

    const-string v9, "RECORD_AUDIO_SANDBOXED"

    const/16 v10, 0x87

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3225
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x87

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:receive_sandbox_trigger_audio"

    const-string v9, "RECEIVE_SANDBOX_TRIGGER_AUDIO"

    const/16 v10, 0x88

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3229
    const-string v8, "android.permission.RECEIVE_SANDBOX_TRIGGER_AUDIO"

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3230
    const/4 v8, 0x3

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x88

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:deprecated_3"

    const-string v9, "DEPRECATED_3"

    const/16 v10, 0x89

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3232
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x89

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:create_accessibility_overlay"

    const-string v9, "CREATE_ACCESSIBILITY_OVERLAY"

    const/16 v10, 0x8a

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3236
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x8a

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:media_routing_control"

    const-string v9, "MEDIA_ROUTING_CONTROL"

    const/16 v10, 0x8b

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3239
    const-string v8, "android.permission.MEDIA_ROUTING_CONTROL"

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x8b

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:enable_mobile_data_by_user"

    const-string v9, "ENABLE_MOBILE_DATA_BY_USER"

    const/16 v10, 0x8c

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3241
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x8c

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:reserved_for_testing"

    const-string v9, "OP_RESERVED_FOR_TESTING"

    const/16 v10, 0x8d

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3243
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x8d

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:rapid_clear_notifications_by_listener"

    const-string v9, "RAPID_CLEAR_NOTIFICATIONS_BY_LISTENER"

    const/16 v10, 0x8e

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3247
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x8e

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:read_system_grammatical_gender"

    const-string v9, "READ_SYSTEM_GRAMMATICAL_GENDER"

    const/16 v10, 0x8f

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3252
    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x8f

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:deprecated_4"

    const-string v9, "DEPRECATED_4"

    const/16 v10, 0x90

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3254
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x90

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:archive_icon_overlay"

    const-string v9, "ARCHIVE_ICON_OVERLAY"

    const/16 v10, 0x91

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3257
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x91

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:unarchival_support"

    const-string v9, "UNARCHIVAL_CONFIRMATION"

    const/16 v10, 0x92

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3260
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x92

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:emergency_location"

    const-string v9, "EMERGENCY_LOCATION"

    const/16 v10, 0x93

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3262
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3265
    const-string v8, "android.permission.LOCATION_BYPASS"

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x93

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:receive_sensitive_notifications"

    const-string v9, "RECEIVE_SENSITIVE_NOTIFICATIONS"

    const/16 v10, 0x94

    invoke-direct {v2, v10, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3268
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    const/16 v8, 0x94

    aput-object v2, v7, v8

    new-instance v2, Landroid/app/AppOpInfo$Builder;

    const-string v8, "android:read_heart_rate"

    const-string v9, "READ_HEART_RATE"

    invoke-direct {v2, v0, v8, v9}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3270
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->replaceBodySensorPermissionEnabled()Z

    move-result v8

    if-eqz v8, :cond_11fe

    .line 3271
    const-string v8, "android.permission.health.READ_HEART_RATE"

    goto :goto_11ff

    :cond_11fe
    const/4 v8, 0x0

    .line 3270
    :goto_11ff
    invoke-virtual {v2, v8}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    .line 3272
    invoke-virtual {v2, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v2

    aput-object v2, v7, v0

    new-instance v0, Landroid/app/AppOpInfo$Builder;

    const-string v2, "android:read_skin_temperature"

    const-string v8, "READ_SKIN_TEMPERATURE"

    invoke-direct {v0, v4, v2, v8}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3275
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->replaceBodySensorPermissionEnabled()Z

    move-result v2

    if-eqz v2, :cond_121f

    .line 3276
    const-string v2, "android.permission.health.READ_SKIN_TEMPERATURE"

    goto :goto_1220

    :cond_121f
    const/4 v2, 0x0

    .line 3274
    :goto_1220
    invoke-virtual {v0, v2}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v0

    .line 3277
    invoke-virtual {v0, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v0

    aput-object v0, v7, v4

    new-instance v0, Landroid/app/AppOpInfo$Builder;

    const-string v2, "android:ranging"

    const-string v4, "RANGING"

    invoke-direct {v0, v5, v2, v4}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3279
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->rangingPermissionEnabled()Z

    move-result v2

    if-eqz v2, :cond_1240

    .line 3280
    const-string v2, "android.permission.RANGING"

    goto :goto_1241

    :cond_1240
    const/4 v2, 0x0

    .line 3279
    :goto_1241
    invoke-virtual {v0, v2}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v0

    .line 3281
    invoke-virtual {v0, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v0

    aput-object v0, v7, v5

    new-instance v0, Landroid/app/AppOpInfo$Builder;

    const-string v2, "android:read_oxygen_saturation"

    const-string v4, "READ_OXYGEN_SATURATION"

    const/16 v14, 0x98

    invoke-direct {v0, v14, v2, v4}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3284
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->replaceBodySensorPermissionEnabled()Z

    move-result v2

    if-eqz v2, :cond_1263

    .line 3285
    const-string v2, "android.permission.health.READ_OXYGEN_SATURATION"

    goto :goto_1264

    :cond_1263
    const/4 v2, 0x0

    .line 3283
    :goto_1264
    invoke-virtual {v0, v2}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v0

    .line 3286
    invoke-virtual {v0, v1}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v0

    const/16 v60, 0x98

    aput-object v0, v7, v60

    new-instance v0, Landroid/app/AppOpInfo$Builder;

    const-string v2, "android:write_system_preferences"

    const-string v4, "WRITE_SYSTEM_PREFERENCES"

    const/16 v5, 0x99

    invoke-direct {v0, v5, v2, v4}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3289
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/settingslib/flags/Flags;->writeSystemPreferencePermissionEnabled()Z

    move-result v2

    if-eqz v2, :cond_1288

    .line 3290
    const-string v2, "android.permission.WRITE_SYSTEM_PREFERENCES"

    goto :goto_1289

    :cond_1288
    const/4 v2, 0x0

    .line 3288
    :goto_1289
    invoke-virtual {v0, v2}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v0

    .line 3290
    invoke-virtual {v0}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v0

    const/16 v2, 0x99

    aput-object v0, v7, v2

    new-instance v0, Landroid/app/AppOpInfo$Builder;

    const-string v2, "android:control_audio"

    const-string v4, "CONTROL_AUDIO"

    const/16 v5, 0x9a

    invoke-direct {v0, v5, v2, v4}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3292
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v0

    const/16 v2, 0x9a

    aput-object v0, v7, v2

    new-instance v0, Landroid/app/AppOpInfo$Builder;

    const-string v2, "android:control_audio_partial"

    const-string v4, "CONTROL_AUDIO_PARTIAL"

    const/16 v5, 0x9b

    invoke-direct {v0, v5, v2, v4}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3294
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/app/AppOpInfo$Builder;->setDefaultMode(I)Landroid/app/AppOpInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v0

    const/16 v2, 0x9b

    aput-object v0, v7, v2

    new-instance v0, Landroid/app/AppOpInfo$Builder;

    const-string v2, "android:eye_tracking_coarse"

    const-string v4, "EYE_TRACKING_COARSE"

    const/16 v15, 0x9c

    invoke-direct {v0, v15, v2, v4}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3297
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/xr/Flags;->xrManifestEntries()Z

    move-result v2

    if-eqz v2, :cond_12d9

    .line 3298
    const-string v2, "android.permission.EYE_TRACKING_COARSE"

    goto :goto_12da

    :cond_12d9
    const/4 v2, 0x0

    .line 3297
    :goto_12da
    invoke-virtual {v0, v2}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v0

    .line 3299
    invoke-virtual {v0}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v0

    const/16 v61, 0x9c

    aput-object v0, v7, v61

    new-instance v0, Landroid/app/AppOpInfo$Builder;

    const-string v2, "android:eye_tracking_fine"

    const-string v4, "EYE_TRACKING_FINE"

    const/16 v5, 0x9d

    invoke-direct {v0, v5, v2, v4}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3302
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/xr/Flags;->xrManifestEntries()Z

    move-result v2

    if-eqz v2, :cond_12fa

    .line 3303
    const-string v2, "android.permission.EYE_TRACKING_FINE"

    goto :goto_12fb

    :cond_12fa
    const/4 v2, 0x0

    .line 3302
    :goto_12fb
    invoke-virtual {v0, v2}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v0

    .line 3304
    invoke-virtual {v0}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v0

    const/16 v62, 0x9d

    aput-object v0, v7, v62

    new-instance v0, Landroid/app/AppOpInfo$Builder;

    const-string v2, "android:face_tracking"

    const-string v4, "FACE_TRACKING"

    const/16 v5, 0x9e

    invoke-direct {v0, v5, v2, v4}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3307
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/xr/Flags;->xrManifestEntries()Z

    move-result v2

    if-eqz v2, :cond_131b

    .line 3308
    const-string v2, "android.permission.FACE_TRACKING"

    goto :goto_131c

    :cond_131b
    const/4 v2, 0x0

    .line 3307
    :goto_131c
    invoke-virtual {v0, v2}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v0

    .line 3309
    invoke-virtual {v0}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v0

    const/16 v59, 0x9e

    aput-object v0, v7, v59

    new-instance v0, Landroid/app/AppOpInfo$Builder;

    const-string v2, "android:hand_tracking"

    const-string v4, "HAND_TRACKING"

    const/16 v5, 0x9f

    invoke-direct {v0, v5, v2, v4}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3312
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/xr/Flags;->xrManifestEntries()Z

    move-result v2

    if-eqz v2, :cond_133c

    .line 3313
    const-string v2, "android.permission.HAND_TRACKING"

    goto :goto_133d

    :cond_133c
    const/4 v2, 0x0

    .line 3312
    :goto_133d
    invoke-virtual {v0, v2}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v0

    .line 3314
    invoke-virtual {v0}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v0

    const/16 v2, 0x9f

    aput-object v0, v7, v2

    new-instance v0, Landroid/app/AppOpInfo$Builder;

    const-string v2, "android:head_tracking"

    const-string v4, "HEAD_TRACKING"

    const/16 v5, 0xa0

    invoke-direct {v0, v5, v2, v4}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3317
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/xr/Flags;->xrManifestEntries()Z

    move-result v2

    if-eqz v2, :cond_135d

    .line 3318
    const-string v2, "android.permission.HEAD_TRACKING"

    goto :goto_135e

    :cond_135d
    const/4 v2, 0x0

    .line 3317
    :goto_135e
    invoke-virtual {v0, v2}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v0

    .line 3319
    invoke-virtual {v0}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v0

    const/16 v2, 0xa0

    aput-object v0, v7, v2

    new-instance v0, Landroid/app/AppOpInfo$Builder;

    const-string v2, "android:scene_understanding_coarse"

    const-string v4, "SCENE_UNDERSTANDING_COARSE"

    const/16 v5, 0xa1

    invoke-direct {v0, v5, v2, v4}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3322
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/xr/Flags;->xrManifestEntries()Z

    move-result v2

    if-eqz v2, :cond_137e

    .line 3323
    const-string v2, "android.permission.SCENE_UNDERSTANDING_COARSE"

    goto :goto_137f

    :cond_137e
    const/4 v2, 0x0

    .line 3322
    :goto_137f
    invoke-virtual {v0, v2}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v0

    .line 3324
    invoke-virtual {v0}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v0

    const/16 v2, 0xa1

    aput-object v0, v7, v2

    new-instance v0, Landroid/app/AppOpInfo$Builder;

    const-string v2, "android:scene_understanding_fine"

    const-string v4, "SCENE_UNDERSTANDING_FINE"

    const/16 v5, 0xa2

    invoke-direct {v0, v5, v2, v4}, Landroid/app/AppOpInfo$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 3327
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/xr/Flags;->xrManifestEntries()Z

    move-result v2

    if-eqz v2, :cond_139f

    .line 3328
    const-string v2, "android.permission.SCENE_UNDERSTANDING_FINE"

    goto :goto_13a0

    :cond_139f
    const/4 v2, 0x0

    .line 3327
    :goto_13a0
    invoke-virtual {v0, v2}, Landroid/app/AppOpInfo$Builder;->setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;

    move-result-object v0

    .line 3329
    invoke-virtual {v0}, Landroid/app/AppOpInfo$Builder;->build()Landroid/app/AppOpInfo;

    move-result-object v0

    const/16 v2, 0xa2

    aput-object v0, v7, v2

    sput-object v7, Landroid/app/AppOpsManager;->sAppOpInfos:[Landroid/app/AppOpInfo;

    .line 3346
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/app/AppOpsManager;->sOpStrToOp:Ljava/util/HashMap;

    .line 3351
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/app/AppOpsManager;->sPermToOp:Ljava/util/HashMap;

    .line 3360
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/app/AppOpsManager;->sBinderThreadCallingUid:Ljava/lang/ThreadLocal;

    .line 3370
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/app/AppOpsManager;->sAppOpsNotedInThisBinderTransaction:Ljava/lang/ThreadLocal;

    .line 3373
    sget-object v0, Landroid/app/AppOpsManager;->sAppOpInfos:[Landroid/app/AppOpInfo;

    array-length v0, v0

    if-ne v0, v3, :cond_148b

    .line 3377
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_13d0
    if-ge v0, v3, :cond_13ec

    .line 3378
    sget-object v2, Landroid/app/AppOpsManager;->sAppOpInfos:[Landroid/app/AppOpInfo;

    aget-object v2, v2, v0

    iget-object v2, v2, Landroid/app/AppOpInfo;->name:Ljava/lang/String;

    if-eqz v2, :cond_13e9

    .line 3379
    sget-object v2, Landroid/app/AppOpsManager;->sOpStrToOp:Ljava/util/HashMap;

    sget-object v4, Landroid/app/AppOpsManager;->sAppOpInfos:[Landroid/app/AppOpInfo;

    aget-object v4, v4, v0

    iget-object v4, v4, Landroid/app/AppOpInfo;->name:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3377
    :cond_13e9
    add-int/lit8 v0, v0, 0x1

    goto :goto_13d0

    .line 3382
    .end local v0    # "i":I
    :cond_13ec
    sget-object v0, Landroid/app/AppOpsManager;->RUNTIME_PERMISSION_OPS:[I

    array-length v2, v0

    move v3, v1

    :goto_13f0
    if-ge v3, v2, :cond_1411

    aget v4, v0, v3

    .line 3383
    .local v4, "op":I
    if-ne v4, v6, :cond_13f7

    .line 3385
    goto :goto_140e

    .line 3387
    :cond_13f7
    sget-object v5, Landroid/app/AppOpsManager;->sAppOpInfos:[Landroid/app/AppOpInfo;

    aget-object v5, v5, v4

    iget-object v5, v5, Landroid/app/AppOpInfo;->permission:Ljava/lang/String;

    if-eqz v5, :cond_140e

    .line 3388
    sget-object v5, Landroid/app/AppOpsManager;->sPermToOp:Ljava/util/HashMap;

    sget-object v7, Landroid/app/AppOpsManager;->sAppOpInfos:[Landroid/app/AppOpInfo;

    aget-object v7, v7, v4

    iget-object v7, v7, Landroid/app/AppOpInfo;->permission:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3382
    .end local v4    # "op":I
    :cond_140e
    :goto_140e
    add-int/lit8 v3, v3, 0x1

    goto :goto_13f0

    .line 3391
    :cond_1411
    sget-object v0, Landroid/app/AppOpsManager;->APP_OP_PERMISSION_PACKAGE_OPS:[I

    array-length v2, v0

    move v3, v1

    :goto_1415
    if-ge v3, v2, :cond_1433

    aget v4, v0, v3

    .line 3392
    .restart local v4    # "op":I
    sget-object v5, Landroid/app/AppOpsManager;->sAppOpInfos:[Landroid/app/AppOpInfo;

    aget-object v5, v5, v4

    iget-object v5, v5, Landroid/app/AppOpInfo;->permission:Ljava/lang/String;

    if-eqz v5, :cond_1430

    .line 3393
    sget-object v5, Landroid/app/AppOpsManager;->sPermToOp:Ljava/util/HashMap;

    sget-object v7, Landroid/app/AppOpsManager;->sAppOpInfos:[Landroid/app/AppOpInfo;

    aget-object v7, v7, v4

    iget-object v7, v7, Landroid/app/AppOpInfo;->permission:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3391
    .end local v4    # "op":I
    :cond_1430
    add-int/lit8 v3, v3, 0x1

    goto :goto_1415

    .line 3396
    :cond_1433
    sget-object v0, Landroid/app/AppOpsManager;->APP_OP_PERMISSION_UID_OPS:[I

    array-length v2, v0

    move v3, v1

    :goto_1437
    if-ge v3, v2, :cond_1455

    aget v4, v0, v3

    .line 3397
    .restart local v4    # "op":I
    sget-object v5, Landroid/app/AppOpsManager;->sAppOpInfos:[Landroid/app/AppOpInfo;

    aget-object v5, v5, v4

    iget-object v5, v5, Landroid/app/AppOpInfo;->permission:Ljava/lang/String;

    if-eqz v5, :cond_1452

    .line 3398
    sget-object v5, Landroid/app/AppOpsManager;->sPermToOp:Ljava/util/HashMap;

    sget-object v7, Landroid/app/AppOpsManager;->sAppOpInfos:[Landroid/app/AppOpInfo;

    aget-object v7, v7, v4

    iget-object v7, v7, Landroid/app/AppOpInfo;->permission:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3396
    .end local v4    # "op":I
    :cond_1452
    add-int/lit8 v3, v3, 0x1

    goto :goto_1437

    .line 3404
    :cond_1455
    new-instance v0, Lcom/android/internal/app/MessageSamplingConfig;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v6, v1, v2, v3}, Lcom/android/internal/app/MessageSamplingConfig;-><init>(IIJ)V

    sput-object v0, Landroid/app/AppOpsManager;->sConfig:Lcom/android/internal/app/MessageSamplingConfig;

    .line 8175
    new-instance v0, Landroid/app/AppOpsManager$2;

    invoke-direct {v0}, Landroid/app/AppOpsManager$2;-><init>()V

    sput-object v0, Landroid/app/AppOpsManager;->sGetAppOpModeQuery:Landroid/os/IpcDataCache$QueryHandler;

    .line 8197
    new-instance v2, Landroid/os/IpcDataCache;

    const-string v6, "appOpModeCache"

    sget-object v7, Landroid/app/AppOpsManager;->sGetAppOpModeQuery:Landroid/os/IpcDataCache$QueryHandler;

    const/16 v3, 0x800

    const-string/jumbo v4, "system_server"

    const-string v5, "getAppOpMode"

    invoke-direct/range {v2 .. v7}, Landroid/os/IpcDataCache;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/IpcDataCache$QueryHandler;)V

    sput-object v2, Landroid/app/AppOpsManager;->sAppOpModeCache:Landroid/os/IpcDataCache;

    .line 8205
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    sput-object v0, Landroid/app/AppOpsManager;->OPS_WITHOUT_CACHING:Landroid/util/SparseBooleanArray;

    .line 8207
    sget-object v0, Landroid/app/AppOpsManager;->OPS_WITHOUT_CACHING:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 8208
    sget-object v0, Landroid/app/AppOpsManager;->OPS_WITHOUT_CACHING:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 8209
    return-void

    .line 3374
    :cond_148b
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mAppOpInfos length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/app/AppOpsManager;->sAppOpInfos:[Landroid/app/AppOpInfo;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " should be "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_14b2
    .array-data 4
        0x64
        0xc8
        0x12c
        0x190
        0x1f4
        0x258
        0x2bc
    .end array-data

    :array_14c4
    .array-data 4
        0x19
        0x18
        0x17
        0x2b
        0x42
        0x4c
        0x50
        0x4b
        0x44
        0x5f
    .end array-data

    :array_14dc
    .array-data 4
        0x5c
        0x5d
        0x67
        0x69
        0x6b
        0x6e
        0x3d
        0x7a
        0x7f
        0x83
        0x85
        0x88
        0x8b
        0x8f
        0x99
    .end array-data
.end method

.method constructor greylist-max-o <init>(Landroid/content/Context;Lcom/android/internal/app/IAppOpsService;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/internal/app/IAppOpsService;

    .line 8281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/AppOpsManager;->mModeWatchers:Landroid/util/ArrayMap;

    .line 250
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/AppOpsManager;->mActiveWatchers:Landroid/util/ArrayMap;

    .line 254
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/AppOpsManager;->mStartedWatchers:Landroid/util/ArrayMap;

    .line 258
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/AppOpsManager;->mNotedWatchers:Landroid/util/ArrayMap;

    .line 8282
    iput-object p1, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    .line 8283
    iput-object p2, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    .line 8285
    iget-object v0, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_55

    .line 8286
    iget-object v0, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 8288
    .local v0, "pm":Landroid/content/pm/PackageManager;
    :try_start_2d
    sget-boolean v1, Landroid/os/Build;->IS_ENG:Z

    if-eqz v1, :cond_53

    if-eqz v0, :cond_53

    const-string v1, "android.permission.READ_DEVICE_CONFIG"

    iget-object v2, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    .line 8292
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 8290
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_53

    .line 8294
    const-string/jumbo v1, "privacy"

    iget-object v2, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    .line 8296
    invoke-virtual {v2}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Landroid/app/AppOpsManager$$ExternalSyntheticLambda8;

    invoke-direct {v3}, Landroid/app/AppOpsManager$$ExternalSyntheticLambda8;-><init>()V

    .line 8294
    invoke-static {v1, v2, v3}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_52} :catch_54

    .line 8302
    return-void

    .line 8307
    :cond_53
    goto :goto_55

    .line 8304
    :catch_54
    move-exception v1

    .line 8309
    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    :cond_55
    :goto_55
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/app/AppOpsManager;->sFullLog:Ljava/lang/Boolean;

    .line 8310
    return-void
.end method

.method private blacklist batchDuplicateNoteOps(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ZZ)Z
    .registers 20
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;
    .param p5, "virtualDeviceId"    # I
    .param p6, "message"    # Ljava/lang/String;
    .param p7, "collectAsync"    # Z
    .param p8, "shouldCollectMessage"    # Z

    .line 9616
    sget-object v1, Landroid/app/AppOpsManager;->sBatchedNoteOpLock:Ljava/lang/Object;

    monitor-enter v1

    .line 9617
    :try_start_3
    new-instance v2, Landroid/app/AppOpsManager$NotedOp;

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-direct/range {v2 .. v10}, Landroid/app/AppOpsManager$NotedOp;-><init>(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ZZ)V

    .line 9625
    .local v2, "notedOp":Landroid/app/AppOpsManager$NotedOp;
    sget-object v0, Landroid/app/AppOpsManager;->sPendingNotedOps:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 9626
    .local v0, "isDuplicated":Z
    const/4 v3, 0x1

    if-nez v0, :cond_28

    .line 9627
    sget-object v4, Landroid/app/AppOpsManager;->sPendingNotedOps:Landroid/util/ArrayMap;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_36

    .line 9629
    :cond_28
    sget-object v4, Landroid/app/AppOpsManager;->sPendingNotedOps:Landroid/util/ArrayMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Landroid/app/AppOpsManager$$ExternalSyntheticLambda4;

    invoke-direct {v6}, Landroid/app/AppOpsManager$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {v4, v2, v5, v6}, Landroid/util/ArrayMap;->merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    .line 9632
    :goto_36
    sget-boolean v4, Landroid/app/AppOpsManager;->sIsBatchedNoteOpCallScheduled:Z

    if-nez v4, :cond_5e

    .line 9633
    sget-object v4, Landroid/app/AppOpsManager;->sHandlerThread:Landroid/os/HandlerThread;

    if-nez v4, :cond_4c

    .line 9634
    new-instance v4, Landroid/os/HandlerThread;

    const-string v5, "AppOpsManagerNoteOpBatching"

    invoke-direct {v4, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v4, Landroid/app/AppOpsManager;->sHandlerThread:Landroid/os/HandlerThread;

    .line 9635
    sget-object v4, Landroid/app/AppOpsManager;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->start()V

    .line 9638
    :cond_4c
    sget-object v4, Landroid/app/AppOpsManager;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/app/AppOpsManager$$ExternalSyntheticLambda5;

    invoke-direct {v5, p0}, Landroid/app/AppOpsManager$$ExternalSyntheticLambda5;-><init>(Landroid/app/AppOpsManager;)V

    const-wide/16 v6, 0x3e8

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 9659
    sput-boolean v3, Landroid/app/AppOpsManager;->sIsBatchedNoteOpCallScheduled:Z

    .line 9661
    :cond_5e
    monitor-exit v1

    return v0

    .line 9662
    .end local v0    # "isDuplicated":Z
    .end local v2    # "notedOp":Landroid/app/AppOpsManager$NotedOp;
    :catchall_60
    move-exception v0

    monitor-exit v1
    :try_end_62
    .catchall {:try_start_3 .. :try_end_62} :catchall_60

    throw v0
.end method

.method private greylist-max-o buildSecurityExceptionMsg(IILjava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 9223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " from uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " not allowed to perform "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/app/AppOpsManager;->sAppOpInfos:[Landroid/app/AppOpInfo;

    aget-object v1, v1, p1

    iget-object v1, v1, Landroid/app/AppOpInfo;->simpleName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist checkOpNoThrow(IILjava/lang/String;Ljava/lang/String;I)I
    .registers 20
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;
    .param p5, "virtualDeviceId"    # I

    .line 9989
    :try_start_0
    invoke-static {p1}, Landroid/app/AppOpsManager;->isAppOpModeCachingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 9990
    sget-object v0, Landroid/app/AppOpsManager;->sAppOpModeCache:Landroid/os/IpcDataCache;

    new-instance v1, Landroid/app/AppOpsManager$AppOpModeQuery;

    const-string v7, "checkOpNoThrow"

    move v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v6, p4

    move/from16 v5, p5

    invoke-direct/range {v1 .. v7}, Landroid/app/AppOpsManager$AppOpModeQuery;-><init>(IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 9993
    .local v0, "mode":I
    const/4 v1, 0x4

    if-ne v0, v1, :cond_45

    .line 9996
    iget-object v8, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    move v9, p1

    move/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move/from16 v13, p5

    invoke-interface/range {v8 .. v13}, Lcom/android/internal/app/IAppOpsService;->checkOperationForDevice(IILjava/lang/String;Ljava/lang/String;I)I

    move-result v1

    move v0, v1

    goto :goto_45

    .line 10000
    .end local v0    # "mode":I
    :cond_36
    iget-object v8, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    move v9, p1

    move/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move/from16 v13, p5

    invoke-interface/range {v8 .. v13}, Lcom/android/internal/app/IAppOpsService;->checkOperationForDevice(IILjava/lang/String;Ljava/lang/String;I)I

    move-result v0
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_45} :catch_46

    .line 10003
    .restart local v0    # "mode":I
    :cond_45
    :goto_45
    return v0

    .line 10004
    .end local v0    # "mode":I
    :catch_46
    move-exception v0

    .line 10005
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private blacklist checkOpRawNoThrow(IILjava/lang/String;Ljava/lang/String;I)I
    .registers 20
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;
    .param p5, "virtualDeviceId"    # I

    .line 9430
    :try_start_0
    invoke-static {p1}, Landroid/app/AppOpsManager;->isAppOpModeCachingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 9431
    sget-object v0, Landroid/app/AppOpsManager;->sAppOpModeCache:Landroid/os/IpcDataCache;

    new-instance v1, Landroid/app/AppOpsManager$AppOpModeQuery;

    const-string/jumbo v7, "unsafeCheckOpRawNoThrow"

    move v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v6, p4

    move/from16 v5, p5

    invoke-direct/range {v1 .. v7}, Landroid/app/AppOpsManager$AppOpModeQuery;-><init>(IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .local v0, "mode":I
    goto :goto_33

    .line 9435
    .end local v0    # "mode":I
    :cond_24
    iget-object v8, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    move v9, p1

    move/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move/from16 v13, p5

    invoke-interface/range {v8 .. v13}, Lcom/android/internal/app/IAppOpsService;->checkOperationRawForDevice(IILjava/lang/String;Ljava/lang/String;I)I

    move-result v0
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_33} :catch_34

    .line 9438
    .restart local v0    # "mode":I
    :goto_33
    return v0

    .line 9439
    .end local v0    # "mode":I
    :catch_34
    move-exception v0

    .line 9440
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private static blacklist collectKeys(Landroid/util/LongSparseLongArray;Landroid/util/LongSparseArray;)Landroid/util/LongSparseArray;
    .registers 7
    .param p0, "array"    # Landroid/util/LongSparseLongArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/LongSparseLongArray;",
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/Object;",
            ">;)",
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 11588
    .local p1, "result":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Object;>;"
    if-eqz p0, :cond_1c

    .line 11589
    if-nez p1, :cond_a

    .line 11590
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    move-object p1, v0

    .line 11592
    :cond_a
    invoke-virtual {p0}, Landroid/util/LongSparseLongArray;->size()I

    move-result v0

    .line 11593
    .local v0, "accessSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    if-ge v1, v0, :cond_1c

    .line 11594
    invoke-virtual {p0, v1}, Landroid/util/LongSparseLongArray;->keyAt(I)J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 11593
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 11597
    .end local v0    # "accessSize":I
    .end local v1    # "i":I
    :cond_1c
    return-object p1
.end method

.method private blacklist collectNoteOpCallsForValidation(I)V
    .registers 2
    .param p1, "op"    # I

    .line 11709
    return-void
.end method

.method private blacklist collectNotedOpForSelf(Landroid/app/SyncNotedAppOp;)V
    .registers 4
    .param p1, "syncOp"    # Landroid/app/SyncNotedAppOp;

    .line 10708
    sget-object v0, Landroid/app/AppOpsManager;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 10709
    :try_start_3
    sget-object v1, Landroid/app/AppOpsManager;->sOnOpNotedCallback:Landroid/app/AppOpsManager$OnOpNotedCallback;

    if-eqz v1, :cond_c

    .line 10710
    sget-object v1, Landroid/app/AppOpsManager;->sOnOpNotedCallback:Landroid/app/AppOpsManager$OnOpNotedCallback;

    invoke-virtual {v1, p1}, Landroid/app/AppOpsManager$OnOpNotedCallback;->onSelfNoted(Landroid/app/SyncNotedAppOp;)V

    .line 10712
    :cond_c
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_13

    .line 10713
    sget-object v0, Landroid/app/AppOpsManager;->sMessageCollector:Landroid/app/AppOpsManager$OnOpNotedCallback;

    invoke-virtual {v0, p1}, Landroid/app/AppOpsManager$OnOpNotedCallback;->onSelfNoted(Landroid/app/SyncNotedAppOp;)V

    .line 10714
    return-void

    .line 10712
    :catchall_13
    move-exception v1

    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public static blacklist collectNotedOpSync(Landroid/app/SyncNotedAppOp;)V
    .registers 6
    .param p0, "syncOp"    # Landroid/app/SyncNotedAppOp;

    .line 10730
    sget-object v0, Landroid/app/AppOpsManager;->sOpStrToOp:Ljava/util/HashMap;

    invoke-virtual {p0}, Landroid/app/SyncNotedAppOp;->getOp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 10731
    .local v0, "op":I
    sget-object v1, Landroid/app/AppOpsManager;->sAppOpsNotedInThisBinderTransaction:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    .line 10732
    .local v1, "appOpsNoted":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/BitSet;>;"
    if-nez v1, :cond_26

    .line 10733
    new-instance v2, Landroid/util/ArrayMap;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/util/ArrayMap;-><init>(I)V

    move-object v1, v2

    .line 10734
    sget-object v2, Landroid/app/AppOpsManager;->sAppOpsNotedInThisBinderTransaction:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 10737
    :cond_26
    invoke-virtual {p0}, Landroid/app/SyncNotedAppOp;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/BitSet;

    .line 10738
    .local v2, "appOpsNotedForAttribution":Ljava/util/BitSet;
    if-nez v2, :cond_41

    .line 10739
    new-instance v3, Ljava/util/BitSet;

    const/16 v4, 0xa3

    invoke-direct {v3, v4}, Ljava/util/BitSet;-><init>(I)V

    move-object v2, v3

    .line 10740
    invoke-virtual {p0}, Landroid/app/SyncNotedAppOp;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10743
    :cond_41
    invoke-virtual {v2, v0}, Ljava/util/BitSet;->set(I)V

    .line 10744
    return-void
.end method

.method private static blacklist deduplicateDiscreteEvents(Ljava/util/List;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$AttributedOpEntry;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$AttributedOpEntry;",
            ">;"
        }
    .end annotation

    .line 11712
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$AttributedOpEntry;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 11713
    .local v0, "n":I
    const/4 v1, 0x0

    .line 11714
    .local v1, "i":I
    const/4 v2, 0x0

    .local v2, "j":I
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_7
    if-ge v2, v0, :cond_39

    .line 11715
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AppOpsManager$AttributedOpEntry;

    const/16 v5, 0x1f

    invoke-virtual {v4, v5}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastAccessTime(I)J

    move-result-wide v6

    .line 11716
    .local v6, "currentAccessTime":J
    add-int/lit8 v3, v2, 0x1

    .line 11717
    :goto_17
    if-ge v3, v0, :cond_2a

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AppOpsManager$AttributedOpEntry;

    invoke-virtual {v4, v5}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastAccessTime(I)J

    move-result-wide v8

    cmp-long v4, v8, v6

    if-nez v4, :cond_2a

    .line 11718
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 11720
    :cond_2a
    invoke-interface {p0, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Landroid/app/AppOpsManager;->mergeAttributedOpEntries(Ljava/util/List;)Landroid/app/AppOpsManager$AttributedOpEntry;

    move-result-object v4

    invoke-interface {p0, v1, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 11714
    .end local v6    # "currentAccessTime":J
    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto :goto_7

    .line 11722
    .end local v2    # "j":I
    .end local v3    # "k":I
    :cond_39
    :goto_39
    if-ge v1, v0, :cond_47

    .line 11723
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {p0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 11722
    add-int/lit8 v1, v1, 0x1

    goto :goto_39

    .line 11725
    :cond_47
    return-object p0
.end method

.method public static blacklist disableAppOpModeCache()V
    .registers 1

    .line 8233
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->appopModeCachingEnabled()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 8234
    sget-object v0, Landroid/app/AppOpsManager;->sAppOpModeCache:Landroid/os/IpcDataCache;

    invoke-virtual {v0}, Landroid/os/IpcDataCache;->disableLocal()V

    .line 8236
    :cond_b
    return-void
.end method

.method private static blacklist equalsLongSparseLongArray(Landroid/util/LongSparseLongArray;Landroid/util/LongSparseLongArray;)Z
    .registers 10
    .param p0, "a"    # Landroid/util/LongSparseLongArray;
    .param p1, "b"    # Landroid/util/LongSparseLongArray;

    .line 11517
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 11518
    return v0

    .line 11521
    :cond_4
    const/4 v1, 0x0

    if-eqz p0, :cond_3a

    if-nez p1, :cond_a

    goto :goto_3a

    .line 11525
    :cond_a
    invoke-virtual {p0}, Landroid/util/LongSparseLongArray;->size()I

    move-result v2

    invoke-virtual {p1}, Landroid/util/LongSparseLongArray;->size()I

    move-result v3

    if-eq v2, v3, :cond_15

    .line 11526
    return v1

    .line 11529
    :cond_15
    invoke-virtual {p0}, Landroid/util/LongSparseLongArray;->size()I

    move-result v2

    .line 11530
    .local v2, "numEntries":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1a
    if-ge v3, v2, :cond_39

    .line 11531
    invoke-virtual {p0, v3}, Landroid/util/LongSparseLongArray;->keyAt(I)J

    move-result-wide v4

    invoke-virtual {p1, v3}, Landroid/util/LongSparseLongArray;->keyAt(I)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_38

    invoke-virtual {p0, v3}, Landroid/util/LongSparseLongArray;->valueAt(I)J

    move-result-wide v4

    invoke-virtual {p1, v3}, Landroid/util/LongSparseLongArray;->valueAt(I)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_35

    goto :goto_38

    .line 11530
    :cond_35
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 11532
    :cond_38
    :goto_38
    return v1

    .line 11536
    .end local v3    # "i":I
    :cond_39
    return v0

    .line 11522
    .end local v2    # "numEntries":I
    :cond_3a
    :goto_3a
    return v1
.end method

.method public static blacklist extractFlagsFromKey(J)I
    .registers 4
    .param p0, "key"    # J

    .line 906
    const-wide/16 v0, -0x1

    and-long/2addr v0, p0

    long-to-int v0, v0

    return v0
.end method

.method public static blacklist extractUidStateFromKey(J)I
    .registers 4
    .param p0, "key"    # J

    .line 901
    const/16 v0, 0x1f

    shr-long v0, p0, v0

    long-to-int v0, v0

    return v0
.end method

.method public static blacklist finishNotedAppOpsCollection()V
    .registers 1

    .line 10697
    sget-object v0, Landroid/app/AppOpsManager;->sBinderThreadCallingUid:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    .line 10698
    sget-object v0, Landroid/app/AppOpsManager;->sAppOpsNotedInThisBinderTransaction:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    .line 10699
    return-void
.end method

.method private blacklist finishOp(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;I)V
    .registers 15
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "op"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "attributionTag"    # Ljava/lang/String;
    .param p6, "virtualDeviceId"    # I

    .line 10507
    if-nez p6, :cond_1b

    .line 10508
    :try_start_2
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_4} :catch_12

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    .end local p1    # "token":Landroid/os/IBinder;
    .end local p2    # "op":I
    .end local p3    # "uid":I
    .end local p4    # "packageName":Ljava/lang/String;
    .end local p5    # "attributionTag":Ljava/lang/String;
    .local v1, "token":Landroid/os/IBinder;
    .local v2, "op":I
    .local v3, "uid":I
    .local v4, "packageName":Ljava/lang/String;
    .local v5, "attributionTag":Ljava/lang/String;
    :try_start_9
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/app/IAppOpsService;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_c} :catch_e

    move v7, p6

    goto :goto_30

    .line 10513
    :catch_e
    move-exception v0

    move-object p1, v0

    move v7, p6

    goto :goto_42

    .end local v1    # "token":Landroid/os/IBinder;
    .end local v2    # "op":I
    .end local v3    # "uid":I
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "attributionTag":Ljava/lang/String;
    .restart local p1    # "token":Landroid/os/IBinder;
    .restart local p2    # "op":I
    .restart local p3    # "uid":I
    .restart local p4    # "packageName":Ljava/lang/String;
    .restart local p5    # "attributionTag":Ljava/lang/String;
    :catch_12
    move-exception v0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object p1, v0

    move v7, p6

    .end local p1    # "token":Landroid/os/IBinder;
    .end local p2    # "op":I
    .end local p3    # "uid":I
    .end local p4    # "packageName":Ljava/lang/String;
    .end local p5    # "attributionTag":Ljava/lang/String;
    .restart local v1    # "token":Landroid/os/IBinder;
    .restart local v2    # "op":I
    .restart local v3    # "uid":I
    .restart local v4    # "packageName":Ljava/lang/String;
    .restart local v5    # "attributionTag":Ljava/lang/String;
    goto :goto_42

    .line 10510
    .end local v1    # "token":Landroid/os/IBinder;
    .end local v2    # "op":I
    .end local v3    # "uid":I
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "attributionTag":Ljava/lang/String;
    .restart local p1    # "token":Landroid/os/IBinder;
    .restart local p2    # "op":I
    .restart local p3    # "uid":I
    .restart local p4    # "packageName":Ljava/lang/String;
    .restart local p5    # "attributionTag":Ljava/lang/String;
    :cond_1b
    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    .end local p1    # "token":Landroid/os/IBinder;
    .end local p2    # "op":I
    .end local p3    # "uid":I
    .end local p4    # "packageName":Ljava/lang/String;
    .end local p5    # "attributionTag":Ljava/lang/String;
    .restart local v1    # "token":Landroid/os/IBinder;
    .restart local v2    # "op":I
    .restart local v3    # "uid":I
    .restart local v4    # "packageName":Ljava/lang/String;
    .restart local v5    # "attributionTag":Ljava/lang/String;
    move-object v6, v5

    move-object v5, v4

    move v4, v3

    move v3, v2

    move-object v2, v1

    .end local v1    # "token":Landroid/os/IBinder;
    .local v2, "token":Landroid/os/IBinder;
    .local v3, "op":I
    .local v4, "uid":I
    .local v5, "packageName":Ljava/lang/String;
    .local v6, "attributionTag":Ljava/lang/String;
    :try_start_25
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_27} :catch_3a

    move v7, p6

    .end local p6    # "virtualDeviceId":I
    .local v7, "virtualDeviceId":I
    :try_start_28
    invoke-interface/range {v1 .. v7}, Lcom/android/internal/app/IAppOpsService;->finishOperationForDevice(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;I)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_2b} :catch_32

    move-object v1, v2

    move v2, v3

    move v3, v4

    move-object v4, v5

    move-object v5, v6

    .line 10515
    .end local v6    # "attributionTag":Ljava/lang/String;
    .restart local v1    # "token":Landroid/os/IBinder;
    .local v2, "op":I
    .local v3, "uid":I
    .local v4, "packageName":Ljava/lang/String;
    .local v5, "attributionTag":Ljava/lang/String;
    :goto_30
    nop

    .line 10516
    return-void

    .line 10513
    .end local v1    # "token":Landroid/os/IBinder;
    .local v2, "token":Landroid/os/IBinder;
    .local v3, "op":I
    .local v4, "uid":I
    .local v5, "packageName":Ljava/lang/String;
    .restart local v6    # "attributionTag":Ljava/lang/String;
    :catch_32
    move-exception v0

    move-object v1, v2

    move v2, v3

    move v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object p1, v0

    .end local v6    # "attributionTag":Ljava/lang/String;
    .restart local v1    # "token":Landroid/os/IBinder;
    .local v2, "op":I
    .local v3, "uid":I
    .local v4, "packageName":Ljava/lang/String;
    .local v5, "attributionTag":Ljava/lang/String;
    goto :goto_42

    .end local v1    # "token":Landroid/os/IBinder;
    .end local v7    # "virtualDeviceId":I
    .local v2, "token":Landroid/os/IBinder;
    .local v3, "op":I
    .local v4, "uid":I
    .local v5, "packageName":Ljava/lang/String;
    .restart local v6    # "attributionTag":Ljava/lang/String;
    .restart local p6    # "virtualDeviceId":I
    :catch_3a
    move-exception v0

    move v7, p6

    move-object v1, v2

    move v2, v3

    move v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object p1, v0

    .line 10514
    .end local v6    # "attributionTag":Ljava/lang/String;
    .end local p6    # "virtualDeviceId":I
    .restart local v1    # "token":Landroid/os/IBinder;
    .local v2, "op":I
    .local v3, "uid":I
    .local v4, "packageName":Ljava/lang/String;
    .local v5, "attributionTag":Ljava/lang/String;
    .restart local v7    # "virtualDeviceId":I
    .local p1, "e":Landroid/os/RemoteException;
    :goto_42
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
.end method

.method public static blacklist flagsToString(I)Ljava/lang/String;
    .registers 4
    .param p0, "flags"    # I

    .line 911
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 912
    .local v0, "flagsBuilder":Ljava/lang/StringBuilder;
    :goto_5
    if-eqz p0, :cond_22

    .line 913
    const/4 v1, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v2

    shl-int/2addr v1, v2

    .line 914
    .local v1, "flag":I
    not-int v2, v1

    and-int/2addr p0, v2

    .line 915
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_1a

    .line 916
    const/16 v2, 0x7c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 918
    :cond_1a
    invoke-static {v1}, Landroid/app/AppOpsManager;->getFlagName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 919
    .end local v1    # "flag":I
    goto :goto_5

    .line 920
    :cond_22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist getClientId()Landroid/os/IBinder;
    .registers 2

    .line 10067
    const-class v0, Landroid/app/AppOpsManager;

    monitor-enter v0

    .line 10068
    :try_start_3
    sget-object v1, Landroid/app/AppOpsManager;->sClientId:Landroid/os/IBinder;

    if-nez v1, :cond_e

    .line 10069
    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    sput-object v1, Landroid/app/AppOpsManager;->sClientId:Landroid/os/IBinder;

    .line 10072
    :cond_e
    sget-object v1, Landroid/app/AppOpsManager;->sClientId:Landroid/os/IBinder;

    monitor-exit v0

    return-object v1

    .line 10073
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method private static blacklist getComponentPackageNameFromString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "from"    # Ljava/lang/String;

    .line 9897
    if-eqz p0, :cond_7

    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 9898
    .local v0, "componentName":Landroid/content/ComponentName;
    :goto_8
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_11

    :cond_f
    const-string v1, ""

    :goto_11
    return-object v1
.end method

.method public static final blacklist getFlagName(I)Ljava/lang/String;
    .registers 2
    .param p0, "flag"    # I

    .line 751
    sparse-switch p0, :sswitch_data_1c

    .line 763
    const-string/jumbo v0, "unknown"

    return-object v0

    .line 761
    :sswitch_7
    const-string/jumbo v0, "upd"

    return-object v0

    .line 759
    :sswitch_b
    const-string/jumbo v0, "tpd"

    return-object v0

    .line 757
    :sswitch_f
    const-string/jumbo v0, "up"

    return-object v0

    .line 755
    :sswitch_13
    const-string/jumbo v0, "tp"

    return-object v0

    .line 753
    :sswitch_17
    const-string/jumbo v0, "s"

    return-object v0

    nop

    :sswitch_data_1c
    .sparse-switch
        0x1 -> :sswitch_17
        0x2 -> :sswitch_13
        0x4 -> :sswitch_f
        0x8 -> :sswitch_b
        0x10 -> :sswitch_7
    .end sparse-switch
.end method

.method private static blacklist getFormattedStackTrace()Ljava/lang/String;
    .registers 8

    .line 11235
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 11237
    .local v0, "trace":[Ljava/lang/StackTraceElement;
    const/4 v1, 0x0

    .line 11238
    .local v1, "firstInteresting":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    array-length v3, v0

    if-ge v2, v3, :cond_76

    .line 11239
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    const-class v4, Landroid/app/AppOpsManager;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_72

    aget-object v3, v0, v2

    .line 11240
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    const-class v4, Landroid/os/Parcel;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_72

    aget-object v3, v0, v2

    .line 11241
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "$Stub$Proxy"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_72

    aget-object v3, v0, v2

    .line 11242
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    const-class v4, Landroid/database/DatabaseUtils;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_72

    aget-object v3, v0, v2

    .line 11243
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.content.ContentProviderProxy"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_72

    aget-object v3, v0, v2

    .line 11244
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    const-class v4, Landroid/content/ContentResolver;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_76

    .line 11245
    :cond_72
    move v1, v2

    .line 11238
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 11251
    .end local v2    # "i":I
    :cond_76
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    .line 11252
    .local v2, "lastInteresting":I
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_7c
    if-ltz v3, :cond_121

    .line 11253
    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-class v5, Landroid/os/HandlerThread;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_11c

    aget-object v4, v0, v3

    .line 11254
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-class v5, Landroid/os/Handler;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_11c

    aget-object v4, v0, v3

    .line 11255
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-class v5, Landroid/os/Looper;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_11c

    aget-object v4, v0, v3

    .line 11256
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-class v5, Landroid/os/Binder;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_11c

    aget-object v4, v0, v3

    .line 11257
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/android/internal/os/RuntimeInit;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_11c

    aget-object v4, v0, v3

    .line 11258
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/android/internal/os/ZygoteInit;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_11c

    aget-object v4, v0, v3

    .line 11259
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-class v5, Landroid/app/ActivityThread;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_11c

    aget-object v4, v0, v3

    .line 11260
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-class v5, Ljava/lang/reflect/Method;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_11c

    aget-object v4, v0, v3

    .line 11261
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.android.server.SystemServer"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_121

    .line 11262
    :cond_11c
    move v2, v3

    .line 11252
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_7c

    .line 11268
    .end local v3    # "i":I
    :cond_121
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 11269
    .local v3, "sb":Ljava/lang/StringBuilder;
    move v4, v1

    .local v4, "i":I
    :goto_127
    if-gt v4, v2, :cond_16f

    .line 11270
    sget-object v5, Landroid/app/AppOpsManager;->sFullLog:Ljava/lang/Boolean;

    if-nez v5, :cond_146

    .line 11272
    const/4 v5, 0x0

    :try_start_12e
    const-string/jumbo v6, "privacy"

    const-string/jumbo v7, "privacy_attribution_tag_full_log_enabled"

    invoke-static {v6, v7, v5}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    sput-object v6, Landroid/app/AppOpsManager;->sFullLog:Ljava/lang/Boolean;
    :try_end_13e
    .catch Ljava/lang/Exception; {:try_start_12e .. :try_end_13e} :catch_13f

    .line 11277
    goto :goto_146

    .line 11274
    :catch_13f
    move-exception v6

    .line 11276
    .local v6, "e":Ljava/lang/Exception;
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    sput-object v5, Landroid/app/AppOpsManager;->sFullLog:Ljava/lang/Boolean;

    .line 11280
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_146
    :goto_146
    if-eq v4, v1, :cond_14d

    .line 11281
    const/16 v5, 0xa

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 11283
    :cond_14d
    aget-object v5, v0, v4

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 11284
    .local v5, "traceString":Ljava/lang/String;
    sget-object v6, Landroid/app/AppOpsManager;->sFullLog:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_169

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    const/16 v7, 0x258

    if-le v6, v7, :cond_169

    .line 11285
    goto :goto_16f

    .line 11287
    :cond_169
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11269
    .end local v5    # "traceString":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_127

    .line 11290
    .end local v4    # "i":I
    :cond_16f
    :goto_16f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static blacklist getLastEvent(Landroid/util/LongSparseArray;III)Landroid/app/AppOpsManager$NoteOpEvent;
    .registers 21
    .param p1, "beginUidState"    # I
    .param p2, "endUidState"    # I
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/LongSparseArray<",
            "Landroid/app/AppOpsManager$NoteOpEvent;",
            ">;III)",
            "Landroid/app/AppOpsManager$NoteOpEvent;"
        }
    .end annotation

    .line 11485
    .local p0, "events":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/app/AppOpsManager$NoteOpEvent;>;"
    move-object/from16 v0, p0

    if-nez v0, :cond_6

    .line 11486
    const/4 v1, 0x0

    return-object v1

    .line 11489
    :cond_6
    const/4 v1, 0x0

    move-object v2, v1

    move/from16 v1, p3

    .line 11490
    .end local p3    # "flags":I
    .local v1, "flags":I
    .local v2, "lastEvent":Landroid/app/AppOpsManager$NoteOpEvent;
    :goto_a
    if-eqz v1, :cond_65

    .line 11491
    invoke-static {v1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v3

    const/4 v4, 0x1

    shl-int v3, v4, v3

    .line 11492
    .local v3, "flag":I
    not-int v4, v3

    and-int/2addr v1, v4

    .line 11493
    sget-object v4, Landroid/app/AppOpsManager;->UID_STATES:[I

    array-length v5, v4

    const/4 v6, 0x0

    :goto_19
    if-ge v6, v5, :cond_60

    aget v7, v4, v6

    .line 11494
    .local v7, "uidState":I
    move/from16 v8, p1

    if-lt v7, v8, :cond_5b

    move/from16 v9, p2

    if-le v7, v9, :cond_26

    .line 11495
    goto :goto_5d

    .line 11497
    :cond_26
    invoke-static {v7, v3}, Landroid/app/AppOpsManager;->makeKey(II)J

    move-result-wide v10

    .line 11499
    .local v10, "key":J
    invoke-virtual {v0, v10, v11}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/AppOpsManager$NoteOpEvent;

    .line 11500
    .local v12, "event":Landroid/app/AppOpsManager$NoteOpEvent;
    if-nez v12, :cond_33

    .line 11501
    goto :goto_5d

    .line 11504
    :cond_33
    if-eqz v2, :cond_59

    invoke-virtual {v12}, Landroid/app/AppOpsManager$NoteOpEvent;->getNoteTime()J

    move-result-wide v13

    invoke-virtual {v2}, Landroid/app/AppOpsManager$NoteOpEvent;->getNoteTime()J

    move-result-wide v15

    cmp-long v13, v13, v15

    if-gtz v13, :cond_59

    .line 11505
    invoke-virtual {v12}, Landroid/app/AppOpsManager$NoteOpEvent;->getNoteTime()J

    move-result-wide v13

    invoke-virtual {v2}, Landroid/app/AppOpsManager$NoteOpEvent;->getNoteTime()J

    move-result-wide v15

    cmp-long v13, v13, v15

    if-nez v13, :cond_5d

    .line 11506
    invoke-virtual {v12}, Landroid/app/AppOpsManager$NoteOpEvent;->getDuration()J

    move-result-wide v13

    invoke-virtual {v2}, Landroid/app/AppOpsManager$NoteOpEvent;->getDuration()J

    move-result-wide v15

    cmp-long v13, v13, v15

    if-lez v13, :cond_5d

    .line 11507
    :cond_59
    move-object v2, v12

    goto :goto_5d

    .line 11494
    .end local v10    # "key":J
    .end local v12    # "event":Landroid/app/AppOpsManager$NoteOpEvent;
    :cond_5b
    move/from16 v9, p2

    .line 11493
    .end local v7    # "uidState":I
    :cond_5d
    :goto_5d
    add-int/lit8 v6, v6, 0x1

    goto :goto_19

    :cond_60
    move/from16 v8, p1

    move/from16 v9, p2

    .line 11510
    .end local v3    # "flag":I
    goto :goto_a

    .line 11512
    :cond_65
    move/from16 v8, p1

    move/from16 v9, p2

    return-object v2
.end method

.method private blacklist getNotedOpCollectionMode(ILjava/lang/String;I)I
    .registers 9
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "op"    # I

    .line 10805
    if-nez p2, :cond_4

    .line 10806
    const-string p2, "android"

    .line 10810
    :cond_4
    sget-object v0, Landroid/app/AppOpsManager;->sAppOpsToNote:[B

    aget-byte v0, v0, p3

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-nez v0, :cond_22

    .line 10813
    :try_start_d
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p3}, Lcom/android/internal/app/IAppOpsService;->shouldCollectNotes(I)Z

    move-result v0
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_13} :catch_20

    .line 10816
    .local v0, "shouldCollectNotes":Z
    nop

    .line 10818
    if-eqz v0, :cond_1b

    .line 10819
    sget-object v4, Landroid/app/AppOpsManager;->sAppOpsToNote:[B

    aput-byte v3, v4, p3

    goto :goto_22

    .line 10821
    :cond_1b
    sget-object v4, Landroid/app/AppOpsManager;->sAppOpsToNote:[B

    aput-byte v1, v4, p3

    goto :goto_22

    .line 10814
    .end local v0    # "shouldCollectNotes":Z
    :catch_20
    move-exception v0

    .line 10815
    .local v0, "e":Landroid/os/RemoteException;
    return v2

    .line 10825
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_22
    :goto_22
    sget-object v0, Landroid/app/AppOpsManager;->sAppOpsToNote:[B

    aget-byte v0, v0, p3

    if-eq v0, v3, :cond_29

    .line 10826
    return v2

    .line 10829
    :cond_29
    sget-object v0, Landroid/app/AppOpsManager;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 10830
    :try_start_2c
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    if-ne p1, v2, :cond_3e

    .line 10831
    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 10832
    monitor-exit v0

    return v1

    .line 10834
    :cond_3e
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_2c .. :try_end_3f} :catchall_52

    .line 10836
    sget-object v0, Landroid/app/AppOpsManager;->sBinderThreadCallingUid:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 10838
    .local v0, "binderUid":Ljava/lang/Integer;
    if-eqz v0, :cond_50

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_50

    .line 10839
    return v3

    .line 10841
    :cond_50
    const/4 v1, 0x3

    return v1

    .line 10834
    .end local v0    # "binderUid":Ljava/lang/Integer;
    :catchall_52
    move-exception v1

    :try_start_53
    monitor-exit v0
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    throw v1
.end method

.method public static blacklist getNumOps()I
    .registers 1

    .line 11469
    const/16 v0, 0xa3

    return v0
.end method

.method public static whitelist getOpStrs()[Ljava/lang/String;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 11456
    sget-object v0, Landroid/app/AppOpsManager;->sAppOpInfos:[Landroid/app/AppOpInfo;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    .line 11457
    .local v0, "opStrs":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    sget-object v2, Landroid/app/AppOpsManager;->sAppOpInfos:[Landroid/app/AppOpInfo;

    array-length v2, v2

    if-ge v1, v2, :cond_16

    .line 11458
    sget-object v2, Landroid/app/AppOpsManager;->sAppOpInfos:[Landroid/app/AppOpInfo;

    aget-object v2, v2, v1

    iget-object v2, v2, Landroid/app/AppOpInfo;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 11457
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 11460
    .end local v1    # "i":I
    :cond_16
    return-object v0
.end method

.method private static blacklist getService()Lcom/android/internal/app/IAppOpsService;
    .registers 2

    .line 10078
    sget-object v0, Landroid/app/AppOpsManager;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 10079
    :try_start_3
    sget-object v1, Landroid/app/AppOpsManager;->sService:Lcom/android/internal/app/IAppOpsService;

    if-nez v1, :cond_13

    .line 10080
    const-string v1, "appops"

    .line 10081
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 10080
    invoke-static {v1}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v1

    sput-object v1, Landroid/app/AppOpsManager;->sService:Lcom/android/internal/app/IAppOpsService;

    .line 10083
    :cond_13
    sget-object v1, Landroid/app/AppOpsManager;->sService:Lcom/android/internal/app/IAppOpsService;

    monitor-exit v0

    return-object v1

    .line 10084
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method private static blacklist getSystemAlertWindowDefault()I
    .registers 5

    .line 11664
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 11665
    .local v0, "context":Landroid/content/Context;
    const/4 v1, 0x3

    if-nez v0, :cond_8

    .line 11666
    return v1

    .line 11670
    :cond_8
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 11671
    .local v2, "pm":Landroid/content/pm/PackageManager;
    if-nez v2, :cond_f

    .line 11672
    return v1

    .line 11675
    :cond_f
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 11676
    const-string v3, "android.software.leanback"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_20

    .line 11677
    const/4 v1, 0x1

    return v1

    .line 11680
    :cond_20
    return v1
.end method

.method public static greylist-max-q getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;
    .registers 2
    .param p0, "service"    # Lcom/android/internal/app/IAppOpsService;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10062
    invoke-static {}, Landroid/app/AppOpsManager;->getClientId()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getUidStateName(I)Ljava/lang/String;
    .registers 2
    .param p0, "uidState"    # I

    .line 638
    sparse-switch p0, :sswitch_data_22

    .line 656
    const-string/jumbo v0, "unknown"

    return-object v0

    .line 654
    :sswitch_7
    const-string/jumbo v0, "gone"

    return-object v0

    .line 652
    :sswitch_b
    const-string v0, "cch"

    return-object v0

    .line 650
    :sswitch_e
    const-string v0, "bg"

    return-object v0

    .line 648
    :sswitch_11
    const-string v0, "fg"

    return-object v0

    .line 646
    :sswitch_14
    const-string v0, "fgsvc"

    return-object v0

    .line 644
    :sswitch_17
    const-string v0, "fgsvcl"

    return-object v0

    .line 642
    :sswitch_1a
    const-string/jumbo v0, "top"

    return-object v0

    .line 640
    :sswitch_1e
    const-string/jumbo v0, "pers"

    return-object v0

    :sswitch_data_22
    .sparse-switch
        0x64 -> :sswitch_1e
        0xc8 -> :sswitch_1a
        0x12c -> :sswitch_17
        0x190 -> :sswitch_14
        0x1f4 -> :sswitch_11
        0x258 -> :sswitch_e
        0x2bc -> :sswitch_b
        0x7fffffff -> :sswitch_7
    .end sparse-switch
.end method

.method public static blacklist historicalModeToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "mode"    # I

    .line 11647
    packed-switch p0, :pswitch_data_10

    .line 11658
    const-string v0, "UNKNOWN"

    return-object v0

    .line 11655
    :pswitch_6
    const-string v0, "HISTORICAL_MODE_ENABLED_PASSIVE"

    return-object v0

    .line 11652
    :pswitch_9
    const-string v0, "HISTORICAL_MODE_ENABLED_ACTIVE"

    return-object v0

    .line 11649
    :pswitch_c
    const-string v0, "HISTORICAL_MODE_DISABLED"

    return-object v0

    nop

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method public static blacklist invalidateAppOpModeCache()V
    .registers 2

    .line 8222
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->appopModeCachingEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 8223
    const-string/jumbo v0, "system_server"

    const-string v1, "getAppOpMode"

    invoke-static {v0, v1}, Landroid/os/IpcDataCache;->invalidateCache(Ljava/lang/String;Ljava/lang/String;)V

    .line 8225
    :cond_e
    return-void
.end method

.method private static blacklist isAppOpModeCachingEnabled(I)Z
    .registers 3
    .param p0, "opCode"    # I

    .line 8212
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->appopModeCachingEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 8213
    return v1

    .line 8215
    :cond_8
    sget-object v0, Landroid/app/AppOpsManager;->OPS_WITHOUT_CACHING:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static blacklist isCollectingStackTraces()Z
    .registers 4

    .line 11102
    sget-object v0, Landroid/app/AppOpsManager;->sConfig:Lcom/android/internal/app/MessageSamplingConfig;

    invoke-virtual {v0}, Lcom/android/internal/app/MessageSamplingConfig;->getSampledOpCode()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_21

    sget-object v0, Landroid/app/AppOpsManager;->sConfig:Lcom/android/internal/app/MessageSamplingConfig;

    invoke-virtual {v0}, Lcom/android/internal/app/MessageSamplingConfig;->getAcceptableLeftDistance()I

    move-result v0

    if-nez v0, :cond_21

    sget-object v0, Landroid/app/AppOpsManager;->sConfig:Lcom/android/internal/app/MessageSamplingConfig;

    .line 11103
    invoke-virtual {v0}, Lcom/android/internal/app/MessageSamplingConfig;->getExpirationTimeSinceBootMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_21

    .line 11104
    const/4 v0, 0x0

    return v0

    .line 11106
    :cond_21
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist isListeningForOpNoted()Z
    .registers 1

    .line 11091
    sget-object v0, Landroid/app/AppOpsManager;->sOnOpNotedCallback:Landroid/app/AppOpsManager$OnOpNotedCallback;

    if-nez v0, :cond_d

    invoke-static {}, Landroid/app/AppOpsManager;->isCollectingStackTraces()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method private blacklist isNoteOpBatchingSupported()Z
    .registers 3

    .line 271
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_a

    .line 272
    const/4 v0, 0x0

    return v0

    .line 274
    :cond_a
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->noteOpBatchingEnabled()Z

    move-result v0

    return v0
.end method

.method private static blacklist isPackagePreInstalled(Landroid/content/Context;Ljava/lang/String;I)Z
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 9903
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 9904
    .local v1, "pm":Landroid/content/pm/PackageManager;
    nop

    .line 9905
    invoke-virtual {v1, p1, v0, p2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 9906
    .local v2, "info":Landroid/content/pm/ApplicationInfo;
    iget v3, v2, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_c} :catch_12

    const/4 v4, 0x1

    and-int/2addr v3, v4

    if-eqz v3, :cond_11

    move v0, v4

    :cond_11
    return v0

    .line 9907
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .end local v2    # "info":Landroid/content/pm/ApplicationInfo;
    :catch_12
    move-exception v1

    .line 9908
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v0
.end method

.method public static blacklist isValidOp(I)Z
    .registers 2
    .param p0, "op"    # I

    .line 3444
    if-ltz p0, :cond_9

    sget-object v0, Landroid/app/AppOpsManager;->sAppOpInfos:[Landroid/app/AppOpInfo;

    array-length v0, v0

    if-ge p0, v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public static blacklist keyToString(J)Ljava/lang/String;
    .registers 6
    .param p0, "key"    # J

    .line 889
    invoke-static {p0, p1}, Landroid/app/AppOpsManager;->extractUidStateFromKey(J)I

    move-result v0

    .line 890
    .local v0, "uidState":I
    invoke-static {p0, p1}, Landroid/app/AppOpsManager;->extractFlagsFromKey(J)I

    move-result v1

    .line 891
    .local v1, "flags":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/app/AppOpsManager;->getUidStateName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Landroid/app/AppOpsManager;->flagsToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private synthetic blacklist lambda$batchDuplicateNoteOps$5()V
    .registers 4

    .line 9640
    sget-object v0, Landroid/app/AppOpsManager;->sBatchedNoteOpLock:Ljava/lang/Object;

    monitor-enter v0

    .line 9641
    const/4 v1, 0x0

    :try_start_4
    sput-boolean v1, Landroid/app/AppOpsManager;->sIsBatchedNoteOpCallScheduled:Z

    .line 9642
    sget-object v1, Landroid/app/AppOpsManager;->sPendingNotedOps:Landroid/util/ArrayMap;

    .line 9643
    .local v1, "pendingNotedOpsCopy":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/app/AppOpsManager$NotedOp;Ljava/lang/Integer;>;"
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    sput-object v2, Landroid/app/AppOpsManager;->sPendingNotedOps:Landroid/util/ArrayMap;

    .line 9644
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_3d

    .line 9645
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_16
    if-ltz v0, :cond_2a

    .line 9646
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_27

    .line 9647
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 9645
    :cond_27
    add-int/lit8 v0, v0, -0x1

    goto :goto_16

    .line 9650
    .end local v0    # "i":I
    :cond_2a
    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3c

    .line 9652
    :try_start_30
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, v1}, Lcom/android/internal/app/IAppOpsService;->noteOperationsInBatch(Ljava/util/Map;)V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_35} :catch_36

    .line 9655
    goto :goto_3c

    .line 9653
    :catch_36
    move-exception v0

    .line 9654
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 9657
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3c
    :goto_3c
    return-void

    .line 9644
    .end local v1    # "pendingNotedOpsCopy":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/app/AppOpsManager$NotedOp;Ljava/lang/Integer;>;"
    :catchall_3d
    move-exception v1

    :try_start_3e
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    throw v1
.end method

.method static synthetic blacklist lambda$getHistoricalOps$1(Ljava/util/function/Consumer;Landroid/app/AppOpsManager$HistoricalOps;)V
    .registers 2
    .param p0, "callback"    # Ljava/util/function/Consumer;
    .param p1, "ops"    # Landroid/app/AppOpsManager$HistoricalOps;

    .line 8498
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$getHistoricalOps$2(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;Landroid/os/Bundle;)V
    .registers 7
    .param p0, "executor"    # Ljava/util/concurrent/Executor;
    .param p1, "callback"    # Ljava/util/function/Consumer;
    .param p2, "result"    # Landroid/os/Bundle;

    .line 8495
    const-string/jumbo v0, "historical_ops"

    const-class v1, Landroid/app/AppOpsManager$HistoricalOps;

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager$HistoricalOps;

    .line 8496
    .local v0, "ops":Landroid/app/AppOpsManager$HistoricalOps;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 8498
    .local v1, "identity":J
    :try_start_f
    new-instance v3, Landroid/app/AppOpsManager$$ExternalSyntheticLambda0;

    invoke-direct {v3, p1, v0}, Landroid/app/AppOpsManager$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;Landroid/app/AppOpsManager$HistoricalOps;)V

    invoke-interface {p0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_17
    .catchall {:try_start_f .. :try_end_17} :catchall_1c

    .line 8500
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 8501
    nop

    .line 8502
    return-void

    .line 8500
    :catchall_1c
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 8501
    throw v3
.end method

.method static synthetic blacklist lambda$getHistoricalOpsFromDiskRaw$3(Ljava/util/function/Consumer;Landroid/app/AppOpsManager$HistoricalOps;)V
    .registers 2
    .param p0, "callback"    # Ljava/util/function/Consumer;
    .param p1, "ops"    # Landroid/app/AppOpsManager$HistoricalOps;

    .line 8538
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$getHistoricalOpsFromDiskRaw$4(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;Landroid/os/Bundle;)V
    .registers 7
    .param p0, "executor"    # Ljava/util/concurrent/Executor;
    .param p1, "callback"    # Ljava/util/function/Consumer;
    .param p2, "result"    # Landroid/os/Bundle;

    .line 8535
    const-string/jumbo v0, "historical_ops"

    const-class v1, Landroid/app/AppOpsManager$HistoricalOps;

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager$HistoricalOps;

    .line 8536
    .local v0, "ops":Landroid/app/AppOpsManager$HistoricalOps;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 8538
    .local v1, "identity":J
    :try_start_f
    new-instance v3, Landroid/app/AppOpsManager$$ExternalSyntheticLambda3;

    invoke-direct {v3, p1, v0}, Landroid/app/AppOpsManager$$ExternalSyntheticLambda3;-><init>(Ljava/util/function/Consumer;Landroid/app/AppOpsManager$HistoricalOps;)V

    invoke-interface {p0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_17
    .catchall {:try_start_f .. :try_end_17} :catchall_1c

    .line 8540
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 8541
    nop

    .line 8542
    return-void

    .line 8540
    :catchall_1c
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 8541
    throw v3
.end method

.method static synthetic blacklist lambda$new$0(Landroid/provider/DeviceConfig$Properties;)V
    .registers 3
    .param p0, "properties"    # Landroid/provider/DeviceConfig$Properties;

    .line 8298
    invoke-virtual {p0}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v0

    const-string/jumbo v1, "privacy_attribution_tag_full_log_enabled"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 8299
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/app/AppOpsManager;->sFullLog:Ljava/lang/Boolean;

    .line 8301
    :cond_18
    return-void
.end method

.method static synthetic blacklist lambda$setOnOpNotedCallback$6(Landroid/app/AppOpsManager$OnOpNotedCallback;Landroid/app/AsyncNotedAppOp;)V
    .registers 2
    .param p0, "onOpNotedCallback"    # Landroid/app/AppOpsManager$OnOpNotedCallback;
    .param p1, "asyncNotedAppOp"    # Landroid/app/AsyncNotedAppOp;

    .line 11044
    invoke-virtual {p0, p1}, Landroid/app/AppOpsManager$OnOpNotedCallback;->onAsyncNoted(Landroid/app/AsyncNotedAppOp;)V

    return-void
.end method

.method static synthetic blacklist lambda$setOnOpNotedCallback$7(Landroid/app/AppOpsManager$OnOpNotedCallback;Landroid/app/AsyncNotedAppOp;)V
    .registers 2
    .param p0, "onOpNotedCallback"    # Landroid/app/AppOpsManager$OnOpNotedCallback;
    .param p1, "syncNotedAppOp"    # Landroid/app/AsyncNotedAppOp;

    .line 11052
    invoke-virtual {p0, p1}, Landroid/app/AppOpsManager$OnOpNotedCallback;->onAsyncNoted(Landroid/app/AsyncNotedAppOp;)V

    return-void
.end method

.method public static blacklist leftCircularDistance(III)I
    .registers 4
    .param p0, "from"    # I
    .param p1, "to"    # I
    .param p2, "size"    # I

    .line 11688
    add-int v0, p1, p2

    sub-int/2addr v0, p0

    rem-int/2addr v0, p2

    return v0
.end method

.method private static blacklist listForFlagsInStates(Ljava/util/List;III)Ljava/util/List;
    .registers 12
    .param p1, "beginUidState"    # I
    .param p2, "endUidState"    # I
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$AttributedOpEntry;",
            ">;III)",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$AttributedOpEntry;",
            ">;"
        }
    .end annotation

    .line 7811
    .local p0, "accesses":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$AttributedOpEntry;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7812
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$AttributedOpEntry;>;"
    if-nez p0, :cond_8

    .line 7813
    return-object v0

    .line 7815
    :cond_8
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 7816
    .local v1, "nAccesses":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    if-ge v2, v1, :cond_26

    .line 7817
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager$AttributedOpEntry;

    .line 7818
    .local v3, "entry":Landroid/app/AppOpsManager$AttributedOpEntry;
    invoke-virtual {v3, p1, p2, p3}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastAccessTime(III)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_20

    .line 7819
    goto :goto_23

    .line 7821
    :cond_20
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7816
    .end local v3    # "entry":Landroid/app/AppOpsManager$AttributedOpEntry;
    :goto_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 7823
    .end local v2    # "i":I
    :cond_26
    invoke-static {v0}, Landroid/app/AppOpsManager;->deduplicateDiscreteEvents(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public static blacklist makeKey(II)J
    .registers 6
    .param p0, "uidState"    # I
    .param p1, "flags"    # I

    .line 896
    int-to-long v0, p0

    const/16 v2, 0x1f

    shl-long/2addr v0, v2

    int-to-long v2, p1

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private static blacklist mergeAttributedOpEntries(Ljava/util/List;)Landroid/app/AppOpsManager$AttributedOpEntry;
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$AttributedOpEntry;",
            ">;)",
            "Landroid/app/AppOpsManager$AttributedOpEntry;"
        }
    .end annotation

    .line 11729
    .local p0, "opEntries":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$AttributedOpEntry;>;"
    move-object/from16 v0, p0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_11

    .line 11730
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager$AttributedOpEntry;

    return-object v1

    .line 11732
    :cond_11
    new-instance v1, Landroid/util/LongSparseArray;

    invoke-direct {v1}, Landroid/util/LongSparseArray;-><init>()V

    .line 11733
    .local v1, "accessEvents":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/app/AppOpsManager$NoteOpEvent;>;"
    new-instance v2, Landroid/util/LongSparseArray;

    invoke-direct {v2}, Landroid/util/LongSparseArray;-><init>()V

    .line 11734
    .local v2, "rejectEvents":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/app/AppOpsManager$NoteOpEvent;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .line 11735
    .local v4, "opCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_20
    if-ge v5, v4, :cond_a5

    .line 11736
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AppOpsManager$AttributedOpEntry;

    .line 11737
    .local v6, "a":Landroid/app/AppOpsManager$AttributedOpEntry;
    invoke-virtual {v6}, Landroid/app/AppOpsManager$AttributedOpEntry;->collectKeys()Landroid/util/ArraySet;

    move-result-object v7

    .line 11738
    .local v7, "keys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    move-result v8

    .line 11739
    .local v8, "keyCount":I
    const/4 v9, 0x0

    .local v9, "k":I
    :goto_31
    if-ge v9, v8, :cond_9e

    .line 11740
    invoke-virtual {v7, v9}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 11742
    .local v10, "key":J
    invoke-static {v10, v11}, Landroid/app/AppOpsManager;->extractUidStateFromKey(J)I

    move-result v12

    .line 11743
    .local v12, "uidState":I
    invoke-static {v10, v11}, Landroid/app/AppOpsManager;->extractFlagsFromKey(J)I

    move-result v13

    .line 11745
    .local v13, "flags":I
    invoke-static {v6, v12, v12, v13}, Landroid/app/AppOpsManager$AttributedOpEntry;->-$$Nest$mgetLastAccessEvent(Landroid/app/AppOpsManager$AttributedOpEntry;III)Landroid/app/AppOpsManager$NoteOpEvent;

    move-result-object v14

    .line 11746
    .local v14, "access":Landroid/app/AppOpsManager$NoteOpEvent;
    invoke-static {v6, v12, v12, v13}, Landroid/app/AppOpsManager$AttributedOpEntry;->-$$Nest$mgetLastRejectEvent(Landroid/app/AppOpsManager$AttributedOpEntry;III)Landroid/app/AppOpsManager$NoteOpEvent;

    move-result-object v15

    .line 11748
    .local v15, "reject":Landroid/app/AppOpsManager$NoteOpEvent;
    if-eqz v14, :cond_91

    .line 11749
    invoke-virtual {v1, v10, v11}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v3, v16

    check-cast v3, Landroid/app/AppOpsManager$NoteOpEvent;

    .line 11750
    .local v3, "existingAccess":Landroid/app/AppOpsManager$NoteOpEvent;
    if-eqz v3, :cond_8b

    invoke-virtual {v3}, Landroid/app/AppOpsManager$NoteOpEvent;->getDuration()J

    move-result-wide v17

    const-wide/16 v19, -0x1

    cmp-long v16, v17, v19

    if-eqz v16, :cond_8b

    .line 11751
    invoke-virtual {v3}, Landroid/app/AppOpsManager$NoteOpEvent;->getDuration()J

    move-result-wide v17

    invoke-virtual {v14}, Landroid/app/AppOpsManager$NoteOpEvent;->getDuration()J

    move-result-wide v19

    cmp-long v16, v17, v19

    if-gez v16, :cond_72

    move/from16 v16, v4

    goto :goto_8d

    .line 11753
    :cond_72
    invoke-static {v3}, Landroid/app/AppOpsManager$NoteOpEvent;->-$$Nest$fgetmProxy(Landroid/app/AppOpsManager$NoteOpEvent;)Landroid/app/AppOpsManager$OpEventProxyInfo;

    move-result-object v16

    if-nez v16, :cond_88

    invoke-static {v14}, Landroid/app/AppOpsManager$NoteOpEvent;->-$$Nest$fgetmProxy(Landroid/app/AppOpsManager$NoteOpEvent;)Landroid/app/AppOpsManager$OpEventProxyInfo;

    move-result-object v16

    if-eqz v16, :cond_88

    .line 11754
    move/from16 v16, v4

    .end local v4    # "opCount":I
    .local v16, "opCount":I
    invoke-static {v14}, Landroid/app/AppOpsManager$NoteOpEvent;->-$$Nest$fgetmProxy(Landroid/app/AppOpsManager$NoteOpEvent;)Landroid/app/AppOpsManager$OpEventProxyInfo;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/app/AppOpsManager$NoteOpEvent;->-$$Nest$fputmProxy(Landroid/app/AppOpsManager$NoteOpEvent;Landroid/app/AppOpsManager$OpEventProxyInfo;)V

    goto :goto_93

    .line 11753
    .end local v16    # "opCount":I
    .restart local v4    # "opCount":I
    :cond_88
    move/from16 v16, v4

    .end local v4    # "opCount":I
    .restart local v16    # "opCount":I
    goto :goto_93

    .line 11750
    .end local v16    # "opCount":I
    .restart local v4    # "opCount":I
    :cond_8b
    move/from16 v16, v4

    .line 11752
    .end local v4    # "opCount":I
    .restart local v16    # "opCount":I
    :goto_8d
    invoke-virtual {v1, v10, v11, v14}, Landroid/util/LongSparseArray;->append(JLjava/lang/Object;)V

    goto :goto_93

    .line 11748
    .end local v3    # "existingAccess":Landroid/app/AppOpsManager$NoteOpEvent;
    .end local v16    # "opCount":I
    .restart local v4    # "opCount":I
    :cond_91
    move/from16 v16, v4

    .line 11757
    .end local v4    # "opCount":I
    .restart local v16    # "opCount":I
    :goto_93
    if-eqz v15, :cond_98

    .line 11758
    invoke-virtual {v2, v10, v11, v15}, Landroid/util/LongSparseArray;->append(JLjava/lang/Object;)V

    .line 11739
    .end local v10    # "key":J
    .end local v12    # "uidState":I
    .end local v13    # "flags":I
    .end local v14    # "access":Landroid/app/AppOpsManager$NoteOpEvent;
    .end local v15    # "reject":Landroid/app/AppOpsManager$NoteOpEvent;
    :cond_98
    add-int/lit8 v9, v9, 0x1

    move/from16 v4, v16

    const/4 v3, 0x0

    goto :goto_31

    .end local v16    # "opCount":I
    .restart local v4    # "opCount":I
    :cond_9e
    move/from16 v16, v4

    .line 11735
    .end local v4    # "opCount":I
    .end local v6    # "a":Landroid/app/AppOpsManager$AttributedOpEntry;
    .end local v7    # "keys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .end local v8    # "keyCount":I
    .end local v9    # "k":I
    .restart local v16    # "opCount":I
    add-int/lit8 v5, v5, 0x1

    const/4 v3, 0x0

    goto/16 :goto_20

    .end local v16    # "opCount":I
    .restart local v4    # "opCount":I
    :cond_a5
    move/from16 v16, v4

    .line 11762
    .end local v4    # "opCount":I
    .end local v5    # "i":I
    .restart local v16    # "opCount":I
    new-instance v3, Landroid/app/AppOpsManager$AttributedOpEntry;

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AppOpsManager$AttributedOpEntry;

    invoke-static {v5}, Landroid/app/AppOpsManager$AttributedOpEntry;->-$$Nest$fgetmOp(Landroid/app/AppOpsManager$AttributedOpEntry;)I

    move-result v5

    invoke-direct {v3, v5, v4, v1, v2}, Landroid/app/AppOpsManager$AttributedOpEntry;-><init>(IZLandroid/util/LongSparseArray;Landroid/util/LongSparseArray;)V

    return-object v3
.end method

.method public static greylist-max-o modeToName(I)Ljava/lang/String;
    .registers 3
    .param p0, "mode"    # I

    .line 3556
    if-ltz p0, :cond_c

    sget-object v0, Landroid/app/AppOpsManager;->MODE_NAMES:[Ljava/lang/String;

    array-length v0, v0

    if-ge p0, v0, :cond_c

    .line 3557
    sget-object v0, Landroid/app/AppOpsManager;->MODE_NAMES:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0

    .line 3559
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)I
    .registers 23
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;
    .param p5, "virtualDeviceId"    # I
    .param p6, "message"    # Ljava/lang/String;

    .line 9668
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p3

    :try_start_6
    invoke-direct/range {p0 .. p1}, Landroid/app/AppOpsManager;->collectNoteOpCallsForValidation(I)V

    .line 9669
    move/from16 v4, p2

    invoke-direct {v1, v4, v3, v2}, Landroid/app/AppOpsManager;->getNotedOpCollectionMode(ILjava/lang/String;I)I

    move-result v0

    move v10, v0

    .line 9670
    .local v10, "collectionMode":I
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_14} :catch_100

    const/16 v5, 0x3e8

    const/4 v12, 0x1

    if-ne v0, v5, :cond_1b

    move v0, v12

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    .line 9671
    .local v0, "shouldCollectMessage":Z
    :goto_1c
    const/4 v13, 0x3

    if-ne v10, v13, :cond_2e

    .line 9672
    if-nez p6, :cond_2e

    .line 9674
    :try_start_21
    invoke-static {}, Landroid/app/AppOpsManager;->getFormattedStackTrace()Ljava/lang/String;

    move-result-object v5
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_25} :catch_28

    .line 9675
    .end local p6    # "message":Ljava/lang/String;
    .local v5, "message":Ljava/lang/String;
    const/4 v0, 0x1

    move-object v9, v5

    goto :goto_30

    .line 9716
    .end local v0    # "shouldCollectMessage":Z
    .end local v5    # "message":Ljava/lang/String;
    .end local v10    # "collectionMode":I
    .restart local p6    # "message":Ljava/lang/String;
    :catch_28
    move-exception v0

    move-object/from16 v7, p6

    move-object v9, v1

    goto/16 :goto_104

    .line 9679
    .restart local v0    # "shouldCollectMessage":Z
    .restart local v10    # "collectionMode":I
    :cond_2e
    move-object/from16 v9, p6

    .end local p6    # "message":Ljava/lang/String;
    .local v9, "message":Ljava/lang/String;
    :goto_30
    const/4 v14, 0x0

    .line 9680
    .local v14, "syncOp":Landroid/app/SyncNotedAppOp;
    const/4 v15, 0x0

    .line 9681
    .local v15, "isNoteOpDuplicated":Z
    :try_start_32
    invoke-direct {v1}, Landroid/app/AppOpsManager;->isNoteOpBatchingSupported()Z

    move-result v5
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_36} :catch_fc

    if-eqz v5, :cond_ae

    .line 9682
    :try_start_38
    sget-object v5, Landroid/app/AppOpsManager;->sAppOpModeCache:Landroid/os/IpcDataCache;
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_3a} :catch_a6

    :try_start_3a
    new-instance v2, Landroid/app/AppOpsManager$AppOpModeQuery;

    const-string/jumbo v8, "noteOpNoThrow"
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_3f} :catch_9d

    move-object/from16 v7, p4

    move/from16 v6, p5

    move-object v11, v5

    move-object v5, v3

    move/from16 v3, p1

    :try_start_47
    invoke-direct/range {v2 .. v8}, Landroid/app/AppOpsManager$AppOpModeQuery;-><init>(IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_47 .. :try_end_4a} :catch_95

    :try_start_4a
    invoke-virtual {v11, v2}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_54
    .catch Landroid/os/RemoteException; {:try_start_4a .. :try_end_54} :catch_91

    move v11, v2

    .line 9687
    .local v11, "mode":I
    const/4 v2, 0x4

    if-eq v11, v2, :cond_87

    .line 9688
    if-ne v10, v13, :cond_5c

    move v8, v12

    goto :goto_5d

    :cond_5c
    const/4 v8, 0x0

    :goto_5d
    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object v7, v9

    move v9, v0

    .end local v0    # "shouldCollectMessage":Z
    .local v7, "message":Ljava/lang/String;
    .local v9, "shouldCollectMessage":Z
    :try_start_69
    invoke-direct/range {v1 .. v9}, Landroid/app/AppOpsManager;->batchDuplicateNoteOps(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ZZ)Z

    move-result v0
    :try_end_6d
    .catch Landroid/os/RemoteException; {:try_start_69 .. :try_end_6d} :catch_80

    move-object v3, v4

    move v8, v9

    move-object v9, v1

    move v1, v2

    .end local v9    # "shouldCollectMessage":Z
    .local v8, "shouldCollectMessage":Z
    move v15, v0

    .line 9692
    :try_start_72
    new-instance v0, Landroid/app/SyncNotedAppOp;
    :try_end_74
    .catch Landroid/os/RemoteException; {:try_start_72 .. :try_end_74} :catch_7b

    move-object/from16 v4, p4

    :try_start_76
    invoke-direct {v0, v11, v1, v4, v3}, Landroid/app/SyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    move-object v14, v0

    goto :goto_b4

    .line 9716
    .end local v8    # "shouldCollectMessage":Z
    .end local v10    # "collectionMode":I
    .end local v11    # "mode":I
    .end local v14    # "syncOp":Landroid/app/SyncNotedAppOp;
    .end local v15    # "isNoteOpDuplicated":Z
    :catch_7b
    move-exception v0

    move-object/from16 v4, p4

    goto/16 :goto_104

    :catch_80
    move-exception v0

    move-object v9, v1

    move v1, v2

    move-object v3, v4

    move-object v4, v5

    goto/16 :goto_104

    .line 9687
    .end local v7    # "message":Ljava/lang/String;
    .restart local v0    # "shouldCollectMessage":Z
    .local v9, "message":Ljava/lang/String;
    .restart local v10    # "collectionMode":I
    .restart local v11    # "mode":I
    .restart local v14    # "syncOp":Landroid/app/SyncNotedAppOp;
    .restart local v15    # "isNoteOpDuplicated":Z
    :cond_87
    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move v8, v0

    move-object v7, v9

    move-object v9, v1

    move/from16 v1, p1

    .end local v0    # "shouldCollectMessage":Z
    .end local v9    # "message":Ljava/lang/String;
    .restart local v7    # "message":Ljava/lang/String;
    .restart local v8    # "shouldCollectMessage":Z
    goto :goto_b4

    .line 9716
    .end local v7    # "message":Ljava/lang/String;
    .end local v8    # "shouldCollectMessage":Z
    .end local v10    # "collectionMode":I
    .end local v11    # "mode":I
    .end local v14    # "syncOp":Landroid/app/SyncNotedAppOp;
    .end local v15    # "isNoteOpDuplicated":Z
    .restart local v9    # "message":Ljava/lang/String;
    :catch_91
    move-exception v0

    move-object/from16 v3, p3

    goto :goto_9e

    :catch_95
    move-exception v0

    move-object v4, v7

    move-object v7, v9

    move-object v9, v1

    move v1, v3

    move-object v3, v5

    goto/16 :goto_ff

    :catch_9d
    move-exception v0

    :goto_9e
    move-object/from16 v4, p4

    move-object v7, v9

    move-object v9, v1

    move/from16 v1, p1

    goto/16 :goto_ff

    :catch_a6
    move-exception v0

    move-object/from16 v4, p4

    move-object v7, v9

    move-object v9, v1

    move v1, v2

    goto/16 :goto_ff

    .line 9681
    .restart local v0    # "shouldCollectMessage":Z
    .restart local v10    # "collectionMode":I
    .restart local v14    # "syncOp":Landroid/app/SyncNotedAppOp;
    .restart local v15    # "isNoteOpDuplicated":Z
    :cond_ae
    move-object/from16 v4, p4

    move v8, v0

    move-object v7, v9

    move-object v9, v1

    move v1, v2

    .line 9696
    .end local v0    # "shouldCollectMessage":Z
    .end local v9    # "message":Ljava/lang/String;
    .restart local v7    # "message":Ljava/lang/String;
    .restart local v8    # "shouldCollectMessage":Z
    :goto_b4
    if-nez v15, :cond_e3

    .line 9697
    if-nez p5, :cond_cd

    .line 9698
    iget-object v0, v9, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;
    :try_end_ba
    .catch Landroid/os/RemoteException; {:try_start_76 .. :try_end_ba} :catch_fa

    if-ne v10, v13, :cond_be

    move v5, v12

    goto :goto_bf

    :cond_be
    const/4 v5, 0x0

    :goto_bf
    move/from16 v2, p2

    move-object v6, v7

    move v7, v8

    .end local v8    # "shouldCollectMessage":Z
    .local v6, "message":Ljava/lang/String;
    .local v7, "shouldCollectMessage":Z
    :try_start_c3
    invoke-interface/range {v0 .. v7}, Lcom/android/internal/app/IAppOpsService;->noteOperation(IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)Landroid/app/SyncNotedAppOp;

    move-result-object v0
    :try_end_c7
    .catch Landroid/os/RemoteException; {:try_start_c3 .. :try_end_c7} :catch_ca

    move-object v7, v6

    .end local v6    # "message":Ljava/lang/String;
    .local v7, "message":Ljava/lang/String;
    .restart local v8    # "shouldCollectMessage":Z
    move-object v14, v0

    goto :goto_e3

    .line 9716
    .end local v7    # "message":Ljava/lang/String;
    .end local v8    # "shouldCollectMessage":Z
    .end local v10    # "collectionMode":I
    .end local v14    # "syncOp":Landroid/app/SyncNotedAppOp;
    .end local v15    # "isNoteOpDuplicated":Z
    .restart local v6    # "message":Ljava/lang/String;
    :catch_ca
    move-exception v0

    move-object v7, v6

    .end local v6    # "message":Ljava/lang/String;
    .restart local v7    # "message":Ljava/lang/String;
    goto :goto_104

    .line 9701
    .restart local v8    # "shouldCollectMessage":Z
    .restart local v10    # "collectionMode":I
    .restart local v14    # "syncOp":Landroid/app/SyncNotedAppOp;
    .restart local v15    # "isNoteOpDuplicated":Z
    :cond_cd
    :try_start_cd
    iget-object v0, v9, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    if-ne v10, v13, :cond_d3

    move v6, v12

    goto :goto_d4

    :cond_d3
    const/4 v6, 0x0

    :goto_d4
    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    invoke-interface/range {v0 .. v8}, Lcom/android/internal/app/IAppOpsService;->noteOperationForDevice(IILjava/lang/String;Ljava/lang/String;IZLjava/lang/String;Z)Landroid/app/SyncNotedAppOp;

    move-result-object v0

    move-object v14, v0

    .line 9707
    :cond_e3
    :goto_e3
    invoke-virtual {v14}, Landroid/app/SyncNotedAppOp;->getOpMode()I

    move-result v0

    if-nez v0, :cond_f5

    .line 9708
    if-ne v10, v12, :cond_ef

    .line 9709
    invoke-direct {v9, v14}, Landroid/app/AppOpsManager;->collectNotedOpForSelf(Landroid/app/SyncNotedAppOp;)V

    goto :goto_f5

    .line 9710
    :cond_ef
    const/4 v0, 0x2

    if-ne v10, v0, :cond_f5

    .line 9711
    invoke-static {v14}, Landroid/app/AppOpsManager;->collectNotedOpSync(Landroid/app/SyncNotedAppOp;)V

    .line 9715
    :cond_f5
    :goto_f5
    invoke-virtual {v14}, Landroid/app/SyncNotedAppOp;->getOpMode()I

    move-result v0
    :try_end_f9
    .catch Landroid/os/RemoteException; {:try_start_cd .. :try_end_f9} :catch_fa

    return v0

    .line 9716
    .end local v8    # "shouldCollectMessage":Z
    .end local v10    # "collectionMode":I
    .end local v14    # "syncOp":Landroid/app/SyncNotedAppOp;
    .end local v15    # "isNoteOpDuplicated":Z
    :catch_fa
    move-exception v0

    goto :goto_104

    .end local v7    # "message":Ljava/lang/String;
    .restart local v9    # "message":Ljava/lang/String;
    :catch_fc
    move-exception v0

    move-object v7, v9

    move-object v9, v1

    .end local v9    # "message":Ljava/lang/String;
    .restart local v7    # "message":Ljava/lang/String;
    :goto_ff
    goto :goto_104

    .end local v7    # "message":Ljava/lang/String;
    .restart local p6    # "message":Ljava/lang/String;
    :catch_100
    move-exception v0

    move-object v9, v1

    move-object/from16 v7, p6

    .line 9717
    .end local p6    # "message":Ljava/lang/String;
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v7    # "message":Ljava/lang/String;
    :goto_104
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static blacklist opAllowSystemBypassRestriction(I)Landroid/app/AppOpsManager$RestrictionBypass;
    .registers 2
    .param p0, "op"    # I

    .line 3526
    sget-object v0, Landroid/app/AppOpsManager;->sAppOpInfos:[Landroid/app/AppOpInfo;

    aget-object v0, v0, p0

    iget-object v0, v0, Landroid/app/AppOpInfo;->allowSystemRestrictionBypass:Landroid/app/AppOpsManager$RestrictionBypass;

    return-object v0
.end method

.method public static greylist-max-o opAllowsReset(I)Z
    .registers 2
    .param p0, "op"    # I

    .line 3575
    sget-object v0, Landroid/app/AppOpsManager;->sAppOpInfos:[Landroid/app/AppOpInfo;

    aget-object v0, v0, p0

    iget-boolean v0, v0, Landroid/app/AppOpInfo;->disableReset:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static blacklist opIsPackageAppOpPermission(I)Z
    .registers 2
    .param p0, "op"    # I

    .line 3583
    sget-object v0, Landroid/app/AppOpsManager;->APP_OP_PERMISSION_PACKAGE_OPS:[I

    invoke-static {v0, p0}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    return v0
.end method

.method public static blacklist opIsRuntimePermission(I)Z
    .registers 2
    .param p0, "op"    # I

    .line 3487
    const/4 v0, -0x1

    if-ne p0, v0, :cond_5

    const/4 v0, 0x0

    return v0

    .line 3489
    :cond_5
    sget-object v0, Landroid/app/AppOpsManager;->RUNTIME_PERMISSION_OPS:[I

    invoke-static {v0, p0}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    return v0
.end method

.method public static blacklist opIsUidAppOpPermission(I)Z
    .registers 2
    .param p0, "op"    # I

    .line 3591
    sget-object v0, Landroid/app/AppOpsManager;->APP_OP_PERMISSION_UID_OPS:[I

    invoke-static {v0, p0}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    return v0
.end method

.method public static blacklist opRestrictsRead(I)Z
    .registers 2
    .param p0, "op"    # I

    .line 3567
    sget-object v0, Landroid/app/AppOpsManager;->sAppOpInfos:[Landroid/app/AppOpInfo;

    aget-object v0, v0, p0

    iget-boolean v0, v0, Landroid/app/AppOpInfo;->restrictRead:Z

    return v0
.end method

.method public static greylist-max-o opToDefaultMode(I)I
    .registers 2
    .param p0, "op"    # I

    .line 3534
    sget-object v0, Landroid/app/AppOpsManager;->sAppOpInfos:[Landroid/app/AppOpInfo;

    aget-object v0, v0, p0

    iget v0, v0, Landroid/app/AppOpInfo;->defaultMode:I

    return v0
.end method

.method public static whitelist opToDefaultMode(Ljava/lang/String;)I
    .registers 2
    .param p0, "appOp"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3548
    invoke-static {p0}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v0

    return v0
.end method

.method public static greylist-max-r opToName(I)Ljava/lang/String;
    .registers 3
    .param p0, "op"    # I

    .line 3425
    const/4 v0, -0x1

    if-ne p0, v0, :cond_6

    const-string v0, "NONE"

    return-object v0

    .line 3426
    :cond_6
    sget-object v0, Landroid/app/AppOpsManager;->sAppOpInfos:[Landroid/app/AppOpInfo;

    array-length v0, v0

    if-ge p0, v0, :cond_12

    sget-object v0, Landroid/app/AppOpsManager;->sAppOpInfos:[Landroid/app/AppOpInfo;

    aget-object v0, v0, p0

    iget-object v0, v0, Landroid/app/AppOpInfo;->simpleName:Ljava/lang/String;

    goto :goto_2b

    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2b
    return-object v0
.end method

.method public static greylist-max-r opToPermission(I)Ljava/lang/String;
    .registers 2
    .param p0, "op"    # I

    .line 3466
    sget-object v0, Landroid/app/AppOpsManager;->sAppOpInfos:[Landroid/app/AppOpInfo;

    aget-object v0, v0, p0

    iget-object v0, v0, Landroid/app/AppOpInfo;->permission:Ljava/lang/String;

    return-object v0
.end method

.method public static whitelist opToPermission(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "op"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3479
    invoke-static {p0}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist opToPublicName(I)Ljava/lang/String;
    .registers 2
    .param p0, "op"    # I

    .line 3435
    sget-object v0, Landroid/app/AppOpsManager;->sAppOpInfos:[Landroid/app/AppOpInfo;

    aget-object v0, v0, p0

    iget-object v0, v0, Landroid/app/AppOpInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public static greylist-max-o opToRestriction(I)Ljava/lang/String;
    .registers 2
    .param p0, "op"    # I

    .line 3497
    sget-object v0, Landroid/app/AppOpsManager;->sAppOpInfos:[Landroid/app/AppOpInfo;

    aget-object v0, v0, p0

    iget-object v0, v0, Landroid/app/AppOpInfo;->restriction:Ljava/lang/String;

    return-object v0
.end method

.method public static greylist opToSwitch(I)I
    .registers 2
    .param p0, "op"    # I

    .line 3416
    sget-object v0, Landroid/app/AppOpsManager;->sAppOpInfos:[Landroid/app/AppOpInfo;

    aget-object v0, v0, p0

    iget v0, v0, Landroid/app/AppOpInfo;->switchCode:I

    return v0
.end method

.method public static blacklist parseHistoricalMode(Ljava/lang/String;)I
    .registers 4
    .param p0, "mode"    # Ljava/lang/String;

    .line 11632
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_26

    :cond_9
    goto :goto_1e

    :sswitch_a
    const-string v0, "HISTORICAL_MODE_ENABLED_PASSIVE"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v2

    goto :goto_1f

    :sswitch_14
    const-string v0, "HISTORICAL_MODE_ENABLED_ACTIVE"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    goto :goto_1f

    :goto_1e
    const/4 v0, -0x1

    :goto_1f
    packed-switch v0, :pswitch_data_30

    .line 11640
    return v1

    .line 11637
    :pswitch_23
    const/4 v0, 0x2

    return v0

    .line 11634
    :pswitch_25
    return v2

    :sswitch_data_26
    .sparse-switch
        0x93ff10b -> :sswitch_14
        0x34c83da2 -> :sswitch_a
    .end sparse-switch

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_25
        :pswitch_23
    .end packed-switch
.end method

.method public static blacklist pauseNotedAppOpsCollection()Landroid/app/AppOpsManager$PausedNotedAppOpsCollection;
    .registers 4

    .line 10655
    sget-object v0, Landroid/app/AppOpsManager;->sBinderThreadCallingUid:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 10656
    .local v0, "previousUid":Ljava/lang/Integer;
    if-eqz v0, :cond_26

    .line 10657
    sget-object v1, Landroid/app/AppOpsManager;->sAppOpsNotedInThisBinderTransaction:Ljava/lang/ThreadLocal;

    .line 10658
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    .line 10660
    .local v1, "previousCollectedNotedAppOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/BitSet;>;"
    sget-object v2, Landroid/app/AppOpsManager;->sBinderThreadCallingUid:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->remove()V

    .line 10661
    sget-object v2, Landroid/app/AppOpsManager;->sAppOpsNotedInThisBinderTransaction:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->remove()V

    .line 10663
    new-instance v2, Landroid/app/AppOpsManager$PausedNotedAppOpsCollection;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v2, v3, v1}, Landroid/app/AppOpsManager$PausedNotedAppOpsCollection;-><init>(ILandroid/util/ArrayMap;)V

    return-object v2

    .line 10666
    .end local v1    # "previousCollectedNotedAppOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/BitSet;>;"
    :cond_26
    const/4 v1, 0x0

    return-object v1
.end method

.method public static whitelist permissionToOp(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "permission"    # Ljava/lang/String;

    .line 8710
    sget-object v0, Landroid/app/AppOpsManager;->sPermToOp:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 8711
    .local v0, "opCode":Ljava/lang/Integer;
    if-eqz v0, :cond_15

    .line 8712
    sget-object v1, Landroid/app/AppOpsManager;->sAppOpInfos:[Landroid/app/AppOpInfo;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v1, v1, v2

    iget-object v1, v1, Landroid/app/AppOpInfo;->name:Ljava/lang/String;

    return-object v1

    .line 8714
    :cond_15
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1, p0}, Landroid/health/connect/HealthConnectManager;->isHealthPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 8716
    sget-object v1, Landroid/app/AppOpsManager;->sAppOpInfos:[Landroid/app/AppOpInfo;

    const/16 v2, 0x7e

    aget-object v1, v1, v2

    iget-object v1, v1, Landroid/app/AppOpInfo;->name:Ljava/lang/String;

    return-object v1

    .line 8718
    :cond_28
    const/4 v1, 0x0

    return-object v1
.end method

.method public static greylist permissionToOpCode(Ljava/lang/String;)I
    .registers 3
    .param p0, "permission"    # Ljava/lang/String;

    .line 3509
    sget-object v0, Landroid/app/AppOpsManager;->sPermToOp:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 3510
    .local v0, "boxedOpCode":Ljava/lang/Integer;
    if-eqz v0, :cond_f

    .line 3511
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 3513
    :cond_f
    if-eqz p0, :cond_1e

    .line 3514
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    .line 3513
    invoke-static {v1, p0}, Landroid/health/connect/HealthConnectManager;->isHealthPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 3515
    const/16 v1, 0x7e

    return v1

    .line 3517
    :cond_1e
    const/4 v1, -0x1

    return v1
.end method

.method public static blacklist prefixParcelWithAppOpsIfNeeded(Landroid/os/Parcel;)V
    .registers 9
    .param p0, "p"    # Landroid/os/Parcel;

    .line 10857
    sget-object v0, Landroid/app/AppOpsManager;->sAppOpsNotedInThisBinderTransaction:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 10858
    .local v0, "notedAppOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/BitSet;>;"
    if-nez v0, :cond_b

    .line 10859
    return-void

    .line 10862
    :cond_b
    const/16 v1, -0x7f

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 10863
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 10865
    .local v1, "sizePosition":I
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10867
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 10868
    .local v2, "numAttributionWithNotesAppOps":I
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10870
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_20
    if-ge v3, v2, :cond_4d

    .line 10871
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10873
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/BitSet;

    invoke-virtual {v4}, Ljava/util/BitSet;->toLongArray()[J

    move-result-object v4

    .line 10874
    .local v4, "notedOpsMask":[J
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_36
    const/4 v6, 0x3

    if-ge v5, v6, :cond_4a

    .line 10875
    array-length v6, v4

    if-ge v5, v6, :cond_42

    .line 10876
    aget-wide v6, v4, v5

    invoke-virtual {p0, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_47

    .line 10878
    :cond_42
    const-wide/16 v6, 0x0

    invoke-virtual {p0, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    .line 10874
    :goto_47
    add-int/lit8 v5, v5, 0x1

    goto :goto_36

    .line 10870
    .end local v4    # "notedOpsMask":[J
    .end local v5    # "j":I
    :cond_4a
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    .line 10883
    .end local v3    # "i":I
    :cond_4d
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    .line 10884
    .local v3, "payloadPosition":I
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 10886
    sub-int v4, v3, v1

    invoke-virtual {p0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 10887
    invoke-virtual {p0, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 10888
    return-void
.end method

.method public static blacklist readAndLogNotedAppops(Landroid/os/Parcel;)V
    .registers 15
    .param p0, "p"    # Landroid/os/Parcel;

    .line 10902
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 10903
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 10905
    .local v1, "numAttributionsWithNotedAppOps":I
    const/4 v0, 0x0

    move v2, v0

    .local v2, "i":I
    :goto_9
    if-ge v2, v1, :cond_90

    .line 10906
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 10907
    .local v6, "attributionTag":Ljava/lang/String;
    const/4 v0, 0x3

    new-array v10, v0, [J

    .line 10908
    .local v10, "rawNotedAppOps":[J
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_13
    array-length v3, v10

    if-ge v0, v3, :cond_1f

    .line 10909
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    aput-wide v3, v10, v0

    .line 10908
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 10911
    .end local v0    # "j":I
    :cond_1f
    invoke-static {v10}, Ljava/util/BitSet;->valueOf([J)Ljava/util/BitSet;

    move-result-object v11

    .line 10913
    .local v11, "notedAppOps":Ljava/util/BitSet;
    invoke-virtual {v11}, Ljava/util/BitSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8c

    .line 10915
    sget-object v12, Landroid/app/AppOpsManager;->sLock:Ljava/lang/Object;

    monitor-enter v12

    .line 10916
    const/4 v0, 0x0

    :try_start_2d
    invoke-virtual {v11, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v3

    move v4, v3

    .local v4, "code":I
    :goto_32
    const/4 v3, -0x1

    if-eq v4, v3, :cond_71

    .line 10918
    sget-object v3, Landroid/app/AppOpsManager;->sOnOpNotedCallback:Landroid/app/AppOpsManager$OnOpNotedCallback;

    if-eqz v3, :cond_44

    .line 10919
    sget-object v3, Landroid/app/AppOpsManager;->sOnOpNotedCallback:Landroid/app/AppOpsManager$OnOpNotedCallback;

    new-instance v5, Landroid/app/SyncNotedAppOp;

    invoke-direct {v5, v4, v6}, Landroid/app/SyncNotedAppOp;-><init>(ILjava/lang/String;)V

    invoke-virtual {v3, v5}, Landroid/app/AppOpsManager$OnOpNotedCallback;->onNoted(Landroid/app/SyncNotedAppOp;)V

    goto :goto_69

    .line 10921
    :cond_44
    invoke-static {}, Landroid/app/AppOpsManager;->getFormattedStackTrace()Ljava/lang/String;

    move-result-object v7

    .line 10922
    .local v7, "message":Ljava/lang/String;
    sget-object v13, Landroid/app/AppOpsManager;->sUnforwardedOps:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/AsyncNotedAppOp;

    .line 10923
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    .line 10924
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct/range {v3 .. v9}, Landroid/app/AsyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;J)V

    .line 10922
    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10925
    sget-object v3, Landroid/app/AppOpsManager;->sUnforwardedOps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v5, 0xa

    if-le v3, v5, :cond_69

    .line 10926
    sget-object v3, Landroid/app/AppOpsManager;->sUnforwardedOps:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 10917
    .end local v7    # "message":Ljava/lang/String;
    :cond_69
    :goto_69
    add-int/lit8 v3, v4, 0x1

    invoke-virtual {v11, v3}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v3

    move v4, v3

    goto :goto_32

    .line 10930
    .end local v4    # "code":I
    :cond_71
    monitor-exit v12
    :try_end_72
    .catchall {:try_start_2d .. :try_end_72} :catchall_89

    .line 10931
    invoke-virtual {v11, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    .local v0, "code":I
    :goto_76
    if-eq v0, v3, :cond_8c

    .line 10933
    sget-object v4, Landroid/app/AppOpsManager;->sMessageCollector:Landroid/app/AppOpsManager$OnOpNotedCallback;

    new-instance v5, Landroid/app/SyncNotedAppOp;

    invoke-direct {v5, v0, v6}, Landroid/app/SyncNotedAppOp;-><init>(ILjava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/app/AppOpsManager$OnOpNotedCallback;->onNoted(Landroid/app/SyncNotedAppOp;)V

    .line 10932
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v11, v4}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    goto :goto_76

    .line 10930
    .end local v0    # "code":I
    :catchall_89
    move-exception v0

    :try_start_8a
    monitor-exit v12
    :try_end_8b
    .catchall {:try_start_8a .. :try_end_8b} :catchall_89

    throw v0

    .line 10905
    .end local v6    # "attributionTag":Ljava/lang/String;
    .end local v10    # "rawNotedAppOps":[J
    .end local v11    # "notedAppOps":Ljava/util/BitSet;
    :cond_8c
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_9

    .line 10937
    .end local v2    # "i":I
    :cond_90
    return-void
.end method

.method private static blacklist readDiscreteAccessArrayFromParcel(Landroid/os/Parcel;)Ljava/util/List;
    .registers 3
    .param p0, "parcel"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$AttributedOpEntry;",
            ">;"
        }
    .end annotation

    .line 11575
    const-class v0, Landroid/content/pm/ParceledListSlice;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ParceledListSlice;

    .line 11576
    .local v0, "listSlice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/AppOpsManager$AttributedOpEntry;>;"
    if-nez v0, :cond_c

    goto :goto_10

    :cond_c
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    :goto_10
    return-object v1
.end method

.method private static blacklist readLongSparseLongArrayFromParcel(Landroid/os/Parcel;)Landroid/util/LongSparseLongArray;
    .registers 8
    .param p0, "parcel"    # Landroid/os/Parcel;

    .line 11555
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 11556
    .local v0, "size":I
    if-gez v0, :cond_8

    .line 11557
    const/4 v1, 0x0

    return-object v1

    .line 11559
    :cond_8
    new-instance v1, Landroid/util/LongSparseLongArray;

    invoke-direct {v1, v0}, Landroid/util/LongSparseLongArray;-><init>(I)V

    .line 11560
    .local v1, "array":Landroid/util/LongSparseLongArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    if-ge v2, v0, :cond_1e

    .line 11561
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/util/LongSparseLongArray;->append(JJ)V

    .line 11560
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 11563
    .end local v2    # "i":I
    :cond_1e
    return-object v1
.end method

.method public static blacklist resolveFirstUnrestrictedUidState(I)I
    .registers 2
    .param p0, "op"    # I

    .line 610
    const/16 v0, 0x1f4

    return v0
.end method

.method public static blacklist resolveLastRestrictedUidState(I)I
    .registers 2
    .param p0, "op"    # I

    .line 621
    const/16 v0, 0x258

    return v0
.end method

.method public static blacklist resolvePackageName(ILjava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "uid"    # I
    .param p1, "packageName"    # Ljava/lang/String;

    .line 8731
    if-nez p0, :cond_6

    .line 8732
    const-string/jumbo v0, "root"

    return-object v0

    .line 8733
    :cond_6
    const/16 v0, 0x7d0

    if-ne p0, v0, :cond_d

    .line 8734
    const-string v0, "com.android.shell"

    return-object v0

    .line 8735
    :cond_d
    const/16 v0, 0x3f5

    if-ne p0, v0, :cond_15

    .line 8736
    const-string/jumbo v0, "media"

    return-object v0

    .line 8737
    :cond_15
    const/16 v0, 0x411

    if-ne p0, v0, :cond_1c

    .line 8738
    const-string v0, "audioserver"

    return-object v0

    .line 8739
    :cond_1c
    const/16 v0, 0x417

    if-ne p0, v0, :cond_23

    .line 8740
    const-string v0, "cameraserver"

    return-object v0

    .line 8741
    :cond_23
    const/16 v0, 0x3e8

    if-ne p0, v0, :cond_2c

    if-nez p1, :cond_2c

    .line 8742
    const-string v0, "android"

    return-object v0

    .line 8744
    :cond_2c
    return-object p1
.end method

.method public static blacklist resumeNotedAppOpsCollection(Landroid/app/AppOpsManager$PausedNotedAppOpsCollection;)V
    .registers 3
    .param p0, "prevCollection"    # Landroid/app/AppOpsManager$PausedNotedAppOpsCollection;

    .line 10678
    if-eqz p0, :cond_18

    .line 10679
    sget-object v0, Landroid/app/AppOpsManager;->sBinderThreadCallingUid:Ljava/lang/ThreadLocal;

    iget v1, p0, Landroid/app/AppOpsManager$PausedNotedAppOpsCollection;->mUid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 10681
    iget-object v0, p0, Landroid/app/AppOpsManager$PausedNotedAppOpsCollection;->mCollectedNotedAppOps:Landroid/util/ArrayMap;

    if-eqz v0, :cond_18

    .line 10682
    sget-object v0, Landroid/app/AppOpsManager;->sAppOpsNotedInThisBinderTransaction:Ljava/lang/ThreadLocal;

    iget-object v1, p0, Landroid/app/AppOpsManager$PausedNotedAppOpsCollection;->mCollectedNotedAppOps:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 10685
    :cond_18
    return-void
.end method

.method public static blacklist shouldForceCollectNoteForOp(I)Z
    .registers 4
    .param p0, "op"    # I

    .line 3339
    const/16 v0, 0xa2

    const-string/jumbo v1, "opCode"

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 3340
    sget-object v0, Landroid/app/AppOpsManager;->sAppOpInfos:[Landroid/app/AppOpInfo;

    aget-object v0, v0, p0

    iget-boolean v0, v0, Landroid/app/AppOpInfo;->forceCollectNotes:Z

    return v0
.end method

.method public static blacklist startNotedAppOpsCollection(I)V
    .registers 3
    .param p0, "callingUid"    # I

    .line 10624
    sget-object v0, Landroid/app/AppOpsManager;->sBinderThreadCallingUid:Ljava/lang/ThreadLocal;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 10625
    return-void
.end method

.method private blacklist startOpNoThrow(Landroid/os/IBinder;IILjava/lang/String;ZLjava/lang/String;ILjava/lang/String;II)I
    .registers 27
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "op"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "startIfModeDefault"    # Z
    .param p6, "attributionTag"    # Ljava/lang/String;
    .param p7, "virtualDeviceId"    # I
    .param p8, "message"    # Ljava/lang/String;
    .param p9, "attributionFlags"    # I
    .param p10, "attributionChainId"    # I

    .line 10259
    move-object/from16 v1, p0

    move/from16 v4, p2

    :try_start_4
    invoke-direct {v1, v4}, Landroid/app/AppOpsManager;->collectNoteOpCallsForValidation(I)V

    .line 10260
    move/from16 v5, p3

    move-object/from16 v6, p4

    invoke-direct {v1, v5, v6, v4}, Landroid/app/AppOpsManager;->getNotedOpCollectionMode(ILjava/lang/String;I)I

    move-result v0

    .line 10261
    .local v0, "collectionMode":I
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    const/16 v3, 0x3e8

    const/4 v7, 0x0

    const/4 v15, 0x1

    if-ne v2, v3, :cond_1b

    move v2, v15

    goto :goto_1c

    :cond_1b
    move v2, v7

    .line 10262
    .local v2, "shouldCollectMessage":Z
    :goto_1c
    const/4 v3, 0x3

    if-ne v0, v3, :cond_29

    .line 10263
    if-nez p8, :cond_29

    .line 10265
    invoke-static {}, Landroid/app/AppOpsManager;->getFormattedStackTrace()Ljava/lang/String;

    move-result-object v8
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_25} :catch_80

    .line 10266
    .end local p8    # "message":Ljava/lang/String;
    .local v8, "message":Ljava/lang/String;
    const/4 v2, 0x1

    move-object v10, v8

    move v11, v2

    goto :goto_2c

    .line 10271
    .end local v8    # "message":Ljava/lang/String;
    .restart local p8    # "message":Ljava/lang/String;
    :cond_29
    move-object/from16 v10, p8

    move v11, v2

    .end local v2    # "shouldCollectMessage":Z
    .end local p8    # "message":Ljava/lang/String;
    .local v10, "message":Ljava/lang/String;
    .local v11, "shouldCollectMessage":Z
    :goto_2c
    if-nez p7, :cond_44

    .line 10272
    :try_start_2e
    iget-object v2, v1, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    if-ne v0, v3, :cond_34

    move v9, v15

    goto :goto_35

    :cond_34
    move v9, v7

    :goto_35
    move-object/from16 v3, p1

    move/from16 v8, p5

    move-object/from16 v7, p6

    move/from16 v12, p9

    move/from16 v13, p10

    invoke-interface/range {v2 .. v13}, Lcom/android/internal/app/IAppOpsService;->startOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZII)Landroid/app/SyncNotedAppOp;

    move-result-object v2

    .local v2, "syncOp":Landroid/app/SyncNotedAppOp;
    goto :goto_64

    .line 10276
    .end local v2    # "syncOp":Landroid/app/SyncNotedAppOp;
    :cond_44
    iget-object v2, v1, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_46} :catch_7e

    if-ne v0, v3, :cond_49

    move v7, v15

    :cond_49
    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v9, p5

    move/from16 v8, p7

    move/from16 v13, p9

    move/from16 v14, p10

    move v12, v11

    move-object v11, v10

    move v10, v7

    move-object/from16 v7, p6

    .end local v10    # "message":Ljava/lang/String;
    .local v11, "message":Ljava/lang/String;
    .local v12, "shouldCollectMessage":Z
    :try_start_5e
    invoke-interface/range {v2 .. v14}, Lcom/android/internal/app/IAppOpsService;->startOperationForDevice(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;IZZLjava/lang/String;ZII)Landroid/app/SyncNotedAppOp;

    move-result-object v2
    :try_end_62
    .catch Landroid/os/RemoteException; {:try_start_5e .. :try_end_62} :catch_7b

    move-object v10, v11

    move v11, v12

    .line 10281
    .end local v12    # "shouldCollectMessage":Z
    .restart local v2    # "syncOp":Landroid/app/SyncNotedAppOp;
    .restart local v10    # "message":Ljava/lang/String;
    .local v11, "shouldCollectMessage":Z
    :goto_64
    :try_start_64
    invoke-virtual {v2}, Landroid/app/SyncNotedAppOp;->getOpMode()I

    move-result v3

    if-nez v3, :cond_76

    .line 10282
    if-ne v0, v15, :cond_70

    .line 10283
    invoke-direct {v1, v2}, Landroid/app/AppOpsManager;->collectNotedOpForSelf(Landroid/app/SyncNotedAppOp;)V

    goto :goto_76

    .line 10284
    :cond_70
    const/4 v3, 0x2

    if-ne v0, v3, :cond_76

    .line 10285
    invoke-static {v2}, Landroid/app/AppOpsManager;->collectNotedOpSync(Landroid/app/SyncNotedAppOp;)V

    .line 10289
    :cond_76
    :goto_76
    invoke-virtual {v2}, Landroid/app/SyncNotedAppOp;->getOpMode()I

    move-result v3
    :try_end_7a
    .catch Landroid/os/RemoteException; {:try_start_64 .. :try_end_7a} :catch_7e

    return v3

    .line 10290
    .end local v0    # "collectionMode":I
    .end local v2    # "syncOp":Landroid/app/SyncNotedAppOp;
    .end local v10    # "message":Ljava/lang/String;
    .local v11, "message":Ljava/lang/String;
    :catch_7b
    move-exception v0

    move-object v10, v11

    .end local v11    # "message":Ljava/lang/String;
    .restart local v10    # "message":Ljava/lang/String;
    goto :goto_83

    :catch_7e
    move-exception v0

    goto :goto_83

    .end local v10    # "message":Ljava/lang/String;
    .restart local p8    # "message":Ljava/lang/String;
    :catch_80
    move-exception v0

    move-object/from16 v10, p8

    .line 10291
    .end local p8    # "message":Ljava/lang/String;
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v10    # "message":Ljava/lang/String;
    :goto_83
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public static greylist-max-o strDebugOpToOp(Ljava/lang/String;)I
    .registers 4
    .param p0, "op"    # Ljava/lang/String;

    .line 3451
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Landroid/app/AppOpsManager;->sAppOpInfos:[Landroid/app/AppOpInfo;

    array-length v1, v1

    if-ge v0, v1, :cond_16

    .line 3452
    sget-object v1, Landroid/app/AppOpsManager;->sAppOpInfos:[Landroid/app/AppOpInfo;

    aget-object v1, v1, v0

    iget-object v1, v1, Landroid/app/AppOpInfo;->simpleName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 3453
    return v0

    .line 3451
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3456
    .end local v0    # "i":I
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown operation string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist strOpToOp(Ljava/lang/String;)I
    .registers 5
    .param p0, "op"    # Ljava/lang/String;

    .line 9233
    sget-object v0, Landroid/app/AppOpsManager;->sOpStrToOp:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 9234
    .local v0, "val":Ljava/lang/Integer;
    if-eqz v0, :cond_f

    .line 9237
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 9235
    :cond_f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown operation string: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static blacklist sumForFlagsInStates(Landroid/util/LongSparseLongArray;III)J
    .registers 15
    .param p0, "counts"    # Landroid/util/LongSparseLongArray;
    .param p1, "beginUidState"    # I
    .param p2, "endUidState"    # I
    .param p3, "flags"    # I

    .line 7782
    if-nez p0, :cond_5

    .line 7783
    const-wide/16 v0, 0x0

    return-wide v0

    .line 7785
    :cond_5
    const-wide/16 v0, 0x0

    .line 7786
    .local v0, "sum":J
    :goto_7
    if-eqz p3, :cond_2c

    .line 7787
    invoke-static {p3}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v2

    const/4 v3, 0x1

    shl-int v2, v3, v2

    .line 7788
    .local v2, "flag":I
    not-int v3, v2

    and-int/2addr p3, v3

    .line 7789
    sget-object v3, Landroid/app/AppOpsManager;->UID_STATES:[I

    array-length v4, v3

    const/4 v5, 0x0

    :goto_16
    if-ge v5, v4, :cond_2b

    aget v6, v3, v5

    .line 7790
    .local v6, "uidState":I
    if-lt v6, p1, :cond_28

    if-le v6, p2, :cond_1f

    .line 7791
    goto :goto_28

    .line 7793
    :cond_1f
    invoke-static {v6, v2}, Landroid/app/AppOpsManager;->makeKey(II)J

    move-result-wide v7

    .line 7794
    .local v7, "key":J
    invoke-virtual {p0, v7, v8}, Landroid/util/LongSparseLongArray;->get(J)J

    move-result-wide v9

    add-long/2addr v0, v9

    .line 7789
    .end local v6    # "uidState":I
    .end local v7    # "key":J
    :cond_28
    :goto_28
    add-int/lit8 v5, v5, 0x1

    goto :goto_16

    .line 7796
    .end local v2    # "flag":I
    :cond_2b
    goto :goto_7

    .line 7797
    :cond_2c
    return-wide v0
.end method

.method public static blacklist toReceiverId(Landroid/app/PendingIntent;)Ljava/lang/String;
    .registers 2
    .param p0, "pendingIntent"    # Landroid/app/PendingIntent;

    .line 3631
    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/app/PendingIntent;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist toReceiverId(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .param p0, "obj"    # Ljava/lang/Object;

    .line 3609
    if-nez p0, :cond_6

    .line 3610
    const-string/jumbo v0, "null"

    return-object v0

    .line 3611
    :cond_6
    instance-of v0, p0, Landroid/app/PendingIntent;

    if-eqz v0, :cond_12

    .line 3612
    move-object v0, p0

    check-cast v0, Landroid/app/PendingIntent;

    invoke-static {v0}, Landroid/app/AppOpsManager;->toReceiverId(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3614
    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist uidStateToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "uidState"    # I

    .line 11602
    sparse-switch p0, :sswitch_data_1c

    .line 11625
    const-string v0, "UNKNOWN"

    return-object v0

    .line 11622
    :sswitch_6
    const-string v0, "UID_STATE_CACHED"

    return-object v0

    .line 11619
    :sswitch_9
    const-string v0, "UID_STATE_BACKGROUND"

    return-object v0

    .line 11616
    :sswitch_c
    const-string v0, "UID_STATE_FOREGROUND"

    return-object v0

    .line 11613
    :sswitch_f
    const-string v0, "UID_STATE_FOREGROUND_SERVICE"

    return-object v0

    .line 11610
    :sswitch_12
    const-string v0, "UID_STATE_FOREGROUND_SERVICE_LOCATION"

    return-object v0

    .line 11607
    :sswitch_15
    const-string v0, "UID_STATE_TOP"

    return-object v0

    .line 11604
    :sswitch_18
    const-string v0, "UID_STATE_PERSISTENT"

    return-object v0

    nop

    :sswitch_data_1c
    .sparse-switch
        0x64 -> :sswitch_18
        0xc8 -> :sswitch_15
        0x12c -> :sswitch_12
        0x190 -> :sswitch_f
        0x1f4 -> :sswitch_c
        0x258 -> :sswitch_9
        0x2bc -> :sswitch_6
    .end sparse-switch
.end method

.method private static blacklist writeDiscreteAccessArrayToParcel(Ljava/util/List;Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$AttributedOpEntry;",
            ">;",
            "Landroid/os/Parcel;",
            "I)V"
        }
    .end annotation

    .line 11569
    .local p0, "array":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$AttributedOpEntry;>;"
    if-nez p0, :cond_4

    const/4 v0, 0x0

    goto :goto_9

    :cond_4
    new-instance v0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v0, p0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    .line 11570
    .local v0, "listSlice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/AppOpsManager$AttributedOpEntry;>;"
    :goto_9
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 11571
    return-void
.end method

.method private static blacklist writeLongSparseLongArrayToParcel(Landroid/util/LongSparseLongArray;Landroid/os/Parcel;)V
    .registers 6
    .param p0, "array"    # Landroid/util/LongSparseLongArray;
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 11541
    if-eqz p0, :cond_1e

    .line 11542
    invoke-virtual {p0}, Landroid/util/LongSparseLongArray;->size()I

    move-result v0

    .line 11543
    .local v0, "size":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 11544
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-ge v1, v0, :cond_1d

    .line 11545
    invoke-virtual {p0, v1}, Landroid/util/LongSparseLongArray;->keyAt(I)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 11546
    invoke-virtual {p0, v1}, Landroid/util/LongSparseLongArray;->valueAt(I)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 11544
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 11548
    .end local v0    # "size":I
    .end local v1    # "i":I
    :cond_1d
    goto :goto_22

    .line 11549
    :cond_1e
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 11551
    :goto_22
    return-void
.end method


# virtual methods
.method public blacklist addHistoricalOps(Landroid/app/AppOpsManager$HistoricalOps;)V
    .registers 4
    .param p1, "ops"    # Landroid/app/AppOpsManager$HistoricalOps;

    .line 11376
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1}, Lcom/android/internal/app/IAppOpsService;->addHistoricalOps(Landroid/app/AppOpsManager$HistoricalOps;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 11379
    nop

    .line 11380
    return-void

    .line 11377
    :catch_7
    move-exception v0

    .line 11378
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o checkAudioOp(IIILjava/lang/String;)I
    .registers 8
    .param p1, "op"    # I
    .param p2, "stream"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .line 10030
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/app/IAppOpsService;->checkAudioOperation(IIILjava/lang/String;)I

    move-result v0

    .line 10031
    .local v0, "mode":I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_a

    .line 10034
    return v0

    .line 10032
    :cond_a
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {p0, p1, p3, p4}, Landroid/app/AppOpsManager;->buildSecurityExceptionMsg(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/app/AppOpsManager;
    .end local p1    # "op":I
    .end local p2    # "stream":I
    .end local p3    # "uid":I
    .end local p4    # "packageName":Ljava/lang/String;
    throw v1
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_14} :catch_14

    .line 10035
    .end local v0    # "mode":I
    .restart local p0    # "this":Landroid/app/AppOpsManager;
    .restart local p1    # "op":I
    .restart local p2    # "stream":I
    .restart local p3    # "uid":I
    .restart local p4    # "packageName":Ljava/lang/String;
    :catch_14
    move-exception v0

    .line 10036
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o checkAudioOpNoThrow(IIILjava/lang/String;)I
    .registers 7
    .param p1, "op"    # I
    .param p2, "stream"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .line 10047
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/app/IAppOpsService;->checkAudioOperation(IIILjava/lang/String;)I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 10048
    :catch_7
    move-exception v0

    .line 10049
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist checkOp(IILjava/lang/String;)I
    .registers 10
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 9952
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    .end local p1    # "op":I
    .end local p2    # "uid":I
    .end local p3    # "packageName":Ljava/lang/String;
    .local v1, "op":I
    .local v2, "uid":I
    .local v3, "packageName":Ljava/lang/String;
    invoke-direct/range {v0 .. v5}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;Ljava/lang/String;I)I

    move-result p1

    .line 9953
    .local p1, "mode":I
    const/4 p2, 0x2

    if-eq p1, p2, :cond_e

    .line 9956
    return p1

    .line 9954
    :cond_e
    new-instance p2, Ljava/lang/SecurityException;

    invoke-direct {p0, v1, v2, v3}, Landroid/app/AppOpsManager;->buildSecurityExceptionMsg(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public whitelist checkOp(Ljava/lang/String;ILjava/lang/String;)I
    .registers 5
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 9298
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public whitelist checkOp(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I
    .registers 11
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;

    .line 9330
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v1

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .end local p2    # "uid":I
    .end local p3    # "packageName":Ljava/lang/String;
    .end local p4    # "attributionTag":Ljava/lang/String;
    .local v2, "uid":I
    .local v3, "packageName":Ljava/lang/String;
    .local v4, "attributionTag":Ljava/lang/String;
    invoke-direct/range {v0 .. v5}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;Ljava/lang/String;I)I

    move-result p2

    .line 9332
    .local p2, "mode":I
    const/4 p3, 0x2

    if-eq p2, p3, :cond_11

    .line 9335
    return p2

    .line 9333
    :cond_11
    new-instance p3, Ljava/lang/SecurityException;

    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result p4

    invoke-direct {p0, p4, v2, v3}, Landroid/app/AppOpsManager;->buildSecurityExceptionMsg(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-direct {p3, p4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public greylist checkOpNoThrow(IILjava/lang/String;)I
    .registers 10
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 9982
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    .end local p1    # "op":I
    .end local p2    # "uid":I
    .end local p3    # "packageName":Ljava/lang/String;
    .local v1, "op":I
    .local v2, "uid":I
    .local v3, "packageName":Ljava/lang/String;
    invoke-direct/range {v0 .. v5}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public blacklist checkOpNoThrow(ILandroid/content/AttributionSource;)I
    .registers 9
    .param p1, "op"    # I
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;

    .line 9968
    invoke-virtual {p2}, Landroid/content/AttributionSource;->getUid()I

    move-result v2

    invoke-virtual {p2}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 9969
    invoke-virtual {p2}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/content/AttributionSource;->getDeviceId()I

    move-result v5

    .line 9968
    move-object v0, p0

    move v1, p1

    .end local p1    # "op":I
    .local v1, "op":I
    invoke-direct/range {v0 .. v5}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public whitelist checkOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I
    .registers 5
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 9367
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public whitelist checkOpNoThrow(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I
    .registers 11
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;

    .line 9345
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v1

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .end local p2    # "uid":I
    .end local p3    # "packageName":Ljava/lang/String;
    .end local p4    # "attributionTag":Ljava/lang/String;
    .local v2, "uid":I
    .local v3, "packageName":Ljava/lang/String;
    .local v4, "attributionTag":Ljava/lang/String;
    invoke-direct/range {v0 .. v5}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;Ljava/lang/String;I)I

    move-result p2

    return p2
.end method

.method public whitelist checkOpRawNoThrow(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I
    .registers 11
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;

    .line 9357
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v1

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .end local p2    # "uid":I
    .end local p3    # "packageName":Ljava/lang/String;
    .end local p4    # "attributionTag":Ljava/lang/String;
    .local v2, "uid":I
    .local v3, "packageName":Ljava/lang/String;
    .local v4, "attributionTag":Ljava/lang/String;
    invoke-direct/range {v0 .. v5}, Landroid/app/AppOpsManager;->checkOpRawNoThrow(IILjava/lang/String;Ljava/lang/String;I)I

    move-result p2

    return p2
.end method

.method public whitelist checkPackage(ILjava/lang/String;)V
    .registers 6
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10015
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/app/IAppOpsService;->checkPackage(ILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_a

    .line 10021
    nop

    .line 10022
    return-void

    .line 10016
    :cond_a
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not belong to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/app/AppOpsManager;
    .end local p1    # "uid":I
    .end local p2    # "packageName":Ljava/lang/String;
    throw v0
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2d} :catch_2d

    .line 10019
    .restart local p0    # "this":Landroid/app/AppOpsManager;
    .restart local p1    # "uid":I
    .restart local p2    # "packageName":Ljava/lang/String;
    :catch_2d
    move-exception v0

    .line 10020
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist clearHistory()V
    .registers 3

    .line 11408
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0}, Lcom/android/internal/app/IAppOpsService;->clearHistory()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 11411
    nop

    .line 11412
    return-void

    .line 11409
    :catch_7
    move-exception v0

    .line 11410
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist collectRuntimeAppOpAccessMessage()Landroid/app/RuntimeAppOpAccessMessage;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 11444
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0}, Lcom/android/internal/app/IAppOpsService;->collectRuntimeAppOpAccessMessage()Landroid/app/RuntimeAppOpAccessMessage;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 11445
    :catch_7
    move-exception v0

    .line 11446
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o finishOp(I)V
    .registers 5
    .param p1, "op"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10443
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    iget-object v1, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;Ljava/lang/String;)V

    .line 10444
    return-void
.end method

.method public greylist-max-o finishOp(IILjava/lang/String;)V
    .registers 5
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 10470
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;Ljava/lang/String;)V

    .line 10471
    return-void
.end method

.method public blacklist finishOp(IILjava/lang/String;Ljava/lang/String;)V
    .registers 12
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;

    .line 10480
    iget-object v0, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/AttributionSource;->getToken()Landroid/os/IBinder;

    move-result-object v2

    move-object v1, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    .end local p1    # "op":I
    .end local p2    # "uid":I
    .end local p3    # "packageName":Ljava/lang/String;
    .end local p4    # "attributionTag":Ljava/lang/String;
    .local v3, "op":I
    .local v4, "uid":I
    .local v5, "packageName":Ljava/lang/String;
    .local v6, "attributionTag":Ljava/lang/String;
    invoke-virtual/range {v1 .. v6}, Landroid/app/AppOpsManager;->finishOp(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;)V

    .line 10481
    return-void
.end method

.method public blacklist finishOp(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;)V
    .registers 13
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "op"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "attributionTag"    # Ljava/lang/String;

    .line 10501
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    .end local p1    # "token":Landroid/os/IBinder;
    .end local p2    # "op":I
    .end local p3    # "uid":I
    .end local p4    # "packageName":Ljava/lang/String;
    .end local p5    # "attributionTag":Ljava/lang/String;
    .local v1, "token":Landroid/os/IBinder;
    .local v2, "op":I
    .local v3, "uid":I
    .local v4, "packageName":Ljava/lang/String;
    .local v5, "attributionTag":Ljava/lang/String;
    invoke-direct/range {v0 .. v6}, Landroid/app/AppOpsManager;->finishOp(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;I)V

    .line 10502
    return-void
.end method

.method public blacklist finishOp(Landroid/os/IBinder;ILandroid/content/AttributionSource;)V
    .registers 11
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "op"    # I
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;

    .line 10489
    invoke-virtual {p3}, Landroid/content/AttributionSource;->getUid()I

    move-result v3

    .line 10490
    invoke-virtual {p3}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    .line 10491
    invoke-virtual {p3}, Landroid/content/AttributionSource;->getDeviceId()I

    move-result v6

    .line 10489
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    .end local p1    # "token":Landroid/os/IBinder;
    .end local p2    # "op":I
    .local v1, "token":Landroid/os/IBinder;
    .local v2, "op":I
    invoke-direct/range {v0 .. v6}, Landroid/app/AppOpsManager;->finishOp(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;I)V

    .line 10492
    return-void
.end method

.method public whitelist finishOp(Ljava/lang/String;ILjava/lang/String;)V
    .registers 6
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 10450
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, p3, v1}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;Ljava/lang/String;)V

    .line 10451
    return-void
.end method

.method public whitelist finishOp(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;

    .line 10461
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3, p4}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;Ljava/lang/String;)V

    .line 10462
    return-void
.end method

.method public blacklist finishProxyOp(Landroid/os/IBinder;Ljava/lang/String;Landroid/content/AttributionSource;Z)V
    .registers 8
    .param p1, "clientId"    # Landroid/os/IBinder;
    .param p2, "op"    # Ljava/lang/String;
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;
    .param p4, "skipProxyOperation"    # Z

    .line 10553
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    .line 10554
    invoke-static {p2}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p3}, Landroid/content/AttributionSource;->asState()Landroid/content/AttributionSourceState;

    move-result-object v2

    .line 10553
    invoke-interface {v0, p1, v1, v2, p4}, Lcom/android/internal/app/IAppOpsService;->finishProxyOperationWithState(Landroid/os/IBinder;ILandroid/content/AttributionSourceState;Z)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_f

    .line 10557
    nop

    .line 10558
    return-void

    .line 10555
    :catch_f
    move-exception v0

    .line 10556
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist finishProxyOp(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 13
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "proxiedUid"    # I
    .param p3, "proxiedPackageName"    # Ljava/lang/String;
    .param p4, "proxiedAttributionTag"    # Ljava/lang/String;

    .line 10532
    iget-object v0, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/AttributionSource;->getToken()Landroid/os/IBinder;

    move-result-object v6

    .line 10533
    .local v6, "token":Landroid/os/IBinder;
    new-instance v0, Landroid/content/AttributionSource;

    iget-object v1, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v7

    new-instance v1, Landroid/content/AttributionSource;

    const/4 v3, -0x1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    .end local p2    # "proxiedUid":I
    .end local p3    # "proxiedPackageName":Ljava/lang/String;
    .end local p4    # "proxiedAttributionTag":Ljava/lang/String;
    .local v2, "proxiedUid":I
    .local v4, "proxiedPackageName":Ljava/lang/String;
    .local v5, "proxiedAttributionTag":Ljava/lang/String;
    invoke-direct/range {v1 .. v6}, Landroid/content/AttributionSource;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-direct {v0, v7, v1}, Landroid/content/AttributionSource;-><init>(Landroid/content/AttributionSource;Landroid/content/AttributionSource;)V

    const/4 p2, 0x0

    invoke-virtual {p0, v6, p1, v0, p2}, Landroid/app/AppOpsManager;->finishProxyOp(Landroid/os/IBinder;Ljava/lang/String;Landroid/content/AttributionSource;Z)V

    .line 10536
    return-void
.end method

.method public whitelist getHistoricalOps(Landroid/app/AppOpsManager$HistoricalOpsRequest;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 21
    .param p1, "request"    # Landroid/app/AppOpsManager$HistoricalOpsRequest;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/AppOpsManager$HistoricalOpsRequest;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/app/AppOpsManager$HistoricalOps;",
            ">;)V"
        }
    .end annotation

    .line 8488
    .local p3, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/app/AppOpsManager$HistoricalOps;>;"
    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const-string v0, "executor cannot be null"

    invoke-static {v1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8489
    const-string v0, "callback cannot be null"

    invoke-static {v2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8491
    move-object/from16 v3, p0

    :try_start_10
    iget-object v4, v3, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager$HistoricalOpsRequest;->-$$Nest$fgetmUid(Landroid/app/AppOpsManager$HistoricalOpsRequest;)I

    move-result v5

    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager$HistoricalOpsRequest;->-$$Nest$fgetmPackageName(Landroid/app/AppOpsManager$HistoricalOpsRequest;)Ljava/lang/String;

    move-result-object v6

    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager$HistoricalOpsRequest;->-$$Nest$fgetmAttributionTag(Landroid/app/AppOpsManager$HistoricalOpsRequest;)Ljava/lang/String;

    move-result-object v7

    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager$HistoricalOpsRequest;->-$$Nest$fgetmOpNames(Landroid/app/AppOpsManager$HistoricalOpsRequest;)Ljava/util/List;

    move-result-object v8

    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager$HistoricalOpsRequest;->-$$Nest$fgetmHistoryFlags(Landroid/app/AppOpsManager$HistoricalOpsRequest;)I

    move-result v9

    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager$HistoricalOpsRequest;->-$$Nest$fgetmFilter(Landroid/app/AppOpsManager$HistoricalOpsRequest;)I

    move-result v10

    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager$HistoricalOpsRequest;->-$$Nest$fgetmBeginTimeMillis(Landroid/app/AppOpsManager$HistoricalOpsRequest;)J

    move-result-wide v11

    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager$HistoricalOpsRequest;->-$$Nest$fgetmEndTimeMillis(Landroid/app/AppOpsManager$HistoricalOpsRequest;)J

    move-result-wide v13

    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager$HistoricalOpsRequest;->-$$Nest$fgetmFlags(Landroid/app/AppOpsManager$HistoricalOpsRequest;)I

    move-result v15

    new-instance v0, Landroid/os/RemoteCallback;

    new-instance v3, Landroid/app/AppOpsManager$$ExternalSyntheticLambda6;

    invoke-direct {v3, v1, v2}, Landroid/app/AppOpsManager$$ExternalSyntheticLambda6;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-direct {v0, v3}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    move-object/from16 v16, v0

    invoke-interface/range {v4 .. v16}, Lcom/android/internal/app/IAppOpsService;->getHistoricalOps(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;IIJJILandroid/os/RemoteCallback;)V
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_45} :catch_47

    .line 8505
    nop

    .line 8506
    return-void

    .line 8503
    :catch_47
    move-exception v0

    .line 8504
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public blacklist getHistoricalOpsFromDiskRaw(Landroid/app/AppOpsManager$HistoricalOpsRequest;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 21
    .param p1, "request"    # Landroid/app/AppOpsManager$HistoricalOpsRequest;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/AppOpsManager$HistoricalOpsRequest;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/app/AppOpsManager$HistoricalOps;",
            ">;)V"
        }
    .end annotation

    .line 8528
    .local p3, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/app/AppOpsManager$HistoricalOps;>;"
    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const-string v0, "executor cannot be null"

    invoke-static {v1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8529
    const-string v0, "callback cannot be null"

    invoke-static {v2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8531
    move-object/from16 v3, p0

    :try_start_10
    iget-object v4, v3, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager$HistoricalOpsRequest;->-$$Nest$fgetmUid(Landroid/app/AppOpsManager$HistoricalOpsRequest;)I

    move-result v5

    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager$HistoricalOpsRequest;->-$$Nest$fgetmPackageName(Landroid/app/AppOpsManager$HistoricalOpsRequest;)Ljava/lang/String;

    move-result-object v6

    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager$HistoricalOpsRequest;->-$$Nest$fgetmAttributionTag(Landroid/app/AppOpsManager$HistoricalOpsRequest;)Ljava/lang/String;

    move-result-object v7

    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager$HistoricalOpsRequest;->-$$Nest$fgetmOpNames(Landroid/app/AppOpsManager$HistoricalOpsRequest;)Ljava/util/List;

    move-result-object v8

    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager$HistoricalOpsRequest;->-$$Nest$fgetmHistoryFlags(Landroid/app/AppOpsManager$HistoricalOpsRequest;)I

    move-result v9

    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager$HistoricalOpsRequest;->-$$Nest$fgetmFilter(Landroid/app/AppOpsManager$HistoricalOpsRequest;)I

    move-result v10

    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager$HistoricalOpsRequest;->-$$Nest$fgetmBeginTimeMillis(Landroid/app/AppOpsManager$HistoricalOpsRequest;)J

    move-result-wide v11

    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager$HistoricalOpsRequest;->-$$Nest$fgetmEndTimeMillis(Landroid/app/AppOpsManager$HistoricalOpsRequest;)J

    move-result-wide v13

    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager$HistoricalOpsRequest;->-$$Nest$fgetmFlags(Landroid/app/AppOpsManager$HistoricalOpsRequest;)I

    move-result v15

    new-instance v0, Landroid/os/RemoteCallback;

    new-instance v3, Landroid/app/AppOpsManager$$ExternalSyntheticLambda7;

    invoke-direct {v3, v1, v2}, Landroid/app/AppOpsManager$$ExternalSyntheticLambda7;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-direct {v0, v3}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    move-object/from16 v16, v0

    invoke-interface/range {v4 .. v16}, Lcom/android/internal/app/IAppOpsService;->getHistoricalOpsFromDiskRaw(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;IIJJILandroid/os/RemoteCallback;)V
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_45} :catch_47

    .line 8545
    nop

    .line 8546
    return-void

    .line 8543
    :catch_47
    move-exception v0

    .line 8544
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public greylist getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;
    .registers 6
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "ops"    # [I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "[I)",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$PackageOps;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8428
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 8429
    :catch_7
    move-exception v0

    .line 8430
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public varargs whitelist getOpsForPackage(ILjava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "ops"    # [Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$PackageOps;",
            ">;"
        }
    .end annotation

    .line 8454
    const/4 v0, 0x0

    .line 8455
    .local v0, "opCodes":[I
    if-eqz p3, :cond_15

    .line 8456
    array-length v1, p3

    new-array v0, v1, [I

    .line 8457
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v2, p3

    if-ge v1, v2, :cond_15

    .line 8458
    aget-object v2, p3, v1

    invoke-static {v2}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    .line 8457
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 8462
    .end local v1    # "i":I
    :cond_15
    :try_start_15
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v1, p1, p2, v0}, Lcom/android/internal/app/IAppOpsService;->getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;

    move-result-object v1

    .line 8463
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    if-nez v1, :cond_22

    .line 8464
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_21} :catch_23

    return-object v2

    .line 8466
    :cond_22
    return-object v1

    .line 8467
    .end local v1    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :catch_23
    move-exception v1

    .line 8468
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public greylist getPackagesForOps([I)Ljava/util/List;
    .registers 4
    .param p1, "ops"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$PackageOps;",
            ">;"
        }
    .end annotation

    .line 8395
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    const-string v1, "default:0"

    invoke-interface {v0, p1, v1}, Lcom/android/internal/app/IAppOpsService;->getPackagesForOpsForDevice([ILjava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 8397
    :catch_9
    move-exception v0

    .line 8398
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getPackagesForOps([Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .param p1, "ops"    # [Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$PackageOps;",
            ">;"
        }
    .end annotation

    .line 8328
    if-eqz p1, :cond_1c

    .line 8329
    array-length v0, p1

    .line 8330
    .local v0, "opCount":I
    new-array v1, v0, [I

    .line 8331
    .local v1, "opCodes":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    if-ge v2, v0, :cond_1b

    .line 8332
    sget-object v3, Landroid/app/AppOpsManager;->sOpStrToOp:Ljava/util/HashMap;

    aget-object v4, p1, v2

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    .line 8331
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 8334
    .end local v0    # "opCount":I
    .end local v2    # "i":I
    :cond_1b
    goto :goto_1d

    .line 8335
    .end local v1    # "opCodes":[I
    :cond_1c
    const/4 v1, 0x0

    .line 8337
    .restart local v1    # "opCodes":[I
    :goto_1d
    invoke-virtual {p0, v1}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v0

    .line 8338
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    if-eqz v0, :cond_25

    move-object v2, v0

    goto :goto_29

    :cond_25
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    :goto_29
    return-object v2
.end method

.method public whitelist getPackagesForOps([Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 8
    .param p1, "ops"    # [Ljava/lang/String;
    .param p2, "persistentDeviceId"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$PackageOps;",
            ">;"
        }
    .end annotation

    .line 8361
    if-eqz p1, :cond_1c

    .line 8362
    array-length v0, p1

    .line 8363
    .local v0, "opCount":I
    new-array v1, v0, [I

    .line 8364
    .local v1, "opCodes":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    if-ge v2, v0, :cond_1b

    .line 8365
    sget-object v3, Landroid/app/AppOpsManager;->sOpStrToOp:Ljava/util/HashMap;

    aget-object v4, p1, v2

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    .line 8364
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 8367
    .end local v0    # "opCount":I
    .end local v2    # "i":I
    :cond_1b
    goto :goto_1d

    .line 8368
    .end local v1    # "opCodes":[I
    :cond_1c
    const/4 v1, 0x0

    .line 8372
    .restart local v1    # "opCodes":[I
    :goto_1d
    :try_start_1d
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, v1, p2}, Lcom/android/internal/app/IAppOpsService;->getPackagesForOpsForDevice([ILjava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_23} :catch_2d

    .line 8375
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    nop

    .line 8376
    if-eqz v0, :cond_28

    move-object v2, v0

    goto :goto_2c

    :cond_28
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    :goto_2c
    return-object v2

    .line 8373
    .end local v0    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :catch_2d
    move-exception v0

    .line 8374
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist getPermissionGroupUsageForPrivacyIndicator(Z)Ljava/util/List;
    .registers 4
    .param p1, "includeMicrophoneUsage"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Landroid/permission/PermissionGroupUsage;",
            ">;"
        }
    .end annotation

    .line 10763
    iget-object v0, p0, Landroid/app/AppOpsManager;->mUsageHelper:Landroid/permission/PermissionUsageHelper;

    if-nez v0, :cond_d

    .line 10764
    new-instance v0, Landroid/permission/PermissionUsageHelper;

    iget-object v1, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/permission/PermissionUsageHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/app/AppOpsManager;->mUsageHelper:Landroid/permission/PermissionUsageHelper;

    .line 10767
    :cond_d
    iget-object v0, p0, Landroid/app/AppOpsManager;->mUsageHelper:Landroid/permission/PermissionUsageHelper;

    invoke-virtual {v0, p1}, Landroid/permission/PermissionUsageHelper;->getOpUsageDataForAllDevices(Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist isOpActive(Ljava/lang/String;ILjava/lang/String;)Z
    .registers 5
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 10571
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AppOpsManager;->isOperationActive(IILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public blacklist isOperationActive(IILjava/lang/String;)Z
    .registers 6
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 11310
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->isOperationActive(IILjava/lang/String;)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 11311
    :catch_7
    move-exception v0

    .line 11312
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isProxying(ILjava/lang/String;ILjava/lang/String;)Z
    .registers 11
    .param p1, "op"    # I
    .param p2, "proxyAttributionTag"    # Ljava/lang/String;
    .param p3, "proxiedUid"    # I
    .param p4, "proxiedPackageName"    # Ljava/lang/String;

    .line 10589
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    iget-object v1, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    .line 10590
    invoke-virtual {v1}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_19

    .line 10589
    move v1, p1

    move v4, p3

    move-object v5, p4

    .end local p1    # "op":I
    .end local p3    # "proxiedUid":I
    .end local p4    # "proxiedPackageName":Ljava/lang/String;
    .local v1, "op":I
    .local v4, "proxiedUid":I
    .local v5, "proxiedPackageName":Ljava/lang/String;
    :try_start_11
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/app/IAppOpsService;->isProxying(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z

    move-result p1
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_15} :catch_16

    return p1

    .line 10591
    :catch_16
    move-exception v0

    move-object p1, v0

    goto :goto_1e

    .end local v1    # "op":I
    .end local v4    # "proxiedUid":I
    .end local v5    # "proxiedPackageName":Ljava/lang/String;
    .restart local p1    # "op":I
    .restart local p3    # "proxiedUid":I
    .restart local p4    # "proxiedPackageName":Ljava/lang/String;
    :catch_19
    move-exception v0

    move v1, p1

    move v4, p3

    move-object v5, p4

    move-object p1, v0

    .line 10592
    .end local p3    # "proxiedUid":I
    .end local p4    # "proxiedPackageName":Ljava/lang/String;
    .restart local v1    # "op":I
    .restart local v4    # "proxiedUid":I
    .restart local v5    # "proxiedPackageName":Ljava/lang/String;
    .local p1, "e":Landroid/os/RemoteException;
    :goto_1e
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p3

    throw p3
.end method

.method public greylist-max-q noteOp(I)I
    .registers 8
    .param p1, "op"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9462
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    iget-object v0, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    .end local p1    # "op":I
    .local v1, "op":I
    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public greylist-max-q noteOp(IILjava/lang/String;)I
    .registers 10
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9475
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    .end local p1    # "op":I
    .end local p2    # "uid":I
    .end local p3    # "packageName":Ljava/lang/String;
    .local v1, "op":I
    .local v2, "uid":I
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public blacklist noteOp(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 9
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;
    .param p5, "message"    # Ljava/lang/String;

    .line 9543
    invoke-virtual/range {p0 .. p5}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 9544
    .local v0, "mode":I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_8

    .line 9547
    return v0

    .line 9545
    :cond_8
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {p0, p1, p2, p3}, Landroid/app/AppOpsManager;->buildSecurityExceptionMsg(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist noteOp(Ljava/lang/String;ILjava/lang/String;)I
    .registers 10
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9449
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    .end local p1    # "op":Ljava/lang/String;
    .end local p2    # "uid":I
    .end local p3    # "packageName":Ljava/lang/String;
    .local v1, "op":Ljava/lang/String;
    .local v2, "uid":I
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->noteOp(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public whitelist noteOp(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 12
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;
    .param p5, "message"    # Ljava/lang/String;

    .line 9533
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v1

    move-object v0, p0

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .end local p2    # "uid":I
    .end local p3    # "packageName":Ljava/lang/String;
    .end local p4    # "attributionTag":Ljava/lang/String;
    .end local p5    # "message":Ljava/lang/String;
    .local v2, "uid":I
    .local v3, "packageName":Ljava/lang/String;
    .local v4, "attributionTag":Ljava/lang/String;
    .local v5, "message":Ljava/lang/String;
    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    return p2
.end method

.method public greylist-max-q noteOpNoThrow(IILjava/lang/String;)I
    .registers 10
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9568
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    .end local p1    # "op":I
    .end local p2    # "uid":I
    .end local p3    # "packageName":Ljava/lang/String;
    .local v1, "op":I
    .local v2, "uid":I
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public blacklist noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 13
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;
    .param p5, "message"    # Ljava/lang/String;

    .line 9602
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    .end local p1    # "op":I
    .end local p2    # "uid":I
    .end local p3    # "packageName":Ljava/lang/String;
    .end local p4    # "attributionTag":Ljava/lang/String;
    .end local p5    # "message":Ljava/lang/String;
    .local v1, "op":I
    .local v2, "uid":I
    .local v3, "packageName":Ljava/lang/String;
    .local v4, "attributionTag":Ljava/lang/String;
    .local v6, "message":Ljava/lang/String;
    invoke-direct/range {v0 .. v6}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public blacklist noteOpNoThrow(ILandroid/content/AttributionSource;Ljava/lang/String;)I
    .registers 11
    .param p1, "op"    # I
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "message"    # Ljava/lang/String;

    .line 9591
    invoke-virtual {p2}, Landroid/content/AttributionSource;->getUid()I

    move-result v2

    invoke-virtual {p2}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 9592
    invoke-virtual {p2}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/content/AttributionSource;->getDeviceId()I

    move-result v5

    .line 9591
    move-object v0, p0

    move v1, p1

    move-object v6, p3

    .end local p1    # "op":I
    .end local p3    # "message":Ljava/lang/String;
    .local v1, "op":I
    .local v6, "message":Ljava/lang/String;
    invoke-direct/range {v0 .. v6}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public whitelist noteOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I
    .registers 10
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9555
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    .end local p1    # "op":Ljava/lang/String;
    .end local p2    # "uid":I
    .end local p3    # "packageName":Ljava/lang/String;
    .local v1, "op":Ljava/lang/String;
    .local v2, "uid":I
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->noteOpNoThrow(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public whitelist noteOpNoThrow(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 12
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;
    .param p5, "message"    # Ljava/lang/String;

    .line 9579
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v1

    move-object v0, p0

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .end local p2    # "uid":I
    .end local p3    # "packageName":Ljava/lang/String;
    .end local p4    # "attributionTag":Ljava/lang/String;
    .end local p5    # "message":Ljava/lang/String;
    .local v2, "uid":I
    .local v3, "packageName":Ljava/lang/String;
    .local v4, "attributionTag":Ljava/lang/String;
    .local v5, "message":Ljava/lang/String;
    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    return p2
.end method

.method public blacklist noteProxyOp(ILandroid/content/AttributionSource;Ljava/lang/String;Z)I
    .registers 10
    .param p1, "op"    # I
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "skipProxyOperation"    # Z

    .line 9798
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/app/AppOpsManager;->noteProxyOpNoThrow(ILandroid/content/AttributionSource;Ljava/lang/String;Z)I

    move-result v0

    .line 9799
    .local v0, "mode":I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_8

    .line 9807
    return v0

    .line 9800
    :cond_8
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Proxy package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 9801
    invoke-virtual {p2}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 9802
    invoke-virtual {p2}, Landroid/content/AttributionSource;->getUid()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " or calling package "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 9803
    invoke-virtual {p2}, Landroid/content/AttributionSource;->getNextPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 9804
    invoke-virtual {p2}, Landroid/content/AttributionSource;->getNextUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not allowed to perform "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/app/AppOpsManager;->sAppOpInfos:[Landroid/app/AppOpInfo;

    aget-object v3, v3, p1

    iget-object v3, v3, Landroid/app/AppOpInfo;->simpleName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public greylist-max-q noteProxyOp(ILjava/lang/String;)I
    .registers 9
    .param p1, "op"    # I
    .param p2, "proxiedPackageName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9739
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    .end local p1    # "op":I
    .end local p2    # "proxiedPackageName":Ljava/lang/String;
    .local v1, "op":I
    .local v2, "proxiedPackageName":Ljava/lang/String;
    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->noteProxyOp(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public blacklist noteProxyOp(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)I
    .registers 14
    .param p1, "op"    # I
    .param p2, "proxiedPackageName"    # Ljava/lang/String;
    .param p3, "proxiedUid"    # I
    .param p4, "proxiedAttributionTag"    # Ljava/lang/String;
    .param p5, "message"    # Ljava/lang/String;

    .line 9749
    new-instance v0, Landroid/content/AttributionSource;

    iget-object v1, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v1

    new-instance v2, Landroid/content/AttributionSource;

    iget-object v3, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    .line 9751
    invoke-virtual {v3}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/AttributionSource;->getToken()Landroid/os/IBinder;

    move-result-object v7

    const/4 v4, -0x1

    move-object v5, p2

    move v3, p3

    move-object v6, p4

    .end local p2    # "proxiedPackageName":Ljava/lang/String;
    .end local p3    # "proxiedUid":I
    .end local p4    # "proxiedAttributionTag":Ljava/lang/String;
    .local v3, "proxiedUid":I
    .local v5, "proxiedPackageName":Ljava/lang/String;
    .local v6, "proxiedAttributionTag":Ljava/lang/String;
    invoke-direct/range {v2 .. v7}, Landroid/content/AttributionSource;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-direct {v0, v1, v2}, Landroid/content/AttributionSource;-><init>(Landroid/content/AttributionSource;Landroid/content/AttributionSource;)V

    .line 9749
    const/4 p2, 0x0

    invoke-virtual {p0, p1, v0, p5, p2}, Landroid/app/AppOpsManager;->noteProxyOp(ILandroid/content/AttributionSource;Ljava/lang/String;Z)I

    move-result p2

    return p2
.end method

.method public whitelist noteProxyOp(Ljava/lang/String;Ljava/lang/String;)I
    .registers 9
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "proxiedPackageName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9726
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .end local p1    # "op":Ljava/lang/String;
    .end local p2    # "proxiedPackageName":Ljava/lang/String;
    .local v1, "op":Ljava/lang/String;
    .local v2, "proxiedPackageName":Ljava/lang/String;
    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->noteProxyOp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public whitelist noteProxyOp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I
    .registers 12
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "proxiedPackageName"    # Ljava/lang/String;
    .param p3, "proxiedUid"    # I
    .param p4, "proxiedAttributionTag"    # Ljava/lang/String;
    .param p5, "message"    # Ljava/lang/String;

    .line 9776
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v1

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    .end local p2    # "proxiedPackageName":Ljava/lang/String;
    .end local p3    # "proxiedUid":I
    .end local p4    # "proxiedAttributionTag":Ljava/lang/String;
    .end local p5    # "message":Ljava/lang/String;
    .local v2, "proxiedPackageName":Ljava/lang/String;
    .local v3, "proxiedUid":I
    .local v4, "proxiedAttributionTag":Ljava/lang/String;
    .local v5, "message":Ljava/lang/String;
    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->noteProxyOp(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)I

    move-result p2

    return p2
.end method

.method public blacklist noteProxyOpNoThrow(ILandroid/content/AttributionSource;Ljava/lang/String;Z)I
    .registers 16
    .param p1, "op"    # I
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "skipProxyOperation"    # Z

    .line 9858
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    .line 9861
    .local v1, "myUid":I
    :try_start_4
    invoke-direct/range {p0 .. p1}, Landroid/app/AppOpsManager;->collectNoteOpCallsForValidation(I)V

    .line 9862
    nop

    .line 9863
    invoke-virtual {p2}, Landroid/content/AttributionSource;->getNextUid()I

    move-result v0

    .line 9864
    invoke-virtual {p2}, Landroid/content/AttributionSource;->getNextAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 9862
    invoke-direct {p0, v0, v2, p1}, Landroid/app/AppOpsManager;->getNotedOpCollectionMode(ILjava/lang/String;I)I

    move-result v0

    .line 9865
    .local v0, "collectionMode":I
    const/16 v2, 0x3e8

    const/4 v3, 0x0

    const/4 v10, 0x1

    if-ne v1, v2, :cond_1c

    move v2, v10

    goto :goto_1d

    :cond_1c
    move v2, v3

    .line 9866
    .local v2, "shouldCollectMessage":Z
    :goto_1d
    const/4 v5, 0x3

    if-ne v0, v5, :cond_2a

    .line 9867
    if-nez p3, :cond_2a

    .line 9869
    invoke-static {}, Landroid/app/AppOpsManager;->getFormattedStackTrace()Ljava/lang/String;

    move-result-object v6
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_26} :catch_6c

    .line 9870
    .end local p3    # "message":Ljava/lang/String;
    .local v6, "message":Ljava/lang/String;
    const/4 v2, 0x1

    move-object v7, v6

    move v8, v2

    goto :goto_2c

    .line 9874
    .end local v6    # "message":Ljava/lang/String;
    .restart local p3    # "message":Ljava/lang/String;
    :cond_2a
    move-object v7, p3

    move v8, v2

    .end local v2    # "shouldCollectMessage":Z
    .end local p3    # "message":Ljava/lang/String;
    .local v7, "message":Ljava/lang/String;
    .local v8, "shouldCollectMessage":Z
    :goto_2c
    move v2, v3

    :try_start_2d
    iget-object v3, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    .line 9875
    invoke-virtual {p2}, Landroid/content/AttributionSource;->asState()Landroid/content/AttributionSourceState;

    move-result-object v6

    if-ne v0, v5, :cond_36

    move v2, v10

    .line 9874
    :cond_36
    move v4, p1

    move v9, p4

    move-object v5, v6

    move v6, v2

    invoke-interface/range {v3 .. v9}, Lcom/android/internal/app/IAppOpsService;->noteProxyOperationWithState(ILandroid/content/AttributionSourceState;ZLjava/lang/String;ZZ)Landroid/app/SyncNotedAppOp;

    move-result-object v2

    .line 9878
    .local v2, "syncOp":Landroid/app/SyncNotedAppOp;
    invoke-virtual {v2}, Landroid/app/SyncNotedAppOp;->getOpMode()I

    move-result v3

    if-nez v3, :cond_65

    .line 9879
    if-ne v0, v10, :cond_4a

    .line 9880
    invoke-direct {p0, v2}, Landroid/app/AppOpsManager;->collectNotedOpForSelf(Landroid/app/SyncNotedAppOp;)V

    goto :goto_65

    .line 9881
    :cond_4a
    const/4 v3, 0x2

    if-ne v0, v3, :cond_65

    iget-object v3, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.UPDATE_APP_OPS_STATS"

    .line 9883
    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_62

    .line 9885
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {p2}, Landroid/content/AttributionSource;->getNextUid()I

    move-result v4

    if-ne v3, v4, :cond_65

    .line 9886
    :cond_62
    invoke-static {v2}, Landroid/app/AppOpsManager;->collectNotedOpSync(Landroid/app/SyncNotedAppOp;)V

    .line 9890
    :cond_65
    :goto_65
    invoke-virtual {v2}, Landroid/app/SyncNotedAppOp;->getOpMode()I

    move-result v3
    :try_end_69
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_69} :catch_6a

    return v3

    .line 9891
    .end local v0    # "collectionMode":I
    .end local v2    # "syncOp":Landroid/app/SyncNotedAppOp;
    .end local v8    # "shouldCollectMessage":Z
    :catch_6a
    move-exception v0

    goto :goto_6e

    .end local v7    # "message":Ljava/lang/String;
    .restart local p3    # "message":Ljava/lang/String;
    :catch_6c
    move-exception v0

    move-object v7, p3

    .line 9892
    .end local p3    # "message":Ljava/lang/String;
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v7    # "message":Ljava/lang/String;
    :goto_6e
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist noteProxyOpNoThrow(Ljava/lang/String;Ljava/lang/String;)I
    .registers 9
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "proxiedPackageName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9815
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .end local p1    # "op":Ljava/lang/String;
    .end local p2    # "proxiedPackageName":Ljava/lang/String;
    .local v1, "op":Ljava/lang/String;
    .local v2, "proxiedPackageName":Ljava/lang/String;
    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->noteProxyOpNoThrow(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public whitelist noteProxyOpNoThrow(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 10
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "proxiedPackageName"    # Ljava/lang/String;
    .param p3, "proxiedUid"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9824
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .end local p1    # "op":Ljava/lang/String;
    .end local p2    # "proxiedPackageName":Ljava/lang/String;
    .end local p3    # "proxiedUid":I
    .local v1, "op":Ljava/lang/String;
    .local v2, "proxiedPackageName":Ljava/lang/String;
    .local v3, "proxiedUid":I
    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->noteProxyOpNoThrow(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public whitelist noteProxyOpNoThrow(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I
    .registers 15
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "proxiedPackageName"    # Ljava/lang/String;
    .param p3, "proxiedUid"    # I
    .param p4, "proxiedAttributionTag"    # Ljava/lang/String;
    .param p5, "message"    # Ljava/lang/String;

    .line 9835
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    new-instance v1, Landroid/content/AttributionSource;

    iget-object v2, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    .line 9836
    invoke-virtual {v2}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v2

    new-instance v3, Landroid/content/AttributionSource;

    iget-object v4, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    .line 9838
    invoke-virtual {v4}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/AttributionSource;->getToken()Landroid/os/IBinder;

    move-result-object v8

    const/4 v5, -0x1

    move-object v6, p2

    move v4, p3

    move-object v7, p4

    .end local p2    # "proxiedPackageName":Ljava/lang/String;
    .end local p3    # "proxiedUid":I
    .end local p4    # "proxiedAttributionTag":Ljava/lang/String;
    .local v4, "proxiedUid":I
    .local v6, "proxiedPackageName":Ljava/lang/String;
    .local v7, "proxiedAttributionTag":Ljava/lang/String;
    invoke-direct/range {v3 .. v8}, Landroid/content/AttributionSource;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-direct {v1, v2, v3}, Landroid/content/AttributionSource;-><init>(Landroid/content/AttributionSource;Landroid/content/AttributionSource;)V

    .line 9835
    const/4 p2, 0x0

    invoke-virtual {p0, v0, v1, p5, p2}, Landroid/app/AppOpsManager;->noteProxyOpNoThrow(ILandroid/content/AttributionSource;Ljava/lang/String;Z)I

    move-result p2

    return p2
.end method

.method public blacklist offsetHistory(J)V
    .registers 5
    .param p1, "offsetMillis"    # J

    .line 11354
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/app/IAppOpsService;->offsetHistory(J)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 11357
    nop

    .line 11358
    return-void

    .line 11355
    :catch_7
    move-exception v0

    .line 11356
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist rebootHistory(J)V
    .registers 5
    .param p1, "offlineDurationMillis"    # J

    .line 11427
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/app/IAppOpsService;->rebootHistory(J)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 11430
    nop

    .line 11431
    return-void

    .line 11428
    :catch_7
    move-exception v0

    .line 11429
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist reloadNonHistoricalState()V
    .registers 3

    .line 8557
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0}, Lcom/android/internal/app/IAppOpsService;->reloadNonHistoricalState()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 8560
    nop

    .line 8561
    return-void

    .line 8558
    :catch_7
    move-exception v0

    .line 8559
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-r resetAllModes()V
    .registers 4

    .line 8692
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    iget-object v1, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/app/IAppOpsService;->resetAllModes(ILjava/lang/String;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_e

    .line 8695
    nop

    .line 8696
    return-void

    .line 8693
    :catch_e
    move-exception v0

    .line 8694
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist resetHistoryParameters()V
    .registers 3

    .line 11393
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0}, Lcom/android/internal/app/IAppOpsService;->resetHistoryParameters()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 11396
    nop

    .line 11397
    return-void

    .line 11394
    :catch_7
    move-exception v0

    .line 11395
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist resetPackageOpsNoHistory(Ljava/lang/String;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 10608
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1}, Lcom/android/internal/app/IAppOpsService;->resetPackageOpsNoHistory(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 10611
    nop

    .line 10612
    return-void

    .line 10609
    :catch_7
    move-exception v0

    .line 10610
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setHistoryParameters(IJI)V
    .registers 7
    .param p1, "mode"    # I
    .param p2, "baseSnapshotInterval"    # J
    .param p4, "compressionStep"    # I

    .line 11337
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/app/IAppOpsService;->setHistoryParameters(IJI)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 11340
    nop

    .line 11341
    return-void

    .line 11338
    :catch_7
    move-exception v0

    .line 11339
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist setMode(IILjava/lang/String;I)V
    .registers 7
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "mode"    # I

    .line 8636
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/app/IAppOpsService;->setMode(IILjava/lang/String;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 8639
    nop

    .line 8640
    return-void

    .line 8637
    :catch_7
    move-exception v0

    .line 8638
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setMode(Ljava/lang/String;ILjava/lang/String;I)V
    .registers 7
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "mode"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 8658
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/android/internal/app/IAppOpsService;->setMode(IILjava/lang/String;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 8661
    nop

    .line 8662
    return-void

    .line 8659
    :catch_b
    move-exception v0

    .line 8660
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist setNotedAppOpsCollector(Landroid/app/AppOpsManager$AppOpsCollector;)V
    .registers 5
    .param p1, "collector"    # Landroid/app/AppOpsManager$AppOpsCollector;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11071
    sget-object v0, Landroid/app/AppOpsManager;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 11072
    const/4 v1, 0x0

    if-eqz p1, :cond_1c

    .line 11073
    :try_start_6
    invoke-static {}, Landroid/app/AppOpsManager;->isListeningForOpNoted()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 11074
    invoke-virtual {p0, v1, v1}, Landroid/app/AppOpsManager;->setOnOpNotedCallback(Ljava/util/concurrent/Executor;Landroid/app/AppOpsManager$OnOpNotedCallback;)V

    .line 11076
    :cond_f
    new-instance v1, Landroid/os/HandlerExecutor;

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    invoke-virtual {p0, v1, p1}, Landroid/app/AppOpsManager;->setOnOpNotedCallback(Ljava/util/concurrent/Executor;Landroid/app/AppOpsManager$OnOpNotedCallback;)V

    goto :goto_23

    .line 11077
    :cond_1c
    sget-object v2, Landroid/app/AppOpsManager;->sOnOpNotedCallback:Landroid/app/AppOpsManager$OnOpNotedCallback;

    if-eqz v2, :cond_23

    .line 11078
    invoke-virtual {p0, v1, v1}, Landroid/app/AppOpsManager;->setOnOpNotedCallback(Ljava/util/concurrent/Executor;Landroid/app/AppOpsManager$OnOpNotedCallback;)V

    .line 11080
    :cond_23
    :goto_23
    monitor-exit v0

    .line 11081
    return-void

    .line 11080
    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_6 .. :try_end_27} :catchall_25

    throw v1
.end method

.method public whitelist setOnOpNotedCallback(Ljava/util/concurrent/Executor;Landroid/app/AppOpsManager$OnOpNotedCallback;)V
    .registers 4
    .param p1, "asyncExecutor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/app/AppOpsManager$OnOpNotedCallback;

    .line 10959
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/AppOpsManager;->setOnOpNotedCallback(Ljava/util/concurrent/Executor;Landroid/app/AppOpsManager$OnOpNotedCallback;I)V

    .line 10960
    return-void
.end method

.method public whitelist setOnOpNotedCallback(Ljava/util/concurrent/Executor;Landroid/app/AppOpsManager$OnOpNotedCallback;I)V
    .registers 12
    .param p1, "asyncExecutor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/app/AppOpsManager$OnOpNotedCallback;
    .param p3, "flags"    # I

    .line 10999
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_6

    move v2, v1

    goto :goto_7

    :cond_6
    move v2, v0

    :goto_7
    if-nez p1, :cond_b

    move v3, v1

    goto :goto_c

    :cond_b
    move v3, v0

    :goto_c
    if-ne v2, v3, :cond_10

    move v2, v1

    goto :goto_11

    :cond_10
    move v2, v0

    :goto_11
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 11000
    invoke-static {p3, v1}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    .line 11002
    sget-object v2, Landroid/app/AppOpsManager;->sLock:Ljava/lang/Object;

    monitor-enter v2

    .line 11003
    if-nez p2, :cond_48

    .line 11004
    :try_start_1c
    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    .line 11005
    sget-object v3, Landroid/app/AppOpsManager;->sOnOpNotedCallback:Landroid/app/AppOpsManager$OnOpNotedCallback;

    if-eqz v3, :cond_24

    move v0, v1

    :cond_24
    const-string v1, "No callback is currently registered"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 11008
    sget-boolean v0, Landroid/app/AppOpsManager;->sIgnoreAsyncNotedCallback:Z
    :try_end_2b
    .catchall {:try_start_1c .. :try_end_2b} :catchall_d3

    if-nez v0, :cond_43

    .line 11010
    :try_start_2d
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    iget-object v1, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Landroid/app/AppOpsManager;->sOnOpNotedCallback:Landroid/app/AppOpsManager$OnOpNotedCallback;

    invoke-static {v3}, Landroid/app/AppOpsManager$OnOpNotedCallback;->-$$Nest$fgetmAsyncCb(Landroid/app/AppOpsManager$OnOpNotedCallback;)Lcom/android/internal/app/IAppOpsAsyncNotedCallback;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lcom/android/internal/app/IAppOpsService;->stopWatchingAsyncNoted(Ljava/lang/String;Lcom/android/internal/app/IAppOpsAsyncNotedCallback;)V
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_3e} :catch_3f
    .catchall {:try_start_2d .. :try_end_3e} :catchall_d3

    .line 11014
    goto :goto_43

    .line 11012
    :catch_3f
    move-exception v0

    .line 11013
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_40
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 11017
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_43
    :goto_43
    const/4 v0, 0x0

    sput-object v0, Landroid/app/AppOpsManager;->sOnOpNotedCallback:Landroid/app/AppOpsManager$OnOpNotedCallback;

    goto/16 :goto_d1

    .line 11019
    :cond_48
    sget-object v3, Landroid/app/AppOpsManager;->sOnOpNotedCallback:Landroid/app/AppOpsManager$OnOpNotedCallback;

    if-nez v3, :cond_4e

    move v3, v1

    goto :goto_4f

    :cond_4e
    move v3, v0

    :goto_4f
    const-string v4, "Another callback is already registered"

    invoke-static {v3, v4}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 11022
    invoke-static {p2, p1}, Landroid/app/AppOpsManager$OnOpNotedCallback;->-$$Nest$fputmAsyncExecutor(Landroid/app/AppOpsManager$OnOpNotedCallback;Ljava/util/concurrent/Executor;)V

    .line 11023
    sput-object p2, Landroid/app/AppOpsManager;->sOnOpNotedCallback:Landroid/app/AppOpsManager$OnOpNotedCallback;

    .line 11024
    and-int/lit8 v3, p3, 0x1

    if-eqz v3, :cond_5e

    move v0, v1

    :cond_5e
    sput-boolean v0, Landroid/app/AppOpsManager;->sIgnoreAsyncNotedCallback:Z

    .line 11026
    const/4 v0, 0x0

    .line 11027
    .local v0, "missedAsyncOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AsyncNotedAppOp;>;"
    sget-boolean v1, Landroid/app/AppOpsManager;->sIgnoreAsyncNotedCallback:Z
    :try_end_63
    .catchall {:try_start_40 .. :try_end_63} :catchall_d3

    if-nez v1, :cond_88

    .line 11029
    :try_start_65
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    iget-object v3, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroid/app/AppOpsManager;->sOnOpNotedCallback:Landroid/app/AppOpsManager$OnOpNotedCallback;

    invoke-static {v4}, Landroid/app/AppOpsManager$OnOpNotedCallback;->-$$Nest$fgetmAsyncCb(Landroid/app/AppOpsManager$OnOpNotedCallback;)Lcom/android/internal/app/IAppOpsAsyncNotedCallback;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/android/internal/app/IAppOpsService;->startWatchingAsyncNoted(Ljava/lang/String;Lcom/android/internal/app/IAppOpsAsyncNotedCallback;)V

    .line 11031
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    iget-object v3, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/android/internal/app/IAppOpsService;->extractAsyncOps(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1
    :try_end_82
    .catch Landroid/os/RemoteException; {:try_start_65 .. :try_end_82} :catch_84
    .catchall {:try_start_65 .. :try_end_82} :catchall_d3

    move-object v0, v1

    .line 11034
    goto :goto_88

    .line 11032
    :catch_84
    move-exception v1

    .line 11033
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_85
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 11038
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_88
    :goto_88
    sget-object v1, Landroid/app/AppOpsManager;->sOnOpNotedCallback:Landroid/app/AppOpsManager$OnOpNotedCallback;

    .line 11039
    .local v1, "onOpNotedCallback":Landroid/app/AppOpsManager$OnOpNotedCallback;
    if-eqz v1, :cond_aa

    if-eqz v0, :cond_aa

    .line 11040
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 11041
    .local v3, "numMissedAsyncOps":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_93
    if-ge v4, v3, :cond_aa

    .line 11042
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AsyncNotedAppOp;

    .line 11043
    .local v5, "asyncNotedAppOp":Landroid/app/AsyncNotedAppOp;
    invoke-virtual {v1}, Landroid/app/AppOpsManager$OnOpNotedCallback;->getAsyncNotedExecutor()Ljava/util/concurrent/Executor;

    move-result-object v6

    new-instance v7, Landroid/app/AppOpsManager$$ExternalSyntheticLambda1;

    invoke-direct {v7, v1, v5}, Landroid/app/AppOpsManager$$ExternalSyntheticLambda1;-><init>(Landroid/app/AppOpsManager$OnOpNotedCallback;Landroid/app/AsyncNotedAppOp;)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 11041
    .end local v5    # "asyncNotedAppOp":Landroid/app/AsyncNotedAppOp;
    add-int/lit8 v4, v4, 0x1

    goto :goto_93

    .line 11047
    .end local v3    # "numMissedAsyncOps":I
    .end local v4    # "i":I
    :cond_aa
    sget-object v3, Landroid/app/AppOpsManager;->sUnforwardedOps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 11048
    .local v3, "numMissedSyncOps":I
    if-eqz v1, :cond_cc

    .line 11049
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_b3
    if-ge v4, v3, :cond_cc

    .line 11050
    sget-object v5, Landroid/app/AppOpsManager;->sUnforwardedOps:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AsyncNotedAppOp;

    .line 11051
    .local v5, "syncNotedAppOp":Landroid/app/AsyncNotedAppOp;
    invoke-virtual {v1}, Landroid/app/AppOpsManager$OnOpNotedCallback;->getAsyncNotedExecutor()Ljava/util/concurrent/Executor;

    move-result-object v6

    new-instance v7, Landroid/app/AppOpsManager$$ExternalSyntheticLambda2;

    invoke-direct {v7, v1, v5}, Landroid/app/AppOpsManager$$ExternalSyntheticLambda2;-><init>(Landroid/app/AppOpsManager$OnOpNotedCallback;Landroid/app/AsyncNotedAppOp;)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 11049
    .end local v5    # "syncNotedAppOp":Landroid/app/AsyncNotedAppOp;
    add-int/lit8 v4, v4, 0x1

    goto :goto_b3

    .line 11055
    .end local v4    # "i":I
    :cond_cc
    sget-object v4, Landroid/app/AppOpsManager;->sUnforwardedOps:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 11057
    .end local v0    # "missedAsyncOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AsyncNotedAppOp;>;"
    .end local v1    # "onOpNotedCallback":Landroid/app/AppOpsManager$OnOpNotedCallback;
    .end local v3    # "numMissedSyncOps":I
    :goto_d1
    monitor-exit v2

    .line 11058
    return-void

    .line 11057
    :catchall_d3
    move-exception v0

    monitor-exit v2
    :try_end_d5
    .catchall {:try_start_85 .. :try_end_d5} :catchall_d3

    throw v0
.end method

.method public greylist setRestriction(III[Ljava/lang/String;)V
    .registers 12
    .param p1, "code"    # I
    .param p2, "usage"    # I
    .param p3, "mode"    # I
    .param p4, "exceptionPackages"    # [Ljava/lang/String;

    .line 8680
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    move v4, v0

    .line 8681
    .local v4, "uid":I
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_13

    move v2, p1

    move v3, p2

    move v5, p3

    move-object v6, p4

    .end local p1    # "code":I
    .end local p2    # "usage":I
    .end local p3    # "mode":I
    .end local p4    # "exceptionPackages":[Ljava/lang/String;
    .local v2, "code":I
    .local v3, "usage":I
    .local v5, "mode":I
    .local v6, "exceptionPackages":[Ljava/lang/String;
    :try_start_b
    invoke-interface/range {v1 .. v6}, Lcom/android/internal/app/IAppOpsService;->setAudioRestriction(IIII[Ljava/lang/String;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_e} :catch_10

    .line 8684
    .end local v4    # "uid":I
    nop

    .line 8685
    return-void

    .line 8682
    :catch_10
    move-exception v0

    move-object p1, v0

    goto :goto_19

    .end local v2    # "code":I
    .end local v3    # "usage":I
    .end local v5    # "mode":I
    .end local v6    # "exceptionPackages":[Ljava/lang/String;
    .restart local p1    # "code":I
    .restart local p2    # "usage":I
    .restart local p3    # "mode":I
    .restart local p4    # "exceptionPackages":[Ljava/lang/String;
    :catch_13
    move-exception v0

    move v2, p1

    move v3, p2

    move v5, p3

    move-object v6, p4

    move-object p1, v0

    .line 8683
    .end local p2    # "usage":I
    .end local p3    # "mode":I
    .end local p4    # "exceptionPackages":[Ljava/lang/String;
    .restart local v2    # "code":I
    .restart local v3    # "usage":I
    .restart local v5    # "mode":I
    .restart local v6    # "exceptionPackages":[Ljava/lang/String;
    .local p1, "e":Landroid/os/RemoteException;
    :goto_19
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
.end method

.method public greylist-max-o setUidMode(III)V
    .registers 6
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "mode"    # I

    .line 8576
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->setUidMode(III)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 8579
    nop

    .line 8580
    return-void

    .line 8577
    :catch_7
    move-exception v0

    .line 8578
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setUidMode(Ljava/lang/String;II)V
    .registers 6
    .param p1, "appOp"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "mode"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 8596
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->setUidMode(III)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 8599
    nop

    .line 8600
    return-void

    .line 8597
    :catch_b
    move-exception v0

    .line 8598
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o setUserRestriction(IZLandroid/os/IBinder;)V
    .registers 5
    .param p1, "code"    # I
    .param p2, "restricted"    # Z
    .param p3, "token"    # Landroid/os/IBinder;

    .line 8604
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/app/AppOpsManager;->setUserRestriction(IZLandroid/os/IBinder;Landroid/os/PackageTagsList;)V

    .line 8605
    return-void
.end method

.method public blacklist setUserRestriction(IZLandroid/os/IBinder;Landroid/os/PackageTagsList;)V
    .registers 12
    .param p1, "code"    # I
    .param p2, "restricted"    # Z
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "excludedPackageTags"    # Landroid/os/PackageTagsList;

    .line 8613
    iget-object v0, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    .line 8614
    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v6

    .line 8613
    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    .end local p1    # "code":I
    .end local p2    # "restricted":Z
    .end local p3    # "token":Landroid/os/IBinder;
    .end local p4    # "excludedPackageTags":Landroid/os/PackageTagsList;
    .local v2, "code":I
    .local v3, "restricted":Z
    .local v4, "token":Landroid/os/IBinder;
    .local v5, "excludedPackageTags":Landroid/os/PackageTagsList;
    invoke-virtual/range {v1 .. v6}, Landroid/app/AppOpsManager;->setUserRestrictionForUser(IZLandroid/os/IBinder;Landroid/os/PackageTagsList;I)V

    .line 8615
    return-void
.end method

.method public blacklist setUserRestrictionForUser(IZLandroid/os/IBinder;Landroid/os/PackageTagsList;I)V
    .registers 12
    .param p1, "code"    # I
    .param p2, "restricted"    # Z
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "excludedPackageTags"    # Landroid/os/PackageTagsList;
    .param p5, "userId"    # I

    .line 8624
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2} :catch_f

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    move v4, p5

    .end local p1    # "code":I
    .end local p2    # "restricted":Z
    .end local p3    # "token":Landroid/os/IBinder;
    .end local p4    # "excludedPackageTags":Landroid/os/PackageTagsList;
    .end local p5    # "userId":I
    .local v1, "code":I
    .local v2, "restricted":Z
    .local v3, "token":Landroid/os/IBinder;
    .local v4, "userId":I
    .local v5, "excludedPackageTags":Landroid/os/PackageTagsList;
    :try_start_7
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/app/IAppOpsService;->setUserRestriction(IZLandroid/os/IBinder;ILandroid/os/PackageTagsList;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_c

    .line 8627
    nop

    .line 8628
    return-void

    .line 8625
    :catch_c
    move-exception v0

    move-object p1, v0

    goto :goto_16

    .end local v1    # "code":I
    .end local v2    # "restricted":Z
    .end local v3    # "token":Landroid/os/IBinder;
    .end local v4    # "userId":I
    .end local v5    # "excludedPackageTags":Landroid/os/PackageTagsList;
    .restart local p1    # "code":I
    .restart local p2    # "restricted":Z
    .restart local p3    # "token":Landroid/os/IBinder;
    .restart local p4    # "excludedPackageTags":Landroid/os/PackageTagsList;
    .restart local p5    # "userId":I
    :catch_f
    move-exception v0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    move v4, p5

    move-object p1, v0

    .line 8626
    .end local p2    # "restricted":Z
    .end local p3    # "token":Landroid/os/IBinder;
    .end local p4    # "excludedPackageTags":Landroid/os/PackageTagsList;
    .end local p5    # "userId":I
    .restart local v1    # "code":I
    .restart local v2    # "restricted":Z
    .restart local v3    # "token":Landroid/os/IBinder;
    .restart local v4    # "userId":I
    .restart local v5    # "excludedPackageTags":Landroid/os/PackageTagsList;
    .local p1, "e":Landroid/os/RemoteException;
    :goto_16
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
.end method

.method public greylist-max-o startOp(I)I
    .registers 9
    .param p1, "op"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10102
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    iget-object v0, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    .end local p1    # "op":I
    .local v1, "op":I
    invoke-virtual/range {v0 .. v6}, Landroid/app/AppOpsManager;->startOp(IILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public greylist-max-o startOp(IILjava/lang/String;)I
    .registers 11
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10112
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    .end local p1    # "op":I
    .end local p2    # "uid":I
    .end local p3    # "packageName":Ljava/lang/String;
    .local v1, "op":I
    .local v2, "uid":I
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual/range {v0 .. v6}, Landroid/app/AppOpsManager;->startOp(IILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public greylist-max-o startOp(IILjava/lang/String;Z)I
    .registers 12
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "startIfModeDefault"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10122
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    .end local p1    # "op":I
    .end local p2    # "uid":I
    .end local p3    # "packageName":Ljava/lang/String;
    .end local p4    # "startIfModeDefault":Z
    .local v1, "op":I
    .local v2, "uid":I
    .local v3, "packageName":Ljava/lang/String;
    .local v4, "startIfModeDefault":Z
    invoke-virtual/range {v0 .. v6}, Landroid/app/AppOpsManager;->startOp(IILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public blacklist startOp(IILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)I
    .registers 10
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "startIfModeDefault"    # Z
    .param p5, "attributionTag"    # Ljava/lang/String;
    .param p6, "message"    # Ljava/lang/String;

    .line 10158
    invoke-virtual/range {p0 .. p6}, Landroid/app/AppOpsManager;->startOpNoThrow(IILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 10160
    .local v0, "mode":I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_8

    .line 10163
    return v0

    .line 10161
    :cond_8
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {p0, p1, p2, p3}, Landroid/app/AppOpsManager;->buildSecurityExceptionMsg(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist startOp(Ljava/lang/String;ILjava/lang/String;)I
    .registers 10
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10092
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    .end local p1    # "op":Ljava/lang/String;
    .end local p2    # "uid":I
    .end local p3    # "packageName":Ljava/lang/String;
    .local v1, "op":Ljava/lang/String;
    .local v2, "uid":I
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->startOp(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public whitelist startOp(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 13
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;
    .param p5, "message"    # Ljava/lang/String;

    .line 10148
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v1

    const/4 v4, 0x0

    move-object v0, p0

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    .end local p2    # "uid":I
    .end local p3    # "packageName":Ljava/lang/String;
    .end local p4    # "attributionTag":Ljava/lang/String;
    .end local p5    # "message":Ljava/lang/String;
    .local v2, "uid":I
    .local v3, "packageName":Ljava/lang/String;
    .local v5, "attributionTag":Ljava/lang/String;
    .local v6, "message":Ljava/lang/String;
    invoke-virtual/range {v0 .. v6}, Landroid/app/AppOpsManager;->startOp(IILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)I

    move-result p2

    return p2
.end method

.method public greylist-max-o startOpNoThrow(IILjava/lang/String;)I
    .registers 11
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10181
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    .end local p1    # "op":I
    .end local p2    # "uid":I
    .end local p3    # "packageName":Ljava/lang/String;
    .local v1, "op":I
    .local v2, "uid":I
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual/range {v0 .. v6}, Landroid/app/AppOpsManager;->startOpNoThrow(IILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public greylist-max-o startOpNoThrow(IILjava/lang/String;Z)I
    .registers 12
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "startIfModeDefault"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10191
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    .end local p1    # "op":I
    .end local p2    # "uid":I
    .end local p3    # "packageName":Ljava/lang/String;
    .end local p4    # "startIfModeDefault":Z
    .local v1, "op":I
    .local v2, "uid":I
    .local v3, "packageName":Ljava/lang/String;
    .local v4, "startIfModeDefault":Z
    invoke-virtual/range {v0 .. v6}, Landroid/app/AppOpsManager;->startOpNoThrow(IILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public blacklist startOpNoThrow(IILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)I
    .registers 16
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "startIfModeDefault"    # Z
    .param p5, "attributionTag"    # Ljava/lang/String;
    .param p6, "message"    # Ljava/lang/String;

    .line 10212
    iget-object v0, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/AttributionSource;->getToken()Landroid/os/IBinder;

    move-result-object v2

    move-object v1, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    move-object v8, p6

    .end local p1    # "op":I
    .end local p2    # "uid":I
    .end local p3    # "packageName":Ljava/lang/String;
    .end local p4    # "startIfModeDefault":Z
    .end local p5    # "attributionTag":Ljava/lang/String;
    .end local p6    # "message":Ljava/lang/String;
    .local v3, "op":I
    .local v4, "uid":I
    .local v5, "packageName":Ljava/lang/String;
    .local v6, "startIfModeDefault":Z
    .local v7, "attributionTag":Ljava/lang/String;
    .local v8, "message":Ljava/lang/String;
    invoke-virtual/range {v1 .. v8}, Landroid/app/AppOpsManager;->startOpNoThrow(Landroid/os/IBinder;IILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public blacklist startOpNoThrow(Landroid/os/IBinder;IILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)I
    .registers 18
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "op"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "startIfModeDefault"    # Z
    .param p6, "attributionTag"    # Ljava/lang/String;
    .param p7, "message"    # Ljava/lang/String;

    .line 10223
    const/4 v8, 0x0

    const/4 v9, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v9}, Landroid/app/AppOpsManager;->startOpNoThrow(Landroid/os/IBinder;IILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;II)I

    move-result v8

    return v8
.end method

.method public blacklist startOpNoThrow(Landroid/os/IBinder;IILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;II)I
    .registers 21
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "op"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "startIfModeDefault"    # Z
    .param p6, "attributionTag"    # Ljava/lang/String;
    .param p7, "message"    # Ljava/lang/String;
    .param p8, "attributionFlags"    # I
    .param p9, "attributionChainId"    # I

    .line 10250
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Landroid/app/AppOpsManager;->startOpNoThrow(Landroid/os/IBinder;IILjava/lang/String;ZLjava/lang/String;ILjava/lang/String;II)I

    move-result v7

    return v7
.end method

.method public blacklist startOpNoThrow(Landroid/os/IBinder;ILandroid/content/AttributionSource;ZLjava/lang/String;II)I
    .registers 19
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "op"    # I
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;
    .param p4, "startIfModeDefault"    # Z
    .param p5, "message"    # Ljava/lang/String;
    .param p6, "attributionFlags"    # I
    .param p7, "attributionChainId"    # I

    .line 10236
    invoke-virtual {p3}, Landroid/content/AttributionSource;->getUid()I

    move-result v3

    .line 10237
    invoke-virtual {p3}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 10238
    invoke-virtual {p3}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3}, Landroid/content/AttributionSource;->getDeviceId()I

    move-result v7

    .line 10236
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v5, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-direct/range {v0 .. v10}, Landroid/app/AppOpsManager;->startOpNoThrow(Landroid/os/IBinder;IILjava/lang/String;ZLjava/lang/String;ILjava/lang/String;II)I

    move-result v3

    return v3
.end method

.method public whitelist startOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I
    .registers 10
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10171
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    .end local p1    # "op":Ljava/lang/String;
    .end local p2    # "uid":I
    .end local p3    # "packageName":Ljava/lang/String;
    .local v1, "op":Ljava/lang/String;
    .local v2, "uid":I
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->startOpNoThrow(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public whitelist startOpNoThrow(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 13
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;
    .param p5, "message"    # Ljava/lang/String;

    .line 10202
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v1

    const/4 v4, 0x0

    move-object v0, p0

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    .end local p2    # "uid":I
    .end local p3    # "packageName":Ljava/lang/String;
    .end local p4    # "attributionTag":Ljava/lang/String;
    .end local p5    # "message":Ljava/lang/String;
    .local v2, "uid":I
    .local v3, "packageName":Ljava/lang/String;
    .local v5, "attributionTag":Ljava/lang/String;
    .local v6, "message":Ljava/lang/String;
    invoke-virtual/range {v0 .. v6}, Landroid/app/AppOpsManager;->startOpNoThrow(IILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)I

    move-result p2

    return p2
.end method

.method public whitelist startProxyOp(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 14
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "proxiedUid"    # I
    .param p3, "proxiedPackageName"    # Ljava/lang/String;
    .param p4, "proxiedAttributionTag"    # Ljava/lang/String;
    .param p5, "message"    # Ljava/lang/String;

    .line 10315
    new-instance v0, Landroid/content/AttributionSource;

    iget-object v1, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v1

    new-instance v2, Landroid/content/AttributionSource;

    iget-object v3, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    .line 10317
    invoke-virtual {v3}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/AttributionSource;->getToken()Landroid/os/IBinder;

    move-result-object v7

    const/4 v4, -0x1

    move v3, p2

    move-object v5, p3

    move-object v6, p4

    .end local p2    # "proxiedUid":I
    .end local p3    # "proxiedPackageName":Ljava/lang/String;
    .end local p4    # "proxiedAttributionTag":Ljava/lang/String;
    .local v3, "proxiedUid":I
    .local v5, "proxiedPackageName":Ljava/lang/String;
    .local v6, "proxiedAttributionTag":Ljava/lang/String;
    invoke-direct/range {v2 .. v7}, Landroid/content/AttributionSource;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-direct {v0, v1, v2}, Landroid/content/AttributionSource;-><init>(Landroid/content/AttributionSource;Landroid/content/AttributionSource;)V

    .line 10315
    const/4 p2, 0x0

    invoke-virtual {p0, p1, v0, p5, p2}, Landroid/app/AppOpsManager;->startProxyOp(Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;Z)I

    move-result p2

    return p2
.end method

.method public blacklist startProxyOp(Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;Z)I
    .registers 10
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "skipProxyOperation"    # Z

    .line 10340
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3, p4}, Landroid/app/AppOpsManager;->startProxyOpNoThrow(ILandroid/content/AttributionSource;Ljava/lang/String;Z)I

    move-result v0

    .line 10342
    .local v0, "mode":I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_c

    .line 10350
    return v0

    .line 10343
    :cond_c
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Proxy package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 10344
    invoke-virtual {p2}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 10345
    invoke-virtual {p2}, Landroid/content/AttributionSource;->getUid()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " or calling package "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 10346
    invoke-virtual {p2}, Landroid/content/AttributionSource;->getNextPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 10347
    invoke-virtual {p2}, Landroid/content/AttributionSource;->getNextUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not allowed to perform "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist startProxyOpNoThrow(ILandroid/content/AttributionSource;Ljava/lang/String;Z)I
    .registers 14
    .param p1, "op"    # I
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "skipProxyOperation"    # Z

    .line 10380
    invoke-virtual {p2}, Landroid/content/AttributionSource;->getToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    .end local p1    # "op":I
    .end local p2    # "attributionSource":Landroid/content/AttributionSource;
    .end local p3    # "message":Ljava/lang/String;
    .end local p4    # "skipProxyOperation":Z
    .local v2, "op":I
    .local v3, "attributionSource":Landroid/content/AttributionSource;
    .local v4, "message":Ljava/lang/String;
    .local v5, "skipProxyOperation":Z
    invoke-virtual/range {v0 .. v8}, Landroid/app/AppOpsManager;->startProxyOpNoThrow(Landroid/os/IBinder;ILandroid/content/AttributionSource;Ljava/lang/String;ZIII)I

    move-result p1

    return p1
.end method

.method public blacklist startProxyOpNoThrow(Landroid/os/IBinder;ILandroid/content/AttributionSource;Ljava/lang/String;ZIII)I
    .registers 23
    .param p1, "clientId"    # Landroid/os/IBinder;
    .param p2, "op"    # I
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "skipProxyOperation"    # Z
    .param p6, "proxyAttributionFlags"    # I
    .param p7, "proxiedAttributionFlags"    # I
    .param p8, "attributionChainId"    # I

    .line 10400
    move/from16 v2, p2

    :try_start_2
    invoke-direct {p0, v2}, Landroid/app/AppOpsManager;->collectNoteOpCallsForValidation(I)V

    .line 10401
    nop

    .line 10402
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getNextUid()I

    move-result v0

    .line 10403
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getNextPackageName()Ljava/lang/String;

    move-result-object v1

    .line 10401
    invoke-direct {p0, v0, v1, v2}, Landroid/app/AppOpsManager;->getNotedOpCollectionMode(ILjava/lang/String;I)I

    move-result v0

    move v12, v0

    .line 10404
    .local v12, "collectionMode":I
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v1, 0x3e8

    const/4 v3, 0x0

    const/4 v13, 0x1

    if-ne v0, v1, :cond_1f

    move v0, v13

    goto :goto_20

    :cond_1f
    move v0, v3

    .line 10405
    .local v0, "shouldCollectMessage":Z
    :goto_20
    const/4 v1, 0x3

    if-ne v12, v1, :cond_2d

    .line 10406
    if-nez p4, :cond_2d

    .line 10408
    invoke-static {}, Landroid/app/AppOpsManager;->getFormattedStackTrace()Ljava/lang/String;

    move-result-object v4
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_29} :catch_7c

    .line 10409
    .end local p4    # "message":Ljava/lang/String;
    .local v4, "message":Ljava/lang/String;
    const/4 v0, 0x1

    move-object v6, v4

    move v7, v0

    goto :goto_30

    .line 10413
    .end local v4    # "message":Ljava/lang/String;
    .restart local p4    # "message":Ljava/lang/String;
    :cond_2d
    move-object/from16 v6, p4

    move v7, v0

    .end local v0    # "shouldCollectMessage":Z
    .end local p4    # "message":Ljava/lang/String;
    .local v6, "message":Ljava/lang/String;
    .local v7, "shouldCollectMessage":Z
    :goto_30
    :try_start_30
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    .line 10414
    move v4, v3

    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->asState()Landroid/content/AttributionSourceState;

    move-result-object v3

    if-ne v12, v1, :cond_3b

    move v5, v13

    goto :goto_3c

    :cond_3b
    move v5, v4

    .line 10413
    :goto_3c
    const/4 v4, 0x0

    move-object v1, p1

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    invoke-interface/range {v0 .. v11}, Lcom/android/internal/app/IAppOpsService;->startProxyOperationWithState(Landroid/os/IBinder;ILandroid/content/AttributionSourceState;ZZLjava/lang/String;ZZIII)Landroid/app/SyncNotedAppOp;

    move-result-object v0

    .line 10418
    .local v0, "syncOp":Landroid/app/SyncNotedAppOp;
    invoke-virtual {v0}, Landroid/app/SyncNotedAppOp;->getOpMode()I

    move-result v1

    if-nez v1, :cond_75

    .line 10419
    if-ne v12, v13, :cond_56

    .line 10420
    invoke-direct {p0, v0}, Landroid/app/AppOpsManager;->collectNotedOpForSelf(Landroid/app/SyncNotedAppOp;)V

    goto :goto_75

    .line 10421
    :cond_56
    const/4 v1, 0x2

    if-ne v12, v1, :cond_75

    iget-object v1, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.UPDATE_APP_OPS_STATS"

    .line 10424
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    .line 10423
    const/4 v4, -0x1

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_72

    .line 10425
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getNextUid()I

    move-result v2

    if-ne v1, v2, :cond_75

    .line 10426
    :cond_72
    invoke-static {v0}, Landroid/app/AppOpsManager;->collectNotedOpSync(Landroid/app/SyncNotedAppOp;)V

    .line 10430
    :cond_75
    :goto_75
    invoke-virtual {v0}, Landroid/app/SyncNotedAppOp;->getOpMode()I

    move-result v1
    :try_end_79
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_79} :catch_7a

    return v1

    .line 10431
    .end local v0    # "syncOp":Landroid/app/SyncNotedAppOp;
    .end local v7    # "shouldCollectMessage":Z
    .end local v12    # "collectionMode":I
    :catch_7a
    move-exception v0

    goto :goto_7f

    .end local v6    # "message":Ljava/lang/String;
    .restart local p4    # "message":Ljava/lang/String;
    :catch_7c
    move-exception v0

    move-object/from16 v6, p4

    .line 10432
    .end local p4    # "message":Ljava/lang/String;
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v6    # "message":Ljava/lang/String;
    :goto_7f
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist startProxyOpNoThrow(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 15
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "proxiedUid"    # I
    .param p3, "proxiedPackageName"    # Ljava/lang/String;
    .param p4, "proxiedAttributionTag"    # Ljava/lang/String;
    .param p5, "message"    # Ljava/lang/String;

    .line 10362
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    new-instance v1, Landroid/content/AttributionSource;

    iget-object v2, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    .line 10363
    invoke-virtual {v2}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v2

    new-instance v3, Landroid/content/AttributionSource;

    iget-object v4, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    .line 10365
    invoke-virtual {v4}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/AttributionSource;->getToken()Landroid/os/IBinder;

    move-result-object v8

    const/4 v5, -0x1

    move v4, p2

    move-object v6, p3

    move-object v7, p4

    .end local p2    # "proxiedUid":I
    .end local p3    # "proxiedPackageName":Ljava/lang/String;
    .end local p4    # "proxiedAttributionTag":Ljava/lang/String;
    .local v4, "proxiedUid":I
    .local v6, "proxiedPackageName":Ljava/lang/String;
    .local v7, "proxiedAttributionTag":Ljava/lang/String;
    invoke-direct/range {v3 .. v8}, Landroid/content/AttributionSource;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-direct {v1, v2, v3}, Landroid/content/AttributionSource;-><init>(Landroid/content/AttributionSource;Landroid/content/AttributionSource;)V

    .line 10362
    const/4 p2, 0x0

    invoke-virtual {p0, v0, v1, p5, p2}, Landroid/app/AppOpsManager;->startProxyOpNoThrow(ILandroid/content/AttributionSource;Ljava/lang/String;Z)I

    move-result p2

    return p2
.end method

.method public blacklist startWatchingActive([ILandroid/app/AppOpsManager$OnOpActiveChangedListener;)V
    .registers 6
    .param p1, "ops"    # [I
    .param p2, "callback"    # Landroid/app/AppOpsManager$OnOpActiveChangedListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8870
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    .line 8871
    .local v0, "strOps":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    array-length v2, p1

    if-ge v1, v2, :cond_12

    .line 8872
    aget v2, p1, v1

    invoke-static {v2}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 8871
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 8874
    .end local v1    # "i":I
    :cond_12
    iget-object v1, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p2}, Landroid/app/AppOpsManager;->startWatchingActive([Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/app/AppOpsManager$OnOpActiveChangedListener;)V

    .line 8875
    return-void
.end method

.method public whitelist startWatchingActive([Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/app/AppOpsManager$OnOpActiveChangedListener;)V
    .registers 8
    .param p1, "ops"    # [Ljava/lang/String;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/app/AppOpsManager$OnOpActiveChangedListener;

    .line 8897
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8898
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8899
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8901
    iget-object v0, p0, Landroid/app/AppOpsManager;->mActiveWatchers:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 8902
    :try_start_c
    iget-object v1, p0, Landroid/app/AppOpsManager;->mActiveWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/IAppOpsActiveCallback;

    .line 8903
    .local v1, "cb":Lcom/android/internal/app/IAppOpsActiveCallback;
    if-eqz v1, :cond_18

    .line 8904
    monitor-exit v0

    return-void

    .line 8906
    :cond_18
    new-instance v2, Landroid/app/AppOpsManager$4;

    invoke-direct {v2, p0, p2, p3}, Landroid/app/AppOpsManager$4;-><init>(Landroid/app/AppOpsManager;Ljava/util/concurrent/Executor;Landroid/app/AppOpsManager$OnOpActiveChangedListener;)V

    .line 8936
    .end local v1    # "cb":Lcom/android/internal/app/IAppOpsActiveCallback;
    .local v2, "cb":Lcom/android/internal/app/IAppOpsActiveCallback;
    iget-object v1, p0, Landroid/app/AppOpsManager;->mActiveWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8937
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_42

    .line 8938
    array-length v0, p1

    new-array v0, v0, [I

    .line 8939
    .local v0, "rawOps":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_27
    array-length v3, p1

    if-ge v1, v3, :cond_35

    .line 8940
    aget-object v3, p1, v1

    invoke-static {v3}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v3

    aput v3, v0, v1

    .line 8939
    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    .line 8943
    .end local v1    # "i":I
    :cond_35
    :try_start_35
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v1, v0, v2}, Lcom/android/internal/app/IAppOpsService;->startWatchingActive([ILcom/android/internal/app/IAppOpsActiveCallback;)V
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_3a} :catch_3c

    .line 8946
    nop

    .line 8947
    return-void

    .line 8944
    :catch_3c
    move-exception v1

    .line 8945
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 8937
    .end local v0    # "rawOps":[I
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "cb":Lcom/android/internal/app/IAppOpsActiveCallback;
    :catchall_42
    move-exception v1

    :try_start_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    throw v1
.end method

.method public greylist-max-o startWatchingMode(ILjava/lang/String;ILandroid/app/AppOpsManager$OnOpChangedListener;)V
    .registers 9
    .param p1, "op"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "callback"    # Landroid/app/AppOpsManager$OnOpChangedListener;

    .line 8805
    iget-object v0, p0, Landroid/app/AppOpsManager;->mModeWatchers:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 8806
    :try_start_3
    iget-object v1, p0, Landroid/app/AppOpsManager;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/IAppOpsCallback;

    .line 8807
    .local v1, "cb":Lcom/android/internal/app/IAppOpsCallback;
    if-nez v1, :cond_18

    .line 8808
    new-instance v2, Landroid/app/AppOpsManager$3;

    invoke-direct {v2, p0, p4}, Landroid/app/AppOpsManager$3;-><init>(Landroid/app/AppOpsManager;Landroid/app/AppOpsManager$OnOpChangedListener;)V

    move-object v1, v2

    .line 8832
    iget-object v2, p0, Landroid/app/AppOpsManager;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v2, p4, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8836
    :cond_18
    const-wide/32 v2, 0x8d50f1e

    invoke-static {v2, v3}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v2
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_31

    if-nez v2, :cond_23

    .line 8838
    or-int/lit8 p3, p3, 0x2

    .line 8842
    :cond_23
    :try_start_23
    iget-object v2, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v2, p1, p2, p3, v1}, Lcom/android/internal/app/IAppOpsService;->startWatchingModeWithFlags(ILjava/lang/String;ILcom/android/internal/app/IAppOpsCallback;)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_28} :catch_2b
    .catchall {:try_start_23 .. :try_end_28} :catchall_31

    .line 8845
    nop

    .line 8846
    .end local v1    # "cb":Lcom/android/internal/app/IAppOpsCallback;
    :try_start_29
    monitor-exit v0

    .line 8847
    return-void

    .line 8843
    .restart local v1    # "cb":Lcom/android/internal/app/IAppOpsCallback;
    :catch_2b
    move-exception v2

    .line 8844
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local p0    # "this":Landroid/app/AppOpsManager;
    .end local p1    # "op":I
    .end local p2    # "packageName":Ljava/lang/String;
    .end local p3    # "flags":I
    .end local p4    # "callback":Landroid/app/AppOpsManager$OnOpChangedListener;
    throw v3

    .line 8846
    .end local v1    # "cb":Lcom/android/internal/app/IAppOpsCallback;
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/app/AppOpsManager;
    .restart local p1    # "op":I
    .restart local p2    # "packageName":Ljava/lang/String;
    .restart local p3    # "flags":I
    .restart local p4    # "callback":Landroid/app/AppOpsManager$OnOpChangedListener;
    :catchall_31
    move-exception v1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_29 .. :try_end_33} :catchall_31

    throw v1
.end method

.method public greylist-max-o startWatchingMode(ILjava/lang/String;Landroid/app/AppOpsManager$OnOpChangedListener;)V
    .registers 5
    .param p1, "op"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/app/AppOpsManager$OnOpChangedListener;

    .line 8787
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/app/AppOpsManager;->startWatchingMode(ILjava/lang/String;ILandroid/app/AppOpsManager$OnOpChangedListener;)V

    .line 8788
    return-void
.end method

.method public whitelist startWatchingMode(Ljava/lang/String;Ljava/lang/String;ILandroid/app/AppOpsManager$OnOpChangedListener;)V
    .registers 6
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "callback"    # Landroid/app/AppOpsManager$OnOpChangedListener;

    .line 8771
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3, p4}, Landroid/app/AppOpsManager;->startWatchingMode(ILjava/lang/String;ILandroid/app/AppOpsManager$OnOpChangedListener;)V

    .line 8772
    return-void
.end method

.method public whitelist startWatchingMode(Ljava/lang/String;Ljava/lang/String;Landroid/app/AppOpsManager$OnOpChangedListener;)V
    .registers 5
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/app/AppOpsManager$OnOpChangedListener;

    .line 8757
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AppOpsManager;->startWatchingMode(ILjava/lang/String;Landroid/app/AppOpsManager$OnOpChangedListener;)V

    .line 8758
    return-void
.end method

.method public blacklist startWatchingNoted([ILandroid/app/AppOpsManager$OnOpNotedListener;)V
    .registers 4
    .param p1, "ops"    # [I
    .param p2, "listener"    # Landroid/app/AppOpsManager$OnOpNotedListener;

    .line 9128
    iget-object v0, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Landroid/app/AppOpsManager;->startWatchingNoted([ILjava/util/concurrent/Executor;Landroid/app/AppOpsManager$OnOpNotedListener;)V

    .line 9129
    return-void
.end method

.method public blacklist startWatchingNoted([ILjava/util/concurrent/Executor;Landroid/app/AppOpsManager$OnOpNotedListener;)V
    .registers 7
    .param p1, "ops"    # [I
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "listener"    # Landroid/app/AppOpsManager$OnOpNotedListener;

    .line 9163
    iget-object v0, p0, Landroid/app/AppOpsManager;->mNotedWatchers:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 9164
    :try_start_3
    iget-object v1, p0, Landroid/app/AppOpsManager;->mNotedWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/IAppOpsNotedCallback;

    .line 9165
    .local v1, "cb":Lcom/android/internal/app/IAppOpsNotedCallback;
    if-eqz v1, :cond_f

    .line 9166
    monitor-exit v0

    return-void

    .line 9168
    :cond_f
    new-instance v2, Landroid/app/AppOpsManager$6;

    invoke-direct {v2, p0, p2, p3}, Landroid/app/AppOpsManager$6;-><init>(Landroid/app/AppOpsManager;Ljava/util/concurrent/Executor;Landroid/app/AppOpsManager$OnOpNotedListener;)V

    .line 9190
    .end local v1    # "cb":Lcom/android/internal/app/IAppOpsNotedCallback;
    .local v2, "cb":Lcom/android/internal/app/IAppOpsNotedCallback;
    iget-object v1, p0, Landroid/app/AppOpsManager;->mNotedWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9191
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_27

    .line 9193
    :try_start_1a
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1, v2}, Lcom/android/internal/app/IAppOpsService;->startWatchingNoted([ILcom/android/internal/app/IAppOpsNotedCallback;)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1f} :catch_21

    .line 9196
    nop

    .line 9197
    return-void

    .line 9194
    :catch_21
    move-exception v0

    .line 9195
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 9191
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "cb":Lcom/android/internal/app/IAppOpsNotedCallback;
    :catchall_27
    move-exception v1

    :try_start_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw v1
.end method

.method public whitelist startWatchingNoted([Ljava/lang/String;Landroid/app/AppOpsManager$OnOpNotedListener;)V
    .registers 6
    .param p1, "ops"    # [Ljava/lang/String;
    .param p2, "listener"    # Landroid/app/AppOpsManager$OnOpNotedListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 9062
    array-length v0, p1

    new-array v0, v0, [I

    .line 9063
    .local v0, "intOps":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    array-length v2, p1

    if-ge v1, v2, :cond_12

    .line 9064
    aget-object v2, p1, v1

    invoke-static {v2}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    .line 9063
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 9066
    .end local v1    # "i":I
    :cond_12
    invoke-virtual {p0, v0, p2}, Landroid/app/AppOpsManager;->startWatchingNoted([ILandroid/app/AppOpsManager$OnOpNotedListener;)V

    .line 9067
    return-void
.end method

.method public whitelist startWatchingNoted([Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/app/AppOpsManager$OnOpNotedListener;)V
    .registers 7
    .param p1, "ops"    # [Ljava/lang/String;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "listener"    # Landroid/app/AppOpsManager$OnOpNotedListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 9096
    array-length v0, p1

    new-array v0, v0, [I

    .line 9097
    .local v0, "intOps":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    array-length v2, p1

    if-ge v1, v2, :cond_12

    .line 9098
    aget-object v2, p1, v1

    invoke-static {v2}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    .line 9097
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 9100
    .end local v1    # "i":I
    :cond_12
    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AppOpsManager;->startWatchingNoted([ILjava/util/concurrent/Executor;Landroid/app/AppOpsManager$OnOpNotedListener;)V

    .line 9101
    return-void
.end method

.method public blacklist startWatchingStarted([ILandroid/app/AppOpsManager$OnOpStartedListener;)V
    .registers 6
    .param p1, "ops"    # [I
    .param p2, "callback"    # Landroid/app/AppOpsManager$OnOpStartedListener;

    .line 8993
    iget-object v0, p0, Landroid/app/AppOpsManager;->mStartedWatchers:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 8994
    :try_start_3
    iget-object v1, p0, Landroid/app/AppOpsManager;->mStartedWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 8995
    monitor-exit v0

    return-void

    .line 8997
    :cond_d
    new-instance v1, Landroid/app/AppOpsManager$5;

    invoke-direct {v1, p0, p2}, Landroid/app/AppOpsManager$5;-><init>(Landroid/app/AppOpsManager;Landroid/app/AppOpsManager$OnOpStartedListener;)V

    .line 9006
    .local v1, "cb":Lcom/android/internal/app/IAppOpsStartedCallback;
    iget-object v2, p0, Landroid/app/AppOpsManager;->mStartedWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9007
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_25

    .line 9009
    :try_start_18
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1, v1}, Lcom/android/internal/app/IAppOpsService;->startWatchingStarted([ILcom/android/internal/app/IAppOpsStartedCallback;)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1d} :catch_1f

    .line 9012
    nop

    .line 9013
    return-void

    .line 9010
    :catch_1f
    move-exception v0

    .line 9011
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 9007
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "cb":Lcom/android/internal/app/IAppOpsStartedCallback;
    :catchall_25
    move-exception v1

    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v1
.end method

.method public whitelist stopWatchingActive(Landroid/app/AppOpsManager$OnOpActiveChangedListener;)V
    .registers 6
    .param p1, "callback"    # Landroid/app/AppOpsManager$OnOpActiveChangedListener;

    .line 8957
    iget-object v0, p0, Landroid/app/AppOpsManager;->mActiveWatchers:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 8958
    :try_start_3
    iget-object v1, p0, Landroid/app/AppOpsManager;->mActiveWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/IAppOpsActiveCallback;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_1b

    .line 8959
    .local v1, "cb":Lcom/android/internal/app/IAppOpsActiveCallback;
    if-eqz v1, :cond_19

    .line 8961
    :try_start_d
    iget-object v2, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v2, v1}, Lcom/android/internal/app/IAppOpsService;->stopWatchingActive(Lcom/android/internal/app/IAppOpsActiveCallback;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_12} :catch_13
    .catchall {:try_start_d .. :try_end_12} :catchall_1b

    .line 8964
    goto :goto_19

    .line 8962
    :catch_13
    move-exception v2

    .line 8963
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_14
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local p0    # "this":Landroid/app/AppOpsManager;
    .end local p1    # "callback":Landroid/app/AppOpsManager$OnOpActiveChangedListener;
    throw v3

    .line 8966
    .end local v1    # "cb":Lcom/android/internal/app/IAppOpsActiveCallback;
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/app/AppOpsManager;
    .restart local p1    # "callback":Landroid/app/AppOpsManager$OnOpActiveChangedListener;
    :cond_19
    :goto_19
    monitor-exit v0

    .line 8967
    return-void

    .line 8966
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public whitelist stopWatchingMode(Landroid/app/AppOpsManager$OnOpChangedListener;)V
    .registers 6
    .param p1, "callback"    # Landroid/app/AppOpsManager$OnOpChangedListener;

    .line 8854
    iget-object v0, p0, Landroid/app/AppOpsManager;->mModeWatchers:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 8855
    :try_start_3
    iget-object v1, p0, Landroid/app/AppOpsManager;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/IAppOpsCallback;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_1b

    .line 8856
    .local v1, "cb":Lcom/android/internal/app/IAppOpsCallback;
    if-eqz v1, :cond_19

    .line 8858
    :try_start_d
    iget-object v2, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v2, v1}, Lcom/android/internal/app/IAppOpsService;->stopWatchingMode(Lcom/android/internal/app/IAppOpsCallback;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_12} :catch_13
    .catchall {:try_start_d .. :try_end_12} :catchall_1b

    .line 8861
    goto :goto_19

    .line 8859
    :catch_13
    move-exception v2

    .line 8860
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_14
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local p0    # "this":Landroid/app/AppOpsManager;
    .end local p1    # "callback":Landroid/app/AppOpsManager$OnOpChangedListener;
    throw v3

    .line 8863
    .end local v1    # "cb":Lcom/android/internal/app/IAppOpsCallback;
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/app/AppOpsManager;
    .restart local p1    # "callback":Landroid/app/AppOpsManager$OnOpChangedListener;
    :cond_19
    :goto_19
    monitor-exit v0

    .line 8864
    return-void

    .line 8863
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public whitelist stopWatchingNoted(Landroid/app/AppOpsManager$OnOpNotedListener;)V
    .registers 6
    .param p1, "callback"    # Landroid/app/AppOpsManager$OnOpNotedListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 9210
    iget-object v0, p0, Landroid/app/AppOpsManager;->mNotedWatchers:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 9211
    :try_start_3
    iget-object v1, p0, Landroid/app/AppOpsManager;->mNotedWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/IAppOpsNotedCallback;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_1b

    .line 9212
    .local v1, "cb":Lcom/android/internal/app/IAppOpsNotedCallback;
    if-eqz v1, :cond_19

    .line 9214
    :try_start_d
    iget-object v2, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v2, v1}, Lcom/android/internal/app/IAppOpsService;->stopWatchingNoted(Lcom/android/internal/app/IAppOpsNotedCallback;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_12} :catch_13
    .catchall {:try_start_d .. :try_end_12} :catchall_1b

    .line 9217
    goto :goto_19

    .line 9215
    :catch_13
    move-exception v2

    .line 9216
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_14
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local p0    # "this":Landroid/app/AppOpsManager;
    .end local p1    # "callback":Landroid/app/AppOpsManager$OnOpNotedListener;
    throw v3

    .line 9219
    .end local v1    # "cb":Lcom/android/internal/app/IAppOpsNotedCallback;
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/app/AppOpsManager;
    .restart local p1    # "callback":Landroid/app/AppOpsManager$OnOpNotedListener;
    :cond_19
    :goto_19
    monitor-exit v0

    .line 9220
    return-void

    .line 9219
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public blacklist stopWatchingStarted(Landroid/app/AppOpsManager$OnOpStartedListener;)V
    .registers 6
    .param p1, "callback"    # Landroid/app/AppOpsManager$OnOpStartedListener;

    .line 9027
    iget-object v0, p0, Landroid/app/AppOpsManager;->mStartedWatchers:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 9028
    :try_start_3
    iget-object v1, p0, Landroid/app/AppOpsManager;->mStartedWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/IAppOpsStartedCallback;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_1b

    .line 9029
    .local v1, "cb":Lcom/android/internal/app/IAppOpsStartedCallback;
    if-eqz v1, :cond_19

    .line 9031
    :try_start_d
    iget-object v2, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v2, v1}, Lcom/android/internal/app/IAppOpsService;->stopWatchingStarted(Lcom/android/internal/app/IAppOpsStartedCallback;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_12} :catch_13
    .catchall {:try_start_d .. :try_end_12} :catchall_1b

    .line 9034
    goto :goto_19

    .line 9032
    :catch_13
    move-exception v2

    .line 9033
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_14
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local p0    # "this":Landroid/app/AppOpsManager;
    .end local p1    # "callback":Landroid/app/AppOpsManager$OnOpStartedListener;
    throw v3

    .line 9036
    .end local v1    # "cb":Lcom/android/internal/app/IAppOpsStartedCallback;
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/app/AppOpsManager;
    .restart local p1    # "callback":Landroid/app/AppOpsManager$OnOpStartedListener;
    :cond_19
    :goto_19
    monitor-exit v0

    .line 9037
    return-void

    .line 9036
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public whitelist unsafeCheckOp(Ljava/lang/String;ILjava/lang/String;)I
    .registers 5
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9270
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public whitelist unsafeCheckOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I
    .registers 5
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9310
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public whitelist unsafeCheckOpRaw(Ljava/lang/String;ILjava/lang/String;)I
    .registers 5
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9379
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/AppOpsManager;->unsafeCheckOpRawNoThrow(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist unsafeCheckOpRawNoThrow(IILjava/lang/String;)I
    .registers 10
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 9423
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    .end local p1    # "op":I
    .end local p2    # "uid":I
    .end local p3    # "packageName":Ljava/lang/String;
    .local v1, "op":I
    .local v2, "uid":I
    .local v3, "packageName":Ljava/lang/String;
    invoke-direct/range {v0 .. v5}, Landroid/app/AppOpsManager;->checkOpRawNoThrow(IILjava/lang/String;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public blacklist unsafeCheckOpRawNoThrow(ILandroid/content/AttributionSource;)I
    .registers 9
    .param p1, "op"    # I
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;

    .line 9400
    invoke-virtual {p2}, Landroid/content/AttributionSource;->getUid()I

    move-result v2

    .line 9401
    invoke-virtual {p2}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    .line 9402
    invoke-virtual {p2}, Landroid/content/AttributionSource;->getDeviceId()I

    move-result v5

    .line 9400
    move-object v0, p0

    move v1, p1

    .end local p1    # "op":I
    .local v1, "op":I
    invoke-direct/range {v0 .. v5}, Landroid/app/AppOpsManager;->checkOpRawNoThrow(IILjava/lang/String;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public whitelist unsafeCheckOpRawNoThrow(Ljava/lang/String;ILjava/lang/String;)I
    .registers 5
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9391
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AppOpsManager;->unsafeCheckOpRawNoThrow(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist unsafeCheckOpRawNoThrow(Ljava/lang/String;Landroid/content/AttributionSource;)I
    .registers 4
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;

    .line 9414
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Landroid/app/AppOpsManager;->unsafeCheckOpRawNoThrow(ILandroid/content/AttributionSource;)I

    move-result v0

    return v0
.end method
