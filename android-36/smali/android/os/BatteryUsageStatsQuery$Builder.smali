.class public final Landroid/os/BatteryUsageStatsQuery$Builder;
.super Ljava/lang/Object;
.source "BatteryUsageStatsQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryUsageStatsQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAggregateFromTimestamp:J

.field private blacklist mAggregateToTimestamp:J

.field private blacklist mFlags:I

.field private blacklist mMaxStatsAgeMs:J

.field private blacklist mMinConsumedPowerThreshold:D

.field private blacklist mMonotonicEndTime:J

.field private blacklist mMonotonicStartTime:J

.field private blacklist mPowerComponents:[I

.field private blacklist mPreferredHistoryDurationMs:J

.field private blacklist mUserIds:Landroid/util/IntArray;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAggregateFromTimestamp(Landroid/os/BatteryUsageStatsQuery$Builder;)J
    .registers 3

    iget-wide v0, p0, Landroid/os/BatteryUsageStatsQuery$Builder;->mAggregateFromTimestamp:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAggregateToTimestamp(Landroid/os/BatteryUsageStatsQuery$Builder;)J
    .registers 3

    iget-wide v0, p0, Landroid/os/BatteryUsageStatsQuery$Builder;->mAggregateToTimestamp:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFlags(Landroid/os/BatteryUsageStatsQuery$Builder;)I
    .registers 1

    iget p0, p0, Landroid/os/BatteryUsageStatsQuery$Builder;->mFlags:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMaxStatsAgeMs(Landroid/os/BatteryUsageStatsQuery$Builder;)J
    .registers 3

    iget-wide v0, p0, Landroid/os/BatteryUsageStatsQuery$Builder;->mMaxStatsAgeMs:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMinConsumedPowerThreshold(Landroid/os/BatteryUsageStatsQuery$Builder;)D
    .registers 3

    iget-wide v0, p0, Landroid/os/BatteryUsageStatsQuery$Builder;->mMinConsumedPowerThreshold:D

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMonotonicEndTime(Landroid/os/BatteryUsageStatsQuery$Builder;)J
    .registers 3

    iget-wide v0, p0, Landroid/os/BatteryUsageStatsQuery$Builder;->mMonotonicEndTime:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMonotonicStartTime(Landroid/os/BatteryUsageStatsQuery$Builder;)J
    .registers 3

    iget-wide v0, p0, Landroid/os/BatteryUsageStatsQuery$Builder;->mMonotonicStartTime:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPowerComponents(Landroid/os/BatteryUsageStatsQuery$Builder;)[I
    .registers 1

    iget-object p0, p0, Landroid/os/BatteryUsageStatsQuery$Builder;->mPowerComponents:[I

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPreferredHistoryDurationMs(Landroid/os/BatteryUsageStatsQuery$Builder;)J
    .registers 3

    iget-wide v0, p0, Landroid/os/BatteryUsageStatsQuery$Builder;->mPreferredHistoryDurationMs:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUserIds(Landroid/os/BatteryUsageStatsQuery$Builder;)Landroid/util/IntArray;
    .registers 1

    iget-object p0, p0, Landroid/os/BatteryUsageStatsQuery$Builder;->mUserIds:Landroid/util/IntArray;

    return-object p0
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 281
    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Landroid/os/BatteryUsageStatsQuery$Builder;->mMaxStatsAgeMs:J

    .line 282
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/os/BatteryUsageStatsQuery$Builder;->mMonotonicStartTime:J

    .line 283
    iput-wide v0, p0, Landroid/os/BatteryUsageStatsQuery$Builder;->mMonotonicEndTime:J

    .line 286
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/os/BatteryUsageStatsQuery$Builder;->mMinConsumedPowerThreshold:D

    .line 288
    invoke-static {}, Landroid/os/BatteryUsageStatsQuery;->-$$Nest$sfgetDEFAULT_PREFERRED_HISTORY_DURATION_MS()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/BatteryUsageStatsQuery$Builder;->mPreferredHistoryDurationMs:J

    return-void
.end method


# virtual methods
.method public blacklist accumulated()Landroid/os/BatteryUsageStatsQuery$Builder;
    .registers 2

    .line 416
    iget v0, p0, Landroid/os/BatteryUsageStatsQuery$Builder;->mFlags:I

    or-int/lit16 v0, v0, 0xe8

    iput v0, p0, Landroid/os/BatteryUsageStatsQuery$Builder;->mFlags:I

    .line 420
    return-object p0
.end method

.method public blacklist addUser(Landroid/os/UserHandle;)Landroid/os/BatteryUsageStatsQuery$Builder;
    .registers 4
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .line 313
    iget-object v0, p0, Landroid/os/BatteryUsageStatsQuery$Builder;->mUserIds:Landroid/util/IntArray;

    if-nez v0, :cond_c

    .line 314
    new-instance v0, Landroid/util/IntArray;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/IntArray;-><init>(I)V

    iput-object v0, p0, Landroid/os/BatteryUsageStatsQuery$Builder;->mUserIds:Landroid/util/IntArray;

    .line 316
    :cond_c
    iget-object v0, p0, Landroid/os/BatteryUsageStatsQuery$Builder;->mUserIds:Landroid/util/IntArray;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/IntArray;->add(I)V

    .line 317
    return-object p0
.end method

.method public blacklist aggregateSnapshots(JJ)Landroid/os/BatteryUsageStatsQuery$Builder;
    .registers 5
    .param p1, "fromTimestamp"    # J
    .param p3, "toTimestamp"    # J

    .line 430
    iput-wide p1, p0, Landroid/os/BatteryUsageStatsQuery$Builder;->mAggregateFromTimestamp:J

    .line 431
    iput-wide p3, p0, Landroid/os/BatteryUsageStatsQuery$Builder;->mAggregateToTimestamp:J

    .line 432
    return-object p0
.end method

.method public blacklist build()Landroid/os/BatteryUsageStatsQuery;
    .registers 3

    .line 294
    new-instance v0, Landroid/os/BatteryUsageStatsQuery;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/os/BatteryUsageStatsQuery;-><init>(Landroid/os/BatteryUsageStatsQuery$Builder;Landroid/os/BatteryUsageStatsQuery-IA;)V

    return-object v0
.end method

.method public blacklist includeBatteryHistory()Landroid/os/BatteryUsageStatsQuery$Builder;
    .registers 2

    .line 324
    iget v0, p0, Landroid/os/BatteryUsageStatsQuery$Builder;->mFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/os/BatteryUsageStatsQuery$Builder;->mFlags:I

    .line 325
    return-object p0
.end method

.method public blacklist includePowerComponents([I)Landroid/os/BatteryUsageStatsQuery$Builder;
    .registers 2
    .param p1, "powerComponents"    # [I

    .line 380
    iput-object p1, p0, Landroid/os/BatteryUsageStatsQuery$Builder;->mPowerComponents:[I

    .line 381
    return-object p0
.end method

.method public blacklist includePowerModels()Landroid/os/BatteryUsageStatsQuery$Builder;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 371
    return-object p0
.end method

.method public blacklist includePowerStateData()Landroid/os/BatteryUsageStatsQuery$Builder;
    .registers 2

    .line 407
    iget v0, p0, Landroid/os/BatteryUsageStatsQuery$Builder;->mFlags:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Landroid/os/BatteryUsageStatsQuery$Builder;->mFlags:I

    .line 408
    return-object p0
.end method

.method public blacklist includeProcessStateData()Landroid/os/BatteryUsageStatsQuery$Builder;
    .registers 2

    .line 344
    iget v0, p0, Landroid/os/BatteryUsageStatsQuery$Builder;->mFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/os/BatteryUsageStatsQuery$Builder;->mFlags:I

    .line 345
    return-object p0
.end method

.method public blacklist includeScreenStateData()Landroid/os/BatteryUsageStatsQuery$Builder;
    .registers 2

    .line 398
    iget v0, p0, Landroid/os/BatteryUsageStatsQuery$Builder;->mFlags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Landroid/os/BatteryUsageStatsQuery$Builder;->mFlags:I

    .line 399
    return-object p0
.end method

.method public blacklist includeVirtualUids()Landroid/os/BatteryUsageStatsQuery$Builder;
    .registers 2

    .line 389
    iget v0, p0, Landroid/os/BatteryUsageStatsQuery$Builder;->mFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/os/BatteryUsageStatsQuery$Builder;->mFlags:I

    .line 390
    return-object p0
.end method

.method public blacklist monotonicTimeRange(JJ)Landroid/os/BatteryUsageStatsQuery$Builder;
    .registers 5
    .param p1, "monotonicStartTime"    # J
    .param p3, "monotonicEndTime"    # J

    .line 303
    iput-wide p1, p0, Landroid/os/BatteryUsageStatsQuery$Builder;->mMonotonicStartTime:J

    .line 304
    iput-wide p3, p0, Landroid/os/BatteryUsageStatsQuery$Builder;->mMonotonicEndTime:J

    .line 305
    return-object p0
.end method

.method public blacklist powerProfileModeledOnly()Landroid/os/BatteryUsageStatsQuery$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 358
    iget v0, p0, Landroid/os/BatteryUsageStatsQuery$Builder;->mFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/os/BatteryUsageStatsQuery$Builder;->mFlags:I

    .line 359
    return-object p0
.end method

.method public blacklist setMaxStatsAgeMs(J)Landroid/os/BatteryUsageStatsQuery$Builder;
    .registers 3
    .param p1, "maxStatsAgeMs"    # J

    .line 440
    iput-wide p1, p0, Landroid/os/BatteryUsageStatsQuery$Builder;->mMaxStatsAgeMs:J

    .line 441
    return-object p0
.end method

.method public blacklist setMinConsumedPowerThreshold(D)Landroid/os/BatteryUsageStatsQuery$Builder;
    .registers 3
    .param p1, "minConsumedPowerThreshold"    # D

    .line 449
    iput-wide p1, p0, Landroid/os/BatteryUsageStatsQuery$Builder;->mMinConsumedPowerThreshold:D

    .line 450
    return-object p0
.end method

.method public blacklist setPreferredHistoryDurationMs(J)Landroid/os/BatteryUsageStatsQuery$Builder;
    .registers 3
    .param p1, "preferredHistoryDurationMs"    # J

    .line 334
    iput-wide p1, p0, Landroid/os/BatteryUsageStatsQuery$Builder;->mPreferredHistoryDurationMs:J

    .line 335
    return-object p0
.end method
