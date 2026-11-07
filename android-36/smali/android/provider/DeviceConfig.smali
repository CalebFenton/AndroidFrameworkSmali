.class public final Landroid/provider/DeviceConfig;
.super Ljava/lang/Object;
.source "DeviceConfig.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/DeviceConfig$Properties;,
        Landroid/provider/DeviceConfig$OnPropertiesChangedListener;,
        Landroid/provider/DeviceConfig$MonitorCallback;,
        Landroid/provider/DeviceConfig$BadConfigException;,
        Landroid/provider/DeviceConfig$SyncDisabledMode;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z

.field private static final blacklist DEVICE_CONFIG_OVERRIDES_NAMESPACE:Ljava/lang/String; = "device_config_overrides"

.field public static final blacklist DUMP_ARG_NAMESPACE:Ljava/lang/String; = "--namespace"
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final whitelist NAMESPACE_ACCESSIBILITY:Ljava/lang/String; = "accessibility"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NAMESPACE_ACTIVITY_MANAGER:Ljava/lang/String; = "activity_manager"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist NAMESPACE_ACTIVITY_MANAGER_COMPONENT_ALIAS:Ljava/lang/String; = "activity_manager_ca"
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final whitelist NAMESPACE_ACTIVITY_MANAGER_NATIVE_BOOT:Ljava/lang/String; = "activity_manager_native_boot"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NAMESPACE_ADSERVICES:Ljava/lang/String; = "adservices"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist NAMESPACE_ALARM_MANAGER:Ljava/lang/String; = "alarm_manager"
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final whitelist NAMESPACE_AMBIENT_CONTEXT_MANAGER_SERVICE:Ljava/lang/String; = "ambient_context_manager_service"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NAMESPACE_ANDROID:Ljava/lang/String; = "android"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NAMESPACE_APPSEARCH:Ljava/lang/String; = "appsearch"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist NAMESPACE_APP_CLONING:Ljava/lang/String; = "app_cloning"
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final whitelist NAMESPACE_APP_COMPAT:Ljava/lang/String; = "app_compat"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NAMESPACE_APP_COMPAT_OVERRIDES:Ljava/lang/String; = "app_compat_overrides"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NAMESPACE_APP_HIBERNATION:Ljava/lang/String; = "app_hibernation"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist NAMESPACE_APP_STANDBY:Ljava/lang/String; = "app_standby"
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist NAMESPACE_ARC_APP_COMPAT:Ljava/lang/String; = "arc_app_compat"
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final whitelist NAMESPACE_ATTENTION_MANAGER_SERVICE:Ljava/lang/String; = "attention_manager_service"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NAMESPACE_AUTOFILL:Ljava/lang/String; = "autofill"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NAMESPACE_AUTO_PIN_CONFIRMATION:Ljava/lang/String; = "auto_pin_confirmation"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NAMESPACE_BACKUP_AND_RESTORE:Ljava/lang/String; = "backup_and_restore"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NAMESPACE_BATTERY_SAVER:Ljava/lang/String; = "battery_saver"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist NAMESPACE_BATTERY_STATS:Ljava/lang/String; = "battery_stats"
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final whitelist NAMESPACE_BIOMETRICS:Ljava/lang/String; = "biometrics"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NAMESPACE_BLOBSTORE:Ljava/lang/String; = "blobstore"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NAMESPACE_BLUETOOTH:Ljava/lang/String; = "bluetooth"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NAMESPACE_CAMERA_NATIVE:Ljava/lang/String; = "camera_native"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NAMESPACE_CAPTIVEPORTALLOGIN:Ljava/lang/String; = "captive_portal_login"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NAMESPACE_CELLULAR_SECURITY:Ljava/lang/String; = "cellular_security"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NAMESPACE_CLIPBOARD:Ljava/lang/String; = "clipboard"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist NAMESPACE_CONFIGURATION:Ljava/lang/String; = "configuration"
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final whitelist NAMESPACE_CONNECTIVITY:Ljava/lang/String; = "connectivity"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist NAMESPACE_CONNECTIVITY_THERMAL_POWER_MANAGER:Ljava/lang/String; = "connectivity_thermal_power_manager"
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final whitelist NAMESPACE_CONSTRAIN_DISPLAY_APIS:Ljava/lang/String; = "constrain_display_apis"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist NAMESPACE_CONTACTS_PROVIDER:Ljava/lang/String; = "contacts_provider"
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final whitelist NAMESPACE_CONTENT_CAPTURE:Ljava/lang/String; = "content_capture"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NAMESPACE_CORE_EXPERIMENTS_TEAM_INTERNAL:Ljava/lang/String; = "core_experiments_team_internal"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NAMESPACE_CREDENTIAL:Ljava/lang/String; = "credential_manager"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist NAMESPACE_DEVICE_IDLE:Ljava/lang/String; = "device_idle"
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist NAMESPACE_DEVICE_POLICY_MANAGER:Ljava/lang/String; = "device_policy_manager"
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final whitelist NAMESPACE_DEX_BOOT:Ljava/lang/String; = "dex_boot"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist NAMESPACE_DISPLAY_MANAGER:Ljava/lang/String; = "display_manager"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NAMESPACE_EDGETPU_NATIVE:Ljava/lang/String; = "edgetpu_native"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NAMESPACE_GAME_DRIVER:Ljava/lang/String; = "game_driver"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist NAMESPACE_GAME_OVERLAY:Ljava/lang/String; = "game_overlay"
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final whitelist NAMESPACE_HDMI_CONTROL:Ljava/lang/String; = "hdmi_control"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NAMESPACE_HEALTH_FITNESS:Ljava/lang/String; = "health_fitness"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NAMESPACE_INPUT_METHOD_MANAGER:Ljava/lang/String; = "input_method_manager"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NAMESPACE_INPUT_NATIVE_BOOT:Ljava/lang/String; = "input_native_boot"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NAMESPACE_INTELLIGENCE_ATTENTION:Ljava/lang/String; = "intelligence_attention"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist NAMESPACE_INTELLIGENCE_CONTENT_SUGGESTIONS:Ljava/lang/String; = "intelligence_content_suggestions"
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist NAMESPACE_INTERACTION_JANK_MONITOR:Ljava/lang/String; = "interaction_jank_monitor"
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final whitelist NAMESPACE_JOB_SCHEDULER:Ljava/lang/String; = "jobscheduler"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist NAMESPACE_LATENCY_TRACKER:Ljava/lang/String; = "latency_tracker"
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final whitelist NAMESPACE_LMKD_NATIVE:Ljava/lang/String; = "lmkd_native"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NAMESPACE_LOCATION:Ljava/lang/String; = "location"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NAMESPACE_MEDIA:Ljava/lang/String; = "media"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NAMESPACE_MEDIA_NATIVE:Ljava/lang/String; = "media_native"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist NAMESPACE_MEMORY_SAFETY_NATIVE:Ljava/lang/String; = "memory_safety_native"
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist NAMESPACE_MEMORY_SAFETY_NATIVE_BOOT:Ljava/lang/String; = "memory_safety_native_boot"
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist NAMESPACE_MGLRU_NATIVE:Ljava/lang/String; = "mglru_native"
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist NAMESPACE_MM:Ljava/lang/String; = "mm"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist NAMESPACE_MMD_NATIVE:Ljava/lang/String; = "mmd_native"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NAMESPACE_NEARBY:Ljava/lang/String; = "nearby"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NAMESPACE_NETD_NATIVE:Ljava/lang/String; = "netd_native"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NAMESPACE_NFC:Ljava/lang/String; = "nfc"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NAMESPACE_NNAPI_NATIVE:Ljava/lang/String; = "nnapi_native"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NAMESPACE_ON_DEVICE_PERSONALIZATION:Ljava/lang/String; = "on_device_personalization"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NAMESPACE_OTA:Ljava/lang/String; = "ota"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NAMESPACE_PACKAGE_MANAGER_SERVICE:Ljava/lang/String; = "package_manager_service"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NAMESPACE_PERMISSIONS:Ljava/lang/String; = "permissions"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NAMESPACE_PRIVACY:Ljava/lang/String; = "privacy"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NAMESPACE_PROFCOLLECT_NATIVE_BOOT:Ljava/lang/String; = "profcollect_native_boot"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NAMESPACE_REBOOT_READINESS:Ljava/lang/String; = "reboot_readiness"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NAMESPACE_REMOTE_AUTH:Ljava/lang/String; = "remote_auth"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist NAMESPACE_REMOTE_KEY_PROVISIONING_NATIVE:Ljava/lang/String; = "remote_key_provisioning_native"
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final whitelist NAMESPACE_ROLLBACK:Ljava/lang/String; = "rollback"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NAMESPACE_ROLLBACK_BOOT:Ljava/lang/String; = "rollback_boot"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist NAMESPACE_ROTATION_RESOLVER:Ljava/lang/String; = "rotation_resolver"
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final whitelist NAMESPACE_RUNTIME:Ljava/lang/String; = "runtime"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NAMESPACE_RUNTIME_NATIVE:Ljava/lang/String; = "runtime_native"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NAMESPACE_RUNTIME_NATIVE_BOOT:Ljava/lang/String; = "runtime_native_boot"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NAMESPACE_SCHEDULER:Ljava/lang/String; = "scheduler"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NAMESPACE_SDK_SANDBOX:Ljava/lang/String; = "sdk_sandbox"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NAMESPACE_SELECTION_TOOLBAR:Ljava/lang/String; = "selection_toolbar"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist NAMESPACE_SETTINGS_STATS:Ljava/lang/String; = "settings_stats"
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist NAMESPACE_SETTINGS_UI:Ljava/lang/String; = "settings_ui"
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final whitelist NAMESPACE_STATSD_JAVA:Ljava/lang/String; = "statsd_java"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NAMESPACE_STATSD_JAVA_BOOT:Ljava/lang/String; = "statsd_java_boot"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NAMESPACE_STATSD_NATIVE:Ljava/lang/String; = "statsd_native"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NAMESPACE_STATSD_NATIVE_BOOT:Ljava/lang/String; = "statsd_native_boot"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NAMESPACE_STORAGE:Ljava/lang/String; = "storage"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist NAMESPACE_STORAGE_NATIVE_BOOT:Ljava/lang/String; = "storage_native_boot"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NAMESPACE_SURFACE_FLINGER_NATIVE_BOOT:Ljava/lang/String; = "surface_flinger_native_boot"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NAMESPACE_SWCODEC_NATIVE:Ljava/lang/String; = "swcodec_native"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NAMESPACE_SYSTEMUI:Ljava/lang/String; = "systemui"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NAMESPACE_SYSTEM_TIME:Ljava/lang/String; = "system_time"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist NAMESPACE_TARE:Ljava/lang/String; = "tare"
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final whitelist NAMESPACE_TELEPHONY:Ljava/lang/String; = "telephony"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NAMESPACE_TETHERING:Ljava/lang/String; = "tethering"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist NAMESPACE_TETHERING_NATIVE:Ljava/lang/String; = "tethering_u_or_later_native"
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final whitelist NAMESPACE_TEXTCLASSIFIER:Ljava/lang/String; = "textclassifier"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NAMESPACE_UWB:Ljava/lang/String; = "uwb"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist NAMESPACE_VENDOR_SYSTEM_NATIVE:Ljava/lang/String; = "vendor_system_native"
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist NAMESPACE_VENDOR_SYSTEM_NATIVE_BOOT:Ljava/lang/String; = "vendor_system_native_boot"
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist NAMESPACE_VIRTUALIZATION_FRAMEWORK_NATIVE:Ljava/lang/String; = "virtualization_framework_native"
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist NAMESPACE_VOICE_INTERACTION:Ljava/lang/String; = "voice_interaction"
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist NAMESPACE_WEAR:Ljava/lang/String; = "wear"
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final whitelist NAMESPACE_WEARABLE_SENSING:Ljava/lang/String; = "wearable_sensing"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist NAMESPACE_WIDGET:Ljava/lang/String; = "widget"
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist NAMESPACE_WINDOW_MANAGER:Ljava/lang/String; = "window_manager"
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final whitelist NAMESPACE_WINDOW_MANAGER_NATIVE_BOOT:Ljava/lang/String; = "window_manager_native_boot"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final blacklist PUBLIC_NAMESPACES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist SERVICE_NAME:Ljava/lang/String; = "device_config_updatable"

.field public static final whitelist SYNC_DISABLED_MODE_NONE:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SYNC_DISABLED_MODE_PERSISTENT:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SYNC_DISABLED_MODE_UNTIL_REBOOT:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "DeviceConfig"

.field private static final blacklist sDataStore:Landroid/provider/DeviceConfigDataStore;

.field private static blacklist sListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/provider/DeviceConfig$OnPropertiesChangedListener;",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Executor;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final blacklist sLock:Ljava/lang/Object;

.field private static blacklist sNamespaces:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Landroid/database/ContentObserver;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$smhandleChange(Landroid/net/Uri;)V
    .registers 1

    invoke-static {p0}, Landroid/provider/DeviceConfig;->handleChange(Landroid/net/Uri;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 8

    .line 791
    const-string v6, "device_policy_manager"

    const-string v7, "content_capture"

    const-string v0, "textclassifier"

    const-string v1, "runtime"

    const-string v2, "statsd_java"

    const-string v3, "statsd_java_boot"

    const-string v4, "selection_toolbar"

    const-string v5, "autofill"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    .line 792
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroid/provider/DeviceConfig;->PUBLIC_NAMESPACES:Ljava/util/List;

    .line 1072
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/provider/DeviceConfig;->sLock:Ljava/lang/Object;

    .line 1074
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/provider/DeviceConfig;->sListeners:Landroid/util/ArrayMap;

    .line 1077
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/provider/DeviceConfig;->sNamespaces:Ljava/util/Map;

    .line 1079
    const-string v0, "DeviceConfig"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/provider/DeviceConfig;->DEBUG:Z

    .line 1081
    invoke-static {}, Landroid/provider/DeviceConfig;->newDataStore()Landroid/provider/DeviceConfigDataStore;

    move-result-object v0

    sput-object v0, Landroid/provider/DeviceConfig;->sDataStore:Landroid/provider/DeviceConfigDataStore;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 1123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1124
    return-void
.end method

.method public static whitelist addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V
    .registers 7
    .param p0, "namespace"    # Ljava/lang/String;
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "onPropertiesChangedListener"    # Landroid/provider/DeviceConfig$OnPropertiesChangedListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1563
    sget-object v0, Landroid/provider/DeviceConfig;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1564
    :try_start_3
    sget-object v1, Landroid/provider/DeviceConfig;->sListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 1565
    .local v1, "oldNamespace":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/concurrent/Executor;>;"
    if-nez v1, :cond_1b

    .line 1567
    sget-object v2, Landroid/provider/DeviceConfig;->sListeners:Landroid/util/ArrayMap;

    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, p0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, p2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1568
    invoke-static {p0}, Landroid/provider/DeviceConfig;->incrementNamespace(Ljava/lang/String;)V

    goto :goto_4a

    .line 1569
    :cond_1b
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 1571
    sget-object v2, Landroid/provider/DeviceConfig;->sListeners:Landroid/util/ArrayMap;

    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, p0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, p2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4a

    .line 1574
    :cond_2e
    sget-object v2, Landroid/provider/DeviceConfig;->sListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/provider/DeviceConfig;->decrementNamespace(Ljava/lang/String;)V

    .line 1575
    sget-object v2, Landroid/provider/DeviceConfig;->sListeners:Landroid/util/ArrayMap;

    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, p0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, p2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1576
    invoke-static {p0}, Landroid/provider/DeviceConfig;->incrementNamespace(Ljava/lang/String;)V

    .line 1578
    .end local v1    # "oldNamespace":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/concurrent/Executor;>;"
    :goto_4a
    monitor-exit v0

    .line 1579
    return-void

    .line 1578
    :catchall_4c
    move-exception v1

    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_3 .. :try_end_4e} :catchall_4c

    throw v1
.end method

.method private static blacklist applyOverrides(Landroid/provider/DeviceConfig$Properties;)V
    .registers 9
    .param p0, "properties"    # Landroid/provider/DeviceConfig$Properties;

    .line 1182
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 1183
    const-string v1, "device_config_overrides"

    invoke-static {v1, v0}, Landroid/provider/DeviceConfig;->getPropertiesWithoutOverrides(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    move-result-object v0

    .line 1185
    .local v0, "overrides":Landroid/provider/DeviceConfig$Properties;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/provider/DeviceConfig$Properties;->getNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1186
    .local v1, "prefix":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 1188
    .local v2, "prefixLength":I
    invoke-static {v0}, Landroid/provider/DeviceConfig$Properties;->-$$Nest$mgetMap(Landroid/provider/DeviceConfig$Properties;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_30
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_58

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 1189
    .local v4, "override":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1190
    .local v5, "fullKey":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1191
    .local v6, "value":Ljava/lang/String;
    if-eqz v6, :cond_57

    invoke-virtual {v5, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_57

    .line 1192
    invoke-virtual {v5, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7, v6}, Landroid/provider/DeviceConfig$Properties;->-$$Nest$msetString(Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1194
    .end local v4    # "override":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "fullKey":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    :cond_57
    goto :goto_30

    .line 1195
    :cond_58
    return-void
.end method

.method public static whitelist clearAllLocalOverrides()V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1368
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "device_config_overrides"

    invoke-static {v1, v0}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    move-result-object v0

    .line 1369
    .local v0, "overrides":Landroid/provider/DeviceConfig$Properties;
    invoke-virtual {v0}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1370
    .local v3, "overrideName":Ljava/lang/String;
    invoke-static {v1, v3}, Landroid/provider/DeviceConfig;->deleteProperty(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1371
    .end local v3    # "overrideName":Ljava/lang/String;
    goto :goto_11

    .line 1372
    :cond_21
    return-void
.end method

.method public static whitelist clearLocalOverride(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0, "namespace"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "device_config_overrides"

    invoke-static {v1, v0}, Landroid/provider/DeviceConfig;->deleteProperty(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1384
    return-void
.end method

.method public static whitelist clearMonitorCallback(Landroid/content/ContentResolver;)V
    .registers 2
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1708
    sget-object v0, Landroid/provider/DeviceConfig;->sDataStore:Landroid/provider/DeviceConfigDataStore;

    invoke-interface {v0, p0}, Landroid/provider/DeviceConfigDataStore;->clearMonitorCallback(Landroid/content/ContentResolver;)V

    .line 1709
    return-void
.end method

.method private static blacklist decrementNamespace(Ljava/lang/String;)V
    .registers 7
    .param p0, "namespace"    # Ljava/lang/String;

    .line 1749
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1750
    sget-object v0, Landroid/provider/DeviceConfig;->sNamespaces:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 1751
    .local v0, "namespaceCount":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/database/ContentObserver;Ljava/lang/Integer;>;"
    if-nez v0, :cond_e

    .line 1753
    return-void

    .line 1754
    :cond_e
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_35

    .line 1755
    sget-object v1, Landroid/provider/DeviceConfig;->sNamespaces:Ljava/util/Map;

    new-instance v3, Landroid/util/Pair;

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/database/ContentObserver;

    iget-object v5, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_43

    .line 1758
    :cond_35
    sget-object v1, Landroid/provider/DeviceConfig;->sDataStore:Landroid/provider/DeviceConfigDataStore;

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/database/ContentObserver;

    invoke-interface {v1, v2}, Landroid/provider/DeviceConfigDataStore;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1759
    sget-object v1, Landroid/provider/DeviceConfig;->sNamespaces:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1761
    :goto_43
    return-void
.end method

.method public static whitelist deleteProperty(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3
    .param p0, "namespace"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1479
    sget-object v0, Landroid/provider/DeviceConfig;->sDataStore:Landroid/provider/DeviceConfigDataStore;

    invoke-interface {v0, p0, p1}, Landroid/provider/DeviceConfigDataStore;->deleteProperty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static blacklist dump(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 16
    .param p0, "printWriter"    # Ljava/io/PrintWriter;
    .param p1, "dumpPrefix"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 1601
    sget-boolean v0, Landroid/provider/DeviceConfig;->DEBUG:Z

    if-eqz v0, :cond_20

    .line 1602
    const-string v0, "DeviceConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dump(): args="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1604
    :cond_20
    const-string v0, "printWriter cannot be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1606
    new-instance v0, Landroid/provider/DeviceConfig$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/provider/DeviceConfig$$ExternalSyntheticLambda1;-><init>()V

    .line 1608
    .local v0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/provider/DeviceConfig$OnPropertiesChangedListener;>;"
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 1610
    .local v1, "listenersByNamespace":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/util/Set<Landroid/provider/DeviceConfig$OnPropertiesChangedListener;>;>;"
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 1611
    .local v2, "uniqueListeners":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/provider/DeviceConfig$OnPropertiesChangedListener;>;"
    const/4 v3, 0x0

    .line 1612
    .local v3, "filter":Ljava/lang/String;
    array-length v4, p2

    if-lez v4, :cond_99

    .line 1613
    const/4 v4, 0x0

    aget-object v5, p2, v4

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v6

    packed-switch v6, :pswitch_data_146

    :cond_42
    goto :goto_4c

    :pswitch_43
    const-string v6, "--namespace"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_42

    goto :goto_4d

    :goto_4c
    const/4 v4, -0x1

    :goto_4d
    packed-switch v4, :pswitch_data_14c

    .line 1625
    const-string v4, "DeviceConfig"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dump(): ignoring invalid arguments: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_99

    .line 1615
    :pswitch_6d
    array-length v4, p2

    const/4 v5, 0x2

    if-lt v4, v5, :cond_91

    .line 1619
    const/4 v4, 0x1

    aget-object v3, p2, v4

    .line 1620
    sget-boolean v4, Landroid/provider/DeviceConfig;->DEBUG:Z

    if-eqz v4, :cond_99

    .line 1621
    const-string v4, "DeviceConfig"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dump(): setting filter as "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_99

    .line 1616
    :cond_91
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "argument --namespace requires an extra argument"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1630
    :cond_99
    :goto_99
    sget-object v4, Landroid/provider/DeviceConfig;->sLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1631
    :try_start_9c
    sget-object v5, Landroid/provider/DeviceConfig;->sListeners:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    .line 1632
    .local v5, "listenersSize":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_a3
    if-ge v6, v5, :cond_dc

    .line 1633
    sget-object v7, Landroid/provider/DeviceConfig;->sListeners:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Pair;

    iget-object v7, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    .line 1634
    .local v7, "namespace":Ljava/lang/String;
    if-eqz v3, :cond_ba

    invoke-virtual {v7, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_ba

    .line 1635
    goto :goto_d9

    .line 1637
    :cond_ba
    sget-object v8, Landroid/provider/DeviceConfig;->sListeners:Landroid/util/ArrayMap;

    invoke-virtual {v8, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    .line 1638
    .local v8, "listener":Landroid/provider/DeviceConfig$OnPropertiesChangedListener;
    invoke-virtual {v1, v7}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Set;

    .line 1639
    .local v9, "listeners":Ljava/util/Set;, "Ljava/util/Set<Landroid/provider/DeviceConfig$OnPropertiesChangedListener;>;"
    if-nez v9, :cond_d3

    .line 1641
    new-instance v10, Ljava/util/TreeSet;

    invoke-direct {v10, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    move-object v9, v10

    .line 1642
    invoke-virtual {v1, v7, v9}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1644
    :cond_d3
    invoke-interface {v9, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1645
    invoke-virtual {v2, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1632
    .end local v7    # "namespace":Ljava/lang/String;
    .end local v8    # "listener":Landroid/provider/DeviceConfig$OnPropertiesChangedListener;
    .end local v9    # "listeners":Ljava/util/Set;, "Ljava/util/Set<Landroid/provider/DeviceConfig$OnPropertiesChangedListener;>;"
    :goto_d9
    add-int/lit8 v6, v6, 0x1

    goto :goto_a3

    .line 1647
    .end local v6    # "i":I
    :cond_dc
    monitor-exit v4
    :try_end_dd
    .catchall {:try_start_9c .. :try_end_dd} :catchall_143

    .line 1648
    const-string v4, "%s%d listeners for %d namespaces:\n"

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 1649
    invoke-virtual {v1}, Ljava/util/TreeMap;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {p1, v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    .line 1648
    invoke-virtual {p0, v4, v6}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1650
    invoke-virtual {v1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_fe
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_142

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 1651
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Landroid/provider/DeviceConfig$OnPropertiesChangedListener;>;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1652
    .restart local v7    # "namespace":Ljava/lang/String;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Set;

    .line 1653
    .local v8, "listeners":Ljava/util/Set;, "Ljava/util/Set<Landroid/provider/DeviceConfig$OnPropertiesChangedListener;>;"
    const-string v9, "%s%s: %d listeners\n"

    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array {p1, v7, v10}, [Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1654
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_12b
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_141

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    .line 1655
    .local v10, "listener":Landroid/provider/DeviceConfig$OnPropertiesChangedListener;
    const-string v11, "%s%s%s\n"

    filled-new-array {p1, p1, v10}, [Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {p0, v11, v12}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1656
    .end local v10    # "listener":Landroid/provider/DeviceConfig$OnPropertiesChangedListener;
    goto :goto_12b

    .line 1657
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Landroid/provider/DeviceConfig$OnPropertiesChangedListener;>;>;"
    .end local v7    # "namespace":Ljava/lang/String;
    .end local v8    # "listeners":Ljava/util/Set;, "Ljava/util/Set<Landroid/provider/DeviceConfig$OnPropertiesChangedListener;>;"
    :cond_141
    goto :goto_fe

    .line 1658
    :cond_142
    return-void

    .line 1647
    .end local v5    # "listenersSize":I
    :catchall_143
    move-exception v5

    :try_start_144
    monitor-exit v4
    :try_end_145
    .catchall {:try_start_144 .. :try_end_145} :catchall_143

    throw v5

    :pswitch_data_146
    .packed-switch 0x67bfa3bb
        :pswitch_43
    .end packed-switch

    :pswitch_data_14c
    .packed-switch 0x0
        :pswitch_6d
    .end packed-switch
.end method

.method public static whitelist getAdbWritableFlags()Ljava/util/Set;
    .registers 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1818
    sget-object v0, Landroid/provider/WritableFlags;->ALLOWLIST:Ljava/util/Set;

    return-object v0
.end method

.method public static whitelist getAdbWritableNamespaces()Ljava/util/Set;
    .registers 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1828
    sget-object v0, Landroid/provider/WritableNamespaces;->ALLOWLIST:Ljava/util/Set;

    return-object v0
.end method

.method public static whitelist getAllProperties()Ljava/util/Set;
    .registers 10
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/provider/DeviceConfig$Properties;",
            ">;"
        }
    .end annotation

    .line 1207
    sget-object v0, Landroid/provider/DeviceConfig;->sDataStore:Landroid/provider/DeviceConfigDataStore;

    invoke-interface {v0}, Landroid/provider/DeviceConfigDataStore;->getAllProperties()Ljava/util/Map;

    move-result-object v0

    .line 1208
    .local v0, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1209
    .local v1, "propertyMaps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1210
    .local v3, "flag":Ljava/lang/String;
    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1211
    .local v4, "namespaceAndFlag":[Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v5, v4, v5

    .line 1212
    .local v5, "namespace":Ljava/lang/String;
    const/4 v6, 0x1

    aget-object v6, v4, v6

    .line 1213
    .local v6, "flagName":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1214
    const-string v8, "device_config_overrides"

    invoke-static {v8, v7}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1216
    .local v7, "override":Ljava/lang/String;
    if-eqz v7, :cond_4c

    move-object v8, v7

    goto :goto_52

    :cond_4c
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1218
    .local v8, "value":Ljava/lang/String;
    :goto_52
    invoke-interface {v1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_60

    .line 1219
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v1, v5, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1221
    :cond_60
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    invoke-interface {v9, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1222
    .end local v3    # "flag":Ljava/lang/String;
    .end local v4    # "namespaceAndFlag":[Ljava/lang/String;
    .end local v5    # "namespace":Ljava/lang/String;
    .end local v6    # "flagName":Ljava/lang/String;
    .end local v7    # "override":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/String;
    goto :goto_13

    .line 1224
    :cond_6a
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 1225
    .local v2, "result":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/provider/DeviceConfig$Properties;>;"
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_77
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_98

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 1226
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v5, Landroid/provider/DeviceConfig$Properties;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    invoke-direct {v5, v6, v7}, Landroid/provider/DeviceConfig$Properties;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1227
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    goto :goto_77

    .line 1228
    :cond_98
    return-object v2
.end method

.method public static whitelist getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 5
    .param p0, "namespace"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1263
    invoke-static {p0, p1}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1264
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_b

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    goto :goto_c

    :cond_b
    move v1, p2

    :goto_c
    return v1
.end method

.method public static whitelist getFloat(Ljava/lang/String;Ljava/lang/String;F)F
    .registers 7
    .param p0, "namespace"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # F
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1331
    invoke-static {p0, p1}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1332
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_7

    .line 1333
    return p2

    .line 1336
    :cond_7
    :try_start_7
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_b} :catch_c

    return v1

    .line 1337
    :catch_c
    move-exception v1

    .line 1338
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parsing float failed for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DeviceConfig"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1339
    return p2
.end method

.method public static whitelist getInt(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 7
    .param p0, "namespace"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1280
    invoke-static {p0, p1}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1281
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_7

    .line 1282
    return p2

    .line 1285
    :cond_7
    :try_start_7
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_b} :catch_c

    return v1

    .line 1286
    :catch_c
    move-exception v1

    .line 1287
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parsing integer failed for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DeviceConfig"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1288
    return p2
.end method

.method public static whitelist getLong(Ljava/lang/String;Ljava/lang/String;J)J
    .registers 8
    .param p0, "namespace"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1305
    invoke-static {p0, p1}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1306
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_7

    .line 1307
    return-wide p2

    .line 1310
    :cond_7
    :try_start_7
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_b} :catch_c

    return-wide v1

    .line 1311
    :catch_c
    move-exception v1

    .line 1312
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parsing long failed for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DeviceConfig"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1313
    return-wide p2
.end method

.method public static varargs whitelist getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;
    .registers 4
    .param p0, "namespace"    # Ljava/lang/String;
    .param p1, "names"    # [Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1168
    invoke-static {p0, p1}, Landroid/provider/DeviceConfig;->getPropertiesWithoutOverrides(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    move-result-object v0

    .line 1169
    .local v0, "properties":Landroid/provider/DeviceConfig$Properties;
    invoke-static {}, Landroid/provider/internal/modules/utils/build/SdkLevel;->isAtLeastV()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1170
    invoke-static {v0}, Landroid/provider/DeviceConfig;->applyOverrides(Landroid/provider/DeviceConfig$Properties;)V

    .line 1172
    :cond_d
    return-object v0
.end method

.method private static varargs blacklist getPropertiesWithoutOverrides(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;
    .registers 3
    .param p0, "namespace"    # Ljava/lang/String;
    .param p1, "names"    # [Ljava/lang/String;

    .line 1178
    sget-object v0, Landroid/provider/DeviceConfig;->sDataStore:Landroid/provider/DeviceConfigDataStore;

    invoke-interface {v0, p0, p1}, Landroid/provider/DeviceConfigDataStore;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "namespace"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1140
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/provider/DeviceConfig$Properties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getPublicNamespaces()Ljava/util/List;
    .registers 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1809
    sget-object v0, Landroid/provider/DeviceConfig;->PUBLIC_NAMESPACES:Ljava/util/List;

    return-object v0
.end method

.method public static whitelist getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "namespace"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1246
    invoke-static {p0, p1}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1247
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_8

    move-object v1, v0

    goto :goto_9

    :cond_8
    move-object v1, p2

    :goto_9
    return-object v1
.end method

.method public static whitelist getSyncDisabledMode()I
    .registers 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1541
    sget-object v0, Landroid/provider/DeviceConfig;->sDataStore:Landroid/provider/DeviceConfigDataStore;

    invoke-interface {v0}, Landroid/provider/DeviceConfigDataStore;->getSyncDisabledMode()I

    move-result v0

    return v0
.end method

.method public static whitelist getUnderlyingValuesForOverriddenFlags()Ljava/util/Map;
    .registers 10
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1398
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "device_config_overrides"

    invoke-static {v2, v1}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    move-result-object v1

    .line 1399
    .local v1, "overrides":Landroid/provider/DeviceConfig$Properties;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1400
    .local v2, "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-virtual {v1}, Landroid/provider/DeviceConfig$Properties;->getPropertyValues()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_60

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 1401
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1402
    .local v5, "namespaceAndFlag":[Ljava/lang/String;
    aget-object v6, v5, v0

    .line 1403
    .local v6, "namespace":Ljava/lang/String;
    const/4 v7, 0x1

    aget-object v7, v5, v7

    .line 1405
    .local v7, "flag":Ljava/lang/String;
    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v8

    .line 1406
    invoke-static {v6, v8}, Landroid/provider/DeviceConfig;->getPropertiesWithoutOverrides(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    move-result-object v8

    .line 1407
    const/4 v9, 0x0

    invoke-virtual {v8, v7, v9}, Landroid/provider/DeviceConfig$Properties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1408
    .local v8, "actualValue":Ljava/lang/String;
    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_54

    .line 1409
    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    invoke-interface {v9, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5f

    .line 1411
    :cond_54
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 1412
    .local v9, "innerMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v9, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1413
    invoke-virtual {v2, v6, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1415
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "namespaceAndFlag":[Ljava/lang/String;
    .end local v6    # "namespace":Ljava/lang/String;
    .end local v7    # "flag":Ljava/lang/String;
    .end local v8    # "actualValue":Ljava/lang/String;
    .end local v9    # "innerMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_5f
    goto :goto_1a

    .line 1416
    :cond_60
    return-object v2
.end method

.method private static blacklist handleChange(Landroid/net/Uri;)V
    .registers 9
    .param p0, "uri"    # Landroid/net/Uri;

    .line 1764
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1765
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 1767
    .local v0, "pathSegments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1769
    .local v1, "namespace":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_50

    .line 1770
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v3

    new-array v2, v2, [Ljava/lang/String;

    .line 1771
    .local v2, "keys":[Ljava/lang/String;
    const/4 v3, 0x2

    .local v3, "i":I
    :goto_1d
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_30

    .line 1772
    add-int/lit8 v4, v3, -0x2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v2, v4

    .line 1771
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 1776
    .end local v3    # "i":I
    :cond_30
    :try_start_30
    invoke-static {v1, v2}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    move-result-object v3
    :try_end_34
    .catch Ljava/lang/SecurityException; {:try_start_30 .. :try_end_34} :catch_47

    .line 1781
    .local v3, "properties":Landroid/provider/DeviceConfig$Properties;
    nop

    .line 1784
    array-length v4, v2

    const/4 v5, 0x0

    :goto_37
    if-ge v5, v4, :cond_46

    aget-object v6, v2, v5

    .line 1785
    .local v6, "key":Ljava/lang/String;
    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/provider/DeviceConfig$Properties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v6, v7}, Landroid/provider/DeviceConfig$Properties;->-$$Nest$msetString(Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1784
    .end local v6    # "key":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_37

    .line 1787
    .end local v2    # "keys":[Ljava/lang/String;
    :cond_46
    goto :goto_59

    .line 1777
    .end local v3    # "properties":Landroid/provider/DeviceConfig$Properties;
    .restart local v2    # "keys":[Ljava/lang/String;
    :catch_47
    move-exception v3

    .line 1779
    .local v3, "e":Ljava/lang/SecurityException;
    const-string v4, "DeviceConfig"

    const-string v5, "OnPropertyChangedListener update failed: permission violation."

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1780
    return-void

    .line 1788
    .end local v2    # "keys":[Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/SecurityException;
    :cond_50
    new-instance v2, Landroid/provider/DeviceConfig$Properties$Builder;

    invoke-direct {v2, v1}, Landroid/provider/DeviceConfig$Properties$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/provider/DeviceConfig$Properties$Builder;->build()Landroid/provider/DeviceConfig$Properties;

    move-result-object v3

    .line 1791
    .local v3, "properties":Landroid/provider/DeviceConfig$Properties;
    :goto_59
    sget-object v2, Landroid/provider/DeviceConfig;->sLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1792
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_5d
    :try_start_5d
    sget-object v5, Landroid/provider/DeviceConfig;->sListeners:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v4, v5, :cond_94

    .line 1793
    sget-object v5, Landroid/provider/DeviceConfig;->sListeners:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_91

    .line 1794
    sget-object v5, Landroid/provider/DeviceConfig;->sListeners:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    .line 1795
    .local v5, "listener":Landroid/provider/DeviceConfig$OnPropertiesChangedListener;
    sget-object v6, Landroid/provider/DeviceConfig;->sListeners:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/util/concurrent/Executor;

    new-instance v7, Landroid/provider/DeviceConfig$$ExternalSyntheticLambda0;

    invoke-direct {v7, v5, v3}, Landroid/provider/DeviceConfig$$ExternalSyntheticLambda0;-><init>(Landroid/provider/DeviceConfig$OnPropertiesChangedListener;Landroid/provider/DeviceConfig$Properties;)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1792
    .end local v5    # "listener":Landroid/provider/DeviceConfig$OnPropertiesChangedListener;
    :cond_91
    add-int/lit8 v4, v4, 0x1

    goto :goto_5d

    .line 1800
    .end local v4    # "i":I
    :cond_94
    monitor-exit v2

    .line 1801
    return-void

    .line 1800
    :catchall_96
    move-exception v4

    monitor-exit v2
    :try_end_98
    .catchall {:try_start_5d .. :try_end_98} :catchall_96

    throw v4
.end method

.method private static blacklist incrementNamespace(Ljava/lang/String;)V
    .registers 7
    .param p0, "namespace"    # Ljava/lang/String;

    .line 1720
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1721
    sget-object v0, Landroid/provider/DeviceConfig;->sNamespaces:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 1722
    .local v0, "namespaceCount":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/database/ContentObserver;Ljava/lang/Integer;>;"
    const/4 v1, 0x1

    if-eqz v0, :cond_2a

    .line 1723
    sget-object v2, Landroid/provider/DeviceConfig;->sNamespaces:Ljava/util/Map;

    new-instance v3, Landroid/util/Pair;

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/database/ContentObserver;

    iget-object v5, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v5, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v3, v4, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_43

    .line 1726
    :cond_2a
    new-instance v2, Landroid/provider/DeviceConfig$1;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/provider/DeviceConfig$1;-><init>(Landroid/os/Handler;)V

    .line 1734
    .local v2, "contentObserver":Landroid/database/ContentObserver;
    sget-object v3, Landroid/provider/DeviceConfig;->sDataStore:Landroid/provider/DeviceConfigDataStore;

    .line 1735
    invoke-interface {v3, p0, v1, v2}, Landroid/provider/DeviceConfigDataStore;->registerContentObserver(Ljava/lang/String;ZLandroid/database/ContentObserver;)V

    .line 1736
    sget-object v3, Landroid/provider/DeviceConfig;->sNamespaces:Ljava/util/Map;

    new-instance v4, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v4, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, p0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1738
    .end local v2    # "contentObserver":Landroid/database/ContentObserver;
    :goto_43
    return-void
.end method

.method static synthetic blacklist lambda$dump$0(Landroid/provider/DeviceConfig$OnPropertiesChangedListener;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)I
    .registers 4
    .param p0, "o1"    # Landroid/provider/DeviceConfig$OnPropertiesChangedListener;
    .param p1, "o2"    # Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    .line 1606
    invoke-interface {p0}, Landroid/provider/DeviceConfig$OnPropertiesChangedListener;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1607
    invoke-interface {p1}, Landroid/provider/DeviceConfig$OnPropertiesChangedListener;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 1606
    return v0
.end method

.method static synthetic blacklist lambda$handleChange$1(Landroid/provider/DeviceConfig$OnPropertiesChangedListener;Landroid/provider/DeviceConfig$Properties;)V
    .registers 2
    .param p0, "listener"    # Landroid/provider/DeviceConfig$OnPropertiesChangedListener;
    .param p1, "properties"    # Landroid/provider/DeviceConfig$Properties;

    .line 1796
    invoke-interface {p0, p1}, Landroid/provider/DeviceConfig$OnPropertiesChangedListener;->onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V

    .line 1797
    return-void
.end method

.method private static blacklist newDataStore()Landroid/provider/DeviceConfigDataStore;
    .registers 1

    .line 1085
    new-instance v0, Landroid/provider/SettingsConfigDataStore;

    invoke-direct {v0}, Landroid/provider/SettingsConfigDataStore;-><init>()V

    return-object v0
.end method

.method public static whitelist removeOnPropertiesChangedListener(Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V
    .registers 3
    .param p0, "onPropertiesChangedListener"    # Landroid/provider/DeviceConfig$OnPropertiesChangedListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1671
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1672
    sget-object v0, Landroid/provider/DeviceConfig;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1673
    :try_start_6
    sget-object v1, Landroid/provider/DeviceConfig;->sListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 1674
    sget-object v1, Landroid/provider/DeviceConfig;->sListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/DeviceConfig;->decrementNamespace(Ljava/lang/String;)V

    .line 1675
    sget-object v1, Landroid/provider/DeviceConfig;->sListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1677
    :cond_22
    monitor-exit v0

    .line 1678
    return-void

    .line 1677
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_6 .. :try_end_26} :catchall_24

    throw v1
.end method

.method public static whitelist resetToDefaults(ILjava/lang/String;)V
    .registers 3
    .param p0, "resetMode"    # I
    .param p1, "namespace"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1511
    sget-object v0, Landroid/provider/DeviceConfig;->sDataStore:Landroid/provider/DeviceConfigDataStore;

    invoke-interface {v0, p0, p1}, Landroid/provider/DeviceConfigDataStore;->resetToDefaults(ILjava/lang/String;)V

    .line 1512
    return-void
.end method

.method public static whitelist setLocalOverride(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p0, "namespace"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "device_config_overrides"

    invoke-static {v2, v0, p2, v1}, Landroid/provider/DeviceConfig;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static whitelist setMonitorCallback(Landroid/content/ContentResolver;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$MonitorCallback;)V
    .registers 4
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/provider/DeviceConfig$MonitorCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1695
    sget-object v0, Landroid/provider/DeviceConfig;->sDataStore:Landroid/provider/DeviceConfigDataStore;

    invoke-interface {v0, p0, p1, p2}, Landroid/provider/DeviceConfigDataStore;->setMonitorCallback(Landroid/content/ContentResolver;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$MonitorCallback;)V

    .line 1696
    return-void
.end method

.method public static whitelist setProperties(Landroid/provider/DeviceConfig$Properties;)Z
    .registers 2
    .param p0, "properties"    # Landroid/provider/DeviceConfig$Properties;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/DeviceConfig$BadConfigException;
        }
    .end annotation

    .line 1464
    sget-object v0, Landroid/provider/DeviceConfig;->sDataStore:Landroid/provider/DeviceConfigDataStore;

    invoke-interface {v0, p0}, Landroid/provider/DeviceConfigDataStore;->setProperties(Landroid/provider/DeviceConfig$Properties;)Z

    move-result v0

    return v0
.end method

.method public static whitelist setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 5
    .param p0, "namespace"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "makeDefault"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1443
    sget-object v0, Landroid/provider/DeviceConfig;->sDataStore:Landroid/provider/DeviceConfigDataStore;

    invoke-interface {v0, p0, p1, p2, p3}, Landroid/provider/DeviceConfigDataStore;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static whitelist setSyncDisabledMode(I)V
    .registers 2
    .param p0, "syncDisabledMode"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1529
    sget-object v0, Landroid/provider/DeviceConfig;->sDataStore:Landroid/provider/DeviceConfigDataStore;

    invoke-interface {v0, p0}, Landroid/provider/DeviceConfigDataStore;->setSyncDisabledMode(I)V

    .line 1530
    return-void
.end method
