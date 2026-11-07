.class Landroid/net/connectivity/org/chromium/base/jank_tracker/JankActivityTracker;
.super Landroid/net/connectivity/org/chromium/base/jank_tracker/JankTrackerStateController;
.source "JankActivityTracker.java"

# interfaces
.implements Landroid/net/connectivity/org/chromium/base/ApplicationStatus$ActivityStateListener;


# instance fields
.field private blacklist mActivityReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mDestroyChecker:Landroid/net/connectivity/org/chromium/base/lifetime/DestroyChecker;

.field private final blacklist mThreadChecker:Landroid/net/connectivity/org/chromium/base/ThreadUtils$ThreadChecker;


# direct methods
.method constructor blacklist <init>(Landroid/app/Activity;Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsListener;Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingScheduler;)V
    .registers 5
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "listener"    # Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsListener;
    .param p3, "reportingScheduler"    # Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingScheduler;

    .line 36
    invoke-direct {p0, p2, p3}, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankTrackerStateController;-><init>(Landroid/net/connectivity/org/chromium/base/jank_tracker/FrameMetricsListener;Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingScheduler;)V

    .line 27
    new-instance v0, Landroid/net/connectivity/org/chromium/base/ThreadUtils$ThreadChecker;

    invoke-direct {v0}, Landroid/net/connectivity/org/chromium/base/ThreadUtils$ThreadChecker;-><init>()V

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankActivityTracker;->mThreadChecker:Landroid/net/connectivity/org/chromium/base/ThreadUtils$ThreadChecker;

    .line 28
    new-instance v0, Landroid/net/connectivity/org/chromium/base/lifetime/DestroyChecker;

    invoke-direct {v0}, Landroid/net/connectivity/org/chromium/base/lifetime/DestroyChecker;-><init>()V

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankActivityTracker;->mDestroyChecker:Landroid/net/connectivity/org/chromium/base/lifetime/DestroyChecker;

    .line 37
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankActivityTracker;->mActivityReference:Ljava/lang/ref/WeakReference;

    .line 38
    return-void
.end method

.method private blacklist assertValidState()V
    .registers 2

    .line 65
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankActivityTracker;->mThreadChecker:Landroid/net/connectivity/org/chromium/base/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/ThreadUtils$ThreadChecker;->assertOnValidThread()V

    .line 66
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankActivityTracker;->mDestroyChecker:Landroid/net/connectivity/org/chromium/base/lifetime/DestroyChecker;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/lifetime/DestroyChecker;->checkNotDestroyed()V

    .line 67
    return-void
.end method


# virtual methods
.method public blacklist destroy()V
    .registers 3

    .line 54
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankActivityTracker;->mThreadChecker:Landroid/net/connectivity/org/chromium/base/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/ThreadUtils$ThreadChecker;->assertOnValidThread()V

    .line 55
    invoke-static {p0}, Landroid/net/connectivity/org/chromium/base/ApplicationStatus;->unregisterActivityStateListener(Landroid/net/connectivity/org/chromium/base/ApplicationStatus$ActivityStateListener;)V

    .line 56
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankActivityTracker;->stopPeriodicReporting()V

    .line 57
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankActivityTracker;->mActivityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 58
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_1c

    .line 59
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankActivityTracker;->stopMetricCollection(Landroid/view/Window;)V

    .line 61
    :cond_1c
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankActivityTracker;->mDestroyChecker:Landroid/net/connectivity/org/chromium/base/lifetime/DestroyChecker;

    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/base/lifetime/DestroyChecker;->destroy()V

    .line 62
    return-void
.end method

.method public blacklist initialize()V
    .registers 4

    .line 42
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankActivityTracker;->assertValidState()V

    .line 43
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankActivityTracker;->mActivityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 44
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_1e

    .line 45
    invoke-static {p0, v0}, Landroid/net/connectivity/org/chromium/base/ApplicationStatus;->registerStateListenerForActivity(Landroid/net/connectivity/org/chromium/base/ApplicationStatus$ActivityStateListener;Landroid/app/Activity;)V

    .line 46
    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/ApplicationStatus;->getStateForActivity(Landroid/app/Activity;)I

    move-result v1

    .line 47
    .local v1, "activityState":I
    invoke-virtual {p0, v0, v1}, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankActivityTracker;->onActivityStateChange(Landroid/app/Activity;I)V

    .line 48
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankActivityTracker;->startMetricCollection(Landroid/view/Window;)V

    .line 50
    .end local v1    # "activityState":I
    :cond_1e
    return-void
.end method

.method public blacklist onActivityStateChange(Landroid/app/Activity;I)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "newState"    # I

    .line 71
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankActivityTracker;->assertValidState()V

    .line 72
    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_1e

    goto :goto_1d

    .line 85
    :pswitch_8
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankActivityTracker;->stopPeriodicReporting()V

    .line 86
    invoke-virtual {p0, v0}, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankActivityTracker;->stopMetricCollection(Landroid/view/Window;)V

    goto :goto_1d

    .line 81
    :pswitch_f
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankActivityTracker;->startPeriodicReporting()V

    .line 82
    invoke-virtual {p0, v0}, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankActivityTracker;->stopMetricCollection(Landroid/view/Window;)V

    .line 83
    goto :goto_1d

    .line 75
    :pswitch_16
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankActivityTracker;->startPeriodicReporting()V

    .line 76
    invoke-virtual {p0, v0}, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankActivityTracker;->startMetricCollection(Landroid/view/Window;)V

    .line 77
    nop

    .line 89
    :goto_1d
    return-void

    :pswitch_data_1e
    .packed-switch 0x2
        :pswitch_16
        :pswitch_16
        :pswitch_f
        :pswitch_8
    .end packed-switch
.end method
