.class Lcom/android/internal/app/ResolverRankerServiceResolverComparator;
.super Lcom/android/internal/app/AbstractResolverComparator;
.source "ResolverRankerServiceResolverComparator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;,
        Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceConnection;
    }
.end annotation


# static fields
.field private static final blacklist CONNECTION_COST_TIMEOUT_MILLIS:I = 0xc8

.field private static final blacklist DEBUG:Z = false

.field private static final blacklist RECENCY_MULTIPLIER:F = 2.0f

.field private static final blacklist RECENCY_TIME_PERIOD:J = 0x2932e00L

.field private static final blacklist TAG:Ljava/lang/String; = "RRSResolverComparator"

.field private static final blacklist USAGE_STATS_PERIOD:J = 0x240c8400L


# instance fields
.field private blacklist mAction:Ljava/lang/String;

.field private final blacklist mCollator:Ljava/text/Collator;

.field private blacklist mComparatorModel:Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;

.field private blacklist mConnectSignal:Ljava/util/concurrent/CountDownLatch;

.field private blacklist mConnection:Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceConnection;

.field private blacklist mContext:Landroid/content/Context;

.field private final blacklist mCurrentTime:J

.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mRanker:Landroid/service/resolver/IResolverRankerService;

.field private blacklist mRankerServiceName:Landroid/content/ComponentName;

.field private final blacklist mReferrerPackage:Ljava/lang/String;

.field private blacklist mResolvedRankerName:Landroid/content/ComponentName;

.field private final blacklist mSinceTime:J

.field private final blacklist mStatsPerUser:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/UserHandle;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/app/usage/UsageStats;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mTargets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/service/resolver/ResolverTarget;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mTargetsDictPerUser:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/UserHandle;",
            "Ljava/util/LinkedHashMap<",
            "Landroid/content/ComponentName;",
            "Landroid/service/resolver/ResolverTarget;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmLock(Lcom/android/internal/app/ResolverRankerServiceResolverComparator;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmComparatorModel(Lcom/android/internal/app/ResolverRankerServiceResolverComparator;Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mComparatorModel:Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRanker(Lcom/android/internal/app/ResolverRankerServiceResolverComparator;Landroid/service/resolver/IResolverRankerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mRanker:Landroid/service/resolver/IResolverRankerService;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mbuildUpdatedModel(Lcom/android/internal/app/ResolverRankerServiceResolverComparator;)Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->buildUpdatedModel()Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;

    move-result-object p0

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/android/internal/app/AbstractResolverComparator$AfterCompute;Lcom/android/internal/app/ChooserActivityLogger;Landroid/os/UserHandle;)V
    .registers 16
    .param p1, "launchedFromContext"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "referrerPackage"    # Ljava/lang/String;
    .param p4, "afterCompute"    # Lcom/android/internal/app/AbstractResolverComparator$AfterCompute;
    .param p5, "chooserActivityLogger"    # Lcom/android/internal/app/ChooserActivityLogger;
    .param p6, "targetUserSpace"    # Landroid/os/UserHandle;

    .line 99
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/os/UserHandle;

    const/4 v1, 0x0

    aput-object p6, v0, v1

    .line 100
    invoke-static {v0}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v8

    .line 99
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    .end local p1    # "launchedFromContext":Landroid/content/Context;
    .end local p2    # "intent":Landroid/content/Intent;
    .end local p3    # "referrerPackage":Ljava/lang/String;
    .end local p4    # "afterCompute":Lcom/android/internal/app/AbstractResolverComparator$AfterCompute;
    .end local p5    # "chooserActivityLogger":Lcom/android/internal/app/ChooserActivityLogger;
    .local v3, "launchedFromContext":Landroid/content/Context;
    .local v4, "intent":Landroid/content/Intent;
    .local v5, "referrerPackage":Ljava/lang/String;
    .local v6, "afterCompute":Lcom/android/internal/app/AbstractResolverComparator$AfterCompute;
    .local v7, "chooserActivityLogger":Lcom/android/internal/app/ChooserActivityLogger;
    invoke-direct/range {v2 .. v8}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/android/internal/app/AbstractResolverComparator$AfterCompute;Lcom/android/internal/app/ChooserActivityLogger;Ljava/util/List;)V

    .line 101
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/android/internal/app/AbstractResolverComparator$AfterCompute;Lcom/android/internal/app/ChooserActivityLogger;Ljava/util/List;)V
    .registers 15
    .param p1, "launchedFromContext"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "referrerPackage"    # Ljava/lang/String;
    .param p4, "afterCompute"    # Lcom/android/internal/app/AbstractResolverComparator$AfterCompute;
    .param p5, "chooserActivityLogger"    # Lcom/android/internal/app/ChooserActivityLogger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/AbstractResolverComparator$AfterCompute;",
            "Lcom/android/internal/app/ChooserActivityLogger;",
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;)V"
        }
    .end annotation

    .line 108
    .local p6, "targetUserSpaceList":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    invoke-direct {p0, p1, p2, p6}, Lcom/android/internal/app/AbstractResolverComparator;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/util/List;)V

    .line 83
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mLock:Ljava/lang/Object;

    .line 109
    nop

    .line 110
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 109
    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mCollator:Ljava/text/Collator;

    .line 111
    iput-object p3, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mReferrerPackage:Ljava/lang/String;

    .line 112
    iput-object p1, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mContext:Landroid/content/Context;

    .line 113
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mCurrentTime:J

    .line 114
    iget-wide v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mCurrentTime:J

    const-wide/32 v2, 0x240c8400

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mSinceTime:J

    .line 115
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mStatsPerUser:Ljava/util/Map;

    .line 116
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mTargetsDictPerUser:Ljava/util/Map;

    .line 117
    invoke-interface {p6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    .line 118
    .local v1, "user":Landroid/os/UserHandle;
    iget-object v2, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mStatsPerUser:Ljava/util/Map;

    iget-object v3, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mUsmMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/usage/UsageStatsManager;

    iget-wide v4, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mSinceTime:J

    iget-wide v6, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mCurrentTime:J

    .line 119
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/app/usage/UsageStatsManager;->queryAndAggregateUsageStats(JJ)Ljava/util/Map;

    move-result-object v3

    .line 118
    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    iget-object v2, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mTargetsDictPerUser:Ljava/util/Map;

    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .end local v1    # "user":Landroid/os/UserHandle;
    goto :goto_3f

    .line 122
    :cond_6b
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mAction:Ljava/lang/String;

    .line 123
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mRankerServiceName:Landroid/content/ComponentName;

    .line 124
    invoke-virtual {p0, p4}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->setCallBack(Lcom/android/internal/app/AbstractResolverComparator$AfterCompute;)V

    .line 125
    invoke-virtual {p0, p5}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->setChooserActivityLogger(Lcom/android/internal/app/ChooserActivityLogger;)V

    .line 127
    invoke-direct {p0}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->buildUpdatedModel()Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mComparatorModel:Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;

    .line 128
    return-void
.end method

.method private blacklist addDefaultSelectProbability(Landroid/service/resolver/ResolverTarget;)V
    .registers 8
    .param p1, "target"    # Landroid/service/resolver/ResolverTarget;

    .line 463
    const v0, 0x402379a7    # 2.5543f

    invoke-virtual {p1}, Landroid/service/resolver/ResolverTarget;->getLaunchScore()F

    move-result v1

    mul-float/2addr v1, v0

    const v0, 0x4035d639

    invoke-virtual {p1}, Landroid/service/resolver/ResolverTarget;->getTimeSpentScore()F

    move-result v2

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    .line 464
    invoke-virtual {p1}, Landroid/service/resolver/ResolverTarget;->getRecencyScore()F

    move-result v0

    const v2, 0x3e89ba5e    # 0.269f

    mul-float/2addr v0, v2

    add-float/2addr v1, v0

    const v0, 0x40871c43    # 4.2222f

    invoke-virtual {p1}, Landroid/service/resolver/ResolverTarget;->getChooserScore()F

    move-result v2

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    .line 465
    .local v1, "sum":F
    const v0, 0x3fd41206    # 1.6568f

    sub-float/2addr v0, v1

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v4

    div-double/2addr v4, v2

    double-to-float v0, v4

    invoke-virtual {p1, v0}, Landroid/service/resolver/ResolverTarget;->setSelectProbability(F)V

    .line 466
    return-void
.end method

.method private blacklist buildUpdatedModel()Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;
    .registers 10

    .line 504
    new-instance v0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;

    iget-object v1, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mStatsPerUser:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mTargetsDictPerUser:Ljava/util/Map;

    iget-object v3, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mTargets:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mCollator:Ljava/text/Collator;

    iget-object v5, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mRanker:Landroid/service/resolver/IResolverRankerService;

    iget-object v6, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mRankerServiceName:Landroid/content/ComponentName;

    iget-object v7, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mAnnotations:[Ljava/lang/String;

    if-eqz v7, :cond_14

    const/4 v7, 0x1

    goto :goto_15

    :cond_14
    const/4 v7, 0x0

    :goto_15
    iget-object v8, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mPmMap:Ljava/util/Map;

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;-><init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Ljava/text/Collator;Landroid/service/resolver/IResolverRankerService;Landroid/content/ComponentName;ZLjava/util/Map;)V

    return-object v0
.end method

.method private blacklist initRanker(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 297
    iget-object v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 298
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mConnection:Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceConnection;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mRanker:Landroid/service/resolver/IResolverRankerService;

    if-eqz v1, :cond_d

    .line 302
    monitor-exit v0

    return-void

    .line 304
    :cond_d
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_2e

    .line 305
    invoke-direct {p0}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->resolveRankerService()Landroid/content/Intent;

    move-result-object v0

    .line 306
    .local v0, "intent":Landroid/content/Intent;
    if-nez v0, :cond_15

    .line 307
    return-void

    .line 309
    :cond_15
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mConnectSignal:Ljava/util/concurrent/CountDownLatch;

    .line 310
    new-instance v1, Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceConnection;

    iget-object v3, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mConnectSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, p0, v3}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceConnection;-><init>(Lcom/android/internal/app/ResolverRankerServiceResolverComparator;Ljava/util/concurrent/CountDownLatch;)V

    iput-object v1, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mConnection:Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceConnection;

    .line 311
    iget-object v1, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mConnection:Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceConnection;

    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 312
    return-void

    .line 304
    .end local v0    # "intent":Landroid/content/Intent;
    :catchall_2e
    move-exception v1

    :try_start_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw v1
.end method

.method static blacklist isPersistentProcess(Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;)Z
    .registers 3
    .param p0, "rci"    # Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    .line 478
    const/4 v0, 0x0

    if-eqz p0, :cond_19

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getCount()I

    move-result v1

    if-lez v1, :cond_19

    .line 479
    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_18

    const/4 v0, 0x1

    :cond_18
    return v0

    .line 482
    :cond_19
    return v0
.end method

.method private blacklist predictSelectProbabilities(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/resolver/ResolverTarget;",
            ">;)V"
        }
    .end annotation

    .line 435
    .local p1, "targets":Ljava/util/List;, "Ljava/util/List<Landroid/service/resolver/ResolverTarget;>;"
    iget-object v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mConnection:Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceConnection;

    if-nez v0, :cond_5

    goto :goto_48

    .line 441
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mConnectSignal:Ljava/util/concurrent/CountDownLatch;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 442
    iget-object v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_11} :catch_3f
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_11} :catch_25

    .line 443
    :try_start_11
    iget-object v1, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mRanker:Landroid/service/resolver/IResolverRankerService;

    if-eqz v1, :cond_20

    .line 444
    iget-object v1, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mRanker:Landroid/service/resolver/IResolverRankerService;

    iget-object v2, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mConnection:Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceConnection;

    iget-object v2, v2, Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceConnection;->resolverRankerResult:Landroid/service/resolver/IResolverRankerResult;

    invoke-interface {v1, p1, v2}, Landroid/service/resolver/IResolverRankerService;->predict(Ljava/util/List;Landroid/service/resolver/IResolverRankerResult;)V

    .line 445
    monitor-exit v0

    return-void

    .line 451
    :cond_20
    monitor-exit v0

    goto :goto_47

    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_11 .. :try_end_24} :catchall_22

    .end local p0    # "this":Lcom/android/internal/app/ResolverRankerServiceResolverComparator;
    .end local p1    # "targets":Ljava/util/List;, "Ljava/util/List<Landroid/service/resolver/ResolverTarget;>;"
    :try_start_24
    throw v1
    :try_end_25
    .catch Ljava/lang/InterruptedException; {:try_start_24 .. :try_end_25} :catch_3f
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_25} :catch_25

    .line 454
    .restart local p0    # "this":Lcom/android/internal/app/ResolverRankerServiceResolverComparator;
    .restart local p1    # "targets":Ljava/util/List;, "Ljava/util/List<Landroid/service/resolver/ResolverTarget;>;"
    :catch_25
    move-exception v0

    .line 455
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "RRSResolverComparator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in Predict: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_48

    .line 452
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_3f
    move-exception v0

    .line 453
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "RRSResolverComparator"

    const-string v2, "Error in Wait for Service Connection."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_47
    nop

    .line 458
    :goto_48
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->afterCompute()V

    .line 459
    return-void
.end method

.method private blacklist resolveRankerService()Landroid/content/Intent;
    .registers 14

    .line 316
    const-string v0, "android.permission.PROVIDE_RESOLVER_RANKER_SERVICE"

    const-string v1, "android.permission.BIND_RESOLVER_RANKER_SERVICE"

    const-string v2, "RRSResolverComparator"

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.service.resolver.ResolverRankerService"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 317
    .local v3, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 318
    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 319
    .local v4, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1c
    :goto_1c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_ed

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 320
    .local v7, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v7, :cond_1c

    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v8, :cond_1c

    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v8, :cond_35

    .line 325
    goto :goto_1c

    .line 327
    :cond_35
    new-instance v8, Landroid/content/ComponentName;

    iget-object v9, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v10, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    .local v8, "componentName":Landroid/content/ComponentName;
    :try_start_44
    iget-object v9, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 332
    invoke-virtual {v9, v8, v5}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v9

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 333
    .local v9, "perm":Ljava/lang/String;
    invoke-virtual {v1, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10
    :try_end_54
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_44 .. :try_end_54} :catch_ce

    const-string v11, "ResolverRankerService "

    if-nez v10, :cond_91

    .line 334
    :try_start_58
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " does not require permission "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " - this service will not be queried for ResolverRankerServiceResolverComparator. add android:permission=\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\" to the <service> tag for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " in the manifest."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    goto :goto_1c

    .line 343
    :cond_91
    iget-object v10, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    iget-object v12, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v12, v12, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 344
    invoke-virtual {v10, v0, v12}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    if-eqz v10, :cond_c7

    .line 346
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " does not hold permission "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " - this service will not be queried for ResolverRankerServiceResolverComparator."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_58 .. :try_end_c5} :catch_ce

    .line 350
    goto/16 :goto_1c

    .line 356
    .end local v9    # "perm":Ljava/lang/String;
    :cond_c7
    nop

    .line 360
    iput-object v8, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mResolvedRankerName:Landroid/content/ComponentName;

    .line 361
    invoke-virtual {v3, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 362
    return-object v3

    .line 352
    :catch_ce
    move-exception v9

    .line 353
    .local v9, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Could not look up service "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "; component name not found"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    goto/16 :goto_1c

    .line 364
    .end local v7    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v8    # "componentName":Landroid/content/ComponentName;
    .end local v9    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_ed
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist setFeatures(Landroid/service/resolver/ResolverTarget;FFFF)V
    .registers 6
    .param p1, "target"    # Landroid/service/resolver/ResolverTarget;
    .param p2, "recencyScore"    # F
    .param p3, "launchScore"    # F
    .param p4, "timeSpentScore"    # F
    .param p5, "chooserScore"    # F

    .line 471
    invoke-virtual {p1, p2}, Landroid/service/resolver/ResolverTarget;->setRecencyScore(F)V

    .line 472
    invoke-virtual {p1, p3}, Landroid/service/resolver/ResolverTarget;->setLaunchScore(F)V

    .line 473
    invoke-virtual {p1, p4}, Landroid/service/resolver/ResolverTarget;->setTimeSpentScore(F)V

    .line 474
    invoke-virtual {p1, p5}, Landroid/service/resolver/ResolverTarget;->setChooserScore(F)V

    .line 475
    return-void
.end method


# virtual methods
.method blacklist beforeCompute()V
    .registers 5

    .line 422
    invoke-super {p0}, Lcom/android/internal/app/AbstractResolverComparator;->beforeCompute()V

    .line 423
    iget-object v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mTargetsDictPerUser:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    .line 424
    .local v1, "userHandle":Landroid/os/UserHandle;
    iget-object v2, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mTargetsDictPerUser:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->clear()V

    .line 425
    .end local v1    # "userHandle":Landroid/os/UserHandle;
    goto :goto_d

    .line 426
    :cond_25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mTargets:Ljava/util/ArrayList;

    .line 427
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mRankerServiceName:Landroid/content/ComponentName;

    .line 428
    invoke-direct {p0}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->buildUpdatedModel()Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mComparatorModel:Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;

    .line 429
    iput-object v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mResolvedRankerName:Landroid/content/ComponentName;

    .line 430
    iget-object v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->initRanker(Landroid/content/Context;)V

    .line 431
    return-void
.end method

.method public blacklist compare(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I
    .registers 4
    .param p1, "lhs"    # Landroid/content/pm/ResolveInfo;
    .param p2, "rhs"    # Landroid/content/pm/ResolveInfo;

    .line 264
    iget-object v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mComparatorModel:Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;->getComparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist destroy()V
    .registers 3

    .line 283
    iget-object v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 284
    iget-object v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 285
    iget-object v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mConnection:Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceConnection;

    if-eqz v0, :cond_1c

    .line 286
    iget-object v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mConnection:Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 287
    iget-object v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mConnection:Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceConnection;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceConnection;->destroy()V

    .line 289
    :cond_1c
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->afterCompute()V

    .line 293
    return-void
.end method

.method public blacklist doCompute(Ljava/util/List;)V
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;)V"
        }
    .end annotation

    .line 164
    .local p1, "targets":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mCurrentTime:J

    const-wide/32 v3, 0x2932e00

    sub-long v6, v1, v3

    .line 166
    .local v6, "recentSinceTime":J
    const/high16 v1, 0x3f800000    # 1.0f

    .line 167
    .local v1, "mostRecencyScore":F
    const/high16 v2, 0x3f800000    # 1.0f

    .line 168
    .local v2, "mostTimeSpentScore":F
    const/high16 v3, 0x3f800000    # 1.0f

    .line 169
    .local v3, "mostLaunchScore":F
    const/high16 v4, 0x3f800000    # 1.0f

    .line 171
    .local v4, "mostChooserScore":F
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v8, v1

    move v9, v2

    move v10, v3

    move v11, v4

    .end local v1    # "mostRecencyScore":F
    .end local v2    # "mostTimeSpentScore":F
    .end local v3    # "mostLaunchScore":F
    .end local v4    # "mostChooserScore":F
    .local v8, "mostRecencyScore":F
    .local v9, "mostTimeSpentScore":F
    .local v10, "mostLaunchScore":F
    .local v11, "mostChooserScore":F
    :goto_19
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_137

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    .line 172
    .local v1, "target":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    new-instance v2, Landroid/service/resolver/ResolverTarget;

    invoke-direct {v2}, Landroid/service/resolver/ResolverTarget;-><init>()V

    .line 173
    .local v2, "resolverTarget":Landroid/service/resolver/ResolverTarget;
    iget-object v3, v0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mTargetsDictPerUser:Ljava/util/Map;

    .line 174
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v12

    iget-object v12, v12, Landroid/content/pm/ResolveInfo;->userHandle:Landroid/os/UserHandle;

    invoke-interface {v3, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/LinkedHashMap;

    .line 175
    .local v3, "targetsDict":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Landroid/content/ComponentName;Landroid/service/resolver/ResolverTarget;>;"
    iget-object v12, v0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mStatsPerUser:Ljava/util/Map;

    .line 176
    invoke-virtual {v1, v4}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v13

    iget-object v13, v13, Landroid/content/pm/ResolveInfo;->userHandle:Landroid/os/UserHandle;

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map;

    .line 177
    .local v12, "stats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/app/usage/UsageStats;>;"
    if-eqz v3, :cond_12d

    if-eqz v12, :cond_12d

    .line 178
    iget-object v13, v1, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {v3, v13, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    iget-object v13, v1, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {v13}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/usage/UsageStats;

    .line 180
    .local v13, "pkStats":Landroid/app/usage/UsageStats;
    if-eqz v13, :cond_126

    .line 184
    iget-object v14, v1, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {v14}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v14

    iget-object v15, v0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mReferrerPackage:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_91

    .line 185
    invoke-static {v1}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->isPersistentProcess(Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;)Z

    move-result v14

    if-nez v14, :cond_8c

    .line 186
    nop

    .line 187
    invoke-virtual {v13}, Landroid/app/usage/UsageStats;->getLastTimeUsed()J

    move-result-wide v14

    sub-long/2addr v14, v6

    move/from16 v17, v4

    move-object/from16 v16, v5

    const-wide/16 v4, 0x0

    invoke-static {v14, v15, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    long-to-float v4, v4

    .line 188
    .local v4, "recencyScore":F
    invoke-virtual {v2, v4}, Landroid/service/resolver/ResolverTarget;->setRecencyScore(F)V

    .line 189
    cmpl-float v5, v4, v8

    if-lez v5, :cond_95

    .line 190
    move v8, v4

    goto :goto_95

    .line 185
    .end local v4    # "recencyScore":F
    :cond_8c
    move/from16 v17, v4

    move-object/from16 v16, v5

    goto :goto_95

    .line 184
    :cond_91
    move/from16 v17, v4

    move-object/from16 v16, v5

    .line 193
    :cond_95
    :goto_95
    invoke-virtual {v13}, Landroid/app/usage/UsageStats;->getTotalTimeInForeground()J

    move-result-wide v4

    long-to-float v4, v4

    .line 194
    .local v4, "timeSpentScore":F
    invoke-virtual {v2, v4}, Landroid/service/resolver/ResolverTarget;->setTimeSpentScore(F)V

    .line 195
    cmpl-float v5, v4, v9

    if-lez v5, :cond_a2

    .line 196
    move v9, v4

    .line 198
    :cond_a2
    iget v5, v13, Landroid/app/usage/UsageStats;->mLaunchCount:I

    int-to-float v5, v5

    .line 199
    .local v5, "launchScore":F
    invoke-virtual {v2, v5}, Landroid/service/resolver/ResolverTarget;->setLaunchScore(F)V

    .line 200
    cmpl-float v14, v5, v10

    if-lez v14, :cond_ad

    .line 201
    move v10, v5

    .line 204
    :cond_ad
    const/4 v14, 0x0

    .line 205
    .local v14, "chooserScore":F
    iget-object v15, v13, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    if-eqz v15, :cond_118

    iget-object v15, v0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mAction:Ljava/lang/String;

    if-eqz v15, :cond_118

    iget-object v15, v13, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    move-object/from16 v18, v1

    .end local v1    # "target":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    .local v18, "target":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    iget-object v1, v0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mAction:Ljava/lang/String;

    .line 206
    invoke-virtual {v15, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_115

    .line 207
    iget-object v1, v13, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    iget-object v15, v0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    iget-object v15, v0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mContentType:Ljava/lang/String;

    .line 208
    move-object/from16 v19, v3

    .end local v3    # "targetsDict":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Landroid/content/ComponentName;Landroid/service/resolver/ResolverTarget;>;"
    .local v19, "targetsDict":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Landroid/content/ComponentName;Landroid/service/resolver/ResolverTarget;>;"
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v15, v3}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v14, v1

    .line 209
    iget-object v1, v0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mAnnotations:[Ljava/lang/String;

    if-eqz v1, :cond_11c

    .line 210
    iget-object v1, v0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mAnnotations:[Ljava/lang/String;

    array-length v1, v1

    .line 211
    .local v1, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_e7
    if-ge v3, v1, :cond_110

    .line 212
    iget-object v15, v13, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    move/from16 v20, v1

    .end local v1    # "size":I
    .local v20, "size":I
    iget-object v1, v0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mAction:Ljava/lang/String;

    invoke-virtual {v15, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    iget-object v15, v0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mAnnotations:[Ljava/lang/String;

    aget-object v15, v15, v3

    .line 213
    move/from16 v21, v3

    .end local v3    # "i":I
    .local v21, "i":I
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v15, v3}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v14, v1

    .line 211
    add-int/lit8 v3, v21, 0x1

    move/from16 v1, v20

    .end local v21    # "i":I
    .restart local v3    # "i":I
    goto :goto_e7

    .end local v20    # "size":I
    .restart local v1    # "size":I
    :cond_110
    move/from16 v20, v1

    move/from16 v21, v3

    .end local v1    # "size":I
    .end local v3    # "i":I
    .restart local v20    # "size":I
    .restart local v21    # "i":I
    goto :goto_11c

    .line 206
    .end local v19    # "targetsDict":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Landroid/content/ComponentName;Landroid/service/resolver/ResolverTarget;>;"
    .end local v20    # "size":I
    .end local v21    # "i":I
    .local v3, "targetsDict":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Landroid/content/ComponentName;Landroid/service/resolver/ResolverTarget;>;"
    :cond_115
    move-object/from16 v19, v3

    .end local v3    # "targetsDict":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Landroid/content/ComponentName;Landroid/service/resolver/ResolverTarget;>;"
    .restart local v19    # "targetsDict":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Landroid/content/ComponentName;Landroid/service/resolver/ResolverTarget;>;"
    goto :goto_11c

    .line 205
    .end local v18    # "target":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    .end local v19    # "targetsDict":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Landroid/content/ComponentName;Landroid/service/resolver/ResolverTarget;>;"
    .local v1, "target":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    .restart local v3    # "targetsDict":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Landroid/content/ComponentName;Landroid/service/resolver/ResolverTarget;>;"
    :cond_118
    move-object/from16 v18, v1

    move-object/from16 v19, v3

    .line 226
    .end local v1    # "target":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    .end local v3    # "targetsDict":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Landroid/content/ComponentName;Landroid/service/resolver/ResolverTarget;>;"
    .restart local v18    # "target":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    .restart local v19    # "targetsDict":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Landroid/content/ComponentName;Landroid/service/resolver/ResolverTarget;>;"
    :cond_11c
    :goto_11c
    invoke-virtual {v2, v14}, Landroid/service/resolver/ResolverTarget;->setChooserScore(F)V

    .line 227
    cmpl-float v1, v14, v11

    if-lez v1, :cond_133

    .line 228
    move v1, v14

    move v11, v1

    .end local v11    # "mostChooserScore":F
    .local v1, "mostChooserScore":F
    goto :goto_133

    .line 180
    .end local v4    # "timeSpentScore":F
    .end local v5    # "launchScore":F
    .end local v14    # "chooserScore":F
    .end local v18    # "target":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    .end local v19    # "targetsDict":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Landroid/content/ComponentName;Landroid/service/resolver/ResolverTarget;>;"
    .local v1, "target":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    .restart local v3    # "targetsDict":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Landroid/content/ComponentName;Landroid/service/resolver/ResolverTarget;>;"
    .restart local v11    # "mostChooserScore":F
    :cond_126
    move-object/from16 v18, v1

    move-object/from16 v19, v3

    move-object/from16 v16, v5

    .end local v1    # "target":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    .end local v3    # "targetsDict":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Landroid/content/ComponentName;Landroid/service/resolver/ResolverTarget;>;"
    .restart local v18    # "target":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    .restart local v19    # "targetsDict":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Landroid/content/ComponentName;Landroid/service/resolver/ResolverTarget;>;"
    goto :goto_133

    .line 177
    .end local v13    # "pkStats":Landroid/app/usage/UsageStats;
    .end local v18    # "target":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    .end local v19    # "targetsDict":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Landroid/content/ComponentName;Landroid/service/resolver/ResolverTarget;>;"
    .restart local v1    # "target":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    .restart local v3    # "targetsDict":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Landroid/content/ComponentName;Landroid/service/resolver/ResolverTarget;>;"
    :cond_12d
    move-object/from16 v18, v1

    move-object/from16 v19, v3

    move-object/from16 v16, v5

    .line 232
    .end local v1    # "target":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    .end local v2    # "resolverTarget":Landroid/service/resolver/ResolverTarget;
    .end local v3    # "targetsDict":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Landroid/content/ComponentName;Landroid/service/resolver/ResolverTarget;>;"
    .end local v12    # "stats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/app/usage/UsageStats;>;"
    :cond_133
    :goto_133
    move-object/from16 v5, v16

    goto/16 :goto_19

    .line 241
    :cond_137
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mTargets:Ljava/util/ArrayList;

    .line 242
    iget-object v1, v0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mTargetsDictPerUser:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_148
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_166

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 243
    .local v2, "u":Landroid/os/UserHandle;
    iget-object v3, v0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mTargets:Ljava/util/ArrayList;

    iget-object v4, v0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mTargetsDictPerUser:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 244
    .end local v2    # "u":Landroid/os/UserHandle;
    goto :goto_148

    .line 246
    :cond_166
    iget-object v1, v0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_16c
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_199

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/resolver/ResolverTarget;

    .line 247
    .local v1, "target":Landroid/service/resolver/ResolverTarget;
    invoke-virtual {v1}, Landroid/service/resolver/ResolverTarget;->getRecencyScore()F

    move-result v2

    div-float v13, v2, v8

    .line 248
    .local v13, "recency":F
    mul-float v2, v13, v13

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    .line 249
    invoke-virtual {v1}, Landroid/service/resolver/ResolverTarget;->getLaunchScore()F

    move-result v3

    div-float/2addr v3, v10

    .line 250
    invoke-virtual {v1}, Landroid/service/resolver/ResolverTarget;->getTimeSpentScore()F

    move-result v4

    div-float/2addr v4, v9

    .line 251
    invoke-virtual {v1}, Landroid/service/resolver/ResolverTarget;->getChooserScore()F

    move-result v5

    div-float/2addr v5, v11

    .line 248
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->setFeatures(Landroid/service/resolver/ResolverTarget;FFFF)V

    .line 252
    invoke-direct {v0, v1}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->addDefaultSelectProbability(Landroid/service/resolver/ResolverTarget;)V

    .line 256
    .end local v1    # "target":Landroid/service/resolver/ResolverTarget;
    .end local v13    # "recency":F
    goto :goto_16c

    .line 257
    :cond_199
    iget-object v1, v0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mTargets:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->predictSelectProbabilities(Ljava/util/List;)V

    .line 259
    invoke-direct {v0}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->buildUpdatedModel()Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mComparatorModel:Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;

    .line 260
    return-void
.end method

.method public blacklist getScore(Lcom/android/internal/app/chooser/TargetInfo;)F
    .registers 3
    .param p1, "targetInfo"    # Lcom/android/internal/app/chooser/TargetInfo;

    .line 269
    iget-object v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mComparatorModel:Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;->getScore(Lcom/android/internal/app/chooser/TargetInfo;)F

    move-result v0

    return v0
.end method

.method public blacklist handleResultMessage(Landroid/os/Message;)V
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 132
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_5

    .line 133
    return-void

    .line 135
    :cond_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string v1, "RRSResolverComparator"

    if-nez v0, :cond_11

    .line 136
    const-string v0, "Receiving null prediction results."

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    return-void

    .line 139
    :cond_11
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 140
    .local v0, "receivedTargets":Ljava/util/List;, "Ljava/util/List<Landroid/service/resolver/ResolverTarget;>;"
    if-eqz v0, :cond_68

    iget-object v2, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mTargets:Ljava/util/ArrayList;

    if-eqz v2, :cond_68

    .line 141
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v2, v3, :cond_68

    .line 142
    iget-object v1, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 143
    .local v1, "size":I
    const/4 v2, 0x0

    .line 144
    .local v2, "isUpdated":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2f
    if-ge v3, v1, :cond_5b

    .line 145
    nop

    .line 146
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/resolver/ResolverTarget;

    invoke-virtual {v4}, Landroid/service/resolver/ResolverTarget;->getSelectProbability()F

    move-result v4

    .line 147
    .local v4, "predictedProb":F
    iget-object v5, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/service/resolver/ResolverTarget;

    invoke-virtual {v5}, Landroid/service/resolver/ResolverTarget;->getSelectProbability()F

    move-result v5

    cmpl-float v5, v4, v5

    if-eqz v5, :cond_58

    .line 148
    iget-object v5, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/service/resolver/ResolverTarget;

    invoke-virtual {v5, v4}, Landroid/service/resolver/ResolverTarget;->setSelectProbability(F)V

    .line 149
    const/4 v2, 0x1

    .line 144
    .end local v4    # "predictedProb":F
    :cond_58
    add-int/lit8 v3, v3, 0x1

    goto :goto_2f

    .line 152
    .end local v3    # "i":I
    :cond_5b
    if-eqz v2, :cond_67

    .line 153
    iget-object v3, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mResolvedRankerName:Landroid/content/ComponentName;

    iput-object v3, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mRankerServiceName:Landroid/content/ComponentName;

    .line 154
    invoke-direct {p0}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->buildUpdatedModel()Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mComparatorModel:Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;

    .line 156
    .end local v1    # "size":I
    .end local v2    # "isUpdated":Z
    :cond_67
    goto :goto_6d

    .line 157
    :cond_68
    const-string v2, "Sizes of sent and received ResolverTargets diff."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :goto_6d
    return-void
.end method

.method public blacklist updateModel(Lcom/android/internal/app/chooser/TargetInfo;)V
    .registers 4
    .param p1, "targetInfo"    # Lcom/android/internal/app/chooser/TargetInfo;

    .line 275
    iget-object v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 276
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->mComparatorModel:Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;

    invoke-virtual {v1, p1}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;->notifyOnTargetSelected(Lcom/android/internal/app/chooser/TargetInfo;)V

    .line 277
    monitor-exit v0

    .line 278
    return-void

    .line 277
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method
