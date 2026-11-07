.class public final Landroid/net/connectivity/com/android/net/flags/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Landroid/net/connectivity/com/android/net/flags/FeatureFlags;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist basicBackgroundRestrictionsEnabled()Z
    .registers 2

    .line 10
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist blockedReasonNetworkRestricted()Z
    .registers 2

    .line 17
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist blockedReasonOemDenyChains()Z
    .registers 2

    .line 24
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist ipsecTransformState()Z
    .registers 2

    .line 31
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist ipv6OverBle()Z
    .registers 2

    .line 38
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist meteredNetworkFirewallChains()Z
    .registers 2

    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist netCapabilityLocalNetwork()Z
    .registers 2

    .line 52
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist netCapabilityNotBandwidthConstrained()Z
    .registers 2

    .line 59
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist netstatsAddEntries()Z
    .registers 2

    .line 66
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist nsdSubtypesSupportEnabled()Z
    .registers 2

    .line 73
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist registerNsdOffloadEngineApi()Z
    .registers 2

    .line 80
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist requestRestrictedWifi()Z
    .registers 2

    .line 87
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist restrictLocalNetwork()Z
    .registers 2

    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setDataSaverViaCm()Z
    .registers 2

    .line 101
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist supportIsUidNetworkingBlocked()Z
    .registers 2

    .line 108
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist supportTransportSatellite()Z
    .registers 2

    .line 115
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist tetheringActiveSessionsMetrics()Z
    .registers 2

    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist tetheringRequestVirtual()Z
    .registers 2

    .line 129
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist tetheringWithSoftApConfig()Z
    .registers 2

    .line 136
    const/4 v0, 0x1

    return v0
.end method
