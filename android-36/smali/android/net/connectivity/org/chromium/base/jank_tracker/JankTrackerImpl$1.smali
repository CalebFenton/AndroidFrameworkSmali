.class Landroid/net/connectivity/org/chromium/base/jank_tracker/JankTrackerImpl$1;
.super Ljava/lang/Object;
.source "JankTrackerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/connectivity/org/chromium/base/jank_tracker/JankTrackerImpl;-><init>(Landroid/app/Activity;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/net/connectivity/org/chromium/base/jank_tracker/JankTrackerImpl;

.field final synthetic blacklist val$ref:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor blacklist <init>(Landroid/net/connectivity/org/chromium/base/jank_tracker/JankTrackerImpl;Ljava/lang/ref/WeakReference;)V
    .registers 3
    .param p1, "this$0"    # Landroid/net/connectivity/org/chromium/base/jank_tracker/JankTrackerImpl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 42
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankTrackerImpl$1;->this$0:Landroid/net/connectivity/org/chromium/base/jank_tracker/JankTrackerImpl;

    iput-object p2, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankTrackerImpl$1;->val$ref:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 7

    .line 46
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankTrackerImpl$1;->val$ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 47
    .local v0, "innerActivity":Landroid/app/Activity;
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankTrackerImpl$1;->this$0:Landroid/net/connectivity/org/chromium/base/jank_tracker/JankTrackerImpl;

    invoke-static {v1}, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankTrackerImpl;->-$$Nest$fgetmDestroyed(Landroid/net/connectivity/org/chromium/base/jank_tracker/JankTrackerImpl;)Z

    move-result v1

    if-nez v1, :cond_42

    if-eqz v0, :cond_42

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_19

    goto :goto_42

    .line 52
    :cond_19
    new-instance v1, Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsStore;

    invoke-direct {v1}, Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsStore;-><init>()V

    .line 53
    .local v1, "metricsStore":Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsStore;
    iget-object v2, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankTrackerImpl$1;->this$0:Landroid/net/connectivity/org/chromium/base/jank_tracker/JankTrackerImpl;

    new-instance v3, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingScheduler;

    invoke-direct {v3, v1}, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingScheduler;-><init>(Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsStore;)V

    invoke-static {v2, v3}, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankTrackerImpl;->-$$Nest$mconstructInternalPreController(Landroid/net/connectivity/org/chromium/base/jank_tracker/JankTrackerImpl;Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingScheduler;)Z

    move-result v2

    if-nez v2, :cond_2c

    .line 55
    return-void

    .line 58
    :cond_2c
    iget-object v2, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankTrackerImpl$1;->this$0:Landroid/net/connectivity/org/chromium/base/jank_tracker/JankTrackerImpl;

    new-instance v3, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankActivityTracker;

    new-instance v4, Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsListener;

    invoke-direct {v4, v1}, Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsListener;-><init>(Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsStore;)V

    iget-object v5, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankTrackerImpl$1;->this$0:Landroid/net/connectivity/org/chromium/base/jank_tracker/JankTrackerImpl;

    invoke-static {v5}, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankTrackerImpl;->-$$Nest$fgetmReportingScheduler(Landroid/net/connectivity/org/chromium/base/jank_tracker/JankTrackerImpl;)Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingScheduler;

    move-result-object v5

    invoke-direct {v3, v0, v4, v5}, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankActivityTracker;-><init>(Landroid/app/Activity;Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsListener;Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingScheduler;)V

    invoke-static {v2, v3}, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankTrackerImpl;->-$$Nest$mconstructInternalFinal(Landroid/net/connectivity/org/chromium/base/jank_tracker/JankTrackerImpl;Landroid/net/connectivity/org/chromium/base/jank_tracker/JankTrackerStateController;)V

    .line 63
    return-void

    .line 48
    .end local v1    # "metricsStore":Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsStore;
    :cond_42
    :goto_42
    return-void
.end method
