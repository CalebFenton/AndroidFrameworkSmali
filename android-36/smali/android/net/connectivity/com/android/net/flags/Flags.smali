.class public final Landroid/net/connectivity/com/android/net/flags/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Landroid/net/connectivity/com/android/net/flags/FeatureFlags; = null

.field public static final blacklist FLAG_BASIC_BACKGROUND_RESTRICTIONS_ENABLED:Ljava/lang/String; = "com.android.net.flags.basic_background_restrictions_enabled"

.field public static final blacklist FLAG_BLOCKED_REASON_NETWORK_RESTRICTED:Ljava/lang/String; = "com.android.net.flags.blocked_reason_network_restricted"

.field public static final blacklist FLAG_BLOCKED_REASON_OEM_DENY_CHAINS:Ljava/lang/String; = "com.android.net.flags.blocked_reason_oem_deny_chains"

.field public static final blacklist FLAG_IPSEC_TRANSFORM_STATE:Ljava/lang/String; = "com.android.net.flags.ipsec_transform_state"

.field public static final blacklist FLAG_IPV6_OVER_BLE:Ljava/lang/String; = "com.android.net.flags.ipv6_over_ble"

.field public static final blacklist FLAG_METERED_NETWORK_FIREWALL_CHAINS:Ljava/lang/String; = "com.android.net.flags.metered_network_firewall_chains"

.field public static final blacklist FLAG_NETSTATS_ADD_ENTRIES:Ljava/lang/String; = "com.android.net.flags.netstats_add_entries"

.field public static final blacklist FLAG_NET_CAPABILITY_LOCAL_NETWORK:Ljava/lang/String; = "com.android.net.flags.net_capability_local_network"

.field public static final blacklist FLAG_NET_CAPABILITY_NOT_BANDWIDTH_CONSTRAINED:Ljava/lang/String; = "com.android.net.flags.net_capability_not_bandwidth_constrained"

.field public static final blacklist FLAG_NSD_SUBTYPES_SUPPORT_ENABLED:Ljava/lang/String; = "com.android.net.flags.nsd_subtypes_support_enabled"

.field public static final blacklist FLAG_REGISTER_NSD_OFFLOAD_ENGINE_API:Ljava/lang/String; = "com.android.net.flags.register_nsd_offload_engine_api"

.field public static final blacklist FLAG_REQUEST_RESTRICTED_WIFI:Ljava/lang/String; = "com.android.net.flags.request_restricted_wifi"

.field public static final blacklist FLAG_RESTRICT_LOCAL_NETWORK:Ljava/lang/String; = "com.android.net.flags.restrict_local_network"

.field public static final blacklist FLAG_SET_DATA_SAVER_VIA_CM:Ljava/lang/String; = "com.android.net.flags.set_data_saver_via_cm"

.field public static final blacklist FLAG_SUPPORT_IS_UID_NETWORKING_BLOCKED:Ljava/lang/String; = "com.android.net.flags.support_is_uid_networking_blocked"

.field public static final blacklist FLAG_SUPPORT_TRANSPORT_SATELLITE:Ljava/lang/String; = "com.android.net.flags.support_transport_satellite"

.field public static final blacklist FLAG_TETHERING_ACTIVE_SESSIONS_METRICS:Ljava/lang/String; = "com.android.net.flags.tethering_active_sessions_metrics"

.field public static final blacklist FLAG_TETHERING_REQUEST_VIRTUAL:Ljava/lang/String; = "com.android.net.flags.tethering_request_virtual"

.field public static final blacklist FLAG_TETHERING_WITH_SOFT_AP_CONFIG:Ljava/lang/String; = "com.android.net.flags.tethering_with_soft_ap_config"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 179
    new-instance v0, Landroid/net/connectivity/com/android/net/flags/FeatureFlagsImpl;

    invoke-direct {v0}, Landroid/net/connectivity/com/android/net/flags/FeatureFlagsImpl;-><init>()V

    sput-object v0, Landroid/net/connectivity/com/android/net/flags/Flags;->FEATURE_FLAGS:Landroid/net/connectivity/com/android/net/flags/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist basicBackgroundRestrictionsEnabled()Z
    .registers 1

    .line 50
    sget-object v0, Landroid/net/connectivity/com/android/net/flags/Flags;->FEATURE_FLAGS:Landroid/net/connectivity/com/android/net/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/net/connectivity/com/android/net/flags/FeatureFlags;->basicBackgroundRestrictionsEnabled()Z

    move-result v0

    return v0
.end method

.method public static blacklist blockedReasonNetworkRestricted()Z
    .registers 1

    .line 57
    sget-object v0, Landroid/net/connectivity/com/android/net/flags/Flags;->FEATURE_FLAGS:Landroid/net/connectivity/com/android/net/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/net/connectivity/com/android/net/flags/FeatureFlags;->blockedReasonNetworkRestricted()Z

    move-result v0

    return v0
.end method

.method public static blacklist blockedReasonOemDenyChains()Z
    .registers 1

    .line 64
    sget-object v0, Landroid/net/connectivity/com/android/net/flags/Flags;->FEATURE_FLAGS:Landroid/net/connectivity/com/android/net/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/net/connectivity/com/android/net/flags/FeatureFlags;->blockedReasonOemDenyChains()Z

    move-result v0

    return v0
.end method

.method public static blacklist ipsecTransformState()Z
    .registers 1

    .line 71
    sget-object v0, Landroid/net/connectivity/com/android/net/flags/Flags;->FEATURE_FLAGS:Landroid/net/connectivity/com/android/net/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/net/connectivity/com/android/net/flags/FeatureFlags;->ipsecTransformState()Z

    move-result v0

    return v0
.end method

.method public static blacklist ipv6OverBle()Z
    .registers 1

    .line 78
    sget-object v0, Landroid/net/connectivity/com/android/net/flags/Flags;->FEATURE_FLAGS:Landroid/net/connectivity/com/android/net/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/net/connectivity/com/android/net/flags/FeatureFlags;->ipv6OverBle()Z

    move-result v0

    return v0
.end method

.method public static blacklist meteredNetworkFirewallChains()Z
    .registers 1

    .line 85
    sget-object v0, Landroid/net/connectivity/com/android/net/flags/Flags;->FEATURE_FLAGS:Landroid/net/connectivity/com/android/net/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/net/connectivity/com/android/net/flags/FeatureFlags;->meteredNetworkFirewallChains()Z

    move-result v0

    return v0
.end method

.method public static blacklist netCapabilityLocalNetwork()Z
    .registers 1

    .line 92
    sget-object v0, Landroid/net/connectivity/com/android/net/flags/Flags;->FEATURE_FLAGS:Landroid/net/connectivity/com/android/net/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/net/connectivity/com/android/net/flags/FeatureFlags;->netCapabilityLocalNetwork()Z

    move-result v0

    return v0
.end method

.method public static blacklist netCapabilityNotBandwidthConstrained()Z
    .registers 1

    .line 99
    sget-object v0, Landroid/net/connectivity/com/android/net/flags/Flags;->FEATURE_FLAGS:Landroid/net/connectivity/com/android/net/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/net/connectivity/com/android/net/flags/FeatureFlags;->netCapabilityNotBandwidthConstrained()Z

    move-result v0

    return v0
.end method

.method public static blacklist netstatsAddEntries()Z
    .registers 1

    .line 106
    sget-object v0, Landroid/net/connectivity/com/android/net/flags/Flags;->FEATURE_FLAGS:Landroid/net/connectivity/com/android/net/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/net/connectivity/com/android/net/flags/FeatureFlags;->netstatsAddEntries()Z

    move-result v0

    return v0
.end method

.method public static blacklist nsdSubtypesSupportEnabled()Z
    .registers 1

    .line 113
    sget-object v0, Landroid/net/connectivity/com/android/net/flags/Flags;->FEATURE_FLAGS:Landroid/net/connectivity/com/android/net/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/net/connectivity/com/android/net/flags/FeatureFlags;->nsdSubtypesSupportEnabled()Z

    move-result v0

    return v0
.end method

.method public static blacklist registerNsdOffloadEngineApi()Z
    .registers 1

    .line 120
    sget-object v0, Landroid/net/connectivity/com/android/net/flags/Flags;->FEATURE_FLAGS:Landroid/net/connectivity/com/android/net/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/net/connectivity/com/android/net/flags/FeatureFlags;->registerNsdOffloadEngineApi()Z

    move-result v0

    return v0
.end method

.method public static blacklist requestRestrictedWifi()Z
    .registers 1

    .line 127
    sget-object v0, Landroid/net/connectivity/com/android/net/flags/Flags;->FEATURE_FLAGS:Landroid/net/connectivity/com/android/net/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/net/connectivity/com/android/net/flags/FeatureFlags;->requestRestrictedWifi()Z

    move-result v0

    return v0
.end method

.method public static blacklist restrictLocalNetwork()Z
    .registers 1

    .line 134
    sget-object v0, Landroid/net/connectivity/com/android/net/flags/Flags;->FEATURE_FLAGS:Landroid/net/connectivity/com/android/net/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/net/connectivity/com/android/net/flags/FeatureFlags;->restrictLocalNetwork()Z

    move-result v0

    return v0
.end method

.method public static blacklist setDataSaverViaCm()Z
    .registers 1

    .line 141
    sget-object v0, Landroid/net/connectivity/com/android/net/flags/Flags;->FEATURE_FLAGS:Landroid/net/connectivity/com/android/net/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/net/connectivity/com/android/net/flags/FeatureFlags;->setDataSaverViaCm()Z

    move-result v0

    return v0
.end method

.method public static blacklist supportIsUidNetworkingBlocked()Z
    .registers 1

    .line 148
    sget-object v0, Landroid/net/connectivity/com/android/net/flags/Flags;->FEATURE_FLAGS:Landroid/net/connectivity/com/android/net/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/net/connectivity/com/android/net/flags/FeatureFlags;->supportIsUidNetworkingBlocked()Z

    move-result v0

    return v0
.end method

.method public static blacklist supportTransportSatellite()Z
    .registers 1

    .line 155
    sget-object v0, Landroid/net/connectivity/com/android/net/flags/Flags;->FEATURE_FLAGS:Landroid/net/connectivity/com/android/net/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/net/connectivity/com/android/net/flags/FeatureFlags;->supportTransportSatellite()Z

    move-result v0

    return v0
.end method

.method public static blacklist tetheringActiveSessionsMetrics()Z
    .registers 1

    .line 162
    sget-object v0, Landroid/net/connectivity/com/android/net/flags/Flags;->FEATURE_FLAGS:Landroid/net/connectivity/com/android/net/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/net/connectivity/com/android/net/flags/FeatureFlags;->tetheringActiveSessionsMetrics()Z

    move-result v0

    return v0
.end method

.method public static blacklist tetheringRequestVirtual()Z
    .registers 1

    .line 169
    sget-object v0, Landroid/net/connectivity/com/android/net/flags/Flags;->FEATURE_FLAGS:Landroid/net/connectivity/com/android/net/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/net/connectivity/com/android/net/flags/FeatureFlags;->tetheringRequestVirtual()Z

    move-result v0

    return v0
.end method

.method public static blacklist tetheringWithSoftApConfig()Z
    .registers 1

    .line 176
    sget-object v0, Landroid/net/connectivity/com/android/net/flags/Flags;->FEATURE_FLAGS:Landroid/net/connectivity/com/android/net/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/net/connectivity/com/android/net/flags/FeatureFlags;->tetheringWithSoftApConfig()Z

    move-result v0

    return v0
.end method
