.class public Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsListener;
.super Ljava/lang/Object;
.source "FrameMetricsListener.java"

# interfaces
.implements Landroid/view/Window$OnFrameMetricsAvailableListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsListener$DisplayListenerBackend;
    }
.end annotation


# instance fields
.field private blacklist mBackend:Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsListener$DisplayListenerBackend;

.field private final blacklist mFrameMetricsStore:Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsStore;

.field private blacklist mIsRecording:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private blacklist mVsyncInterval:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$mmaybeUpdateRefreshRate(Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsListener;)V
    .registers 1

    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsListener;->maybeUpdateRefreshRate()V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsStore;)V
    .registers 4
    .param p1, "frameMetricsStore"    # Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsStore;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsListener$DisplayListenerBackend;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsListener$DisplayListenerBackend;-><init>(Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsListener;Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsListener-IA;)V

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsListener;->mBackend:Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsListener$DisplayListenerBackend;

    .line 53
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsListener;->mIsRecording:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 58
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsListener;->mFrameMetricsStore:Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsStore;

    .line 59
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsListener;->mBackend:Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsListener$DisplayListenerBackend;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsListener$DisplayListenerBackend;->startListening()V

    .line 60
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsListener;->maybeUpdateRefreshRate()V

    .line 61
    return-void
.end method

.method private blacklist maybeUpdateRefreshRate()V
    .registers 11

    .line 64
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 65
    .local v0, "appCtx":Landroid/content/Context;
    nop

    .line 66
    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 67
    .local v1, "displayManager":Landroid/hardware/display/DisplayManager;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v2

    .line 68
    .local v2, "display":Landroid/view/Display;
    if-nez v2, :cond_15

    .line 69
    return-void

    .line 71
    :cond_15
    invoke-virtual {v2}, Landroid/view/Display;->getRefreshRate()F

    move-result v3

    .line 72
    .local v3, "refreshRate":F
    const-wide/32 v4, 0xf4240

    .line 73
    .local v4, "kMicrosecondsPerSecond":J
    const-wide/32 v6, 0xf4240

    float-to-long v8, v3

    div-long/2addr v6, v8

    iput-wide v6, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsListener;->mVsyncInterval:J

    .line 74
    iget-wide v6, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsListener;->mVsyncInterval:J

    .line 75
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    .line 74
    const-string v7, "FrameMetricsListener.maybeUpdateRefreshRate"

    invoke-static {v7, v6}, Landroid/net/connectivity/org/chromium/base/TraceEvent;->instant(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    return-void
.end method


# virtual methods
.method public whitelist onFrameMetricsAvailable(Landroid/view/Window;Landroid/view/FrameMetrics;I)V
    .registers 20
    .param p1, "window"    # Landroid/view/Window;
    .param p2, "frameMetrics"    # Landroid/view/FrameMetrics;
    .param p3, "dropCountSinceLastInvocation"    # I

    .line 90
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    iget-object v0, v1, Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsListener;->mIsRecording:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_d

    .line 91
    return-void

    .line 94
    :cond_d
    const/16 v0, 0x8

    invoke-virtual {v2, v0}, Landroid/view/FrameMetrics;->getMetric(I)J

    move-result-wide v4

    .line 95
    .local v4, "frameTotalDurationNs":J
    const/16 v0, 0xb

    invoke-virtual {v2, v0}, Landroid/view/FrameMetrics;->getMetric(I)J

    move-result-wide v7

    .line 97
    .local v7, "frame_start_vsync_ts":J
    nop

    .line 98
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    const-string v3, "onFrameMetricsAvailable"

    invoke-static {v3, v0}, Landroid/net/connectivity/org/chromium/base/TraceEvent;->scoped(Ljava/lang/String;Ljava/lang/String;)Landroid/net/connectivity/org/chromium/base/TraceEvent;

    move-result-object v9

    .line 101
    .local v9, "e":Landroid/net/connectivity/org/chromium/base/TraceEvent;
    const/16 v0, 0xd

    :try_start_26
    invoke-virtual {v2, v0}, Landroid/view/FrameMetrics;->getMetric(I)J

    move-result-wide v10

    .line 102
    .local v10, "deadlineNs":J
    const/4 v0, 0x0

    .line 103
    .local v0, "missedVsyncs":I
    cmp-long v3, v4, v10

    if-ltz v3, :cond_3d

    .line 104
    sub-long v12, v4, v10

    const-wide/16 v14, 0x3e8

    div-long/2addr v12, v14

    .line 106
    .local v12, "frameDeadlineDeltaUs":J
    iget-wide v14, v1, Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsListener;->mVsyncInterval:J

    add-long/2addr v14, v12

    iget-wide v2, v1, Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsListener;->mVsyncInterval:J

    div-long/2addr v14, v2

    long-to-int v0, v14

    move v6, v0

    goto :goto_3e

    .line 103
    .end local v12    # "frameDeadlineDeltaUs":J
    :cond_3d
    move v6, v0

    .line 108
    .end local v0    # "missedVsyncs":I
    .local v6, "missedVsyncs":I
    :goto_3e
    iget-object v3, v1, Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsListener;->mFrameMetricsStore:Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsStore;

    invoke-virtual/range {v3 .. v8}, Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsStore;->addFrameMeasurement(JIJ)V
    :try_end_43
    .catchall {:try_start_26 .. :try_end_43} :catchall_49

    .line 110
    .end local v6    # "missedVsyncs":I
    .end local v10    # "deadlineNs":J
    if-eqz v9, :cond_48

    invoke-virtual {v9}, Landroid/net/connectivity/org/chromium/base/TraceEvent;->close()V

    .line 111
    .end local v9    # "e":Landroid/net/connectivity/org/chromium/base/TraceEvent;
    :cond_48
    return-void

    .line 97
    .restart local v9    # "e":Landroid/net/connectivity/org/chromium/base/TraceEvent;
    :catchall_49
    move-exception v0

    move-object v2, v0

    if-eqz v9, :cond_55

    :try_start_4d
    invoke-virtual {v9}, Landroid/net/connectivity/org/chromium/base/TraceEvent;->close()V
    :try_end_50
    .catchall {:try_start_4d .. :try_end_50} :catchall_51

    goto :goto_55

    :catchall_51
    move-exception v0

    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_55
    :goto_55
    throw v2
.end method

.method public blacklist setIsListenerRecording(Z)V
    .registers 3
    .param p1, "isRecording"    # Z

    .line 83
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsListener;->mIsRecording:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 84
    return-void
.end method
