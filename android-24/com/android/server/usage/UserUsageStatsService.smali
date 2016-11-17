.class Lcom/android/server/usage/UserUsageStatsService;
.super Ljava/lang/Object;
.source "UserUsageStatsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usage/UserUsageStatsService$1;,
        Lcom/android/server/usage/UserUsageStatsService$2;,
        Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final INTERVAL_LENGTH:[J

.field private static final TAG:Ljava/lang/String; = "UsageStatsService"

.field private static final sConfigStatsCombiner:Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/usage/UsageStatsDatabase$StatCombiner",
            "<",
            "Landroid/app/usage/ConfigurationStats;",
            ">;"
        }
    .end annotation
.end field

.field private static final sDateFormat:Ljava/text/SimpleDateFormat;

.field private static final sDateFormatFlags:I = 0x20015

.field private static final sUsageStatsCombiner:Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/usage/UsageStatsDatabase$StatCombiner",
            "<",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mCurrentStats:[Lcom/android/server/usage/IntervalStats;

.field private final mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

.field private final mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

.field private final mListener:Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;

.field private final mLogPrefix:Ljava/lang/String;

.field private mStatsChanged:Z

.field private final mUserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 52
    new-instance v0, Ljava/text/SimpleDateFormat;

    #@2
    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    #@5
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    #@8
    sput-object v0, Lcom/android/server/usage/UserUsageStatsService;->sDateFormat:Ljava/text/SimpleDateFormat;

    #@a
    .line 68
    const/4 v0, 0x4

    #@b
    new-array v0, v0, [J

    #@d
    fill-array-data v0, :array_0

    #@10
    sput-object v0, Lcom/android/server/usage/UserUsageStatsService;->INTERVAL_LENGTH:[J

    #@12
    .line 195
    new-instance v0, Lcom/android/server/usage/UserUsageStatsService$1;

    #@14
    invoke-direct {v0}, Lcom/android/server/usage/UserUsageStatsService$1;-><init>()V

    #@17
    .line 194
    sput-object v0, Lcom/android/server/usage/UserUsageStatsService;->sUsageStatsCombiner:Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;

    #@19
    .line 212
    new-instance v0, Lcom/android/server/usage/UserUsageStatsService$2;

    #@1b
    invoke-direct {v0}, Lcom/android/server/usage/UserUsageStatsService$2;-><init>()V

    #@1e
    .line 211
    sput-object v0, Lcom/android/server/usage/UserUsageStatsService;->sConfigStatsCombiner:Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;

    #@20
    .line 49
    return-void

    #@21
    .line 68
    nop

    #@22
    :array_0
    .array-data 8
        0x5265c00
        0x240c8400
        0x9a7ec800L
        0x757b12c00L
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;ILjava/io/File;Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .param p3, "usageStatsDir"    # Ljava/io/File;
    .param p4, "listener"    # Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;

    #@0
    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 62
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mStatsChanged:Z

    #@6
    .line 85
    iput-object p1, p0, Lcom/android/server/usage/UserUsageStatsService;->mContext:Landroid/content/Context;

    #@8
    .line 86
    new-instance v0, Lcom/android/server/usage/UnixCalendar;

    #@a
    const-wide/16 v2, 0x0

    #@c
    invoke-direct {v0, v2, v3}, Lcom/android/server/usage/UnixCalendar;-><init>(J)V

    #@f
    iput-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    #@11
    .line 87
    new-instance v0, Lcom/android/server/usage/UsageStatsDatabase;

    #@13
    invoke-direct {v0, p3}, Lcom/android/server/usage/UsageStatsDatabase;-><init>(Ljava/io/File;)V

    #@16
    iput-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    #@18
    .line 88
    const/4 v0, 0x4

    #@19
    new-array v0, v0, [Lcom/android/server/usage/IntervalStats;

    #@1b
    iput-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    #@1d
    .line 89
    iput-object p4, p0, Lcom/android/server/usage/UserUsageStatsService;->mListener:Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;

    #@1f
    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v1, "User["

    #@27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v0

    #@2b
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@2e
    move-result-object v1

    #@2f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    const-string/jumbo v1, "] "

    #@36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v0

    #@3a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v0

    #@3e
    iput-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mLogPrefix:Ljava/lang/String;

    #@40
    .line 91
    iput p2, p0, Lcom/android/server/usage/UserUsageStatsService;->mUserId:I

    #@42
    .line 84
    return-void
.end method

.method private static eventToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "eventType"    # I

    #@0
    .prologue
    .line 574
    packed-switch p0, :pswitch_data_0

    #@3
    .line 592
    const-string/jumbo v0, "UNKNOWN"

    #@6
    return-object v0

    #@7
    .line 576
    :pswitch_0
    const-string/jumbo v0, "NONE"

    #@a
    return-object v0

    #@b
    .line 578
    :pswitch_1
    const-string/jumbo v0, "MOVE_TO_BACKGROUND"

    #@e
    return-object v0

    #@f
    .line 580
    :pswitch_2
    const-string/jumbo v0, "MOVE_TO_FOREGROUND"

    #@12
    return-object v0

    #@13
    .line 582
    :pswitch_3
    const-string/jumbo v0, "END_OF_DAY"

    #@16
    return-object v0

    #@17
    .line 584
    :pswitch_4
    const-string/jumbo v0, "CONTINUE_PREVIOUS_DAY"

    #@1a
    return-object v0

    #@1b
    .line 586
    :pswitch_5
    const-string/jumbo v0, "CONFIGURATION_CHANGE"

    #@1e
    return-object v0

    #@1f
    .line 588
    :pswitch_6
    const-string/jumbo v0, "SYSTEM_INTERACTION"

    #@22
    return-object v0

    #@23
    .line 590
    :pswitch_7
    const-string/jumbo v0, "USER_INTERACTION"

    #@26
    return-object v0

    #@27
    .line 574
    nop

    #@28
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private formatDateTime(JZ)Ljava/lang/String;
    .locals 3
    .param p1, "dateTime"    # J
    .param p3, "pretty"    # Z

    #@0
    .prologue
    .line 485
    if-eqz p3, :cond_0

    #@2
    .line 486
    new-instance v0, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v1, "\""

    #@a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v0

    #@e
    iget-object v1, p0, Lcom/android/server/usage/UserUsageStatsService;->mContext:Landroid/content/Context;

    #@10
    const v2, 0x20015

    #@13
    invoke-static {v1, p1, p2, v2}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    const-string/jumbo v1, "\""

    #@1e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v0

    #@22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v0

    #@26
    return-object v0

    #@27
    .line 488
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@2a
    move-result-object v0

    #@2b
    return-object v0
.end method

.method private formatElapsedTime(JZ)Ljava/lang/String;
    .locals 5
    .param p1, "elapsedTime"    # J
    .param p3, "pretty"    # Z

    #@0
    .prologue
    .line 492
    if-eqz p3, :cond_0

    #@2
    .line 493
    new-instance v0, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v1, "\""

    #@a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v0

    #@e
    const-wide/16 v2, 0x3e8

    #@10
    div-long v2, p1, v2

    #@12
    invoke-static {v2, v3}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v0

    #@1a
    const-string/jumbo v1, "\""

    #@1d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v0

    #@21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v0

    #@25
    return-object v0

    #@26
    .line 495
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@29
    move-result-object v0

    #@2a
    return-object v0
.end method

.method private static intervalToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "interval"    # I

    #@0
    .prologue
    .line 559
    packed-switch p0, :pswitch_data_0

    #@3
    .line 569
    const-string/jumbo v0, "?"

    #@6
    return-object v0

    #@7
    .line 561
    :pswitch_0
    const-string/jumbo v0, "daily"

    #@a
    return-object v0

    #@b
    .line 563
    :pswitch_1
    const-string/jumbo v0, "weekly"

    #@e
    return-object v0

    #@f
    .line 565
    :pswitch_2
    const-string/jumbo v0, "monthly"

    #@12
    return-object v0

    #@13
    .line 567
    :pswitch_3
    const-string/jumbo v0, "yearly"

    #@16
    return-object v0

    #@17
    .line 559
    nop

    #@18
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private loadActiveStats(J)V
    .locals 7
    .param p1, "currentTimeMillis"    # J

    #@0
    .prologue
    .line 420
    const/4 v0, 0x0

    #@1
    .local v0, "intervalType":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    #@3
    array-length v2, v2

    #@4
    if-ge v0, v2, :cond_1

    #@6
    .line 421
    iget-object v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    #@8
    invoke-virtual {v2, v0}, Lcom/android/server/usage/UsageStatsDatabase;->getLatestUsageStats(I)Lcom/android/server/usage/IntervalStats;

    #@b
    move-result-object v1

    #@c
    .line 422
    .local v1, "stats":Lcom/android/server/usage/IntervalStats;
    if-eqz v1, :cond_0

    #@e
    const-wide/16 v2, 0x1f4

    #@10
    sub-long v2, p1, v2

    #@12
    iget-wide v4, v1, Lcom/android/server/usage/IntervalStats;->endTime:J

    #@14
    cmp-long v2, v2, v4

    #@16
    if-ltz v2, :cond_0

    #@18
    .line 423
    iget-wide v2, v1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    #@1a
    sget-object v4, Lcom/android/server/usage/UserUsageStatsService;->INTERVAL_LENGTH:[J

    #@1c
    aget-wide v4, v4, v0

    #@1e
    add-long/2addr v2, v4

    #@1f
    cmp-long v2, p1, v2

    #@21
    if-gez v2, :cond_0

    #@23
    .line 429
    iget-object v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    #@25
    aput-object v1, v2, v0

    #@27
    .line 420
    :goto_1
    add-int/lit8 v0, v0, 0x1

    #@29
    goto :goto_0

    #@2a
    .line 438
    :cond_0
    iget-object v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    #@2c
    new-instance v3, Lcom/android/server/usage/IntervalStats;

    #@2e
    invoke-direct {v3}, Lcom/android/server/usage/IntervalStats;-><init>()V

    #@31
    aput-object v3, v2, v0

    #@33
    .line 439
    iget-object v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    #@35
    aget-object v2, v2, v0

    #@37
    iput-wide p1, v2, Lcom/android/server/usage/IntervalStats;->beginTime:J

    #@39
    .line 440
    iget-object v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    #@3b
    aget-object v2, v2, v0

    #@3d
    const-wide/16 v4, 0x1

    #@3f
    add-long/2addr v4, p1

    #@40
    iput-wide v4, v2, Lcom/android/server/usage/IntervalStats;->endTime:J

    #@42
    goto :goto_1

    #@43
    .line 444
    .end local v1    # "stats":Lcom/android/server/usage/IntervalStats;
    :cond_1
    const/4 v2, 0x0

    #@44
    iput-boolean v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mStatsChanged:Z

    #@46
    .line 445
    invoke-direct {p0}, Lcom/android/server/usage/UserUsageStatsService;->updateRolloverDeadline()V

    #@49
    .line 448
    iget-object v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mListener:Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;

    #@4b
    invoke-interface {v2}, Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;->onStatsReloaded()V

    #@4e
    .line 419
    return-void
.end method

.method private notifyNewUpdate()V
    .locals 2

    #@0
    .prologue
    .line 416
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mListener:Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;

    #@2
    iget v1, p0, Lcom/android/server/usage/UserUsageStatsService;->mUserId:I

    #@4
    invoke-interface {v0, v1}, Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;->onNewUpdate(I)V

    #@7
    .line 415
    return-void
.end method

.method private notifyStatsChanged()V
    .locals 1

    #@0
    .prologue
    .line 409
    iget-boolean v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mStatsChanged:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 410
    const/4 v0, 0x1

    #@5
    iput-boolean v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mStatsChanged:Z

    #@7
    .line 411
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mListener:Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;

    #@9
    invoke-interface {v0}, Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;->onStatsUpdated()V

    #@c
    .line 408
    :cond_0
    return-void
.end method

.method private queryStats(IJJLcom/android/server/usage/UsageStatsDatabase$StatCombiner;)Ljava/util/List;
    .locals 12
    .param p1, "intervalType"    # I
    .param p2, "beginTime"    # J
    .param p4, "endTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(IJJ",
            "Lcom/android/server/usage/UsageStatsDatabase$StatCombiner",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p6, "combiner":Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;, "Lcom/android/server/usage/UsageStatsDatabase$StatCombiner<TT;>;"
    const/4 v4, 0x0

    #@1
    .line 235
    const/4 v2, 0x4

    #@2
    if-ne p1, v2, :cond_0

    #@4
    .line 236
    iget-object v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    #@6
    move-wide/from16 v0, p4

    #@8
    invoke-virtual {v2, p2, p3, v0, v1}, Lcom/android/server/usage/UsageStatsDatabase;->findBestFitBucket(JJ)I

    #@b
    move-result p1

    #@c
    .line 237
    if-gez p1, :cond_0

    #@e
    .line 240
    const/4 p1, 0x0

    #@f
    .line 244
    :cond_0
    if-ltz p1, :cond_1

    #@11
    iget-object v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    #@13
    array-length v2, v2

    #@14
    if-lt p1, v2, :cond_2

    #@16
    .line 248
    :cond_1
    return-object v4

    #@17
    .line 251
    :cond_2
    iget-object v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    #@19
    aget-object v9, v2, p1

    #@1b
    .line 258
    .local v9, "currentStats":Lcom/android/server/usage/IntervalStats;
    iget-wide v2, v9, Lcom/android/server/usage/IntervalStats;->endTime:J

    #@1d
    cmp-long v2, p2, v2

    #@1f
    if-ltz v2, :cond_3

    #@21
    .line 264
    return-object v4

    #@22
    .line 270
    :cond_3
    iget-wide v2, v9, Lcom/android/server/usage/IntervalStats;->beginTime:J

    #@24
    move-wide/from16 v0, p4

    #@26
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    #@29
    move-result-wide v6

    #@2a
    .line 273
    .local v6, "truncatedEndTime":J
    iget-object v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    #@2c
    move v3, p1

    #@2d
    move-wide v4, p2

    #@2e
    move-object/from16 v8, p6

    #@30
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/usage/UsageStatsDatabase;->queryUsageStats(IJJLcom/android/server/usage/UsageStatsDatabase$StatCombiner;)Ljava/util/List;

    #@33
    move-result-object v10

    #@34
    .line 282
    .local v10, "results":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-wide v2, v9, Lcom/android/server/usage/IntervalStats;->endTime:J

    #@36
    cmp-long v2, p2, v2

    #@38
    if-gez v2, :cond_5

    #@3a
    iget-wide v2, v9, Lcom/android/server/usage/IntervalStats;->beginTime:J

    #@3c
    cmp-long v2, p4, v2

    #@3e
    if-lez v2, :cond_5

    #@40
    .line 287
    if-nez v10, :cond_4

    #@42
    .line 288
    new-instance v10, Ljava/util/ArrayList;

    #@44
    .end local v10    # "results":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    #@47
    .line 290
    .restart local v10    # "results":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_4
    const/4 v2, 0x1

    #@48
    move-object/from16 v0, p6

    #@4a
    invoke-interface {v0, v9, v2, v10}, Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;->combine(Lcom/android/server/usage/IntervalStats;ZLjava/util/List;)V

    #@4d
    .line 296
    :cond_5
    return-object v10
.end method

.method private rolloverStats(J)V
    .locals 27
    .param p1, "currentTimeMillis"    # J

    #@0
    .prologue
    .line 363
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@3
    move-result-wide v14

    #@4
    .line 364
    .local v14, "startTime":J
    const-string/jumbo v18, "UsageStatsService"

    #@7
    new-instance v19, Ljava/lang/StringBuilder;

    #@9
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    move-object/from16 v0, p0

    #@e
    iget-object v0, v0, Lcom/android/server/usage/UserUsageStatsService;->mLogPrefix:Ljava/lang/String;

    #@10
    move-object/from16 v20, v0

    #@12
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v19

    #@16
    const-string/jumbo v20, "Rolling over usage stats"

    #@19
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v19

    #@1d
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v19

    #@21
    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@24
    .line 369
    move-object/from16 v0, p0

    #@26
    iget-object v0, v0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    #@28
    move-object/from16 v18, v0

    #@2a
    const/16 v19, 0x0

    #@2c
    aget-object v18, v18, v19

    #@2e
    .line 368
    move-object/from16 v0, v18

    #@30
    iget-object v12, v0, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    #@32
    .line 370
    .local v12, "previousConfig":Landroid/content/res/Configuration;
    new-instance v7, Landroid/util/ArraySet;

    #@34
    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    #@37
    .line 371
    .local v7, "continuePreviousDay":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    #@39
    iget-object v0, v0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    #@3b
    move-object/from16 v19, v0

    #@3d
    const/16 v18, 0x0

    #@3f
    move-object/from16 v0, v19

    #@41
    array-length v0, v0

    #@42
    move/from16 v20, v0

    #@44
    :goto_0
    move/from16 v0, v18

    #@46
    move/from16 v1, v20

    #@48
    if-ge v0, v1, :cond_3

    #@4a
    aget-object v13, v19, v18

    #@4c
    .line 372
    .local v13, "stat":Lcom/android/server/usage/IntervalStats;
    iget-object v0, v13, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    #@4e
    move-object/from16 v21, v0

    #@50
    invoke-virtual/range {v21 .. v21}, Landroid/util/ArrayMap;->size()I

    #@53
    move-result v10

    #@54
    .line 373
    .local v10, "pkgCount":I
    const/4 v8, 0x0

    #@55
    .local v8, "i":I
    :goto_1
    if-ge v8, v10, :cond_2

    #@57
    .line 374
    iget-object v0, v13, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    #@59
    move-object/from16 v21, v0

    #@5b
    move-object/from16 v0, v21

    #@5d
    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@60
    move-result-object v11

    #@61
    check-cast v11, Landroid/app/usage/UsageStats;

    #@63
    .line 375
    .local v11, "pkgStats":Landroid/app/usage/UsageStats;
    iget v0, v11, Landroid/app/usage/UsageStats;->mLastEvent:I

    #@65
    move/from16 v21, v0

    #@67
    const/16 v22, 0x1

    #@69
    move/from16 v0, v21

    #@6b
    move/from16 v1, v22

    #@6d
    if-eq v0, v1, :cond_0

    #@6f
    .line 376
    iget v0, v11, Landroid/app/usage/UsageStats;->mLastEvent:I

    #@71
    move/from16 v21, v0

    #@73
    const/16 v22, 0x4

    #@75
    move/from16 v0, v21

    #@77
    move/from16 v1, v22

    #@79
    if-ne v0, v1, :cond_1

    #@7b
    .line 377
    :cond_0
    iget-object v0, v11, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    #@7d
    move-object/from16 v21, v0

    #@7f
    move-object/from16 v0, v21

    #@81
    invoke-virtual {v7, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@84
    .line 378
    iget-object v0, v11, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    #@86
    move-object/from16 v21, v0

    #@88
    move-object/from16 v0, p0

    #@8a
    iget-object v0, v0, Lcom/android/server/usage/UserUsageStatsService;->mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    #@8c
    move-object/from16 v22, v0

    #@8e
    invoke-virtual/range {v22 .. v22}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    #@91
    move-result-wide v22

    #@92
    const-wide/16 v24, 0x1

    #@94
    sub-long v22, v22, v24

    #@96
    .line 379
    const/16 v24, 0x3

    #@98
    .line 378
    move-object/from16 v0, v21

    #@9a
    move-wide/from16 v1, v22

    #@9c
    move/from16 v3, v24

    #@9e
    invoke-virtual {v13, v0, v1, v2, v3}, Lcom/android/server/usage/IntervalStats;->update(Ljava/lang/String;JI)V

    #@a1
    .line 380
    invoke-direct/range {p0 .. p0}, Lcom/android/server/usage/UserUsageStatsService;->notifyStatsChanged()V

    #@a4
    .line 373
    :cond_1
    add-int/lit8 v8, v8, 0x1

    #@a6
    goto :goto_1

    #@a7
    .line 384
    .end local v11    # "pkgStats":Landroid/app/usage/UsageStats;
    :cond_2
    move-object/from16 v0, p0

    #@a9
    iget-object v0, v0, Lcom/android/server/usage/UserUsageStatsService;->mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    #@ab
    move-object/from16 v21, v0

    #@ad
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    #@b0
    move-result-wide v22

    #@b1
    const-wide/16 v24, 0x1

    #@b3
    sub-long v22, v22, v24

    #@b5
    const/16 v21, 0x0

    #@b7
    move-object/from16 v0, v21

    #@b9
    move-wide/from16 v1, v22

    #@bb
    invoke-virtual {v13, v0, v1, v2}, Lcom/android/server/usage/IntervalStats;->updateConfigurationStats(Landroid/content/res/Configuration;J)V

    #@be
    .line 371
    add-int/lit8 v18, v18, 0x1

    #@c0
    goto :goto_0

    #@c1
    .line 387
    .end local v8    # "i":I
    .end local v10    # "pkgCount":I
    .end local v13    # "stat":Lcom/android/server/usage/IntervalStats;
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usage/UserUsageStatsService;->persistActiveStats()V

    #@c4
    .line 388
    move-object/from16 v0, p0

    #@c6
    iget-object v0, v0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    #@c8
    move-object/from16 v18, v0

    #@ca
    move-object/from16 v0, v18

    #@cc
    move-wide/from16 v1, p1

    #@ce
    invoke-virtual {v0, v1, v2}, Lcom/android/server/usage/UsageStatsDatabase;->prune(J)V

    #@d1
    .line 389
    invoke-direct/range {p0 .. p2}, Lcom/android/server/usage/UserUsageStatsService;->loadActiveStats(J)V

    #@d4
    .line 391
    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    #@d7
    move-result v6

    #@d8
    .line 392
    .local v6, "continueCount":I
    const/4 v8, 0x0

    #@d9
    .restart local v8    # "i":I
    :goto_2
    if-ge v8, v6, :cond_5

    #@db
    .line 393
    invoke-virtual {v7, v8}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@de
    move-result-object v9

    #@df
    check-cast v9, Ljava/lang/String;

    #@e1
    .line 394
    .local v9, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    #@e3
    iget-object v0, v0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    #@e5
    move-object/from16 v18, v0

    #@e7
    const/16 v19, 0x0

    #@e9
    aget-object v18, v18, v19

    #@eb
    move-object/from16 v0, v18

    #@ed
    iget-wide v4, v0, Lcom/android/server/usage/IntervalStats;->beginTime:J

    #@ef
    .line 395
    .local v4, "beginTime":J
    move-object/from16 v0, p0

    #@f1
    iget-object v0, v0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    #@f3
    move-object/from16 v19, v0

    #@f5
    const/16 v18, 0x0

    #@f7
    move-object/from16 v0, v19

    #@f9
    array-length v0, v0

    #@fa
    move/from16 v20, v0

    #@fc
    :goto_3
    move/from16 v0, v18

    #@fe
    move/from16 v1, v20

    #@100
    if-ge v0, v1, :cond_4

    #@102
    aget-object v13, v19, v18

    #@104
    .line 396
    .restart local v13    # "stat":Lcom/android/server/usage/IntervalStats;
    const/16 v21, 0x4

    #@106
    move/from16 v0, v21

    #@108
    invoke-virtual {v13, v9, v4, v5, v0}, Lcom/android/server/usage/IntervalStats;->update(Ljava/lang/String;JI)V

    #@10b
    .line 397
    invoke-virtual {v13, v12, v4, v5}, Lcom/android/server/usage/IntervalStats;->updateConfigurationStats(Landroid/content/res/Configuration;J)V

    #@10e
    .line 398
    invoke-direct/range {p0 .. p0}, Lcom/android/server/usage/UserUsageStatsService;->notifyStatsChanged()V

    #@111
    .line 395
    add-int/lit8 v18, v18, 0x1

    #@113
    goto :goto_3

    #@114
    .line 392
    .end local v13    # "stat":Lcom/android/server/usage/IntervalStats;
    :cond_4
    add-int/lit8 v8, v8, 0x1

    #@116
    goto :goto_2

    #@117
    .line 401
    .end local v4    # "beginTime":J
    .end local v9    # "name":Ljava/lang/String;
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usage/UserUsageStatsService;->persistActiveStats()V

    #@11a
    .line 403
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@11d
    move-result-wide v18

    #@11e
    sub-long v16, v18, v14

    #@120
    .line 404
    .local v16, "totalTime":J
    const-string/jumbo v18, "UsageStatsService"

    #@123
    new-instance v19, Ljava/lang/StringBuilder;

    #@125
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@128
    move-object/from16 v0, p0

    #@12a
    iget-object v0, v0, Lcom/android/server/usage/UserUsageStatsService;->mLogPrefix:Ljava/lang/String;

    #@12c
    move-object/from16 v20, v0

    #@12e
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@131
    move-result-object v19

    #@132
    const-string/jumbo v20, "Rolling over usage stats complete. Took "

    #@135
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@138
    move-result-object v19

    #@139
    move-object/from16 v0, v19

    #@13b
    move-wide/from16 v1, v16

    #@13d
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@140
    move-result-object v19

    #@141
    .line 405
    const-string/jumbo v20, " milliseconds"

    #@144
    .line 404
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@147
    move-result-object v19

    #@148
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14b
    move-result-object v19

    #@14c
    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@14f
    .line 362
    return-void
.end method

.method private updateRolloverDeadline()V
    .locals 6

    #@0
    .prologue
    .line 452
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    #@2
    .line 453
    iget-object v1, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    #@4
    const/4 v2, 0x0

    #@5
    aget-object v1, v1, v2

    #@7
    iget-wide v2, v1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    #@9
    .line 452
    invoke-virtual {v0, v2, v3}, Lcom/android/server/usage/UnixCalendar;->setTimeInMillis(J)V

    #@c
    .line 454
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    #@e
    const/4 v1, 0x1

    #@f
    invoke-virtual {v0, v1}, Lcom/android/server/usage/UnixCalendar;->addDays(I)V

    #@12
    .line 455
    const-string/jumbo v0, "UsageStatsService"

    #@15
    new-instance v1, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    iget-object v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mLogPrefix:Ljava/lang/String;

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    const-string/jumbo v2, "Rollover scheduled @ "

    #@23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    .line 456
    sget-object v2, Lcom/android/server/usage/UserUsageStatsService;->sDateFormat:Ljava/text/SimpleDateFormat;

    #@29
    iget-object v3, p0, Lcom/android/server/usage/UserUsageStatsService;->mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    #@2b
    invoke-virtual {v3}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    #@2e
    move-result-wide v4

    #@2f
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@32
    move-result-object v3

    #@33
    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    #@36
    move-result-object v2

    #@37
    .line 455
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v1

    #@3b
    .line 456
    const-string/jumbo v2, "("

    #@3e
    .line 455
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v1

    #@42
    .line 457
    iget-object v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    #@44
    invoke-virtual {v2}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    #@47
    move-result-wide v2

    #@48
    .line 455
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v1

    #@4c
    .line 457
    const-string/jumbo v2, ")"

    #@4f
    .line 455
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v1

    #@53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@56
    move-result-object v1

    #@57
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@5a
    .line 451
    return-void
.end method


# virtual methods
.method applyRestoredPayload(Ljava/lang/String;[B)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "payload"    # [B

    #@0
    .prologue
    .line 601
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    #@2
    invoke-virtual {v0, p1, p2}, Lcom/android/server/usage/UsageStatsDatabase;->applyRestoredPayload(Ljava/lang/String;[B)V

    #@5
    .line 600
    return-void
.end method

.method checkin(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 2
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    #@0
    .prologue
    .line 465
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    #@2
    new-instance v1, Lcom/android/server/usage/UserUsageStatsService$4;

    #@4
    invoke-direct {v1, p0, p1}, Lcom/android/server/usage/UserUsageStatsService$4;-><init>(Lcom/android/server/usage/UserUsageStatsService;Lcom/android/internal/util/IndentingPrintWriter;)V

    #@7
    invoke-virtual {v0, v1}, Lcom/android/server/usage/UsageStatsDatabase;->checkinDailyFiles(Lcom/android/server/usage/UsageStatsDatabase$CheckinAction;)Z

    #@a
    .line 464
    return-void
.end method

.method dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 3
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    #@0
    .prologue
    .line 476
    const/4 v0, 0x0

    #@1
    .local v0, "interval":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    #@3
    array-length v1, v1

    #@4
    if-ge v0, v1, :cond_0

    #@6
    .line 477
    const-string/jumbo v1, "In-memory "

    #@9
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@c
    .line 478
    invoke-static {v0}, Lcom/android/server/usage/UserUsageStatsService;->intervalToString(I)Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@13
    .line 479
    const-string/jumbo v1, " stats"

    #@16
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@19
    .line 480
    iget-object v1, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    #@1b
    aget-object v1, v1, v0

    #@1d
    const/4 v2, 0x1

    #@1e
    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/usage/UserUsageStatsService;->printIntervalStats(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/usage/IntervalStats;Z)V

    #@21
    .line 476
    add-int/lit8 v0, v0, 0x1

    #@23
    goto :goto_0

    #@24
    .line 474
    :cond_0
    return-void
.end method

.method getBackupPayload(Ljava/lang/String;)[B
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 597
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/server/usage/UsageStatsDatabase;->getBackupPayload(Ljava/lang/String;)[B

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method init(J)V
    .locals 13
    .param p1, "currentTimeMillis"    # J

    #@0
    .prologue
    const/4 v12, 0x0

    #@1
    const/4 v5, 0x0

    #@2
    .line 95
    iget-object v6, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    #@4
    invoke-virtual {v6, p1, p2}, Lcom/android/server/usage/UsageStatsDatabase;->init(J)V

    #@7
    .line 97
    const/4 v1, 0x0

    #@8
    .line 98
    .local v1, "nullCount":I
    const/4 v0, 0x0

    #@9
    .local v0, "i":I
    :goto_0
    iget-object v6, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    #@b
    array-length v6, v6

    #@c
    if-ge v0, v6, :cond_1

    #@e
    .line 99
    iget-object v6, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    #@10
    iget-object v7, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    #@12
    invoke-virtual {v7, v0}, Lcom/android/server/usage/UsageStatsDatabase;->getLatestUsageStats(I)Lcom/android/server/usage/IntervalStats;

    #@15
    move-result-object v7

    #@16
    aput-object v7, v6, v0

    #@18
    .line 100
    iget-object v6, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    #@1a
    aget-object v6, v6, v0

    #@1c
    if-nez v6, :cond_0

    #@1e
    .line 103
    add-int/lit8 v1, v1, 0x1

    #@20
    .line 98
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@22
    goto :goto_0

    #@23
    .line 107
    :cond_1
    if-lez v1, :cond_5

    #@25
    .line 108
    iget-object v6, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    #@27
    array-length v6, v6

    #@28
    if-eq v1, v6, :cond_2

    #@2a
    .line 111
    const-string/jumbo v6, "UsageStatsService"

    #@2d
    new-instance v7, Ljava/lang/StringBuilder;

    #@2f
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@32
    iget-object v8, p0, Lcom/android/server/usage/UserUsageStatsService;->mLogPrefix:Ljava/lang/String;

    #@34
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v7

    #@38
    const-string/jumbo v8, "Some stats have no latest available"

    #@3b
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v7

    #@3f
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v7

    #@43
    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@46
    .line 118
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/server/usage/UserUsageStatsService;->loadActiveStats(J)V

    #@49
    .line 127
    :goto_1
    iget-object v6, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    #@4b
    array-length v7, v6

    #@4c
    :goto_2
    if-ge v5, v7, :cond_7

    #@4e
    aget-object v4, v6, v5

    #@50
    .line 128
    .local v4, "stat":Lcom/android/server/usage/IntervalStats;
    iget-object v8, v4, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    #@52
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    #@55
    move-result v2

    #@56
    .line 129
    .local v2, "pkgCount":I
    const/4 v0, 0x0

    #@57
    :goto_3
    if-ge v0, v2, :cond_6

    #@59
    .line 130
    iget-object v8, v4, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    #@5b
    invoke-virtual {v8, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@5e
    move-result-object v3

    #@5f
    check-cast v3, Landroid/app/usage/UsageStats;

    #@61
    .line 131
    .local v3, "pkgStats":Landroid/app/usage/UsageStats;
    iget v8, v3, Landroid/app/usage/UsageStats;->mLastEvent:I

    #@63
    const/4 v9, 0x1

    #@64
    if-eq v8, v9, :cond_3

    #@66
    .line 132
    iget v8, v3, Landroid/app/usage/UsageStats;->mLastEvent:I

    #@68
    const/4 v9, 0x4

    #@69
    if-ne v8, v9, :cond_4

    #@6b
    .line 133
    :cond_3
    iget-object v8, v3, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    #@6d
    iget-wide v10, v4, Lcom/android/server/usage/IntervalStats;->lastTimeSaved:J

    #@6f
    .line 134
    const/4 v9, 0x3

    #@70
    .line 133
    invoke-virtual {v4, v8, v10, v11, v9}, Lcom/android/server/usage/IntervalStats;->update(Ljava/lang/String;JI)V

    #@73
    .line 135
    invoke-direct {p0}, Lcom/android/server/usage/UserUsageStatsService;->notifyStatsChanged()V

    #@76
    .line 129
    :cond_4
    add-int/lit8 v0, v0, 0x1

    #@78
    goto :goto_3

    #@79
    .line 123
    .end local v2    # "pkgCount":I
    .end local v3    # "pkgStats":Landroid/app/usage/UsageStats;
    .end local v4    # "stat":Lcom/android/server/usage/IntervalStats;
    :cond_5
    invoke-direct {p0}, Lcom/android/server/usage/UserUsageStatsService;->updateRolloverDeadline()V

    #@7c
    goto :goto_1

    #@7d
    .line 139
    .restart local v2    # "pkgCount":I
    .restart local v4    # "stat":Lcom/android/server/usage/IntervalStats;
    :cond_6
    iget-wide v8, v4, Lcom/android/server/usage/IntervalStats;->lastTimeSaved:J

    #@7f
    invoke-virtual {v4, v12, v8, v9}, Lcom/android/server/usage/IntervalStats;->updateConfigurationStats(Landroid/content/res/Configuration;J)V

    #@82
    .line 127
    add-int/lit8 v5, v5, 0x1

    #@84
    goto :goto_2

    #@85
    .line 142
    .end local v2    # "pkgCount":I
    .end local v4    # "stat":Lcom/android/server/usage/IntervalStats;
    :cond_7
    iget-object v5, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    #@87
    invoke-virtual {v5}, Lcom/android/server/usage/UsageStatsDatabase;->isNewUpdate()Z

    #@8a
    move-result v5

    #@8b
    if-eqz v5, :cond_8

    #@8d
    .line 143
    invoke-direct {p0}, Lcom/android/server/usage/UserUsageStatsService;->notifyNewUpdate()V

    #@90
    .line 94
    :cond_8
    return-void
.end method

.method onTimeChanged(JJ)V
    .locals 5
    .param p1, "oldTime"    # J
    .param p3, "newTime"    # J

    #@0
    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/android/server/usage/UserUsageStatsService;->persistActiveStats()V

    #@3
    .line 149
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    #@5
    sub-long v2, p3, p1

    #@7
    invoke-virtual {v0, v2, v3}, Lcom/android/server/usage/UsageStatsDatabase;->onTimeChanged(J)V

    #@a
    .line 150
    invoke-direct {p0, p3, p4}, Lcom/android/server/usage/UserUsageStatsService;->loadActiveStats(J)V

    #@d
    .line 147
    return-void
.end method

.method persistActiveStats()V
    .locals 5

    #@0
    .prologue
    .line 349
    iget-boolean v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mStatsChanged:Z

    #@2
    if-eqz v2, :cond_1

    #@4
    .line 350
    const-string/jumbo v2, "UsageStatsService"

    #@7
    new-instance v3, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    iget-object v4, p0, Lcom/android/server/usage/UserUsageStatsService;->mLogPrefix:Ljava/lang/String;

    #@e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v3

    #@12
    const-string/jumbo v4, "Flushing usage stats to disk"

    #@15
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v3

    #@19
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v3

    #@1d
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@20
    .line 352
    const/4 v1, 0x0

    #@21
    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    #@23
    array-length v2, v2

    #@24
    if-ge v1, v2, :cond_0

    #@26
    .line 353
    iget-object v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    #@28
    iget-object v3, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    #@2a
    aget-object v3, v3, v1

    #@2c
    invoke-virtual {v2, v1, v3}, Lcom/android/server/usage/UsageStatsDatabase;->putUsageStats(ILcom/android/server/usage/IntervalStats;)V

    #@2f
    .line 352
    add-int/lit8 v1, v1, 0x1

    #@31
    goto :goto_0

    #@32
    .line 355
    :cond_0
    const/4 v2, 0x0

    #@33
    iput-boolean v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mStatsChanged:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@35
    .line 348
    .end local v1    # "i":I
    :cond_1
    :goto_1
    return-void

    #@36
    .line 356
    .restart local v1    # "i":I
    :catch_0
    move-exception v0

    #@37
    .line 357
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v2, "UsageStatsService"

    #@3a
    new-instance v3, Ljava/lang/StringBuilder;

    #@3c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@3f
    iget-object v4, p0, Lcom/android/server/usage/UserUsageStatsService;->mLogPrefix:Ljava/lang/String;

    #@41
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v3

    #@45
    const-string/jumbo v4, "Failed to persist active stats"

    #@48
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v3

    #@4c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f
    move-result-object v3

    #@50
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@53
    goto :goto_1
.end method

.method printIntervalStats(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/usage/IntervalStats;Z)V
    .locals 20
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p2, "stats"    # Lcom/android/server/usage/IntervalStats;
    .param p3, "prettyDates"    # Z

    #@0
    .prologue
    .line 500
    if-eqz p3, :cond_0

    #@2
    .line 501
    const-string/jumbo v18, "timeRange"

    #@5
    new-instance v3, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v4, "\""

    #@d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v19

    #@11
    move-object/from16 v0, p0

    #@13
    iget-object v3, v0, Lcom/android/server/usage/UserUsageStatsService;->mContext:Landroid/content/Context;

    #@15
    .line 502
    move-object/from16 v0, p2

    #@17
    iget-wide v4, v0, Lcom/android/server/usage/IntervalStats;->beginTime:J

    #@19
    move-object/from16 v0, p2

    #@1b
    iget-wide v6, v0, Lcom/android/server/usage/IntervalStats;->endTime:J

    #@1d
    const v8, 0x20015

    #@20
    .line 501
    invoke-static/range {v3 .. v8}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    #@23
    move-result-object v3

    #@24
    move-object/from16 v0, v19

    #@26
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v3

    #@2a
    .line 502
    const-string/jumbo v4, "\""

    #@2d
    .line 501
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v3

    #@31
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v3

    #@35
    move-object/from16 v0, p1

    #@37
    move-object/from16 v1, v18

    #@39
    invoke-virtual {v0, v1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    #@3c
    .line 507
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@3f
    .line 508
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@42
    .line 509
    const-string/jumbo v3, "packages"

    #@45
    move-object/from16 v0, p1

    #@47
    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@4a
    .line 510
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@4d
    .line 511
    move-object/from16 v0, p2

    #@4f
    iget-object v0, v0, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    #@51
    move-object/from16 v16, v0

    #@53
    .line 512
    .local v16, "pkgStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/usage/UsageStats;>;"
    invoke-virtual/range {v16 .. v16}, Landroid/util/ArrayMap;->size()I

    #@56
    move-result v15

    #@57
    .line 513
    .local v15, "pkgCount":I
    const/4 v14, 0x0

    #@58
    .local v14, "i":I
    :goto_1
    if-ge v14, v15, :cond_1

    #@5a
    .line 514
    move-object/from16 v0, v16

    #@5c
    invoke-virtual {v0, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@5f
    move-result-object v17

    #@60
    check-cast v17, Landroid/app/usage/UsageStats;

    #@62
    .line 515
    .local v17, "usageStats":Landroid/app/usage/UsageStats;
    const-string/jumbo v3, "package"

    #@65
    move-object/from16 v0, v17

    #@67
    iget-object v4, v0, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    #@69
    move-object/from16 v0, p1

    #@6b
    invoke-virtual {v0, v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    #@6e
    .line 516
    const-string/jumbo v3, "totalTime"

    #@71
    .line 517
    move-object/from16 v0, v17

    #@73
    iget-wide v4, v0, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    #@75
    move-object/from16 v0, p0

    #@77
    move/from16 v1, p3

    #@79
    invoke-direct {v0, v4, v5, v1}, Lcom/android/server/usage/UserUsageStatsService;->formatElapsedTime(JZ)Ljava/lang/String;

    #@7c
    move-result-object v4

    #@7d
    .line 516
    move-object/from16 v0, p1

    #@7f
    invoke-virtual {v0, v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    #@82
    .line 518
    const-string/jumbo v3, "lastTime"

    #@85
    move-object/from16 v0, v17

    #@87
    iget-wide v4, v0, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    #@89
    move-object/from16 v0, p0

    #@8b
    move/from16 v1, p3

    #@8d
    invoke-direct {v0, v4, v5, v1}, Lcom/android/server/usage/UserUsageStatsService;->formatDateTime(JZ)Ljava/lang/String;

    #@90
    move-result-object v4

    #@91
    move-object/from16 v0, p1

    #@93
    invoke-virtual {v0, v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    #@96
    .line 519
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@99
    .line 513
    add-int/lit8 v14, v14, 0x1

    #@9b
    goto :goto_1

    #@9c
    .line 504
    .end local v14    # "i":I
    .end local v15    # "pkgCount":I
    .end local v16    # "pkgStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/usage/UsageStats;>;"
    .end local v17    # "usageStats":Landroid/app/usage/UsageStats;
    :cond_0
    const-string/jumbo v3, "beginTime"

    #@9f
    move-object/from16 v0, p2

    #@a1
    iget-wide v4, v0, Lcom/android/server/usage/IntervalStats;->beginTime:J

    #@a3
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@a6
    move-result-object v4

    #@a7
    move-object/from16 v0, p1

    #@a9
    invoke-virtual {v0, v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    #@ac
    .line 505
    const-string/jumbo v3, "endTime"

    #@af
    move-object/from16 v0, p2

    #@b1
    iget-wide v4, v0, Lcom/android/server/usage/IntervalStats;->endTime:J

    #@b3
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@b6
    move-result-object v4

    #@b7
    move-object/from16 v0, p1

    #@b9
    invoke-virtual {v0, v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    #@bc
    goto :goto_0

    #@bd
    .line 521
    .restart local v14    # "i":I
    .restart local v15    # "pkgCount":I
    .restart local v16    # "pkgStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/usage/UsageStats;>;"
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@c0
    .line 523
    const-string/jumbo v3, "configurations"

    #@c3
    move-object/from16 v0, p1

    #@c5
    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@c8
    .line 524
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@cb
    .line 525
    move-object/from16 v0, p2

    #@cd
    iget-object v10, v0, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    #@cf
    .line 526
    .local v10, "configStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/res/Configuration;Landroid/app/usage/ConfigurationStats;>;"
    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    #@d2
    move-result v9

    #@d3
    .line 527
    .local v9, "configCount":I
    const/4 v14, 0x0

    #@d4
    :goto_2
    if-ge v14, v9, :cond_2

    #@d6
    .line 528
    invoke-virtual {v10, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@d9
    move-result-object v2

    #@da
    check-cast v2, Landroid/app/usage/ConfigurationStats;

    #@dc
    .line 529
    .local v2, "config":Landroid/app/usage/ConfigurationStats;
    const-string/jumbo v3, "config"

    #@df
    iget-object v4, v2, Landroid/app/usage/ConfigurationStats;->mConfiguration:Landroid/content/res/Configuration;

    #@e1
    invoke-static {v4}, Landroid/content/res/Configuration;->resourceQualifierString(Landroid/content/res/Configuration;)Ljava/lang/String;

    #@e4
    move-result-object v4

    #@e5
    move-object/from16 v0, p1

    #@e7
    invoke-virtual {v0, v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    #@ea
    .line 530
    const-string/jumbo v3, "totalTime"

    #@ed
    iget-wide v4, v2, Landroid/app/usage/ConfigurationStats;->mTotalTimeActive:J

    #@ef
    move-object/from16 v0, p0

    #@f1
    move/from16 v1, p3

    #@f3
    invoke-direct {v0, v4, v5, v1}, Lcom/android/server/usage/UserUsageStatsService;->formatElapsedTime(JZ)Ljava/lang/String;

    #@f6
    move-result-object v4

    #@f7
    move-object/from16 v0, p1

    #@f9
    invoke-virtual {v0, v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    #@fc
    .line 531
    const-string/jumbo v3, "lastTime"

    #@ff
    iget-wide v4, v2, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    #@101
    move-object/from16 v0, p0

    #@103
    move/from16 v1, p3

    #@105
    invoke-direct {v0, v4, v5, v1}, Lcom/android/server/usage/UserUsageStatsService;->formatDateTime(JZ)Ljava/lang/String;

    #@108
    move-result-object v4

    #@109
    move-object/from16 v0, p1

    #@10b
    invoke-virtual {v0, v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    #@10e
    .line 532
    const-string/jumbo v3, "count"

    #@111
    iget v4, v2, Landroid/app/usage/ConfigurationStats;->mActivationCount:I

    #@113
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@116
    move-result-object v4

    #@117
    move-object/from16 v0, p1

    #@119
    invoke-virtual {v0, v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    #@11c
    .line 533
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@11f
    .line 527
    add-int/lit8 v14, v14, 0x1

    #@121
    goto :goto_2

    #@122
    .line 535
    .end local v2    # "config":Landroid/app/usage/ConfigurationStats;
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@125
    .line 537
    const-string/jumbo v3, "events"

    #@128
    move-object/from16 v0, p1

    #@12a
    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@12d
    .line 538
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@130
    .line 539
    move-object/from16 v0, p2

    #@132
    iget-object v13, v0, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/TimeSparseArray;

    #@134
    .line 540
    .local v13, "events":Landroid/app/usage/TimeSparseArray;, "Landroid/app/usage/TimeSparseArray<Landroid/app/usage/UsageEvents$Event;>;"
    if-eqz v13, :cond_5

    #@136
    invoke-virtual {v13}, Landroid/app/usage/TimeSparseArray;->size()I

    #@139
    move-result v12

    #@13a
    .line 541
    .local v12, "eventCount":I
    :goto_3
    const/4 v14, 0x0

    #@13b
    :goto_4
    if-ge v14, v12, :cond_6

    #@13d
    .line 542
    invoke-virtual {v13, v14}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    #@140
    move-result-object v11

    #@141
    check-cast v11, Landroid/app/usage/UsageEvents$Event;

    #@143
    .line 543
    .local v11, "event":Landroid/app/usage/UsageEvents$Event;
    const-string/jumbo v3, "time"

    #@146
    iget-wide v4, v11, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    #@148
    move-object/from16 v0, p0

    #@14a
    move/from16 v1, p3

    #@14c
    invoke-direct {v0, v4, v5, v1}, Lcom/android/server/usage/UserUsageStatsService;->formatDateTime(JZ)Ljava/lang/String;

    #@14f
    move-result-object v4

    #@150
    move-object/from16 v0, p1

    #@152
    invoke-virtual {v0, v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    #@155
    .line 544
    const-string/jumbo v3, "type"

    #@158
    iget v4, v11, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    #@15a
    invoke-static {v4}, Lcom/android/server/usage/UserUsageStatsService;->eventToString(I)Ljava/lang/String;

    #@15d
    move-result-object v4

    #@15e
    move-object/from16 v0, p1

    #@160
    invoke-virtual {v0, v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    #@163
    .line 545
    const-string/jumbo v3, "package"

    #@166
    iget-object v4, v11, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    #@168
    move-object/from16 v0, p1

    #@16a
    invoke-virtual {v0, v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    #@16d
    .line 546
    iget-object v3, v11, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    #@16f
    if-eqz v3, :cond_3

    #@171
    .line 547
    const-string/jumbo v3, "class"

    #@174
    iget-object v4, v11, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    #@176
    move-object/from16 v0, p1

    #@178
    invoke-virtual {v0, v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    #@17b
    .line 549
    :cond_3
    iget-object v3, v11, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    #@17d
    if-eqz v3, :cond_4

    #@17f
    .line 550
    const-string/jumbo v3, "config"

    #@182
    iget-object v4, v11, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    #@184
    invoke-static {v4}, Landroid/content/res/Configuration;->resourceQualifierString(Landroid/content/res/Configuration;)Ljava/lang/String;

    #@187
    move-result-object v4

    #@188
    move-object/from16 v0, p1

    #@18a
    invoke-virtual {v0, v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    #@18d
    .line 552
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@190
    .line 541
    add-int/lit8 v14, v14, 0x1

    #@192
    goto :goto_4

    #@193
    .line 540
    .end local v11    # "event":Landroid/app/usage/UsageEvents$Event;
    .end local v12    # "eventCount":I
    :cond_5
    const/4 v12, 0x0

    #@194
    .restart local v12    # "eventCount":I
    goto :goto_3

    #@195
    .line 554
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@198
    .line 555
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@19b
    .line 499
    return-void
.end method

.method queryConfigurationStats(IJJ)Ljava/util/List;
    .locals 8
    .param p1, "bucketType"    # I
    .param p2, "beginTime"    # J
    .param p4, "endTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ)",
            "Ljava/util/List",
            "<",
            "Landroid/app/usage/ConfigurationStats;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 304
    sget-object v6, Lcom/android/server/usage/UserUsageStatsService;->sConfigStatsCombiner:Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;

    #@2
    move-object v0, p0

    #@3
    move v1, p1

    #@4
    move-wide v2, p2

    #@5
    move-wide v4, p4

    #@6
    invoke-direct/range {v0 .. v6}, Lcom/android/server/usage/UserUsageStatsService;->queryStats(IJJLcom/android/server/usage/UsageStatsDatabase$StatCombiner;)Ljava/util/List;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method queryEvents(JJ)Landroid/app/usage/UsageEvents;
    .locals 17
    .param p1, "beginTime"    # J
    .param p3, "endTime"    # J

    #@0
    .prologue
    .line 308
    new-instance v6, Landroid/util/ArraySet;

    #@2
    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    #@5
    .line 310
    .local v6, "names":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    new-instance v0, Lcom/android/server/usage/UserUsageStatsService$3;

    #@7
    move-object/from16 v1, p0

    #@9
    move-wide/from16 v2, p1

    #@b
    move-wide/from16 v4, p3

    #@d
    invoke-direct/range {v0 .. v6}, Lcom/android/server/usage/UserUsageStatsService$3;-><init>(Lcom/android/server/usage/UserUsageStatsService;JJLandroid/util/ArraySet;)V

    #@10
    .line 309
    const/4 v9, 0x0

    #@11
    move-object/from16 v8, p0

    #@13
    move-wide/from16 v10, p1

    #@15
    move-wide/from16 v12, p3

    #@17
    move-object v14, v0

    #@18
    invoke-direct/range {v8 .. v14}, Lcom/android/server/usage/UserUsageStatsService;->queryStats(IJJLcom/android/server/usage/UsageStatsDatabase$StatCombiner;)Ljava/util/List;

    #@1b
    move-result-object v7

    #@1c
    .line 339
    .local v7, "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageEvents$Event;>;"
    if-eqz v7, :cond_0

    #@1e
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    #@21
    move-result v0

    #@22
    if-eqz v0, :cond_1

    #@24
    .line 340
    :cond_0
    const/4 v0, 0x0

    #@25
    return-object v0

    #@26
    .line 343
    :cond_1
    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    #@29
    move-result v0

    #@2a
    new-array v0, v0, [Ljava/lang/String;

    #@2c
    invoke-virtual {v6, v0}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@2f
    move-result-object v15

    #@30
    check-cast v15, [Ljava/lang/String;

    #@32
    .line 344
    .local v15, "table":[Ljava/lang/String;
    invoke-static {v15}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    #@35
    .line 345
    new-instance v0, Landroid/app/usage/UsageEvents;

    #@37
    invoke-direct {v0, v7, v15}, Landroid/app/usage/UsageEvents;-><init>(Ljava/util/List;[Ljava/lang/String;)V

    #@3a
    return-object v0
.end method

.method queryUsageStats(IJJ)Ljava/util/List;
    .locals 8
    .param p1, "bucketType"    # I
    .param p2, "beginTime"    # J
    .param p4, "endTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ)",
            "Ljava/util/List",
            "<",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 300
    sget-object v6, Lcom/android/server/usage/UserUsageStatsService;->sUsageStatsCombiner:Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;

    #@2
    move-object v0, p0

    #@3
    move v1, p1

    #@4
    move-wide v2, p2

    #@5
    move-wide v4, p4

    #@6
    invoke-direct/range {v0 .. v6}, Lcom/android/server/usage/UserUsageStatsService;->queryStats(IJJLcom/android/server/usage/UsageStatsDatabase$StatCombiner;)Ljava/util/List;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method reportEvent(Landroid/app/usage/UsageEvents$Event;)V
    .locals 11
    .param p1, "event"    # Landroid/app/usage/UsageEvents$Event;

    #@0
    .prologue
    const/4 v10, 0x5

    #@1
    const/4 v3, 0x0

    #@2
    .line 160
    iget-wide v4, p1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    #@4
    iget-object v6, p0, Lcom/android/server/usage/UserUsageStatsService;->mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    #@6
    invoke-virtual {v6}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    #@9
    move-result-wide v6

    #@a
    cmp-long v4, v4, v6

    #@c
    if-ltz v4, :cond_0

    #@e
    .line 162
    iget-wide v4, p1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    #@10
    invoke-direct {p0, v4, v5}, Lcom/android/server/usage/UserUsageStatsService;->rolloverStats(J)V

    #@13
    .line 165
    :cond_0
    iget-object v4, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    #@15
    aget-object v0, v4, v3

    #@17
    .line 167
    .local v0, "currentDailyStats":Lcom/android/server/usage/IntervalStats;
    iget-object v1, p1, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    #@19
    .line 168
    .local v1, "newFullConfig":Landroid/content/res/Configuration;
    iget v4, p1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    #@1b
    if-ne v4, v10, :cond_1

    #@1d
    .line 169
    iget-object v4, v0, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    #@1f
    if-eqz v4, :cond_1

    #@21
    .line 172
    iget-object v4, v0, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    #@23
    .line 171
    invoke-static {v4, v1}, Landroid/content/res/Configuration;->generateDelta(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Landroid/content/res/Configuration;

    #@26
    move-result-object v4

    #@27
    iput-object v4, p1, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    #@29
    .line 176
    :cond_1
    iget-object v4, v0, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/TimeSparseArray;

    #@2b
    if-nez v4, :cond_2

    #@2d
    .line 177
    new-instance v4, Landroid/app/usage/TimeSparseArray;

    #@2f
    invoke-direct {v4}, Landroid/app/usage/TimeSparseArray;-><init>()V

    #@32
    iput-object v4, v0, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/TimeSparseArray;

    #@34
    .line 179
    :cond_2
    iget v4, p1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    #@36
    const/4 v5, 0x6

    #@37
    if-eq v4, v5, :cond_3

    #@39
    .line 180
    iget-object v4, v0, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/TimeSparseArray;

    #@3b
    iget-wide v6, p1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    #@3d
    invoke-virtual {v4, v6, v7, p1}, Landroid/app/usage/TimeSparseArray;->put(JLjava/lang/Object;)V

    #@40
    .line 183
    :cond_3
    iget-object v4, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    #@42
    array-length v5, v4

    #@43
    :goto_0
    if-ge v3, v5, :cond_5

    #@45
    aget-object v2, v4, v3

    #@47
    .line 184
    .local v2, "stats":Lcom/android/server/usage/IntervalStats;
    iget v6, p1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    #@49
    if-ne v6, v10, :cond_4

    #@4b
    .line 185
    iget-wide v6, p1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    #@4d
    invoke-virtual {v2, v1, v6, v7}, Lcom/android/server/usage/IntervalStats;->updateConfigurationStats(Landroid/content/res/Configuration;J)V

    #@50
    .line 183
    :goto_1
    add-int/lit8 v3, v3, 0x1

    #@52
    goto :goto_0

    #@53
    .line 187
    :cond_4
    iget-object v6, p1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    #@55
    iget-wide v8, p1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    #@57
    iget v7, p1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    #@59
    invoke-virtual {v2, v6, v8, v9, v7}, Lcom/android/server/usage/IntervalStats;->update(Ljava/lang/String;JI)V

    #@5c
    goto :goto_1

    #@5d
    .line 191
    .end local v2    # "stats":Lcom/android/server/usage/IntervalStats;
    :cond_5
    invoke-direct {p0}, Lcom/android/server/usage/UserUsageStatsService;->notifyStatsChanged()V

    #@60
    .line 153
    return-void
.end method
