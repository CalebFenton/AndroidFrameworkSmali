.class public Lcom/android/internal/jank/FrameTracker;
.super Ljava/lang/Object;
.source "FrameTracker.java"

# interfaces
.implements Landroid/graphics/HardwareRendererObserver$OnFrameMetricsAvailableListener;
.implements Landroid/view/SurfaceControl$OnJankDataListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/jank/FrameTracker$ChoreographerWrapper;,
        Lcom/android/internal/jank/FrameTracker$SurfaceControlWrapper;,
        Lcom/android/internal/jank/FrameTracker$StatsLogWrapper;,
        Lcom/android/internal/jank/FrameTracker$ThreadedRendererWrapper;,
        Lcom/android/internal/jank/FrameTracker$FrameMetricsWrapper;,
        Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;,
        Lcom/android/internal/jank/FrameTracker$FrameTrackerListener;,
        Lcom/android/internal/jank/FrameTracker$JankInfo;,
        Lcom/android/internal/jank/FrameTracker$Reasons;
    }
.end annotation


# static fields
.field private static final blacklist FLUSH_DELAY_MILLISECOND:I = 0x3c

.field private static final blacklist INVALID_ID:J = -0x1L

.field private static final blacklist MAX_FLUSH_ATTEMPTS:I = 0x3

.field private static final blacklist MAX_LENGTH_EVENT_DESC:I = 0x7f

.field public static final blacklist NANOS_IN_MILLISECOND:I = 0xf4240

.field static final blacklist REASON_CANCEL_NORMAL:I = 0x10

.field static final blacklist REASON_CANCEL_NOT_BEGUN:I = 0x11

.field static final blacklist REASON_CANCEL_SAME_VSYNC:I = 0x12

.field static final blacklist REASON_CANCEL_TIMEOUT:I = 0x13

.field static final blacklist REASON_END_NORMAL:I = 0x0

.field static final blacklist REASON_END_SURFACE_DESTROYED:I = 0x1

.field static final blacklist REASON_END_UNKNOWN:I = -0x1

.field private static final blacklist TAG:Ljava/lang/String; = "FrameTracker"


# instance fields
.field private blacklist mBeginVsyncId:J

.field private blacklist mCancelled:Z

.field private final blacklist mChoreographer:Lcom/android/internal/jank/FrameTracker$ChoreographerWrapper;

.field private final blacklist mConfig:Lcom/android/internal/jank/InteractionJankMonitor$Configuration;

.field private final blacklist mDeferMonitoring:Z

.field private final blacklist mDisplayId:I

.field private blacklist mEndVsyncId:J

.field private final blacklist mHandler:Landroid/os/Handler;

.field private blacklist mJankDataListenerRegistration:Landroid/view/SurfaceControl$OnJankDataListenerRegistration;

.field private final blacklist mJankInfos:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/jank/FrameTracker$JankInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mListener:Lcom/android/internal/jank/FrameTracker$FrameTrackerListener;

.field private blacklist mMetricsFinalized:Z

.field private final blacklist mMetricsWrapper:Lcom/android/internal/jank/FrameTracker$FrameMetricsWrapper;

.field private final blacklist mObserver:Landroid/graphics/HardwareRendererObserver;

.field private final blacklist mRendererWrapper:Lcom/android/internal/jank/FrameTracker$ThreadedRendererWrapper;

.field private final blacklist mStatsLog:Lcom/android/internal/jank/FrameTracker$StatsLogWrapper;

.field private final blacklist mSurfaceChangedCallback:Landroid/view/ViewRootImpl$SurfaceChangedCallback;

.field private blacklist mSurfaceControl:Landroid/view/SurfaceControl;

.field private final blacklist mSurfaceControlWrapper:Lcom/android/internal/jank/FrameTracker$SurfaceControlWrapper;

.field public final blacklist mSurfaceOnly:Z

.field private final blacklist mTraceThresholdFrameTimeMillis:I

.field private final blacklist mTraceThresholdMissedFrames:I

.field private blacklist mTracingStarted:Z

.field private final blacklist mViewRoot:Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;

.field private blacklist mWaitForFinishTimedOut:Ljava/lang/Runnable;


# direct methods
.method public static synthetic blacklist $r8$lambda$OVeLaqcN9IKIE5Wad60L5pZL8A0(Lcom/android/internal/jank/FrameTracker;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/jank/FrameTracker;->lambda$onFrameMetricsAvailable$1()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$nODy56noZxnLNFzf_DRK46KMZpI(Lcom/android/internal/jank/FrameTracker;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/jank/FrameTracker;->beginInternal()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$rVugi0fZvtwemZN6TKJG3SIcOWw(Lcom/android/internal/jank/FrameTracker;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/jank/FrameTracker;->lambda$onJankDataAvailable$0(Ljava/util/List;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBeginVsyncId(Lcom/android/internal/jank/FrameTracker;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/internal/jank/FrameTracker;->mBeginVsyncId:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Lcom/android/internal/jank/FrameTracker;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/jank/FrameTracker;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmJankDataListenerRegistration(Lcom/android/internal/jank/FrameTracker;)Landroid/view/SurfaceControl$OnJankDataListenerRegistration;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/jank/FrameTracker;->mJankDataListenerRegistration:Landroid/view/SurfaceControl$OnJankDataListenerRegistration;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMetricsFinalized(Lcom/android/internal/jank/FrameTracker;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/internal/jank/FrameTracker;->mMetricsFinalized:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSurfaceControl(Lcom/android/internal/jank/FrameTracker;)Landroid/view/SurfaceControl;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/jank/FrameTracker;->mSurfaceControl:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmViewRoot(Lcom/android/internal/jank/FrameTracker;)Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/jank/FrameTracker;->mViewRoot:Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWaitForFinishTimedOut(Lcom/android/internal/jank/FrameTracker;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/jank/FrameTracker;->mWaitForFinishTimedOut:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSurfaceControl(Lcom/android/internal/jank/FrameTracker;Landroid/view/SurfaceControl;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/jank/FrameTracker;->mSurfaceControl:Landroid/view/SurfaceControl;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmWaitForFinishTimedOut(Lcom/android/internal/jank/FrameTracker;Ljava/lang/Runnable;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/jank/FrameTracker;->mWaitForFinishTimedOut:Ljava/lang/Runnable;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mfinish(Lcom/android/internal/jank/FrameTracker;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/jank/FrameTracker;->finish()V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/jank/InteractionJankMonitor$Configuration;Lcom/android/internal/jank/FrameTracker$ThreadedRendererWrapper;Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;Lcom/android/internal/jank/FrameTracker$SurfaceControlWrapper;Lcom/android/internal/jank/FrameTracker$ChoreographerWrapper;Lcom/android/internal/jank/FrameTracker$FrameMetricsWrapper;Lcom/android/internal/jank/FrameTracker$StatsLogWrapper;IILcom/android/internal/jank/FrameTracker$FrameTrackerListener;)V
    .registers 16
    .param p1, "config"    # Lcom/android/internal/jank/InteractionJankMonitor$Configuration;
    .param p2, "renderer"    # Lcom/android/internal/jank/FrameTracker$ThreadedRendererWrapper;
    .param p3, "viewRootWrapper"    # Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;
    .param p4, "surfaceControlWrapper"    # Lcom/android/internal/jank/FrameTracker$SurfaceControlWrapper;
    .param p5, "choreographer"    # Lcom/android/internal/jank/FrameTracker$ChoreographerWrapper;
    .param p6, "metrics"    # Lcom/android/internal/jank/FrameTracker$FrameMetricsWrapper;
    .param p7, "statsLog"    # Lcom/android/internal/jank/FrameTracker$StatsLogWrapper;
    .param p8, "traceThresholdMissedFrames"    # I
    .param p9, "traceThresholdFrameTimeMillis"    # I
    .param p10, "listener"    # Lcom/android/internal/jank/FrameTracker$FrameTrackerListener;

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mJankInfos:Landroid/util/SparseArray;

    .line 120
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/internal/jank/FrameTracker;->mBeginVsyncId:J

    .line 121
    iput-wide v0, p0, Lcom/android/internal/jank/FrameTracker;->mEndVsyncId:J

    .line 123
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/jank/FrameTracker;->mCancelled:Z

    .line 124
    iput-boolean v0, p0, Lcom/android/internal/jank/FrameTracker;->mTracingStarted:Z

    .line 206
    invoke-virtual {p1}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->isSurfaceOnly()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/jank/FrameTracker;->mSurfaceOnly:Z

    .line 207
    iput-object p1, p0, Lcom/android/internal/jank/FrameTracker;->mConfig:Lcom/android/internal/jank/InteractionJankMonitor$Configuration;

    .line 208
    invoke-virtual {p1}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/jank/FrameTracker;->mHandler:Landroid/os/Handler;

    .line 209
    iput-object p5, p0, Lcom/android/internal/jank/FrameTracker;->mChoreographer:Lcom/android/internal/jank/FrameTracker$ChoreographerWrapper;

    .line 210
    iput-object p4, p0, Lcom/android/internal/jank/FrameTracker;->mSurfaceControlWrapper:Lcom/android/internal/jank/FrameTracker$SurfaceControlWrapper;

    .line 211
    iput-object p7, p0, Lcom/android/internal/jank/FrameTracker;->mStatsLog:Lcom/android/internal/jank/FrameTracker$StatsLogWrapper;

    .line 212
    invoke-virtual {p1}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->shouldDeferMonitor()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/jank/FrameTracker;->mDeferMonitoring:Z

    .line 215
    iget-boolean v1, p0, Lcom/android/internal/jank/FrameTracker;->mSurfaceOnly:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_36

    move-object v1, v2

    goto :goto_37

    :cond_36
    move-object v1, p2

    :goto_37
    iput-object v1, p0, Lcom/android/internal/jank/FrameTracker;->mRendererWrapper:Lcom/android/internal/jank/FrameTracker$ThreadedRendererWrapper;

    .line 216
    iget-boolean v1, p0, Lcom/android/internal/jank/FrameTracker;->mSurfaceOnly:Z

    if-eqz v1, :cond_3f

    move-object v1, v2

    goto :goto_40

    :cond_3f
    move-object v1, p6

    :goto_40
    iput-object v1, p0, Lcom/android/internal/jank/FrameTracker;->mMetricsWrapper:Lcom/android/internal/jank/FrameTracker$FrameMetricsWrapper;

    .line 217
    iget-boolean v1, p0, Lcom/android/internal/jank/FrameTracker;->mSurfaceOnly:Z

    if-eqz v1, :cond_48

    move-object v1, v2

    goto :goto_49

    :cond_48
    move-object v1, p3

    :goto_49
    iput-object v1, p0, Lcom/android/internal/jank/FrameTracker;->mViewRoot:Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;

    .line 218
    iget-boolean v1, p0, Lcom/android/internal/jank/FrameTracker;->mSurfaceOnly:Z

    if-nez v1, :cond_6a

    invoke-static {}, Lcom/android/internal/jank/Flags;->useSfFrameDuration()Z

    move-result v1

    if-eqz v1, :cond_5c

    invoke-static {}, Lcom/android/internal/jank/Flags;->ignoreHwuiIsFirstFrame()Z

    move-result v1

    if-eqz v1, :cond_5c

    goto :goto_6a

    .line 220
    :cond_5c
    new-instance v1, Landroid/graphics/HardwareRendererObserver;

    iget-object v3, p0, Lcom/android/internal/jank/FrameTracker;->mMetricsWrapper:Lcom/android/internal/jank/FrameTracker$FrameMetricsWrapper;

    invoke-virtual {v3}, Lcom/android/internal/jank/FrameTracker$FrameMetricsWrapper;->getTiming()[J

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/jank/FrameTracker;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v3, v4, v0}, Landroid/graphics/HardwareRendererObserver;-><init>(Landroid/graphics/HardwareRendererObserver$OnFrameMetricsAvailableListener;[JLandroid/os/Handler;Z)V

    goto :goto_6b

    .line 219
    :cond_6a
    :goto_6a
    move-object v1, v2

    .line 220
    :goto_6b
    iput-object v1, p0, Lcom/android/internal/jank/FrameTracker;->mObserver:Landroid/graphics/HardwareRendererObserver;

    .line 223
    iput p8, p0, Lcom/android/internal/jank/FrameTracker;->mTraceThresholdMissedFrames:I

    .line 224
    iput p9, p0, Lcom/android/internal/jank/FrameTracker;->mTraceThresholdFrameTimeMillis:I

    .line 225
    iput-object p10, p0, Lcom/android/internal/jank/FrameTracker;->mListener:Lcom/android/internal/jank/FrameTracker$FrameTrackerListener;

    .line 226
    invoke-virtual {p1}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->getDisplayId()I

    move-result v0

    iput v0, p0, Lcom/android/internal/jank/FrameTracker;->mDisplayId:I

    .line 228
    iget-boolean v0, p0, Lcom/android/internal/jank/FrameTracker;->mSurfaceOnly:Z

    if-eqz v0, :cond_86

    .line 229
    invoke-virtual {p1}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 230
    iput-object v2, p0, Lcom/android/internal/jank/FrameTracker;->mSurfaceChangedCallback:Landroid/view/ViewRootImpl$SurfaceChangedCallback;

    goto :goto_a8

    .line 234
    :cond_86
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mViewRoot:Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;

    invoke-virtual {v0}, Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_9a

    .line 235
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mViewRoot:Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;

    invoke-virtual {v0}, Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 238
    :cond_9a
    new-instance v0, Lcom/android/internal/jank/FrameTracker$1;

    invoke-direct {v0, p0}, Lcom/android/internal/jank/FrameTracker$1;-><init>(Lcom/android/internal/jank/FrameTracker;)V

    iput-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mSurfaceChangedCallback:Landroid/view/ViewRootImpl$SurfaceChangedCallback;

    .line 269
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mViewRoot:Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;

    iget-object v1, p0, Lcom/android/internal/jank/FrameTracker;->mSurfaceChangedCallback:Landroid/view/ViewRootImpl$SurfaceChangedCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;->addSurfaceChangedCallback(Landroid/view/ViewRootImpl$SurfaceChangedCallback;)V

    .line 271
    :goto_a8
    return-void
.end method

.method private blacklist beginInternal()V
    .registers 5

    .line 309
    iget-boolean v0, p0, Lcom/android/internal/jank/FrameTracker;->mCancelled:Z

    if-nez v0, :cond_4a

    iget-wide v0, p0, Lcom/android/internal/jank/FrameTracker;->mEndVsyncId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_d

    goto :goto_4a

    .line 312
    :cond_d
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/jank/FrameTracker;->mTracingStarted:Z

    .line 313
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mConfig:Lcom/android/internal/jank/InteractionJankMonitor$Configuration;

    invoke-virtual {v0}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->getSessionName()Ljava/lang/String;

    move-result-object v0

    .line 314
    .local v0, "name":Ljava/lang/String;
    iget-wide v1, p0, Lcom/android/internal/jank/FrameTracker;->mBeginVsyncId:J

    long-to-int v1, v1

    const-wide/16 v2, 0x1000

    invoke-static {v2, v3, v0, v0, v1}, Landroid/os/Trace;->asyncTraceForTrackBegin(JLjava/lang/String;Ljava/lang/String;I)V

    .line 315
    const-string v1, "FT#beginVsync"

    iget-wide v2, p0, Lcom/android/internal/jank/FrameTracker;->mBeginVsyncId:J

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/jank/FrameTracker;->markEvent(Ljava/lang/String;J)V

    .line 316
    iget-object v1, p0, Lcom/android/internal/jank/FrameTracker;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->getLayerId()I

    move-result v1

    int-to-long v1, v1

    const-string v3, "FT#layerId"

    invoke-direct {p0, v3, v1, v2}, Lcom/android/internal/jank/FrameTracker;->markEvent(Ljava/lang/String;J)V

    .line 317
    invoke-direct {p0}, Lcom/android/internal/jank/FrameTracker;->markCujUiThread()V

    .line 318
    iget-object v1, p0, Lcom/android/internal/jank/FrameTracker;->mSurfaceControlWrapper:Lcom/android/internal/jank/FrameTracker$SurfaceControlWrapper;

    iget-object v2, p0, Lcom/android/internal/jank/FrameTracker;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 319
    invoke-virtual {v1, p0, v2}, Lcom/android/internal/jank/FrameTracker$SurfaceControlWrapper;->addJankStatsListener(Landroid/view/SurfaceControl$OnJankDataListener;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$OnJankDataListenerRegistration;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/jank/FrameTracker;->mJankDataListenerRegistration:Landroid/view/SurfaceControl$OnJankDataListenerRegistration;

    .line 320
    iget-boolean v1, p0, Lcom/android/internal/jank/FrameTracker;->mSurfaceOnly:Z

    if-nez v1, :cond_49

    .line 321
    iget-object v1, p0, Lcom/android/internal/jank/FrameTracker;->mRendererWrapper:Lcom/android/internal/jank/FrameTracker$ThreadedRendererWrapper;

    iget-object v2, p0, Lcom/android/internal/jank/FrameTracker;->mObserver:Landroid/graphics/HardwareRendererObserver;

    invoke-virtual {v1, v2}, Lcom/android/internal/jank/FrameTracker$ThreadedRendererWrapper;->addObserver(Landroid/graphics/HardwareRendererObserver;)V

    .line 323
    :cond_49
    return-void

    .line 310
    .end local v0    # "name":Ljava/lang/String;
    :cond_4a
    :goto_4a
    return-void
.end method

.method private blacklist callbacksReceived(Lcom/android/internal/jank/FrameTracker$JankInfo;)Z
    .registers 3
    .param p1, "info"    # Lcom/android/internal/jank/FrameTracker$JankInfo;

    .line 565
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mObserver:Landroid/graphics/HardwareRendererObserver;

    if-nez v0, :cond_7

    .line 566
    iget-boolean v0, p1, Lcom/android/internal/jank/FrameTracker$JankInfo;->surfaceControlCallbackFired:Z

    goto :goto_12

    .line 567
    :cond_7
    iget-boolean v0, p1, Lcom/android/internal/jank/FrameTracker$JankInfo;->hwuiCallbackFired:Z

    if-eqz v0, :cond_11

    iget-boolean v0, p1, Lcom/android/internal/jank/FrameTracker$JankInfo;->surfaceControlCallbackFired:Z

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    .line 565
    :goto_12
    return v0
.end method

.method private blacklist findJankInfo(J)Lcom/android/internal/jank/FrameTracker$JankInfo;
    .registers 5
    .param p1, "frameVsyncId"    # J

    .line 485
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mJankInfos:Landroid/util/SparseArray;

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/jank/FrameTracker$JankInfo;

    return-object v0
.end method

.method private blacklist finish()V
    .registers 2

    .line 572
    const-string v0, "FrameTracker#finish"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 573
    invoke-direct {p0}, Lcom/android/internal/jank/FrameTracker;->finishTraced()V

    .line 574
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 575
    return-void
.end method

.method private blacklist finishTraced()V
    .registers 29

    .line 579
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/jank/FrameTracker;->mMetricsFinalized:Z

    if-nez v1, :cond_2a5

    iget-boolean v1, v0, Lcom/android/internal/jank/FrameTracker;->mCancelled:Z

    if-eqz v1, :cond_c

    goto/16 :goto_2a5

    .line 580
    :cond_c
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/jank/FrameTracker;->mMetricsFinalized:Z

    .line 582
    iget-object v2, v0, Lcom/android/internal/jank/FrameTracker;->mHandler:Landroid/os/Handler;

    iget-object v3, v0, Lcom/android/internal/jank/FrameTracker;->mWaitForFinishTimedOut:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 583
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/internal/jank/FrameTracker;->mWaitForFinishTimedOut:Ljava/lang/Runnable;

    .line 584
    iget-object v2, v0, Lcom/android/internal/jank/FrameTracker;->mJankInfos:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    int-to-long v2, v2

    const-string v4, "FT#finish"

    invoke-direct {v0, v4, v2, v3}, Lcom/android/internal/jank/FrameTracker;->markEvent(Ljava/lang/String;J)V

    .line 587
    invoke-virtual {v0}, Lcom/android/internal/jank/FrameTracker;->removeObservers()V

    .line 589
    iget-object v2, v0, Lcom/android/internal/jank/FrameTracker;->mConfig:Lcom/android/internal/jank/InteractionJankMonitor$Configuration;

    invoke-virtual {v2}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->getSessionName()Ljava/lang/String;

    move-result-object v2

    .line 591
    .local v2, "name":Ljava/lang/String;
    const/4 v3, 0x0

    .line 592
    .local v3, "totalFramesCount":I
    const-wide/16 v4, 0x0

    .line 593
    .local v4, "maxFrameTimeNanos":J
    const/4 v6, 0x0

    .line 594
    .local v6, "missedFramesCount":I
    const/4 v7, 0x0

    .line 595
    .local v7, "missedAppFramesCount":I
    const/4 v8, 0x0

    .line 596
    .local v8, "missedSfFramesCount":I
    const/4 v9, 0x0

    .line 597
    .local v9, "maxSuccessiveMissedFramesCount":I
    const/4 v10, 0x0

    .line 598
    .local v10, "successiveMissedFramesCount":I
    const/4 v11, 0x0

    .line 600
    .local v11, "refreshRate":I
    const/4 v12, 0x0

    move-wide v13, v4

    move v4, v6

    move v5, v7

    move v6, v8

    move v7, v10

    .end local v8    # "missedSfFramesCount":I
    .end local v10    # "successiveMissedFramesCount":I
    .local v4, "missedFramesCount":I
    .local v5, "missedAppFramesCount":I
    .local v6, "missedSfFramesCount":I
    .local v7, "successiveMissedFramesCount":I
    .local v12, "i":I
    .local v13, "maxFrameTimeNanos":J
    :goto_3d
    iget-object v8, v0, Lcom/android/internal/jank/FrameTracker;->mJankInfos:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v12, v8, :cond_1b4

    .line 601
    iget-object v8, v0, Lcom/android/internal/jank/FrameTracker;->mJankInfos:Landroid/util/SparseArray;

    invoke-virtual {v8, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/jank/FrameTracker$JankInfo;

    .line 602
    .local v8, "info":Lcom/android/internal/jank/FrameTracker$JankInfo;
    iget-boolean v10, v0, Lcom/android/internal/jank/FrameTracker;->mSurfaceOnly:Z

    if-nez v10, :cond_57

    iget-boolean v10, v8, Lcom/android/internal/jank/FrameTracker$JankInfo;->isFirstFrame:Z

    if-eqz v10, :cond_57

    move v10, v1

    goto :goto_58

    :cond_57
    const/4 v10, 0x0

    .line 603
    .local v10, "isFirstDrawn":Z
    :goto_58
    if-eqz v10, :cond_65

    invoke-static {}, Lcom/android/internal/jank/Flags;->ignoreHwuiIsFirstFrame()Z

    move-result v15

    if-nez v15, :cond_65

    .line 604
    move/from16 v16, v1

    move-object v1, v2

    goto/16 :goto_1ad

    .line 606
    :cond_65
    move v15, v1

    move-object/from16 v21, v2

    .end local v2    # "name":Ljava/lang/String;
    .local v21, "name":Ljava/lang/String;
    iget-wide v1, v8, Lcom/android/internal/jank/FrameTracker$JankInfo;->frameVsyncId:J

    move-wide/from16 v16, v1

    iget-wide v1, v0, Lcom/android/internal/jank/FrameTracker;->mEndVsyncId:J

    cmp-long v1, v16, v1

    if-lez v1, :cond_76

    .line 607
    move-object/from16 v1, v21

    goto/16 :goto_1b5

    .line 609
    :cond_76
    iget-boolean v1, v8, Lcom/android/internal/jank/FrameTracker$JankInfo;->surfaceControlCallbackFired:Z

    const-string v2, ", CUJ="

    move/from16 v16, v15

    const-string v15, "FrameTracker"

    if-eqz v1, :cond_146

    .line 610
    add-int/lit8 v3, v3, 0x1

    .line 611
    const/4 v1, 0x0

    .line 612
    .local v1, "missedFrame":Z
    move/from16 v17, v1

    .end local v1    # "missedFrame":Z
    .local v17, "missedFrame":Z
    iget v1, v8, Lcom/android/internal/jank/FrameTracker$JankInfo;->jankType:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_b1

    .line 613
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v18, v3

    .end local v3    # "totalFramesCount":I
    .local v18, "totalFramesCount":I
    const-string v3, "Missed App frame:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v3, v21

    .end local v21    # "name":Ljava/lang/String;
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    add-int/lit8 v5, v5, 0x1

    .line 615
    const/4 v1, 0x1

    .end local v17    # "missedFrame":Z
    .restart local v1    # "missedFrame":Z
    goto :goto_b7

    .line 612
    .end local v1    # "missedFrame":Z
    .end local v18    # "totalFramesCount":I
    .local v3, "totalFramesCount":I
    .restart local v17    # "missedFrame":Z
    .restart local v21    # "name":Ljava/lang/String;
    :cond_b1
    move/from16 v18, v3

    move-object/from16 v3, v21

    .end local v21    # "name":Ljava/lang/String;
    .local v3, "name":Ljava/lang/String;
    .restart local v18    # "totalFramesCount":I
    move/from16 v1, v17

    .line 617
    .end local v17    # "missedFrame":Z
    .restart local v1    # "missedFrame":Z
    :goto_b7
    move/from16 v17, v1

    .end local v1    # "missedFrame":Z
    .restart local v17    # "missedFrame":Z
    iget v1, v8, Lcom/android/internal/jank/FrameTracker$JankInfo;->jankType:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_e3

    .line 618
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v19, v5

    .end local v5    # "missedAppFramesCount":I
    .local v19, "missedAppFramesCount":I
    const-string v5, "Missed SF frame:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    add-int/lit8 v6, v6, 0x1

    .line 620
    const/4 v1, 0x1

    .end local v17    # "missedFrame":Z
    .restart local v1    # "missedFrame":Z
    goto :goto_e7

    .line 617
    .end local v1    # "missedFrame":Z
    .end local v19    # "missedAppFramesCount":I
    .restart local v5    # "missedAppFramesCount":I
    .restart local v17    # "missedFrame":Z
    :cond_e3
    move/from16 v19, v5

    .end local v5    # "missedAppFramesCount":I
    .restart local v19    # "missedAppFramesCount":I
    move/from16 v1, v17

    .line 622
    .end local v17    # "missedFrame":Z
    .restart local v1    # "missedFrame":Z
    :goto_e7
    if-eqz v1, :cond_ee

    .line 623
    add-int/lit8 v4, v4, 0x1

    .line 624
    add-int/lit8 v7, v7, 0x1

    goto :goto_f4

    .line 626
    :cond_ee
    invoke-static {v9, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 628
    .end local v9    # "maxSuccessiveMissedFramesCount":I
    .local v5, "maxSuccessiveMissedFramesCount":I
    const/4 v7, 0x0

    move v9, v5

    .line 630
    .end local v5    # "maxSuccessiveMissedFramesCount":I
    .restart local v9    # "maxSuccessiveMissedFramesCount":I
    :goto_f4
    iget v5, v8, Lcom/android/internal/jank/FrameTracker$JankInfo;->refreshRate:I

    if-eqz v5, :cond_104

    iget v5, v8, Lcom/android/internal/jank/FrameTracker$JankInfo;->refreshRate:I

    if-eq v5, v11, :cond_104

    .line 631
    if-nez v11, :cond_101

    .line 632
    iget v5, v8, Lcom/android/internal/jank/FrameTracker$JankInfo;->refreshRate:I

    goto :goto_103

    :cond_101
    move/from16 v5, v16

    :goto_103
    move v11, v5

    .line 636
    :cond_104
    iget-object v5, v0, Lcom/android/internal/jank/FrameTracker;->mObserver:Landroid/graphics/HardwareRendererObserver;

    if-eqz v5, :cond_138

    iget-boolean v5, v8, Lcom/android/internal/jank/FrameTracker$JankInfo;->hwuiCallbackFired:Z

    if-nez v5, :cond_138

    .line 637
    const-string v5, "FT#MissedHWUICallback"

    move/from16 v17, v6

    move/from16 v20, v7

    .end local v6    # "missedSfFramesCount":I
    .end local v7    # "successiveMissedFramesCount":I
    .local v17, "missedSfFramesCount":I
    .local v20, "successiveMissedFramesCount":I
    iget-wide v6, v8, Lcom/android/internal/jank/FrameTracker$JankInfo;->frameVsyncId:J

    invoke-direct {v0, v5, v6, v7}, Lcom/android/internal/jank/FrameTracker;->markEvent(Ljava/lang/String;J)V

    .line 638
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Missing HWUI jank callback for vsyncId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v8, Lcom/android/internal/jank/FrameTracker$JankInfo;->frameVsyncId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v15, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13c

    .line 636
    .end local v17    # "missedSfFramesCount":I
    .end local v20    # "successiveMissedFramesCount":I
    .restart local v6    # "missedSfFramesCount":I
    .restart local v7    # "successiveMissedFramesCount":I
    :cond_138
    move/from16 v17, v6

    move/from16 v20, v7

    .line 642
    .end local v1    # "missedFrame":Z
    .end local v6    # "missedSfFramesCount":I
    .end local v7    # "successiveMissedFramesCount":I
    .restart local v17    # "missedSfFramesCount":I
    .restart local v20    # "successiveMissedFramesCount":I
    :goto_13c
    move-object v1, v3

    move/from16 v6, v17

    move/from16 v3, v18

    move/from16 v5, v19

    move/from16 v7, v20

    goto :goto_148

    .line 609
    .end local v17    # "missedSfFramesCount":I
    .end local v18    # "totalFramesCount":I
    .end local v19    # "missedAppFramesCount":I
    .end local v20    # "successiveMissedFramesCount":I
    .local v3, "totalFramesCount":I
    .local v5, "missedAppFramesCount":I
    .restart local v6    # "missedSfFramesCount":I
    .restart local v7    # "successiveMissedFramesCount":I
    .restart local v21    # "name":Ljava/lang/String;
    :cond_146
    move-object/from16 v1, v21

    .line 642
    .end local v21    # "name":Ljava/lang/String;
    .local v1, "name":Ljava/lang/String;
    :goto_148
    move/from16 v17, v3

    .end local v3    # "totalFramesCount":I
    .local v17, "totalFramesCount":I
    iget-boolean v3, v0, Lcom/android/internal/jank/FrameTracker;->mSurfaceOnly:Z

    if-nez v3, :cond_191

    iget-boolean v3, v8, Lcom/android/internal/jank/FrameTracker$JankInfo;->hwuiCallbackFired:Z

    if-eqz v3, :cond_191

    .line 643
    move/from16 v18, v4

    .end local v4    # "missedFramesCount":I
    .local v18, "missedFramesCount":I
    iget-wide v3, v8, Lcom/android/internal/jank/FrameTracker$JankInfo;->totalDurationNanos:J

    invoke-static {v3, v4, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 644
    .end local v13    # "maxFrameTimeNanos":J
    .local v3, "maxFrameTimeNanos":J
    iget-boolean v13, v8, Lcom/android/internal/jank/FrameTracker$JankInfo;->surfaceControlCallbackFired:Z

    if-nez v13, :cond_188

    .line 645
    const-string v13, "FT#MissedSFCallback"

    move-wide/from16 v19, v3

    .end local v3    # "maxFrameTimeNanos":J
    .local v19, "maxFrameTimeNanos":J
    iget-wide v3, v8, Lcom/android/internal/jank/FrameTracker$JankInfo;->frameVsyncId:J

    invoke-direct {v0, v13, v3, v4}, Lcom/android/internal/jank/FrameTracker;->markEvent(Ljava/lang/String;J)V

    .line 646
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Missing SF jank callback for vsyncId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v13, v8, Lcom/android/internal/jank/FrameTracker$JankInfo;->frameVsyncId:J

    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18a

    .line 644
    .end local v19    # "maxFrameTimeNanos":J
    .restart local v3    # "maxFrameTimeNanos":J
    :cond_188
    move-wide/from16 v19, v3

    .line 600
    .end local v3    # "maxFrameTimeNanos":J
    .end local v8    # "info":Lcom/android/internal/jank/FrameTracker$JankInfo;
    .end local v10    # "isFirstDrawn":Z
    .restart local v19    # "maxFrameTimeNanos":J
    :goto_18a
    move/from16 v3, v17

    move/from16 v4, v18

    move-wide/from16 v13, v19

    goto :goto_1ad

    .line 642
    .end local v18    # "missedFramesCount":I
    .end local v19    # "maxFrameTimeNanos":J
    .restart local v4    # "missedFramesCount":I
    .restart local v8    # "info":Lcom/android/internal/jank/FrameTracker$JankInfo;
    .restart local v10    # "isFirstDrawn":Z
    .restart local v13    # "maxFrameTimeNanos":J
    :cond_191
    move/from16 v18, v4

    .line 649
    .end local v4    # "missedFramesCount":I
    .restart local v18    # "missedFramesCount":I
    invoke-static {}, Lcom/android/internal/jank/Flags;->useSfFrameDuration()Z

    move-result v2

    if-eqz v2, :cond_1a9

    iget-boolean v2, v8, Lcom/android/internal/jank/FrameTracker$JankInfo;->surfaceControlCallbackFired:Z

    if-eqz v2, :cond_1a9

    .line 650
    iget-wide v2, v8, Lcom/android/internal/jank/FrameTracker$JankInfo;->totalDurationNanos:J

    invoke-static {v2, v3, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    move-wide v13, v2

    move/from16 v3, v17

    move/from16 v4, v18

    .end local v13    # "maxFrameTimeNanos":J
    .local v2, "maxFrameTimeNanos":J
    goto :goto_1ad

    .line 600
    .end local v2    # "maxFrameTimeNanos":J
    .end local v8    # "info":Lcom/android/internal/jank/FrameTracker$JankInfo;
    .end local v10    # "isFirstDrawn":Z
    .restart local v13    # "maxFrameTimeNanos":J
    :cond_1a9
    move/from16 v3, v17

    move/from16 v4, v18

    .end local v17    # "totalFramesCount":I
    .end local v18    # "missedFramesCount":I
    .local v3, "totalFramesCount":I
    .restart local v4    # "missedFramesCount":I
    :goto_1ad
    add-int/lit8 v12, v12, 0x1

    move-object v2, v1

    move/from16 v1, v16

    goto/16 :goto_3d

    .end local v1    # "name":Ljava/lang/String;
    .local v2, "name":Ljava/lang/String;
    :cond_1b4
    move-object v1, v2

    .line 653
    .end local v2    # "name":Ljava/lang/String;
    .end local v12    # "i":I
    .restart local v1    # "name":Ljava/lang/String;
    :goto_1b5
    invoke-static {v9, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 657
    .end local v9    # "maxSuccessiveMissedFramesCount":I
    .local v2, "maxSuccessiveMissedFramesCount":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "#missedFrames"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-wide/16 v9, 0x1000

    invoke-static {v9, v10, v8, v4}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 658
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v12, "#missedAppFrames"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v10, v8, v5}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 659
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v12, "#missedSfFrames"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v10, v8, v6}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 660
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v12, "#totalFrames"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v10, v8, v3}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 661
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v12, "#maxFrameTimeMillis"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-wide/32 v15, 0xf4240

    move/from16 v17, v11

    .end local v11    # "refreshRate":I
    .local v17, "refreshRate":I
    div-long v11, v13, v15

    long-to-int v11, v11

    invoke-static {v9, v10, v8, v11}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 663
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, "#maxSuccessiveMissedFrames"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v10, v8, v2}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 667
    iget-object v8, v0, Lcom/android/internal/jank/FrameTracker;->mListener:Lcom/android/internal/jank/FrameTracker$FrameTrackerListener;

    if-eqz v8, :cond_259

    long-to-int v8, v13

    .line 668
    invoke-direct {v0, v4, v8}, Lcom/android/internal/jank/FrameTracker;->shouldTriggerPerfetto(II)Z

    move-result v8

    if-eqz v8, :cond_259

    .line 669
    iget-object v8, v0, Lcom/android/internal/jank/FrameTracker;->mListener:Lcom/android/internal/jank/FrameTracker$FrameTrackerListener;

    iget-object v9, v0, Lcom/android/internal/jank/FrameTracker;->mConfig:Lcom/android/internal/jank/InteractionJankMonitor$Configuration;

    invoke-interface {v8, v9}, Lcom/android/internal/jank/FrameTracker$FrameTrackerListener;->triggerPerfetto(Lcom/android/internal/jank/InteractionJankMonitor$Configuration;)V

    .line 671
    :cond_259
    iget-object v8, v0, Lcom/android/internal/jank/FrameTracker;->mConfig:Lcom/android/internal/jank/InteractionJankMonitor$Configuration;

    invoke-virtual {v8}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->logToStatsd()Z

    move-result v8

    if-eqz v8, :cond_29c

    .line 672
    iget-object v8, v0, Lcom/android/internal/jank/FrameTracker;->mStatsLog:Lcom/android/internal/jank/FrameTracker$StatsLogWrapper;

    iget v9, v0, Lcom/android/internal/jank/FrameTracker;->mDisplayId:I

    iget-object v10, v0, Lcom/android/internal/jank/FrameTracker;->mConfig:Lcom/android/internal/jank/InteractionJankMonitor$Configuration;

    .line 676
    invoke-virtual {v10}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->getStatsdInteractionType()I

    move-result v10

    move-object v12, v8

    move v11, v9

    move v8, v10

    int-to-long v9, v3

    move/from16 v16, v11

    move-object v15, v12

    int-to-long v11, v4

    move-object/from16 v21, v1

    .end local v1    # "name":Ljava/lang/String;
    .restart local v21    # "name":Ljava/lang/String;
    int-to-long v0, v6

    move-wide/from16 v18, v0

    int-to-long v0, v5

    move-wide/from16 v22, v0

    int-to-long v0, v2

    .line 672
    move/from16 v20, v5

    .end local v5    # "missedAppFramesCount":I
    .local v20, "missedAppFramesCount":I
    const/16 v5, 0x131

    move-wide/from16 v24, v0

    move v0, v4

    move-object v4, v15

    move/from16 v1, v20

    move-wide/from16 v26, v22

    move/from16 v22, v6

    move/from16 v23, v7

    move/from16 v6, v16

    move/from16 v7, v17

    move-wide/from16 v15, v18

    move-wide/from16 v17, v26

    move-wide/from16 v19, v24

    .end local v4    # "missedFramesCount":I
    .end local v6    # "missedSfFramesCount":I
    .end local v17    # "refreshRate":I
    .end local v20    # "missedAppFramesCount":I
    .local v0, "missedFramesCount":I
    .local v1, "missedAppFramesCount":I
    .local v7, "refreshRate":I
    .local v22, "missedSfFramesCount":I
    .local v23, "successiveMissedFramesCount":I
    invoke-virtual/range {v4 .. v20}, Lcom/android/internal/jank/FrameTracker$StatsLogWrapper;->write(IIIIJJJJJJ)V

    move/from16 v17, v7

    .end local v7    # "refreshRate":I
    .restart local v17    # "refreshRate":I
    goto :goto_2a4

    .line 671
    .end local v0    # "missedFramesCount":I
    .end local v21    # "name":Ljava/lang/String;
    .end local v22    # "missedSfFramesCount":I
    .end local v23    # "successiveMissedFramesCount":I
    .local v1, "name":Ljava/lang/String;
    .restart local v4    # "missedFramesCount":I
    .restart local v5    # "missedAppFramesCount":I
    .restart local v6    # "missedSfFramesCount":I
    .local v7, "successiveMissedFramesCount":I
    :cond_29c
    move-object/from16 v21, v1

    move v0, v4

    move v1, v5

    move/from16 v22, v6

    move/from16 v23, v7

    .line 684
    .end local v4    # "missedFramesCount":I
    .end local v5    # "missedAppFramesCount":I
    .end local v6    # "missedSfFramesCount":I
    .end local v7    # "successiveMissedFramesCount":I
    .restart local v0    # "missedFramesCount":I
    .local v1, "missedAppFramesCount":I
    .restart local v21    # "name":Ljava/lang/String;
    .restart local v22    # "missedSfFramesCount":I
    .restart local v23    # "successiveMissedFramesCount":I
    :goto_2a4
    return-void

    .line 579
    .end local v0    # "missedFramesCount":I
    .end local v1    # "missedAppFramesCount":I
    .end local v2    # "maxSuccessiveMissedFramesCount":I
    .end local v3    # "totalFramesCount":I
    .end local v13    # "maxFrameTimeNanos":J
    .end local v17    # "refreshRate":I
    .end local v21    # "name":Ljava/lang/String;
    .end local v22    # "missedSfFramesCount":I
    .end local v23    # "successiveMissedFramesCount":I
    :cond_2a5
    :goto_2a5
    return-void
.end method

.method private blacklist hasReceivedCallbacksAfterEnd()Z
    .registers 10

    .line 532
    iget-wide v0, p0, Lcom/android/internal/jank/FrameTracker;->mEndVsyncId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 533
    return v1

    .line 535
    :cond_a
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mJankInfos:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_15

    const/4 v0, 0x0

    goto :goto_24

    :cond_15
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mJankInfos:Landroid/util/SparseArray;

    iget-object v3, p0, Lcom/android/internal/jank/FrameTracker;->mJankInfos:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/jank/FrameTracker$JankInfo;

    .line 536
    .local v0, "last":Lcom/android/internal/jank/FrameTracker$JankInfo;
    :goto_24
    if-nez v0, :cond_27

    .line 537
    return v1

    .line 539
    :cond_27
    iget-wide v3, v0, Lcom/android/internal/jank/FrameTracker$JankInfo;->frameVsyncId:J

    iget-wide v5, p0, Lcom/android/internal/jank/FrameTracker;->mEndVsyncId:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_30

    .line 540
    return v1

    .line 542
    :cond_30
    iget-object v3, p0, Lcom/android/internal/jank/FrameTracker;->mJankInfos:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    sub-int/2addr v3, v2

    .local v3, "i":I
    :goto_37
    if-ltz v3, :cond_53

    .line 543
    iget-object v4, p0, Lcom/android/internal/jank/FrameTracker;->mJankInfos:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/jank/FrameTracker$JankInfo;

    .line 544
    .local v4, "info":Lcom/android/internal/jank/FrameTracker$JankInfo;
    iget-wide v5, v4, Lcom/android/internal/jank/FrameTracker$JankInfo;->frameVsyncId:J

    iget-wide v7, p0, Lcom/android/internal/jank/FrameTracker;->mEndVsyncId:J

    cmp-long v5, v5, v7

    if-ltz v5, :cond_50

    .line 545
    invoke-direct {p0, v4}, Lcom/android/internal/jank/FrameTracker;->callbacksReceived(Lcom/android/internal/jank/FrameTracker$JankInfo;)Z

    move-result v5

    if-eqz v5, :cond_50

    .line 546
    return v2

    .line 542
    .end local v4    # "info":Lcom/android/internal/jank/FrameTracker$JankInfo;
    :cond_50
    add-int/lit8 v3, v3, -0x1

    goto :goto_37

    .line 550
    .end local v3    # "i":I
    :cond_53
    return v1
.end method

.method private blacklist isInRange(J)Z
    .registers 5
    .param p1, "vsyncId"    # J

    .line 492
    iget-wide v0, p0, Lcom/android/internal/jank/FrameTracker;->mBeginVsyncId:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private synthetic blacklist lambda$onFrameMetricsAvailable$1()V
    .registers 10

    .line 499
    :try_start_0
    const-string v0, "FrameTracker#onFrameMetricsAvailable"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 500
    iget-boolean v0, p0, Lcom/android/internal/jank/FrameTracker;->mCancelled:Z

    if-nez v0, :cond_56

    iget-boolean v0, p0, Lcom/android/internal/jank/FrameTracker;->mMetricsFinalized:Z

    if-eqz v0, :cond_e

    goto :goto_56

    .line 507
    :cond_e
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mMetricsWrapper:Lcom/android/internal/jank/FrameTracker$FrameMetricsWrapper;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/internal/jank/FrameTracker$FrameMetricsWrapper;->getMetric(I)J

    move-result-wide v0

    .line 508
    .local v0, "totalDurationNanos":J
    iget-object v2, p0, Lcom/android/internal/jank/FrameTracker;->mMetricsWrapper:Lcom/android/internal/jank/FrameTracker$FrameMetricsWrapper;

    .line 509
    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Lcom/android/internal/jank/FrameTracker$FrameMetricsWrapper;->getMetric(I)J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long v2, v2, v4

    const/4 v3, 0x1

    if-nez v2, :cond_27

    move v2, v3

    goto :goto_28

    :cond_27
    const/4 v2, 0x0

    .line 510
    .local v2, "isFirstFrame":Z
    :goto_28
    iget-object v4, p0, Lcom/android/internal/jank/FrameTracker;->mMetricsWrapper:Lcom/android/internal/jank/FrameTracker$FrameMetricsWrapper;

    .line 511
    invoke-virtual {v4}, Lcom/android/internal/jank/FrameTracker$FrameMetricsWrapper;->getTiming()[J

    move-result-object v4

    aget-wide v3, v4, v3

    .line 513
    .local v3, "frameVsyncId":J
    invoke-direct {p0, v3, v4}, Lcom/android/internal/jank/FrameTracker;->isInRange(J)Z

    move-result v5
    :try_end_34
    .catchall {:try_start_0 .. :try_end_34} :catchall_5a

    if-nez v5, :cond_3a

    .line 525
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 514
    return-void

    .line 516
    :cond_3a
    :try_start_3a
    invoke-direct {p0, v3, v4}, Lcom/android/internal/jank/FrameTracker;->findJankInfo(J)Lcom/android/internal/jank/FrameTracker$JankInfo;

    move-result-object v5

    .line 517
    .local v5, "info":Lcom/android/internal/jank/FrameTracker$JankInfo;
    if-eqz v5, :cond_44

    .line 518
    invoke-static {v5, v0, v1, v2}, Lcom/android/internal/jank/FrameTracker$JankInfo;->-$$Nest$mupdate(Lcom/android/internal/jank/FrameTracker$JankInfo;JZ)Lcom/android/internal/jank/FrameTracker$JankInfo;

    goto :goto_4e

    .line 520
    :cond_44
    iget-object v6, p0, Lcom/android/internal/jank/FrameTracker;->mJankInfos:Landroid/util/SparseArray;

    long-to-int v7, v3

    invoke-static {v3, v4, v0, v1, v2}, Lcom/android/internal/jank/FrameTracker$JankInfo;->createFromHwuiCallback(JJZ)Lcom/android/internal/jank/FrameTracker$JankInfo;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 523
    :goto_4e
    invoke-direct {p0}, Lcom/android/internal/jank/FrameTracker;->processJankInfos()V
    :try_end_51
    .catchall {:try_start_3a .. :try_end_51} :catchall_5a

    .line 525
    .end local v0    # "totalDurationNanos":J
    .end local v2    # "isFirstFrame":Z
    .end local v3    # "frameVsyncId":J
    .end local v5    # "info":Lcom/android/internal/jank/FrameTracker$JankInfo;
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 526
    nop

    .line 527
    return-void

    .line 525
    :cond_56
    :goto_56
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 501
    return-void

    .line 525
    :catchall_5a
    move-exception v0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 526
    throw v0
.end method

.method private synthetic blacklist lambda$onJankDataAvailable$0(Ljava/util/List;)V
    .registers 8
    .param p1, "jankData"    # Ljava/util/List;

    .line 451
    :try_start_0
    const-string v0, "FrameTracker#onJankDataAvailable"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 452
    iget-boolean v0, p0, Lcom/android/internal/jank/FrameTracker;->mCancelled:Z

    if-nez v0, :cond_4e

    iget-boolean v0, p0, Lcom/android/internal/jank/FrameTracker;->mMetricsFinalized:Z

    if-eqz v0, :cond_e

    goto :goto_4e

    .line 456
    :cond_e
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_46

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceControl$JankData;

    .line 457
    .local v1, "jankStat":Landroid/view/SurfaceControl$JankData;
    invoke-virtual {v1}, Landroid/view/SurfaceControl$JankData;->getVsyncId()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/internal/jank/FrameTracker;->isInRange(J)Z

    move-result v2

    if-nez v2, :cond_29

    .line 458
    goto :goto_12

    .line 460
    :cond_29
    invoke-virtual {v1}, Landroid/view/SurfaceControl$JankData;->getVsyncId()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/internal/jank/FrameTracker;->findJankInfo(J)Lcom/android/internal/jank/FrameTracker$JankInfo;

    move-result-object v2

    .line 461
    .local v2, "info":Lcom/android/internal/jank/FrameTracker$JankInfo;
    if-eqz v2, :cond_37

    .line 462
    invoke-static {v2, v1}, Lcom/android/internal/jank/FrameTracker$JankInfo;->-$$Nest$mupdate(Lcom/android/internal/jank/FrameTracker$JankInfo;Landroid/view/SurfaceControl$JankData;)Lcom/android/internal/jank/FrameTracker$JankInfo;

    goto :goto_45

    .line 464
    :cond_37
    iget-object v3, p0, Lcom/android/internal/jank/FrameTracker;->mJankInfos:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/view/SurfaceControl$JankData;->getVsyncId()J

    move-result-wide v4

    long-to-int v4, v4

    .line 465
    invoke-static {v1}, Lcom/android/internal/jank/FrameTracker$JankInfo;->createFromSurfaceControlCallback(Landroid/view/SurfaceControl$JankData;)Lcom/android/internal/jank/FrameTracker$JankInfo;

    move-result-object v5

    .line 464
    invoke-virtual {v3, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 467
    .end local v1    # "jankStat":Landroid/view/SurfaceControl$JankData;
    .end local v2    # "info":Lcom/android/internal/jank/FrameTracker$JankInfo;
    :goto_45
    goto :goto_12

    .line 468
    :cond_46
    invoke-direct {p0}, Lcom/android/internal/jank/FrameTracker;->processJankInfos()V
    :try_end_49
    .catchall {:try_start_0 .. :try_end_49} :catchall_52

    .line 470
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 471
    nop

    .line 472
    return-void

    .line 470
    :cond_4e
    :goto_4e
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 453
    return-void

    .line 470
    :catchall_52
    move-exception v0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 471
    throw v0
.end method

.method private blacklist markCujUiThread()V
    .registers 5

    .line 436
    const-wide/16 v0, 0x1000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 438
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/internal/jank/FrameTracker;->mConfig:Lcom/android/internal/jank/InteractionJankMonitor$Configuration;

    invoke-virtual {v3}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->getSessionName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#UIThread"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    .line 440
    :cond_24
    return-void
.end method

.method private blacklist markEvent(Ljava/lang/String;J)V
    .registers 9
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "eventValue"    # J

    .line 424
    const-wide/16 v0, 0x1000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 425
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {p1, v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%s#%s"

    invoke-static {v3, v2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 426
    .local v2, "event":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x7f

    if-gt v3, v4, :cond_28

    .line 431
    iget-object v3, p0, Lcom/android/internal/jank/FrameTracker;->mConfig:Lcom/android/internal/jank/InteractionJankMonitor$Configuration;

    invoke-virtual {v3}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->getSessionName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3, v2}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_3c

    .line 427
    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 429
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 427
    const-string v3, "The length of the trace event description <%s> exceeds %d"

    invoke-static {v3, v1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 433
    .end local v2    # "event":Ljava/lang/String;
    :cond_3c
    :goto_3c
    return-void
.end method

.method private blacklist notifyCujEvent(Ljava/lang/String;I)V
    .registers 4
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "reason"    # I

    .line 443
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mListener:Lcom/android/internal/jank/FrameTracker$FrameTrackerListener;

    if-nez v0, :cond_5

    return-void

    .line 444
    :cond_5
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mListener:Lcom/android/internal/jank/FrameTracker$FrameTrackerListener;

    invoke-interface {v0, p0, p1, p2}, Lcom/android/internal/jank/FrameTracker$FrameTrackerListener;->onCujEvents(Lcom/android/internal/jank/FrameTracker;Ljava/lang/String;I)V

    .line 445
    return-void
.end method

.method private blacklist processJankInfos()V
    .registers 2

    .line 555
    iget-boolean v0, p0, Lcom/android/internal/jank/FrameTracker;->mMetricsFinalized:Z

    if-eqz v0, :cond_5

    .line 556
    return-void

    .line 558
    :cond_5
    invoke-direct {p0}, Lcom/android/internal/jank/FrameTracker;->hasReceivedCallbacksAfterEnd()Z

    move-result v0

    if-nez v0, :cond_c

    .line 559
    return-void

    .line 561
    :cond_c
    invoke-direct {p0}, Lcom/android/internal/jank/FrameTracker;->finish()V

    .line 562
    return-void
.end method

.method private blacklist shouldTriggerPerfetto(II)Z
    .registers 8
    .param p1, "missedFramesCount"    # I
    .param p2, "maxFrameTimeNanos"    # I

    .line 687
    iget v0, p0, Lcom/android/internal/jank/FrameTracker;->mTraceThresholdMissedFrames:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_d

    iget v0, p0, Lcom/android/internal/jank/FrameTracker;->mTraceThresholdMissedFrames:I

    if-lt p1, v0, :cond_d

    move v0, v1

    goto :goto_e

    :cond_d
    move v0, v2

    .line 689
    .local v0, "overMissedFramesThreshold":Z
    :goto_e
    iget-boolean v4, p0, Lcom/android/internal/jank/FrameTracker;->mSurfaceOnly:Z

    if-nez v4, :cond_20

    iget v4, p0, Lcom/android/internal/jank/FrameTracker;->mTraceThresholdFrameTimeMillis:I

    if-eq v4, v3, :cond_20

    iget v3, p0, Lcom/android/internal/jank/FrameTracker;->mTraceThresholdFrameTimeMillis:I

    const v4, 0xf4240

    mul-int/2addr v3, v4

    if-lt p2, v3, :cond_20

    move v3, v1

    goto :goto_21

    :cond_20
    move v3, v2

    .line 691
    .local v3, "overFrameTimeThreshold":Z
    :goto_21
    if-nez v0, :cond_27

    if-eqz v3, :cond_26

    goto :goto_27

    :cond_26
    move v1, v2

    :cond_27
    :goto_27
    return v1
.end method


# virtual methods
.method public blacklist begin()V
    .registers 7

    .line 278
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mChoreographer:Lcom/android/internal/jank/FrameTracker$ChoreographerWrapper;

    invoke-virtual {v0}, Lcom/android/internal/jank/FrameTracker$ChoreographerWrapper;->getVsyncId()J

    move-result-wide v0

    .line 282
    .local v0, "currentVsync":J
    iget-wide v2, p0, Lcom/android/internal/jank/FrameTracker;->mBeginVsyncId:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_19

    .line 283
    iget-boolean v2, p0, Lcom/android/internal/jank/FrameTracker;->mDeferMonitoring:Z

    if-eqz v2, :cond_16

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    goto :goto_17

    :cond_16
    move-wide v2, v0

    :goto_17
    iput-wide v2, p0, Lcom/android/internal/jank/FrameTracker;->mBeginVsyncId:J

    .line 285
    :cond_19
    iget-object v2, p0, Lcom/android/internal/jank/FrameTracker;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v2, :cond_3a

    .line 286
    iget-boolean v2, p0, Lcom/android/internal/jank/FrameTracker;->mDeferMonitoring:Z

    if-eqz v2, :cond_37

    iget-wide v2, p0, Lcom/android/internal/jank/FrameTracker;->mBeginVsyncId:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_37

    .line 287
    const-string v2, "FT#deferMonitoring"

    const-wide/16 v3, 0x0

    invoke-direct {p0, v2, v3, v4}, Lcom/android/internal/jank/FrameTracker;->markEvent(Ljava/lang/String;J)V

    .line 290
    new-instance v2, Lcom/android/internal/jank/FrameTracker$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/android/internal/jank/FrameTracker$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/jank/FrameTracker;)V

    invoke-virtual {p0, v2}, Lcom/android/internal/jank/FrameTracker;->postTraceStartMarker(Ljava/lang/Runnable;)V

    goto :goto_3a

    .line 294
    :cond_37
    invoke-direct {p0}, Lcom/android/internal/jank/FrameTracker;->beginInternal()V

    .line 297
    :cond_3a
    :goto_3a
    return-void
.end method

.method public blacklist cancel(I)Z
    .registers 9
    .param p1, "reason"    # I

    .line 396
    const/16 v0, 0x11

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_d

    const/16 v0, 0x12

    if-ne p1, v0, :cond_b

    goto :goto_d

    :cond_b
    move v0, v1

    goto :goto_e

    :cond_d
    :goto_d
    move v0, v2

    .line 398
    .local v0, "cancelFromEnd":Z
    :goto_e
    iget-boolean v3, p0, Lcom/android/internal/jank/FrameTracker;->mCancelled:Z

    if-nez v3, :cond_40

    iget-wide v3, p0, Lcom/android/internal/jank/FrameTracker;->mEndVsyncId:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1d

    if-nez v0, :cond_1d

    goto :goto_40

    .line 399
    :cond_1d
    iput-boolean v2, p0, Lcom/android/internal/jank/FrameTracker;->mCancelled:Z

    .line 400
    const-string v1, "FT#cancel"

    int-to-long v3, p1

    invoke-direct {p0, v1, v3, v4}, Lcom/android/internal/jank/FrameTracker;->markEvent(Ljava/lang/String;J)V

    .line 402
    iget-boolean v1, p0, Lcom/android/internal/jank/FrameTracker;->mTracingStarted:Z

    if-eqz v1, :cond_37

    .line 403
    iget-object v1, p0, Lcom/android/internal/jank/FrameTracker;->mConfig:Lcom/android/internal/jank/InteractionJankMonitor$Configuration;

    .line 404
    invoke-virtual {v1}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->getSessionName()Ljava/lang/String;

    move-result-object v1

    iget-wide v3, p0, Lcom/android/internal/jank/FrameTracker;->mBeginVsyncId:J

    long-to-int v3, v3

    .line 403
    const-wide/16 v4, 0x1000

    invoke-static {v4, v5, v1, v3}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;I)V

    .line 408
    :cond_37
    invoke-virtual {p0}, Lcom/android/internal/jank/FrameTracker;->removeObservers()V

    .line 412
    sget-object v1, Lcom/android/internal/jank/InteractionJankMonitor;->ACTION_SESSION_CANCEL:Ljava/lang/String;

    invoke-direct {p0, v1, p1}, Lcom/android/internal/jank/FrameTracker;->notifyCujEvent(Ljava/lang/String;I)V

    .line 413
    return v2

    .line 398
    :cond_40
    :goto_40
    return v1
.end method

.method public blacklist end(I)Z
    .registers 8
    .param p1, "reason"    # I

    .line 330
    iget-boolean v0, p0, Lcom/android/internal/jank/FrameTracker;->mCancelled:Z

    if-nez v0, :cond_76

    iget-wide v0, p0, Lcom/android/internal/jank/FrameTracker;->mEndVsyncId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_d

    goto :goto_76

    .line 331
    :cond_d
    invoke-static {}, Landroid/animation/AnimationHandler;->getInstance()Landroid/animation/AnimationHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/jank/FrameTracker;->mChoreographer:Lcom/android/internal/jank/FrameTracker$ChoreographerWrapper;

    .line 332
    invoke-virtual {v1}, Lcom/android/internal/jank/FrameTracker$ChoreographerWrapper;->getVsyncId()J

    move-result-wide v4

    .line 331
    invoke-virtual {v0, v4, v5}, Landroid/animation/AnimationHandler;->getLastAnimationFrameVsyncId(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/jank/FrameTracker;->mEndVsyncId:J

    .line 336
    iget-wide v0, p0, Lcom/android/internal/jank/FrameTracker;->mBeginVsyncId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2a

    .line 337
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/android/internal/jank/FrameTracker;->cancel(I)Z

    move-result v0

    return v0

    .line 338
    :cond_2a
    iget-wide v0, p0, Lcom/android/internal/jank/FrameTracker;->mEndVsyncId:J

    iget-wide v2, p0, Lcom/android/internal/jank/FrameTracker;->mBeginVsyncId:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_39

    .line 339
    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Lcom/android/internal/jank/FrameTracker;->cancel(I)Z

    move-result v0

    return v0

    .line 341
    :cond_39
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mConfig:Lcom/android/internal/jank/InteractionJankMonitor$Configuration;

    invoke-virtual {v0}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->getSessionName()Ljava/lang/String;

    move-result-object v0

    .line 342
    .local v0, "name":Ljava/lang/String;
    const-string v1, "FT#end"

    int-to-long v2, p1

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/jank/FrameTracker;->markEvent(Ljava/lang/String;J)V

    .line 343
    const-string v1, "FT#endVsync"

    iget-wide v2, p0, Lcom/android/internal/jank/FrameTracker;->mEndVsyncId:J

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/jank/FrameTracker;->markEvent(Ljava/lang/String;J)V

    .line 344
    iget-wide v1, p0, Lcom/android/internal/jank/FrameTracker;->mBeginVsyncId:J

    long-to-int v1, v1

    const-wide/16 v2, 0x1000

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;I)V

    .line 346
    iget-object v1, p0, Lcom/android/internal/jank/FrameTracker;->mJankDataListenerRegistration:Landroid/view/SurfaceControl$OnJankDataListenerRegistration;

    if-eqz v1, :cond_5f

    .line 347
    iget-object v1, p0, Lcom/android/internal/jank/FrameTracker;->mJankDataListenerRegistration:Landroid/view/SurfaceControl$OnJankDataListenerRegistration;

    iget-wide v2, p0, Lcom/android/internal/jank/FrameTracker;->mEndVsyncId:J

    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl$OnJankDataListenerRegistration;->removeAfter(J)V

    .line 354
    :cond_5f
    new-instance v1, Lcom/android/internal/jank/FrameTracker$2;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/jank/FrameTracker$2;-><init>(Lcom/android/internal/jank/FrameTracker;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/internal/jank/FrameTracker;->mWaitForFinishTimedOut:Ljava/lang/Runnable;

    .line 385
    iget-object v1, p0, Lcom/android/internal/jank/FrameTracker;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/jank/FrameTracker;->mWaitForFinishTimedOut:Ljava/lang/Runnable;

    const-wide/16 v3, 0x3c

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 386
    sget-object v1, Lcom/android/internal/jank/InteractionJankMonitor;->ACTION_SESSION_END:Ljava/lang/String;

    invoke-direct {p0, v1, p1}, Lcom/android/internal/jank/FrameTracker;->notifyCujEvent(Ljava/lang/String;I)V

    .line 387
    const/4 v1, 0x1

    return v1

    .line 330
    .end local v0    # "name":Ljava/lang/String;
    :cond_76
    :goto_76
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist onFrameMetricsAvailable(I)V
    .registers 3
    .param p1, "dropCountSinceLastInvocation"    # I

    .line 497
    new-instance v0, Lcom/android/internal/jank/FrameTracker$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/internal/jank/FrameTracker$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/jank/FrameTracker;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/jank/FrameTracker;->postCallback(Ljava/lang/Runnable;)V

    .line 528
    return-void
.end method

.method public whitelist onJankDataAvailable(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/SurfaceControl$JankData;",
            ">;)V"
        }
    .end annotation

    .line 449
    .local p1, "jankData":Ljava/util/List;, "Ljava/util/List<Landroid/view/SurfaceControl$JankData;>;"
    new-instance v0, Lcom/android/internal/jank/FrameTracker$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/jank/FrameTracker$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/jank/FrameTracker;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/jank/FrameTracker;->postCallback(Ljava/lang/Runnable;)V

    .line 473
    return-void
.end method

.method public blacklist postCallback(Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "callback"    # Ljava/lang/Runnable;

    .line 480
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 481
    return-void
.end method

.method public blacklist postTraceStartMarker(Ljava/lang/Runnable;)V
    .registers 5
    .param p1, "action"    # Ljava/lang/Runnable;

    .line 304
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mChoreographer:Lcom/android/internal/jank/FrameTracker$ChoreographerWrapper;

    invoke-static {v0}, Lcom/android/internal/jank/FrameTracker$ChoreographerWrapper;->-$$Nest$fgetmChoreographer(Lcom/android/internal/jank/FrameTracker$ChoreographerWrapper;)Landroid/view/Choreographer;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 305
    return-void
.end method

.method public blacklist removeObservers()V
    .registers 3

    .line 700
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mJankDataListenerRegistration:Landroid/view/SurfaceControl$OnJankDataListenerRegistration;

    if-eqz v0, :cond_c

    .line 701
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mJankDataListenerRegistration:Landroid/view/SurfaceControl$OnJankDataListenerRegistration;

    invoke-virtual {v0}, Landroid/view/SurfaceControl$OnJankDataListenerRegistration;->release()V

    .line 702
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mJankDataListenerRegistration:Landroid/view/SurfaceControl$OnJankDataListenerRegistration;

    .line 704
    :cond_c
    iget-boolean v0, p0, Lcom/android/internal/jank/FrameTracker;->mSurfaceOnly:Z

    if-nez v0, :cond_22

    .line 706
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mRendererWrapper:Lcom/android/internal/jank/FrameTracker$ThreadedRendererWrapper;

    iget-object v1, p0, Lcom/android/internal/jank/FrameTracker;->mObserver:Landroid/graphics/HardwareRendererObserver;

    invoke-virtual {v0, v1}, Lcom/android/internal/jank/FrameTracker$ThreadedRendererWrapper;->removeObserver(Landroid/graphics/HardwareRendererObserver;)V

    .line 707
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mSurfaceChangedCallback:Landroid/view/ViewRootImpl$SurfaceChangedCallback;

    if-eqz v0, :cond_22

    .line 708
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mViewRoot:Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;

    iget-object v1, p0, Lcom/android/internal/jank/FrameTracker;->mSurfaceChangedCallback:Landroid/view/ViewRootImpl$SurfaceChangedCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;->removeSurfaceChangedCallback(Landroid/view/ViewRootImpl$SurfaceChangedCallback;)V

    .line 711
    :cond_22
    return-void
.end method
