.class public Landroid/net/http/internal/com/android/net/flags/CustomFeatureFlags;
.super Ljava/lang/Object;
.source "CustomFeatureFlags.java"

# interfaces
.implements Landroid/net/http/internal/com/android/net/flags/FeatureFlags;


# instance fields
.field private blacklist mGetValueImpl:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Landroid/net/http/internal/com/android/net/flags/FeatureFlags;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mReadOnlyFlagsSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/util/function/BiPredicate;)V
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Landroid/net/http/internal/com/android/net/flags/FeatureFlags;",
            ">;>;)V"
        }
    .end annotation

    .line 16
    .local p1, "getValueImpl":Ljava/util/function/BiPredicate;, "Ljava/util/function/BiPredicate<Ljava/lang/String;Ljava/util/function/Predicate<Landroid/net/http/internal/com/android/net/flags/FeatureFlags;>;>;"
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 193
    new-instance v1, Ljava/util/HashSet;

    const-string v20, "com.android.net.flags.tethering_with_soft_ap_config"

    const-string v21, ""

    const-string v2, "com.android.net.flags.basic_background_restrictions_enabled"

    const-string v3, "com.android.net.flags.blocked_reason_network_restricted"

    const-string v4, "com.android.net.flags.blocked_reason_oem_deny_chains"

    const-string v5, "com.android.net.flags.ipsec_transform_state"

    const-string v6, "com.android.net.flags.ipv6_over_ble"

    const-string v7, "com.android.net.flags.metered_network_firewall_chains"

    const-string v8, "com.android.net.flags.net_capability_local_network"

    const-string v9, "com.android.net.flags.net_capability_not_bandwidth_constrained"

    const-string v10, "com.android.net.flags.netstats_add_entries"

    const-string v11, "com.android.net.flags.nsd_subtypes_support_enabled"

    const-string v12, "com.android.net.flags.register_nsd_offload_engine_api"

    const-string v13, "com.android.net.flags.request_restricted_wifi"

    const-string v14, "com.android.net.flags.restrict_local_network"

    const-string v15, "com.android.net.flags.set_data_saver_via_cm"

    const-string v16, "com.android.net.flags.support_is_uid_networking_blocked"

    const-string v17, "com.android.net.flags.support_transport_satellite"

    const-string v18, "com.android.net.flags.tethering_active_sessions_metrics"

    const-string v19, "com.android.net.flags.tethering_request_virtual"

    filled-new-array/range {v2 .. v21}, [Ljava/lang/String;

    move-result-object v2

    .line 194
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Landroid/net/http/internal/com/android/net/flags/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    .line 17
    move-object/from16 v1, p1

    iput-object v1, v0, Landroid/net/http/internal/com/android/net/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    .line 18
    return-void
.end method

.method private blacklist isOptimizationEnabled()Z
    .registers 2

    .line 162
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public blacklist basicBackgroundRestrictionsEnabled()Z
    .registers 3

    .line 22
    new-instance v0, Landroid/net/http/internal/com/android/net/flags/CustomFeatureFlags$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Landroid/net/http/internal/com/android/net/flags/CustomFeatureFlags$$ExternalSyntheticLambda11;-><init>()V

    const-string v1, "com.android.net.flags.basic_background_restrictions_enabled"

    invoke-virtual {p0, v1, v0}, Landroid/net/http/internal/com/android/net/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist blockedReasonNetworkRestricted()Z
    .registers 3

    .line 29
    new-instance v0, Landroid/net/http/internal/com/android/net/flags/CustomFeatureFlags$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Landroid/net/http/internal/com/android/net/flags/CustomFeatureFlags$$ExternalSyntheticLambda10;-><init>()V

    const-string v1, "com.android.net.flags.blocked_reason_network_restricted"

    invoke-virtual {p0, v1, v0}, Landroid/net/http/internal/com/android/net/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist blockedReasonOemDenyChains()Z
    .registers 3

    .line 36
    new-instance v0, Landroid/net/http/internal/com/android/net/flags/CustomFeatureFlags$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Landroid/net/http/internal/com/android/net/flags/CustomFeatureFlags$$ExternalSyntheticLambda2;-><init>()V

    const-string v1, "com.android.net.flags.blocked_reason_oem_deny_chains"

    invoke-virtual {p0, v1, v0}, Landroid/net/http/internal/com/android/net/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist getFlagNames()Ljava/util/List;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 170
    const-string v18, "com.android.net.flags.tethering_request_virtual"

    const-string v19, "com.android.net.flags.tethering_with_soft_ap_config"

    const-string v1, "com.android.net.flags.basic_background_restrictions_enabled"

    const-string v2, "com.android.net.flags.blocked_reason_network_restricted"

    const-string v3, "com.android.net.flags.blocked_reason_oem_deny_chains"

    const-string v4, "com.android.net.flags.ipsec_transform_state"

    const-string v5, "com.android.net.flags.ipv6_over_ble"

    const-string v6, "com.android.net.flags.metered_network_firewall_chains"

    const-string v7, "com.android.net.flags.net_capability_local_network"

    const-string v8, "com.android.net.flags.net_capability_not_bandwidth_constrained"

    const-string v9, "com.android.net.flags.netstats_add_entries"

    const-string v10, "com.android.net.flags.nsd_subtypes_support_enabled"

    const-string v11, "com.android.net.flags.register_nsd_offload_engine_api"

    const-string v12, "com.android.net.flags.request_restricted_wifi"

    const-string v13, "com.android.net.flags.restrict_local_network"

    const-string v14, "com.android.net.flags.set_data_saver_via_cm"

    const-string v15, "com.android.net.flags.support_is_uid_networking_blocked"

    const-string v16, "com.android.net.flags.support_transport_satellite"

    const-string v17, "com.android.net.flags.tethering_active_sessions_metrics"

    filled-new-array/range {v1 .. v19}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z
    .registers 4
    .param p1, "flagName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Landroid/net/http/internal/com/android/net/flags/FeatureFlags;",
            ">;)Z"
        }
    .end annotation

    .line 166
    .local p2, "getter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Landroid/net/http/internal/com/android/net/flags/FeatureFlags;>;"
    iget-object v0, p0, Landroid/net/http/internal/com/android/net/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist ipsecTransformState()Z
    .registers 3

    .line 43
    new-instance v0, Landroid/net/http/internal/com/android/net/flags/CustomFeatureFlags$$ExternalSyntheticLambda14;

    invoke-direct {v0}, Landroid/net/http/internal/com/android/net/flags/CustomFeatureFlags$$ExternalSyntheticLambda14;-><init>()V

    const-string v1, "com.android.net.flags.ipsec_transform_state"

    invoke-virtual {p0, v1, v0}, Landroid/net/http/internal/com/android/net/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist ipv6OverBle()Z
    .registers 3

    .line 50
    new-instance v0, Landroid/net/http/internal/com/android/net/flags/CustomFeatureFlags$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Landroid/net/http/internal/com/android/net/flags/CustomFeatureFlags$$ExternalSyntheticLambda5;-><init>()V

    const-string v1, "com.android.net.flags.ipv6_over_ble"

    invoke-virtual {p0, v1, v0}, Landroid/net/http/internal/com/android/net/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist isFlagReadOnlyOptimized(Ljava/lang/String;)Z
    .registers 3
    .param p1, "flagName"    # Ljava/lang/String;

    .line 153
    iget-object v0, p0, Landroid/net/http/internal/com/android/net/flags/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 154
    invoke-direct {p0}, Landroid/net/http/internal/com/android/net/flags/CustomFeatureFlags;->isOptimizationEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 155
    const/4 v0, 0x1

    return v0

    .line 157
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist meteredNetworkFirewallChains()Z
    .registers 3

    .line 57
    new-instance v0, Landroid/net/http/internal/com/android/net/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/net/http/internal/com/android/net/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.net.flags.metered_network_firewall_chains"

    invoke-virtual {p0, v1, v0}, Landroid/net/http/internal/com/android/net/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist netCapabilityLocalNetwork()Z
    .registers 3

    .line 64
    new-instance v0, Landroid/net/http/internal/com/android/net/flags/CustomFeatureFlags$$ExternalSyntheticLambda18;

    invoke-direct {v0}, Landroid/net/http/internal/com/android/net/flags/CustomFeatureFlags$$ExternalSyntheticLambda18;-><init>()V

    const-string v1, "com.android.net.flags.net_capability_local_network"

    invoke-virtual {p0, v1, v0}, Landroid/net/http/internal/com/android/net/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist netCapabilityNotBandwidthConstrained()Z
    .registers 3

    .line 71
    new-instance v0, Landroid/net/http/internal/com/android/net/flags/CustomFeatureFlags$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Landroid/net/http/internal/com/android/net/flags/CustomFeatureFlags$$ExternalSyntheticLambda8;-><init>()V

    const-string v1, "com.android.net.flags.net_capability_not_bandwidth_constrained"

    invoke-virtual {p0, v1, v0}, Landroid/net/http/internal/com/android/net/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist netstatsAddEntries()Z
    .registers 3

    .line 78
    new-instance v0, Landroid/net/http/internal/com/android/net/flags/CustomFeatureFlags$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Landroid/net/http/internal/com/android/net/flags/CustomFeatureFlags$$ExternalSyntheticLambda6;-><init>()V

    const-string v1, "com.android.net.flags.netstats_add_entries"

    invoke-virtual {p0, v1, v0}, Landroid/net/http/internal/com/android/net/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist nsdSubtypesSupportEnabled()Z
    .registers 3

    .line 85
    new-instance v0, Landroid/net/http/internal/com/android/net/flags/CustomFeatureFlags$$ExternalSyntheticLambda17;

    invoke-direct {v0}, Landroid/net/http/internal/com/android/net/flags/CustomFeatureFlags$$ExternalSyntheticLambda17;-><init>()V

    const-string v1, "com.android.net.flags.nsd_subtypes_support_enabled"

    invoke-virtual {p0, v1, v0}, Landroid/net/http/internal/com/android/net/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist registerNsdOffloadEngineApi()Z
    .registers 3

    .line 92
    new-instance v0, Landroid/net/http/internal/com/android/net/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/net/http/internal/com/android/net/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.net.flags.register_nsd_offload_engine_api"

    invoke-virtual {p0, v1, v0}, Landroid/net/http/internal/com/android/net/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist requestRestrictedWifi()Z
    .registers 3

    .line 99
    new-instance v0, Landroid/net/http/internal/com/android/net/flags/CustomFeatureFlags$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Landroid/net/http/internal/com/android/net/flags/CustomFeatureFlags$$ExternalSyntheticLambda7;-><init>()V

    const-string v1, "com.android.net.flags.request_restricted_wifi"

    invoke-virtual {p0, v1, v0}, Landroid/net/http/internal/com/android/net/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist restrictLocalNetwork()Z
    .registers 3

    .line 106
    new-instance v0, Landroid/net/http/internal/com/android/net/flags/CustomFeatureFlags$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Landroid/net/http/internal/com/android/net/flags/CustomFeatureFlags$$ExternalSyntheticLambda13;-><init>()V

    const-string v1, "com.android.net.flags.restrict_local_network"

    invoke-virtual {p0, v1, v0}, Landroid/net/http/internal/com/android/net/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist setDataSaverViaCm()Z
    .registers 3

    .line 113
    new-instance v0, Landroid/net/http/internal/com/android/net/flags/CustomFeatureFlags$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Landroid/net/http/internal/com/android/net/flags/CustomFeatureFlags$$ExternalSyntheticLambda9;-><init>()V

    const-string v1, "com.android.net.flags.set_data_saver_via_cm"

    invoke-virtual {p0, v1, v0}, Landroid/net/http/internal/com/android/net/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist supportIsUidNetworkingBlocked()Z
    .registers 3

    .line 120
    new-instance v0, Landroid/net/http/internal/com/android/net/flags/CustomFeatureFlags$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Landroid/net/http/internal/com/android/net/flags/CustomFeatureFlags$$ExternalSyntheticLambda4;-><init>()V

    const-string v1, "com.android.net.flags.support_is_uid_networking_blocked"

    invoke-virtual {p0, v1, v0}, Landroid/net/http/internal/com/android/net/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist supportTransportSatellite()Z
    .registers 3

    .line 127
    new-instance v0, Landroid/net/http/internal/com/android/net/flags/CustomFeatureFlags$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Landroid/net/http/internal/com/android/net/flags/CustomFeatureFlags$$ExternalSyntheticLambda3;-><init>()V

    const-string v1, "com.android.net.flags.support_transport_satellite"

    invoke-virtual {p0, v1, v0}, Landroid/net/http/internal/com/android/net/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist tetheringActiveSessionsMetrics()Z
    .registers 3

    .line 134
    new-instance v0, Landroid/net/http/internal/com/android/net/flags/CustomFeatureFlags$$ExternalSyntheticLambda15;

    invoke-direct {v0}, Landroid/net/http/internal/com/android/net/flags/CustomFeatureFlags$$ExternalSyntheticLambda15;-><init>()V

    const-string v1, "com.android.net.flags.tethering_active_sessions_metrics"

    invoke-virtual {p0, v1, v0}, Landroid/net/http/internal/com/android/net/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist tetheringRequestVirtual()Z
    .registers 3

    .line 141
    new-instance v0, Landroid/net/http/internal/com/android/net/flags/CustomFeatureFlags$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Landroid/net/http/internal/com/android/net/flags/CustomFeatureFlags$$ExternalSyntheticLambda12;-><init>()V

    const-string v1, "com.android.net.flags.tethering_request_virtual"

    invoke-virtual {p0, v1, v0}, Landroid/net/http/internal/com/android/net/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist tetheringWithSoftApConfig()Z
    .registers 3

    .line 148
    new-instance v0, Landroid/net/http/internal/com/android/net/flags/CustomFeatureFlags$$ExternalSyntheticLambda16;

    invoke-direct {v0}, Landroid/net/http/internal/com/android/net/flags/CustomFeatureFlags$$ExternalSyntheticLambda16;-><init>()V

    const-string v1, "com.android.net.flags.tethering_with_soft_ap_config"

    invoke-virtual {p0, v1, v0}, Landroid/net/http/internal/com/android/net/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method
