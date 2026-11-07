.class public Lcom/android/internal/jank/InteractionJankMonitor;
.super Ljava/lang/Object;
.source "InteractionJankMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/jank/InteractionJankMonitor$InstanceHolder;,
        Lcom/android/internal/jank/InteractionJankMonitor$Configuration;,
        Lcom/android/internal/jank/InteractionJankMonitor$TimeFunction;,
        Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;,
        Lcom/android/internal/jank/InteractionJankMonitor$RunningTracker;
    }
.end annotation


# static fields
.field private static final blacklist ACTION_PREFIX:Ljava/lang/String;

.field public static final blacklist ACTION_SESSION_CANCEL:Ljava/lang/String;

.field public static final blacklist ACTION_SESSION_END:Ljava/lang/String;

.field public static final blacklist CUJ_BIOMETRIC_PROMPT_TRANSITION:I = 0x38
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CUJ_LAUNCHER_ALL_APPS_SEARCH_BACK:I = 0x5f
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CUJ_LAUNCHER_LAUNCH_APP_PAIR_FROM_TASKBAR:I = 0x5c
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CUJ_LAUNCHER_LAUNCH_APP_PAIR_FROM_WORKSPACE:I = 0x5b
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CUJ_LAUNCHER_SAVE_APP_PAIR:I = 0x5d
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CUJ_LAUNCHER_TASKBAR_ALL_APPS_CLOSE_BACK:I = 0x60
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CUJ_LAUNCHER_TASKBAR_ALL_APPS_SEARCH_BACK:I = 0x61
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CUJ_LAUNCHER_WIDGET_BOTTOM_SHEET_CLOSE_BACK:I = 0x64
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CUJ_LAUNCHER_WIDGET_EDU_SHEET_CLOSE_BACK:I = 0x65
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CUJ_LAUNCHER_WIDGET_PICKER_CLOSE_BACK:I = 0x62
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CUJ_LAUNCHER_WIDGET_PICKER_SEARCH_BACK:I = 0x63
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CUJ_LOCKSCREEN_CLOCK_MOVE_ANIMATION:I = 0x46
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CUJ_LOCKSCREEN_OCCLUSION:I = 0x40
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CUJ_LOCKSCREEN_PASSWORD_APPEAR:I = 0x11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CUJ_LOCKSCREEN_PASSWORD_DISAPPEAR:I = 0x14
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CUJ_LOCKSCREEN_PATTERN_APPEAR:I = 0x12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CUJ_LOCKSCREEN_PATTERN_DISAPPEAR:I = 0x15
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CUJ_LOCKSCREEN_PIN_APPEAR:I = 0x13
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CUJ_LOCKSCREEN_PIN_DISAPPEAR:I = 0x16
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CUJ_LOCKSCREEN_TRANSITION_FROM_AOD:I = 0x17
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CUJ_LOCKSCREEN_TRANSITION_TO_AOD:I = 0x18
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CUJ_LOCKSCREEN_UNLOCK_ANIMATION:I = 0x1d
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CUJ_NOTIFICATION_ADD:I = 0xe
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CUJ_NOTIFICATION_APP_START:I = 0x10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CUJ_NOTIFICATION_HEADS_UP_APPEAR:I = 0xc
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CUJ_NOTIFICATION_HEADS_UP_DISAPPEAR:I = 0xd
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CUJ_NOTIFICATION_REMOVE:I = 0xf
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CUJ_NOTIFICATION_SHADE_EXPAND_COLLAPSE:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CUJ_NOTIFICATION_SHADE_QS_EXPAND_COLLAPSE:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CUJ_NOTIFICATION_SHADE_QS_SCROLL_SWIPE:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CUJ_NOTIFICATION_SHADE_ROW_EXPAND:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CUJ_NOTIFICATION_SHADE_ROW_SWIPE:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CUJ_NOTIFICATION_SHADE_SCROLL_FLING:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CUJ_PIP_TRANSITION:I = 0x23
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CUJ_PREDICTIVE_BACK_CROSS_ACTIVITY:I = 0x54
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CUJ_PREDICTIVE_BACK_CROSS_TASK:I = 0x55
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CUJ_PREDICTIVE_BACK_HOME:I = 0x56
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CUJ_SCREEN_OFF:I = 0x28
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CUJ_SCREEN_OFF_SHOW_AOD:I = 0x29
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CUJ_SETTINGS_PAGE_SCROLL:I = 0x1c
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CUJ_SETTINGS_SLIDER:I = 0x35
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CUJ_SETTINGS_TOGGLE:I = 0x39
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CUJ_SHADE_APP_LAUNCH_FROM_HISTORY_BUTTON:I = 0x1e
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CUJ_SHADE_APP_LAUNCH_FROM_MEDIA_PLAYER:I = 0x1f
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CUJ_SHADE_APP_LAUNCH_FROM_QS_TILE:I = 0x20
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CUJ_SHADE_APP_LAUNCH_FROM_SETTINGS_BUTTON:I = 0x21
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CUJ_SHADE_CLEAR_ALL:I = 0x3e
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CUJ_SHADE_DIALOG_OPEN:I = 0x3a
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CUJ_SPLASHSCREEN_AVD:I = 0x26
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CUJ_SPLASHSCREEN_EXIT_ANIM:I = 0x27
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CUJ_SPLIT_SCREEN_DOUBLE_TAP_DIVIDER:I = 0x52
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CUJ_SPLIT_SCREEN_RESIZE:I = 0x34
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CUJ_STATUS_BAR_APP_LAUNCH_FROM_CALL_CHIP:I = 0x22
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CUJ_SUW_LOADING_SCREEN_FOR_STATUS:I = 0x30
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CUJ_SUW_LOADING_TO_NEXT_FLOW:I = 0x2f
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CUJ_SUW_LOADING_TO_SHOW_INFO_WITH_ACTIONS:I = 0x2d
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CUJ_SUW_SHOW_FUNCTION_SCREEN_WITH_ACTIONS:I = 0x2e
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CUJ_TAKE_SCREENSHOT:I = 0x36
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CUJ_TASKBAR_COLLAPSE:I = 0x3d
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CUJ_TASKBAR_EXPAND:I = 0x3c
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CUJ_UNFOLD_ANIM:I = 0x2c
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CUJ_USER_DIALOG_OPEN:I = 0x3b
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CUJ_USER_SWITCH:I = 0x25
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CUJ_VOLUME_CONTROL:I = 0x37
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final blacklist DEFAULT_DEBUG_OVERLAY_ENABLED:Z = false

.field private static final blacklist DEFAULT_ENABLED:Z

.field private static final blacklist DEFAULT_SAMPLING_INTERVAL:I = 0x1

.field private static final blacklist DEFAULT_TIMEOUT_MS:J

.field private static final blacklist DEFAULT_TRACE_THRESHOLD_FRAME_TIME_MILLIS:I = 0x40

.field private static final blacklist DEFAULT_TRACE_THRESHOLD_MISSED_FRAMES:I = 0x3

.field private static final blacklist DEFAULT_WORKER_NAME:Ljava/lang/String;

.field static final blacklist EXECUTOR_TASK_TIMEOUT:J = 0x1f4L

.field private static final blacklist MAX_LENGTH_SESSION_NAME:I = 0x64

.field private static final blacklist SETTINGS_DEBUG_OVERLAY_ENABLED_KEY:Ljava/lang/String; = "debug_overlay_enabled"

.field private static final blacklist SETTINGS_ENABLED_KEY:Ljava/lang/String; = "enabled"

.field private static final blacklist SETTINGS_SAMPLING_INTERVAL_KEY:Ljava/lang/String; = "sampling_interval"

.field private static final blacklist SETTINGS_THRESHOLD_FRAME_TIME_MILLIS_KEY:Ljava/lang/String; = "trace_threshold_frame_time_millis"

.field private static final blacklist SETTINGS_THRESHOLD_MISSED_FRAMES_KEY:Ljava/lang/String; = "trace_threshold_missed_frames"

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mCurrentApplication:Landroid/app/Application;

.field private blacklist mDebugBgColor:I

.field private blacklist mDebugOverlay:Lcom/android/internal/jank/InteractionMonitorDebugOverlay;

.field private blacklist mDebugYOffset:D

.field private final blacklist mDisplayResolutionTracker:Lcom/android/internal/jank/DisplayResolutionTracker;

.field private volatile blacklist mEnabled:Z

.field private final blacklist mLock:Ljava/lang/Object;

.field private final blacklist mRunningTrackers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/jank/InteractionJankMonitor$RunningTracker;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSamplingInterval:I

.field private blacklist mTraceThresholdFrameTimeMillis:I

.field private blacklist mTraceThresholdMissedFrames:I

.field private final blacklist mWorker:Landroid/os/Handler;


# direct methods
.method public static synthetic blacklist $r8$lambda$1H-AjAXc0amUzxB-nS7LQgEmepk(Lcom/android/internal/jank/InteractionJankMonitor;Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;Lcom/android/internal/jank/InteractionJankMonitor$Configuration;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/jank/InteractionJankMonitor;->lambda$begin$2(Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;Lcom/android/internal/jank/InteractionJankMonitor$Configuration;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$2OwsMSNHWzY8kGI7JUtxMziIFyQ(Lcom/android/internal/jank/InteractionJankMonitor;Lcom/android/internal/jank/InteractionJankMonitor$Configuration;I)Lcom/android/internal/jank/InteractionJankMonitor$RunningTracker;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/jank/InteractionJankMonitor;->lambda$beginInternal$4(Lcom/android/internal/jank/InteractionJankMonitor$Configuration;I)Lcom/android/internal/jank/InteractionJankMonitor$RunningTracker;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$9oh6FeI31KDrZz58JdrabS34-B4(Lcom/android/internal/jank/InteractionJankMonitor;Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;Lcom/android/internal/jank/InteractionJankMonitor$RunningTracker;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/jank/InteractionJankMonitor;->lambda$end$6(Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;Lcom/android/internal/jank/InteractionJankMonitor$RunningTracker;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$TYoMgVd2aY0Jj4m947rAwPJ7LWo(Lcom/android/internal/jank/InteractionJankMonitor;Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;Lcom/android/internal/jank/InteractionJankMonitor$RunningTracker;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/jank/InteractionJankMonitor;->lambda$cancel$8(Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;Lcom/android/internal/jank/InteractionJankMonitor$RunningTracker;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$VfzKIZzaU70G2_vwKxePuuY9o2A(Lcom/android/internal/jank/InteractionJankMonitor;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/jank/InteractionJankMonitor;->lambda$new$0()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$yherwrn8RTaFXzcNjhm1YoyYrAg(Lcom/android/internal/jank/InteractionJankMonitor;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/jank/InteractionJankMonitor;->lambda$beginInternal$3(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWorker(Lcom/android/internal/jank/InteractionJankMonitor;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mWorker:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleCujEvents(Lcom/android/internal/jank/InteractionJankMonitor;ILcom/android/internal/jank/FrameTracker;Ljava/lang/String;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/jank/InteractionJankMonitor;->handleCujEvents(ILcom/android/internal/jank/FrameTracker;Ljava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetDEFAULT_TIMEOUT_MS()J
    .registers 2

    sget-wide v0, Lcom/android/internal/jank/InteractionJankMonitor;->DEFAULT_TIMEOUT_MS:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetDEFAULT_WORKER_NAME()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/internal/jank/InteractionJankMonitor;->DEFAULT_WORKER_NAME:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/internal/jank/InteractionJankMonitor;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 85
    const-class v0, Lcom/android/internal/jank/InteractionJankMonitor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/internal/jank/InteractionJankMonitor;->TAG:Ljava/lang/String;

    .line 86
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/jank/InteractionJankMonitor;->ACTION_PREFIX:Ljava/lang/String;

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/internal/jank/InteractionJankMonitor;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-Worker"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/jank/InteractionJankMonitor;->DEFAULT_WORKER_NAME:Ljava/lang/String;

    .line 89
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/internal/jank/InteractionJankMonitor;->DEFAULT_TIMEOUT_MS:J

    .line 99
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/android/internal/jank/InteractionJankMonitor;->DEFAULT_ENABLED:Z

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/internal/jank/InteractionJankMonitor;->ACTION_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".ACTION_SESSION_END"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/jank/InteractionJankMonitor;->ACTION_SESSION_END:Ljava/lang/String;

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/internal/jank/InteractionJankMonitor;->ACTION_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".ACTION_SESSION_CANCEL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/jank/InteractionJankMonitor;->ACTION_SESSION_CANCEL:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/HandlerThread;)V
    .registers 5
    .param p1, "worker"    # Landroid/os/HandlerThread;

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mRunningTrackers:Landroid/util/SparseArray;

    .line 190
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mLock:Ljava/lang/Object;

    .line 191
    const v0, -0xff0001

    iput v0, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mDebugBgColor:I

    .line 192
    const-wide v0, 0x3fb999999999999aL    # 0.1

    iput-wide v0, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mDebugYOffset:D

    .line 196
    sget-boolean v0, Lcom/android/internal/jank/InteractionJankMonitor;->DEFAULT_ENABLED:Z

    iput-boolean v0, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mEnabled:Z

    .line 197
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mSamplingInterval:I

    .line 198
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mTraceThresholdMissedFrames:I

    .line 199
    const/16 v0, 0x40

    iput v0, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mTraceThresholdFrameTimeMillis:I

    .line 218
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 219
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mWorker:Landroid/os/Handler;

    .line 220
    new-instance v0, Lcom/android/internal/jank/DisplayResolutionTracker;

    iget-object v1, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mWorker:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/android/internal/jank/DisplayResolutionTracker;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mDisplayResolutionTracker:Lcom/android/internal/jank/DisplayResolutionTracker;

    .line 222
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mCurrentApplication:Landroid/app/Application;

    .line 223
    iget-object v0, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mCurrentApplication:Landroid/app/Application;

    if-eqz v0, :cond_5d

    iget-object v0, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mCurrentApplication:Landroid/app/Application;

    const-string v1, "android.permission.READ_DEVICE_CONFIG"

    invoke-virtual {v0, v1}, Landroid/app/Application;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_52

    goto :goto_5d

    .line 235
    :cond_52
    iget-object v0, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mWorker:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda7;-><init>(Lcom/android/internal/jank/InteractionJankMonitor;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 246
    return-void

    .line 225
    :cond_5d
    :goto_5d
    sget-object v0, Lcom/android/internal/jank/InteractionJankMonitor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Initializing without READ_DEVICE_CONFIG permission. enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", interval="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mSamplingInterval:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", missedFrameThreshold="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mTraceThresholdMissedFrames:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", frameTimeThreshold="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mTraceThresholdFrameTimeMillis:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", package="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 229
    iget-object v2, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mCurrentApplication:Landroid/app/Application;

    if-nez v2, :cond_a1

    const-string v2, "null"

    goto :goto_a7

    .line 230
    :cond_a1
    iget-object v2, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mCurrentApplication:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    :goto_a7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 225
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    return-void
.end method

.method private blacklist beginInternal(Lcom/android/internal/jank/InteractionJankMonitor$Configuration;)Z
    .registers 6
    .param p1, "conf"    # Lcom/android/internal/jank/InteractionJankMonitor$Configuration;

    .line 403
    invoke-static {p1}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->-$$Nest$fgetmCujType(Lcom/android/internal/jank/InteractionJankMonitor$Configuration;)I

    move-result v0

    .line 404
    .local v0, "cujType":I
    invoke-virtual {p0}, Lcom/android/internal/jank/InteractionJankMonitor;->shouldMonitor()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 405
    return v2

    .line 406
    :cond_c
    invoke-virtual {p1}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->hasValidView()Z

    move-result v1

    if-nez v1, :cond_1a

    .line 407
    sget-object v1, Lcom/android/internal/jank/InteractionJankMonitor;->TAG:Ljava/lang/String;

    const-string v3, "The view has since become invalid, aborting the CUJ."

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    return v2

    .line 411
    :cond_1a
    new-instance v1, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda4;-><init>(Lcom/android/internal/jank/InteractionJankMonitor;Lcom/android/internal/jank/InteractionJankMonitor$Configuration;I)V

    invoke-direct {p0, v0, v1}, Lcom/android/internal/jank/InteractionJankMonitor;->putTrackerIfNoCurrent(ILjava/util/function/Supplier;)Lcom/android/internal/jank/InteractionJankMonitor$RunningTracker;

    move-result-object v1

    .line 418
    .local v1, "tracker":Lcom/android/internal/jank/InteractionJankMonitor$RunningTracker;
    if-nez v1, :cond_26

    .line 419
    return v2

    .line 422
    :cond_26
    iget-object v2, v1, Lcom/android/internal/jank/InteractionJankMonitor$RunningTracker;->mTracker:Lcom/android/internal/jank/FrameTracker;

    invoke-virtual {v2}, Lcom/android/internal/jank/FrameTracker;->begin()V

    .line 424
    iget-object v2, v1, Lcom/android/internal/jank/InteractionJankMonitor$RunningTracker;->mConfig:Lcom/android/internal/jank/InteractionJankMonitor$Configuration;

    iget-object v3, v1, Lcom/android/internal/jank/InteractionJankMonitor$RunningTracker;->mTimeoutAction:Ljava/lang/Runnable;

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/jank/InteractionJankMonitor;->scheduleTimeoutAction(Lcom/android/internal/jank/InteractionJankMonitor$Configuration;Ljava/lang/Runnable;)V

    .line 426
    const/4 v2, 0x1

    return v2
.end method

.method private blacklist cancelInternal(Lcom/android/internal/jank/InteractionJankMonitor$RunningTracker;I)Z
    .registers 4
    .param p1, "tracker"    # Lcom/android/internal/jank/InteractionJankMonitor$RunningTracker;
    .param p2, "reason"    # I

    .line 524
    invoke-direct {p0, p1, p2}, Lcom/android/internal/jank/InteractionJankMonitor;->removeTrackerIfCurrent(Lcom/android/internal/jank/InteractionJankMonitor$RunningTracker;I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 525
    const/4 v0, 0x0

    return v0

    .line 527
    :cond_8
    iget-object v0, p1, Lcom/android/internal/jank/InteractionJankMonitor$RunningTracker;->mTracker:Lcom/android/internal/jank/FrameTracker;

    invoke-virtual {v0, p2}, Lcom/android/internal/jank/FrameTracker;->cancel(I)Z

    .line 528
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist endInternal(Lcom/android/internal/jank/InteractionJankMonitor$RunningTracker;)Z
    .registers 4
    .param p1, "tracker"    # Lcom/android/internal/jank/InteractionJankMonitor$RunningTracker;

    .line 475
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/jank/InteractionJankMonitor;->removeTrackerIfCurrent(Lcom/android/internal/jank/InteractionJankMonitor$RunningTracker;I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 476
    return v0

    .line 478
    :cond_8
    iget-object v1, p1, Lcom/android/internal/jank/InteractionJankMonitor$RunningTracker;->mTracker:Lcom/android/internal/jank/FrameTracker;

    invoke-virtual {v1, v0}, Lcom/android/internal/jank/FrameTracker;->end(I)Z

    .line 479
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist getInstance()Lcom/android/internal/jank/InteractionJankMonitor;
    .registers 1

    .line 207
    sget-object v0, Lcom/android/internal/jank/InteractionJankMonitor$InstanceHolder;->INSTANCE:Lcom/android/internal/jank/InteractionJankMonitor;

    return-object v0
.end method

.method public static blacklist getNameOfCuj(I)Ljava/lang/String;
    .registers 2
    .param p0, "cujType"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 645
    invoke-static {p0}, Lcom/android/internal/jank/Cuj;->getNameOfCuj(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getNameOfInteraction(I)Ljava/lang/String;
    .registers 2
    .param p0, "interactionType"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 633
    invoke-static {p0}, Lcom/android/internal/jank/Cuj;->getNameOfInteraction(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getTracker(I)Lcom/android/internal/jank/InteractionJankMonitor$RunningTracker;
    .registers 4
    .param p1, "cuj"    # I

    .line 554
    iget-object v0, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 555
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mRunningTrackers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/jank/InteractionJankMonitor$RunningTracker;

    monitor-exit v0

    return-object v1

    .line 556
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method private blacklist handleCujEvents(ILcom/android/internal/jank/FrameTracker;Ljava/lang/String;I)V
    .registers 6
    .param p1, "cuj"    # I
    .param p2, "tracker"    # Lcom/android/internal/jank/FrameTracker;
    .param p3, "action"    # Ljava/lang/String;
    .param p4, "reason"    # I

    .line 292
    invoke-static {p3, p4}, Lcom/android/internal/jank/InteractionJankMonitor;->needRemoveTasks(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 293
    invoke-direct {p0, p1, p2, p4}, Lcom/android/internal/jank/InteractionJankMonitor;->removeTrackerIfCurrent(ILcom/android/internal/jank/FrameTracker;I)Z

    .line 295
    :cond_9
    return-void
.end method

.method static synthetic blacklist lambda$begin$1(Lcom/android/internal/jank/InteractionJankMonitor$Configuration;JJJ)V
    .registers 15
    .param p0, "config"    # Lcom/android/internal/jank/InteractionJankMonitor$Configuration;
    .param p1, "unixNanos"    # J
    .param p3, "elapsedNanos"    # J
    .param p5, "realtimeNanos"    # J

    .line 384
    invoke-static {p0}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->-$$Nest$fgetmCujType(Lcom/android/internal/jank/InteractionJankMonitor$Configuration;)I

    move-result v0

    invoke-static {p0}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->-$$Nest$fgetmTag(Lcom/android/internal/jank/InteractionJankMonitor$Configuration;)Ljava/lang/String;

    move-result-object v7

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    .end local p1    # "unixNanos":J
    .end local p3    # "elapsedNanos":J
    .end local p5    # "realtimeNanos":J
    .local v1, "unixNanos":J
    .local v3, "elapsedNanos":J
    .local v5, "realtimeNanos":J
    invoke-static/range {v0 .. v7}, Lcom/android/internal/jank/EventLogTags;->writeJankCujEventsBeginRequest(IJJJLjava/lang/String;)V

    .line 386
    return-void
.end method

.method private synthetic blacklist lambda$begin$2(Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;Lcom/android/internal/jank/InteractionJankMonitor$Configuration;)V
    .registers 4
    .param p1, "result"    # Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;
    .param p2, "config"    # Lcom/android/internal/jank/InteractionJankMonitor$Configuration;

    .line 389
    invoke-direct {p0, p2}, Lcom/android/internal/jank/InteractionJankMonitor;->beginInternal(Lcom/android/internal/jank/InteractionJankMonitor$Configuration;)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;->-$$Nest$fputmResult(Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;Z)V

    return-void
.end method

.method private synthetic blacklist lambda$beginInternal$3(I)V
    .registers 5
    .param p1, "cujType"    # I

    .line 414
    sget-object v0, Lcom/android/internal/jank/InteractionJankMonitor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CUJ cancelled due to timeout, CUJ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 415
    invoke-static {p1}, Lcom/android/internal/jank/Cuj;->getNameOfCuj(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 414
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    const/16 v0, 0x13

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/jank/InteractionJankMonitor;->cancel(II)Z

    .line 417
    return-void
.end method

.method private synthetic blacklist lambda$beginInternal$4(Lcom/android/internal/jank/InteractionJankMonitor$Configuration;I)Lcom/android/internal/jank/InteractionJankMonitor$RunningTracker;
    .registers 6
    .param p1, "conf"    # Lcom/android/internal/jank/InteractionJankMonitor$Configuration;
    .param p2, "cujType"    # I

    .line 412
    new-instance v0, Lcom/android/internal/jank/InteractionJankMonitor$RunningTracker;

    .line 413
    invoke-virtual {p0, p1}, Lcom/android/internal/jank/InteractionJankMonitor;->createFrameTracker(Lcom/android/internal/jank/InteractionJankMonitor$Configuration;)Lcom/android/internal/jank/FrameTracker;

    move-result-object v1

    new-instance v2, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0, p2}, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda6;-><init>(Lcom/android/internal/jank/InteractionJankMonitor;I)V

    invoke-direct {v0, p1, v1, v2}, Lcom/android/internal/jank/InteractionJankMonitor$RunningTracker;-><init>(Lcom/android/internal/jank/InteractionJankMonitor$Configuration;Lcom/android/internal/jank/FrameTracker;Ljava/lang/Runnable;)V

    .line 412
    return-object v0
.end method

.method static synthetic blacklist lambda$cancel$7(IJJJ)V
    .registers 7
    .param p0, "cujType"    # I
    .param p1, "unixNanos"    # J
    .param p3, "elapsedNanos"    # J
    .param p5, "realtimeNanos"    # J

    .line 489
    invoke-static/range {p0 .. p6}, Lcom/android/internal/jank/EventLogTags;->writeJankCujEventsCancelRequest(IJJJ)V

    .line 491
    return-void
.end method

.method private synthetic blacklist lambda$cancel$8(Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;Lcom/android/internal/jank/InteractionJankMonitor$RunningTracker;I)V
    .registers 5
    .param p1, "result"    # Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;
    .param p2, "tracker"    # Lcom/android/internal/jank/InteractionJankMonitor$RunningTracker;
    .param p3, "reason"    # I

    .line 510
    invoke-direct {p0, p2, p3}, Lcom/android/internal/jank/InteractionJankMonitor;->cancelInternal(Lcom/android/internal/jank/InteractionJankMonitor$RunningTracker;I)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;->-$$Nest$fputmResult(Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;Z)V

    return-void
.end method

.method static synthetic blacklist lambda$end$5(IJJJ)V
    .registers 7
    .param p0, "cujType"    # I
    .param p1, "unixNanos"    # J
    .param p3, "elapsedNanos"    # J
    .param p5, "realtimeNanos"    # J

    .line 450
    invoke-static/range {p0 .. p6}, Lcom/android/internal/jank/EventLogTags;->writeJankCujEventsEndRequest(IJJJ)V

    .line 452
    return-void
.end method

.method private synthetic blacklist lambda$end$6(Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;Lcom/android/internal/jank/InteractionJankMonitor$RunningTracker;)V
    .registers 4
    .param p1, "result"    # Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;
    .param p2, "tracker"    # Lcom/android/internal/jank/InteractionJankMonitor$RunningTracker;

    .line 461
    invoke-direct {p0, p2}, Lcom/android/internal/jank/InteractionJankMonitor;->endInternal(Lcom/android/internal/jank/InteractionJankMonitor$RunningTracker;)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;->-$$Nest$fputmResult(Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;Z)V

    return-void
.end method

.method private synthetic blacklist lambda$new$0()V
    .registers 6

    .line 237
    const-string v0, "interaction_jank_monitor"

    const/4 v1, 0x0

    :try_start_3
    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/jank/InteractionJankMonitor;->updateProperties(Landroid/provider/DeviceConfig$Properties;)V

    .line 238
    new-instance v1, Landroid/os/HandlerExecutor;

    iget-object v2, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mWorker:Landroid/os/Handler;

    invoke-direct {v1, v2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    new-instance v2, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/jank/InteractionJankMonitor;)V

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V
    :try_end_1b
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_1b} :catch_1c

    .line 244
    goto :goto_4d

    .line 240
    :catch_1c
    move-exception v0

    .line 241
    .local v0, "ex":Ljava/lang/SecurityException;
    sget-object v1, Lcom/android/internal/jank/InteractionJankMonitor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t get properties: READ_DEVICE_CONFIG granted="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mCurrentApplication:Landroid/app/Application;

    .line 242
    const-string v4, "android.permission.READ_DEVICE_CONFIG"

    invoke-virtual {v3, v4}, Landroid/app/Application;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", package="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mCurrentApplication:Landroid/app/Application;

    .line 243
    invoke-virtual {v3}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 241
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    .end local v0    # "ex":Ljava/lang/SecurityException;
    :goto_4d
    return-void
.end method

.method static synthetic blacklist lambda$postEventLogToWorkerThread$9(Lcom/android/internal/jank/InteractionJankMonitor$TimeFunction;JJJ)V
    .registers 7
    .param p0, "logFunction"    # Lcom/android/internal/jank/InteractionJankMonitor$TimeFunction;
    .param p1, "unixNanos"    # J
    .param p3, "elapsedNanos"    # J
    .param p5, "realtimeNanos"    # J

    .line 668
    invoke-interface/range {p0 .. p6}, Lcom/android/internal/jank/InteractionJankMonitor$TimeFunction;->invoke(JJJ)V

    return-void
.end method

.method private static blacklist needRemoveTasks(Ljava/lang/String;I)Z
    .registers 6
    .param p0, "action"    # Ljava/lang/String;
    .param p1, "reason"    # I

    .line 298
    sget-object v0, Lcom/android/internal/jank/InteractionJankMonitor;->ACTION_SESSION_END:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_e

    if-eqz p1, :cond_e

    move v0, v1

    goto :goto_f

    :cond_e
    move v0, v2

    .line 299
    .local v0, "badEnd":Z
    :goto_f
    sget-object v3, Lcom/android/internal/jank/InteractionJankMonitor;->ACTION_SESSION_CANCEL:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    const/16 v3, 0x10

    if-eq p1, v3, :cond_21

    const/16 v3, 0x13

    if-eq p1, v3, :cond_21

    move v3, v1

    goto :goto_22

    :cond_21
    move v3, v2

    .line 301
    .local v3, "badCancel":Z
    :goto_22
    if-nez v0, :cond_28

    if-eqz v3, :cond_27

    goto :goto_28

    :cond_27
    move v1, v2

    :cond_28
    :goto_28
    return v1
.end method

.method private blacklist postEventLogToWorkerThread(Lcom/android/internal/jank/InteractionJankMonitor$TimeFunction;)V
    .registers 15
    .param p1, "logFunction"    # Lcom/android/internal/jank/InteractionJankMonitor$TimeFunction;

    .line 662
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    .line 663
    .local v0, "now":Ljava/time/Instant;
    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    .line 664
    invoke-virtual {v0}, Ljava/time/Instant;->getNano()I

    move-result v3

    int-to-long v3, v3

    add-long v7, v1, v3

    .line 665
    .local v7, "unixNanos":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v9

    .line 666
    .local v9, "elapsedNanos":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeNanos()J

    move-result-wide v11

    .line 668
    .local v11, "realtimeNanos":J
    iget-object v1, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mWorker:Landroid/os/Handler;

    new-instance v5, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda0;

    move-object v6, p1

    .end local p1    # "logFunction":Lcom/android/internal/jank/InteractionJankMonitor$TimeFunction;
    .local v6, "logFunction":Lcom/android/internal/jank/InteractionJankMonitor$TimeFunction;
    invoke-direct/range {v5 .. v12}, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/jank/InteractionJankMonitor$TimeFunction;JJJ)V

    invoke-virtual {v1, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 669
    return-void
.end method

.method private blacklist putTrackerIfNoCurrent(ILjava/util/function/Supplier;)Lcom/android/internal/jank/InteractionJankMonitor$RunningTracker;
    .registers 7
    .param p1, "cuj"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/Supplier<",
            "Lcom/android/internal/jank/InteractionJankMonitor$RunningTracker;",
            ">;)",
            "Lcom/android/internal/jank/InteractionJankMonitor$RunningTracker;"
        }
    .end annotation

    .line 534
    .local p2, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Lcom/android/internal/jank/InteractionJankMonitor$RunningTracker;>;"
    iget-object v0, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 535
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mRunningTrackers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    .line 536
    monitor-exit v0

    return-object v2

    .line 539
    :cond_e
    invoke-interface {p2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/jank/InteractionJankMonitor$RunningTracker;

    .line 540
    .local v1, "tracker":Lcom/android/internal/jank/InteractionJankMonitor$RunningTracker;
    if-nez v1, :cond_18

    .line 541
    monitor-exit v0

    return-object v2

    .line 544
    :cond_18
    iget-object v2, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mRunningTrackers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 545
    iget-object v2, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mDebugOverlay:Lcom/android/internal/jank/InteractionMonitorDebugOverlay;

    if-eqz v2, :cond_2c

    .line 546
    iget-object v2, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mDebugOverlay:Lcom/android/internal/jank/InteractionMonitorDebugOverlay;

    iget-object v3, v1, Lcom/android/internal/jank/InteractionJankMonitor$RunningTracker;->mTracker:Lcom/android/internal/jank/FrameTracker;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, p1, v3}, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->onTrackerAdded(II)V

    .line 549
    :cond_2c
    monitor-exit v0

    return-object v1

    .line 550
    .end local v1    # "tracker":Lcom/android/internal/jank/InteractionJankMonitor$RunningTracker;
    :catchall_2e
    move-exception v1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_2e

    throw v1
.end method

.method private blacklist removeTrackerIfCurrent(ILcom/android/internal/jank/FrameTracker;I)Z
    .registers 8
    .param p1, "cuj"    # I
    .param p2, "tracker"    # Lcom/android/internal/jank/FrameTracker;
    .param p3, "reason"    # I

    .line 572
    iget-object v0, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 573
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mRunningTrackers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/jank/InteractionJankMonitor$RunningTracker;

    .line 574
    .local v1, "running":Lcom/android/internal/jank/InteractionJankMonitor$RunningTracker;
    if-eqz v1, :cond_32

    iget-object v2, v1, Lcom/android/internal/jank/InteractionJankMonitor$RunningTracker;->mTracker:Lcom/android/internal/jank/FrameTracker;

    if-eq v2, p2, :cond_12

    goto :goto_32

    .line 578
    :cond_12
    iget-object v2, v1, Lcom/android/internal/jank/InteractionJankMonitor$RunningTracker;->mConfig:Lcom/android/internal/jank/InteractionJankMonitor$Configuration;

    invoke-virtual {v2}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->getHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, v1, Lcom/android/internal/jank/InteractionJankMonitor$RunningTracker;->mTimeoutAction:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 579
    iget-object v2, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mRunningTrackers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 580
    iget-object v2, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mDebugOverlay:Lcom/android/internal/jank/InteractionMonitorDebugOverlay;

    if-eqz v2, :cond_2f

    .line 581
    iget-object v2, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mDebugOverlay:Lcom/android/internal/jank/InteractionMonitorDebugOverlay;

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, p1, p3, v3}, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->onTrackerRemoved(III)V

    .line 583
    :cond_2f
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 575
    :cond_32
    :goto_32
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 584
    .end local v1    # "running":Lcom/android/internal/jank/InteractionJankMonitor$RunningTracker;
    :catchall_35
    move-exception v1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_35

    throw v1
.end method

.method private blacklist removeTrackerIfCurrent(Lcom/android/internal/jank/InteractionJankMonitor$RunningTracker;I)Z
    .registers 5
    .param p1, "tracker"    # Lcom/android/internal/jank/InteractionJankMonitor$RunningTracker;
    .param p2, "reason"    # I

    .line 564
    iget-object v0, p1, Lcom/android/internal/jank/InteractionJankMonitor$RunningTracker;->mConfig:Lcom/android/internal/jank/InteractionJankMonitor$Configuration;

    invoke-static {v0}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->-$$Nest$fgetmCujType(Lcom/android/internal/jank/InteractionJankMonitor$Configuration;)I

    move-result v0

    iget-object v1, p1, Lcom/android/internal/jank/InteractionJankMonitor$RunningTracker;->mTracker:Lcom/android/internal/jank/FrameTracker;

    invoke-direct {p0, v0, v1, p2}, Lcom/android/internal/jank/InteractionJankMonitor;->removeTrackerIfCurrent(ILcom/android/internal/jank/FrameTracker;I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public blacklist begin(Landroid/view/SurfaceControl;Landroid/content/Context;Landroid/os/Handler;I)Z
    .registers 8
    .param p1, "surface"    # Landroid/view/SurfaceControl;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "cujType"    # I

    .line 341
    :try_start_0
    invoke-static {p4, p2, p1, p3}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->withSurface(ILandroid/content/Context;Landroid/view/SurfaceControl;Landroid/os/Handler;)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/jank/InteractionJankMonitor;->begin(Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;)Z

    move-result v0
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 342
    :catch_9
    move-exception v0

    .line 343
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    sget-object v1, Lcom/android/internal/jank/InteractionJankMonitor;->TAG:Ljava/lang/String;

    const-string v2, "Build configuration failed!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 344
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist begin(Landroid/view/SurfaceControl;Landroid/content/Context;Landroid/os/Handler;ILjava/lang/String;)Z
    .registers 9
    .param p1, "surface"    # Landroid/view/SurfaceControl;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "cujType"    # I
    .param p5, "tag"    # Ljava/lang/String;

    .line 361
    nop

    .line 362
    :try_start_1
    invoke-static {p4, p2, p1, p3}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->withSurface(ILandroid/content/Context;Landroid/view/SurfaceControl;Landroid/os/Handler;)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;

    move-result-object v0

    .line 363
    .local v0, "builder":Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 364
    invoke-virtual {v0, p5}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->setTag(Ljava/lang/String;)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;

    .line 366
    :cond_e
    invoke-virtual {p0, v0}, Lcom/android/internal/jank/InteractionJankMonitor;->begin(Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;)Z

    move-result v1
    :try_end_12
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_12} :catch_13

    return v1

    .line 367
    .end local v0    # "builder":Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;
    :catch_13
    move-exception v0

    .line 368
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    sget-object v1, Lcom/android/internal/jank/InteractionJankMonitor;->TAG:Ljava/lang/String;

    const-string v2, "Build configuration failed!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 369
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist begin(Landroid/view/View;I)Z
    .registers 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "cujType"    # I

    .line 323
    :try_start_0
    invoke-static {p2, p1}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->withView(ILandroid/view/View;)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/jank/InteractionJankMonitor;->begin(Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;)Z

    move-result v0
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 324
    :catch_9
    move-exception v0

    .line 325
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    sget-object v1, Lcom/android/internal/jank/InteractionJankMonitor;->TAG:Ljava/lang/String;

    const-string v2, "Build configuration failed!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 326
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist begin(Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;)Z
    .registers 9
    .param p1, "builder"    # Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;

    .line 382
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p1}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->build()Lcom/android/internal/jank/InteractionJankMonitor$Configuration;

    move-result-object v1

    .line 383
    .local v1, "config":Lcom/android/internal/jank/InteractionJankMonitor$Configuration;
    new-instance v2, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/jank/InteractionJankMonitor$Configuration;)V

    invoke-direct {p0, v2}, Lcom/android/internal/jank/InteractionJankMonitor;->postEventLogToWorkerThread(Lcom/android/internal/jank/InteractionJankMonitor$TimeFunction;)V

    .line 387
    new-instance v2, Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;-><init>(Lcom/android/internal/jank/InteractionJankMonitor-IA;)V

    .line 388
    .local v2, "result":Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;
    invoke-virtual {v1}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->getHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0, v2, v1}, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/jank/InteractionJankMonitor;Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;Lcom/android/internal/jank/InteractionJankMonitor$Configuration;)V

    const-wide/16 v5, 0x1f4

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    move-result v3

    .line 390
    .local v3, "success":Z
    if-nez v3, :cond_45

    .line 391
    sget-object v4, Lcom/android/internal/jank/InteractionJankMonitor;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "begin failed due to timeout, CUJ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->-$$Nest$fgetmCujType(Lcom/android/internal/jank/InteractionJankMonitor$Configuration;)I

    move-result v6

    invoke-static {v6}, Lcom/android/internal/jank/Cuj;->getNameOfCuj(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    return v0

    .line 394
    :cond_45
    invoke-static {v2}, Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;->-$$Nest$fgetmResult(Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;)Z

    move-result v0
    :try_end_49
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_49} :catch_4a

    return v0

    .line 395
    .end local v1    # "config":Lcom/android/internal/jank/InteractionJankMonitor$Configuration;
    .end local v2    # "result":Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;
    .end local v3    # "success":Z
    :catch_4a
    move-exception v1

    .line 396
    .local v1, "ex":Ljava/lang/IllegalArgumentException;
    sget-object v2, Lcom/android/internal/jank/InteractionJankMonitor;->TAG:Ljava/lang/String;

    const-string v3, "Build configuration failed!"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 397
    return v0
.end method

.method public blacklist cancel(I)Z
    .registers 3
    .param p1, "cujType"    # I

    .line 488
    new-instance v0, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1}, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda5;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/android/internal/jank/InteractionJankMonitor;->postEventLogToWorkerThread(Lcom/android/internal/jank/InteractionJankMonitor$TimeFunction;)V

    .line 492
    const/16 v0, 0x10

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/jank/InteractionJankMonitor;->cancel(II)Z

    move-result v0

    return v0
.end method

.method public blacklist cancel(II)Z
    .registers 10
    .param p1, "cujType"    # I
    .param p2, "reason"    # I

    .line 502
    invoke-direct {p0, p1}, Lcom/android/internal/jank/InteractionJankMonitor;->getTracker(I)Lcom/android/internal/jank/InteractionJankMonitor$RunningTracker;

    move-result-object v0

    .line 504
    .local v0, "tracker":Lcom/android/internal/jank/InteractionJankMonitor$RunningTracker;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 505
    return v1

    .line 508
    :cond_8
    :try_start_8
    new-instance v2, Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;-><init>(Lcom/android/internal/jank/InteractionJankMonitor-IA;)V

    .line 509
    .local v2, "result":Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;
    iget-object v3, v0, Lcom/android/internal/jank/InteractionJankMonitor$RunningTracker;->mConfig:Lcom/android/internal/jank/InteractionJankMonitor$Configuration;

    invoke-virtual {v3}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->getHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda10;

    invoke-direct {v4, p0, v2, v0, p2}, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda10;-><init>(Lcom/android/internal/jank/InteractionJankMonitor;Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;Lcom/android/internal/jank/InteractionJankMonitor$RunningTracker;I)V

    const-wide/16 v5, 0x1f4

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    move-result v3

    .line 511
    .local v3, "success":Z
    if-nez v3, :cond_3e

    .line 512
    sget-object v4, Lcom/android/internal/jank/InteractionJankMonitor;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cancel failed due to timeout, CUJ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Lcom/android/internal/jank/Cuj;->getNameOfCuj(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    return v1

    .line 515
    :cond_3e
    invoke-static {v2}, Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;->-$$Nest$fgetmResult(Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;)Z

    move-result v1
    :try_end_42
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_42} :catch_43

    return v1

    .line 516
    .end local v2    # "result":Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;
    .end local v3    # "success":Z
    :catch_43
    move-exception v2

    .line 517
    .local v2, "ex":Ljava/lang/IllegalArgumentException;
    sget-object v3, Lcom/android/internal/jank/InteractionJankMonitor;->TAG:Ljava/lang/String;

    const-string v4, "Execute cancel task failed!"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 518
    return v1
.end method

.method public blacklist configDebugOverlay(ID)V
    .registers 4
    .param p1, "bgColor"    # I
    .param p2, "yOffset"    # D

    .line 657
    iput p1, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mDebugBgColor:I

    .line 658
    iput-wide p2, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mDebugYOffset:D

    .line 659
    return-void
.end method

.method public blacklist createFrameTracker(Lcom/android/internal/jank/InteractionJankMonitor$Configuration;)Lcom/android/internal/jank/FrameTracker;
    .registers 16
    .param p1, "config"    # Lcom/android/internal/jank/InteractionJankMonitor$Configuration;

    .line 256
    invoke-static {p1}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->-$$Nest$fgetmView(Lcom/android/internal/jank/InteractionJankMonitor$Configuration;)Landroid/view/View;

    move-result-object v0

    .line 259
    .local v0, "view":Landroid/view/View;
    const/4 v1, 0x0

    if-nez v0, :cond_9

    move-object v2, v1

    goto :goto_12

    :cond_9
    new-instance v2, Lcom/android/internal/jank/FrameTracker$ThreadedRendererWrapper;

    invoke-virtual {v0}, Landroid/view/View;->getThreadedRenderer()Landroid/view/ThreadedRenderer;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/jank/FrameTracker$ThreadedRendererWrapper;-><init>(Landroid/view/ThreadedRenderer;)V

    :goto_12
    move-object v5, v2

    .line 261
    .local v5, "threadedRenderer":Lcom/android/internal/jank/FrameTracker$ThreadedRendererWrapper;
    if-nez v0, :cond_16

    goto :goto_1f

    :cond_16
    new-instance v1, Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;

    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;-><init>(Landroid/view/ViewRootImpl;)V

    :goto_1f
    move-object v6, v1

    .line 262
    .local v6, "viewRoot":Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;
    new-instance v7, Lcom/android/internal/jank/FrameTracker$SurfaceControlWrapper;

    invoke-direct {v7}, Lcom/android/internal/jank/FrameTracker$SurfaceControlWrapper;-><init>()V

    .line 263
    .local v7, "surfaceControl":Lcom/android/internal/jank/FrameTracker$SurfaceControlWrapper;
    new-instance v8, Lcom/android/internal/jank/FrameTracker$ChoreographerWrapper;

    .line 264
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v1

    invoke-direct {v8, v1}, Lcom/android/internal/jank/FrameTracker$ChoreographerWrapper;-><init>(Landroid/view/Choreographer;)V

    .line 265
    .local v8, "choreographer":Lcom/android/internal/jank/FrameTracker$ChoreographerWrapper;
    new-instance v13, Lcom/android/internal/jank/InteractionJankMonitor$1;

    invoke-direct {v13, p0, p1}, Lcom/android/internal/jank/InteractionJankMonitor$1;-><init>(Lcom/android/internal/jank/InteractionJankMonitor;Lcom/android/internal/jank/InteractionJankMonitor$Configuration;)V

    .line 278
    .local v13, "eventsListener":Lcom/android/internal/jank/FrameTracker$FrameTrackerListener;
    new-instance v9, Lcom/android/internal/jank/FrameTracker$FrameMetricsWrapper;

    invoke-direct {v9}, Lcom/android/internal/jank/FrameTracker$FrameMetricsWrapper;-><init>()V

    .line 280
    .local v9, "frameMetrics":Lcom/android/internal/jank/FrameTracker$FrameMetricsWrapper;
    new-instance v3, Lcom/android/internal/jank/FrameTracker;

    new-instance v10, Lcom/android/internal/jank/FrameTracker$StatsLogWrapper;

    iget-object v1, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mDisplayResolutionTracker:Lcom/android/internal/jank/DisplayResolutionTracker;

    invoke-direct {v10, v1}, Lcom/android/internal/jank/FrameTracker$StatsLogWrapper;-><init>(Lcom/android/internal/jank/DisplayResolutionTracker;)V

    iget v11, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mTraceThresholdMissedFrames:I

    iget v12, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mTraceThresholdFrameTimeMillis:I

    move-object v4, p1

    .end local p1    # "config":Lcom/android/internal/jank/InteractionJankMonitor$Configuration;
    .local v4, "config":Lcom/android/internal/jank/InteractionJankMonitor$Configuration;
    invoke-direct/range {v3 .. v13}, Lcom/android/internal/jank/FrameTracker;-><init>(Lcom/android/internal/jank/InteractionJankMonitor$Configuration;Lcom/android/internal/jank/FrameTracker$ThreadedRendererWrapper;Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;Lcom/android/internal/jank/FrameTracker$SurfaceControlWrapper;Lcom/android/internal/jank/FrameTracker$ChoreographerWrapper;Lcom/android/internal/jank/FrameTracker$FrameMetricsWrapper;Lcom/android/internal/jank/FrameTracker$StatsLogWrapper;IILcom/android/internal/jank/FrameTracker$FrameTrackerListener;)V

    return-object v3
.end method

.method public blacklist end(I)Z
    .registers 9
    .param p1, "cujType"    # I

    .line 449
    new-instance v0, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda8;

    invoke-direct {v0, p1}, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda8;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/android/internal/jank/InteractionJankMonitor;->postEventLogToWorkerThread(Lcom/android/internal/jank/InteractionJankMonitor$TimeFunction;)V

    .line 453
    invoke-direct {p0, p1}, Lcom/android/internal/jank/InteractionJankMonitor;->getTracker(I)Lcom/android/internal/jank/InteractionJankMonitor$RunningTracker;

    move-result-object v0

    .line 455
    .local v0, "tracker":Lcom/android/internal/jank/InteractionJankMonitor$RunningTracker;
    const/4 v1, 0x0

    if-nez v0, :cond_10

    .line 456
    return v1

    .line 459
    :cond_10
    :try_start_10
    new-instance v2, Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;-><init>(Lcom/android/internal/jank/InteractionJankMonitor-IA;)V

    .line 460
    .local v2, "result":Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;
    iget-object v3, v0, Lcom/android/internal/jank/InteractionJankMonitor$RunningTracker;->mConfig:Lcom/android/internal/jank/InteractionJankMonitor$Configuration;

    invoke-virtual {v3}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->getHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda9;

    invoke-direct {v4, p0, v2, v0}, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda9;-><init>(Lcom/android/internal/jank/InteractionJankMonitor;Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;Lcom/android/internal/jank/InteractionJankMonitor$RunningTracker;)V

    const-wide/16 v5, 0x1f4

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    move-result v3

    .line 462
    .local v3, "success":Z
    if-nez v3, :cond_46

    .line 463
    sget-object v4, Lcom/android/internal/jank/InteractionJankMonitor;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "end failed due to timeout, CUJ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Lcom/android/internal/jank/Cuj;->getNameOfCuj(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    return v1

    .line 466
    :cond_46
    invoke-static {v2}, Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;->-$$Nest$fgetmResult(Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;)Z

    move-result v1
    :try_end_4a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_4a} :catch_4b

    return v1

    .line 467
    .end local v2    # "result":Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;
    .end local v3    # "success":Z
    :catch_4b
    move-exception v2

    .line 468
    .local v2, "ex":Ljava/lang/IllegalArgumentException;
    sget-object v3, Lcom/android/internal/jank/InteractionJankMonitor;->TAG:Ljava/lang/String;

    const-string v4, "Execute end task failed!"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 469
    return v1
.end method

.method public blacklist isInstrumenting(I)Z
    .registers 4
    .param p1, "cujType"    # I

    .line 309
    iget-object v0, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 310
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mRunningTrackers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 311
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public blacklist scheduleTimeoutAction(Lcom/android/internal/jank/InteractionJankMonitor$Configuration;Ljava/lang/Runnable;)V
    .registers 6
    .param p1, "config"    # Lcom/android/internal/jank/InteractionJankMonitor$Configuration;
    .param p2, "action"    # Ljava/lang/Runnable;

    .line 439
    invoke-virtual {p1}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-static {p1}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->-$$Nest$fgetmTimeout(Lcom/android/internal/jank/InteractionJankMonitor$Configuration;)J

    move-result-wide v1

    invoke-virtual {v0, p2, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 440
    return-void
.end method

.method public blacklist shouldMonitor()Z
    .registers 3

    .line 434
    iget-boolean v0, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mEnabled:Z

    if-eqz v0, :cond_12

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mSamplingInterval:I

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt(I)I

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public blacklist updateProperties(Landroid/provider/DeviceConfig$Properties;)V
    .registers 13
    .param p1, "properties"    # Landroid/provider/DeviceConfig$Properties;

    .line 590
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_da

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 591
    .local v1, "property":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x1

    sparse-switch v2, :sswitch_data_dc

    :cond_1e
    goto :goto_54

    :sswitch_1f
    const-string/jumbo v2, "trace_threshold_missed_frames"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    move v2, v5

    goto :goto_55

    :sswitch_2a
    const-string v2, "debug_overlay_enabled"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    const/4 v2, 0x4

    goto :goto_55

    :sswitch_34
    const-string/jumbo v2, "sampling_interval"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    move v2, v3

    goto :goto_55

    :sswitch_3f
    const-string/jumbo v2, "trace_threshold_frame_time_millis"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    const/4 v2, 0x2

    goto :goto_55

    :sswitch_4a
    const-string v2, "enabled"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    move v2, v4

    goto :goto_55

    :goto_54
    const/4 v2, -0x1

    :goto_55
    packed-switch v2, :pswitch_data_f2

    .line 618
    sget-object v2, Lcom/android/internal/jank/InteractionJankMonitor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got a change event for an unknown property: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    .line 619
    invoke-virtual {p1, v1, v4}, Landroid/provider/DeviceConfig$Properties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 618
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d8

    .line 604
    :pswitch_81
    sget-boolean v2, Landroid/os/Build;->IS_USER:Z

    if-eqz v2, :cond_86

    goto :goto_d8

    .line 605
    :cond_86
    invoke-virtual {p1, v1, v3}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 607
    .local v2, "debugOverlayEnabled":Z
    iget-object v3, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 608
    if-eqz v2, :cond_a5

    :try_start_8f
    iget-object v4, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mDebugOverlay:Lcom/android/internal/jank/InteractionMonitorDebugOverlay;

    if-nez v4, :cond_a5

    .line 610
    new-instance v5, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;

    iget-object v6, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mCurrentApplication:Landroid/app/Application;

    iget-object v7, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mWorker:Landroid/os/Handler;

    iget v8, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mDebugBgColor:I

    iget-wide v9, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mDebugYOffset:D

    invoke-direct/range {v5 .. v10}, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;-><init>(Landroid/app/Application;Landroid/os/Handler;ID)V

    iput-object v5, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mDebugOverlay:Lcom/android/internal/jank/InteractionMonitorDebugOverlay;

    goto :goto_b3

    .line 616
    :catchall_a3
    move-exception v0

    goto :goto_b5

    .line 612
    :cond_a5
    if-nez v2, :cond_b3

    iget-object v4, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mDebugOverlay:Lcom/android/internal/jank/InteractionMonitorDebugOverlay;

    if-eqz v4, :cond_b3

    .line 613
    iget-object v4, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mDebugOverlay:Lcom/android/internal/jank/InteractionMonitorDebugOverlay;

    invoke-virtual {v4}, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->dispose()V

    .line 614
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mDebugOverlay:Lcom/android/internal/jank/InteractionMonitorDebugOverlay;

    .line 616
    :cond_b3
    :goto_b3
    monitor-exit v3

    .line 617
    .end local v2    # "debugOverlayEnabled":Z
    goto :goto_d8

    .line 616
    .restart local v2    # "debugOverlayEnabled":Z
    :goto_b5
    monitor-exit v3
    :try_end_b6
    .catchall {:try_start_8f .. :try_end_b6} :catchall_a3

    throw v0

    .line 601
    .end local v2    # "debugOverlayEnabled":Z
    :pswitch_b7
    sget-boolean v2, Lcom/android/internal/jank/InteractionJankMonitor;->DEFAULT_ENABLED:Z

    invoke-virtual {p1, v1, v2}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mEnabled:Z

    goto :goto_d8

    .line 598
    :pswitch_c0
    nop

    .line 599
    const/16 v2, 0x40

    invoke-virtual {p1, v1, v2}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mTraceThresholdFrameTimeMillis:I

    .line 598
    goto :goto_d8

    .line 595
    :pswitch_ca
    nop

    .line 596
    invoke-virtual {p1, v1, v4}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mTraceThresholdMissedFrames:I

    .line 595
    goto :goto_d8

    .line 593
    :pswitch_d2
    invoke-virtual {p1, v1, v5}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mSamplingInterval:I

    .line 621
    .end local v1    # "property":Ljava/lang/String;
    :goto_d8
    goto/16 :goto_8

    .line 622
    :cond_da
    return-void

    nop

    :sswitch_data_dc
    .sparse-switch
        -0x5ff074bf -> :sswitch_4a
        -0x1bae52a8 -> :sswitch_3f
        -0x59dc5e3 -> :sswitch_34
        0x446b0c66 -> :sswitch_2a
        0x5ebc60fc -> :sswitch_1f
    .end sparse-switch

    :pswitch_data_f2
    .packed-switch 0x0
        :pswitch_d2
        :pswitch_ca
        :pswitch_c0
        :pswitch_b7
        :pswitch_81
    .end packed-switch
.end method
