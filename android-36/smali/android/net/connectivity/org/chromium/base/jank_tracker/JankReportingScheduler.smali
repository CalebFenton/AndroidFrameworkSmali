.class public Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingScheduler;
.super Ljava/lang/Object;
.source "JankReportingScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingScheduler$LazyHolder;
    }
.end annotation


# static fields
.field private static final blacklist PERIODIC_METRIC_DELAY_MS:J = 0x1388L


# instance fields
.field private final blacklist mFrameMetricsStore:Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsStore;

.field private final blacklist mIsPeriodicReporterLooping:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final blacklist mPeriodicMetricReporter:Ljava/lang/Runnable;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmFrameMetricsStore(Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingScheduler;)Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsStore;
    .registers 1

    iget-object p0, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingScheduler;->mFrameMetricsStore:Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsStore;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsPeriodicReporterLooping(Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingScheduler;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    iget-object p0, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingScheduler;->mIsPeriodicReporterLooping:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPeriodicMetricReporter(Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingScheduler;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingScheduler;->mPeriodicMetricReporter:Ljava/lang/Runnable;

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsStore;)V
    .registers 4
    .param p1, "frameMetricsStore"    # Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsStore;

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingScheduler$2;

    invoke-direct {v0, p0}, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingScheduler$2;-><init>(Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingScheduler;)V

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingScheduler;->mPeriodicMetricReporter:Ljava/lang/Runnable;

    .line 60
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingScheduler;->mIsPeriodicReporterLooping:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 21
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingScheduler;->mFrameMetricsStore:Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsStore;

    .line 22
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingScheduler$LazyHolder;->-$$Nest$sfgetHANDLER()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingScheduler$1;

    invoke-direct {v1, p0}, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingScheduler$1;-><init>(Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingScheduler;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 29
    return-void
.end method


# virtual methods
.method public blacklist finishTrackingScenario(Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;)V
    .registers 4
    .param p1, "scenario"    # Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;

    .line 73
    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingScheduler;->finishTrackingScenario(Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;J)V

    .line 74
    return-void
.end method

.method public blacklist finishTrackingScenario(Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;J)V
    .registers 5
    .param p1, "scenario"    # Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;
    .param p2, "endScenarioTimeNs"    # J

    .line 77
    invoke-static {p2, p3}, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankEndScenarioTime;->endAt(J)Landroid/net/connectivity/org/chromium/base/jank_tracker/JankEndScenarioTime;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingScheduler;->finishTrackingScenario(Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;Landroid/net/connectivity/org/chromium/base/jank_tracker/JankEndScenarioTime;)V

    .line 78
    return-void
.end method

.method public blacklist finishTrackingScenario(Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;Landroid/net/connectivity/org/chromium/base/jank_tracker/JankEndScenarioTime;)V
    .registers 9
    .param p1, "scenario"    # Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;
    .param p2, "endScenarioTime"    # Landroid/net/connectivity/org/chromium/base/jank_tracker/JankEndScenarioTime;

    .line 83
    new-instance v0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingRunnable;

    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingScheduler;->mFrameMetricsStore:Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsStore;

    const/4 v3, 0x0

    invoke-static {}, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingScheduler$LazyHolder;->-$$Nest$sfgetHANDLER()Landroid/os/Handler;

    move-result-object v4

    move-object v2, p1

    move-object v5, p2

    .end local p1    # "scenario":Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;
    .end local p2    # "endScenarioTime":Landroid/net/connectivity/org/chromium/base/jank_tracker/JankEndScenarioTime;
    .local v2, "scenario":Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;
    .local v5, "endScenarioTime":Landroid/net/connectivity/org/chromium/base/jank_tracker/JankEndScenarioTime;
    invoke-direct/range {v0 .. v5}, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingRunnable;-><init>(Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsStore;Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;ZLandroid/os/Handler;Landroid/net/connectivity/org/chromium/base/jank_tracker/JankEndScenarioTime;)V

    .line 90
    .local v0, "runnable":Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingRunnable;
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingScheduler$LazyHolder;->-$$Nest$sfgetHANDLER()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 91
    return-void
.end method

.method public blacklist getOrCreateHandler()Landroid/os/Handler;
    .registers 2

    .line 94
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingScheduler$LazyHolder;->-$$Nest$sfgetHANDLER()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public blacklist startReportingPeriodicMetrics()V
    .registers 5

    .line 99
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingScheduler;->mIsPeriodicReporterLooping:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 100
    return-void

    .line 102
    :cond_a
    sget-object v0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;->PERIODIC_REPORTING:Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;

    invoke-virtual {p0, v0}, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingScheduler;->startTrackingScenario(Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;)V

    .line 103
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingScheduler$LazyHolder;->-$$Nest$sfgetHANDLER()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingScheduler;->mPeriodicMetricReporter:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 104
    return-void
.end method

.method public blacklist startTrackingScenario(Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;)V
    .registers 9
    .param p1, "scenario"    # Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;

    .line 63
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingScheduler$LazyHolder;->-$$Nest$sfgetHANDLER()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingRunnable;

    iget-object v2, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingScheduler;->mFrameMetricsStore:Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsStore;

    invoke-static {}, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingScheduler$LazyHolder;->-$$Nest$sfgetHANDLER()Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v4, 0x1

    move-object v3, p1

    .end local p1    # "scenario":Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;
    .local v3, "scenario":Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;
    invoke-direct/range {v1 .. v6}, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingRunnable;-><init>(Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsStore;Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;ZLandroid/os/Handler;Landroid/net/connectivity/org/chromium/base/jank_tracker/JankEndScenarioTime;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 70
    return-void
.end method

.method public blacklist stopReportingPeriodicMetrics()V
    .registers 3

    .line 108
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingScheduler;->mIsPeriodicReporterLooping:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_a

    .line 109
    return-void

    .line 112
    :cond_a
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingScheduler$LazyHolder;->-$$Nest$sfgetHANDLER()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingScheduler;->mPeriodicMetricReporter:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 114
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingScheduler$LazyHolder;->-$$Nest$sfgetHANDLER()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingScheduler;->mPeriodicMetricReporter:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 115
    return-void
.end method
