.class public final Landroid/os/BatteryUsageStats$Builder;
.super Ljava/lang/Object;
.source "BatteryUsageStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryUsageStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mAggregateBatteryConsumersBuilders:[Landroid/os/AggregateBatteryConsumer$Builder;

.field private blacklist mBatteryCapacityMah:D

.field private final blacklist mBatteryConsumerDataLayout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

.field private final blacklist mBatteryConsumersCursorWindow:Landroid/database/CursorWindow;

.field private blacklist mBatteryStatsHistory:Lcom/android/internal/os/BatteryStatsHistory;

.field private blacklist mBatteryTimeRemainingMs:J

.field private blacklist mChargeTimeRemainingMs:J

.field private final blacklist mCustomPowerComponentNames:[Ljava/lang/String;

.field private blacklist mDischargeDurationMs:J

.field private blacklist mDischargePercentage:I

.field private blacklist mDischargedPowerLowerBoundMah:D

.field private blacklist mDischargedPowerUpperBoundMah:D

.field private final blacklist mIncludesPowerStateData:Z

.field private final blacklist mIncludesProcessStateData:Z

.field private final blacklist mIncludesScreenStateData:Z

.field private final blacklist mMinConsumedPowerThreshold:D

.field private blacklist mPreferredHistoryDurationMs:J

.field private blacklist mStatsDurationMs:J

.field private blacklist mStatsEndTimestampMs:J

.field private blacklist mStatsStartTimestampMs:J

.field private final blacklist mUidBatteryConsumerBuilders:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/UidBatteryConsumer$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mUserBatteryConsumerBuilders:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/UserBatteryConsumer$Builder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAggregateBatteryConsumersBuilders(Landroid/os/BatteryUsageStats$Builder;)[Landroid/os/AggregateBatteryConsumer$Builder;
    .registers 1

    iget-object p0, p0, Landroid/os/BatteryUsageStats$Builder;->mAggregateBatteryConsumersBuilders:[Landroid/os/AggregateBatteryConsumer$Builder;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBatteryCapacityMah(Landroid/os/BatteryUsageStats$Builder;)D
    .registers 3

    iget-wide v0, p0, Landroid/os/BatteryUsageStats$Builder;->mBatteryCapacityMah:D

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBatteryConsumerDataLayout(Landroid/os/BatteryUsageStats$Builder;)Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;
    .registers 1

    iget-object p0, p0, Landroid/os/BatteryUsageStats$Builder;->mBatteryConsumerDataLayout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBatteryConsumersCursorWindow(Landroid/os/BatteryUsageStats$Builder;)Landroid/database/CursorWindow;
    .registers 1

    iget-object p0, p0, Landroid/os/BatteryUsageStats$Builder;->mBatteryConsumersCursorWindow:Landroid/database/CursorWindow;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBatteryStatsHistory(Landroid/os/BatteryUsageStats$Builder;)Lcom/android/internal/os/BatteryStatsHistory;
    .registers 1

    iget-object p0, p0, Landroid/os/BatteryUsageStats$Builder;->mBatteryStatsHistory:Lcom/android/internal/os/BatteryStatsHistory;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBatteryTimeRemainingMs(Landroid/os/BatteryUsageStats$Builder;)J
    .registers 3

    iget-wide v0, p0, Landroid/os/BatteryUsageStats$Builder;->mBatteryTimeRemainingMs:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmChargeTimeRemainingMs(Landroid/os/BatteryUsageStats$Builder;)J
    .registers 3

    iget-wide v0, p0, Landroid/os/BatteryUsageStats$Builder;->mChargeTimeRemainingMs:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCustomPowerComponentNames(Landroid/os/BatteryUsageStats$Builder;)[Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/os/BatteryUsageStats$Builder;->mCustomPowerComponentNames:[Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDischargeDurationMs(Landroid/os/BatteryUsageStats$Builder;)J
    .registers 3

    iget-wide v0, p0, Landroid/os/BatteryUsageStats$Builder;->mDischargeDurationMs:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDischargePercentage(Landroid/os/BatteryUsageStats$Builder;)I
    .registers 1

    iget p0, p0, Landroid/os/BatteryUsageStats$Builder;->mDischargePercentage:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDischargedPowerLowerBoundMah(Landroid/os/BatteryUsageStats$Builder;)D
    .registers 3

    iget-wide v0, p0, Landroid/os/BatteryUsageStats$Builder;->mDischargedPowerLowerBoundMah:D

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDischargedPowerUpperBoundMah(Landroid/os/BatteryUsageStats$Builder;)D
    .registers 3

    iget-wide v0, p0, Landroid/os/BatteryUsageStats$Builder;->mDischargedPowerUpperBoundMah:D

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIncludesPowerStateData(Landroid/os/BatteryUsageStats$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/os/BatteryUsageStats$Builder;->mIncludesPowerStateData:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIncludesProcessStateData(Landroid/os/BatteryUsageStats$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/os/BatteryUsageStats$Builder;->mIncludesProcessStateData:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIncludesScreenStateData(Landroid/os/BatteryUsageStats$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/os/BatteryUsageStats$Builder;->mIncludesScreenStateData:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPreferredHistoryDurationMs(Landroid/os/BatteryUsageStats$Builder;)J
    .registers 3

    iget-wide v0, p0, Landroid/os/BatteryUsageStats$Builder;->mPreferredHistoryDurationMs:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStatsEndTimestampMs(Landroid/os/BatteryUsageStats$Builder;)J
    .registers 3

    iget-wide v0, p0, Landroid/os/BatteryUsageStats$Builder;->mStatsEndTimestampMs:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStatsStartTimestampMs(Landroid/os/BatteryUsageStats$Builder;)J
    .registers 3

    iget-wide v0, p0, Landroid/os/BatteryUsageStats$Builder;->mStatsStartTimestampMs:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUidBatteryConsumerBuilders(Landroid/os/BatteryUsageStats$Builder;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Landroid/os/BatteryUsageStats$Builder;->mUidBatteryConsumerBuilders:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUserBatteryConsumerBuilders(Landroid/os/BatteryUsageStats$Builder;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Landroid/os/BatteryUsageStats$Builder;->mUserBatteryConsumerBuilders:Landroid/util/SparseArray;

    return-object p0
.end method

.method public constructor blacklist <init>([Ljava/lang/String;)V
    .registers 9
    .param p1, "customPowerComponentNames"    # [Ljava/lang/String;

    .line 923
    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    .end local p1    # "customPowerComponentNames":[Ljava/lang/String;
    .local v1, "customPowerComponentNames":[Ljava/lang/String;
    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryUsageStats$Builder;-><init>([Ljava/lang/String;ZZZD)V

    .line 924
    return-void
.end method

.method public constructor blacklist <init>([Ljava/lang/String;ZZZD)V
    .registers 14
    .param p1, "customPowerComponentNames"    # [Ljava/lang/String;
    .param p2, "includeProcessStateData"    # Z
    .param p3, "includeScreenStateData"    # Z
    .param p4, "includesPowerStateData"    # Z
    .param p5, "minConsumedPowerThreshold"    # D

    .line 928
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 905
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/os/BatteryUsageStats$Builder;->mStatsDurationMs:J

    .line 911
    iput-wide v0, p0, Landroid/os/BatteryUsageStats$Builder;->mBatteryTimeRemainingMs:J

    .line 912
    iput-wide v0, p0, Landroid/os/BatteryUsageStats$Builder;->mChargeTimeRemainingMs:J

    .line 913
    const/4 v0, 0x2

    new-array v1, v0, [Landroid/os/AggregateBatteryConsumer$Builder;

    iput-object v1, p0, Landroid/os/BatteryUsageStats$Builder;->mAggregateBatteryConsumersBuilders:[Landroid/os/AggregateBatteryConsumer$Builder;

    .line 915
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Landroid/os/BatteryUsageStats$Builder;->mUidBatteryConsumerBuilders:Landroid/util/SparseArray;

    .line 917
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Landroid/os/BatteryUsageStats$Builder;->mUserBatteryConsumerBuilders:Landroid/util/SparseArray;

    .line 929
    new-instance v1, Landroid/database/CursorWindow;

    const/4 v2, 0x0

    const-wide/32 v3, 0x1312d00

    invoke-direct {v1, v2, v3, v4}, Landroid/database/CursorWindow;-><init>(Ljava/lang/String;J)V

    iput-object v1, p0, Landroid/os/BatteryUsageStats$Builder;->mBatteryConsumersCursorWindow:Landroid/database/CursorWindow;

    .line 931
    iget-object v1, p0, Landroid/os/BatteryUsageStats$Builder;->mBatteryConsumersCursorWindow:Landroid/database/CursorWindow;

    invoke-static {v1}, Landroid/os/BatteryUsageStats;->-$$Nest$smonCursorWindowAllocated(Landroid/database/CursorWindow;)V

    .line 932
    invoke-static {p1, p2, p3, p4}, Landroid/os/BatteryConsumer;->createBatteryConsumerDataLayout([Ljava/lang/String;ZZZ)Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    move-result-object v1

    iput-object v1, p0, Landroid/os/BatteryUsageStats$Builder;->mBatteryConsumerDataLayout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    .line 935
    iget-object v1, p0, Landroid/os/BatteryUsageStats$Builder;->mBatteryConsumersCursorWindow:Landroid/database/CursorWindow;

    iget-object v2, p0, Landroid/os/BatteryUsageStats$Builder;->mBatteryConsumerDataLayout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget v2, v2, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->columnCount:I

    invoke-virtual {v1, v2}, Landroid/database/CursorWindow;->setNumColumns(I)Z

    .line 937
    iput-object p1, p0, Landroid/os/BatteryUsageStats$Builder;->mCustomPowerComponentNames:[Ljava/lang/String;

    .line 938
    iput-boolean p2, p0, Landroid/os/BatteryUsageStats$Builder;->mIncludesProcessStateData:Z

    .line 939
    iput-boolean p3, p0, Landroid/os/BatteryUsageStats$Builder;->mIncludesScreenStateData:Z

    .line 940
    iput-boolean p4, p0, Landroid/os/BatteryUsageStats$Builder;->mIncludesPowerStateData:Z

    .line 941
    iput-wide p5, p0, Landroid/os/BatteryUsageStats$Builder;->mMinConsumedPowerThreshold:D

    .line 942
    const/4 v1, 0x0

    .local v1, "scope":I
    :goto_48
    if-ge v1, v0, :cond_60

    .line 943
    iget-object v2, p0, Landroid/os/BatteryUsageStats$Builder;->mBatteryConsumersCursorWindow:Landroid/database/CursorWindow;

    iget-object v3, p0, Landroid/os/BatteryUsageStats$Builder;->mBatteryConsumerDataLayout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    .line 944
    invoke-static {v2, v3}, Landroid/os/BatteryConsumer$BatteryConsumerData;->create(Landroid/database/CursorWindow;Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;)Landroid/os/BatteryConsumer$BatteryConsumerData;

    move-result-object v2

    .line 946
    .local v2, "data":Landroid/os/BatteryConsumer$BatteryConsumerData;
    iget-object v3, p0, Landroid/os/BatteryUsageStats$Builder;->mAggregateBatteryConsumersBuilders:[Landroid/os/AggregateBatteryConsumer$Builder;

    new-instance v4, Landroid/os/AggregateBatteryConsumer$Builder;

    iget-wide v5, p0, Landroid/os/BatteryUsageStats$Builder;->mMinConsumedPowerThreshold:D

    invoke-direct {v4, v2, v1, v5, v6}, Landroid/os/AggregateBatteryConsumer$Builder;-><init>(Landroid/os/BatteryConsumer$BatteryConsumerData;ID)V

    aput-object v4, v3, v1

    .line 942
    .end local v2    # "data":Landroid/os/BatteryConsumer$BatteryConsumerData;
    add-int/lit8 v1, v1, 0x1

    goto :goto_48

    .line 950
    .end local v1    # "scope":I
    :cond_60
    return-void
.end method


# virtual methods
.method public blacklist add(Landroid/os/BatteryUsageStats;)Landroid/os/BatteryUsageStats$Builder;
    .registers 6
    .param p1, "stats"    # Landroid/os/BatteryUsageStats;

    .line 1179
    iget-object v0, p0, Landroid/os/BatteryUsageStats$Builder;->mCustomPowerComponentNames:[Ljava/lang/String;

    invoke-static {p1}, Landroid/os/BatteryUsageStats;->-$$Nest$fgetmCustomPowerComponentNames(Landroid/os/BatteryUsageStats;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_de

    .line 1184
    iget-boolean v0, p0, Landroid/os/BatteryUsageStats$Builder;->mIncludesProcessStateData:Z

    if-eqz v0, :cond_1f

    invoke-static {p1}, Landroid/os/BatteryUsageStats;->-$$Nest$fgetmIncludesProcessStateData(Landroid/os/BatteryUsageStats;)Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_1f

    .line 1185
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Added BatteryUsageStats does not include process state data"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1189
    :cond_1f
    :goto_1f
    iget-object v0, p0, Landroid/os/BatteryUsageStats$Builder;->mUserBatteryConsumerBuilders:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_d6

    .line 1190
    invoke-virtual {p1}, Landroid/os/BatteryUsageStats;->getUserBatteryConsumers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d6

    .line 1195
    iget-wide v0, p0, Landroid/os/BatteryUsageStats$Builder;->mDischargedPowerLowerBoundMah:D

    invoke-static {p1}, Landroid/os/BatteryUsageStats;->-$$Nest$fgetmDischargedPowerLowerBound(Landroid/os/BatteryUsageStats;)D

    move-result-wide v2

    add-double/2addr v0, v2

    iput-wide v0, p0, Landroid/os/BatteryUsageStats$Builder;->mDischargedPowerLowerBoundMah:D

    .line 1196
    iget-wide v0, p0, Landroid/os/BatteryUsageStats$Builder;->mDischargedPowerUpperBoundMah:D

    invoke-static {p1}, Landroid/os/BatteryUsageStats;->-$$Nest$fgetmDischargedPowerUpperBound(Landroid/os/BatteryUsageStats;)D

    move-result-wide v2

    add-double/2addr v0, v2

    iput-wide v0, p0, Landroid/os/BatteryUsageStats$Builder;->mDischargedPowerUpperBoundMah:D

    .line 1197
    iget v0, p0, Landroid/os/BatteryUsageStats$Builder;->mDischargePercentage:I

    invoke-static {p1}, Landroid/os/BatteryUsageStats;->-$$Nest$fgetmDischargePercentage(Landroid/os/BatteryUsageStats;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/os/BatteryUsageStats$Builder;->mDischargePercentage:I

    .line 1198
    iget-wide v0, p0, Landroid/os/BatteryUsageStats$Builder;->mDischargeDurationMs:J

    invoke-static {p1}, Landroid/os/BatteryUsageStats;->-$$Nest$fgetmDischargeDurationMs(Landroid/os/BatteryUsageStats;)J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/os/BatteryUsageStats$Builder;->mDischargeDurationMs:J

    .line 1200
    invoke-virtual {p0}, Landroid/os/BatteryUsageStats$Builder;->getStatsDuration()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/os/BatteryUsageStats;->getStatsDuration()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/os/BatteryUsageStats$Builder;->mStatsDurationMs:J

    .line 1202
    iget-wide v0, p0, Landroid/os/BatteryUsageStats$Builder;->mStatsStartTimestampMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_72

    invoke-static {p1}, Landroid/os/BatteryUsageStats;->-$$Nest$fgetmStatsStartTimestampMs(Landroid/os/BatteryUsageStats;)J

    move-result-wide v0

    iget-wide v2, p0, Landroid/os/BatteryUsageStats$Builder;->mStatsStartTimestampMs:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_78

    .line 1204
    :cond_72
    invoke-static {p1}, Landroid/os/BatteryUsageStats;->-$$Nest$fgetmStatsStartTimestampMs(Landroid/os/BatteryUsageStats;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/BatteryUsageStats$Builder;->mStatsStartTimestampMs:J

    .line 1207
    :cond_78
    invoke-static {p1}, Landroid/os/BatteryUsageStats;->-$$Nest$fgetmStatsEndTimestampMs(Landroid/os/BatteryUsageStats;)J

    move-result-wide v0

    iget-wide v2, p0, Landroid/os/BatteryUsageStats$Builder;->mStatsEndTimestampMs:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_84

    const/4 v0, 0x1

    goto :goto_85

    :cond_84
    const/4 v0, 0x0

    .line 1208
    .local v0, "addingLaterSnapshot":Z
    :goto_85
    if-eqz v0, :cond_8d

    .line 1209
    invoke-static {p1}, Landroid/os/BatteryUsageStats;->-$$Nest$fgetmStatsEndTimestampMs(Landroid/os/BatteryUsageStats;)J

    move-result-wide v1

    iput-wide v1, p0, Landroid/os/BatteryUsageStats$Builder;->mStatsEndTimestampMs:J

    .line 1212
    :cond_8d
    const/4 v1, 0x0

    .local v1, "scope":I
    :goto_8e
    const/4 v2, 0x2

    if-ge v1, v2, :cond_a1

    .line 1213
    invoke-virtual {p0, v1}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object v2

    invoke-static {p1}, Landroid/os/BatteryUsageStats;->-$$Nest$fgetmAggregateBatteryConsumers(Landroid/os/BatteryUsageStats;)[Landroid/os/AggregateBatteryConsumer;

    move-result-object v3

    aget-object v3, v3, v1

    .line 1214
    invoke-virtual {v2, v3}, Landroid/os/AggregateBatteryConsumer$Builder;->add(Landroid/os/AggregateBatteryConsumer;)V

    .line 1212
    add-int/lit8 v1, v1, 0x1

    goto :goto_8e

    .line 1217
    .end local v1    # "scope":I
    :cond_a1
    invoke-virtual {p1}, Landroid/os/BatteryUsageStats;->getUidBatteryConsumers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UidBatteryConsumer;

    .line 1218
    .local v2, "consumer":Landroid/os/UidBatteryConsumer;
    invoke-virtual {v2}, Landroid/os/UidBatteryConsumer;->getUid()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/os/BatteryUsageStats$Builder;->getOrCreateUidBatteryConsumerBuilder(I)Landroid/os/UidBatteryConsumer$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/UidBatteryConsumer$Builder;->add(Landroid/os/UidBatteryConsumer;)Landroid/os/UidBatteryConsumer$Builder;

    .line 1219
    .end local v2    # "consumer":Landroid/os/UidBatteryConsumer;
    goto :goto_a9

    .line 1221
    :cond_c1
    if-eqz v0, :cond_d5

    .line 1222
    invoke-static {p1}, Landroid/os/BatteryUsageStats;->-$$Nest$fgetmBatteryCapacityMah(Landroid/os/BatteryUsageStats;)D

    move-result-wide v1

    iput-wide v1, p0, Landroid/os/BatteryUsageStats$Builder;->mBatteryCapacityMah:D

    .line 1223
    invoke-static {p1}, Landroid/os/BatteryUsageStats;->-$$Nest$fgetmBatteryTimeRemainingMs(Landroid/os/BatteryUsageStats;)J

    move-result-wide v1

    iput-wide v1, p0, Landroid/os/BatteryUsageStats$Builder;->mBatteryTimeRemainingMs:J

    .line 1224
    invoke-static {p1}, Landroid/os/BatteryUsageStats;->-$$Nest$fgetmChargeTimeRemainingMs(Landroid/os/BatteryUsageStats;)J

    move-result-wide v1

    iput-wide v1, p0, Landroid/os/BatteryUsageStats$Builder;->mChargeTimeRemainingMs:J

    .line 1227
    :cond_d5
    return-object p0

    .line 1191
    .end local v0    # "addingLaterSnapshot":Z
    :cond_d6
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Combining UserBatteryConsumers is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1180
    :cond_de
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "BatteryUsageStats have different custom power components"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist addDischargeDurationMs(J)Landroid/os/BatteryUsageStats$Builder;
    .registers 5
    .param p1, "durationMs"    # J

    .line 1065
    iget-wide v0, p0, Landroid/os/BatteryUsageStats$Builder;->mDischargeDurationMs:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Landroid/os/BatteryUsageStats$Builder;->mDischargeDurationMs:J

    .line 1066
    return-object p0
.end method

.method public blacklist addDischargePercentage(I)Landroid/os/BatteryUsageStats$Builder;
    .registers 3
    .param p1, "dischargePercentage"    # I

    .line 1045
    iget v0, p0, Landroid/os/BatteryUsageStats$Builder;->mDischargePercentage:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/os/BatteryUsageStats$Builder;->mDischargePercentage:I

    .line 1046
    return-object p0
.end method

.method public blacklist addDischargedPowerRange(DD)Landroid/os/BatteryUsageStats$Builder;
    .registers 7
    .param p1, "dischargedPowerLowerBoundMah"    # D
    .param p3, "dischargedPowerUpperBoundMah"    # D

    .line 1055
    iget-wide v0, p0, Landroid/os/BatteryUsageStats$Builder;->mDischargedPowerLowerBoundMah:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Landroid/os/BatteryUsageStats$Builder;->mDischargedPowerLowerBoundMah:D

    .line 1056
    iget-wide v0, p0, Landroid/os/BatteryUsageStats$Builder;->mDischargedPowerUpperBoundMah:D

    add-double/2addr v0, p3

    iput-wide v0, p0, Landroid/os/BatteryUsageStats$Builder;->mDischargedPowerUpperBoundMah:D

    .line 1057
    return-object p0
.end method

.method public blacklist build()Landroid/os/BatteryUsageStats;
    .registers 3

    .line 981
    iget-object v0, p0, Landroid/os/BatteryUsageStats$Builder;->mBatteryConsumersCursorWindow:Landroid/database/CursorWindow;

    if-eqz v0, :cond_b

    .line 984
    new-instance v0, Landroid/os/BatteryUsageStats;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/os/BatteryUsageStats;-><init>(Landroid/os/BatteryUsageStats$Builder;Landroid/os/BatteryUsageStats-IA;)V

    return-object v0

    .line 982
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Builder has been discarded"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist discard()V
    .registers 2

    .line 992
    iget-object v0, p0, Landroid/os/BatteryUsageStats$Builder;->mBatteryConsumersCursorWindow:Landroid/database/CursorWindow;

    invoke-virtual {v0}, Landroid/database/CursorWindow;->close()V

    .line 993
    iget-object v0, p0, Landroid/os/BatteryUsageStats$Builder;->mBatteryConsumersCursorWindow:Landroid/database/CursorWindow;

    invoke-static {v0}, Landroid/os/BatteryUsageStats;->-$$Nest$smonCursorWindowReleased(Landroid/database/CursorWindow;)V

    .line 994
    return-void
.end method

.method blacklist dump(Ljava/io/PrintWriter;)V
    .registers 10
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 1234
    iget-object v0, p0, Landroid/os/BatteryUsageStats$Builder;->mBatteryConsumersCursorWindow:Landroid/database/CursorWindow;

    invoke-virtual {v0}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v0

    .line 1235
    .local v0, "numRows":I
    iget-object v1, p0, Landroid/os/BatteryUsageStats$Builder;->mBatteryConsumerDataLayout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget v1, v1, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->columnCount:I

    .line 1236
    .local v1, "numColumns":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    if-ge v2, v0, :cond_6a

    .line 1237
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1238
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_13
    if-ge v4, v1, :cond_5b

    .line 1239
    iget-object v5, p0, Landroid/os/BatteryUsageStats$Builder;->mBatteryConsumersCursorWindow:Landroid/database/CursorWindow;

    invoke-virtual {v5, v2, v4}, Landroid/database/CursorWindow;->getType(II)I

    move-result v5

    .line 1240
    .local v5, "type":I
    const-string v6, ", "

    packed-switch v5, :pswitch_data_6c

    goto :goto_58

    .line 1254
    :pswitch_21
    const-string v6, "BLOB, "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_58

    .line 1251
    :pswitch_27
    iget-object v7, p0, Landroid/os/BatteryUsageStats$Builder;->mBatteryConsumersCursorWindow:Landroid/database/CursorWindow;

    invoke-virtual {v7, v2, v4}, Landroid/database/CursorWindow;->getString(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1252
    goto :goto_58

    .line 1248
    :pswitch_35
    iget-object v7, p0, Landroid/os/BatteryUsageStats$Builder;->mBatteryConsumersCursorWindow:Landroid/database/CursorWindow;

    invoke-virtual {v7, v2, v4}, Landroid/database/CursorWindow;->getFloat(II)F

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1249
    goto :goto_58

    .line 1245
    :pswitch_43
    iget-object v7, p0, Landroid/os/BatteryUsageStats$Builder;->mBatteryConsumersCursorWindow:Landroid/database/CursorWindow;

    invoke-virtual {v7, v2, v4}, Landroid/database/CursorWindow;->getInt(II)I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1246
    goto :goto_58

    .line 1242
    :pswitch_51
    const-string/jumbo v6, "null, "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1243
    nop

    .line 1238
    .end local v5    # "type":I
    :goto_58
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 1258
    .end local v4    # "j":I
    :cond_5b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1259
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1236
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 1261
    .end local v2    # "i":I
    :cond_6a
    return-void

    nop

    :pswitch_data_6c
    .packed-switch 0x0
        :pswitch_51
        :pswitch_43
        :pswitch_35
        :pswitch_27
        :pswitch_21
    .end packed-switch
.end method

.method public blacklist getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;
    .registers 3
    .param p1, "scope"    # I

    .line 1107
    iget-object v0, p0, Landroid/os/BatteryUsageStats$Builder;->mAggregateBatteryConsumersBuilders:[Landroid/os/AggregateBatteryConsumer$Builder;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public blacklist getOrCreateUidBatteryConsumerBuilder(I)Landroid/os/UidBatteryConsumer$Builder;
    .registers 7
    .param p1, "uid"    # I

    .line 1137
    iget-object v0, p0, Landroid/os/BatteryUsageStats$Builder;->mUidBatteryConsumerBuilders:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UidBatteryConsumer$Builder;

    .line 1138
    .local v0, "builder":Landroid/os/UidBatteryConsumer$Builder;
    if-nez v0, :cond_1f

    .line 1139
    iget-object v1, p0, Landroid/os/BatteryUsageStats$Builder;->mBatteryConsumersCursorWindow:Landroid/database/CursorWindow;

    iget-object v2, p0, Landroid/os/BatteryUsageStats$Builder;->mBatteryConsumerDataLayout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    .line 1140
    invoke-static {v1, v2}, Landroid/os/BatteryConsumer$BatteryConsumerData;->create(Landroid/database/CursorWindow;Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;)Landroid/os/BatteryConsumer$BatteryConsumerData;

    move-result-object v1

    .line 1142
    .local v1, "data":Landroid/os/BatteryConsumer$BatteryConsumerData;
    new-instance v2, Landroid/os/UidBatteryConsumer$Builder;

    iget-wide v3, p0, Landroid/os/BatteryUsageStats$Builder;->mMinConsumedPowerThreshold:D

    invoke-direct {v2, v1, p1, v3, v4}, Landroid/os/UidBatteryConsumer$Builder;-><init>(Landroid/os/BatteryConsumer$BatteryConsumerData;ID)V

    move-object v0, v2

    .line 1143
    iget-object v2, p0, Landroid/os/BatteryUsageStats$Builder;->mUidBatteryConsumerBuilders:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1145
    .end local v1    # "data":Landroid/os/BatteryConsumer$BatteryConsumerData;
    :cond_1f
    return-object v0
.end method

.method public blacklist getOrCreateUidBatteryConsumerBuilder(Landroid/os/BatteryStats$Uid;)Landroid/os/UidBatteryConsumer$Builder;
    .registers 8
    .param p1, "batteryStatsUid"    # Landroid/os/BatteryStats$Uid;

    .line 1117
    invoke-virtual {p1}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v0

    .line 1118
    .local v0, "uid":I
    iget-object v1, p0, Landroid/os/BatteryUsageStats$Builder;->mUidBatteryConsumerBuilders:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UidBatteryConsumer$Builder;

    .line 1119
    .local v1, "builder":Landroid/os/UidBatteryConsumer$Builder;
    if-nez v1, :cond_23

    .line 1120
    iget-object v2, p0, Landroid/os/BatteryUsageStats$Builder;->mBatteryConsumersCursorWindow:Landroid/database/CursorWindow;

    iget-object v3, p0, Landroid/os/BatteryUsageStats$Builder;->mBatteryConsumerDataLayout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    .line 1121
    invoke-static {v2, v3}, Landroid/os/BatteryConsumer$BatteryConsumerData;->create(Landroid/database/CursorWindow;Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;)Landroid/os/BatteryConsumer$BatteryConsumerData;

    move-result-object v2

    .line 1123
    .local v2, "data":Landroid/os/BatteryConsumer$BatteryConsumerData;
    new-instance v3, Landroid/os/UidBatteryConsumer$Builder;

    iget-wide v4, p0, Landroid/os/BatteryUsageStats$Builder;->mMinConsumedPowerThreshold:D

    invoke-direct {v3, v2, p1, v4, v5}, Landroid/os/UidBatteryConsumer$Builder;-><init>(Landroid/os/BatteryConsumer$BatteryConsumerData;Landroid/os/BatteryStats$Uid;D)V

    move-object v1, v3

    .line 1125
    iget-object v3, p0, Landroid/os/BatteryUsageStats$Builder;->mUidBatteryConsumerBuilders:Landroid/util/SparseArray;

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1127
    .end local v2    # "data":Landroid/os/BatteryConsumer$BatteryConsumerData;
    :cond_23
    return-object v1
.end method

.method public blacklist getOrCreateUserBatteryConsumerBuilder(I)Landroid/os/UserBatteryConsumer$Builder;
    .registers 7
    .param p1, "userId"    # I

    .line 1154
    iget-object v0, p0, Landroid/os/BatteryUsageStats$Builder;->mUserBatteryConsumerBuilders:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserBatteryConsumer$Builder;

    .line 1155
    .local v0, "builder":Landroid/os/UserBatteryConsumer$Builder;
    if-nez v0, :cond_1f

    .line 1156
    iget-object v1, p0, Landroid/os/BatteryUsageStats$Builder;->mBatteryConsumersCursorWindow:Landroid/database/CursorWindow;

    iget-object v2, p0, Landroid/os/BatteryUsageStats$Builder;->mBatteryConsumerDataLayout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    .line 1157
    invoke-static {v1, v2}, Landroid/os/BatteryConsumer$BatteryConsumerData;->create(Landroid/database/CursorWindow;Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;)Landroid/os/BatteryConsumer$BatteryConsumerData;

    move-result-object v1

    .line 1159
    .local v1, "data":Landroid/os/BatteryConsumer$BatteryConsumerData;
    new-instance v2, Landroid/os/UserBatteryConsumer$Builder;

    iget-wide v3, p0, Landroid/os/BatteryUsageStats$Builder;->mMinConsumedPowerThreshold:D

    invoke-direct {v2, v1, p1, v3, v4}, Landroid/os/UserBatteryConsumer$Builder;-><init>(Landroid/os/BatteryConsumer$BatteryConsumerData;ID)V

    move-object v0, v2

    .line 1160
    iget-object v2, p0, Landroid/os/BatteryUsageStats$Builder;->mUserBatteryConsumerBuilders:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1162
    .end local v1    # "data":Landroid/os/BatteryConsumer$BatteryConsumerData;
    :cond_1f
    return-object v0
.end method

.method public blacklist getStatsDuration()J
    .registers 5

    .line 1033
    iget-wide v0, p0, Landroid/os/BatteryUsageStats$Builder;->mStatsDurationMs:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_b

    .line 1034
    iget-wide v0, p0, Landroid/os/BatteryUsageStats$Builder;->mStatsDurationMs:J

    return-wide v0

    .line 1036
    :cond_b
    iget-wide v0, p0, Landroid/os/BatteryUsageStats$Builder;->mStatsEndTimestampMs:J

    iget-wide v2, p0, Landroid/os/BatteryUsageStats$Builder;->mStatsStartTimestampMs:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public blacklist getUidBatteryConsumerBuilders()Landroid/util/SparseArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Landroid/os/UidBatteryConsumer$Builder;",
            ">;"
        }
    .end annotation

    .line 1167
    iget-object v0, p0, Landroid/os/BatteryUsageStats$Builder;->mUidBatteryConsumerBuilders:Landroid/util/SparseArray;

    return-object v0
.end method

.method public blacklist isPowerStateDataNeeded()Z
    .registers 2

    .line 961
    iget-boolean v0, p0, Landroid/os/BatteryUsageStats$Builder;->mIncludesPowerStateData:Z

    return v0
.end method

.method public blacklist isProcessStateDataNeeded()Z
    .registers 2

    .line 953
    iget-boolean v0, p0, Landroid/os/BatteryUsageStats$Builder;->mIncludesProcessStateData:Z

    return v0
.end method

.method public blacklist isScreenStateDataNeeded()Z
    .registers 2

    .line 957
    iget-boolean v0, p0, Landroid/os/BatteryUsageStats$Builder;->mIncludesScreenStateData:Z

    return v0
.end method

.method public blacklist isSupportedPowerComponent(I)Z
    .registers 4
    .param p1, "componentId"    # I

    .line 970
    const/16 v0, 0x13

    if-lt p1, v0, :cond_12

    const/16 v0, 0x3e8

    if-lt p1, v0, :cond_10

    iget-object v1, p0, Landroid/os/BatteryUsageStats$Builder;->mBatteryConsumerDataLayout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget v1, v1, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->customPowerComponentCount:I

    add-int/2addr v1, v0

    if-ge p1, v1, :cond_10

    goto :goto_12

    :cond_10
    const/4 v0, 0x0

    goto :goto_13

    :cond_12
    :goto_12
    const/4 v0, 0x1

    :goto_13
    return v0
.end method

.method public blacklist setBatteryCapacity(D)Landroid/os/BatteryUsageStats$Builder;
    .registers 3
    .param p1, "batteryCapacityMah"    # D

    .line 1000
    iput-wide p1, p0, Landroid/os/BatteryUsageStats$Builder;->mBatteryCapacityMah:D

    .line 1001
    return-object p0
.end method

.method public blacklist setBatteryHistory(Lcom/android/internal/os/BatteryStatsHistory;J)Landroid/os/BatteryUsageStats$Builder;
    .registers 4
    .param p1, "batteryStatsHistory"    # Lcom/android/internal/os/BatteryStatsHistory;
    .param p2, "preferredHistoryDurationMs"    # J

    .line 1095
    iput-object p1, p0, Landroid/os/BatteryUsageStats$Builder;->mBatteryStatsHistory:Lcom/android/internal/os/BatteryStatsHistory;

    .line 1096
    iput-wide p2, p0, Landroid/os/BatteryUsageStats$Builder;->mPreferredHistoryDurationMs:J

    .line 1097
    return-object p0
.end method

.method public blacklist setBatteryTimeRemainingMs(J)Landroid/os/BatteryUsageStats$Builder;
    .registers 3
    .param p1, "batteryTimeRemainingMs"    # J

    .line 1075
    iput-wide p1, p0, Landroid/os/BatteryUsageStats$Builder;->mBatteryTimeRemainingMs:J

    .line 1076
    return-object p0
.end method

.method public blacklist setChargeTimeRemainingMs(J)Landroid/os/BatteryUsageStats$Builder;
    .registers 3
    .param p1, "chargeTimeRemainingMs"    # J

    .line 1085
    iput-wide p1, p0, Landroid/os/BatteryUsageStats$Builder;->mChargeTimeRemainingMs:J

    .line 1086
    return-object p0
.end method

.method public blacklist setStatsDuration(J)Landroid/os/BatteryUsageStats$Builder;
    .registers 3
    .param p1, "statsDurationMs"    # J

    .line 1025
    iput-wide p1, p0, Landroid/os/BatteryUsageStats$Builder;->mStatsDurationMs:J

    .line 1026
    return-object p0
.end method

.method public blacklist setStatsEndTimestamp(J)Landroid/os/BatteryUsageStats$Builder;
    .registers 3
    .param p1, "statsEndTimestampMs"    # J

    .line 1016
    iput-wide p1, p0, Landroid/os/BatteryUsageStats$Builder;->mStatsEndTimestampMs:J

    .line 1017
    return-object p0
.end method

.method public blacklist setStatsStartTimestamp(J)Landroid/os/BatteryUsageStats$Builder;
    .registers 3
    .param p1, "statsStartTimestampMs"    # J

    .line 1008
    iput-wide p1, p0, Landroid/os/BatteryUsageStats$Builder;->mStatsStartTimestampMs:J

    .line 1009
    return-object p0
.end method
