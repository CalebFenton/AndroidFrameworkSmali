.class Lcom/android/server/usage/UserUsageStatsService;
.super Ljava/lang/Object;
.source "UserUsageStatsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;,
        Lcom/android/server/usage/UserUsageStatsService$1;,
        Lcom/android/server/usage/UserUsageStatsService$2;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

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
    .line 237
    new-instance v0, Lcom/android/server/usage/UserUsageStatsService$1;

    #@c
    invoke-direct {v0}, Lcom/android/server/usage/UserUsageStatsService$1;-><init>()V

    #@f
    .line 236
    sput-object v0, Lcom/android/server/usage/UserUsageStatsService;->sUsageStatsCombiner:Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;

    #@11
    .line 254
    new-instance v0, Lcom/android/server/usage/UserUsageStatsService$2;

    #@13
    invoke-direct {v0}, Lcom/android/server/usage/UserUsageStatsService$2;-><init>()V

    #@16
    .line 253
    sput-object v0, Lcom/android/server/usage/UserUsageStatsService;->sConfigStatsCombiner:Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;

    #@18
    .line 49
    return-void
.end method

.method constructor <init>(Landroid/content/Context;ILjava/io/File;Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .param p3, "usageStatsDir"    # Ljava/io/File;
    .param p4, "listener"    # Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;

    #@0
    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 62
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mStatsChanged:Z

    #@6
    .line 74
    iput-object p1, p0, Lcom/android/server/usage/UserUsageStatsService;->mContext:Landroid/content/Context;

    #@8
    .line 75
    new-instance v0, Lcom/android/server/usage/UnixCalendar;

    #@a
    const-wide/16 v2, 0x0

    #@c
    invoke-direct {v0, v2, v3}, Lcom/android/server/usage/UnixCalendar;-><init>(J)V

    #@f
    iput-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    #@11
    .line 76
    new-instance v0, Lcom/android/server/usage/UsageStatsDatabase;

    #@13
    invoke-direct {v0, p3}, Lcom/android/server/usage/UsageStatsDatabase;-><init>(Ljava/io/File;)V

    #@16
    iput-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    #@18
    .line 77
    const/4 v0, 0x4

    #@19
    new-array v0, v0, [Lcom/android/server/usage/IntervalStats;

    #@1b
    iput-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    #@1d
    .line 78
    iput-object p4, p0, Lcom/android/server/usage/UserUsageStatsService;->mListener:Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;

    #@1f
    .line 79
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
    .line 80
    iput p2, p0, Lcom/android/server/usage/UserUsageStatsService;->mUserId:I

    #@42
    .line 73
    return-void
.end method

.method private static eventToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "eventType"    # I

    #@0
    .prologue
    .line 651
    packed-switch p0, :pswitch_data_0

    #@3
    .line 669
    const-string/jumbo v0, "UNKNOWN"

    #@6
    return-object v0

    #@7
    .line 653
    :pswitch_0
    const-string/jumbo v0, "NONE"

    #@a
    return-object v0

    #@b
    .line 655
    :pswitch_1
    const-string/jumbo v0, "MOVE_TO_BACKGROUND"

    #@e
    return-object v0

    #@f
    .line 657
    :pswitch_2
    const-string/jumbo v0, "MOVE_TO_FOREGROUND"

    #@12
    return-object v0

    #@13
    .line 659
    :pswitch_3
    const-string/jumbo v0, "END_OF_DAY"

    #@16
    return-object v0

    #@17
    .line 661
    :pswitch_4
    const-string/jumbo v0, "CONTINUE_PREVIOUS_DAY"

    #@1a
    return-object v0

    #@1b
    .line 663
    :pswitch_5
    const-string/jumbo v0, "CONFIGURATION_CHANGE"

    #@1e
    return-object v0

    #@1f
    .line 665
    :pswitch_6
    const-string/jumbo v0, "SYSTEM_INTERACTION"

    #@22
    return-object v0

    #@23
    .line 667
    :pswitch_7
    const-string/jumbo v0, "USER_INTERACTION"

    #@26
    return-object v0

    #@27
    .line 651
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
    .line 558
    if-eqz p3, :cond_0

    #@2
    .line 559
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
    .line 561
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
    .line 565
    if-eqz p3, :cond_0

    #@2
    .line 566
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
    .line 568
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@29
    move-result-object v0

    #@2a
    return-object v0
.end method

.method private initializeDefaultsForApps(JJZ)V
    .locals 15
    .param p1, "currentTimeMillis"    # J
    .param p3, "deviceUsageTime"    # J
    .param p5, "firstUpdate"    # Z

    #@0
    .prologue
    .line 151
    iget-object v9, p0, Lcom/android/server/usage/UserUsageStatsService;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@5
    move-result-object v7

    #@6
    .line 152
    .local v7, "pm":Landroid/content/pm/PackageManager;
    iget v9, p0, Lcom/android/server/usage/UserUsageStatsService;->mUserId:I

    #@8
    const/4 v10, 0x0

    #@9
    invoke-virtual {v7, v10, v9}, Landroid/content/pm/PackageManager;->getInstalledPackages(II)Ljava/util/List;

    #@c
    move-result-object v5

    #@d
    .line 153
    .local v5, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    #@10
    move-result v3

    #@11
    .line 154
    .local v3, "packageCount":I
    const/4 v2, 0x0

    #@12
    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_2

    #@14
    .line 155
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@17
    move-result-object v6

    #@18
    check-cast v6, Landroid/content/pm/PackageInfo;

    #@1a
    .line 156
    .local v6, "pi":Landroid/content/pm/PackageInfo;
    iget-object v4, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@1c
    .line 157
    .local v4, "packageName":Ljava/lang/String;
    iget-object v9, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@1e
    if-eqz v9, :cond_1

    #@20
    if-nez p5, :cond_0

    #@22
    iget-object v9, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@24
    invoke-virtual {v9}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    #@27
    move-result v9

    #@28
    if-eqz v9, :cond_1

    #@2a
    .line 158
    :cond_0
    invoke-virtual {p0, v4}, Lcom/android/server/usage/UserUsageStatsService;->getBeginIdleTime(Ljava/lang/String;)J

    #@2d
    move-result-wide v10

    #@2e
    const-wide/16 v12, -0x1

    #@30
    cmp-long v9, v10, v12

    #@32
    if-nez v9, :cond_1

    #@34
    .line 159
    iget-object v10, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    #@36
    const/4 v9, 0x0

    #@37
    array-length v11, v10

    #@38
    :goto_1
    if-ge v9, v11, :cond_1

    #@3a
    aget-object v8, v10, v9

    #@3c
    .line 160
    .local v8, "stats":Lcom/android/server/usage/IntervalStats;
    const/4 v12, 0x6

    #@3d
    move-wide/from16 v0, p1

    #@3f
    invoke-virtual {v8, v4, v0, v1, v12}, Lcom/android/server/usage/IntervalStats;->update(Ljava/lang/String;JI)V

    #@42
    .line 161
    move-wide/from16 v0, p3

    #@44
    invoke-virtual {v8, v4, v0, v1}, Lcom/android/server/usage/IntervalStats;->updateBeginIdleTime(Ljava/lang/String;J)V

    #@47
    .line 162
    const/4 v12, 0x1

    #@48
    iput-boolean v12, p0, Lcom/android/server/usage/UserUsageStatsService;->mStatsChanged:Z

    #@4a
    .line 159
    add-int/lit8 v9, v9, 0x1

    #@4c
    goto :goto_1

    #@4d
    .line 154
    .end local v8    # "stats":Lcom/android/server/usage/IntervalStats;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@4f
    goto :goto_0

    #@50
    .line 167
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v6    # "pi":Landroid/content/pm/PackageInfo;
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/usage/UserUsageStatsService;->persistActiveStats()V

    #@53
    .line 150
    return-void
.end method

.method private static intervalToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "interval"    # I

    #@0
    .prologue
    .line 636
    packed-switch p0, :pswitch_data_0

    #@3
    .line 646
    const-string/jumbo v0, "?"

    #@6
    return-object v0

    #@7
    .line 638
    :pswitch_0
    const-string/jumbo v0, "daily"

    #@a
    return-object v0

    #@b
    .line 640
    :pswitch_1
    const-string/jumbo v0, "weekly"

    #@e
    return-object v0

    #@f
    .line 642
    :pswitch_2
    const-string/jumbo v0, "monthly"

    #@12
    return-object v0

    #@13
    .line 644
    :pswitch_3
    const-string/jumbo v0, "yearly"

    #@16
    return-object v0

    #@17
    .line 636
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

.method private loadActiveStats(JZZ)V
    .locals 13
    .param p1, "currentTimeMillis"    # J
    .param p3, "force"    # Z
    .param p4, "resetBeginIdleTime"    # Z

    #@0
    .prologue
    .line 482
    iget-object v1, p0, Lcom/android/server/usage/UserUsageStatsService;->mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    #@2
    .line 483
    .local v1, "tempCal":Lcom/android/server/usage/UnixCalendar;
    const/4 v0, 0x0

    #@3
    .local v0, "intervalType":I
    :goto_0
    iget-object v6, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    #@5
    array-length v6, v6

    #@6
    if-ge v0, v6, :cond_4

    #@8
    .line 484
    invoke-virtual {v1, p1, p2}, Lcom/android/server/usage/UnixCalendar;->setTimeInMillis(J)V

    #@b
    .line 485
    invoke-static {v1, v0}, Lcom/android/server/usage/UnixCalendar;->truncateTo(Lcom/android/server/usage/UnixCalendar;I)V

    #@e
    .line 487
    if-nez p3, :cond_1

    #@10
    iget-object v6, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    #@12
    aget-object v6, v6, v0

    #@14
    if-eqz v6, :cond_1

    #@16
    .line 488
    iget-object v6, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    #@18
    aget-object v6, v6, v0

    #@1a
    iget-wide v6, v6, Lcom/android/server/usage/IntervalStats;->beginTime:J

    #@1c
    invoke-virtual {v1}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    #@1f
    move-result-wide v8

    #@20
    cmp-long v6, v6, v8

    #@22
    if-nez v6, :cond_1

    #@24
    .line 483
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@26
    goto :goto_0

    #@27
    .line 494
    :cond_1
    iget-object v6, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    #@29
    invoke-virtual {v6, v0}, Lcom/android/server/usage/UsageStatsDatabase;->getLatestUsageStatsBeginTime(I)J

    #@2c
    move-result-wide v2

    #@2d
    .line 495
    .local v2, "lastBeginTime":J
    invoke-virtual {v1}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    #@30
    move-result-wide v6

    #@31
    cmp-long v6, v2, v6

    #@33
    if-ltz v6, :cond_3

    #@35
    .line 501
    iget-object v6, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    #@37
    iget-object v7, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    #@39
    invoke-virtual {v7, v0}, Lcom/android/server/usage/UsageStatsDatabase;->getLatestUsageStats(I)Lcom/android/server/usage/IntervalStats;

    #@3c
    move-result-object v7

    #@3d
    aput-object v7, v6, v0

    #@3f
    .line 506
    :goto_1
    iget-object v6, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    #@41
    aget-object v6, v6, v0

    #@43
    if-nez v6, :cond_2

    #@45
    .line 513
    iget-object v6, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    #@47
    new-instance v7, Lcom/android/server/usage/IntervalStats;

    #@49
    invoke-direct {v7}, Lcom/android/server/usage/IntervalStats;-><init>()V

    #@4c
    aput-object v7, v6, v0

    #@4e
    .line 514
    iget-object v6, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    #@50
    aget-object v6, v6, v0

    #@52
    invoke-virtual {v1}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    #@55
    move-result-wide v8

    #@56
    iput-wide v8, v6, Lcom/android/server/usage/IntervalStats;->beginTime:J

    #@58
    .line 515
    iget-object v6, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    #@5a
    aget-object v6, v6, v0

    #@5c
    iput-wide p1, v6, Lcom/android/server/usage/IntervalStats;->endTime:J

    #@5e
    .line 518
    :cond_2
    if-eqz p4, :cond_0

    #@60
    .line 519
    iget-object v6, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    #@62
    aget-object v6, v6, v0

    #@64
    iget-object v6, v6, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    #@66
    invoke-virtual {v6}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    #@69
    move-result-object v6

    #@6a
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@6d
    move-result-object v5

    #@6e
    .local v5, "usageStats$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@71
    move-result v6

    #@72
    if-eqz v6, :cond_0

    #@74
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@77
    move-result-object v4

    #@78
    check-cast v4, Landroid/app/usage/UsageStats;

    #@7a
    .line 520
    .local v4, "usageStats":Landroid/app/usage/UsageStats;
    const-wide/16 v6, 0x0

    #@7c
    iput-wide v6, v4, Landroid/app/usage/UsageStats;->mBeginIdleTime:J

    #@7e
    goto :goto_2

    #@7f
    .line 503
    .end local v4    # "usageStats":Landroid/app/usage/UsageStats;
    .end local v5    # "usageStats$iterator":Ljava/util/Iterator;
    :cond_3
    iget-object v6, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    #@81
    const/4 v7, 0x0

    #@82
    aput-object v7, v6, v0

    #@84
    goto :goto_1

    #@85
    .line 524
    .end local v2    # "lastBeginTime":J
    :cond_4
    const/4 v6, 0x0

    #@86
    iput-boolean v6, p0, Lcom/android/server/usage/UserUsageStatsService;->mStatsChanged:Z

    #@88
    .line 525
    iget-object v6, p0, Lcom/android/server/usage/UserUsageStatsService;->mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    #@8a
    invoke-virtual {v6, p1, p2}, Lcom/android/server/usage/UnixCalendar;->setTimeInMillis(J)V

    #@8d
    .line 526
    iget-object v6, p0, Lcom/android/server/usage/UserUsageStatsService;->mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    #@8f
    const/4 v7, 0x1

    #@90
    invoke-virtual {v6, v7}, Lcom/android/server/usage/UnixCalendar;->addDays(I)V

    #@93
    .line 527
    iget-object v6, p0, Lcom/android/server/usage/UserUsageStatsService;->mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    #@95
    invoke-virtual {v6}, Lcom/android/server/usage/UnixCalendar;->truncateToDay()V

    #@98
    .line 528
    const-string/jumbo v6, "UsageStatsService"

    #@9b
    new-instance v7, Ljava/lang/StringBuilder;

    #@9d
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@a0
    iget-object v8, p0, Lcom/android/server/usage/UserUsageStatsService;->mLogPrefix:Ljava/lang/String;

    #@a2
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a5
    move-result-object v7

    #@a6
    const-string/jumbo v8, "Rollover scheduled @ "

    #@a9
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ac
    move-result-object v7

    #@ad
    .line 529
    sget-object v8, Lcom/android/server/usage/UserUsageStatsService;->sDateFormat:Ljava/text/SimpleDateFormat;

    #@af
    iget-object v9, p0, Lcom/android/server/usage/UserUsageStatsService;->mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    #@b1
    invoke-virtual {v9}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    #@b4
    move-result-wide v10

    #@b5
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@b8
    move-result-object v9

    #@b9
    invoke-virtual {v8, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    #@bc
    move-result-object v8

    #@bd
    .line 528
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c0
    move-result-object v7

    #@c1
    .line 529
    const-string/jumbo v8, "("

    #@c4
    .line 528
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c7
    move-result-object v7

    #@c8
    .line 530
    invoke-virtual {v1}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    #@cb
    move-result-wide v8

    #@cc
    .line 528
    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@cf
    move-result-object v7

    #@d0
    .line 530
    const-string/jumbo v8, ")"

    #@d3
    .line 528
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d6
    move-result-object v7

    #@d7
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@da
    move-result-object v7

    #@db
    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@de
    .line 481
    return-void
.end method

.method private notifyStatsChanged()V
    .locals 1

    #@0
    .prologue
    .line 471
    iget-boolean v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mStatsChanged:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 472
    const/4 v0, 0x1

    #@5
    iput-boolean v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mStatsChanged:Z

    #@7
    .line 473
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mListener:Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;

    #@9
    invoke-interface {v0}, Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;->onStatsUpdated()V

    #@c
    .line 470
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
    .line 277
    const/4 v2, 0x4

    #@2
    if-ne p1, v2, :cond_0

    #@4
    .line 278
    iget-object v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    #@6
    move-wide/from16 v0, p4

    #@8
    invoke-virtual {v2, p2, p3, v0, v1}, Lcom/android/server/usage/UsageStatsDatabase;->findBestFitBucket(JJ)I

    #@b
    move-result p1

    #@c
    .line 279
    if-gez p1, :cond_0

    #@e
    .line 282
    const/4 p1, 0x0

    #@f
    .line 286
    :cond_0
    if-ltz p1, :cond_1

    #@11
    iget-object v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    #@13
    array-length v2, v2

    #@14
    if-lt p1, v2, :cond_2

    #@16
    .line 290
    :cond_1
    return-object v4

    #@17
    .line 293
    :cond_2
    iget-object v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    #@19
    aget-object v9, v2, p1

    #@1b
    .line 300
    .local v9, "currentStats":Lcom/android/server/usage/IntervalStats;
    iget-wide v2, v9, Lcom/android/server/usage/IntervalStats;->endTime:J

    #@1d
    cmp-long v2, p2, v2

    #@1f
    if-ltz v2, :cond_3

    #@21
    .line 306
    return-object v4

    #@22
    .line 312
    :cond_3
    iget-wide v2, v9, Lcom/android/server/usage/IntervalStats;->beginTime:J

    #@24
    move-wide/from16 v0, p4

    #@26
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    #@29
    move-result-wide v6

    #@2a
    .line 315
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
    .line 324
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
    .line 329
    if-nez v10, :cond_4

    #@42
    .line 330
    new-instance v10, Ljava/util/ArrayList;

    #@44
    .end local v10    # "results":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    #@47
    .line 332
    .restart local v10    # "results":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_4
    const/4 v2, 0x1

    #@48
    move-object/from16 v0, p6

    #@4a
    invoke-interface {v0, v9, v2, v10}, Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;->combine(Lcom/android/server/usage/IntervalStats;ZLjava/util/List;)V

    #@4d
    .line 338
    :cond_5
    return-object v10
.end method

.method private rolloverStats(J)V
    .locals 29
    .param p1, "currentTimeMillis"    # J

    #@0
    .prologue
    .line 425
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@3
    move-result-wide v16

    #@4
    .line 426
    .local v16, "startTime":J
    const-string/jumbo v20, "UsageStatsService"

    #@7
    new-instance v21, Ljava/lang/StringBuilder;

    #@9
    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    move-object/from16 v0, p0

    #@e
    iget-object v0, v0, Lcom/android/server/usage/UserUsageStatsService;->mLogPrefix:Ljava/lang/String;

    #@10
    move-object/from16 v22, v0

    #@12
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v21

    #@16
    const-string/jumbo v22, "Rolling over usage stats"

    #@19
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v21

    #@1d
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v21

    #@21
    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@24
    .line 431
    move-object/from16 v0, p0

    #@26
    iget-object v0, v0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    #@28
    move-object/from16 v20, v0

    #@2a
    const/16 v21, 0x0

    #@2c
    aget-object v20, v20, v21

    #@2e
    .line 430
    move-object/from16 v0, v20

    #@30
    iget-object v14, v0, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    #@32
    .line 432
    .local v14, "previousConfig":Landroid/content/res/Configuration;
    new-instance v9, Landroid/util/ArraySet;

    #@34
    invoke-direct {v9}, Landroid/util/ArraySet;-><init>()V

    #@37
    .line 433
    .local v9, "continuePreviousDay":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    #@39
    iget-object v0, v0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    #@3b
    move-object/from16 v21, v0

    #@3d
    const/16 v20, 0x0

    #@3f
    move-object/from16 v0, v21

    #@41
    array-length v0, v0

    #@42
    move/from16 v22, v0

    #@44
    :goto_0
    move/from16 v0, v20

    #@46
    move/from16 v1, v22

    #@48
    if-ge v0, v1, :cond_3

    #@4a
    aget-object v15, v21, v20

    #@4c
    .line 434
    .local v15, "stat":Lcom/android/server/usage/IntervalStats;
    iget-object v0, v15, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    #@4e
    move-object/from16 v23, v0

    #@50
    invoke-virtual/range {v23 .. v23}, Landroid/util/ArrayMap;->size()I

    #@53
    move-result v12

    #@54
    .line 435
    .local v12, "pkgCount":I
    const/4 v10, 0x0

    #@55
    .local v10, "i":I
    :goto_1
    if-ge v10, v12, :cond_2

    #@57
    .line 436
    iget-object v0, v15, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    #@59
    move-object/from16 v23, v0

    #@5b
    move-object/from16 v0, v23

    #@5d
    invoke-virtual {v0, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@60
    move-result-object v13

    #@61
    check-cast v13, Landroid/app/usage/UsageStats;

    #@63
    .line 437
    .local v13, "pkgStats":Landroid/app/usage/UsageStats;
    iget v0, v13, Landroid/app/usage/UsageStats;->mLastEvent:I

    #@65
    move/from16 v23, v0

    #@67
    const/16 v24, 0x1

    #@69
    move/from16 v0, v23

    #@6b
    move/from16 v1, v24

    #@6d
    if-eq v0, v1, :cond_0

    #@6f
    .line 438
    iget v0, v13, Landroid/app/usage/UsageStats;->mLastEvent:I

    #@71
    move/from16 v23, v0

    #@73
    const/16 v24, 0x4

    #@75
    move/from16 v0, v23

    #@77
    move/from16 v1, v24

    #@79
    if-ne v0, v1, :cond_1

    #@7b
    .line 439
    :cond_0
    iget-object v0, v13, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    #@7d
    move-object/from16 v23, v0

    #@7f
    move-object/from16 v0, v23

    #@81
    invoke-virtual {v9, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@84
    .line 440
    iget-object v0, v13, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    #@86
    move-object/from16 v23, v0

    #@88
    move-object/from16 v0, p0

    #@8a
    iget-object v0, v0, Lcom/android/server/usage/UserUsageStatsService;->mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    #@8c
    move-object/from16 v24, v0

    #@8e
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    #@91
    move-result-wide v24

    #@92
    const-wide/16 v26, 0x1

    #@94
    sub-long v24, v24, v26

    #@96
    .line 441
    const/16 v26, 0x3

    #@98
    .line 440
    move-object/from16 v0, v23

    #@9a
    move-wide/from16 v1, v24

    #@9c
    move/from16 v3, v26

    #@9e
    invoke-virtual {v15, v0, v1, v2, v3}, Lcom/android/server/usage/IntervalStats;->update(Ljava/lang/String;JI)V

    #@a1
    .line 442
    invoke-direct/range {p0 .. p0}, Lcom/android/server/usage/UserUsageStatsService;->notifyStatsChanged()V

    #@a4
    .line 435
    :cond_1
    add-int/lit8 v10, v10, 0x1

    #@a6
    goto :goto_1

    #@a7
    .line 446
    .end local v13    # "pkgStats":Landroid/app/usage/UsageStats;
    :cond_2
    move-object/from16 v0, p0

    #@a9
    iget-object v0, v0, Lcom/android/server/usage/UserUsageStatsService;->mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    #@ab
    move-object/from16 v23, v0

    #@ad
    invoke-virtual/range {v23 .. v23}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    #@b0
    move-result-wide v24

    #@b1
    const-wide/16 v26, 0x1

    #@b3
    sub-long v24, v24, v26

    #@b5
    const/16 v23, 0x0

    #@b7
    move-object/from16 v0, v23

    #@b9
    move-wide/from16 v1, v24

    #@bb
    invoke-virtual {v15, v0, v1, v2}, Lcom/android/server/usage/IntervalStats;->updateConfigurationStats(Landroid/content/res/Configuration;J)V

    #@be
    .line 433
    add-int/lit8 v20, v20, 0x1

    #@c0
    goto :goto_0

    #@c1
    .line 449
    .end local v10    # "i":I
    .end local v12    # "pkgCount":I
    .end local v15    # "stat":Lcom/android/server/usage/IntervalStats;
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usage/UserUsageStatsService;->persistActiveStats()V

    #@c4
    .line 450
    move-object/from16 v0, p0

    #@c6
    iget-object v0, v0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    #@c8
    move-object/from16 v20, v0

    #@ca
    move-object/from16 v0, v20

    #@cc
    move-wide/from16 v1, p1

    #@ce
    invoke-virtual {v0, v1, v2}, Lcom/android/server/usage/UsageStatsDatabase;->prune(J)V

    #@d1
    .line 451
    const/16 v20, 0x0

    #@d3
    const/16 v21, 0x0

    #@d5
    move-object/from16 v0, p0

    #@d7
    move-wide/from16 v1, p1

    #@d9
    move/from16 v3, v20

    #@db
    move/from16 v4, v21

    #@dd
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/usage/UserUsageStatsService;->loadActiveStats(JZZ)V

    #@e0
    .line 453
    invoke-virtual {v9}, Landroid/util/ArraySet;->size()I

    #@e3
    move-result v8

    #@e4
    .line 454
    .local v8, "continueCount":I
    const/4 v10, 0x0

    #@e5
    .restart local v10    # "i":I
    :goto_2
    if-ge v10, v8, :cond_5

    #@e7
    .line 455
    invoke-virtual {v9, v10}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@ea
    move-result-object v11

    #@eb
    check-cast v11, Ljava/lang/String;

    #@ed
    .line 456
    .local v11, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    #@ef
    iget-object v0, v0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    #@f1
    move-object/from16 v20, v0

    #@f3
    const/16 v21, 0x0

    #@f5
    aget-object v20, v20, v21

    #@f7
    move-object/from16 v0, v20

    #@f9
    iget-wide v6, v0, Lcom/android/server/usage/IntervalStats;->beginTime:J

    #@fb
    .line 457
    .local v6, "beginTime":J
    move-object/from16 v0, p0

    #@fd
    iget-object v0, v0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    #@ff
    move-object/from16 v21, v0

    #@101
    const/16 v20, 0x0

    #@103
    move-object/from16 v0, v21

    #@105
    array-length v0, v0

    #@106
    move/from16 v22, v0

    #@108
    :goto_3
    move/from16 v0, v20

    #@10a
    move/from16 v1, v22

    #@10c
    if-ge v0, v1, :cond_4

    #@10e
    aget-object v15, v21, v20

    #@110
    .line 458
    .restart local v15    # "stat":Lcom/android/server/usage/IntervalStats;
    const/16 v23, 0x4

    #@112
    move/from16 v0, v23

    #@114
    invoke-virtual {v15, v11, v6, v7, v0}, Lcom/android/server/usage/IntervalStats;->update(Ljava/lang/String;JI)V

    #@117
    .line 459
    invoke-virtual {v15, v14, v6, v7}, Lcom/android/server/usage/IntervalStats;->updateConfigurationStats(Landroid/content/res/Configuration;J)V

    #@11a
    .line 460
    invoke-direct/range {p0 .. p0}, Lcom/android/server/usage/UserUsageStatsService;->notifyStatsChanged()V

    #@11d
    .line 457
    add-int/lit8 v20, v20, 0x1

    #@11f
    goto :goto_3

    #@120
    .line 454
    .end local v15    # "stat":Lcom/android/server/usage/IntervalStats;
    :cond_4
    add-int/lit8 v10, v10, 0x1

    #@122
    goto :goto_2

    #@123
    .line 463
    .end local v6    # "beginTime":J
    .end local v11    # "name":Ljava/lang/String;
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usage/UserUsageStatsService;->persistActiveStats()V

    #@126
    .line 465
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@129
    move-result-wide v20

    #@12a
    sub-long v18, v20, v16

    #@12c
    .line 466
    .local v18, "totalTime":J
    const-string/jumbo v20, "UsageStatsService"

    #@12f
    new-instance v21, Ljava/lang/StringBuilder;

    #@131
    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    #@134
    move-object/from16 v0, p0

    #@136
    iget-object v0, v0, Lcom/android/server/usage/UserUsageStatsService;->mLogPrefix:Ljava/lang/String;

    #@138
    move-object/from16 v22, v0

    #@13a
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13d
    move-result-object v21

    #@13e
    const-string/jumbo v22, "Rolling over usage stats complete. Took "

    #@141
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@144
    move-result-object v21

    #@145
    move-object/from16 v0, v21

    #@147
    move-wide/from16 v1, v18

    #@149
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@14c
    move-result-object v21

    #@14d
    .line 467
    const-string/jumbo v22, " milliseconds"

    #@150
    .line 466
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@153
    move-result-object v21

    #@154
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@157
    move-result-object v21

    #@158
    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@15b
    .line 424
    return-void
.end method


# virtual methods
.method checkin(Lcom/android/internal/util/IndentingPrintWriter;J)V
    .locals 2
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p2, "screenOnTime"    # J

    #@0
    .prologue
    .line 538
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    #@2
    new-instance v1, Lcom/android/server/usage/UserUsageStatsService$4;

    #@4
    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/usage/UserUsageStatsService$4;-><init>(Lcom/android/server/usage/UserUsageStatsService;Lcom/android/internal/util/IndentingPrintWriter;J)V

    #@7
    invoke-virtual {v0, v1}, Lcom/android/server/usage/UsageStatsDatabase;->checkinDailyFiles(Lcom/android/server/usage/UsageStatsDatabase$CheckinAction;)Z

    #@a
    .line 537
    return-void
.end method

.method dump(Lcom/android/internal/util/IndentingPrintWriter;J)V
    .locals 8
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p2, "screenOnTime"    # J

    #@0
    .prologue
    .line 549
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
    .line 550
    const-string/jumbo v1, "In-memory "

    #@9
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@c
    .line 551
    invoke-static {v0}, Lcom/android/server/usage/UserUsageStatsService;->intervalToString(I)Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@13
    .line 552
    const-string/jumbo v1, " stats"

    #@16
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@19
    .line 553
    iget-object v1, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    #@1b
    aget-object v3, v1, v0

    #@1d
    const/4 v6, 0x1

    #@1e
    move-object v1, p0

    #@1f
    move-object v2, p1

    #@20
    move-wide v4, p2

    #@21
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/usage/UserUsageStatsService;->printIntervalStats(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/usage/IntervalStats;JZ)V

    #@24
    .line 549
    add-int/lit8 v0, v0, 0x1

    #@26
    goto :goto_0

    #@27
    .line 547
    :cond_0
    return-void
.end method

.method getBeginIdleTime(Ljava/lang/String;)J
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 391
    iget-object v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    #@2
    const/4 v3, 0x3

    #@3
    aget-object v1, v2, v3

    #@5
    .line 393
    .local v1, "yearly":Lcom/android/server/usage/IntervalStats;
    iget-object v2, v1, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    #@7
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Landroid/app/usage/UsageStats;

    #@d
    .local v0, "packageUsage":Landroid/app/usage/UsageStats;
    if-nez v0, :cond_0

    #@f
    .line 394
    const-wide/16 v2, -0x1

    #@11
    return-wide v2

    #@12
    .line 396
    :cond_0
    invoke-virtual {v0}, Landroid/app/usage/UsageStats;->getBeginIdleTime()J

    #@15
    move-result-wide v2

    #@16
    return-wide v2
.end method

.method getSystemLastUsedTime(Ljava/lang/String;)J
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 401
    iget-object v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    #@2
    const/4 v3, 0x3

    #@3
    aget-object v1, v2, v3

    #@5
    .line 403
    .local v1, "yearly":Lcom/android/server/usage/IntervalStats;
    iget-object v2, v1, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    #@7
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Landroid/app/usage/UsageStats;

    #@d
    .local v0, "packageUsage":Landroid/app/usage/UsageStats;
    if-nez v0, :cond_0

    #@f
    .line 404
    const-wide/16 v2, -0x1

    #@11
    return-wide v2

    #@12
    .line 406
    :cond_0
    invoke-virtual {v0}, Landroid/app/usage/UsageStats;->getLastTimeSystemUsed()J

    #@15
    move-result-wide v2

    #@16
    return-wide v2
.end method

.method init(JJ)V
    .locals 19
    .param p1, "currentTimeMillis"    # J
    .param p3, "deviceUsageTime"    # J

    #@0
    .prologue
    .line 84
    move-object/from16 v0, p0

    #@2
    iget-object v5, v0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    #@4
    move-wide/from16 v0, p1

    #@6
    invoke-virtual {v5, v0, v1}, Lcom/android/server/usage/UsageStatsDatabase;->init(J)V

    #@9
    .line 86
    const/4 v11, 0x0

    #@a
    .line 87
    .local v11, "nullCount":I
    const/4 v4, 0x0

    #@b
    .local v4, "i":I
    :goto_0
    move-object/from16 v0, p0

    #@d
    iget-object v5, v0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    #@f
    array-length v5, v5

    #@10
    if-ge v4, v5, :cond_1

    #@12
    .line 88
    move-object/from16 v0, p0

    #@14
    iget-object v5, v0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    #@16
    move-object/from16 v0, p0

    #@18
    iget-object v6, v0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    #@1a
    invoke-virtual {v6, v4}, Lcom/android/server/usage/UsageStatsDatabase;->getLatestUsageStats(I)Lcom/android/server/usage/IntervalStats;

    #@1d
    move-result-object v6

    #@1e
    aput-object v6, v5, v4

    #@20
    .line 89
    move-object/from16 v0, p0

    #@22
    iget-object v5, v0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    #@24
    aget-object v5, v5, v4

    #@26
    if-nez v5, :cond_0

    #@28
    .line 92
    add-int/lit8 v11, v11, 0x1

    #@2a
    .line 87
    :cond_0
    add-int/lit8 v4, v4, 0x1

    #@2c
    goto :goto_0

    #@2d
    .line 96
    :cond_1
    if-lez v11, :cond_5

    #@2f
    .line 97
    move-object/from16 v0, p0

    #@31
    iget-object v5, v0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    #@33
    array-length v5, v5

    #@34
    if-eq v11, v5, :cond_2

    #@36
    .line 100
    const-string/jumbo v5, "UsageStatsService"

    #@39
    new-instance v6, Ljava/lang/StringBuilder;

    #@3b
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@3e
    move-object/from16 v0, p0

    #@40
    iget-object v7, v0, Lcom/android/server/usage/UserUsageStatsService;->mLogPrefix:Ljava/lang/String;

    #@42
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v6

    #@46
    const-string/jumbo v7, "Some stats have no latest available"

    #@49
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v6

    #@4d
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object v6

    #@51
    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@54
    .line 107
    :cond_2
    const/4 v5, 0x0

    #@55
    const/4 v6, 0x0

    #@56
    move-object/from16 v0, p0

    #@58
    move-wide/from16 v1, p1

    #@5a
    invoke-direct {v0, v1, v2, v5, v6}, Lcom/android/server/usage/UserUsageStatsService;->loadActiveStats(JZZ)V

    #@5d
    .line 122
    :goto_1
    move-object/from16 v0, p0

    #@5f
    iget-object v6, v0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    #@61
    const/4 v5, 0x0

    #@62
    array-length v7, v6

    #@63
    :goto_2
    if-ge v5, v7, :cond_7

    #@65
    aget-object v14, v6, v5

    #@67
    .line 123
    .local v14, "stat":Lcom/android/server/usage/IntervalStats;
    iget-object v8, v14, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    #@69
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    #@6c
    move-result v12

    #@6d
    .line 124
    .local v12, "pkgCount":I
    const/4 v4, 0x0

    #@6e
    :goto_3
    if-ge v4, v12, :cond_6

    #@70
    .line 125
    iget-object v8, v14, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    #@72
    invoke-virtual {v8, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@75
    move-result-object v13

    #@76
    check-cast v13, Landroid/app/usage/UsageStats;

    #@78
    .line 126
    .local v13, "pkgStats":Landroid/app/usage/UsageStats;
    iget v8, v13, Landroid/app/usage/UsageStats;->mLastEvent:I

    #@7a
    const/4 v9, 0x1

    #@7b
    if-eq v8, v9, :cond_3

    #@7d
    .line 127
    iget v8, v13, Landroid/app/usage/UsageStats;->mLastEvent:I

    #@7f
    const/4 v9, 0x4

    #@80
    if-ne v8, v9, :cond_4

    #@82
    .line 128
    :cond_3
    iget-object v8, v13, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    #@84
    iget-wide v0, v14, Lcom/android/server/usage/IntervalStats;->lastTimeSaved:J

    #@86
    move-wide/from16 v16, v0

    #@88
    .line 129
    const/4 v9, 0x3

    #@89
    .line 128
    move-wide/from16 v0, v16

    #@8b
    invoke-virtual {v14, v8, v0, v1, v9}, Lcom/android/server/usage/IntervalStats;->update(Ljava/lang/String;JI)V

    #@8e
    .line 130
    invoke-direct/range {p0 .. p0}, Lcom/android/server/usage/UserUsageStatsService;->notifyStatsChanged()V

    #@91
    .line 124
    :cond_4
    add-int/lit8 v4, v4, 0x1

    #@93
    goto :goto_3

    #@94
    .line 112
    .end local v12    # "pkgCount":I
    .end local v13    # "pkgStats":Landroid/app/usage/UsageStats;
    .end local v14    # "stat":Lcom/android/server/usage/IntervalStats;
    :cond_5
    move-object/from16 v0, p0

    #@96
    iget-object v5, v0, Lcom/android/server/usage/UserUsageStatsService;->mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    #@98
    .line 113
    move-object/from16 v0, p0

    #@9a
    iget-object v6, v0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    #@9c
    const/4 v7, 0x0

    #@9d
    aget-object v6, v6, v7

    #@9f
    iget-wide v6, v6, Lcom/android/server/usage/IntervalStats;->beginTime:J

    #@a1
    .line 112
    invoke-virtual {v5, v6, v7}, Lcom/android/server/usage/UnixCalendar;->setTimeInMillis(J)V

    #@a4
    .line 114
    move-object/from16 v0, p0

    #@a6
    iget-object v5, v0, Lcom/android/server/usage/UserUsageStatsService;->mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    #@a8
    const/4 v6, 0x1

    #@a9
    invoke-virtual {v5, v6}, Lcom/android/server/usage/UnixCalendar;->addDays(I)V

    #@ac
    .line 115
    move-object/from16 v0, p0

    #@ae
    iget-object v5, v0, Lcom/android/server/usage/UserUsageStatsService;->mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    #@b0
    invoke-virtual {v5}, Lcom/android/server/usage/UnixCalendar;->truncateToDay()V

    #@b3
    .line 116
    const-string/jumbo v5, "UsageStatsService"

    #@b6
    new-instance v6, Ljava/lang/StringBuilder;

    #@b8
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@bb
    move-object/from16 v0, p0

    #@bd
    iget-object v7, v0, Lcom/android/server/usage/UserUsageStatsService;->mLogPrefix:Ljava/lang/String;

    #@bf
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c2
    move-result-object v6

    #@c3
    const-string/jumbo v7, "Rollover scheduled @ "

    #@c6
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c9
    move-result-object v6

    #@ca
    .line 117
    sget-object v7, Lcom/android/server/usage/UserUsageStatsService;->sDateFormat:Ljava/text/SimpleDateFormat;

    #@cc
    move-object/from16 v0, p0

    #@ce
    iget-object v8, v0, Lcom/android/server/usage/UserUsageStatsService;->mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    #@d0
    invoke-virtual {v8}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    #@d3
    move-result-wide v8

    #@d4
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@d7
    move-result-object v8

    #@d8
    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    #@db
    move-result-object v7

    #@dc
    .line 116
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@df
    move-result-object v6

    #@e0
    .line 118
    const-string/jumbo v7, "("

    #@e3
    .line 116
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e6
    move-result-object v6

    #@e7
    .line 118
    move-object/from16 v0, p0

    #@e9
    iget-object v7, v0, Lcom/android/server/usage/UserUsageStatsService;->mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    #@eb
    invoke-virtual {v7}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    #@ee
    move-result-wide v8

    #@ef
    .line 116
    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@f2
    move-result-object v6

    #@f3
    .line 118
    const-string/jumbo v7, ")"

    #@f6
    .line 116
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f9
    move-result-object v6

    #@fa
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@fd
    move-result-object v6

    #@fe
    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@101
    goto/16 :goto_1

    #@103
    .line 134
    .restart local v12    # "pkgCount":I
    .restart local v14    # "stat":Lcom/android/server/usage/IntervalStats;
    :cond_6
    iget-wide v8, v14, Lcom/android/server/usage/IntervalStats;->lastTimeSaved:J

    #@105
    const/4 v10, 0x0

    #@106
    invoke-virtual {v14, v10, v8, v9}, Lcom/android/server/usage/IntervalStats;->updateConfigurationStats(Landroid/content/res/Configuration;J)V

    #@109
    .line 122
    add-int/lit8 v5, v5, 0x1

    #@10b
    goto/16 :goto_2

    #@10d
    .line 137
    .end local v12    # "pkgCount":I
    .end local v14    # "stat":Lcom/android/server/usage/IntervalStats;
    :cond_7
    move-object/from16 v0, p0

    #@10f
    iget-object v5, v0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    #@111
    invoke-virtual {v5}, Lcom/android/server/usage/UsageStatsDatabase;->isNewUpdate()Z

    #@114
    move-result v5

    #@115
    if-eqz v5, :cond_8

    #@117
    .line 139
    move-object/from16 v0, p0

    #@119
    iget-object v5, v0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    #@11b
    invoke-virtual {v5}, Lcom/android/server/usage/UsageStatsDatabase;->isFirstUpdate()Z

    #@11e
    move-result v10

    #@11f
    move-object/from16 v5, p0

    #@121
    move-wide/from16 v6, p1

    #@123
    move-wide/from16 v8, p3

    #@125
    .line 138
    invoke-direct/range {v5 .. v10}, Lcom/android/server/usage/UserUsageStatsService;->initializeDefaultsForApps(JJZ)V

    #@128
    .line 83
    :cond_8
    return-void
.end method

.method onTimeChanged(JJZ)V
    .locals 5
    .param p1, "oldTime"    # J
    .param p3, "newTime"    # J
    .param p5, "resetBeginIdleTime"    # Z

    #@0
    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/android/server/usage/UserUsageStatsService;->persistActiveStats()V

    #@3
    .line 172
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    #@5
    sub-long v2, p3, p1

    #@7
    invoke-virtual {v0, v2, v3}, Lcom/android/server/usage/UsageStatsDatabase;->onTimeChanged(J)V

    #@a
    .line 173
    const/4 v0, 0x1

    #@b
    invoke-direct {p0, p3, p4, v0, p5}, Lcom/android/server/usage/UserUsageStatsService;->loadActiveStats(JZZ)V

    #@e
    .line 170
    return-void
.end method

.method persistActiveStats()V
    .locals 5

    #@0
    .prologue
    .line 411
    iget-boolean v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mStatsChanged:Z

    #@2
    if-eqz v2, :cond_1

    #@4
    .line 412
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
    .line 414
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
    .line 415
    iget-object v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    #@28
    iget-object v3, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    #@2a
    aget-object v3, v3, v1

    #@2c
    invoke-virtual {v2, v1, v3}, Lcom/android/server/usage/UsageStatsDatabase;->putUsageStats(ILcom/android/server/usage/IntervalStats;)V

    #@2f
    .line 414
    add-int/lit8 v1, v1, 0x1

    #@31
    goto :goto_0

    #@32
    .line 417
    :cond_0
    const/4 v2, 0x0

    #@33
    iput-boolean v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mStatsChanged:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@35
    .line 410
    .end local v1    # "i":I
    :cond_1
    :goto_1
    return-void

    #@36
    .line 418
    .restart local v1    # "i":I
    :catch_0
    move-exception v0

    #@37
    .line 419
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

.method printIntervalStats(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/usage/IntervalStats;JZ)V
    .locals 21
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p2, "stats"    # Lcom/android/server/usage/IntervalStats;
    .param p3, "screenOnTime"    # J
    .param p5, "prettyDates"    # Z

    #@0
    .prologue
    .line 573
    if-eqz p5, :cond_0

    #@2
    .line 574
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
    .line 575
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
    .line 574
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
    .line 575
    const-string/jumbo v4, "\""

    #@2d
    .line 574
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
    .line 580
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@3f
    .line 581
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@42
    .line 582
    const-string/jumbo v3, "packages"

    #@45
    move-object/from16 v0, p1

    #@47
    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@4a
    .line 583
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@4d
    .line 584
    move-object/from16 v0, p2

    #@4f
    iget-object v0, v0, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    #@51
    move-object/from16 v16, v0

    #@53
    .line 585
    .local v16, "pkgStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/usage/UsageStats;>;"
    invoke-virtual/range {v16 .. v16}, Landroid/util/ArrayMap;->size()I

    #@56
    move-result v15

    #@57
    .line 586
    .local v15, "pkgCount":I
    const/4 v14, 0x0

    #@58
    .local v14, "i":I
    :goto_1
    if-ge v14, v15, :cond_1

    #@5a
    .line 587
    move-object/from16 v0, v16

    #@5c
    invoke-virtual {v0, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@5f
    move-result-object v17

    #@60
    check-cast v17, Landroid/app/usage/UsageStats;

    #@62
    .line 588
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
    .line 589
    const-string/jumbo v3, "totalTime"

    #@71
    .line 590
    move-object/from16 v0, v17

    #@73
    iget-wide v4, v0, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    #@75
    move-object/from16 v0, p0

    #@77
    move/from16 v1, p5

    #@79
    invoke-direct {v0, v4, v5, v1}, Lcom/android/server/usage/UserUsageStatsService;->formatElapsedTime(JZ)Ljava/lang/String;

    #@7c
    move-result-object v4

    #@7d
    .line 589
    move-object/from16 v0, p1

    #@7f
    invoke-virtual {v0, v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    #@82
    .line 591
    const-string/jumbo v3, "lastTime"

    #@85
    move-object/from16 v0, v17

    #@87
    iget-wide v4, v0, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    #@89
    move-object/from16 v0, p0

    #@8b
    move/from16 v1, p5

    #@8d
    invoke-direct {v0, v4, v5, v1}, Lcom/android/server/usage/UserUsageStatsService;->formatDateTime(JZ)Ljava/lang/String;

    #@90
    move-result-object v4

    #@91
    move-object/from16 v0, p1

    #@93
    invoke-virtual {v0, v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    #@96
    .line 592
    const-string/jumbo v3, "lastTimeSystem"

    #@99
    .line 593
    move-object/from16 v0, v17

    #@9b
    iget-wide v4, v0, Landroid/app/usage/UsageStats;->mLastTimeSystemUsed:J

    #@9d
    move-object/from16 v0, p0

    #@9f
    move/from16 v1, p5

    #@a1
    invoke-direct {v0, v4, v5, v1}, Lcom/android/server/usage/UserUsageStatsService;->formatDateTime(JZ)Ljava/lang/String;

    #@a4
    move-result-object v4

    #@a5
    .line 592
    move-object/from16 v0, p1

    #@a7
    invoke-virtual {v0, v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    #@aa
    .line 594
    const-string/jumbo v3, "inactiveTime"

    #@ad
    .line 595
    move-object/from16 v0, v17

    #@af
    iget-wide v4, v0, Landroid/app/usage/UsageStats;->mBeginIdleTime:J

    #@b1
    sub-long v4, p3, v4

    #@b3
    move-object/from16 v0, p0

    #@b5
    move/from16 v1, p5

    #@b7
    invoke-direct {v0, v4, v5, v1}, Lcom/android/server/usage/UserUsageStatsService;->formatElapsedTime(JZ)Ljava/lang/String;

    #@ba
    move-result-object v4

    #@bb
    .line 594
    move-object/from16 v0, p1

    #@bd
    invoke-virtual {v0, v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    #@c0
    .line 596
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@c3
    .line 586
    add-int/lit8 v14, v14, 0x1

    #@c5
    goto :goto_1

    #@c6
    .line 577
    .end local v14    # "i":I
    .end local v15    # "pkgCount":I
    .end local v16    # "pkgStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/usage/UsageStats;>;"
    .end local v17    # "usageStats":Landroid/app/usage/UsageStats;
    :cond_0
    const-string/jumbo v3, "beginTime"

    #@c9
    move-object/from16 v0, p2

    #@cb
    iget-wide v4, v0, Lcom/android/server/usage/IntervalStats;->beginTime:J

    #@cd
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@d0
    move-result-object v4

    #@d1
    move-object/from16 v0, p1

    #@d3
    invoke-virtual {v0, v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    #@d6
    .line 578
    const-string/jumbo v3, "endTime"

    #@d9
    move-object/from16 v0, p2

    #@db
    iget-wide v4, v0, Lcom/android/server/usage/IntervalStats;->endTime:J

    #@dd
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@e0
    move-result-object v4

    #@e1
    move-object/from16 v0, p1

    #@e3
    invoke-virtual {v0, v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    #@e6
    goto/16 :goto_0

    #@e8
    .line 598
    .restart local v14    # "i":I
    .restart local v15    # "pkgCount":I
    .restart local v16    # "pkgStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/usage/UsageStats;>;"
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@eb
    .line 600
    const-string/jumbo v3, "configurations"

    #@ee
    move-object/from16 v0, p1

    #@f0
    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@f3
    .line 601
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@f6
    .line 602
    move-object/from16 v0, p2

    #@f8
    iget-object v10, v0, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    #@fa
    .line 603
    .local v10, "configStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/res/Configuration;Landroid/app/usage/ConfigurationStats;>;"
    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    #@fd
    move-result v9

    #@fe
    .line 604
    .local v9, "configCount":I
    const/4 v14, 0x0

    #@ff
    :goto_2
    if-ge v14, v9, :cond_2

    #@101
    .line 605
    invoke-virtual {v10, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@104
    move-result-object v2

    #@105
    check-cast v2, Landroid/app/usage/ConfigurationStats;

    #@107
    .line 606
    .local v2, "config":Landroid/app/usage/ConfigurationStats;
    const-string/jumbo v3, "config"

    #@10a
    iget-object v4, v2, Landroid/app/usage/ConfigurationStats;->mConfiguration:Landroid/content/res/Configuration;

    #@10c
    invoke-static {v4}, Landroid/content/res/Configuration;->resourceQualifierString(Landroid/content/res/Configuration;)Ljava/lang/String;

    #@10f
    move-result-object v4

    #@110
    move-object/from16 v0, p1

    #@112
    invoke-virtual {v0, v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    #@115
    .line 607
    const-string/jumbo v3, "totalTime"

    #@118
    iget-wide v4, v2, Landroid/app/usage/ConfigurationStats;->mTotalTimeActive:J

    #@11a
    move-object/from16 v0, p0

    #@11c
    move/from16 v1, p5

    #@11e
    invoke-direct {v0, v4, v5, v1}, Lcom/android/server/usage/UserUsageStatsService;->formatElapsedTime(JZ)Ljava/lang/String;

    #@121
    move-result-object v4

    #@122
    move-object/from16 v0, p1

    #@124
    invoke-virtual {v0, v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    #@127
    .line 608
    const-string/jumbo v3, "lastTime"

    #@12a
    iget-wide v4, v2, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    #@12c
    move-object/from16 v0, p0

    #@12e
    move/from16 v1, p5

    #@130
    invoke-direct {v0, v4, v5, v1}, Lcom/android/server/usage/UserUsageStatsService;->formatDateTime(JZ)Ljava/lang/String;

    #@133
    move-result-object v4

    #@134
    move-object/from16 v0, p1

    #@136
    invoke-virtual {v0, v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    #@139
    .line 609
    const-string/jumbo v3, "count"

    #@13c
    iget v4, v2, Landroid/app/usage/ConfigurationStats;->mActivationCount:I

    #@13e
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@141
    move-result-object v4

    #@142
    move-object/from16 v0, p1

    #@144
    invoke-virtual {v0, v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    #@147
    .line 610
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@14a
    .line 604
    add-int/lit8 v14, v14, 0x1

    #@14c
    goto :goto_2

    #@14d
    .line 612
    .end local v2    # "config":Landroid/app/usage/ConfigurationStats;
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@150
    .line 614
    const-string/jumbo v3, "events"

    #@153
    move-object/from16 v0, p1

    #@155
    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@158
    .line 615
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@15b
    .line 616
    move-object/from16 v0, p2

    #@15d
    iget-object v13, v0, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/TimeSparseArray;

    #@15f
    .line 617
    .local v13, "events":Landroid/app/usage/TimeSparseArray;, "Landroid/app/usage/TimeSparseArray<Landroid/app/usage/UsageEvents$Event;>;"
    if-eqz v13, :cond_5

    #@161
    invoke-virtual {v13}, Landroid/app/usage/TimeSparseArray;->size()I

    #@164
    move-result v12

    #@165
    .line 618
    .local v12, "eventCount":I
    :goto_3
    const/4 v14, 0x0

    #@166
    :goto_4
    if-ge v14, v12, :cond_6

    #@168
    .line 619
    invoke-virtual {v13, v14}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    #@16b
    move-result-object v11

    #@16c
    check-cast v11, Landroid/app/usage/UsageEvents$Event;

    #@16e
    .line 620
    .local v11, "event":Landroid/app/usage/UsageEvents$Event;
    const-string/jumbo v3, "time"

    #@171
    iget-wide v4, v11, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    #@173
    move-object/from16 v0, p0

    #@175
    move/from16 v1, p5

    #@177
    invoke-direct {v0, v4, v5, v1}, Lcom/android/server/usage/UserUsageStatsService;->formatDateTime(JZ)Ljava/lang/String;

    #@17a
    move-result-object v4

    #@17b
    move-object/from16 v0, p1

    #@17d
    invoke-virtual {v0, v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    #@180
    .line 621
    const-string/jumbo v3, "type"

    #@183
    iget v4, v11, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    #@185
    invoke-static {v4}, Lcom/android/server/usage/UserUsageStatsService;->eventToString(I)Ljava/lang/String;

    #@188
    move-result-object v4

    #@189
    move-object/from16 v0, p1

    #@18b
    invoke-virtual {v0, v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    #@18e
    .line 622
    const-string/jumbo v3, "package"

    #@191
    iget-object v4, v11, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    #@193
    move-object/from16 v0, p1

    #@195
    invoke-virtual {v0, v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    #@198
    .line 623
    iget-object v3, v11, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    #@19a
    if-eqz v3, :cond_3

    #@19c
    .line 624
    const-string/jumbo v3, "class"

    #@19f
    iget-object v4, v11, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    #@1a1
    move-object/from16 v0, p1

    #@1a3
    invoke-virtual {v0, v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    #@1a6
    .line 626
    :cond_3
    iget-object v3, v11, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    #@1a8
    if-eqz v3, :cond_4

    #@1aa
    .line 627
    const-string/jumbo v3, "config"

    #@1ad
    iget-object v4, v11, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    #@1af
    invoke-static {v4}, Landroid/content/res/Configuration;->resourceQualifierString(Landroid/content/res/Configuration;)Ljava/lang/String;

    #@1b2
    move-result-object v4

    #@1b3
    move-object/from16 v0, p1

    #@1b5
    invoke-virtual {v0, v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    #@1b8
    .line 629
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@1bb
    .line 618
    add-int/lit8 v14, v14, 0x1

    #@1bd
    goto :goto_4

    #@1be
    .line 617
    .end local v11    # "event":Landroid/app/usage/UsageEvents$Event;
    .end local v12    # "eventCount":I
    :cond_5
    const/4 v12, 0x0

    #@1bf
    .restart local v12    # "eventCount":I
    goto :goto_3

    #@1c0
    .line 631
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@1c3
    .line 632
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@1c6
    .line 572
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
    .line 346
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
    .line 350
    new-instance v6, Landroid/util/ArraySet;

    #@2
    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    #@5
    .line 352
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
    .line 351
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
    .line 381
    .local v7, "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageEvents$Event;>;"
    if-eqz v7, :cond_0

    #@1e
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    #@21
    move-result v0

    #@22
    if-eqz v0, :cond_1

    #@24
    .line 382
    :cond_0
    const/4 v0, 0x0

    #@25
    return-object v0

    #@26
    .line 385
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
    .line 386
    .local v15, "table":[Ljava/lang/String;
    invoke-static {v15}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    #@35
    .line 387
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
    .line 342
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

.method reportEvent(Landroid/app/usage/UsageEvents$Event;J)V
    .locals 12
    .param p1, "event"    # Landroid/app/usage/UsageEvents$Event;
    .param p2, "deviceUsageTime"    # J

    #@0
    .prologue
    const/4 v10, 0x5

    #@1
    const/4 v3, 0x0

    #@2
    .line 183
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
    .line 185
    iget-wide v4, p1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    #@10
    invoke-direct {p0, v4, v5}, Lcom/android/server/usage/UserUsageStatsService;->rolloverStats(J)V

    #@13
    .line 188
    :cond_0
    iget-object v4, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    #@15
    aget-object v0, v4, v3

    #@17
    .line 190
    .local v0, "currentDailyStats":Lcom/android/server/usage/IntervalStats;
    iget-object v1, p1, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    #@19
    .line 191
    .local v1, "newFullConfig":Landroid/content/res/Configuration;
    iget v4, p1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    #@1b
    if-ne v4, v10, :cond_1

    #@1d
    .line 192
    iget-object v4, v0, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    #@1f
    if-eqz v4, :cond_1

    #@21
    .line 195
    iget-object v4, v0, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    #@23
    .line 194
    invoke-static {v4, v1}, Landroid/content/res/Configuration;->generateDelta(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Landroid/content/res/Configuration;

    #@26
    move-result-object v4

    #@27
    iput-object v4, p1, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    #@29
    .line 199
    :cond_1
    iget-object v4, v0, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/TimeSparseArray;

    #@2b
    if-nez v4, :cond_2

    #@2d
    .line 200
    new-instance v4, Landroid/app/usage/TimeSparseArray;

    #@2f
    invoke-direct {v4}, Landroid/app/usage/TimeSparseArray;-><init>()V

    #@32
    iput-object v4, v0, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/TimeSparseArray;

    #@34
    .line 202
    :cond_2
    iget v4, p1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    #@36
    const/4 v5, 0x6

    #@37
    if-eq v4, v5, :cond_3

    #@39
    .line 203
    iget-object v4, v0, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/TimeSparseArray;

    #@3b
    iget-wide v6, p1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    #@3d
    invoke-virtual {v4, v6, v7, p1}, Landroid/app/usage/TimeSparseArray;->put(JLjava/lang/Object;)V

    #@40
    .line 206
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
    .line 207
    .local v2, "stats":Lcom/android/server/usage/IntervalStats;
    iget v6, p1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    #@49
    if-ne v6, v10, :cond_4

    #@4b
    .line 208
    iget-wide v6, p1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    #@4d
    invoke-virtual {v2, v1, v6, v7}, Lcom/android/server/usage/IntervalStats;->updateConfigurationStats(Landroid/content/res/Configuration;J)V

    #@50
    .line 206
    :goto_1
    add-int/lit8 v3, v3, 0x1

    #@52
    goto :goto_0

    #@53
    .line 210
    :cond_4
    iget-object v6, p1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    #@55
    iget-wide v8, p1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    #@57
    iget v7, p1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    #@59
    invoke-virtual {v2, v6, v8, v9, v7}, Lcom/android/server/usage/IntervalStats;->update(Ljava/lang/String;JI)V

    #@5c
    .line 211
    iget-object v6, p1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    #@5e
    invoke-virtual {v2, v6, p2, p3}, Lcom/android/server/usage/IntervalStats;->updateBeginIdleTime(Ljava/lang/String;J)V

    #@61
    goto :goto_1

    #@62
    .line 215
    .end local v2    # "stats":Lcom/android/server/usage/IntervalStats;
    :cond_5
    invoke-direct {p0}, Lcom/android/server/usage/UserUsageStatsService;->notifyStatsChanged()V

    #@65
    .line 176
    return-void
.end method

.method setBeginIdleTime(Ljava/lang/String;J)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "beginIdleTime"    # J

    #@0
    .prologue
    .line 223
    iget-object v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    #@2
    const/4 v1, 0x0

    #@3
    array-length v3, v2

    #@4
    :goto_0
    if-ge v1, v3, :cond_0

    #@6
    aget-object v0, v2, v1

    #@8
    .line 224
    .local v0, "stats":Lcom/android/server/usage/IntervalStats;
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/usage/IntervalStats;->updateBeginIdleTime(Ljava/lang/String;J)V

    #@b
    .line 223
    add-int/lit8 v1, v1, 0x1

    #@d
    goto :goto_0

    #@e
    .line 226
    .end local v0    # "stats":Lcom/android/server/usage/IntervalStats;
    :cond_0
    invoke-direct {p0}, Lcom/android/server/usage/UserUsageStatsService;->notifyStatsChanged()V

    #@11
    .line 222
    return-void
.end method

.method setSystemLastUsedTime(Ljava/lang/String;J)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "lastUsedTime"    # J

    #@0
    .prologue
    .line 230
    iget-object v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    #@2
    const/4 v1, 0x0

    #@3
    array-length v3, v2

    #@4
    :goto_0
    if-ge v1, v3, :cond_0

    #@6
    aget-object v0, v2, v1

    #@8
    .line 231
    .local v0, "stats":Lcom/android/server/usage/IntervalStats;
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/usage/IntervalStats;->updateSystemLastUsedTime(Ljava/lang/String;J)V

    #@b
    .line 230
    add-int/lit8 v1, v1, 0x1

    #@d
    goto :goto_0

    #@e
    .line 233
    .end local v0    # "stats":Lcom/android/server/usage/IntervalStats;
    :cond_0
    invoke-direct {p0}, Lcom/android/server/usage/UserUsageStatsService;->notifyStatsChanged()V

    #@11
    .line 229
    return-void
.end method
