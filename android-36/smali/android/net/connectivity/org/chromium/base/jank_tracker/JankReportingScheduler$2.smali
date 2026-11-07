.class Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingScheduler$2;
.super Ljava/lang/Object;
.source "JankReportingScheduler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingScheduler;


# direct methods
.method constructor blacklist <init>(Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingScheduler;)V
    .registers 2
    .param p1, "this$0"    # Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingScheduler;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 32
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingScheduler$2;->this$0:Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingScheduler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 5

    .line 36
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingScheduler$2;->this$0:Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingScheduler;

    sget-object v1, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;->PERIODIC_REPORTING:Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;

    invoke-virtual {v0, v1}, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingScheduler;->finishTrackingScenario(Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;)V

    .line 38
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingScheduler$2;->this$0:Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingScheduler;

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingScheduler;->-$$Nest$fgetmIsPeriodicReporterLooping(Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingScheduler;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 42
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingScheduler$2;->this$0:Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingScheduler;

    sget-object v1, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;->PERIODIC_REPORTING:Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;

    invoke-virtual {v0, v1}, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingScheduler;->startTrackingScenario(Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;)V

    .line 43
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingScheduler$LazyHolder;->-$$Nest$sfgetHANDLER()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingScheduler$2;->this$0:Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingScheduler;

    invoke-static {v1}, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingScheduler;->-$$Nest$fgetmPeriodicMetricReporter(Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingScheduler;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 46
    :cond_29
    return-void
.end method
