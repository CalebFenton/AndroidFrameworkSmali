.class public Landroid/app/jank/JankDataProcessor;
.super Ljava/lang/Object;
.source "JankDataProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/jank/JankDataProcessor$PendingJankStat;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG_LOGGING:Z = false

.field private static final blacklist LOG_BATCH_FREQUENCY:I = 0x32

.field private static final blacklist MAX_IN_MEMORY_STATS:I = 0x19

.field private static final blacklist TAG:Ljava/lang/String; = "JankDataProcessor"


# instance fields
.field private blacklist mCurrentBatchCount:I

.field private blacklist mPendingJankStats:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/app/jank/JankDataProcessor$PendingJankStat;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPendingJankStatsPool:Landroid/util/Pools$SimplePool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SimplePool<",
            "Landroid/app/jank/JankDataProcessor$PendingJankStat;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPendingStates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/jank/StateTracker$StateData;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mStateTracker:Landroid/app/jank/StateTracker;


# direct methods
.method public static synthetic blacklist $r8$lambda$FFZk-evpWDaWxTXpMFQcJeDVL_4(Landroid/app/jank/JankDataProcessor;Landroid/app/jank/JankDataProcessor$PendingJankStat;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/jank/JankDataProcessor;->lambda$logMetricCounts$0(Landroid/app/jank/JankDataProcessor$PendingJankStat;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/app/jank/StateTracker;)V
    .registers 4
    .param p1, "stateTracker"    # Landroid/app/jank/StateTracker;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/jank/JankDataProcessor;->mCurrentBatchCount:I

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/jank/JankDataProcessor;->mStateTracker:Landroid/app/jank/StateTracker;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/jank/JankDataProcessor;->mPendingStates:Ljava/util/ArrayList;

    .line 49
    new-instance v0, Landroid/util/Pools$SimplePool;

    const/16 v1, 0x19

    invoke-direct {v0, v1}, Landroid/util/Pools$SimplePool;-><init>(I)V

    iput-object v0, p0, Landroid/app/jank/JankDataProcessor;->mPendingJankStatsPool:Landroid/util/Pools$SimplePool;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/jank/JankDataProcessor;->mPendingJankStats:Ljava/util/HashMap;

    .line 54
    iput-object p1, p0, Landroid/app/jank/JankDataProcessor;->mStateTracker:Landroid/app/jank/StateTracker;

    .line 55
    return-void
.end method

.method private blacklist incrementBatchCountAndMaybeLogStats()V
    .registers 3

    .line 158
    iget v0, p0, Landroid/app/jank/JankDataProcessor;->mCurrentBatchCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/app/jank/JankDataProcessor;->mCurrentBatchCount:I

    .line 159
    iget v0, p0, Landroid/app/jank/JankDataProcessor;->mCurrentBatchCount:I

    const/16 v1, 0x32

    if-lt v0, v1, :cond_f

    .line 160
    invoke-virtual {p0}, Landroid/app/jank/JankDataProcessor;->logMetricCounts()V

    .line 162
    :cond_f
    return-void
.end method

.method private blacklist jankDataProcessingComplete()V
    .registers 2

    .line 173
    iget-object v0, p0, Landroid/app/jank/JankDataProcessor;->mStateTracker:Landroid/app/jank/StateTracker;

    invoke-virtual {v0}, Landroid/app/jank/StateTracker;->stateProcessingComplete()V

    .line 174
    iget-object v0, p0, Landroid/app/jank/JankDataProcessor;->mPendingStates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 175
    return-void
.end method

.method private synthetic blacklist lambda$logMetricCounts$0(Landroid/app/jank/JankDataProcessor$PendingJankStat;)V
    .registers 14
    .param p1, "stat"    # Landroid/app/jank/JankDataProcessor$PendingJankStat;

    .line 219
    nop

    .line 221
    invoke-virtual {p1}, Landroid/app/jank/JankDataProcessor$PendingJankStat;->getUid()I

    move-result v1

    .line 222
    invoke-virtual {p1}, Landroid/app/jank/JankDataProcessor$PendingJankStat;->getActivityName()Ljava/lang/String;

    move-result-object v2

    .line 223
    invoke-virtual {p1}, Landroid/app/jank/JankDataProcessor$PendingJankStat;->getWidgetId()Ljava/lang/String;

    move-result-object v3

    .line 224
    invoke-virtual {p1}, Landroid/app/jank/JankDataProcessor$PendingJankStat;->getRefreshRate()I

    move-result v4

    .line 225
    invoke-virtual {p1}, Landroid/app/jank/JankDataProcessor$PendingJankStat;->getWidgetCategory()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/jank/JankDataProcessor;->widgetCategoryToInt(Ljava/lang/String;)I

    move-result v5

    .line 226
    invoke-virtual {p1}, Landroid/app/jank/JankDataProcessor$PendingJankStat;->getWidgetState()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/jank/JankDataProcessor;->widgetStateToInt(Ljava/lang/String;)I

    move-result v6

    .line 227
    invoke-virtual {p1}, Landroid/app/jank/JankDataProcessor$PendingJankStat;->getTotalFrames()J

    move-result-wide v7

    .line 228
    invoke-virtual {p1}, Landroid/app/jank/JankDataProcessor$PendingJankStat;->getJankyFrames()J

    move-result-wide v9

    .line 229
    invoke-virtual {p1}, Landroid/app/jank/JankDataProcessor$PendingJankStat;->getFrameOverrunBuckets()[I

    move-result-object v11

    .line 219
    const/16 v0, 0x3b6

    invoke-static/range {v0 .. v11}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;Ljava/lang/String;IIIJJ[I)V

    .line 230
    invoke-static {p1}, Landroid/app/jank/JankDataProcessor$PendingJankStat;->-$$Nest$fgetmActivityName(Landroid/app/jank/JankDataProcessor$PendingJankStat;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object v0, p0, Landroid/app/jank/JankDataProcessor;->mPendingJankStatsPool:Landroid/util/Pools$SimplePool;

    invoke-virtual {v0, p1}, Landroid/util/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    .line 235
    return-void
.end method

.method private blacklist mergeExistingStat(Ljava/lang/String;Landroid/app/jank/AppJankStats;)V
    .registers 8
    .param p1, "stateKey"    # Ljava/lang/String;
    .param p2, "jankStat"    # Landroid/app/jank/AppJankStats;

    .line 111
    iget-object v0, p0, Landroid/app/jank/JankDataProcessor;->mPendingJankStats:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/jank/JankDataProcessor$PendingJankStat;

    .line 113
    .local v0, "pendingStat":Landroid/app/jank/JankDataProcessor$PendingJankStat;
    invoke-static {v0}, Landroid/app/jank/JankDataProcessor$PendingJankStat;->-$$Nest$fgetmJankyFrames(Landroid/app/jank/JankDataProcessor$PendingJankStat;)J

    move-result-wide v1

    invoke-virtual {p2}, Landroid/app/jank/AppJankStats;->getJankyFrameCount()J

    move-result-wide v3

    add-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Landroid/app/jank/JankDataProcessor$PendingJankStat;->-$$Nest$fputmJankyFrames(Landroid/app/jank/JankDataProcessor$PendingJankStat;J)V

    .line 114
    invoke-static {v0}, Landroid/app/jank/JankDataProcessor$PendingJankStat;->-$$Nest$fgetmTotalFrames(Landroid/app/jank/JankDataProcessor$PendingJankStat;)J

    move-result-wide v1

    invoke-virtual {p2}, Landroid/app/jank/AppJankStats;->getTotalFrameCount()J

    move-result-wide v3

    add-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Landroid/app/jank/JankDataProcessor$PendingJankStat;->-$$Nest$fputmTotalFrames(Landroid/app/jank/JankDataProcessor$PendingJankStat;J)V

    .line 116
    invoke-static {v0}, Landroid/app/jank/JankDataProcessor$PendingJankStat;->-$$Nest$fgetmFrameOverrunBuckets(Landroid/app/jank/JankDataProcessor$PendingJankStat;)[I

    move-result-object v1

    .line 117
    invoke-virtual {p2}, Landroid/app/jank/AppJankStats;->getRelativeFrameTimeHistogram()Landroid/app/jank/RelativeFrameTimeHistogram;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/jank/RelativeFrameTimeHistogram;->getBucketCounters()[I

    move-result-object v2

    .line 116
    invoke-direct {p0, v1, v2}, Landroid/app/jank/JankDataProcessor;->mergeOverrunHistograms([I[I)V

    .line 118
    return-void
.end method

.method private blacklist mergeNewStat(Ljava/lang/String;Ljava/lang/String;Landroid/app/jank/AppJankStats;)V
    .registers 7
    .param p1, "stateKey"    # Ljava/lang/String;
    .param p2, "activityName"    # Ljava/lang/String;
    .param p3, "jankStats"    # Landroid/app/jank/AppJankStats;

    .line 122
    iget-object v0, p0, Landroid/app/jank/JankDataProcessor;->mPendingJankStats:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/16 v1, 0x19

    if-le v0, v1, :cond_b

    .line 123
    return-void

    .line 126
    :cond_b
    iget-object v0, p0, Landroid/app/jank/JankDataProcessor;->mPendingJankStatsPool:Landroid/util/Pools$SimplePool;

    invoke-virtual {v0}, Landroid/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/jank/JankDataProcessor$PendingJankStat;

    .line 127
    .local v0, "pendingStat":Landroid/app/jank/JankDataProcessor$PendingJankStat;
    if-nez v0, :cond_1b

    .line 128
    new-instance v1, Landroid/app/jank/JankDataProcessor$PendingJankStat;

    invoke-direct {v1}, Landroid/app/jank/JankDataProcessor$PendingJankStat;-><init>()V

    move-object v0, v1

    .line 131
    :cond_1b
    invoke-virtual {v0}, Landroid/app/jank/JankDataProcessor$PendingJankStat;->clearStats()V

    .line 133
    invoke-static {v0, p2}, Landroid/app/jank/JankDataProcessor$PendingJankStat;->-$$Nest$fputmActivityName(Landroid/app/jank/JankDataProcessor$PendingJankStat;Ljava/lang/String;)V

    .line 134
    invoke-virtual {p3}, Landroid/app/jank/AppJankStats;->getUid()I

    move-result v1

    invoke-static {v0, v1}, Landroid/app/jank/JankDataProcessor$PendingJankStat;->-$$Nest$fputmUid(Landroid/app/jank/JankDataProcessor$PendingJankStat;I)V

    .line 135
    invoke-virtual {p3}, Landroid/app/jank/AppJankStats;->getWidgetId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/app/jank/JankDataProcessor$PendingJankStat;->-$$Nest$fputmWidgetId(Landroid/app/jank/JankDataProcessor$PendingJankStat;Ljava/lang/String;)V

    .line 136
    invoke-virtual {p3}, Landroid/app/jank/AppJankStats;->getWidgetCategory()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/app/jank/JankDataProcessor$PendingJankStat;->-$$Nest$fputmWidgetCategory(Landroid/app/jank/JankDataProcessor$PendingJankStat;Ljava/lang/String;)V

    .line 137
    invoke-virtual {p3}, Landroid/app/jank/AppJankStats;->getWidgetState()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/app/jank/JankDataProcessor$PendingJankStat;->-$$Nest$fputmWidgetState(Landroid/app/jank/JankDataProcessor$PendingJankStat;Ljava/lang/String;)V

    .line 138
    invoke-virtual {p3}, Landroid/app/jank/AppJankStats;->getTotalFrameCount()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/app/jank/JankDataProcessor$PendingJankStat;->-$$Nest$fputmTotalFrames(Landroid/app/jank/JankDataProcessor$PendingJankStat;J)V

    .line 139
    invoke-virtual {p3}, Landroid/app/jank/AppJankStats;->getJankyFrameCount()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/app/jank/JankDataProcessor$PendingJankStat;->-$$Nest$fputmJankyFrames(Landroid/app/jank/JankDataProcessor$PendingJankStat;J)V

    .line 141
    invoke-static {v0}, Landroid/app/jank/JankDataProcessor$PendingJankStat;->-$$Nest$fgetmFrameOverrunBuckets(Landroid/app/jank/JankDataProcessor$PendingJankStat;)[I

    move-result-object v1

    .line 142
    invoke-virtual {p3}, Landroid/app/jank/AppJankStats;->getRelativeFrameTimeHistogram()Landroid/app/jank/RelativeFrameTimeHistogram;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/jank/RelativeFrameTimeHistogram;->getBucketCounters()[I

    move-result-object v2

    .line 141
    invoke-direct {p0, v1, v2}, Landroid/app/jank/JankDataProcessor;->mergeOverrunHistograms([I[I)V

    .line 144
    iget-object v1, p0, Landroid/app/jank/JankDataProcessor;->mPendingJankStats:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    return-void
.end method

.method private blacklist mergeOverrunHistograms([I[I)V
    .registers 6
    .param p1, "mergeTarget"    # [I
    .param p2, "mergeSource"    # [I

    .line 150
    array-length v0, p1

    array-length v1, p2

    if-eq v0, v1, :cond_5

    return-void

    .line 152
    :cond_5
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    array-length v1, p1

    if-ge v0, v1, :cond_13

    .line 153
    aget v1, p1, v0

    aget v2, p2, v0

    add-int/2addr v1, v2

    aput v1, p1, v0

    .line 152
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 155
    .end local v0    # "i":I
    :cond_13
    return-void
.end method

.method private blacklist recordFrameCount(Landroid/view/SurfaceControl$JankData;Landroid/app/jank/StateTracker$StateData;Ljava/lang/String;I)V
    .registers 10
    .param p1, "frameData"    # Landroid/view/SurfaceControl$JankData;
    .param p2, "stateData"    # Landroid/app/jank/StateTracker$StateData;
    .param p3, "activityName"    # Ljava/lang/String;
    .param p4, "appUid"    # I

    .line 183
    iget-object v0, p0, Landroid/app/jank/JankDataProcessor;->mPendingJankStats:Ljava/util/HashMap;

    iget-object v1, p2, Landroid/app/jank/StateTracker$StateData;->mStateDataKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/jank/JankDataProcessor$PendingJankStat;

    .line 185
    .local v0, "jankStats":Landroid/app/jank/JankDataProcessor$PendingJankStat;
    if-nez v0, :cond_38

    .line 187
    iget-object v1, p0, Landroid/app/jank/JankDataProcessor;->mPendingJankStats:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    const/16 v2, 0x19

    if-le v1, v2, :cond_17

    .line 188
    return-void

    .line 191
    :cond_17
    iget-object v1, p0, Landroid/app/jank/JankDataProcessor;->mPendingJankStatsPool:Landroid/util/Pools$SimplePool;

    invoke-virtual {v1}, Landroid/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/app/jank/JankDataProcessor$PendingJankStat;

    .line 192
    if-nez v0, :cond_28

    .line 193
    new-instance v1, Landroid/app/jank/JankDataProcessor$PendingJankStat;

    invoke-direct {v1}, Landroid/app/jank/JankDataProcessor$PendingJankStat;-><init>()V

    move-object v0, v1

    .line 195
    :cond_28
    invoke-virtual {v0}, Landroid/app/jank/JankDataProcessor$PendingJankStat;->clearStats()V

    .line 196
    invoke-static {v0, p3}, Landroid/app/jank/JankDataProcessor$PendingJankStat;->-$$Nest$fputmActivityName(Landroid/app/jank/JankDataProcessor$PendingJankStat;Ljava/lang/String;)V

    .line 197
    invoke-static {v0, p4}, Landroid/app/jank/JankDataProcessor$PendingJankStat;->-$$Nest$fputmUid(Landroid/app/jank/JankDataProcessor$PendingJankStat;I)V

    .line 198
    iget-object v1, p0, Landroid/app/jank/JankDataProcessor;->mPendingJankStats:Ljava/util/HashMap;

    iget-object v2, p2, Landroid/app/jank/StateTracker$StateData;->mStateDataKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    :cond_38
    iget-wide v1, v0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->processedVsyncId:J

    invoke-virtual {p1}, Landroid/view/SurfaceControl$JankData;->getVsyncId()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_43

    return-void

    .line 203
    :cond_43
    invoke-static {v0}, Landroid/app/jank/JankDataProcessor$PendingJankStat;->-$$Nest$fgetmTotalFrames(Landroid/app/jank/JankDataProcessor$PendingJankStat;)J

    move-result-wide v1

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Landroid/app/jank/JankDataProcessor$PendingJankStat;->-$$Nest$fputmTotalFrames(Landroid/app/jank/JankDataProcessor$PendingJankStat;J)V

    .line 204
    invoke-virtual {p1}, Landroid/view/SurfaceControl$JankData;->getJankType()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_5d

    .line 205
    invoke-static {v0}, Landroid/app/jank/JankDataProcessor$PendingJankStat;->-$$Nest$fgetmJankyFrames(Landroid/app/jank/JankDataProcessor$PendingJankStat;)J

    move-result-wide v1

    add-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Landroid/app/jank/JankDataProcessor$PendingJankStat;->-$$Nest$fputmJankyFrames(Landroid/app/jank/JankDataProcessor$PendingJankStat;J)V

    .line 207
    :cond_5d
    invoke-virtual {p1}, Landroid/view/SurfaceControl$JankData;->getActualAppFrameTimeNanos()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/app/jank/JankDataProcessor$PendingJankStat;->recordFrameOverrun(J)V

    .line 208
    invoke-virtual {p1}, Landroid/view/SurfaceControl$JankData;->getVsyncId()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/jank/JankDataProcessor$PendingJankStat;->processedVsyncId:J

    .line 210
    return-void
.end method

.method private blacklist widgetCategoryToInt(Ljava/lang/String;)I
    .registers 8
    .param p1, "widgetCategory"    # Ljava/lang/String;

    .line 247
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    sparse-switch v0, :sswitch_data_5a

    :cond_c
    goto :goto_4e

    :sswitch_d
    const-string/jumbo v0, "navigation"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    move v0, v4

    goto :goto_4f

    :sswitch_18
    const-string v0, "animation"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_4f

    :sswitch_22
    const-string/jumbo v0, "keyboard"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    move v0, v3

    goto :goto_4f

    :sswitch_2d
    const-string/jumbo v0, "other"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    move v0, v2

    goto :goto_4f

    :sswitch_38
    const-string/jumbo v0, "media"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    move v0, v5

    goto :goto_4f

    :sswitch_43
    const-string/jumbo v0, "scroll"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    move v0, v1

    goto :goto_4f

    :goto_4e
    const/4 v0, -0x1

    :goto_4f
    packed-switch v0, :pswitch_data_74

    .line 277
    return v1

    .line 269
    :pswitch_53
    const/4 v0, 0x6

    return v0

    .line 265
    :pswitch_55
    return v2

    .line 261
    :pswitch_56
    return v3

    .line 257
    :pswitch_57
    return v4

    .line 253
    :pswitch_58
    return v5

    .line 249
    :pswitch_59
    return v5

    :sswitch_data_5a
    .sparse-switch
        -0x361a1933 -> :sswitch_43
        0x62f6fe4 -> :sswitch_38
        0x6527f10 -> :sswitch_2d
        0x1e0673e7 -> :sswitch_22
        0x42ab1b84 -> :sswitch_18
        0x6f060a14 -> :sswitch_d
    .end sparse-switch

    :pswitch_data_74
    .packed-switch 0x0
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_53
    .end packed-switch
.end method

.method private blacklist widgetStateToInt(Ljava/lang/String;)I
    .registers 13
    .param p1, "widgetState"    # Ljava/lang/String;

    .line 284
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x9

    const/16 v3, 0x8

    const/4 v4, 0x7

    const/4 v5, 0x6

    const/4 v6, 0x5

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    sparse-switch v0, :sswitch_data_92

    :cond_13
    goto/16 :goto_81

    :sswitch_15
    const-string/jumbo v0, "playback"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    move v0, v4

    goto/16 :goto_82

    :sswitch_21
    const-string v0, "flinging"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    move v0, v9

    goto :goto_82

    :sswitch_2b
    const-string/jumbo v0, "predictive_back"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    move v0, v2

    goto :goto_82

    :sswitch_36
    const-string v0, "animating"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    move v0, v5

    goto :goto_82

    :sswitch_40
    const-string/jumbo v0, "scrolling"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    move v0, v10

    goto :goto_82

    :sswitch_4b
    const-string/jumbo v0, "none"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    move v0, v1

    goto :goto_82

    :sswitch_56
    const-string/jumbo v0, "zooming"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    move v0, v6

    goto :goto_82

    :sswitch_61
    const-string v0, "dragging"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    move v0, v7

    goto :goto_82

    :sswitch_6b
    const-string/jumbo v0, "tapping"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    move v0, v3

    goto :goto_82

    :sswitch_76
    const-string/jumbo v0, "swiping"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    move v0, v8

    goto :goto_82

    :goto_81
    const/4 v0, -0x1

    :goto_82
    packed-switch v0, :pswitch_data_bc

    .line 330
    return v1

    .line 322
    :pswitch_86
    const/16 v0, 0xa

    return v0

    .line 318
    :pswitch_89
    return v2

    .line 314
    :pswitch_8a
    return v3

    .line 310
    :pswitch_8b
    return v4

    .line 306
    :pswitch_8c
    return v5

    .line 302
    :pswitch_8d
    return v6

    .line 298
    :pswitch_8e
    return v7

    .line 294
    :pswitch_8f
    return v8

    .line 290
    :pswitch_90
    return v9

    .line 286
    :pswitch_91
    return v10

    :sswitch_data_92
    .sparse-switch
        -0x6b868a89 -> :sswitch_76
        -0x5bc8486b -> :sswitch_6b
        -0x322222b1 -> :sswitch_61
        -0x68e80d1 -> :sswitch_56
        0x33af38 -> :sswitch_4b
        0x18e721f5 -> :sswitch_40
        0x42ab1b5e -> :sswitch_36
        0x684bb7c7 -> :sswitch_2b
        0x6e443d06 -> :sswitch_21
        0x7001d61b -> :sswitch_15
    .end sparse-switch

    :pswitch_data_bc
    .packed-switch 0x0
        :pswitch_91
        :pswitch_90
        :pswitch_8f
        :pswitch_8e
        :pswitch_8d
        :pswitch_8c
        :pswitch_8b
        :pswitch_8a
        :pswitch_89
        :pswitch_86
    .end packed-switch
.end method


# virtual methods
.method public blacklist getPendingJankStats()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/app/jank/JankDataProcessor$PendingJankStat;",
            ">;"
        }
    .end annotation

    .line 169
    iget-object v0, p0, Landroid/app/jank/JankDataProcessor;->mPendingJankStats:Ljava/util/HashMap;

    return-object v0
.end method

.method public blacklist logMetricCounts()V
    .registers 3

    .line 218
    :try_start_0
    iget-object v0, p0, Landroid/app/jank/JankDataProcessor;->mPendingJankStats:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Landroid/app/jank/JankDataProcessor$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/app/jank/JankDataProcessor$$ExternalSyntheticLambda0;-><init>(Landroid/app/jank/JankDataProcessor;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    .line 239
    iget-object v0, p0, Landroid/app/jank/JankDataProcessor;->mPendingJankStats:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 240
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/jank/JankDataProcessor;->mCurrentBatchCount:I
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    .line 243
    goto :goto_18

    .line 241
    :catch_17
    move-exception v0

    .line 244
    :goto_18
    return-void
.end method

.method public blacklist mergeJankStats(Landroid/app/jank/AppJankStats;Ljava/lang/String;)V
    .registers 7
    .param p1, "jankStats"    # Landroid/app/jank/AppJankStats;
    .param p2, "activityName"    # Ljava/lang/String;

    .line 98
    iget-object v0, p0, Landroid/app/jank/JankDataProcessor;->mStateTracker:Landroid/app/jank/StateTracker;

    invoke-virtual {p1}, Landroid/app/jank/AppJankStats;->getWidgetCategory()Ljava/lang/String;

    move-result-object v1

    .line 99
    invoke-virtual {p1}, Landroid/app/jank/AppJankStats;->getWidgetId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/app/jank/AppJankStats;->getWidgetState()Ljava/lang/String;

    move-result-object v3

    .line 98
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/jank/StateTracker;->getStateKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "stateKey":Ljava/lang/String;
    iget-object v1, p0, Landroid/app/jank/JankDataProcessor;->mPendingJankStats:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 102
    invoke-direct {p0, v0, p1}, Landroid/app/jank/JankDataProcessor;->mergeExistingStat(Ljava/lang/String;Landroid/app/jank/AppJankStats;)V

    goto :goto_21

    .line 104
    :cond_1e
    invoke-direct {p0, v0, p2, p1}, Landroid/app/jank/JankDataProcessor;->mergeNewStat(Ljava/lang/String;Ljava/lang/String;Landroid/app/jank/AppJankStats;)V

    .line 107
    :goto_21
    invoke-direct {p0}, Landroid/app/jank/JankDataProcessor;->incrementBatchCountAndMaybeLogStats()V

    .line 108
    return-void
.end method

.method public blacklist processJankData(Ljava/util/List;Ljava/lang/String;I)V
    .registers 12
    .param p2, "activityName"    # Ljava/lang/String;
    .param p3, "appUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/SurfaceControl$JankData;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 66
    .local p1, "jankData":Ljava/util/List;, "Ljava/util/List<Landroid/view/SurfaceControl$JankData;>;"
    iget-object v0, p0, Landroid/app/jank/JankDataProcessor;->mStateTracker:Landroid/app/jank/StateTracker;

    iget-object v1, p0, Landroid/app/jank/JankDataProcessor;->mPendingStates:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Landroid/app/jank/StateTracker;->retrieveAllStates(Ljava/util/ArrayList;)V

    .line 69
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_45

    .line 70
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceControl$JankData;

    .line 72
    .local v1, "frame":Landroid/view/SurfaceControl$JankData;
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_15
    iget-object v3, p0, Landroid/app/jank/JankDataProcessor;->mPendingStates:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_42

    .line 73
    iget-object v3, p0, Landroid/app/jank/JankDataProcessor;->mPendingStates:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/jank/StateTracker$StateData;

    .line 75
    .local v3, "pendingState":Landroid/app/jank/StateTracker$StateData;
    invoke-virtual {v1}, Landroid/view/SurfaceControl$JankData;->getVsyncId()J

    move-result-wide v4

    iget-wide v6, v3, Landroid/app/jank/StateTracker$StateData;->mVsyncIdStart:J

    cmp-long v4, v4, v6

    if-ltz v4, :cond_3f

    .line 76
    invoke-virtual {v1}, Landroid/view/SurfaceControl$JankData;->getVsyncId()J

    move-result-wide v4

    iget-wide v6, v3, Landroid/app/jank/StateTracker$StateData;->mVsyncIdEnd:J

    cmp-long v4, v4, v6

    if-gtz v4, :cond_3f

    .line 77
    invoke-direct {p0, v1, v3, p2, p3}, Landroid/app/jank/JankDataProcessor;->recordFrameCount(Landroid/view/SurfaceControl$JankData;Landroid/app/jank/StateTracker$StateData;Ljava/lang/String;I)V

    .line 79
    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/app/jank/StateTracker$StateData;->mProcessed:Z

    .line 72
    .end local v3    # "pendingState":Landroid/app/jank/StateTracker$StateData;
    :cond_3f
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 69
    .end local v1    # "frame":Landroid/view/SurfaceControl$JankData;
    .end local v2    # "j":I
    :cond_42
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 84
    .end local v0    # "i":I
    :cond_45
    invoke-direct {p0}, Landroid/app/jank/JankDataProcessor;->incrementBatchCountAndMaybeLogStats()V

    .line 87
    invoke-direct {p0}, Landroid/app/jank/JankDataProcessor;->jankDataProcessingComplete()V

    .line 88
    return-void
.end method
