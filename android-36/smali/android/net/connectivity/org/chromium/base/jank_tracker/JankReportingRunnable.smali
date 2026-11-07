.class Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingRunnable;
.super Ljava/lang/Object;
.source "JankReportingRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingRunnable$FinalReportingRunnable;
    }
.end annotation


# instance fields
.field private final blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mIsStartingTracking:Z

.field private final blacklist mJankEndScenarioTime:Landroid/net/connectivity/org/chromium/base/jank_tracker/JankEndScenarioTime;

.field private final blacklist mMetricsStore:Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsStore;

.field private final blacklist mScenario:Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmJankEndScenarioTime(Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingRunnable;)Landroid/net/connectivity/org/chromium/base/jank_tracker/JankEndScenarioTime;
    .registers 1

    iget-object p0, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingRunnable;->mJankEndScenarioTime:Landroid/net/connectivity/org/chromium/base/jank_tracker/JankEndScenarioTime;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMetricsStore(Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingRunnable;)Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsStore;
    .registers 1

    iget-object p0, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingRunnable;->mMetricsStore:Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsStore;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmScenario(Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingRunnable;)Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;
    .registers 1

    iget-object p0, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingRunnable;->mScenario:Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;

    return-object p0
.end method

.method constructor blacklist <init>(Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsStore;Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;ZLandroid/os/Handler;Landroid/net/connectivity/org/chromium/base/jank_tracker/JankEndScenarioTime;)V
    .registers 6
    .param p1, "metricsStore"    # Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsStore;
    .param p2, "scenario"    # Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;
    .param p3, "isStartingTracking"    # Z
    .param p4, "handler"    # Landroid/os/Handler;
    .param p5, "endScenarioTime"    # Landroid/net/connectivity/org/chromium/base/jank_tracker/JankEndScenarioTime;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingRunnable;->mMetricsStore:Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsStore;

    .line 72
    iput-object p2, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingRunnable;->mScenario:Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;

    .line 73
    iput-boolean p3, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingRunnable;->mIsStartingTracking:Z

    .line 74
    iput-object p4, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingRunnable;->mHandler:Landroid/os/Handler;

    .line 75
    iput-object p5, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingRunnable;->mJankEndScenarioTime:Landroid/net/connectivity/org/chromium/base/jank_tracker/JankEndScenarioTime;

    .line 76
    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 8

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StartingScenario:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingRunnable;->mIsStartingTracking:Z

    .line 84
    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",Scenario:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingRunnable;->mScenario:Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;

    .line 86
    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;->type()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 81
    const-string v1, "StartingOrStoppingJankScenario"

    invoke-static {v1, v0}, Landroid/net/connectivity/org/chromium/base/TraceEvent;->scoped(Ljava/lang/String;Ljava/lang/String;)Landroid/net/connectivity/org/chromium/base/TraceEvent;

    move-result-object v0

    .line 87
    .local v0, "e":Landroid/net/connectivity/org/chromium/base/TraceEvent;
    :try_start_33
    iget-boolean v1, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingRunnable;->mIsStartingTracking:Z

    if-eqz v1, :cond_53

    .line 88
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingRunnable;->mMetricsStore:Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsStore;

    if-nez v1, :cond_46

    .line 89
    const-string v1, "StartTrackingScenario metrics store null"

    invoke-static {v1}, Landroid/net/connectivity/org/chromium/base/TraceEvent;->instant(Ljava/lang/String;)V
    :try_end_40
    .catchall {:try_start_33 .. :try_end_40} :catchall_8e

    .line 107
    if-eqz v0, :cond_45

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/TraceEvent;->close()V

    .line 90
    :cond_45
    return-void

    .line 92
    :cond_46
    :try_start_46
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingRunnable;->mMetricsStore:Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsStore;

    iget-object v2, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingRunnable;->mScenario:Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;

    invoke-virtual {v1, v2}, Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsStore;->startTrackingScenario(Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;)V
    :try_end_4d
    .catchall {:try_start_46 .. :try_end_4d} :catchall_8e

    .line 107
    if-eqz v0, :cond_52

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/TraceEvent;->close()V

    .line 93
    :cond_52
    return-void

    .line 95
    :cond_53
    :try_start_53
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingRunnable;->mJankEndScenarioTime:Landroid/net/connectivity/org/chromium/base/jank_tracker/JankEndScenarioTime;

    if-eqz v1, :cond_6a

    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingRunnable;->mJankEndScenarioTime:Landroid/net/connectivity/org/chromium/base/jank_tracker/JankEndScenarioTime;

    if-eqz v1, :cond_68

    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingRunnable;->mMetricsStore:Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsStore;

    iget-object v2, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingRunnable;->mJankEndScenarioTime:Landroid/net/connectivity/org/chromium/base/jank_tracker/JankEndScenarioTime;

    iget-wide v2, v2, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankEndScenarioTime;->endScenarioTimeNs:J

    .line 98
    invoke-virtual {v1, v2, v3}, Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsStore;->hasReceivedMetricsPast(J)Z

    move-result v1

    if-eqz v1, :cond_68

    goto :goto_6a

    :cond_68
    const/4 v1, 0x0

    goto :goto_6b

    :cond_6a
    :goto_6a
    const/4 v1, 0x1

    .line 101
    .local v1, "dataIsReady":Z
    :goto_6b
    const/4 v2, 0x0

    if-eqz v1, :cond_77

    .line 102
    new-instance v3, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingRunnable$FinalReportingRunnable;

    invoke-direct {v3, p0, v2}, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingRunnable$FinalReportingRunnable;-><init>(Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingRunnable;Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingRunnable-IA;)V

    invoke-virtual {v3}, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingRunnable$FinalReportingRunnable;->run()V

    goto :goto_88

    .line 104
    :cond_77
    iget-object v3, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingRunnable;->mHandler:Landroid/os/Handler;

    new-instance v4, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingRunnable$FinalReportingRunnable;

    invoke-direct {v4, p0, v2}, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingRunnable$FinalReportingRunnable;-><init>(Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingRunnable;Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingRunnable-IA;)V

    iget-object v2, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingRunnable;->mJankEndScenarioTime:Landroid/net/connectivity/org/chromium/base/jank_tracker/JankEndScenarioTime;

    .line 105
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const-wide/16 v5, 0x64

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_88
    .catchall {:try_start_53 .. :try_end_88} :catchall_8e

    .line 107
    .end local v1    # "dataIsReady":Z
    :goto_88
    if-eqz v0, :cond_8d

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/TraceEvent;->close()V

    .line 108
    .end local v0    # "e":Landroid/net/connectivity/org/chromium/base/TraceEvent;
    :cond_8d
    return-void

    .line 80
    .restart local v0    # "e":Landroid/net/connectivity/org/chromium/base/TraceEvent;
    :catchall_8e
    move-exception v1

    if-eqz v0, :cond_99

    :try_start_91
    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/TraceEvent;->close()V
    :try_end_94
    .catchall {:try_start_91 .. :try_end_94} :catchall_95

    goto :goto_99

    :catchall_95
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_99
    :goto_99
    throw v1
.end method
