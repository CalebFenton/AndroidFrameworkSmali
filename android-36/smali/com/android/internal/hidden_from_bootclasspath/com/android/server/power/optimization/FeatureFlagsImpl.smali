.class public final Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/FeatureFlags;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist accumulateBatteryUsageStats()Z
    .registers 2

    .line 10
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist addBatteryUsageStatsSliceAtom()Z
    .registers 2

    .line 17
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist batteryStatsScreenStateEvent()Z
    .registers 2

    .line 24
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist batteryUsageStatsByPowerAndScreenState()Z
    .registers 2

    .line 31
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist disableCompositeBatteryUsageStatsAtoms()Z
    .registers 2

    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist disableSystemServicePowerAttr()Z
    .registers 2

    .line 45
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist extendedBatteryHistoryCompressionEnabled()Z
    .registers 2

    .line 52
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist extendedBatteryHistoryContinuousCollectionEnabled()Z
    .registers 2

    .line 59
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist onewayBatteryStatsService()Z
    .registers 2

    .line 66
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist powerMonitorApi()Z
    .registers 2

    .line 73
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist streamlinedBatteryStats()Z
    .registers 2

    .line 80
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist streamlinedConnectivityBatteryStats()Z
    .registers 2

    .line 87
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist streamlinedMiscBatteryStats()Z
    .registers 2

    .line 94
    const/4 v0, 0x1

    return v0
.end method
