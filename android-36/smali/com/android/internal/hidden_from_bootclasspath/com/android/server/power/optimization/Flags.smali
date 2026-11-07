.class public final Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/FeatureFlags; = null

.field public static final blacklist FLAG_ACCUMULATE_BATTERY_USAGE_STATS:Ljava/lang/String; = "com.android.server.power.optimization.accumulate_battery_usage_stats"

.field public static final blacklist FLAG_ADD_BATTERY_USAGE_STATS_SLICE_ATOM:Ljava/lang/String; = "com.android.server.power.optimization.add_battery_usage_stats_slice_atom"

.field public static final blacklist FLAG_BATTERY_STATS_SCREEN_STATE_EVENT:Ljava/lang/String; = "com.android.server.power.optimization.battery_stats_screen_state_event"

.field public static final blacklist FLAG_BATTERY_USAGE_STATS_BY_POWER_AND_SCREEN_STATE:Ljava/lang/String; = "com.android.server.power.optimization.battery_usage_stats_by_power_and_screen_state"

.field public static final blacklist FLAG_DISABLE_COMPOSITE_BATTERY_USAGE_STATS_ATOMS:Ljava/lang/String; = "com.android.server.power.optimization.disable_composite_battery_usage_stats_atoms"

.field public static final blacklist FLAG_DISABLE_SYSTEM_SERVICE_POWER_ATTR:Ljava/lang/String; = "com.android.server.power.optimization.disable_system_service_power_attr"

.field public static final blacklist FLAG_EXTENDED_BATTERY_HISTORY_COMPRESSION_ENABLED:Ljava/lang/String; = "com.android.server.power.optimization.extended_battery_history_compression_enabled"

.field public static final blacklist FLAG_EXTENDED_BATTERY_HISTORY_CONTINUOUS_COLLECTION_ENABLED:Ljava/lang/String; = "com.android.server.power.optimization.extended_battery_history_continuous_collection_enabled"

.field public static final blacklist FLAG_ONEWAY_BATTERY_STATS_SERVICE:Ljava/lang/String; = "com.android.server.power.optimization.oneway_battery_stats_service"

.field public static final blacklist FLAG_POWER_MONITOR_API:Ljava/lang/String; = "com.android.server.power.optimization.power_monitor_api"

.field public static final blacklist FLAG_STREAMLINED_BATTERY_STATS:Ljava/lang/String; = "com.android.server.power.optimization.streamlined_battery_stats"

.field public static final blacklist FLAG_STREAMLINED_CONNECTIVITY_BATTERY_STATS:Ljava/lang/String; = "com.android.server.power.optimization.streamlined_connectivity_battery_stats"

.field public static final blacklist FLAG_STREAMLINED_MISC_BATTERY_STATS:Ljava/lang/String; = "com.android.server.power.optimization.streamlined_misc_battery_stats"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 125
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist accumulateBatteryUsageStats()Z
    .registers 1

    .line 38
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/FeatureFlags;->accumulateBatteryUsageStats()Z

    move-result v0

    return v0
.end method

.method public static blacklist addBatteryUsageStatsSliceAtom()Z
    .registers 1

    .line 45
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/FeatureFlags;->addBatteryUsageStatsSliceAtom()Z

    move-result v0

    return v0
.end method

.method public static blacklist batteryStatsScreenStateEvent()Z
    .registers 1

    .line 52
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/FeatureFlags;->batteryStatsScreenStateEvent()Z

    move-result v0

    return v0
.end method

.method public static blacklist batteryUsageStatsByPowerAndScreenState()Z
    .registers 1

    .line 59
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/FeatureFlags;->batteryUsageStatsByPowerAndScreenState()Z

    move-result v0

    return v0
.end method

.method public static blacklist disableCompositeBatteryUsageStatsAtoms()Z
    .registers 1

    .line 66
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/FeatureFlags;->disableCompositeBatteryUsageStatsAtoms()Z

    move-result v0

    return v0
.end method

.method public static blacklist disableSystemServicePowerAttr()Z
    .registers 1

    .line 73
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/FeatureFlags;->disableSystemServicePowerAttr()Z

    move-result v0

    return v0
.end method

.method public static blacklist extendedBatteryHistoryCompressionEnabled()Z
    .registers 1

    .line 80
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/FeatureFlags;->extendedBatteryHistoryCompressionEnabled()Z

    move-result v0

    return v0
.end method

.method public static blacklist extendedBatteryHistoryContinuousCollectionEnabled()Z
    .registers 1

    .line 87
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/FeatureFlags;->extendedBatteryHistoryContinuousCollectionEnabled()Z

    move-result v0

    return v0
.end method

.method public static blacklist onewayBatteryStatsService()Z
    .registers 1

    .line 94
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/FeatureFlags;->onewayBatteryStatsService()Z

    move-result v0

    return v0
.end method

.method public static blacklist powerMonitorApi()Z
    .registers 1

    .line 101
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/FeatureFlags;->powerMonitorApi()Z

    move-result v0

    return v0
.end method

.method public static blacklist streamlinedBatteryStats()Z
    .registers 1

    .line 108
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/FeatureFlags;->streamlinedBatteryStats()Z

    move-result v0

    return v0
.end method

.method public static blacklist streamlinedConnectivityBatteryStats()Z
    .registers 1

    .line 115
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/FeatureFlags;->streamlinedConnectivityBatteryStats()Z

    move-result v0

    return v0
.end method

.method public static blacklist streamlinedMiscBatteryStats()Z
    .registers 1

    .line 122
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/FeatureFlags;->streamlinedMiscBatteryStats()Z

    move-result v0

    return v0
.end method
