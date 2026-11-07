.class public Landroid/net/connectivity/org/chromium/base/jank_tracker/JankTrackerStateController;
.super Ljava/lang/Object;
.source "JankTrackerStateController.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "JankTracker"


# instance fields
.field protected final blacklist mFrameMetricsListener:Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsListener;

.field protected final blacklist mReportingScheduler:Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingScheduler;


# direct methods
.method public constructor blacklist <init>(Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsListener;Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingScheduler;)V
    .registers 3
    .param p1, "listener"    # Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsListener;
    .param p2, "scheduler"    # Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingScheduler;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankTrackerStateController;->mFrameMetricsListener:Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsListener;

    .line 25
    iput-object p2, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankTrackerStateController;->mReportingScheduler:Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingScheduler;

    .line 26
    return-void
.end method


# virtual methods
.method public blacklist destroy()V
    .registers 1

    .line 63
    return-void
.end method

.method public blacklist initialize()V
    .registers 1

    .line 61
    return-void
.end method

.method public blacklist startMetricCollection(Landroid/view/Window;)V
    .registers 4
    .param p1, "window"    # Landroid/view/Window;

    .line 37
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankTrackerStateController;->mFrameMetricsListener:Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsListener;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsListener;->setIsListenerRecording(Z)V

    .line 38
    if-eqz p1, :cond_13

    .line 39
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankTrackerStateController;->mFrameMetricsListener:Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsListener;

    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankTrackerStateController;->mReportingScheduler:Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingScheduler;

    .line 40
    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingScheduler;->getOrCreateHandler()Landroid/os/Handler;

    move-result-object v1

    .line 39
    invoke-virtual {p1, v0, v1}, Landroid/view/Window;->addOnFrameMetricsAvailableListener(Landroid/view/Window$OnFrameMetricsAvailableListener;Landroid/os/Handler;)V

    .line 42
    :cond_13
    return-void
.end method

.method public blacklist startPeriodicReporting()V
    .registers 2

    .line 29
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankTrackerStateController;->mReportingScheduler:Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingScheduler;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingScheduler;->startReportingPeriodicMetrics()V

    .line 30
    return-void
.end method

.method public blacklist stopMetricCollection(Landroid/view/Window;)V
    .registers 6
    .param p1, "window"    # Landroid/view/Window;

    .line 45
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankTrackerStateController;->mFrameMetricsListener:Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsListener;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsListener;->setIsListenerRecording(Z)V

    .line 46
    if-eqz p1, :cond_18

    .line 48
    :try_start_8
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankTrackerStateController;->mFrameMetricsListener:Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsListener;

    invoke-virtual {p1, v0}, Landroid/view/Window;->removeOnFrameMetricsAvailableListener(Landroid/view/Window$OnFrameMetricsAvailableListener;)V
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_d} :catch_e

    .line 56
    goto :goto_18

    .line 49
    :catch_e
    move-exception v0

    .line 51
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "Could not remove listener %s from window %s"

    iget-object v2, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankTrackerStateController;->mFrameMetricsListener:Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsListener;

    const-string v3, "JankTracker"

    invoke-static {v3, v1, v2, p1}, Landroid/net/connectivity/org/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 58
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_18
    :goto_18
    return-void
.end method

.method public blacklist stopPeriodicReporting()V
    .registers 2

    .line 33
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankTrackerStateController;->mReportingScheduler:Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingScheduler;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingScheduler;->stopReportingPeriodicMetrics()V

    .line 34
    return-void
.end method
