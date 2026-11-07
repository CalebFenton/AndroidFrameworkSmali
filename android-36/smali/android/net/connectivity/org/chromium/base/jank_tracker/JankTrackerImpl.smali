.class public Landroid/net/connectivity/org/chromium/base/jank_tracker/JankTrackerImpl;
.super Ljava/lang/Object;
.source "JankTrackerImpl.java"

# interfaces
.implements Landroid/net/connectivity/org/chromium/base/jank_tracker/JankTracker;


# static fields
.field private static final blacklist IS_TRACKING_ENABLED:Z


# instance fields
.field private blacklist mController:Landroid/net/connectivity/org/chromium/base/jank_tracker/JankTrackerStateController;

.field private blacklist mDestroyed:Z

.field private blacklist mIsInitialized:Z

.field private blacklist mReportingScheduler:Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingScheduler;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDestroyed(Landroid/net/connectivity/org/chromium/base/jank_tracker/JankTrackerImpl;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankTrackerImpl;->mDestroyed:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmReportingScheduler(Landroid/net/connectivity/org/chromium/base/jank_tracker/JankTrackerImpl;)Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingScheduler;
    .registers 1

    iget-object p0, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankTrackerImpl;->mReportingScheduler:Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingScheduler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mconstructInternalFinal(Landroid/net/connectivity/org/chromium/base/jank_tracker/JankTrackerImpl;Landroid/net/connectivity/org/chromium/base/jank_tracker/JankTrackerStateController;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankTrackerImpl;->constructInternalFinal(Landroid/net/connectivity/org/chromium/base/jank_tracker/JankTrackerStateController;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mconstructInternalPreController(Landroid/net/connectivity/org/chromium/base/jank_tracker/JankTrackerImpl;Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingScheduler;)Z
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankTrackerImpl;->constructInternalPreController(Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingScheduler;)Z

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 24
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    sput-boolean v0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankTrackerImpl;->IS_TRACKING_ENABLED:Z

    return-void
.end method

.method public constructor blacklist <init>(Landroid/app/Activity;I)V
    .registers 8
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "constructionDelayMs"    # I

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 41
    .local v0, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;"
    new-instance v1, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankTrackerImpl$1;

    invoke-direct {v1, p0, v0}, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankTrackerImpl$1;-><init>(Landroid/net/connectivity/org/chromium/base/jank_tracker/JankTrackerImpl;Ljava/lang/ref/WeakReference;)V

    .line 65
    .local v1, "init":Ljava/lang/Runnable;
    if-gtz p2, :cond_13

    .line 66
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_18

    .line 68
    :cond_13
    const/4 v2, 0x7

    int-to-long v3, p2

    invoke-static {v2, v1, v3, v4}, Landroid/net/connectivity/org/chromium/base/task/PostTask;->postDelayedTask(ILjava/lang/Runnable;J)V

    .line 70
    :goto_18
    return-void
.end method

.method public constructor blacklist <init>(Landroid/net/connectivity/org/chromium/base/jank_tracker/JankTrackerStateController;)V
    .registers 3
    .param p1, "controller"    # Landroid/net/connectivity/org/chromium/base/jank_tracker/JankTrackerStateController;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iget-object v0, p1, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankTrackerStateController;->mReportingScheduler:Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingScheduler;

    invoke-direct {p0, v0}, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankTrackerImpl;->constructInternalPreController(Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingScheduler;)Z

    move-result v0

    if-nez v0, :cond_c

    return-void

    .line 78
    :cond_c
    invoke-direct {p0, p1}, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankTrackerImpl;->constructInternalFinal(Landroid/net/connectivity/org/chromium/base/jank_tracker/JankTrackerStateController;)V

    .line 79
    return-void
.end method

.method private blacklist constructInternalFinal(Landroid/net/connectivity/org/chromium/base/jank_tracker/JankTrackerStateController;)V
    .registers 3
    .param p1, "controller"    # Landroid/net/connectivity/org/chromium/base/jank_tracker/JankTrackerStateController;

    .line 92
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankTrackerImpl;->mController:Landroid/net/connectivity/org/chromium/base/jank_tracker/JankTrackerStateController;

    .line 93
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankTrackerImpl;->mController:Landroid/net/connectivity/org/chromium/base/jank_tracker/JankTrackerStateController;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankTrackerStateController;->initialize()V

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankTrackerImpl;->mIsInitialized:Z

    .line 95
    return-void
.end method

.method private blacklist constructInternalPreController(Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingScheduler;)Z
    .registers 3
    .param p1, "scheduler"    # Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingScheduler;

    .line 82
    sget-boolean v0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankTrackerImpl;->IS_TRACKING_ENABLED:Z

    if-nez v0, :cond_b

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankTrackerImpl;->mReportingScheduler:Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingScheduler;

    .line 84
    iput-object v0, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankTrackerImpl;->mController:Landroid/net/connectivity/org/chromium/base/jank_tracker/JankTrackerStateController;

    .line 85
    const/4 v0, 0x0

    return v0

    .line 87
    :cond_b
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankTrackerImpl;->mReportingScheduler:Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingScheduler;

    .line 88
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public blacklist destroy()V
    .registers 2

    .line 119
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankTrackerImpl;->mDestroyed:Z

    .line 120
    sget-boolean v0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankTrackerImpl;->IS_TRACKING_ENABLED:Z

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankTrackerImpl;->mIsInitialized:Z

    if-nez v0, :cond_c

    goto :goto_12

    .line 121
    :cond_c
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankTrackerImpl;->mController:Landroid/net/connectivity/org/chromium/base/jank_tracker/JankTrackerStateController;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankTrackerStateController;->destroy()V

    .line 122
    return-void

    .line 120
    :cond_12
    :goto_12
    return-void
.end method

.method public blacklist finishTrackingScenario(Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;)V
    .registers 4
    .param p1, "scenario"    # Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;

    .line 106
    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankTrackerImpl;->finishTrackingScenario(Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;J)V

    .line 107
    return-void
.end method

.method public blacklist finishTrackingScenario(Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;J)V
    .registers 5
    .param p1, "scenario"    # Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;
    .param p2, "endScenarioTimeNs"    # J

    .line 111
    sget-boolean v0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankTrackerImpl;->IS_TRACKING_ENABLED:Z

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankTrackerImpl;->mIsInitialized:Z

    if-nez v0, :cond_9

    goto :goto_f

    .line 113
    :cond_9
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankTrackerImpl;->mReportingScheduler:Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingScheduler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingScheduler;->finishTrackingScenario(Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;J)V

    .line 114
    return-void

    .line 111
    :cond_f
    :goto_f
    return-void
.end method

.method public blacklist startTrackingScenario(Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;)V
    .registers 3
    .param p1, "scenario"    # Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;

    .line 99
    sget-boolean v0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankTrackerImpl;->IS_TRACKING_ENABLED:Z

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankTrackerImpl;->mIsInitialized:Z

    if-nez v0, :cond_9

    goto :goto_f

    .line 101
    :cond_9
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankTrackerImpl;->mReportingScheduler:Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingScheduler;

    invoke-virtual {v0, p1}, Landroid/net/connectivity/org/chromium/base/jank_tracker/JankReportingScheduler;->startTrackingScenario(Landroid/net/connectivity/org/chromium/base/jank_tracker/JankScenario;)V

    .line 102
    return-void

    .line 99
    :cond_f
    :goto_f
    return-void
.end method
