.class public Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsStore;
.super Ljava/lang/Object;
.source "FrameMetricsStore.java"


# static fields
.field private static final blacklist TRACE_EVENT_TRACK_ID:J = 0x12b1702fd756068L


# instance fields
.field private blacklist mMaxTimestamp:J

.field private final blacklist mNumMissedVsyncs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPendingStartTimestampNs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mScenarioPreviousFrameTimestampNs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mThreadChecker:Landroid/net/connectivity/org/chromium/base/ThreadUtils$ThreadChecker;

.field private final blacklist mTimestampsNs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mTotalDurationsNs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .registers 4

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Landroid/net/connectivity/org/chromium/base/ThreadUtils$ThreadChecker;

    invoke-direct {v0}, Landroid/net/connectivity/org/chromium/base/ThreadUtils$ThreadChecker;-><init>()V

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsStore;->mThreadChecker:Landroid/net/connectivity/org/chromium/base/ThreadUtils$ThreadChecker;

    .line 27
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsStore;->mMaxTimestamp:J

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsStore;->mTimestampsNs:Ljava/util/ArrayList;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsStore;->mTotalDurationsNs:Ljava/util/ArrayList;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsStore;->mNumMissedVsyncs:Ljava/util/ArrayList;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsStore;->mScenarioPreviousFrameTimestampNs:Ljava/util/HashMap;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsStore;->mPendingStartTimestampNs:Ljava/util/HashMap;

    .line 47
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsStore;->mTimestampsNs:Ljava/util/ArrayList;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsStore;->mTotalDurationsNs:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsStore;->mNumMissedVsyncs:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    return-void
.end method

.method private blacklist convertArraysToJankMetrics(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Landroid/net/connectivity/org/chromium/base/jank_tracker/JankMetrics;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/net/connectivity/org/chromium/base/jank_tracker/JankMetrics;"
        }
    .end annotation

    .line 251
    .local p1, "longTimestampsNs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local p2, "longDurations":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local p3, "intNumMissedVsyncs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [J

    .line 252
    .local v0, "timestamps":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1c

    .line 253
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 252
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 256
    .end local v1    # "i":I
    :cond_1c
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [J

    .line 257
    .local v1, "durations":[J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_23
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_38

    .line 258
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    aput-wide v3, v1, v2

    .line 257
    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    .line 261
    .end local v2    # "i":I
    :cond_38
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [I

    .line 262
    .local v2, "numMissedVsyncs":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3f
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_54

    .line 263
    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v2, v3

    .line 262
    add-int/lit8 v3, v3, 0x1

    goto :goto_3f

    .line 266
    .end local v3    # "i":I
    :cond_54
    new-instance v3, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankMetrics;

    invoke-direct {v3, v0, v1, v2}, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankMetrics;-><init>([J[J[I)V

    .line 267
    .local v3, "jankMetrics":Landroid/net/connectivity/org/chromium/base/jank_tracker/JankMetrics;
    return-object v3
.end method

.method private blacklist findFirstUsedTimestamp()J
    .registers 7

    .line 237
    const-wide v0, 0x7fffffffffffffffL

    .line 238
    .local v0, "firstTimestamp":J
    iget-object v2, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsStore;->mScenarioPreviousFrameTimestampNs:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 239
    .local v3, "timestamp":J
    cmp-long v5, v3, v0

    if-gez v5, :cond_24

    .line 240
    move-wide v0, v3

    .line 242
    .end local v3    # "timestamp":J
    :cond_24
    goto :goto_f

    .line 244
    :cond_25
    return-wide v0
.end method

.method private blacklist removeUnusedFrames()V
    .registers 8

    .line 206
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsStore;->mScenarioPreviousFrameTimestampNs:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    const-string v1, "removeUnusedFrames"

    const/4 v2, 0x1

    if-eqz v0, :cond_47

    .line 207
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsStore;->mTimestampsNs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-long v3, v0

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/net/connectivity/org/chromium/base/TraceEvent;->instant(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsStore;->mTimestampsNs:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsStore;->mTimestampsNs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 209
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsStore;->mTotalDurationsNs:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsStore;->mTotalDurationsNs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 210
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsStore;->mNumMissedVsyncs:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsStore;->mNumMissedVsyncs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 211
    return-void

    .line 214
    :cond_47
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsStore;->findFirstUsedTimestamp()J

    move-result-wide v3

    .line 217
    .local v3, "firstUsedTimestamp":J
    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-nez v0, :cond_52

    .line 218
    return-void

    .line 221
    :cond_52
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsStore;->mTimestampsNs:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 222
    .local v0, "firstUsedIndex":I
    const/4 v5, -0x1

    if-ne v0, v5, :cond_6c

    .line 223
    sget-boolean v1, Landroid/net/connectivity/org/chromium/build/BuildConfig;->ENABLE_ASSERTS:Z

    if-nez v1, :cond_64

    .line 227
    return-void

    .line 224
    :cond_64
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Timestamp for tracked scenario not found"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 229
    :cond_6c
    int-to-long v5, v0

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/net/connectivity/org/chromium/base/TraceEvent;->instant(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsStore;->mTimestampsNs:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 232
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsStore;->mTotalDurationsNs:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 233
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsStore;->mNumMissedVsyncs:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 234
    return-void
.end method

.method public static blacklist scenarioToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "scenario"    # I

    .line 57
    packed-switch p0, :pswitch_data_2c

    .line 81
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid scenario value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :pswitch_b
    const-string v0, "CombinedWebviewScrolling"

    return-object v0

    .line 77
    :pswitch_e
    const-string v0, "WebviewScrolling"

    return-object v0

    .line 75
    :pswitch_11
    const-string v0, "FeedScrolling"

    return-object v0

    .line 73
    :pswitch_14
    const-string v0, "StartSurfaceTabSwitcher"

    return-object v0

    .line 71
    :pswitch_17
    const-string v0, "StartSurfaceHomepage"

    return-object v0

    .line 69
    :pswitch_1a
    const-string v0, "OpenLinkInNewTab"

    return-object v0

    .line 67
    :pswitch_1d
    const-string v0, "TabSwitcher"

    return-object v0

    .line 65
    :pswitch_20
    const-string v0, "Startup"

    return-object v0

    .line 63
    :pswitch_23
    const-string v0, "NewTabPage"

    return-object v0

    .line 61
    :pswitch_26
    const-string v0, "OmniboxFocus"

    return-object v0

    .line 59
    :pswitch_29
    const-string v0, "Total"

    return-object v0

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
    .end packed-switch
.end method


# virtual methods
.method blacklist addFrameMeasurement(JIJ)V
    .registers 8
    .param p1, "totalDurationNs"    # J
    .param p3, "numMissedVsyncs"    # I
    .param p4, "frameStartVsyncTs"    # J

    .line 98
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsStore;->mThreadChecker:Landroid/net/connectivity/org/chromium/base/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/ThreadUtils$ThreadChecker;->assertOnValidThread()V

    .line 99
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsStore;->mTotalDurationsNs:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsStore;->mNumMissedVsyncs:Ljava/util/ArrayList;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsStore;->mTimestampsNs:Ljava/util/ArrayList;

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    iput-wide p4, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsStore;->mMaxTimestamp:J

    .line 103
    return-void
.end method

.method blacklist hasReceivedMetricsPast(J)Z
    .registers 5
    .param p1, "endScenarioTimeNs"    # J

    .line 129
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsStore;->mThreadChecker:Landroid/net/connectivity/org/chromium/base/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/ThreadUtils$ThreadChecker;->assertOnValidThread()V

    .line 130
    iget-wide v0, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsStore;->mMaxTimestamp:J

    cmp-long v0, v0, p1

    if-lez v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method blacklist initialize()V
    .registers 2

    .line 93
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsStore;->mThreadChecker:Landroid/net/connectivity/org/chromium/base/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/ThreadUtils$ThreadChecker;->resetThreadId()V

    .line 94
    return-void
.end method

.method blacklist startTrackingScenario(Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;)V
    .registers 8
    .param p1, "scenario"    # Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startTrackingScenario: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 108
    invoke-virtual {p1}, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;->type()I

    move-result v1

    invoke-static {v1}, Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsStore;->scenarioToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/TraceEvent;->scoped(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/base/TraceEvent;

    move-result-object v0

    .line 109
    .local v0, "e":Landroid/net/connectivity/org/chromium/base/TraceEvent;
    :try_start_1f
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsStore;->mThreadChecker:Landroid/net/connectivity/org/chromium/base/ThreadUtils$ThreadChecker;

    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/base/ThreadUtils$ThreadChecker;->assertOnValidThread()V

    .line 112
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsStore;->mScenarioPreviousFrameTimestampNs:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 113
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsStore;->mPendingStartTimestampNs:Ljava/util/HashMap;

    .line 114
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/TimeUtils;->uptimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0xf4240

    mul-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 113
    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3d
    .catchall {:try_start_1f .. :try_end_3d} :catchall_88

    .line 125
    if-eqz v0, :cond_42

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/TraceEvent;->close()V

    .line 115
    :cond_42
    return-void

    .line 118
    :cond_43
    :try_start_43
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JankCUJ:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 119
    invoke-virtual {p1}, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;->type()I

    move-result v2

    invoke-static {v2}, Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsStore;->scenarioToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 120
    invoke-virtual {p1}, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;->type()I

    move-result v2

    int-to-long v2, v2

    const-wide v4, 0x12b1702fd756068L

    add-long/2addr v2, v4

    .line 118
    invoke-static {v1, v2, v3}, Landroid/net/connectivity/org/chromium/base/TraceEvent;->startAsync(Ljava/lang/String;J)V

    .line 123
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsStore;->mTimestampsNs:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsStore;->mTimestampsNs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 124
    .local v1, "startingTimestamp":Ljava/lang/Long;
    iget-object v2, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsStore;->mScenarioPreviousFrameTimestampNs:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_81
    .catchall {:try_start_43 .. :try_end_81} :catchall_88

    .line 125
    nop

    .end local v1    # "startingTimestamp":Ljava/lang/Long;
    if-eqz v0, :cond_87

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/TraceEvent;->close()V

    .line 126
    .end local v0    # "e":Landroid/net/connectivity/org/chromium/base/TraceEvent;
    :cond_87
    return-void

    .line 107
    .restart local v0    # "e":Landroid/net/connectivity/org/chromium/base/TraceEvent;
    :catchall_88
    move-exception v1

    if-eqz v0, :cond_93

    :try_start_8b
    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/TraceEvent;->close()V
    :try_end_8e
    .catchall {:try_start_8b .. :try_end_8e} :catchall_8f

    goto :goto_93

    :catchall_8f
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_93
    :goto_93
    throw v1
.end method

.method blacklist stopTrackingScenario(Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;)Landroid/net/connectivity/org/chromium/base/jank_tracker/JankMetrics;
    .registers 4
    .param p1, "scenario"    # Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;

    .line 134
    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsStore;->stopTrackingScenario(Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;J)Landroid/net/connectivity/org/chromium/base/jank_tracker/JankMetrics;

    move-result-object v0

    return-object v0
.end method

.method blacklist stopTrackingScenario(Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;J)Landroid/net/connectivity/org/chromium/base/jank_tracker/JankMetrics;
    .registers 12
    .param p1, "scenario"    # Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;
    .param p2, "endScenarioTimeNs"    # J

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "finishTrackingScenario: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 142
    invoke-virtual {p1}, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;->type()I

    move-result v1

    invoke-static {v1}, Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsStore;->scenarioToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 143
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .line 141
    invoke-static {v0, v1}, Landroid/net/connectivity/org/chromium/base/TraceEvent;->scoped(Ljava/lang/String;Ljava/lang/String;)Landroid/net/connectivity/org/chromium/base/TraceEvent;

    move-result-object v0

    .line 144
    .local v0, "e":Landroid/net/connectivity/org/chromium/base/TraceEvent;
    :try_start_23
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsStore;->mThreadChecker:Landroid/net/connectivity/org/chromium/base/ThreadUtils$ThreadChecker;

    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/base/ThreadUtils$ThreadChecker;->assertOnValidThread()V

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JankCUJ:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 146
    invoke-virtual {p1}, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;->type()I

    move-result v2

    invoke-static {v2}, Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsStore;->scenarioToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 147
    invoke-virtual {p1}, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;->type()I

    move-result v2

    int-to-long v2, v2

    const-wide v4, 0x12b1702fd756068L

    add-long/2addr v2, v4

    .line 145
    invoke-static {v1, v2, v3}, Landroid/net/connectivity/org/chromium/base/TraceEvent;->finishAsync(Ljava/lang/String;J)V

    .line 151
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsStore;->mScenarioPreviousFrameTimestampNs:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 155
    .local v1, "previousFrameTimestamp":Ljava/lang/Long;
    if-nez v1, :cond_69

    .line 156
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsStore;->removeUnusedFrames()V

    .line 157
    new-instance v2, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankMetrics;

    invoke-direct {v2}, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankMetrics;-><init>()V
    :try_end_63
    .catchall {:try_start_23 .. :try_end_63} :catchall_f0

    .line 202
    if-eqz v0, :cond_68

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/TraceEvent;->close()V

    .line 157
    :cond_68
    return-object v2

    .line 160
    :cond_69
    :try_start_69
    iget-object v2, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsStore;->mTimestampsNs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 162
    .local v2, "startingIndex":I
    add-int/lit8 v2, v2, 0x1

    .line 166
    iget-object v3, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsStore;->mTimestampsNs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_84

    .line 167
    new-instance v3, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankMetrics;

    invoke-direct {v3}, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankMetrics;-><init>()V
    :try_end_7e
    .catchall {:try_start_69 .. :try_end_7e} :catchall_f0

    .line 202
    if-eqz v0, :cond_83

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/TraceEvent;->close()V

    .line 167
    :cond_83
    return-object v3

    .line 171
    :cond_84
    :try_start_84
    iget-object v3, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsStore;->mTimestampsNs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 172
    .local v3, "endingIndex":I
    const-wide/16 v4, 0x0

    cmp-long v4, p2, v4

    if-lez v4, :cond_bb

    .line 177
    iget-object v4, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsStore;->mTimestampsNs:Ljava/util/ArrayList;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v4

    .line 178
    .end local v3    # "endingIndex":I
    .local v4, "endingIndex":I
    if-gez v4, :cond_a1

    .line 179
    add-int/lit8 v3, v4, 0x1

    mul-int/lit8 v3, v3, -0x1

    .end local v4    # "endingIndex":I
    .restart local v3    # "endingIndex":I
    goto :goto_ad

    .line 181
    .end local v3    # "endingIndex":I
    .restart local v4    # "endingIndex":I
    :cond_a1
    add-int/lit8 v3, v4, 0x1

    iget-object v5, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsStore;->mTimestampsNs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 183
    .end local v4    # "endingIndex":I
    .restart local v3    # "endingIndex":I
    :goto_ad
    if-gt v3, v2, :cond_bb

    .line 185
    const-string v4, "FrameMetricsStore invalid endScenarioTimeNs"

    invoke-static {v4}, Landroid/net/connectivity/org/chromium/base/TraceEvent;->instant(Ljava/lang/String;)V

    .line 186
    iget-object v4, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsStore;->mTimestampsNs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v3, v4

    .line 190
    :cond_bb
    iget-object v4, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsStore;->mTimestampsNs:Ljava/util/ArrayList;

    .line 192
    invoke-virtual {v4, v2, v3}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsStore;->mTotalDurationsNs:Ljava/util/ArrayList;

    .line 193
    invoke-virtual {v5, v2, v3}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v5

    iget-object v6, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsStore;->mNumMissedVsyncs:Ljava/util/ArrayList;

    .line 194
    invoke-virtual {v6, v2, v3}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v6

    .line 191
    invoke-direct {p0, v4, v5, v6}, Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsStore;->convertArraysToJankMetrics(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Landroid/net/connectivity/org/chromium/base/jank_tracker/JankMetrics;

    move-result-object v4

    .line 195
    .local v4, "jankMetrics":Landroid/net/connectivity/org/chromium/base/jank_tracker/JankMetrics;
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsStore;->removeUnusedFrames()V

    .line 197
    iget-object v5, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsStore;->mPendingStartTimestampNs:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    .line 198
    .local v5, "pendingStartTimestampNs":Ljava/lang/Long;
    if-eqz v5, :cond_e9

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v6, v6, p2

    if-lez v6, :cond_e9

    .line 199
    invoke-virtual {p0, p1}, Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsStore;->startTrackingScenario(Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;)V
    :try_end_e9
    .catchall {:try_start_84 .. :try_end_e9} :catchall_f0

    .line 201
    :cond_e9
    nop

    .line 202
    if-eqz v0, :cond_ef

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/TraceEvent;->close()V

    .line 201
    :cond_ef
    return-object v4

    .line 140
    .end local v1    # "previousFrameTimestamp":Ljava/lang/Long;
    .end local v2    # "startingIndex":I
    .end local v3    # "endingIndex":I
    .end local v4    # "jankMetrics":Landroid/net/connectivity/org/chromium/base/jank_tracker/JankMetrics;
    .end local v5    # "pendingStartTimestampNs":Ljava/lang/Long;
    :catchall_f0
    move-exception v1

    if-eqz v0, :cond_fb

    :try_start_f3
    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/TraceEvent;->close()V
    :try_end_f6
    .catchall {:try_start_f3 .. :try_end_f6} :catchall_f7

    goto :goto_fb

    :catchall_f7
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_fb
    :goto_fb
    throw v1
.end method
