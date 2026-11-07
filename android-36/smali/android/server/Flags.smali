.class public final Landroid/server/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Landroid/server/FeatureFlags; = null

.field public static final blacklist FLAG_ALLOW_NETWORK_TIME_UPDATE_SERVICE:Ljava/lang/String; = "android.server.allow_network_time_update_service"

.field public static final blacklist FLAG_ALLOW_REMOVING_VPN_SERVICE:Ljava/lang/String; = "android.server.allow_removing_vpn_service"

.field public static final blacklist FLAG_EARLY_SYSTEM_CONFIG_INIT:Ljava/lang/String; = "android.server.early_system_config_init"

.field public static final blacklist FLAG_ENABLE_THEME_SERVICE:Ljava/lang/String; = "android.server.enable_theme_service"

.field public static final blacklist FLAG_MIGRATE_WRIST_ORIENTATION:Ljava/lang/String; = "android.server.migrate_wrist_orientation"

.field public static final blacklist FLAG_REMOVE_APP_INTEGRITY_MANAGER_SERVICE:Ljava/lang/String; = "android.server.remove_app_integrity_manager_service"

.field public static final blacklist FLAG_REMOVE_GAME_MANAGER_SERVICE_FROM_WEAR:Ljava/lang/String; = "android.server.remove_game_manager_service_from_wear"

.field public static final blacklist FLAG_REMOVE_TEXT_SERVICE:Ljava/lang/String; = "android.server.remove_text_service"

.field public static final blacklist FLAG_REMOVE_WEARABLE_SENSING_SERVICE_FROM_WEAR:Ljava/lang/String; = "android.server.remove_wearable_sensing_service_from_wear"

.field public static final blacklist FLAG_TELEMETRY_APIS_SERVICE:Ljava/lang/String; = "android.server.telemetry_apis_service"

.field public static final blacklist FLAG_WEAR_GESTURE_API:Ljava/lang/String; = "android.server.wear_gesture_api"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 107
    new-instance v0, Landroid/server/FeatureFlagsImpl;

    invoke-direct {v0}, Landroid/server/FeatureFlagsImpl;-><init>()V

    sput-object v0, Landroid/server/Flags;->FEATURE_FLAGS:Landroid/server/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist allowNetworkTimeUpdateService()Z
    .registers 1

    .line 34
    sget-object v0, Landroid/server/Flags;->FEATURE_FLAGS:Landroid/server/FeatureFlags;

    invoke-interface {v0}, Landroid/server/FeatureFlags;->allowNetworkTimeUpdateService()Z

    move-result v0

    return v0
.end method

.method public static greylist allowRemovingVpnService()Z
    .registers 1

    .line 41
    sget-object v0, Landroid/server/Flags;->FEATURE_FLAGS:Landroid/server/FeatureFlags;

    invoke-interface {v0}, Landroid/server/FeatureFlags;->allowRemovingVpnService()Z

    move-result v0

    return v0
.end method

.method public static greylist earlySystemConfigInit()Z
    .registers 1

    .line 48
    sget-object v0, Landroid/server/Flags;->FEATURE_FLAGS:Landroid/server/FeatureFlags;

    invoke-interface {v0}, Landroid/server/FeatureFlags;->earlySystemConfigInit()Z

    move-result v0

    return v0
.end method

.method public static greylist enableThemeService()Z
    .registers 1

    .line 55
    sget-object v0, Landroid/server/Flags;->FEATURE_FLAGS:Landroid/server/FeatureFlags;

    invoke-interface {v0}, Landroid/server/FeatureFlags;->enableThemeService()Z

    move-result v0

    return v0
.end method

.method public static greylist migrateWristOrientation()Z
    .registers 1

    .line 62
    sget-object v0, Landroid/server/Flags;->FEATURE_FLAGS:Landroid/server/FeatureFlags;

    invoke-interface {v0}, Landroid/server/FeatureFlags;->migrateWristOrientation()Z

    move-result v0

    return v0
.end method

.method public static greylist removeAppIntegrityManagerService()Z
    .registers 1

    .line 69
    sget-object v0, Landroid/server/Flags;->FEATURE_FLAGS:Landroid/server/FeatureFlags;

    invoke-interface {v0}, Landroid/server/FeatureFlags;->removeAppIntegrityManagerService()Z

    move-result v0

    return v0
.end method

.method public static greylist removeGameManagerServiceFromWear()Z
    .registers 1

    .line 76
    sget-object v0, Landroid/server/Flags;->FEATURE_FLAGS:Landroid/server/FeatureFlags;

    invoke-interface {v0}, Landroid/server/FeatureFlags;->removeGameManagerServiceFromWear()Z

    move-result v0

    return v0
.end method

.method public static greylist removeTextService()Z
    .registers 1

    .line 83
    sget-object v0, Landroid/server/Flags;->FEATURE_FLAGS:Landroid/server/FeatureFlags;

    invoke-interface {v0}, Landroid/server/FeatureFlags;->removeTextService()Z

    move-result v0

    return v0
.end method

.method public static greylist removeWearableSensingServiceFromWear()Z
    .registers 1

    .line 90
    sget-object v0, Landroid/server/Flags;->FEATURE_FLAGS:Landroid/server/FeatureFlags;

    invoke-interface {v0}, Landroid/server/FeatureFlags;->removeWearableSensingServiceFromWear()Z

    move-result v0

    return v0
.end method

.method public static greylist telemetryApisService()Z
    .registers 1

    .line 97
    sget-object v0, Landroid/server/Flags;->FEATURE_FLAGS:Landroid/server/FeatureFlags;

    invoke-interface {v0}, Landroid/server/FeatureFlags;->telemetryApisService()Z

    move-result v0

    return v0
.end method

.method public static greylist wearGestureApi()Z
    .registers 1

    .line 104
    sget-object v0, Landroid/server/Flags;->FEATURE_FLAGS:Landroid/server/FeatureFlags;

    invoke-interface {v0}, Landroid/server/FeatureFlags;->wearGestureApi()Z

    move-result v0

    return v0
.end method
