.class public final Lcom/android/wifi/x/android/net/wifi/flags/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/wifi/x/android/net/wifi/flags/FeatureFlags; = null

.field public static final blacklist FLAG_GET_DEVICE_CROSS_AKM_ROAMING_SUPPORT:Ljava/lang/String; = "android.net.wifi.flags.get_device_cross_akm_roaming_support"

.field public static final blacklist FLAG_HOTSPOT_NETWORK_CONNECTING_STATE_FOR_DETAILS_PAGE:Ljava/lang/String; = "android.net.wifi.flags.hotspot_network_connecting_state_for_details_page"

.field public static final blacklist FLAG_HOTSPOT_NETWORK_UNKNOWN_STATUS_RESETS_CONNECTING_STATE:Ljava/lang/String; = "android.net.wifi.flags.hotspot_network_unknown_status_resets_connecting_state"

.field public static final blacklist FLAG_LEGACY_KEYSTORE_TO_WIFI_BLOBSTORE_MIGRATION_READ_ONLY:Ljava/lang/String; = "android.net.wifi.flags.legacy_keystore_to_wifi_blobstore_migration_read_only"

.field public static final blacklist FLAG_NETWORK_PROVIDER_BATTERY_CHARGING_STATUS:Ljava/lang/String; = "android.net.wifi.flags.network_provider_battery_charging_status"

.field public static final blacklist FLAG_USD:Ljava/lang/String; = "android.net.wifi.flags.usd"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 62
    new-instance v0, Lcom/android/wifi/x/android/net/wifi/flags/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/wifi/x/android/net/wifi/flags/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/wifi/x/android/net/wifi/flags/Flags;->FEATURE_FLAGS:Lcom/android/wifi/x/android/net/wifi/flags/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getDeviceCrossAkmRoamingSupport()Z
    .registers 1

    .line 24
    sget-object v0, Lcom/android/wifi/x/android/net/wifi/flags/Flags;->FEATURE_FLAGS:Lcom/android/wifi/x/android/net/wifi/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/wifi/x/android/net/wifi/flags/FeatureFlags;->getDeviceCrossAkmRoamingSupport()Z

    move-result v0

    return v0
.end method

.method public static blacklist hotspotNetworkConnectingStateForDetailsPage()Z
    .registers 1

    .line 31
    sget-object v0, Lcom/android/wifi/x/android/net/wifi/flags/Flags;->FEATURE_FLAGS:Lcom/android/wifi/x/android/net/wifi/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/wifi/x/android/net/wifi/flags/FeatureFlags;->hotspotNetworkConnectingStateForDetailsPage()Z

    move-result v0

    return v0
.end method

.method public static blacklist hotspotNetworkUnknownStatusResetsConnectingState()Z
    .registers 1

    .line 38
    sget-object v0, Lcom/android/wifi/x/android/net/wifi/flags/Flags;->FEATURE_FLAGS:Lcom/android/wifi/x/android/net/wifi/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/wifi/x/android/net/wifi/flags/FeatureFlags;->hotspotNetworkUnknownStatusResetsConnectingState()Z

    move-result v0

    return v0
.end method

.method public static blacklist legacyKeystoreToWifiBlobstoreMigrationReadOnly()Z
    .registers 1

    .line 45
    sget-object v0, Lcom/android/wifi/x/android/net/wifi/flags/Flags;->FEATURE_FLAGS:Lcom/android/wifi/x/android/net/wifi/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/wifi/x/android/net/wifi/flags/FeatureFlags;->legacyKeystoreToWifiBlobstoreMigrationReadOnly()Z

    move-result v0

    return v0
.end method

.method public static blacklist networkProviderBatteryChargingStatus()Z
    .registers 1

    .line 52
    sget-object v0, Lcom/android/wifi/x/android/net/wifi/flags/Flags;->FEATURE_FLAGS:Lcom/android/wifi/x/android/net/wifi/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/wifi/x/android/net/wifi/flags/FeatureFlags;->networkProviderBatteryChargingStatus()Z

    move-result v0

    return v0
.end method

.method public static blacklist usd()Z
    .registers 1

    .line 59
    sget-object v0, Lcom/android/wifi/x/android/net/wifi/flags/Flags;->FEATURE_FLAGS:Lcom/android/wifi/x/android/net/wifi/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/wifi/x/android/net/wifi/flags/FeatureFlags;->usd()Z

    move-result v0

    return v0
.end method
