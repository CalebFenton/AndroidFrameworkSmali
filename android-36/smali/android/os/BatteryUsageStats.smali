.class public final Landroid/os/BatteryUsageStats;
.super Ljava/lang/Object;
.source "BatteryUsageStats.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/BatteryUsageStats$Builder;,
        Landroid/os/BatteryUsageStats$AggregateBatteryConsumerScope;
    }
.end annotation


# static fields
.field public static final blacklist AGGREGATE_BATTERY_CONSUMER_SCOPE_ALL_APPS:I = 0x1

.field public static final blacklist AGGREGATE_BATTERY_CONSUMER_SCOPE_COUNT:I = 0x2

.field public static final blacklist AGGREGATE_BATTERY_CONSUMER_SCOPE_DEVICE:I = 0x0

.field private static final blacklist BATTERY_CONSUMER_CURSOR_WINDOW_SIZE:J = 0x1312d00L

.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/BatteryUsageStats;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist STATSD_PULL_ATOM_MAX_BYTES:I = 0xafc8

.field private static final blacklist UID_USAGE_TIME_PROCESS_STATES:[I

.field private static final blacklist WEIGHT_BACKGROUND_STATE:D = 8.333333333333333E-5

.field private static final blacklist WEIGHT_CONSUMED_POWER:D = 1.0

.field private static final blacklist WEIGHT_FOREGROUND_STATE:D = 2.777777777777778E-5

.field static final blacklist XML_ATTR_BATTERY_CAPACITY:Ljava/lang/String; = "battery_capacity"

.field static final blacklist XML_ATTR_BATTERY_REMAINING:Ljava/lang/String; = "battery_remaining"

.field static final blacklist XML_ATTR_CHARGE_REMAINING:Ljava/lang/String; = "charge_remaining"

.field static final blacklist XML_ATTR_DISCHARGE_DURATION:Ljava/lang/String; = "discharge_duration"

.field static final blacklist XML_ATTR_DISCHARGE_LOWER:Ljava/lang/String; = "discharge_lower"

.field static final blacklist XML_ATTR_DISCHARGE_PERCENT:Ljava/lang/String; = "discharge_pct"

.field static final blacklist XML_ATTR_DISCHARGE_UPPER:Ljava/lang/String; = "discharge_upper"

.field static final blacklist XML_ATTR_DURATION:Ljava/lang/String; = "duration"

.field static final blacklist XML_ATTR_END_TIMESTAMP:Ljava/lang/String; = "end_timestamp"

.field static final blacklist XML_ATTR_HIGHEST_DRAIN_PACKAGE:Ljava/lang/String; = "highest_drain_package"

.field static final blacklist XML_ATTR_ID:Ljava/lang/String; = "id"

.field static final blacklist XML_ATTR_POWER:Ljava/lang/String; = "power"

.field static final blacklist XML_ATTR_POWER_STATE:Ljava/lang/String; = "power_state"

.field static final blacklist XML_ATTR_PREFIX_CUSTOM_COMPONENT:Ljava/lang/String; = "custom_component_"

.field static final blacklist XML_ATTR_PREFIX_INCLUDES_POWER_STATE_DATA:Ljava/lang/String; = "includes_power_state_data"

.field static final blacklist XML_ATTR_PREFIX_INCLUDES_PROC_STATE_DATA:Ljava/lang/String; = "includes_proc_state_data"

.field static final blacklist XML_ATTR_PREFIX_INCLUDES_SCREEN_STATE_DATA:Ljava/lang/String; = "includes_screen_state_data"

.field static final blacklist XML_ATTR_PROCESS_STATE:Ljava/lang/String; = "process_state"

.field static final blacklist XML_ATTR_SCOPE:Ljava/lang/String; = "scope"

.field static final blacklist XML_ATTR_SCREEN_STATE:Ljava/lang/String; = "screen_state"

.field static final blacklist XML_ATTR_START_TIMESTAMP:Ljava/lang/String; = "start_timestamp"

.field static final blacklist XML_ATTR_TIME_IN_BACKGROUND:Ljava/lang/String; = "time_in_background"

.field static final blacklist XML_ATTR_TIME_IN_FOREGROUND:Ljava/lang/String; = "time_in_foreground"

.field static final blacklist XML_ATTR_TIME_IN_FOREGROUND_SERVICE:Ljava/lang/String; = "time_in_foreground_service"

.field static final blacklist XML_ATTR_UID:Ljava/lang/String; = "uid"

.field static final blacklist XML_ATTR_USER_ID:Ljava/lang/String; = "user_id"

.field static final blacklist XML_TAG_AGGREGATE:Ljava/lang/String; = "aggregate"

.field static final blacklist XML_TAG_BATTERY_USAGE_STATS:Ljava/lang/String; = "battery_usage_stats"

.field static final blacklist XML_TAG_COMPONENT:Ljava/lang/String; = "component"

.field static final blacklist XML_TAG_POWER_COMPONENTS:Ljava/lang/String; = "power_components"

.field static final blacklist XML_TAG_UID:Ljava/lang/String; = "uid"

.field static final blacklist XML_TAG_USER:Ljava/lang/String; = "user"

.field private static volatile blacklist sInstanceLeakDetectionEnabled:Z

.field private static blacklist sInstances:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/database/CursorWindow;",
            "Ljava/lang/Exception;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAggregateBatteryConsumers:[Landroid/os/AggregateBatteryConsumer;

.field private final blacklist mBatteryCapacityMah:D

.field private final blacklist mBatteryConsumerDataLayout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

.field private blacklist mBatteryConsumersCursorWindow:Landroid/database/CursorWindow;

.field private final blacklist mBatteryStatsHistory:Lcom/android/internal/os/BatteryStatsHistory;

.field private final blacklist mBatteryTimeRemainingMs:J

.field private final blacklist mChargeTimeRemainingMs:J

.field private final blacklist mCustomPowerComponentNames:[Ljava/lang/String;

.field private final blacklist mDischargeDurationMs:J

.field private final blacklist mDischargePercentage:I

.field private final blacklist mDischargedPowerLowerBound:D

.field private final blacklist mDischargedPowerUpperBound:D

.field private final blacklist mIncludesPowerStateData:Z

.field private final blacklist mIncludesProcessStateData:Z

.field private final blacklist mIncludesScreenStateData:Z

.field private final blacklist mPreferredHistoryDurationMs:J

.field private final blacklist mStatsDurationMs:J

.field private final blacklist mStatsEndTimestampMs:J

.field private final blacklist mStatsStartTimestampMs:J

.field private final blacklist mUidBatteryConsumers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/UidBatteryConsumer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mUserBatteryConsumers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/UserBatteryConsumer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$AhjaskFZdcWuZdURmjqwkJa5acs(Landroid/os/BatteryUsageStats;Landroid/os/UidBatteryConsumer;)D
    .registers 2

    invoke-direct {p0, p1}, Landroid/os/BatteryUsageStats;->getUidBatteryConsumerWeight(Landroid/os/UidBatteryConsumer;)D

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAggregateBatteryConsumers(Landroid/os/BatteryUsageStats;)[Landroid/os/AggregateBatteryConsumer;
    .registers 1

    iget-object p0, p0, Landroid/os/BatteryUsageStats;->mAggregateBatteryConsumers:[Landroid/os/AggregateBatteryConsumer;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBatteryCapacityMah(Landroid/os/BatteryUsageStats;)D
    .registers 3

    iget-wide v0, p0, Landroid/os/BatteryUsageStats;->mBatteryCapacityMah:D

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBatteryTimeRemainingMs(Landroid/os/BatteryUsageStats;)J
    .registers 3

    iget-wide v0, p0, Landroid/os/BatteryUsageStats;->mBatteryTimeRemainingMs:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmChargeTimeRemainingMs(Landroid/os/BatteryUsageStats;)J
    .registers 3

    iget-wide v0, p0, Landroid/os/BatteryUsageStats;->mChargeTimeRemainingMs:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCustomPowerComponentNames(Landroid/os/BatteryUsageStats;)[Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/os/BatteryUsageStats;->mCustomPowerComponentNames:[Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDischargeDurationMs(Landroid/os/BatteryUsageStats;)J
    .registers 3

    iget-wide v0, p0, Landroid/os/BatteryUsageStats;->mDischargeDurationMs:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDischargePercentage(Landroid/os/BatteryUsageStats;)I
    .registers 1

    iget p0, p0, Landroid/os/BatteryUsageStats;->mDischargePercentage:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDischargedPowerLowerBound(Landroid/os/BatteryUsageStats;)D
    .registers 3

    iget-wide v0, p0, Landroid/os/BatteryUsageStats;->mDischargedPowerLowerBound:D

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDischargedPowerUpperBound(Landroid/os/BatteryUsageStats;)D
    .registers 3

    iget-wide v0, p0, Landroid/os/BatteryUsageStats;->mDischargedPowerUpperBound:D

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIncludesProcessStateData(Landroid/os/BatteryUsageStats;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/os/BatteryUsageStats;->mIncludesProcessStateData:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStatsEndTimestampMs(Landroid/os/BatteryUsageStats;)J
    .registers 3

    iget-wide v0, p0, Landroid/os/BatteryUsageStats;->mStatsEndTimestampMs:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStatsStartTimestampMs(Landroid/os/BatteryUsageStats;)J
    .registers 3

    iget-wide v0, p0, Landroid/os/BatteryUsageStats;->mStatsStartTimestampMs:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$smonCursorWindowAllocated(Landroid/database/CursorWindow;)V
    .registers 1

    invoke-static {p0}, Landroid/os/BatteryUsageStats;->onCursorWindowAllocated(Landroid/database/CursorWindow;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smonCursorWindowReleased(Landroid/database/CursorWindow;)V
    .registers 1

    invoke-static {p0}, Landroid/os/BatteryUsageStats;->onCursorWindowReleased(Landroid/database/CursorWindow;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 134
    const/4 v0, 0x2

    const/4 v1, 0x3

    const/4 v2, 0x1

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Landroid/os/BatteryUsageStats;->UID_USAGE_TIME_PROCESS_STATES:[I

    .line 436
    new-instance v0, Landroid/os/BatteryUsageStats$1;

    invoke-direct {v0}, Landroid/os/BatteryUsageStats$1;-><init>()V

    sput-object v0, Landroid/os/BatteryUsageStats;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/BatteryUsageStats$Builder;)V
    .registers 10
    .param p1, "builder"    # Landroid/os/BatteryUsageStats$Builder;

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    invoke-static {p1}, Landroid/os/BatteryUsageStats$Builder;->-$$Nest$fgetmStatsStartTimestampMs(Landroid/os/BatteryUsageStats$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/BatteryUsageStats;->mStatsStartTimestampMs:J

    .line 164
    invoke-static {p1}, Landroid/os/BatteryUsageStats$Builder;->-$$Nest$fgetmStatsEndTimestampMs(Landroid/os/BatteryUsageStats$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/BatteryUsageStats;->mStatsEndTimestampMs:J

    .line 165
    invoke-virtual {p1}, Landroid/os/BatteryUsageStats$Builder;->getStatsDuration()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/BatteryUsageStats;->mStatsDurationMs:J

    .line 166
    invoke-static {p1}, Landroid/os/BatteryUsageStats$Builder;->-$$Nest$fgetmBatteryCapacityMah(Landroid/os/BatteryUsageStats$Builder;)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/BatteryUsageStats;->mBatteryCapacityMah:D

    .line 167
    invoke-static {p1}, Landroid/os/BatteryUsageStats$Builder;->-$$Nest$fgetmDischargePercentage(Landroid/os/BatteryUsageStats$Builder;)I

    move-result v0

    iput v0, p0, Landroid/os/BatteryUsageStats;->mDischargePercentage:I

    .line 168
    invoke-static {p1}, Landroid/os/BatteryUsageStats$Builder;->-$$Nest$fgetmDischargedPowerLowerBoundMah(Landroid/os/BatteryUsageStats$Builder;)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/BatteryUsageStats;->mDischargedPowerLowerBound:D

    .line 169
    invoke-static {p1}, Landroid/os/BatteryUsageStats$Builder;->-$$Nest$fgetmDischargedPowerUpperBoundMah(Landroid/os/BatteryUsageStats$Builder;)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/BatteryUsageStats;->mDischargedPowerUpperBound:D

    .line 170
    invoke-static {p1}, Landroid/os/BatteryUsageStats$Builder;->-$$Nest$fgetmDischargeDurationMs(Landroid/os/BatteryUsageStats$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/BatteryUsageStats;->mDischargeDurationMs:J

    .line 171
    invoke-static {p1}, Landroid/os/BatteryUsageStats$Builder;->-$$Nest$fgetmBatteryStatsHistory(Landroid/os/BatteryUsageStats$Builder;)Lcom/android/internal/os/BatteryStatsHistory;

    move-result-object v0

    iput-object v0, p0, Landroid/os/BatteryUsageStats;->mBatteryStatsHistory:Lcom/android/internal/os/BatteryStatsHistory;

    .line 172
    invoke-static {p1}, Landroid/os/BatteryUsageStats$Builder;->-$$Nest$fgetmPreferredHistoryDurationMs(Landroid/os/BatteryUsageStats$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/BatteryUsageStats;->mPreferredHistoryDurationMs:J

    .line 173
    invoke-static {p1}, Landroid/os/BatteryUsageStats$Builder;->-$$Nest$fgetmBatteryTimeRemainingMs(Landroid/os/BatteryUsageStats$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/BatteryUsageStats;->mBatteryTimeRemainingMs:J

    .line 174
    invoke-static {p1}, Landroid/os/BatteryUsageStats$Builder;->-$$Nest$fgetmChargeTimeRemainingMs(Landroid/os/BatteryUsageStats$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/BatteryUsageStats;->mChargeTimeRemainingMs:J

    .line 175
    invoke-static {p1}, Landroid/os/BatteryUsageStats$Builder;->-$$Nest$fgetmCustomPowerComponentNames(Landroid/os/BatteryUsageStats$Builder;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/BatteryUsageStats;->mCustomPowerComponentNames:[Ljava/lang/String;

    .line 176
    invoke-static {p1}, Landroid/os/BatteryUsageStats$Builder;->-$$Nest$fgetmIncludesProcessStateData(Landroid/os/BatteryUsageStats$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/os/BatteryUsageStats;->mIncludesProcessStateData:Z

    .line 177
    invoke-static {p1}, Landroid/os/BatteryUsageStats$Builder;->-$$Nest$fgetmIncludesScreenStateData(Landroid/os/BatteryUsageStats$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/os/BatteryUsageStats;->mIncludesScreenStateData:Z

    .line 178
    invoke-static {p1}, Landroid/os/BatteryUsageStats$Builder;->-$$Nest$fgetmIncludesPowerStateData(Landroid/os/BatteryUsageStats$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/os/BatteryUsageStats;->mIncludesPowerStateData:Z

    .line 179
    invoke-static {p1}, Landroid/os/BatteryUsageStats$Builder;->-$$Nest$fgetmBatteryConsumerDataLayout(Landroid/os/BatteryUsageStats$Builder;)Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    move-result-object v0

    iput-object v0, p0, Landroid/os/BatteryUsageStats;->mBatteryConsumerDataLayout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    .line 180
    invoke-static {p1}, Landroid/os/BatteryUsageStats$Builder;->-$$Nest$fgetmBatteryConsumersCursorWindow(Landroid/os/BatteryUsageStats$Builder;)Landroid/database/CursorWindow;

    move-result-object v0

    iput-object v0, p0, Landroid/os/BatteryUsageStats;->mBatteryConsumersCursorWindow:Landroid/database/CursorWindow;

    .line 182
    const-wide/16 v0, 0x0

    .line 183
    .local v0, "totalPowerMah":D
    invoke-static {p1}, Landroid/os/BatteryUsageStats$Builder;->-$$Nest$fgetmUidBatteryConsumerBuilders(Landroid/os/BatteryUsageStats$Builder;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 184
    .local v2, "uidBatteryConsumerCount":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Landroid/os/BatteryUsageStats;->mUidBatteryConsumers:Ljava/util/List;

    .line 185
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_81
    if-ge v3, v2, :cond_a4

    .line 186
    invoke-static {p1}, Landroid/os/BatteryUsageStats$Builder;->-$$Nest$fgetmUidBatteryConsumerBuilders(Landroid/os/BatteryUsageStats$Builder;)Landroid/util/SparseArray;

    move-result-object v4

    .line 187
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UidBatteryConsumer$Builder;

    .line 188
    .local v4, "uidBatteryConsumerBuilder":Landroid/os/UidBatteryConsumer$Builder;
    invoke-virtual {v4}, Landroid/os/UidBatteryConsumer$Builder;->isExcludedFromBatteryUsageStats()Z

    move-result v5

    if-nez v5, :cond_a1

    .line 189
    invoke-virtual {v4}, Landroid/os/UidBatteryConsumer$Builder;->build()Landroid/os/UidBatteryConsumer;

    move-result-object v5

    .line 190
    .local v5, "consumer":Landroid/os/UidBatteryConsumer;
    invoke-virtual {v5}, Landroid/os/UidBatteryConsumer;->getConsumedPower()D

    move-result-wide v6

    add-double/2addr v0, v6

    .line 191
    iget-object v6, p0, Landroid/os/BatteryUsageStats;->mUidBatteryConsumers:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    .end local v4    # "uidBatteryConsumerBuilder":Landroid/os/UidBatteryConsumer$Builder;
    .end local v5    # "consumer":Landroid/os/UidBatteryConsumer;
    :cond_a1
    add-int/lit8 v3, v3, 0x1

    goto :goto_81

    .line 195
    .end local v3    # "i":I
    :cond_a4
    invoke-static {p1}, Landroid/os/BatteryUsageStats$Builder;->-$$Nest$fgetmUserBatteryConsumerBuilders(Landroid/os/BatteryUsageStats$Builder;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 196
    .local v3, "userBatteryConsumerCount":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Landroid/os/BatteryUsageStats;->mUserBatteryConsumers:Ljava/util/List;

    .line 197
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_b4
    if-ge v4, v3, :cond_d1

    .line 198
    invoke-static {p1}, Landroid/os/BatteryUsageStats$Builder;->-$$Nest$fgetmUserBatteryConsumerBuilders(Landroid/os/BatteryUsageStats$Builder;)Landroid/util/SparseArray;

    move-result-object v5

    .line 199
    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserBatteryConsumer$Builder;

    invoke-virtual {v5}, Landroid/os/UserBatteryConsumer$Builder;->build()Landroid/os/UserBatteryConsumer;

    move-result-object v5

    .line 200
    .local v5, "consumer":Landroid/os/UserBatteryConsumer;
    invoke-virtual {v5}, Landroid/os/UserBatteryConsumer;->getConsumedPower()D

    move-result-wide v6

    add-double/2addr v0, v6

    .line 201
    iget-object v6, p0, Landroid/os/BatteryUsageStats;->mUserBatteryConsumers:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    .end local v5    # "consumer":Landroid/os/UserBatteryConsumer;
    add-int/lit8 v4, v4, 0x1

    goto :goto_b4

    .line 204
    .end local v4    # "i":I
    :cond_d1
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object v4

    .line 205
    invoke-virtual {v4, v0, v1}, Landroid/os/AggregateBatteryConsumer$Builder;->addConsumedPower(D)Landroid/os/AggregateBatteryConsumer$Builder;

    .line 207
    const/4 v4, 0x2

    new-array v5, v4, [Landroid/os/AggregateBatteryConsumer;

    iput-object v5, p0, Landroid/os/BatteryUsageStats;->mAggregateBatteryConsumers:[Landroid/os/AggregateBatteryConsumer;

    .line 209
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_df
    if-ge v5, v4, :cond_f2

    .line 210
    iget-object v6, p0, Landroid/os/BatteryUsageStats;->mAggregateBatteryConsumers:[Landroid/os/AggregateBatteryConsumer;

    invoke-static {p1}, Landroid/os/BatteryUsageStats$Builder;->-$$Nest$fgetmAggregateBatteryConsumersBuilders(Landroid/os/BatteryUsageStats$Builder;)[Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object v7

    aget-object v7, v7, v5

    invoke-virtual {v7}, Landroid/os/AggregateBatteryConsumer$Builder;->build()Landroid/os/AggregateBatteryConsumer;

    move-result-object v7

    aput-object v7, v6, v5

    .line 209
    add-int/lit8 v5, v5, 0x1

    goto :goto_df

    .line 212
    .end local v5    # "i":I
    :cond_f2
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/BatteryUsageStats$Builder;Landroid/os/BatteryUsageStats-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/os/BatteryUsageStats;-><init>(Landroid/os/BatteryUsageStats$Builder;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 9
    .param p1, "source"    # Landroid/os/Parcel;

    .line 348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 349
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/BatteryUsageStats;->mStatsStartTimestampMs:J

    .line 350
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/BatteryUsageStats;->mStatsEndTimestampMs:J

    .line 351
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/BatteryUsageStats;->mStatsDurationMs:J

    .line 352
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/BatteryUsageStats;->mBatteryCapacityMah:D

    .line 353
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryUsageStats;->mDischargePercentage:I

    .line 354
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/BatteryUsageStats;->mDischargedPowerLowerBound:D

    .line 355
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/BatteryUsageStats;->mDischargedPowerUpperBound:D

    .line 356
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/BatteryUsageStats;->mDischargeDurationMs:J

    .line 357
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/BatteryUsageStats;->mBatteryTimeRemainingMs:J

    .line 358
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/BatteryUsageStats;->mChargeTimeRemainingMs:J

    .line 359
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/BatteryUsageStats;->mCustomPowerComponentNames:[Ljava/lang/String;

    .line 360
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/os/BatteryUsageStats;->mIncludesProcessStateData:Z

    .line 361
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/os/BatteryUsageStats;->mIncludesScreenStateData:Z

    .line 362
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/os/BatteryUsageStats;->mIncludesPowerStateData:Z

    .line 364
    invoke-static {p1}, Landroid/database/CursorWindow;->newFromParcel(Landroid/os/Parcel;)Landroid/database/CursorWindow;

    move-result-object v0

    iput-object v0, p0, Landroid/os/BatteryUsageStats;->mBatteryConsumersCursorWindow:Landroid/database/CursorWindow;

    .line 365
    iget-object v0, p0, Landroid/os/BatteryUsageStats;->mCustomPowerComponentNames:[Ljava/lang/String;

    iget-boolean v1, p0, Landroid/os/BatteryUsageStats;->mIncludesProcessStateData:Z

    iget-boolean v2, p0, Landroid/os/BatteryUsageStats;->mIncludesScreenStateData:Z

    iget-boolean v3, p0, Landroid/os/BatteryUsageStats;->mIncludesPowerStateData:Z

    invoke-static {v0, v1, v2, v3}, Landroid/os/BatteryConsumer;->createBatteryConsumerDataLayout([Ljava/lang/String;ZZZ)Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    move-result-object v0

    iput-object v0, p0, Landroid/os/BatteryUsageStats;->mBatteryConsumerDataLayout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    .line 369
    iget-object v0, p0, Landroid/os/BatteryUsageStats;->mBatteryConsumersCursorWindow:Landroid/database/CursorWindow;

    invoke-virtual {v0}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v0

    .line 371
    .local v0, "numRows":I
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/os/AggregateBatteryConsumer;

    iput-object v1, p0, Landroid/os/BatteryUsageStats;->mAggregateBatteryConsumers:[Landroid/os/AggregateBatteryConsumer;

    .line 373
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroid/os/BatteryUsageStats;->mUidBatteryConsumers:Ljava/util/List;

    .line 374
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/os/BatteryUsageStats;->mUserBatteryConsumers:Ljava/util/List;

    .line 376
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_85
    if-ge v1, v0, :cond_c2

    .line 377
    new-instance v2, Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v3, p0, Landroid/os/BatteryUsageStats;->mBatteryConsumersCursorWindow:Landroid/database/CursorWindow;

    iget-object v4, p0, Landroid/os/BatteryUsageStats;->mBatteryConsumerDataLayout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    invoke-direct {v2, v3, v1, v4}, Landroid/os/BatteryConsumer$BatteryConsumerData;-><init>(Landroid/database/CursorWindow;ILandroid/os/BatteryConsumer$BatteryConsumerDataLayout;)V

    .line 381
    .local v2, "data":Landroid/os/BatteryConsumer$BatteryConsumerData;
    iget-object v3, p0, Landroid/os/BatteryUsageStats;->mBatteryConsumersCursorWindow:Landroid/database/CursorWindow;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/database/CursorWindow;->getInt(II)I

    move-result v3

    .line 383
    .local v3, "consumerType":I
    packed-switch v3, :pswitch_data_de

    goto :goto_bf

    .line 394
    :pswitch_9b
    iget-object v4, p0, Landroid/os/BatteryUsageStats;->mUserBatteryConsumers:Ljava/util/List;

    new-instance v5, Landroid/os/UserBatteryConsumer;

    invoke-direct {v5, v2}, Landroid/os/UserBatteryConsumer;-><init>(Landroid/os/BatteryConsumer$BatteryConsumerData;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_bf

    .line 390
    :pswitch_a6
    iget-object v4, p0, Landroid/os/BatteryUsageStats;->mUidBatteryConsumers:Ljava/util/List;

    new-instance v5, Landroid/os/UidBatteryConsumer;

    invoke-direct {v5, v2}, Landroid/os/UidBatteryConsumer;-><init>(Landroid/os/BatteryConsumer$BatteryConsumerData;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 391
    goto :goto_bf

    .line 385
    :pswitch_b1
    new-instance v4, Landroid/os/AggregateBatteryConsumer;

    invoke-direct {v4, v2}, Landroid/os/AggregateBatteryConsumer;-><init>(Landroid/os/BatteryConsumer$BatteryConsumerData;)V

    .line 386
    .local v4, "consumer":Landroid/os/AggregateBatteryConsumer;
    iget-object v5, p0, Landroid/os/BatteryUsageStats;->mAggregateBatteryConsumers:[Landroid/os/AggregateBatteryConsumer;

    invoke-virtual {v4}, Landroid/os/AggregateBatteryConsumer;->getScope()I

    move-result v6

    aput-object v4, v5, v6

    .line 387
    nop

    .line 376
    .end local v2    # "data":Landroid/os/BatteryConsumer$BatteryConsumerData;
    .end local v3    # "consumerType":I
    .end local v4    # "consumer":Landroid/os/AggregateBatteryConsumer;
    :goto_bf
    add-int/lit8 v1, v1, 0x1

    goto :goto_85

    .line 399
    .end local v1    # "i":I
    :cond_c2
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    if-eqz v1, :cond_d5

    .line 400
    invoke-static {p1}, Lcom/android/internal/os/BatteryStatsHistory;->createFromBatteryUsageStatsParcel(Landroid/os/Parcel;)Lcom/android/internal/os/BatteryStatsHistory;

    move-result-object v1

    iput-object v1, p0, Landroid/os/BatteryUsageStats;->mBatteryStatsHistory:Lcom/android/internal/os/BatteryStatsHistory;

    .line 401
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/os/BatteryUsageStats;->mPreferredHistoryDurationMs:J

    goto :goto_dc

    .line 403
    :cond_d5
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/os/BatteryUsageStats;->mBatteryStatsHistory:Lcom/android/internal/os/BatteryStatsHistory;

    .line 404
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/os/BatteryUsageStats;->mPreferredHistoryDurationMs:J

    .line 406
    :goto_dc
    return-void

    nop

    :pswitch_data_de
    .packed-switch 0x0
        :pswitch_b1
        :pswitch_a6
        :pswitch_9b
    .end packed-switch
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/os/BatteryUsageStats-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/os/BatteryUsageStats;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static blacklist assertAllInstancesClosed()V
    .registers 6

    .line 1314
    sget-boolean v0, Landroid/os/BatteryUsageStats;->sInstanceLeakDetectionEnabled:Z

    if-eqz v0, :cond_53

    .line 1318
    const-class v0, Landroid/os/BatteryUsageStats;

    monitor-enter v0

    .line 1319
    :try_start_7
    sget-object v1, Landroid/os/BatteryUsageStats;->sInstances:Ljava/util/Map;

    if-eqz v1, :cond_4e

    sget-object v1, Landroid/os/BatteryUsageStats;->sInstances:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_14

    goto :goto_4e

    .line 1320
    :cond_14
    sget-object v1, Landroid/os/BatteryUsageStats;->sInstances:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Exception;

    .line 1321
    .local v1, "callSite":Ljava/lang/Exception;
    sget-object v2, Landroid/os/BatteryUsageStats;->sInstances:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    .line 1322
    .local v2, "count":I
    sget-object v3, Landroid/os/BatteryUsageStats;->sInstances:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 1323
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Instances of BatteryUsageStats not closed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 1326
    .end local v1    # "callSite":Ljava/lang/Exception;
    .end local v2    # "count":I
    :cond_4e
    :goto_4e
    monitor-exit v0

    .line 1327
    return-void

    .line 1326
    :catchall_50
    move-exception v1

    monitor-exit v0
    :try_end_52
    .catchall {:try_start_7 .. :try_end_52} :catchall_50

    throw v1

    .line 1315
    :cond_53
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Instance leak detection is not enabled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist createBuilderFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/os/BatteryUsageStats$Builder;
    .registers 19
    .param p0, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 789
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 790
    .local v1, "builder":Landroid/os/BatteryUsageStats$Builder;
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    move-result v2

    .line 791
    .local v2, "eventType":I
    :goto_7
    const/4 v3, -0x1

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v2, v5, :cond_dc

    .line 792
    if-ne v2, v4, :cond_d6

    .line 793
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "battery_usage_stats"

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d6

    .line 794
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 795
    .local v7, "customComponentNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v8, 0x0

    .line 797
    .local v8, "i":I
    :goto_21
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "custom_component_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v0, v10, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 799
    .local v9, "index":I
    if-ne v9, v3, :cond_c8

    .line 800
    nop

    .line 806
    .end local v9    # "index":I
    const-string/jumbo v9, "includes_proc_state_data"

    invoke-interface {v0, v10, v9, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v13

    .line 808
    .local v13, "includesProcStateData":Z
    const-string/jumbo v9, "includes_screen_state_data"

    invoke-interface {v0, v10, v9, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v14

    .line 810
    .local v14, "includesScreenStateData":Z
    const-string/jumbo v9, "includes_power_state_data"

    invoke-interface {v0, v10, v9, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v15

    .line 813
    .local v15, "includesPowerStateData":Z
    new-instance v11, Landroid/os/BatteryUsageStats$Builder;

    new-array v9, v6, [Ljava/lang/String;

    invoke-interface {v7, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    move-object v12, v9

    check-cast v12, [Ljava/lang/String;

    const-wide/16 v16, 0x0

    invoke-direct/range {v11 .. v17}, Landroid/os/BatteryUsageStats$Builder;-><init>([Ljava/lang/String;ZZZD)V

    move-object v1, v11

    .line 816
    nop

    .line 817
    const-string/jumbo v9, "start_timestamp"

    invoke-interface {v0, v10, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v11

    .line 816
    invoke-virtual {v1, v11, v12}, Landroid/os/BatteryUsageStats$Builder;->setStatsStartTimestamp(J)Landroid/os/BatteryUsageStats$Builder;

    .line 818
    nop

    .line 819
    const-string v9, "end_timestamp"

    invoke-interface {v0, v10, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v11

    .line 818
    invoke-virtual {v1, v11, v12}, Landroid/os/BatteryUsageStats$Builder;->setStatsEndTimestamp(J)Landroid/os/BatteryUsageStats$Builder;

    .line 820
    nop

    .line 821
    const-string v9, "duration"

    invoke-interface {v0, v10, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v11

    .line 820
    invoke-virtual {v1, v11, v12}, Landroid/os/BatteryUsageStats$Builder;->setStatsDuration(J)Landroid/os/BatteryUsageStats$Builder;

    .line 822
    nop

    .line 823
    const-string v9, "battery_capacity"

    invoke-interface {v0, v10, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeDouble(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v11

    .line 822
    invoke-virtual {v1, v11, v12}, Landroid/os/BatteryUsageStats$Builder;->setBatteryCapacity(D)Landroid/os/BatteryUsageStats$Builder;

    .line 824
    nop

    .line 825
    const-string v9, "discharge_pct"

    invoke-interface {v0, v10, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 824
    invoke-virtual {v1, v9}, Landroid/os/BatteryUsageStats$Builder;->addDischargePercentage(I)Landroid/os/BatteryUsageStats$Builder;

    .line 826
    nop

    .line 827
    const-string v9, "discharge_lower"

    invoke-interface {v0, v10, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeDouble(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v11

    .line 828
    const-string v9, "discharge_upper"

    invoke-interface {v0, v10, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeDouble(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v3

    .line 826
    invoke-virtual {v1, v11, v12, v3, v4}, Landroid/os/BatteryUsageStats$Builder;->addDischargedPowerRange(DD)Landroid/os/BatteryUsageStats$Builder;

    .line 829
    nop

    .line 830
    const-string v3, "discharge_duration"

    invoke-interface {v0, v10, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v3

    .line 829
    invoke-virtual {v1, v3, v4}, Landroid/os/BatteryUsageStats$Builder;->addDischargeDurationMs(J)Landroid/os/BatteryUsageStats$Builder;

    .line 831
    nop

    .line 832
    const-string v3, "battery_remaining"

    invoke-interface {v0, v10, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v3

    .line 831
    invoke-virtual {v1, v3, v4}, Landroid/os/BatteryUsageStats$Builder;->setBatteryTimeRemainingMs(J)Landroid/os/BatteryUsageStats$Builder;

    .line 833
    nop

    .line 834
    const-string v3, "charge_remaining"

    invoke-interface {v0, v10, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v3

    .line 833
    invoke-virtual {v1, v3, v4}, Landroid/os/BatteryUsageStats$Builder;->setChargeTimeRemainingMs(J)Landroid/os/BatteryUsageStats$Builder;

    .line 836
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v2

    .line 837
    goto :goto_dc

    .line 802
    .end local v13    # "includesProcStateData":Z
    .end local v14    # "includesScreenStateData":Z
    .end local v15    # "includesPowerStateData":Z
    .restart local v9    # "index":I
    :cond_c8
    invoke-interface {v0, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 803
    nop

    .end local v9    # "index":I
    add-int/lit8 v8, v8, 0x1

    .line 804
    const/4 v3, -0x1

    const/4 v4, 0x2

    goto/16 :goto_21

    .line 839
    .end local v7    # "customComponentNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "i":I
    :cond_d6
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v2

    goto/16 :goto_7

    .line 842
    :cond_dc
    :goto_dc
    if-eqz v1, :cond_126

    .line 846
    :goto_de
    if-eq v2, v5, :cond_125

    .line 847
    const/4 v3, 0x2

    if-ne v2, v3, :cond_120

    .line 848
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_12e

    :cond_ee
    goto :goto_10f

    :sswitch_ef
    const-string v7, "aggregate"

    invoke-virtual {v4, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ee

    move v4, v6

    goto :goto_110

    :sswitch_f9
    const-string/jumbo v7, "user"

    invoke-virtual {v4, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ee

    move v4, v3

    goto :goto_110

    :sswitch_104
    const-string/jumbo v7, "uid"

    invoke-virtual {v4, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ee

    move v4, v5

    goto :goto_110

    :goto_10f
    const/4 v4, -0x1

    :goto_110
    packed-switch v4, :pswitch_data_13c

    goto :goto_120

    .line 856
    :pswitch_114
    invoke-static {v0, v1}, Landroid/os/UserBatteryConsumer;->createFromXml(Lcom/android/modules/utils/TypedXmlPullParser;Landroid/os/BatteryUsageStats$Builder;)V

    goto :goto_120

    .line 853
    :pswitch_118
    invoke-static {v0, v1}, Landroid/os/UidBatteryConsumer;->createFromXml(Lcom/android/modules/utils/TypedXmlPullParser;Landroid/os/BatteryUsageStats$Builder;)V

    .line 854
    goto :goto_120

    .line 850
    :pswitch_11c
    invoke-static {v0, v1}, Landroid/os/AggregateBatteryConsumer;->parseXml(Lcom/android/modules/utils/TypedXmlPullParser;Landroid/os/BatteryUsageStats$Builder;)V

    .line 851
    nop

    .line 860
    :cond_120
    :goto_120
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v2

    goto :goto_de

    .line 863
    :cond_125
    return-object v1

    .line 843
    :cond_126
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v4, "No root element"

    invoke-direct {v3, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v3

    :sswitch_data_12e
    .sparse-switch
        0x1c450 -> :sswitch_104
        0x36ebcb -> :sswitch_f9
        0xa70fdbf -> :sswitch_ef
    .end sparse-switch

    :pswitch_data_13c
    .packed-switch 0x0
        :pswitch_11c
        :pswitch_118
        :pswitch_114
    .end packed-switch
.end method

.method public static blacklist createFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/os/BatteryUsageStats;
    .registers 2
    .param p0, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 783
    invoke-static {p0}, Landroid/os/BatteryUsageStats;->createBuilderFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/os/BatteryUsageStats$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/BatteryUsageStats$Builder;->build()Landroid/os/BatteryUsageStats;

    move-result-object v0

    return-object v0
.end method

.method private blacklist dumpPowerComponents(Ljava/io/PrintWriter;IILjava/lang/String;)V
    .registers 27
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "screenState"    # I
    .param p3, "powerState"    # I
    .param p4, "prefix"    # Ljava/lang/String;

    .line 668
    move-object/from16 v0, p0

    move/from16 v10, p2

    move/from16 v11, p3

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/BatteryUsageStats;->getAggregateBatteryConsumer(I)Landroid/os/AggregateBatteryConsumer;

    move-result-object v12

    .line 670
    .local v12, "deviceConsumer":Landroid/os/BatteryConsumer;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/BatteryUsageStats;->getAggregateBatteryConsumer(I)Landroid/os/AggregateBatteryConsumer;

    move-result-object v13

    .line 673
    .local v13, "appsConsumer":Landroid/os/BatteryConsumer;
    const/4 v2, 0x0

    .line 675
    .local v2, "labelPrinted":Z
    iget-object v3, v0, Landroid/os/BatteryUsageStats;->mBatteryConsumerDataLayout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget-object v14, v3, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->powerComponentIds:[I

    array-length v15, v14

    :goto_16
    if-ge v1, v15, :cond_af

    aget v3, v14, v1

    .line 676
    .local v3, "powerComponent":I
    new-instance v4, Landroid/os/BatteryConsumer$Dimensions;

    const/4 v5, -0x1

    invoke-direct {v4, v3, v5, v10, v11}, Landroid/os/BatteryConsumer$Dimensions;-><init>(IIII)V

    .line 678
    .local v4, "dimensions":Landroid/os/BatteryConsumer$Dimensions;
    invoke-virtual {v12, v4}, Landroid/os/BatteryConsumer;->getConsumedPower(Landroid/os/BatteryConsumer$Dimensions;)D

    move-result-wide v5

    .line 679
    .local v5, "devicePowerMah":D
    move-wide v8, v5

    .end local v5    # "devicePowerMah":D
    .local v8, "devicePowerMah":D
    invoke-virtual {v13, v4}, Landroid/os/BatteryConsumer;->getConsumedPower(Landroid/os/BatteryConsumer$Dimensions;)D

    move-result-wide v6

    .line 680
    .local v6, "appsPowerMah":D
    const-wide/16 v16, 0x0

    cmpl-double v5, v8, v16

    if-nez v5, :cond_37

    cmpl-double v5, v6, v16

    if-nez v5, :cond_37

    .line 681
    move/from16 v16, v1

    goto/16 :goto_a9

    .line 684
    :cond_37
    if-nez v2, :cond_85

    .line 685
    const/4 v5, 0x1

    .line 686
    .local v5, "empty":Z
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v16

    .line 687
    .local v17, "stateLabel":Ljava/lang/StringBuilder;
    move/from16 v16, v1

    const-string v1, "      ("

    move/from16 v18, v2

    move-object/from16 v2, v17

    .end local v17    # "stateLabel":Ljava/lang/StringBuilder;
    .local v2, "stateLabel":Ljava/lang/StringBuilder;
    .local v18, "labelPrinted":Z
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 688
    if-eqz v11, :cond_56

    .line 689
    invoke-static {v11}, Landroid/os/BatteryConsumer;->powerStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 690
    const/4 v5, 0x0

    .line 692
    :cond_56
    if-eqz v10, :cond_71

    .line 693
    if-nez v5, :cond_5f

    .line 694
    const-string v1, ", "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 696
    :cond_5f
    const-string/jumbo v1, "screen "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 697
    move/from16 v17, v5

    .end local v5    # "empty":Z
    .local v17, "empty":Z
    invoke-static {v10}, Landroid/os/BatteryConsumer;->screenStateToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 698
    const/4 v5, 0x0

    .end local v17    # "empty":Z
    .restart local v5    # "empty":Z
    goto :goto_73

    .line 692
    :cond_71
    move/from16 v17, v5

    .line 700
    :goto_73
    if-nez v5, :cond_82

    .line 701
    const-string v1, ")"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 702
    move-object/from16 v1, p1

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 703
    const/16 v17, 0x1

    .end local v18    # "labelPrinted":Z
    .local v17, "labelPrinted":Z
    goto :goto_8d

    .line 700
    .end local v17    # "labelPrinted":Z
    .restart local v18    # "labelPrinted":Z
    :cond_82
    move-object/from16 v1, p1

    goto :goto_8b

    .line 684
    .end local v5    # "empty":Z
    .end local v18    # "labelPrinted":Z
    .local v2, "labelPrinted":Z
    :cond_85
    move/from16 v16, v1

    move/from16 v18, v2

    move-object/from16 v1, p1

    .line 706
    .end local v2    # "labelPrinted":Z
    .restart local v18    # "labelPrinted":Z
    :goto_8b
    move/from16 v17, v18

    .end local v18    # "labelPrinted":Z
    .restart local v17    # "labelPrinted":Z
    :goto_8d
    iget-object v2, v0, Landroid/os/BatteryUsageStats;->mBatteryConsumerDataLayout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    .line 707
    invoke-virtual {v2, v3}, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->getPowerComponentName(I)Ljava/lang/String;

    move-result-object v2

    .line 709
    move-wide/from16 v18, v8

    .end local v8    # "devicePowerMah":D
    .local v18, "devicePowerMah":D
    invoke-virtual {v12, v4}, Landroid/os/BatteryConsumer;->getUsageDurationMillis(Landroid/os/BatteryConsumer$Dimensions;)J

    move-result-wide v8

    .line 706
    move-wide/from16 v20, v18

    move-object/from16 v19, v4

    move-wide/from16 v4, v20

    move/from16 v18, v3

    move-object v3, v2

    move-object/from16 v2, p4

    .end local v3    # "powerComponent":I
    .local v4, "devicePowerMah":D
    .local v18, "powerComponent":I
    .local v19, "dimensions":Landroid/os/BatteryConsumer$Dimensions;
    invoke-direct/range {v0 .. v9}, Landroid/os/BatteryUsageStats;->printPowerComponent(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;DDJ)V

    move/from16 v2, v17

    .line 675
    .end local v4    # "devicePowerMah":D
    .end local v6    # "appsPowerMah":D
    .end local v17    # "labelPrinted":Z
    .end local v18    # "powerComponent":I
    .end local v19    # "dimensions":Landroid/os/BatteryConsumer$Dimensions;
    .restart local v2    # "labelPrinted":Z
    :goto_a9
    add-int/lit8 v1, v16, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_16

    .line 711
    :cond_af
    return-void
.end method

.method private blacklist dumpSortedBatteryConsumers(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/List;)V
    .registers 10
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Landroid/os/BatteryConsumer;",
            ">;)V"
        }
    .end annotation

    .line 729
    .local p3, "batteryConsumers":Ljava/util/List;, "Ljava/util/List<+Landroid/os/BatteryConsumer;>;"
    new-instance v0, Landroid/os/BatteryUsageStats$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/os/BatteryUsageStats$$ExternalSyntheticLambda1;-><init>()V

    .line 730
    invoke-static {v0}, Ljava/util/Comparator;->comparingDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/Comparator;

    move-result-object v0

    .line 731
    invoke-interface {v0}, Ljava/util/Comparator;->reversed()Ljava/util/Comparator;

    move-result-object v0

    .line 729
    invoke-interface {p3, v0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 732
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BatteryConsumer;

    .line 733
    .local v1, "consumer":Landroid/os/BatteryConsumer;
    invoke-virtual {v1}, Landroid/os/BatteryConsumer;->getConsumedPower()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_2b

    .line 734
    goto :goto_14

    .line 736
    :cond_2b
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 737
    const-string v2, "  "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 738
    invoke-virtual {v1, p1}, Landroid/os/BatteryConsumer;->dump(Ljava/io/PrintWriter;)V

    .line 739
    .end local v1    # "consumer":Landroid/os/BatteryConsumer;
    goto :goto_14

    .line 740
    :cond_37
    return-void
.end method

.method public static blacklist enableInstanceLeakDetection()V
    .registers 2

    .line 1301
    const/4 v0, 0x1

    sput-boolean v0, Landroid/os/BatteryUsageStats;->sInstanceLeakDetectionEnabled:Z

    .line 1302
    const-class v0, Landroid/os/BatteryUsageStats;

    monitor-enter v0

    .line 1303
    :try_start_6
    sget-object v1, Landroid/os/BatteryUsageStats;->sInstances:Ljava/util/Map;

    if-eqz v1, :cond_f

    .line 1304
    sget-object v1, Landroid/os/BatteryUsageStats;->sInstances:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 1306
    :cond_f
    monitor-exit v0

    .line 1307
    return-void

    .line 1306
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_11

    throw v1
.end method

.method private blacklist getUidBatteryConsumerWeight(Landroid/os/UidBatteryConsumer;)D
    .registers 14
    .param p1, "uidBatteryConsumer"    # Landroid/os/UidBatteryConsumer;

    .line 576
    invoke-virtual {p1}, Landroid/os/UidBatteryConsumer;->getConsumedPower()D

    move-result-wide v0

    .line 577
    .local v0, "consumedPower":D
    nop

    .line 578
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/os/UidBatteryConsumer;->getTimeInStateMs(I)J

    move-result-wide v2

    .line 579
    .local v2, "timeInForeground":J
    nop

    .line 580
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Landroid/os/UidBatteryConsumer;->getTimeInStateMs(I)J

    move-result-wide v4

    .line 581
    .local v4, "timeInBackground":J
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v6, v0

    long-to-double v8, v2

    const-wide v10, 0x3efd208a5a912e32L    # 2.777777777777778E-5

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    long-to-double v8, v4

    const-wide v10, 0x3f15d867c3ece2a5L    # 8.333333333333333E-5

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    return-wide v6
.end method

.method private static blacklist onCursorWindowAllocated(Landroid/database/CursorWindow;)V
    .registers 4
    .param p0, "window"    # Landroid/database/CursorWindow;

    .line 1273
    sget-boolean v0, Landroid/os/BatteryUsageStats;->sInstanceLeakDetectionEnabled:Z

    if-nez v0, :cond_5

    .line 1274
    return-void

    .line 1277
    :cond_5
    const-class v0, Landroid/os/BatteryUsageStats;

    monitor-enter v0

    .line 1278
    :try_start_8
    sget-object v1, Landroid/os/BatteryUsageStats;->sInstances:Ljava/util/Map;

    if-nez v1, :cond_13

    .line 1279
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Landroid/os/BatteryUsageStats;->sInstances:Ljava/util/Map;

    .line 1281
    :cond_13
    sget-object v1, Landroid/os/BatteryUsageStats;->sInstances:Ljava/util/Map;

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1282
    monitor-exit v0

    .line 1283
    return-void

    .line 1282
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method private static blacklist onCursorWindowReleased(Landroid/database/CursorWindow;)V
    .registers 3
    .param p0, "window"    # Landroid/database/CursorWindow;

    .line 1286
    sget-boolean v0, Landroid/os/BatteryUsageStats;->sInstanceLeakDetectionEnabled:Z

    if-nez v0, :cond_5

    .line 1287
    return-void

    .line 1290
    :cond_5
    const-class v0, Landroid/os/BatteryUsageStats;

    monitor-enter v0

    .line 1291
    :try_start_8
    sget-object v1, Landroid/os/BatteryUsageStats;->sInstances:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1292
    monitor-exit v0

    .line 1293
    return-void

    .line 1292
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_f

    throw v1
.end method

.method private blacklist printPowerComponent(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;DDJ)V
    .registers 13
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "devicePowerMah"    # D
    .param p6, "appsPowerMah"    # D
    .param p8, "durationMs"    # J

    .line 715
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 716
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 717
    invoke-static {p4, p5}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 718
    const-string v1, " apps: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p6, p7}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 719
    const-wide/16 v1, 0x0

    cmp-long v1, p8, v1

    if-eqz v1, :cond_3b

    .line 720
    const-string v1, " duration: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 721
    invoke-static {v0, p8, p9}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 724
    :cond_3b
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 725
    return-void
.end method

.method private blacklist writeStatsProto(Landroid/util/proto/ProtoOutputStream;I)V
    .registers 8
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "maxRawSize"    # I

    .line 490
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/BatteryUsageStats;->getAggregateBatteryConsumer(I)Landroid/os/AggregateBatteryConsumer;

    move-result-object v0

    .line 493
    .local v0, "deviceBatteryConsumer":Landroid/os/AggregateBatteryConsumer;
    const-wide v1, 0x10300000001L

    invoke-virtual {p0}, Landroid/os/BatteryUsageStats;->getStatsStartTimestamp()J

    move-result-wide v3

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 494
    const-wide v1, 0x10300000002L

    invoke-virtual {p0}, Landroid/os/BatteryUsageStats;->getStatsEndTimestamp()J

    move-result-wide v3

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 495
    const-wide v1, 0x10300000003L

    invoke-virtual {p0}, Landroid/os/BatteryUsageStats;->getStatsDuration()J

    move-result-wide v3

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 496
    nop

    .line 497
    invoke-virtual {p0}, Landroid/os/BatteryUsageStats;->getDischargePercentage()I

    move-result v1

    .line 496
    const-wide v2, 0x10500000006L

    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 498
    nop

    .line 499
    invoke-virtual {p0}, Landroid/os/BatteryUsageStats;->getDischargeDurationMs()J

    move-result-wide v1

    .line 498
    const-wide v3, 0x10300000007L

    invoke-virtual {p1, v3, v4, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 500
    const-wide v1, 0x10b00000004L

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/AggregateBatteryConsumer;->writeStatsProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 502
    invoke-direct {p0, p1, p2}, Landroid/os/BatteryUsageStats;->writeUidBatteryConsumersProto(Landroid/util/proto/ProtoOutputStream;I)V

    .line 503
    return-void
.end method

.method private blacklist writeUidBatteryConsumersProto(Landroid/util/proto/ProtoOutputStream;I)V
    .registers 27
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "maxRawSize"    # I

    .line 510
    move-object/from16 v0, p1

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryUsageStats;->getUidBatteryConsumers()Ljava/util/List;

    move-result-object v1

    .line 512
    .local v1, "consumers":Ljava/util/List;, "Ljava/util/List<Landroid/os/UidBatteryConsumer;>;"
    new-instance v2, Landroid/os/BatteryUsageStats$$ExternalSyntheticLambda0;

    move-object/from16 v3, p0

    invoke-direct {v2, v3}, Landroid/os/BatteryUsageStats$$ExternalSyntheticLambda0;-><init>(Landroid/os/BatteryUsageStats;)V

    invoke-static {v2}, Ljava/util/Comparator;->comparingDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/Comparator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Comparator;->reversed()Ljava/util/Comparator;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 514
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 515
    .local v2, "size":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1d
    if-ge v4, v2, :cond_ea

    .line 516
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UidBatteryConsumer;

    .line 518
    .local v5, "consumer":Landroid/os/UidBatteryConsumer;
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/os/UidBatteryConsumer;->getTimeInStateMs(I)J

    move-result-wide v7

    .line 519
    .local v7, "fgMs":J
    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Landroid/os/UidBatteryConsumer;->getTimeInStateMs(I)J

    move-result-wide v9

    .line 520
    .local v9, "bgMs":J
    invoke-virtual {v5}, Landroid/os/UidBatteryConsumer;->hasStatsProtoData()Z

    move-result v11

    .line 522
    .local v11, "hasBaseData":Z
    const-wide/16 v12, 0x0

    cmp-long v14, v7, v12

    if-nez v14, :cond_49

    cmp-long v14, v9, v12

    if-nez v14, :cond_49

    if-nez v11, :cond_49

    .line 523
    move-object/from16 v18, v1

    move/from16 v21, v2

    move/from16 v22, v4

    move/from16 v2, p2

    goto/16 :goto_e0

    .line 526
    :cond_49
    const-wide v14, 0x20b00000005L

    move-wide/from16 v16, v12

    invoke-virtual {v0, v14, v15}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v12

    .line 527
    .local v12, "token":J
    nop

    .line 529
    invoke-virtual {v5}, Landroid/os/UidBatteryConsumer;->getUid()I

    move-result v6

    .line 527
    const-wide v14, 0x10500000001L

    invoke-virtual {v0, v14, v15, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 530
    if-eqz v11, :cond_6b

    .line 531
    const-wide v14, 0x10b00000002L

    invoke-virtual {v5, v0, v14, v15}, Landroid/os/UidBatteryConsumer;->writeStatsProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 534
    :cond_6b
    const-wide v14, 0x10300000003L

    invoke-virtual {v0, v14, v15, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 537
    const-wide v14, 0x10300000004L

    invoke-virtual {v0, v14, v15, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 540
    sget-object v6, Landroid/os/BatteryUsageStats;->UID_USAGE_TIME_PROCESS_STATES:[I

    array-length v14, v6

    const/4 v15, 0x0

    :goto_7f
    if-ge v15, v14, :cond_ca

    move-object/from16 v18, v1

    .end local v1    # "consumers":Ljava/util/List;, "Ljava/util/List<Landroid/os/UidBatteryConsumer;>;"
    .local v18, "consumers":Ljava/util/List;, "Ljava/util/List<Landroid/os/UidBatteryConsumer;>;"
    aget v1, v6, v15

    .line 541
    .local v1, "processState":I
    move/from16 v21, v2

    .end local v2    # "size":I
    .local v21, "size":I
    invoke-virtual {v5, v1}, Landroid/os/UidBatteryConsumer;->getTimeInProcessStateMs(I)J

    move-result-wide v2

    .line 542
    .local v2, "timeInStateMillis":J
    cmp-long v22, v2, v16

    if-gtz v22, :cond_97

    .line 543
    move/from16 v22, v4

    move-object/from16 v23, v5

    move-wide/from16 v19, v7

    move-object v8, v6

    goto :goto_ba

    .line 545
    :cond_97
    move/from16 v22, v4

    move-object/from16 v23, v5

    move-wide/from16 v19, v7

    const-wide v4, 0x20b00000005L

    move-object v8, v6

    .end local v4    # "i":I
    .end local v5    # "consumer":Landroid/os/UidBatteryConsumer;
    .end local v7    # "fgMs":J
    .local v19, "fgMs":J
    .local v22, "i":I
    .local v23, "consumer":Landroid/os/UidBatteryConsumer;
    invoke-virtual {v0, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    .line 547
    .local v6, "timeInStateToken":J
    const-wide v4, 0x10e00000001L

    invoke-virtual {v0, v4, v5, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 550
    const-wide v4, 0x10300000002L

    invoke-virtual {v0, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 554
    invoke-virtual {v0, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 540
    .end local v1    # "processState":I
    .end local v2    # "timeInStateMillis":J
    .end local v6    # "timeInStateToken":J
    :goto_ba
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v3, p0

    move-object v6, v8

    move-object/from16 v1, v18

    move-wide/from16 v7, v19

    move/from16 v2, v21

    move/from16 v4, v22

    move-object/from16 v5, v23

    goto :goto_7f

    .line 556
    .end local v18    # "consumers":Ljava/util/List;, "Ljava/util/List<Landroid/os/UidBatteryConsumer;>;"
    .end local v19    # "fgMs":J
    .end local v21    # "size":I
    .end local v22    # "i":I
    .end local v23    # "consumer":Landroid/os/UidBatteryConsumer;
    .local v1, "consumers":Ljava/util/List;, "Ljava/util/List<Landroid/os/UidBatteryConsumer;>;"
    .local v2, "size":I
    .restart local v4    # "i":I
    .restart local v5    # "consumer":Landroid/os/UidBatteryConsumer;
    .restart local v7    # "fgMs":J
    :cond_ca
    move-object/from16 v18, v1

    move/from16 v21, v2

    move/from16 v22, v4

    move-object/from16 v23, v5

    move-wide/from16 v19, v7

    .end local v1    # "consumers":Ljava/util/List;, "Ljava/util/List<Landroid/os/UidBatteryConsumer;>;"
    .end local v2    # "size":I
    .end local v4    # "i":I
    .end local v5    # "consumer":Landroid/os/UidBatteryConsumer;
    .end local v7    # "fgMs":J
    .restart local v18    # "consumers":Ljava/util/List;, "Ljava/util/List<Landroid/os/UidBatteryConsumer;>;"
    .restart local v19    # "fgMs":J
    .restart local v21    # "size":I
    .restart local v22    # "i":I
    .restart local v23    # "consumer":Landroid/os/UidBatteryConsumer;
    invoke-virtual {v0, v12, v13}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 558
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->getRawSize()I

    move-result v1

    move/from16 v2, p2

    if-lt v1, v2, :cond_e0

    .line 559
    goto :goto_f2

    .line 515
    .end local v9    # "bgMs":J
    .end local v11    # "hasBaseData":Z
    .end local v12    # "token":J
    .end local v19    # "fgMs":J
    .end local v23    # "consumer":Landroid/os/UidBatteryConsumer;
    :cond_e0
    :goto_e0
    add-int/lit8 v4, v22, 0x1

    move-object/from16 v3, p0

    move-object/from16 v1, v18

    move/from16 v2, v21

    .end local v22    # "i":I
    .restart local v4    # "i":I
    goto/16 :goto_1d

    .end local v18    # "consumers":Ljava/util/List;, "Ljava/util/List<Landroid/os/UidBatteryConsumer;>;"
    .end local v21    # "size":I
    .restart local v1    # "consumers":Ljava/util/List;, "Ljava/util/List<Landroid/os/UidBatteryConsumer;>;"
    .restart local v2    # "size":I
    :cond_ea
    move-object/from16 v18, v1

    move/from16 v21, v2

    move/from16 v22, v4

    move/from16 v2, p2

    .line 562
    .end local v1    # "consumers":Ljava/util/List;, "Ljava/util/List<Landroid/os/UidBatteryConsumer;>;"
    .end local v2    # "size":I
    .end local v4    # "i":I
    .restart local v18    # "consumers":Ljava/util/List;, "Ljava/util/List<Landroid/os/UidBatteryConsumer;>;"
    .restart local v21    # "size":I
    :goto_f2
    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 868
    iget-object v0, p0, Landroid/os/BatteryUsageStats;->mBatteryConsumersCursorWindow:Landroid/database/CursorWindow;

    invoke-static {v0}, Landroid/os/BatteryUsageStats;->onCursorWindowReleased(Landroid/database/CursorWindow;)V

    .line 869
    iget-object v0, p0, Landroid/os/BatteryUsageStats;->mBatteryConsumersCursorWindow:Landroid/database/CursorWindow;

    invoke-virtual {v0}, Landroid/database/CursorWindow;->close()V

    .line 870
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/BatteryUsageStats;->mBatteryConsumersCursorWindow:Landroid/database/CursorWindow;

    .line 871
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 345
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 21
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 590
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 591
    const-string v2, "  Estimated power use (mAh):"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 592
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 593
    const-string v2, "    Capacity: "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 594
    invoke-virtual {v0}, Landroid/os/BatteryUsageStats;->getBatteryCapacity()D

    move-result-wide v2

    invoke-static {v2, v3}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 595
    const-string v2, ", Computed drain: "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 596
    invoke-virtual {v0}, Landroid/os/BatteryUsageStats;->getConsumedPower()D

    move-result-wide v2

    invoke-static {v2, v3}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 597
    invoke-virtual {v0}, Landroid/os/BatteryUsageStats;->getDischargedPowerRange()Landroid/util/Range;

    move-result-object v10

    .line 598
    .local v10, "dischargedPowerRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Double;>;"
    const-string v2, ", actual drain: "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 599
    invoke-virtual {v10}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 600
    invoke-virtual {v10}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v10}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6f

    .line 601
    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 602
    invoke-virtual {v10}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 604
    :cond_6f
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 606
    const-string v2, "    Global"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 607
    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Landroid/os/BatteryUsageStats;->getAggregateBatteryConsumer(I)Landroid/os/AggregateBatteryConsumer;

    move-result-object v12

    .line 609
    .local v12, "deviceConsumer":Landroid/os/BatteryConsumer;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/BatteryUsageStats;->getAggregateBatteryConsumer(I)Landroid/os/AggregateBatteryConsumer;

    move-result-object v13

    .line 613
    .local v13, "appsConsumer":Landroid/os/BatteryConsumer;
    iget-object v2, v0, Landroid/os/BatteryUsageStats;->mBatteryConsumerDataLayout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget-object v14, v2, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->powerComponentIds:[I

    array-length v15, v14

    move v2, v11

    :goto_87
    if-ge v2, v15, :cond_bd

    aget v3, v14, v2

    .line 614
    .local v3, "powerComponent":I
    invoke-virtual {v12, v3}, Landroid/os/BatteryConsumer;->getConsumedPower(I)D

    move-result-wide v4

    .line 615
    .local v4, "devicePowerMah":D
    invoke-virtual {v13, v3}, Landroid/os/BatteryConsumer;->getConsumedPower(I)D

    move-result-wide v6

    .line 616
    .local v6, "appsPowerMah":D
    const-wide/16 v8, 0x0

    cmpl-double v16, v4, v8

    if-nez v16, :cond_a2

    cmpl-double v8, v6, v8

    if-nez v8, :cond_a2

    .line 617
    move/from16 v16, v2

    move-object/from16 v2, p2

    goto :goto_b9

    .line 620
    :cond_a2
    iget-object v8, v0, Landroid/os/BatteryUsageStats;->mBatteryConsumerDataLayout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    .line 621
    invoke-virtual {v8, v3}, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->getPowerComponentName(I)Ljava/lang/String;

    move-result-object v8

    .line 623
    move-object/from16 v16, v8

    invoke-virtual {v12, v3}, Landroid/os/BatteryConsumer;->getUsageDurationMillis(I)J

    move-result-wide v8

    .line 620
    move/from16 v17, v3

    move-object/from16 v3, v16

    move/from16 v16, v2

    move-object/from16 v2, p2

    .end local v3    # "powerComponent":I
    .local v17, "powerComponent":I
    invoke-direct/range {v0 .. v9}, Landroid/os/BatteryUsageStats;->printPowerComponent(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;DDJ)V

    .line 613
    .end local v4    # "devicePowerMah":D
    .end local v6    # "appsPowerMah":D
    .end local v17    # "powerComponent":I
    :goto_b9
    add-int/lit8 v3, v16, 0x1

    move v2, v3

    goto :goto_87

    .line 626
    :cond_bd
    move-object/from16 v2, p2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 627
    .local v3, "prefixPlus":Ljava/lang/String;
    iget-boolean v4, v0, Landroid/os/BatteryUsageStats;->mIncludesPowerStateData:Z

    const/4 v5, 0x3

    if-eqz v4, :cond_e7

    iget-boolean v4, v0, Landroid/os/BatteryUsageStats;->mIncludesScreenStateData:Z

    if-nez v4, :cond_e7

    .line 628
    const/4 v4, 0x0

    .line 629
    .local v4, "powerState":I
    :goto_dc
    if-ge v4, v5, :cond_e6

    .line 631
    if-eqz v4, :cond_e3

    .line 632
    invoke-direct {v0, v1, v11, v4, v3}, Landroid/os/BatteryUsageStats;->dumpPowerComponents(Ljava/io/PrintWriter;IILjava/lang/String;)V

    .line 630
    :cond_e3
    add-int/lit8 v4, v4, 0x1

    goto :goto_dc

    .end local v4    # "powerState":I
    :cond_e6
    goto :goto_116

    .line 636
    :cond_e7
    iget-boolean v4, v0, Landroid/os/BatteryUsageStats;->mIncludesPowerStateData:Z

    if-nez v4, :cond_fb

    iget-boolean v4, v0, Landroid/os/BatteryUsageStats;->mIncludesScreenStateData:Z

    if-eqz v4, :cond_fb

    .line 637
    const/4 v4, 0x0

    .line 638
    .local v4, "screenState":I
    :goto_f0
    if-ge v4, v5, :cond_fa

    .line 640
    if-eqz v4, :cond_f7

    .line 641
    invoke-direct {v0, v1, v4, v11, v3}, Landroid/os/BatteryUsageStats;->dumpPowerComponents(Ljava/io/PrintWriter;IILjava/lang/String;)V

    .line 639
    :cond_f7
    add-int/lit8 v4, v4, 0x1

    goto :goto_f0

    .end local v4    # "screenState":I
    :cond_fa
    goto :goto_116

    .line 645
    :cond_fb
    iget-boolean v4, v0, Landroid/os/BatteryUsageStats;->mIncludesPowerStateData:Z

    if-eqz v4, :cond_116

    iget-boolean v4, v0, Landroid/os/BatteryUsageStats;->mIncludesScreenStateData:Z

    if-eqz v4, :cond_116

    .line 646
    const/4 v4, 0x0

    .line 647
    .local v4, "powerState":I
    :goto_104
    if-ge v4, v5, :cond_116

    .line 649
    if-eqz v4, :cond_113

    .line 650
    const/4 v6, 0x0

    .line 651
    .local v6, "screenState":I
    :goto_109
    if-ge v6, v5, :cond_113

    .line 652
    if-eqz v6, :cond_110

    .line 653
    invoke-direct {v0, v1, v6, v4, v3}, Landroid/os/BatteryUsageStats;->dumpPowerComponents(Ljava/io/PrintWriter;IILjava/lang/String;)V

    .line 651
    :cond_110
    add-int/lit8 v6, v6, 0x1

    goto :goto_109

    .line 648
    .end local v6    # "screenState":I
    :cond_113
    add-int/lit8 v4, v4, 0x1

    goto :goto_104

    .line 660
    .end local v4    # "powerState":I
    :cond_116
    :goto_116
    invoke-virtual {v0}, Landroid/os/BatteryUsageStats;->getUidBatteryConsumers()Ljava/util/List;

    move-result-object v4

    invoke-direct {v0, v1, v2, v4}, Landroid/os/BatteryUsageStats;->dumpSortedBatteryConsumers(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/List;)V

    .line 661
    invoke-virtual {v0}, Landroid/os/BatteryUsageStats;->getUserBatteryConsumers()Ljava/util/List;

    move-result-object v4

    invoke-direct {v0, v1, v2, v4}, Landroid/os/BatteryUsageStats;->dumpSortedBatteryConsumers(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/List;)V

    .line 662
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 663
    return-void
.end method

.method public blacklist dumpToProto(Ljava/io/FileDescriptor;)V
    .registers 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .line 483
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 484
    .local v0, "proto":Landroid/util/proto/ProtoOutputStream;
    const v1, 0x7fffffff

    invoke-direct {p0, v0, v1}, Landroid/os/BatteryUsageStats;->writeStatsProto(Landroid/util/proto/ProtoOutputStream;I)V

    .line 485
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 486
    return-void
.end method

.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 875
    iget-object v0, p0, Landroid/os/BatteryUsageStats;->mBatteryConsumersCursorWindow:Landroid/database/CursorWindow;

    if-eqz v0, :cond_9

    .line 877
    iget-object v0, p0, Landroid/os/BatteryUsageStats;->mBatteryConsumersCursorWindow:Landroid/database/CursorWindow;

    invoke-virtual {v0}, Landroid/database/CursorWindow;->close()V

    .line 879
    :cond_9
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 880
    return-void
.end method

.method public blacklist getAggregateBatteryConsumer(I)Landroid/os/AggregateBatteryConsumer;
    .registers 3
    .param p1, "scope"    # I

    .line 304
    iget-object v0, p0, Landroid/os/BatteryUsageStats;->mAggregateBatteryConsumers:[Landroid/os/AggregateBatteryConsumer;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public blacklist getBatteryCapacity()D
    .registers 3

    .line 253
    iget-wide v0, p0, Landroid/os/BatteryUsageStats;->mBatteryCapacityMah:D

    return-wide v0
.end method

.method public blacklist getBatteryTimeRemainingMs()J
    .registers 3

    .line 287
    iget-wide v0, p0, Landroid/os/BatteryUsageStats;->mBatteryTimeRemainingMs:J

    return-wide v0
.end method

.method public blacklist getChargeTimeRemainingMs()J
    .registers 3

    .line 296
    iget-wide v0, p0, Landroid/os/BatteryUsageStats;->mChargeTimeRemainingMs:J

    return-wide v0
.end method

.method public blacklist getConsumedPower()D
    .registers 3

    .line 245
    iget-object v0, p0, Landroid/os/BatteryUsageStats;->mAggregateBatteryConsumers:[Landroid/os/AggregateBatteryConsumer;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 246
    invoke-virtual {v0}, Landroid/os/AggregateBatteryConsumer;->getConsumedPower()D

    move-result-wide v0

    .line 245
    return-wide v0
.end method

.method public blacklist getCustomPowerComponentNames()[Ljava/lang/String;
    .registers 2

    .line 324
    iget-object v0, p0, Landroid/os/BatteryUsageStats;->mCustomPowerComponentNames:[Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getDischargeDurationMs()J
    .registers 3

    .line 277
    iget-wide v0, p0, Landroid/os/BatteryUsageStats;->mDischargeDurationMs:J

    return-wide v0
.end method

.method public blacklist getDischargePercentage()I
    .registers 2

    .line 262
    iget v0, p0, Landroid/os/BatteryUsageStats;->mDischargePercentage:I

    return v0
.end method

.method public blacklist getDischargedPowerRange()Landroid/util/Range;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 270
    iget-wide v0, p0, Landroid/os/BatteryUsageStats;->mDischargedPowerLowerBound:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iget-wide v1, p0, Landroid/os/BatteryUsageStats;->mDischargedPowerUpperBound:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getStatsDuration()J
    .registers 3

    .line 237
    iget-wide v0, p0, Landroid/os/BatteryUsageStats;->mStatsDurationMs:J

    return-wide v0
.end method

.method public blacklist getStatsEndTimestamp()J
    .registers 3

    .line 227
    iget-wide v0, p0, Landroid/os/BatteryUsageStats;->mStatsEndTimestampMs:J

    return-wide v0
.end method

.method public blacklist getStatsProto()[B
    .registers 11

    .line 451
    const v0, 0x1339e

    .line 453
    .local v0, "maxRawSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    const/4 v2, 0x3

    const v3, 0xafc8

    if-ge v1, v2, :cond_2d

    .line 454
    new-instance v2, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v2}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 455
    .local v2, "proto":Landroid/util/proto/ProtoOutputStream;
    invoke-direct {p0, v2, v0}, Landroid/os/BatteryUsageStats;->writeStatsProto(Landroid/util/proto/ProtoOutputStream;I)V

    .line 457
    invoke-virtual {v2}, Landroid/util/proto/ProtoOutputStream;->getRawSize()I

    move-result v4

    .line 458
    .local v4, "rawSize":I
    invoke-virtual {v2}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object v5

    .line 460
    .local v5, "protoOutput":[B
    array-length v6, v5

    if-gt v6, v3, :cond_1e

    .line 461
    return-object v5

    .line 465
    :cond_1e
    const-wide/32 v6, 0xafc8

    int-to-long v8, v4

    mul-long/2addr v8, v6

    array-length v3, v5

    int-to-long v6, v3

    div-long/2addr v8, v6

    const-wide/16 v6, 0x400

    sub-long/2addr v8, v6

    long-to-int v0, v8

    .line 453
    .end local v2    # "proto":Landroid/util/proto/ProtoOutputStream;
    .end local v4    # "rawSize":I
    .end local v5    # "protoOutput":[B
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 473
    .end local v1    # "i":I
    :cond_2d
    new-instance v1, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v1}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 474
    .local v1, "proto":Landroid/util/proto/ProtoOutputStream;
    invoke-direct {p0, v1, v3}, Landroid/os/BatteryUsageStats;->writeStatsProto(Landroid/util/proto/ProtoOutputStream;I)V

    .line 475
    invoke-virtual {v1}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object v2

    return-object v2
.end method

.method public blacklist getStatsStartTimestamp()J
    .registers 3

    .line 219
    iget-wide v0, p0, Landroid/os/BatteryUsageStats;->mStatsStartTimestampMs:J

    return-wide v0
.end method

.method public blacklist getUidBatteryConsumers()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/UidBatteryConsumer;",
            ">;"
        }
    .end annotation

    .line 309
    iget-object v0, p0, Landroid/os/BatteryUsageStats;->mUidBatteryConsumers:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getUserBatteryConsumers()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/UserBatteryConsumer;",
            ">;"
        }
    .end annotation

    .line 314
    iget-object v0, p0, Landroid/os/BatteryUsageStats;->mUserBatteryConsumers:Ljava/util/List;

    return-object v0
.end method

.method public blacklist isProcessStateDataIncluded()Z
    .registers 2

    .line 328
    iget-boolean v0, p0, Landroid/os/BatteryUsageStats;->mIncludesProcessStateData:Z

    return v0
.end method

.method public blacklist iterateBatteryStatsHistory()Lcom/android/internal/os/BatteryStatsHistoryIterator;
    .registers 8

    .line 336
    iget-object v0, p0, Landroid/os/BatteryUsageStats;->mBatteryStatsHistory:Lcom/android/internal/os/BatteryStatsHistory;

    if-eqz v0, :cond_10

    .line 340
    new-instance v1, Lcom/android/internal/os/BatteryStatsHistoryIterator;

    iget-object v2, p0, Landroid/os/BatteryUsageStats;->mBatteryStatsHistory:Lcom/android/internal/os/BatteryStatsHistory;

    const-wide/16 v3, 0x0

    const-wide/16 v5, -0x1

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsHistoryIterator;-><init>(Lcom/android/internal/os/BatteryStatsHistory;JJ)V

    return-object v1

    .line 337
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Battery history was not requested in the BatteryUsageStatsQuery"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 884
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 885
    .local v0, "sw":Ljava/io/StringWriter;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 886
    .local v1, "pw":Ljava/io/PrintWriter;
    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Landroid/os/BatteryUsageStats;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 887
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 888
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 410
    iget-wide v0, p0, Landroid/os/BatteryUsageStats;->mStatsStartTimestampMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 411
    iget-wide v0, p0, Landroid/os/BatteryUsageStats;->mStatsEndTimestampMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 412
    iget-wide v0, p0, Landroid/os/BatteryUsageStats;->mStatsDurationMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 413
    iget-wide v0, p0, Landroid/os/BatteryUsageStats;->mBatteryCapacityMah:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 414
    iget v0, p0, Landroid/os/BatteryUsageStats;->mDischargePercentage:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 415
    iget-wide v0, p0, Landroid/os/BatteryUsageStats;->mDischargedPowerLowerBound:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 416
    iget-wide v0, p0, Landroid/os/BatteryUsageStats;->mDischargedPowerUpperBound:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 417
    iget-wide v0, p0, Landroid/os/BatteryUsageStats;->mDischargeDurationMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 418
    iget-wide v0, p0, Landroid/os/BatteryUsageStats;->mBatteryTimeRemainingMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 419
    iget-wide v0, p0, Landroid/os/BatteryUsageStats;->mChargeTimeRemainingMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 420
    iget-object v0, p0, Landroid/os/BatteryUsageStats;->mCustomPowerComponentNames:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 421
    iget-boolean v0, p0, Landroid/os/BatteryUsageStats;->mIncludesProcessStateData:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 422
    iget-boolean v0, p0, Landroid/os/BatteryUsageStats;->mIncludesScreenStateData:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 423
    iget-boolean v0, p0, Landroid/os/BatteryUsageStats;->mIncludesPowerStateData:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 425
    iget-object v0, p0, Landroid/os/BatteryUsageStats;->mBatteryConsumersCursorWindow:Landroid/database/CursorWindow;

    invoke-virtual {v0, p1, p2}, Landroid/database/CursorWindow;->writeToParcel(Landroid/os/Parcel;I)V

    .line 427
    iget-object v0, p0, Landroid/os/BatteryUsageStats;->mBatteryStatsHistory:Lcom/android/internal/os/BatteryStatsHistory;

    if-eqz v0, :cond_5b

    .line 428
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 429
    iget-object v0, p0, Landroid/os/BatteryUsageStats;->mBatteryStatsHistory:Lcom/android/internal/os/BatteryStatsHistory;

    iget-wide v1, p0, Landroid/os/BatteryUsageStats;->mPreferredHistoryDurationMs:J

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/internal/os/BatteryStatsHistory;->writeToBatteryUsageStatsParcel(Landroid/os/Parcel;J)V

    goto :goto_5f

    .line 431
    :cond_5b
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 433
    :goto_5f
    return-void
.end method

.method public blacklist writeXml(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .registers 7
    .param p1, "serializer"    # Lcom/android/modules/utils/TypedXmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 744
    const/4 v0, 0x0

    const-string v1, "battery_usage_stats"

    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 746
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    iget-object v3, p0, Landroid/os/BatteryUsageStats;->mCustomPowerComponentNames:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_29

    .line 747
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "custom_component_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/os/BatteryUsageStats;->mCustomPowerComponentNames:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-interface {p1, v0, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 746
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 750
    .end local v2    # "i":I
    :cond_29
    const-string/jumbo v2, "includes_proc_state_data"

    iget-boolean v3, p0, Landroid/os/BatteryUsageStats;->mIncludesProcessStateData:Z

    invoke-interface {p1, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 752
    const-string/jumbo v2, "includes_screen_state_data"

    iget-boolean v3, p0, Landroid/os/BatteryUsageStats;->mIncludesScreenStateData:Z

    invoke-interface {p1, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 754
    const-string/jumbo v2, "includes_power_state_data"

    iget-boolean v3, p0, Landroid/os/BatteryUsageStats;->mIncludesPowerStateData:Z

    invoke-interface {p1, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 756
    const-string/jumbo v2, "start_timestamp"

    iget-wide v3, p0, Landroid/os/BatteryUsageStats;->mStatsStartTimestampMs:J

    invoke-interface {p1, v0, v2, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 757
    const-string v2, "end_timestamp"

    iget-wide v3, p0, Landroid/os/BatteryUsageStats;->mStatsEndTimestampMs:J

    invoke-interface {p1, v0, v2, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 758
    const-string v2, "duration"

    iget-wide v3, p0, Landroid/os/BatteryUsageStats;->mStatsDurationMs:J

    invoke-interface {p1, v0, v2, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 759
    const-string v2, "battery_capacity"

    iget-wide v3, p0, Landroid/os/BatteryUsageStats;->mBatteryCapacityMah:D

    invoke-interface {p1, v0, v2, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeDouble(Ljava/lang/String;Ljava/lang/String;D)Lorg/xmlpull/v1/XmlSerializer;

    .line 760
    const-string v2, "discharge_pct"

    iget v3, p0, Landroid/os/BatteryUsageStats;->mDischargePercentage:I

    invoke-interface {p1, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 761
    const-string v2, "discharge_lower"

    iget-wide v3, p0, Landroid/os/BatteryUsageStats;->mDischargedPowerLowerBound:D

    invoke-interface {p1, v0, v2, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeDouble(Ljava/lang/String;Ljava/lang/String;D)Lorg/xmlpull/v1/XmlSerializer;

    .line 762
    const-string v2, "discharge_upper"

    iget-wide v3, p0, Landroid/os/BatteryUsageStats;->mDischargedPowerUpperBound:D

    invoke-interface {p1, v0, v2, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeDouble(Ljava/lang/String;Ljava/lang/String;D)Lorg/xmlpull/v1/XmlSerializer;

    .line 763
    const-string v2, "discharge_duration"

    iget-wide v3, p0, Landroid/os/BatteryUsageStats;->mDischargeDurationMs:J

    invoke-interface {p1, v0, v2, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 764
    const-string v2, "battery_remaining"

    iget-wide v3, p0, Landroid/os/BatteryUsageStats;->mBatteryTimeRemainingMs:J

    invoke-interface {p1, v0, v2, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 765
    const-string v2, "charge_remaining"

    iget-wide v3, p0, Landroid/os/BatteryUsageStats;->mChargeTimeRemainingMs:J

    invoke-interface {p1, v0, v2, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 767
    const/4 v2, 0x0

    .local v2, "scope":I
    :goto_89
    const/4 v3, 0x2

    if-ge v2, v3, :cond_96

    .line 769
    iget-object v3, p0, Landroid/os/BatteryUsageStats;->mAggregateBatteryConsumers:[Landroid/os/AggregateBatteryConsumer;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1, v2}, Landroid/os/AggregateBatteryConsumer;->writeToXml(Lcom/android/modules/utils/TypedXmlSerializer;I)V

    .line 768
    add-int/lit8 v2, v2, 0x1

    goto :goto_89

    .line 771
    .end local v2    # "scope":I
    :cond_96
    iget-object v2, p0, Landroid/os/BatteryUsageStats;->mUidBatteryConsumers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_ac

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UidBatteryConsumer;

    .line 772
    .local v3, "consumer":Landroid/os/UidBatteryConsumer;
    invoke-virtual {v3, p1}, Landroid/os/UidBatteryConsumer;->writeToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 773
    .end local v3    # "consumer":Landroid/os/UidBatteryConsumer;
    goto :goto_9c

    .line 774
    :cond_ac
    iget-object v2, p0, Landroid/os/BatteryUsageStats;->mUserBatteryConsumers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserBatteryConsumer;

    .line 775
    .local v3, "consumer":Landroid/os/UserBatteryConsumer;
    invoke-virtual {v3, p1}, Landroid/os/UserBatteryConsumer;->writeToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 776
    .end local v3    # "consumer":Landroid/os/UserBatteryConsumer;
    goto :goto_b2

    .line 777
    :cond_c2
    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 778
    return-void
.end method
