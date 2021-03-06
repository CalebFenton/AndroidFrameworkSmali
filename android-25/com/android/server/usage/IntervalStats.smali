.class Lcom/android/server/usage/IntervalStats;
.super Ljava/lang/Object;
.source "IntervalStats.java"


# instance fields
.field public activeConfiguration:Landroid/content/res/Configuration;

.field public beginTime:J

.field public final configurations:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/content/res/Configuration;",
            "Landroid/app/usage/ConfigurationStats;",
            ">;"
        }
    .end annotation
.end field

.field public endTime:J

.field public events:Landroid/app/usage/TimeSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/usage/TimeSparseArray",
            "<",
            "Landroid/app/usage/UsageEvents$Event;",
            ">;"
        }
    .end annotation
.end field

.field public lastTimeSaved:J

.field private final mStringCache:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final packageStats:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 30
    new-instance v0, Landroid/util/ArrayMap;

    #@5
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    #@a
    .line 31
    new-instance v0, Landroid/util/ArrayMap;

    #@c
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@f
    iput-object v0, p0, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    #@11
    .line 39
    new-instance v0, Landroid/util/ArraySet;

    #@13
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    #@16
    iput-object v0, p0, Lcom/android/server/usage/IntervalStats;->mStringCache:Landroid/util/ArraySet;

    #@18
    .line 26
    return-void
.end method

.method private getCachedStringRef(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    #@0
    .prologue
    .line 142
    iget-object v1, p0, Lcom/android/server/usage/IntervalStats;->mStringCache:Landroid/util/ArraySet;

    #@2
    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    #@5
    move-result v0

    #@6
    .line 143
    .local v0, "index":I
    if-gez v0, :cond_0

    #@8
    .line 144
    iget-object v1, p0, Lcom/android/server/usage/IntervalStats;->mStringCache:Landroid/util/ArraySet;

    #@a
    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@d
    .line 145
    return-object p1

    #@e
    .line 147
    :cond_0
    iget-object v1, p0, Lcom/android/server/usage/IntervalStats;->mStringCache:Landroid/util/ArraySet;

    #@10
    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@13
    move-result-object v1

    #@14
    check-cast v1, Ljava/lang/String;

    #@16
    return-object v1
.end method

.method private isStatefulEvent(I)Z
    .locals 1
    .param p1, "eventType"    # I

    #@0
    .prologue
    .line 85
    packed-switch p1, :pswitch_data_0

    #@3
    .line 92
    const/4 v0, 0x0

    #@4
    return v0

    #@5
    .line 90
    :pswitch_0
    const/4 v0, 0x1

    #@6
    return v0

    #@7
    .line 85
    nop

    #@8
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method buildEvent(Ljava/lang/String;Ljava/lang/String;)Landroid/app/usage/UsageEvents$Event;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    #@0
    .prologue
    .line 76
    new-instance v0, Landroid/app/usage/UsageEvents$Event;

    #@2
    invoke-direct {v0}, Landroid/app/usage/UsageEvents$Event;-><init>()V

    #@5
    .line 77
    .local v0, "event":Landroid/app/usage/UsageEvents$Event;
    invoke-direct {p0, p1}, Lcom/android/server/usage/IntervalStats;->getCachedStringRef(Ljava/lang/String;)Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    #@b
    .line 78
    if-eqz p2, :cond_0

    #@d
    .line 79
    invoke-direct {p0, p2}, Lcom/android/server/usage/IntervalStats;->getCachedStringRef(Ljava/lang/String;)Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    #@13
    .line 81
    :cond_0
    return-object v0
.end method

.method getOrCreateConfigurationStats(Landroid/content/res/Configuration;)Landroid/app/usage/ConfigurationStats;
    .locals 4
    .param p1, "config"    # Landroid/content/res/Configuration;

    #@0
    .prologue
    .line 61
    iget-object v1, p0, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/app/usage/ConfigurationStats;

    #@8
    .line 62
    .local v0, "configStats":Landroid/app/usage/ConfigurationStats;
    if-nez v0, :cond_0

    #@a
    .line 63
    new-instance v0, Landroid/app/usage/ConfigurationStats;

    #@c
    .end local v0    # "configStats":Landroid/app/usage/ConfigurationStats;
    invoke-direct {v0}, Landroid/app/usage/ConfigurationStats;-><init>()V

    #@f
    .line 64
    .restart local v0    # "configStats":Landroid/app/usage/ConfigurationStats;
    iget-wide v2, p0, Lcom/android/server/usage/IntervalStats;->beginTime:J

    #@11
    iput-wide v2, v0, Landroid/app/usage/ConfigurationStats;->mBeginTimeStamp:J

    #@13
    .line 65
    iget-wide v2, p0, Lcom/android/server/usage/IntervalStats;->endTime:J

    #@15
    iput-wide v2, v0, Landroid/app/usage/ConfigurationStats;->mEndTimeStamp:J

    #@17
    .line 66
    iput-object p1, v0, Landroid/app/usage/ConfigurationStats;->mConfiguration:Landroid/content/res/Configuration;

    #@19
    .line 67
    iget-object v1, p0, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    #@1b
    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1e
    .line 69
    :cond_0
    return-object v0
.end method

.method getOrCreateUsageStats(Ljava/lang/String;)Landroid/app/usage/UsageStats;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 45
    iget-object v1, p0, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    #@2
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/app/usage/UsageStats;

    #@8
    .line 46
    .local v0, "usageStats":Landroid/app/usage/UsageStats;
    if-nez v0, :cond_0

    #@a
    .line 47
    new-instance v0, Landroid/app/usage/UsageStats;

    #@c
    .end local v0    # "usageStats":Landroid/app/usage/UsageStats;
    invoke-direct {v0}, Landroid/app/usage/UsageStats;-><init>()V

    #@f
    .line 48
    .restart local v0    # "usageStats":Landroid/app/usage/UsageStats;
    invoke-direct {p0, p1}, Lcom/android/server/usage/IntervalStats;->getCachedStringRef(Ljava/lang/String;)Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    iput-object v1, v0, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    #@15
    .line 49
    iget-wide v2, p0, Lcom/android/server/usage/IntervalStats;->beginTime:J

    #@17
    iput-wide v2, v0, Landroid/app/usage/UsageStats;->mBeginTimeStamp:J

    #@19
    .line 50
    iget-wide v2, p0, Lcom/android/server/usage/IntervalStats;->endTime:J

    #@1b
    iput-wide v2, v0, Landroid/app/usage/UsageStats;->mEndTimeStamp:J

    #@1d
    .line 51
    iget-object v1, p0, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    #@1f
    iget-object v2, v0, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    #@21
    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@24
    .line 53
    :cond_0
    return-object v0
.end method

.method update(Ljava/lang/String;JI)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "timeStamp"    # J
    .param p4, "eventType"    # I

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    .line 96
    invoke-virtual {p0, p1}, Lcom/android/server/usage/IntervalStats;->getOrCreateUsageStats(Ljava/lang/String;)Landroid/app/usage/UsageStats;

    #@4
    move-result-object v0

    #@5
    .line 100
    .local v0, "usageStats":Landroid/app/usage/UsageStats;
    const/4 v1, 0x2

    #@6
    if-eq p4, v1, :cond_0

    #@8
    .line 101
    const/4 v1, 0x3

    #@9
    if-ne p4, v1, :cond_2

    #@b
    .line 102
    :cond_0
    iget v1, v0, Landroid/app/usage/UsageStats;->mLastEvent:I

    #@d
    if-eq v1, v6, :cond_1

    #@f
    .line 103
    iget v1, v0, Landroid/app/usage/UsageStats;->mLastEvent:I

    #@11
    const/4 v2, 0x4

    #@12
    if-ne v1, v2, :cond_2

    #@14
    .line 104
    :cond_1
    iget-wide v2, v0, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    #@16
    iget-wide v4, v0, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    #@18
    sub-long v4, p2, v4

    #@1a
    add-long/2addr v2, v4

    #@1b
    iput-wide v2, v0, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    #@1d
    .line 108
    :cond_2
    invoke-direct {p0, p4}, Lcom/android/server/usage/IntervalStats;->isStatefulEvent(I)Z

    #@20
    move-result v1

    #@21
    if-eqz v1, :cond_3

    #@23
    .line 109
    iput p4, v0, Landroid/app/usage/UsageStats;->mLastEvent:I

    #@25
    .line 112
    :cond_3
    const/4 v1, 0x6

    #@26
    if-eq p4, v1, :cond_4

    #@28
    .line 113
    iput-wide p2, v0, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    #@2a
    .line 115
    :cond_4
    iput-wide p2, v0, Landroid/app/usage/UsageStats;->mEndTimeStamp:J

    #@2c
    .line 117
    if-ne p4, v6, :cond_5

    #@2e
    .line 118
    iget v1, v0, Landroid/app/usage/UsageStats;->mLaunchCount:I

    #@30
    add-int/lit8 v1, v1, 0x1

    #@32
    iput v1, v0, Landroid/app/usage/UsageStats;->mLaunchCount:I

    #@34
    .line 121
    :cond_5
    iput-wide p2, p0, Lcom/android/server/usage/IntervalStats;->endTime:J

    #@36
    .line 95
    return-void
.end method

.method updateConfigurationStats(Landroid/content/res/Configuration;J)V
    .locals 6
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "timeStamp"    # J

    #@0
    .prologue
    .line 125
    iget-object v2, p0, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 126
    iget-object v2, p0, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    #@6
    iget-object v3, p0, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    #@8
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Landroid/app/usage/ConfigurationStats;

    #@e
    .line 127
    .local v0, "activeStats":Landroid/app/usage/ConfigurationStats;
    iget-wide v2, v0, Landroid/app/usage/ConfigurationStats;->mTotalTimeActive:J

    #@10
    iget-wide v4, v0, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    #@12
    sub-long v4, p2, v4

    #@14
    add-long/2addr v2, v4

    #@15
    iput-wide v2, v0, Landroid/app/usage/ConfigurationStats;->mTotalTimeActive:J

    #@17
    .line 128
    const-wide/16 v2, 0x1

    #@19
    sub-long v2, p2, v2

    #@1b
    iput-wide v2, v0, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    #@1d
    .line 131
    .end local v0    # "activeStats":Landroid/app/usage/ConfigurationStats;
    :cond_0
    if-eqz p1, :cond_1

    #@1f
    .line 132
    invoke-virtual {p0, p1}, Lcom/android/server/usage/IntervalStats;->getOrCreateConfigurationStats(Landroid/content/res/Configuration;)Landroid/app/usage/ConfigurationStats;

    #@22
    move-result-object v1

    #@23
    .line 133
    .local v1, "configStats":Landroid/app/usage/ConfigurationStats;
    iput-wide p2, v1, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    #@25
    .line 134
    iget v2, v1, Landroid/app/usage/ConfigurationStats;->mActivationCount:I

    #@27
    add-int/lit8 v2, v2, 0x1

    #@29
    iput v2, v1, Landroid/app/usage/ConfigurationStats;->mActivationCount:I

    #@2b
    .line 135
    iget-object v2, v1, Landroid/app/usage/ConfigurationStats;->mConfiguration:Landroid/content/res/Configuration;

    #@2d
    iput-object v2, p0, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    #@2f
    .line 138
    .end local v1    # "configStats":Landroid/app/usage/ConfigurationStats;
    :cond_1
    iput-wide p2, p0, Lcom/android/server/usage/IntervalStats;->endTime:J

    #@31
    .line 124
    return-void
.end method
