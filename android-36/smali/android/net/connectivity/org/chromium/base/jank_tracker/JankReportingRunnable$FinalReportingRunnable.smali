.class Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingRunnable$FinalReportingRunnable;
.super Ljava/lang/Object;
.source "JankReportingRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FinalReportingRunnable"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingRunnable;


# direct methods
.method private constructor blacklist <init>(Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingRunnable;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 29
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingRunnable$FinalReportingRunnable;->this$0:Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingRunnable;Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingRunnable-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingRunnable$FinalReportingRunnable;-><init>(Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingRunnable;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 13

    .line 32
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingRunnable$FinalReportingRunnable;->this$0:Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingRunnable;

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingRunnable;->-$$Nest$fgetmScenario(Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingRunnable;)Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;->type()I

    move-result v0

    const-string v1, "ReportingCUJScenarioData"

    invoke-static {v1, v0}, Landroid/net/connectivity/org/chromium/base/TraceEvent;->scoped(Ljava/lang/String;I)Landroid/net/connectivity/org/chromium/base/TraceEvent;

    move-result-object v1

    .line 34
    .local v1, "e":Landroid/net/connectivity/org/chromium/base/TraceEvent;
    :try_start_10
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingRunnable$FinalReportingRunnable;->this$0:Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingRunnable;

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingRunnable;->-$$Nest$fgetmJankEndScenarioTime(Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingRunnable;)Landroid/net/connectivity/org/chromium/base/jank_tracker/JankEndScenarioTime;

    move-result-object v0

    if-nez v0, :cond_2a

    .line 35
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingRunnable$FinalReportingRunnable;->this$0:Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingRunnable;

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingRunnable;->-$$Nest$fgetmMetricsStore(Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingRunnable;)Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsStore;

    move-result-object v0

    iget-object v2, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingRunnable$FinalReportingRunnable;->this$0:Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingRunnable;

    invoke-static {v2}, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingRunnable;->-$$Nest$fgetmScenario(Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingRunnable;)Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsStore;->stopTrackingScenario(Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;)Landroid/net/connectivity/org/chromium/base/jank_tracker/JankMetrics;

    move-result-object v0

    move-object v2, v0

    .local v0, "metrics":Landroid/net/connectivity/org/chromium/base/jank_tracker/JankMetrics;
    goto :goto_43

    .line 38
    .end local v0    # "metrics":Landroid/net/connectivity/org/chromium/base/jank_tracker/JankMetrics;
    :cond_2a
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingRunnable$FinalReportingRunnable;->this$0:Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingRunnable;

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingRunnable;->-$$Nest$fgetmMetricsStore(Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingRunnable;)Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsStore;

    move-result-object v0

    iget-object v2, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingRunnable$FinalReportingRunnable;->this$0:Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingRunnable;

    invoke-static {v2}, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingRunnable;->-$$Nest$fgetmScenario(Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingRunnable;)Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;

    move-result-object v2

    iget-object v3, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingRunnable$FinalReportingRunnable;->this$0:Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingRunnable;

    invoke-static {v3}, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingRunnable;->-$$Nest$fgetmJankEndScenarioTime(Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingRunnable;)Landroid/net/connectivity/org/chromium/base/jank_tracker/JankEndScenarioTime;

    move-result-object v3

    iget-wide v3, v3, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankEndScenarioTime;->endScenarioTimeNs:J

    .line 39
    invoke-virtual {v0, v2, v3, v4}, Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsStore;->stopTrackingScenario(Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;J)Landroid/net/connectivity/org/chromium/base/jank_tracker/JankMetrics;

    move-result-object v0

    move-object v2, v0

    .line 43
    .local v2, "metrics":Landroid/net/connectivity/org/chromium/base/jank_tracker/JankMetrics;
    :goto_43
    if-eqz v2, :cond_82

    iget-object v0, v2, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankMetrics;->timestampsNs:[J

    array-length v0, v0

    if-nez v0, :cond_4b

    goto :goto_82

    .line 48
    :cond_4b
    iget-object v0, v2, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankMetrics;->timestampsNs:[J

    const/4 v3, 0x0

    aget-wide v3, v0, v3

    const-wide/32 v5, 0xf4240

    div-long/2addr v3, v5

    .line 49
    .local v3, "startTime":J
    iget-object v0, v2, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankMetrics;->timestampsNs:[J

    iget-object v7, v2, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankMetrics;->timestampsNs:[J

    array-length v7, v7

    add-int/lit8 v7, v7, -0x1

    aget-wide v7, v0, v7

    div-long/2addr v7, v5

    move-wide v8, v7

    .line 50
    .local v8, "lastTime":J
    iget-object v0, v2, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankMetrics;->durationsNs:[J

    iget-object v7, v2, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankMetrics;->durationsNs:[J

    array-length v7, v7

    add-int/lit8 v7, v7, -0x1

    aget-wide v10, v0, v7

    div-long/2addr v10, v5

    .line 53
    .local v10, "lastDuration":J
    sub-long v5, v8, v3

    add-long/2addr v5, v10

    .line 57
    .local v5, "endTime":J
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankMetricUMARecorderJni;->get()Landroid/net/connectivity/org/chromium/base/jank_tracker/JankMetricUMARecorder$Natives;

    .line 59
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingRunnable$FinalReportingRunnable;->this$0:Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingRunnable;

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingRunnable;->-$$Nest$fgetmScenario(Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingRunnable;)Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;->type()I

    move-result v7

    .line 59
    invoke-static/range {v2 .. v7}, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankMetricUMARecorder;->recordJankMetricsToUMA(Landroid/net/connectivity/org/chromium/base/jank_tracker/JankMetrics;JJI)V
    :try_end_7c
    .catchall {:try_start_10 .. :try_end_7c} :catchall_8d

    .line 61
    .end local v2    # "metrics":Landroid/net/connectivity/org/chromium/base/jank_tracker/JankMetrics;
    .end local v3    # "startTime":J
    .end local v5    # "endTime":J
    .end local v8    # "lastTime":J
    .end local v10    # "lastDuration":J
    if-eqz v1, :cond_81

    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/base/TraceEvent;->close()V

    .line 62
    .end local v1    # "e":Landroid/net/connectivity/org/chromium/base/TraceEvent;
    :cond_81
    return-void

    .line 44
    .restart local v1    # "e":Landroid/net/connectivity/org/chromium/base/TraceEvent;
    .restart local v2    # "metrics":Landroid/net/connectivity/org/chromium/base/jank_tracker/JankMetrics;
    :cond_82
    :goto_82
    :try_start_82
    const-string v0, "no metrics"

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/TraceEvent;->instant(Ljava/lang/String;)V
    :try_end_87
    .catchall {:try_start_82 .. :try_end_87} :catchall_8d

    .line 61
    if-eqz v1, :cond_8c

    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/base/TraceEvent;->close()V

    .line 45
    :cond_8c
    return-void

    .line 32
    .end local v2    # "metrics":Landroid/net/connectivity/org/chromium/base/jank_tracker/JankMetrics;
    :catchall_8d
    move-exception v0

    move-object v2, v0

    if-eqz v1, :cond_99

    :try_start_91
    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/base/TraceEvent;->close()V
    :try_end_94
    .catchall {:try_start_91 .. :try_end_94} :catchall_95

    goto :goto_99

    :catchall_95
    move-exception v0

    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_99
    :goto_99
    throw v2
.end method
