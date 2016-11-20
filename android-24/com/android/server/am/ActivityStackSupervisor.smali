.class public final Lcom/android/server/am/ActivityStackSupervisor;
.super Ljava/lang/Object;
.source "ActivityStackSupervisor.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;,
        Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;,
        Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;,
        Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;,
        Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;,
        Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;,
        Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityDisplay;
    }
.end annotation


# static fields
.field private static final ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final ACTIVITY_RESTRICTION_APPOP:I = 0x2

.field private static final ACTIVITY_RESTRICTION_NONE:I = 0x0

.field private static final ACTIVITY_RESTRICTION_PERMISSION:I = 0x1

.field static final CONTAINER_CALLBACK_TASK_LIST_EMPTY:I = 0x6f

.field static final CONTAINER_CALLBACK_VISIBILITY:I = 0x6c

.field static final CREATE_IF_NEEDED:Z = true

.field static final DEFER_RESUME:Z = true

.field private static final FIT_WITHIN_BOUNDS_DIVIDER:I = 0x3

.field static final FORCE_FOCUS:Z = true

.field static final HANDLE_DISPLAY_ADDED:I = 0x69

.field static final HANDLE_DISPLAY_CHANGED:I = 0x6a

.field static final HANDLE_DISPLAY_REMOVED:I = 0x6b

.field static final IDLE_NOW_MSG:I = 0x65

.field static final IDLE_TIMEOUT:I = 0x2710

.field static final IDLE_TIMEOUT_MSG:I = 0x64

.field static final LAUNCH_TASK_BEHIND_COMPLETE:I = 0x70

.field static final LAUNCH_TIMEOUT:I = 0x2710

.field static final LAUNCH_TIMEOUT_MSG:I = 0x68

.field static final LOCK_TASK_END_MSG:I = 0x6e

.field static final LOCK_TASK_START_MSG:I = 0x6d

.field private static final LOCK_TASK_TAG:Ljava/lang/String; = "Lock-to-App"

.field private static final MAX_TASK_IDS_PER_USER:I = 0x186a0

.field static final MOVING:Z = true

.field static final ON_TOP:Z = true

.field static final PRESERVE_WINDOWS:Z = true

.field static final REPORT_MULTI_WINDOW_MODE_CHANGED_MSG:I = 0x72

.field static final REPORT_PIP_MODE_CHANGED_MSG:I = 0x73

.field static final RESTORE_FROM_RECENTS:Z = true

.field static final RESUME_TOP_ACTIVITY_MSG:I = 0x66

.field static final SHOW_LOCK_TASK_ESCAPE_MESSAGE_MSG:I = 0x71

.field static final SLEEP_TIMEOUT:I = 0x1388

.field static final SLEEP_TIMEOUT_MSG:I = 0x67

.field private static final TAG:Ljava/lang/String;

.field private static final TAG_CONTAINERS:Ljava/lang/String;

.field private static final TAG_IDLE:Ljava/lang/String;

.field private static final TAG_LOCKTASK:Ljava/lang/String;

.field private static final TAG_PAUSE:Ljava/lang/String;

.field private static final TAG_RECENTS:Ljava/lang/String;

.field private static final TAG_RELEASE:Ljava/lang/String;

.field private static final TAG_STACK:Ljava/lang/String;

.field private static final TAG_STATES:Ljava/lang/String;

.field private static final TAG_SWITCH:Ljava/lang/String;

.field static final TAG_TASKS:Ljava/lang/String;

.field private static final TAG_VISIBLE_BEHIND:Ljava/lang/String;

.field static final VALIDATE_WAKE_LOCK_CALLER:Z = false

.field private static final VIRTUAL_DISPLAY_BASE_NAME:Ljava/lang/String; = "ActivityViewVirtualDisplay"


# instance fields
.field inResumeTopActivity:Z

.field private mActivityContainers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;",
            ">;"
        }
    .end annotation
.end field

.field private final mActivityDisplays:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;",
            ">;"
        }
    .end annotation
.end field

.field final mActivityMetricsLogger:Lcom/android/server/am/ActivityMetricsLogger;

.field private mAllowDockedStackResize:Z

.field mAppVisibilitiesChangedSinceLastPause:Z

.field private final mCurTaskIdForUser:Landroid/util/SparseIntArray;

.field mCurrentUser:I

.field mDefaultMinSizeOfResizeableTask:I

.field private mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

.field mDisplayManager:Landroid/hardware/display/DisplayManager;

.field final mFinishingActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field mFocusedStack:Lcom/android/server/am/ActivityStack;

.field mGoingToSleep:Landroid/os/PowerManager$WakeLock;

.field final mGoingToSleepActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

.field mHomeStack:Lcom/android/server/am/ActivityStack;

.field mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

.field mIsDockMinimized:Z

.field private mLastFocusedStack:Lcom/android/server/am/ActivityStack;

.field mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

.field private mLockTaskModeState:I

.field mLockTaskModeTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mLockTaskNotify:Lcom/android/server/am/LockTaskNotify;

.field final mMultiWindowModeChangedActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mNextFreeStackId:I

.field final mPipModeChangedActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mRecentTasks:Lcom/android/server/am/RecentTasks;

.field private final mResizeDockedStackTimeout:Lcom/android/server/am/ResizeDockedStackTimeout;

.field private final mResizingTasksDuringAnimation:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final mService:Lcom/android/server/am/ActivityManagerService;

.field mSleepTimeout:Z

.field final mStartingUsers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/UserState;",
            ">;"
        }
    .end annotation
.end field

.field private mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field final mStoppingActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mTaskLayersChanged:Z

.field private final mTmpBounds:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpConfigs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/content/res/Configuration;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpFindTaskResult:Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;

.field private final mTmpInsetBounds:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private mToken:Landroid/os/IBinder;

.field mUserLeaving:Z

.field mUserStackInFront:Landroid/util/SparseIntArray;

.field final mWaitingActivityLaunched:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/IActivityManager$WaitResult;",
            ">;"
        }
    .end annotation
.end field

.field final mWaitingActivityVisible:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/IActivityManager$WaitResult;",
            ">;"
        }
    .end annotation
.end field

.field final mWaitingVisibleActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field mWindowManager:Lcom/android/server/wm/WindowManagerService;

.field private final tempRect:Landroid/graphics/Rect;

.field private final tempRect2:Landroid/graphics/Rect;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    #@0
    sget-object v0, Lcom/android/server/am/ActivityStackSupervisor;->TAG:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/util/SparseArray;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/am/ActivityStackSupervisor;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeState:I

    #@2
    return v0
.end method

.method static synthetic -get3(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/server/am/LockTaskNotify;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskNotify:Lcom/android/server/am/LockTaskNotify;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/server/am/RecentTasks;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/os/IBinder;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mToken:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/am/ActivityStackSupervisor;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeState:I

    #@2
    return p1
.end method

.method static synthetic -set1(Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/LockTaskNotify;)Lcom/android/server/am/LockTaskNotify;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskNotify:Lcom/android/server/am/LockTaskNotify;

    #@2
    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/app/admin/IDevicePolicyManager;
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getDevicePolicyManager()Landroid/app/admin/IDevicePolicyManager;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/internal/statusbar/IStatusBarService;
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/server/am/ActivityStackSupervisor;I)V
    .locals 0
    .param p1, "displayId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->handleDisplayAdded(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/am/ActivityStackSupervisor;I)V
    .locals 0
    .param p1, "displayId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->handleDisplayChanged(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/am/ActivityStackSupervisor;I)V
    .locals 0
    .param p1, "displayId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->handleDisplayRemoved(I)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 181
    const-string/jumbo v0, "ActivityManager"

    #@3
    sput-object v0, Lcom/android/server/am/ActivityStackSupervisor;->TAG:Ljava/lang/String;

    #@5
    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    sget-object v1, Lcom/android/server/am/ActivityStackSupervisor;->TAG:Ljava/lang/String;

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    sget-object v1, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_CONTAINERS:Ljava/lang/String;

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    sput-object v0, Lcom/android/server/am/ActivityStackSupervisor;->TAG_CONTAINERS:Ljava/lang/String;

    #@1c
    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    sget-object v1, Lcom/android/server/am/ActivityStackSupervisor;->TAG:Ljava/lang/String;

    #@23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v0

    #@27
    sget-object v1, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_IDLE:Ljava/lang/String;

    #@29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v0

    #@2d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v0

    #@31
    sput-object v0, Lcom/android/server/am/ActivityStackSupervisor;->TAG_IDLE:Ljava/lang/String;

    #@33
    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    #@35
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@38
    sget-object v1, Lcom/android/server/am/ActivityStackSupervisor;->TAG:Ljava/lang/String;

    #@3a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v0

    #@3e
    sget-object v1, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_LOCKTASK:Ljava/lang/String;

    #@40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v0

    #@44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v0

    #@48
    sput-object v0, Lcom/android/server/am/ActivityStackSupervisor;->TAG_LOCKTASK:Ljava/lang/String;

    #@4a
    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    #@4c
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@4f
    sget-object v1, Lcom/android/server/am/ActivityStackSupervisor;->TAG:Ljava/lang/String;

    #@51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v0

    #@55
    sget-object v1, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_PAUSE:Ljava/lang/String;

    #@57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v0

    #@5b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e
    move-result-object v0

    #@5f
    sput-object v0, Lcom/android/server/am/ActivityStackSupervisor;->TAG_PAUSE:Ljava/lang/String;

    #@61
    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    #@63
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@66
    sget-object v1, Lcom/android/server/am/ActivityStackSupervisor;->TAG:Ljava/lang/String;

    #@68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v0

    #@6c
    sget-object v1, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_RECENTS:Ljava/lang/String;

    #@6e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v0

    #@72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@75
    move-result-object v0

    #@76
    sput-object v0, Lcom/android/server/am/ActivityStackSupervisor;->TAG_RECENTS:Ljava/lang/String;

    #@78
    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    #@7a
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@7d
    sget-object v1, Lcom/android/server/am/ActivityStackSupervisor;->TAG:Ljava/lang/String;

    #@7f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v0

    #@83
    sget-object v1, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_RELEASE:Ljava/lang/String;

    #@85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v0

    #@89
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8c
    move-result-object v0

    #@8d
    sput-object v0, Lcom/android/server/am/ActivityStackSupervisor;->TAG_RELEASE:Ljava/lang/String;

    #@8f
    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    #@91
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@94
    sget-object v1, Lcom/android/server/am/ActivityStackSupervisor;->TAG:Ljava/lang/String;

    #@96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@99
    move-result-object v0

    #@9a
    sget-object v1, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_STACK:Ljava/lang/String;

    #@9c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9f
    move-result-object v0

    #@a0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a3
    move-result-object v0

    #@a4
    sput-object v0, Lcom/android/server/am/ActivityStackSupervisor;->TAG_STACK:Ljava/lang/String;

    #@a6
    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    #@a8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@ab
    sget-object v1, Lcom/android/server/am/ActivityStackSupervisor;->TAG:Ljava/lang/String;

    #@ad
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v0

    #@b1
    sget-object v1, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_STATES:Ljava/lang/String;

    #@b3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b6
    move-result-object v0

    #@b7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ba
    move-result-object v0

    #@bb
    sput-object v0, Lcom/android/server/am/ActivityStackSupervisor;->TAG_STATES:Ljava/lang/String;

    #@bd
    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    #@bf
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@c2
    sget-object v1, Lcom/android/server/am/ActivityStackSupervisor;->TAG:Ljava/lang/String;

    #@c4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c7
    move-result-object v0

    #@c8
    sget-object v1, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_SWITCH:Ljava/lang/String;

    #@ca
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cd
    move-result-object v0

    #@ce
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d1
    move-result-object v0

    #@d2
    sput-object v0, Lcom/android/server/am/ActivityStackSupervisor;->TAG_SWITCH:Ljava/lang/String;

    #@d4
    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    #@d6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@d9
    sget-object v1, Lcom/android/server/am/ActivityStackSupervisor;->TAG:Ljava/lang/String;

    #@db
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@de
    move-result-object v0

    #@df
    sget-object v1, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_TASKS:Ljava/lang/String;

    #@e1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e4
    move-result-object v0

    #@e5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e8
    move-result-object v0

    #@e9
    sput-object v0, Lcom/android/server/am/ActivityStackSupervisor;->TAG_TASKS:Ljava/lang/String;

    #@eb
    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    #@ed
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@f0
    sget-object v1, Lcom/android/server/am/ActivityStackSupervisor;->TAG:Ljava/lang/String;

    #@f2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f5
    move-result-object v0

    #@f6
    sget-object v1, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_VISIBLE_BEHIND:Ljava/lang/String;

    #@f8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fb
    move-result-object v0

    #@fc
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ff
    move-result-object v0

    #@100
    sput-object v0, Lcom/android/server/am/ActivityStackSupervisor;->TAG_VISIBLE_BEHIND:Ljava/lang/String;

    #@102
    .line 250
    new-instance v0, Landroid/util/ArrayMap;

    #@104
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@107
    .line 249
    sput-object v0, Lcom/android/server/am/ActivityStackSupervisor;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    #@109
    .line 253
    sget-object v0, Lcom/android/server/am/ActivityStackSupervisor;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    #@10b
    const-string/jumbo v1, "android.media.action.IMAGE_CAPTURE"

    #@10e
    .line 254
    const-string/jumbo v2, "android.permission.CAMERA"

    #@111
    .line 253
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@114
    .line 255
    sget-object v0, Lcom/android/server/am/ActivityStackSupervisor;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    #@116
    const-string/jumbo v1, "android.media.action.VIDEO_CAPTURE"

    #@119
    .line 256
    const-string/jumbo v2, "android.permission.CAMERA"

    #@11c
    .line 255
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@11f
    .line 257
    sget-object v0, Lcom/android/server/am/ActivityStackSupervisor;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    #@121
    const-string/jumbo v1, "android.intent.action.CALL"

    #@124
    .line 258
    const-string/jumbo v2, "android.permission.CALL_PHONE"

    #@127
    .line 257
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@12a
    .line 180
    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 4
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 485
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 276
    new-instance v0, Landroid/os/Binder;

    #@7
    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    #@a
    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mToken:Landroid/os/IBinder;

    #@c
    .line 297
    const/4 v0, 0x5

    #@d
    iput v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mNextFreeStackId:I

    #@f
    .line 303
    new-instance v0, Landroid/util/SparseIntArray;

    #@11
    const/16 v1, 0x14

    #@13
    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    #@16
    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurTaskIdForUser:Landroid/util/SparseIntArray;

    #@18
    .line 322
    new-instance v0, Ljava/util/ArrayList;

    #@1a
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@1d
    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    #@1f
    .line 325
    new-instance v0, Ljava/util/ArrayList;

    #@21
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@24
    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingActivityVisible:Ljava/util/ArrayList;

    #@26
    .line 328
    new-instance v0, Ljava/util/ArrayList;

    #@28
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@2b
    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    #@2d
    .line 332
    new-instance v0, Ljava/util/ArrayList;

    #@2f
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@32
    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    #@34
    .line 336
    new-instance v0, Ljava/util/ArrayList;

    #@36
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@39
    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    #@3b
    .line 339
    new-instance v0, Ljava/util/ArrayList;

    #@3d
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@40
    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    #@42
    .line 343
    new-instance v0, Ljava/util/ArrayList;

    #@44
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@47
    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mMultiWindowModeChangedActivities:Ljava/util/ArrayList;

    #@49
    .line 347
    new-instance v0, Ljava/util/ArrayList;

    #@4b
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@4e
    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPipModeChangedActivities:Ljava/util/ArrayList;

    #@50
    .line 350
    new-instance v0, Ljava/util/ArrayList;

    #@52
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@55
    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStartingUsers:Ljava/util/ArrayList;

    #@57
    .line 354
    iput-boolean v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mUserLeaving:Z

    #@59
    .line 357
    iput-boolean v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mSleepTimeout:Z

    #@5b
    .line 375
    new-instance v0, Landroid/util/SparseIntArray;

    #@5d
    const/4 v1, 0x2

    #@5e
    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    #@61
    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mUserStackInFront:Landroid/util/SparseIntArray;

    #@63
    .line 379
    new-instance v0, Landroid/util/SparseArray;

    #@65
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@68
    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityContainers:Landroid/util/SparseArray;

    #@6a
    .line 382
    new-instance v0, Landroid/util/SparseArray;

    #@6c
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@6f
    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    #@71
    .line 389
    new-instance v0, Ljava/util/ArrayList;

    #@73
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@76
    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeTasks:Ljava/util/ArrayList;

    #@78
    .line 404
    new-instance v0, Landroid/graphics/Rect;

    #@7a
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@7d
    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->tempRect:Landroid/graphics/Rect;

    #@7f
    .line 405
    new-instance v0, Landroid/graphics/Rect;

    #@81
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@84
    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->tempRect2:Landroid/graphics/Rect;

    #@86
    .line 407
    new-instance v0, Landroid/util/SparseArray;

    #@88
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@8b
    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpConfigs:Landroid/util/SparseArray;

    #@8d
    .line 408
    new-instance v0, Landroid/util/SparseArray;

    #@8f
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@92
    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpBounds:Landroid/util/SparseArray;

    #@94
    .line 409
    new-instance v0, Landroid/util/SparseArray;

    #@96
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@99
    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpInsetBounds:Landroid/util/SparseArray;

    #@9b
    .line 413
    const/4 v0, -0x1

    #@9c
    iput v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDefaultMinSizeOfResizeableTask:I

    #@9e
    .line 416
    iput-boolean v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTaskLayersChanged:Z

    #@a0
    .line 426
    new-instance v0, Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;

    #@a2
    invoke-direct {v0}, Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;-><init>()V

    #@a5
    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpFindTaskResult:Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;

    #@a7
    .line 437
    new-instance v0, Landroid/util/ArraySet;

    #@a9
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    #@ac
    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mResizingTasksDuringAnimation:Landroid/util/ArraySet;

    #@ae
    .line 446
    iput-boolean v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mAllowDockedStackResize:Z

    #@b0
    .line 486
    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@b2
    .line 487
    new-instance v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    #@b4
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@b6
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    #@b8
    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService$MainHandler;->getLooper()Landroid/os/Looper;

    #@bb
    move-result-object v1

    #@bc
    invoke-direct {v0, p0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;-><init>(Lcom/android/server/am/ActivityStackSupervisor;Landroid/os/Looper;)V

    #@bf
    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    #@c1
    .line 488
    new-instance v0, Lcom/android/server/am/ActivityMetricsLogger;

    #@c3
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@c5
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    #@c7
    invoke-direct {v0, p0, v1}, Lcom/android/server/am/ActivityMetricsLogger;-><init>(Lcom/android/server/am/ActivityStackSupervisor;Landroid/content/Context;)V

    #@ca
    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityMetricsLogger:Lcom/android/server/am/ActivityMetricsLogger;

    #@cc
    .line 489
    new-instance v0, Lcom/android/server/am/ResizeDockedStackTimeout;

    #@ce
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    #@d0
    invoke-direct {v0, p1, p0, v1}, Lcom/android/server/am/ResizeDockedStackTimeout;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityStackSupervisor;Landroid/os/Handler;)V

    #@d3
    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mResizeDockedStackTimeout:Lcom/android/server/am/ResizeDockedStackTimeout;

    #@d5
    .line 485
    return-void
.end method

.method private calculateDefaultMinimalSizeOfResizeableTasks(Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;)V
    .locals 2
    .param p1, "display"    # Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    #@0
    .prologue
    .line 3448
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@2
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@7
    move-result-object v0

    #@8
    .line 3449
    const v1, 0x10500bf

    #@b
    .line 3448
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@e
    move-result v0

    #@f
    .line 3447
    iput v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDefaultMinSizeOfResizeableTask:I

    #@11
    .line 3446
    return-void
.end method

.method private checkFinishBootingLocked()Z
    .locals 4

    #@0
    .prologue
    .line 1595
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@2
    iget-boolean v0, v2, Lcom/android/server/am/ActivityManagerService;->mBooting:Z

    #@4
    .line 1596
    .local v0, "booting":Z
    const/4 v1, 0x0

    #@5
    .line 1597
    .local v1, "enableScreen":Z
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@7
    const/4 v3, 0x0

    #@8
    iput-boolean v3, v2, Lcom/android/server/am/ActivityManagerService;->mBooting:Z

    #@a
    .line 1598
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@c
    iget-boolean v2, v2, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    #@e
    if-nez v2, :cond_0

    #@10
    .line 1599
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@12
    const/4 v3, 0x1

    #@13
    iput-boolean v3, v2, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    #@15
    .line 1600
    const/4 v1, 0x1

    #@16
    .line 1602
    :cond_0
    if-nez v0, :cond_1

    #@18
    if-eqz v1, :cond_2

    #@1a
    .line 1603
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@1c
    invoke-virtual {v2, v0, v1}, Lcom/android/server/am/ActivityManagerService;->postFinishBooting(ZZ)V

    #@1f
    .line 1605
    :cond_2
    return v0
.end method

.method static dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z
    .locals 15
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "label"    # Ljava/lang/String;
    .param p5, "complete"    # Z
    .param p6, "brief"    # Z
    .param p7, "client"    # Z
    .param p8, "dumpPackage"    # Ljava/lang/String;
    .param p9, "needNL"    # Z
    .param p10, "header1"    # Ljava/lang/String;
    .param p11, "header2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/FileDescriptor;",
            "Ljava/io/PrintWriter;",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZZ",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    #@0
    .prologue
    .line 3296
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ActivityRecord;>;"
    const/4 v8, 0x0

    #@1
    .line 3297
    .local v8, "lastTask":Lcom/android/server/am/TaskRecord;
    const/4 v7, 0x0

    #@2
    .line 3298
    .local v7, "innerPrefix":Ljava/lang/String;
    const/4 v2, 0x0

    #@3
    .line 3299
    .local v2, "args":[Ljava/lang/String;
    const/4 v9, 0x0

    #@4
    .line 3300
    .local v9, "printed":Z
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    #@7
    move-result v12

    #@8
    add-int/lit8 v6, v12, -0x1

    #@a
    .end local v2    # "args":[Ljava/lang/String;
    .end local v7    # "innerPrefix":Ljava/lang/String;
    .end local v8    # "lastTask":Lcom/android/server/am/TaskRecord;
    .end local p9    # "needNL":Z
    .end local p10    # "header1":Ljava/lang/String;
    .end local p11    # "header2":Ljava/lang/String;
    .local v6, "i":I
    :goto_0
    if-ltz v6, :cond_e

    #@c
    .line 3301
    move-object/from16 v0, p2

    #@e
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v10

    #@12
    check-cast v10, Lcom/android/server/am/ActivityRecord;

    #@14
    .line 3302
    .local v10, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz p8, :cond_0

    #@16
    iget-object v12, v10, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    #@18
    move-object/from16 v0, p8

    #@1a
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1d
    move-result v12

    #@1e
    if-eqz v12, :cond_8

    #@20
    .line 3305
    :cond_0
    if-nez v7, :cond_1

    #@22
    .line 3306
    new-instance v12, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    move-object/from16 v0, p3

    #@29
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v12

    #@2d
    const-string/jumbo v13, "      "

    #@30
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v12

    #@34
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v7

    #@38
    .line 3307
    .local v7, "innerPrefix":Ljava/lang/String;
    const/4 v12, 0x0

    #@39
    new-array v2, v12, [Ljava/lang/String;

    #@3b
    .line 3309
    .end local v7    # "innerPrefix":Ljava/lang/String;
    :cond_1
    const/4 v9, 0x1

    #@3c
    .line 3310
    if-nez p6, :cond_2

    #@3e
    if-nez p5, :cond_9

    #@40
    invoke-virtual {v10}, Lcom/android/server/am/ActivityRecord;->isInHistory()Z

    #@43
    move-result v12

    #@44
    if-eqz v12, :cond_9

    #@46
    :cond_2
    const/4 v5, 0x0

    #@47
    .line 3311
    .local v5, "full":Z
    :goto_1
    if-eqz p9, :cond_3

    #@49
    .line 3312
    const-string/jumbo v12, ""

    #@4c
    move-object/from16 v0, p1

    #@4e
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@51
    .line 3313
    const/16 p9, 0x0

    #@53
    .line 3315
    :cond_3
    if-eqz p10, :cond_4

    #@55
    .line 3316
    move-object/from16 v0, p1

    #@57
    move-object/from16 v1, p10

    #@59
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@5c
    .line 3317
    const/16 p10, 0x0

    #@5e
    .line 3319
    :cond_4
    if-eqz p11, :cond_5

    #@60
    .line 3320
    move-object/from16 v0, p1

    #@62
    move-object/from16 v1, p11

    #@64
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@67
    .line 3321
    const/16 p11, 0x0

    #@69
    .line 3323
    :cond_5
    iget-object v12, v10, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@6b
    if-eq v8, v12, :cond_6

    #@6d
    .line 3324
    iget-object v8, v10, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@6f
    .line 3325
    .local v8, "lastTask":Lcom/android/server/am/TaskRecord;
    move-object/from16 v0, p1

    #@71
    move-object/from16 v1, p3

    #@73
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@76
    .line 3326
    if-eqz v5, :cond_a

    #@78
    const-string/jumbo v12, "* "

    #@7b
    :goto_2
    move-object/from16 v0, p1

    #@7d
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@80
    .line 3327
    move-object/from16 v0, p1

    #@82
    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@85
    .line 3328
    if-eqz v5, :cond_b

    #@87
    .line 3329
    new-instance v12, Ljava/lang/StringBuilder;

    #@89
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@8c
    move-object/from16 v0, p3

    #@8e
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@91
    move-result-object v12

    #@92
    const-string/jumbo v13, "  "

    #@95
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@98
    move-result-object v12

    #@99
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9c
    move-result-object v12

    #@9d
    move-object/from16 v0, p1

    #@9f
    invoke-virtual {v8, v0, v12}, Lcom/android/server/am/TaskRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    #@a2
    .line 3338
    .end local v8    # "lastTask":Lcom/android/server/am/TaskRecord;
    :cond_6
    :goto_3
    move-object/from16 v0, p1

    #@a4
    move-object/from16 v1, p3

    #@a6
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@a9
    if-eqz v5, :cond_c

    #@ab
    const-string/jumbo v12, "  * "

    #@ae
    :goto_4
    move-object/from16 v0, p1

    #@b0
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@b3
    move-object/from16 v0, p1

    #@b5
    move-object/from16 v1, p4

    #@b7
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@ba
    .line 3339
    const-string/jumbo v12, " #"

    #@bd
    move-object/from16 v0, p1

    #@bf
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@c2
    move-object/from16 v0, p1

    #@c4
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(I)V

    #@c7
    const-string/jumbo v12, ": "

    #@ca
    move-object/from16 v0, p1

    #@cc
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@cf
    .line 3340
    move-object/from16 v0, p1

    #@d1
    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@d4
    .line 3341
    if-eqz v5, :cond_d

    #@d6
    .line 3342
    move-object/from16 v0, p1

    #@d8
    invoke-virtual {v10, v0, v7}, Lcom/android/server/am/ActivityRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    #@db
    .line 3350
    :cond_7
    :goto_5
    if-eqz p7, :cond_8

    #@dd
    iget-object v12, v10, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@df
    if-eqz v12, :cond_8

    #@e1
    iget-object v12, v10, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@e3
    iget-object v12, v12, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@e5
    if-eqz v12, :cond_8

    #@e7
    .line 3353
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->flush()V

    #@ea
    .line 3355
    :try_start_0
    new-instance v11, Lcom/android/internal/os/TransferPipe;

    #@ec
    invoke-direct {v11}, Lcom/android/internal/os/TransferPipe;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    #@ef
    .line 3357
    .local v11, "tp":Lcom/android/internal/os/TransferPipe;
    :try_start_1
    iget-object v12, v10, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@f1
    iget-object v12, v12, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@f3
    invoke-virtual {v11}, Lcom/android/internal/os/TransferPipe;->getWriteFd()Landroid/os/ParcelFileDescriptor;

    #@f6
    move-result-object v13

    #@f7
    invoke-virtual {v13}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@fa
    move-result-object v13

    #@fb
    .line 3358
    iget-object v14, v10, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@fd
    .line 3357
    invoke-interface {v12, v13, v14, v7, v2}, Landroid/app/IApplicationThread;->dumpActivity(Ljava/io/FileDescriptor;Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;)V

    #@100
    .line 3361
    const-wide/16 v12, 0x7d0

    #@102
    invoke-virtual {v11, p0, v12, v13}, Lcom/android/internal/os/TransferPipe;->go(Ljava/io/FileDescriptor;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@105
    .line 3363
    :try_start_2
    invoke-virtual {v11}, Lcom/android/internal/os/TransferPipe;->kill()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    #@108
    .line 3370
    .end local v11    # "tp":Lcom/android/internal/os/TransferPipe;
    :goto_6
    const/16 p9, 0x1

    #@10a
    .line 3300
    .end local v5    # "full":Z
    :cond_8
    add-int/lit8 v6, v6, -0x1

    #@10c
    goto/16 :goto_0

    #@10e
    .line 3310
    :cond_9
    const/4 v5, 0x1

    #@10f
    .restart local v5    # "full":Z
    goto/16 :goto_1

    #@111
    .line 3326
    .restart local v8    # "lastTask":Lcom/android/server/am/TaskRecord;
    :cond_a
    const-string/jumbo v12, "  "

    #@114
    goto/16 :goto_2

    #@116
    .line 3330
    :cond_b
    if-eqz p5, :cond_6

    #@118
    .line 3332
    iget-object v12, v8, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    #@11a
    if-eqz v12, :cond_6

    #@11c
    .line 3333
    move-object/from16 v0, p1

    #@11e
    move-object/from16 v1, p3

    #@120
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@123
    const-string/jumbo v12, "  "

    #@126
    move-object/from16 v0, p1

    #@128
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@12b
    .line 3334
    iget-object v12, v8, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    #@12d
    invoke-virtual {v12}, Landroid/content/Intent;->toInsecureStringWithClip()Ljava/lang/String;

    #@130
    move-result-object v12

    #@131
    move-object/from16 v0, p1

    #@133
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@136
    goto/16 :goto_3

    #@138
    .line 3338
    .end local v8    # "lastTask":Lcom/android/server/am/TaskRecord;
    :cond_c
    const-string/jumbo v12, "    "

    #@13b
    goto/16 :goto_4

    #@13d
    .line 3343
    :cond_d
    if-eqz p5, :cond_7

    #@13f
    .line 3345
    move-object/from16 v0, p1

    #@141
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@144
    iget-object v12, v10, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    #@146
    invoke-virtual {v12}, Landroid/content/Intent;->toInsecureString()Ljava/lang/String;

    #@149
    move-result-object v12

    #@14a
    move-object/from16 v0, p1

    #@14c
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@14f
    .line 3346
    iget-object v12, v10, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@151
    if-eqz v12, :cond_7

    #@153
    .line 3347
    move-object/from16 v0, p1

    #@155
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@158
    iget-object v12, v10, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@15a
    move-object/from16 v0, p1

    #@15c
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@15f
    goto/16 :goto_5

    #@161
    .line 3362
    .restart local v11    # "tp":Lcom/android/internal/os/TransferPipe;
    :catchall_0
    move-exception v12

    #@162
    .line 3363
    :try_start_3
    invoke-virtual {v11}, Lcom/android/internal/os/TransferPipe;->kill()V

    #@165
    .line 3362
    throw v12
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    #@166
    .line 3365
    .end local v11    # "tp":Lcom/android/internal/os/TransferPipe;
    :catch_0
    move-exception v4

    #@167
    .line 3366
    .local v4, "e":Ljava/io/IOException;
    new-instance v12, Ljava/lang/StringBuilder;

    #@169
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@16c
    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16f
    move-result-object v12

    #@170
    const-string/jumbo v13, "Failure while dumping the activity: "

    #@173
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@176
    move-result-object v12

    #@177
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@17a
    move-result-object v12

    #@17b
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17e
    move-result-object v12

    #@17f
    move-object/from16 v0, p1

    #@181
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@184
    goto :goto_6

    #@185
    .line 3367
    .end local v4    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v3

    #@186
    .line 3368
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v12, Ljava/lang/StringBuilder;

    #@188
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@18b
    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18e
    move-result-object v12

    #@18f
    const-string/jumbo v13, "Got a RemoteException while dumping the activity"

    #@192
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@195
    move-result-object v12

    #@196
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@199
    move-result-object v12

    #@19a
    move-object/from16 v0, p1

    #@19c
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@19f
    goto/16 :goto_6

    #@1a1
    .line 3373
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v5    # "full":Z
    .end local v10    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_e
    return v9
.end method

.method private static fitWithinBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 6
    .param p0, "bounds"    # Landroid/graphics/Rect;
    .param p1, "stackBounds"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 4385
    if-eqz p1, :cond_0

    #@2
    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    #@5
    move-result v4

    #@6
    if-eqz v4, :cond_1

    #@8
    .line 4386
    :cond_0
    return-void

    #@9
    .line 4389
    :cond_1
    iget v4, p0, Landroid/graphics/Rect;->left:I

    #@b
    iget v5, p1, Landroid/graphics/Rect;->left:I

    #@d
    if-lt v4, v5, :cond_2

    #@f
    iget v4, p0, Landroid/graphics/Rect;->right:I

    #@11
    iget v5, p1, Landroid/graphics/Rect;->right:I

    #@13
    if-le v4, v5, :cond_4

    #@15
    .line 4390
    :cond_2
    iget v4, p1, Landroid/graphics/Rect;->right:I

    #@17
    .line 4391
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    #@1a
    move-result v5

    #@1b
    div-int/lit8 v5, v5, 0x3

    #@1d
    .line 4390
    sub-int v2, v4, v5

    #@1f
    .line 4392
    .local v2, "maxRight":I
    iget v4, p1, Landroid/graphics/Rect;->left:I

    #@21
    iget v5, p0, Landroid/graphics/Rect;->left:I

    #@23
    sub-int v0, v4, v5

    #@25
    .line 4393
    .local v0, "horizontalDiff":I
    if-gez v0, :cond_8

    #@27
    iget v4, p0, Landroid/graphics/Rect;->left:I

    #@29
    if-lt v4, v2, :cond_8

    #@2b
    .line 4395
    :goto_0
    iget v4, p0, Landroid/graphics/Rect;->left:I

    #@2d
    sub-int v0, v2, v4

    #@2f
    .line 4397
    :cond_3
    iget v4, p0, Landroid/graphics/Rect;->left:I

    #@31
    add-int/2addr v4, v0

    #@32
    iput v4, p0, Landroid/graphics/Rect;->left:I

    #@34
    .line 4398
    iget v4, p0, Landroid/graphics/Rect;->right:I

    #@36
    add-int/2addr v4, v0

    #@37
    iput v4, p0, Landroid/graphics/Rect;->right:I

    #@39
    .line 4401
    .end local v0    # "horizontalDiff":I
    .end local v2    # "maxRight":I
    :cond_4
    iget v4, p0, Landroid/graphics/Rect;->top:I

    #@3b
    iget v5, p1, Landroid/graphics/Rect;->top:I

    #@3d
    if-lt v4, v5, :cond_5

    #@3f
    iget v4, p0, Landroid/graphics/Rect;->bottom:I

    #@41
    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    #@43
    if-le v4, v5, :cond_7

    #@45
    .line 4402
    :cond_5
    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    #@47
    .line 4403
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    #@4a
    move-result v5

    #@4b
    div-int/lit8 v5, v5, 0x3

    #@4d
    .line 4402
    sub-int v1, v4, v5

    #@4f
    .line 4404
    .local v1, "maxBottom":I
    iget v4, p1, Landroid/graphics/Rect;->top:I

    #@51
    iget v5, p0, Landroid/graphics/Rect;->top:I

    #@53
    sub-int v3, v4, v5

    #@55
    .line 4405
    .local v3, "verticalDiff":I
    if-gez v3, :cond_9

    #@57
    iget v4, p0, Landroid/graphics/Rect;->top:I

    #@59
    if-lt v4, v1, :cond_9

    #@5b
    .line 4407
    :goto_1
    iget v4, p0, Landroid/graphics/Rect;->top:I

    #@5d
    sub-int v3, v1, v4

    #@5f
    .line 4409
    :cond_6
    iget v4, p0, Landroid/graphics/Rect;->top:I

    #@61
    add-int/2addr v4, v3

    #@62
    iput v4, p0, Landroid/graphics/Rect;->top:I

    #@64
    .line 4410
    iget v4, p0, Landroid/graphics/Rect;->bottom:I

    #@66
    add-int/2addr v4, v3

    #@67
    iput v4, p0, Landroid/graphics/Rect;->bottom:I

    #@69
    .line 4384
    .end local v1    # "maxBottom":I
    .end local v3    # "verticalDiff":I
    :cond_7
    return-void

    #@6a
    .line 4394
    .restart local v0    # "horizontalDiff":I
    .restart local v2    # "maxRight":I
    :cond_8
    iget v4, p0, Landroid/graphics/Rect;->left:I

    #@6c
    add-int/2addr v4, v0

    #@6d
    if-lt v4, v2, :cond_3

    #@6f
    goto :goto_0

    #@70
    .line 4406
    .end local v0    # "horizontalDiff":I
    .end local v2    # "maxRight":I
    .restart local v1    # "maxBottom":I
    .restart local v3    # "verticalDiff":I
    :cond_9
    iget v4, p0, Landroid/graphics/Rect;->top:I

    #@72
    add-int/2addr v4, v3

    #@73
    if-lt v4, v1, :cond_6

    #@75
    goto :goto_1
.end method

.method private getActionRestrictionForCallingPackage(Ljava/lang/String;Ljava/lang/String;II)I
    .locals 8
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingPid"    # I
    .param p4, "callingUid"    # I

    #@0
    .prologue
    const/4 v6, -0x1

    #@1
    const/4 v7, 0x0

    #@2
    .line 1521
    if-nez p1, :cond_0

    #@4
    .line 1522
    return v7

    #@5
    .line 1525
    :cond_0
    sget-object v4, Lcom/android/server/am/ActivityStackSupervisor;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    #@7
    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    move-result-object v3

    #@b
    check-cast v3, Ljava/lang/String;

    #@d
    .line 1526
    .local v3, "permission":Ljava/lang/String;
    if-nez v3, :cond_1

    #@f
    .line 1527
    return v7

    #@10
    .line 1532
    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@12
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    #@14
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@17
    move-result-object v4

    #@18
    .line 1533
    const/16 v5, 0x1000

    #@1a
    .line 1532
    invoke-virtual {v4, p2, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@1d
    move-result-object v2

    #@1e
    .line 1539
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    #@20
    invoke-static {v4, v3}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    #@23
    move-result v4

    #@24
    if-nez v4, :cond_2

    #@26
    .line 1540
    return v7

    #@27
    .line 1534
    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    #@28
    .line 1535
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v4, Lcom/android/server/am/ActivityStackSupervisor;->TAG:Ljava/lang/String;

    #@2a
    new-instance v5, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    const-string/jumbo v6, "Cannot find package info for "

    #@32
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v5

    #@36
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v5

    #@3a
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v5

    #@3e
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@41
    .line 1536
    return v7

    #@42
    .line 1543
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_2
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@44
    invoke-virtual {v4, v3, p3, p4}, Lcom/android/server/am/ActivityManagerService;->checkPermission(Ljava/lang/String;II)I

    #@47
    move-result v4

    #@48
    if-ne v4, v6, :cond_3

    #@4a
    .line 1545
    const/4 v4, 0x1

    #@4b
    return v4

    #@4c
    .line 1548
    :cond_3
    invoke-static {v3}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    #@4f
    move-result v1

    #@50
    .line 1549
    .local v1, "opCode":I
    if-ne v1, v6, :cond_4

    #@52
    .line 1550
    return v7

    #@53
    .line 1553
    :cond_4
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@55
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/AppOpsService;

    #@57
    invoke-virtual {v4, v1, p4, p2}, Lcom/android/server/AppOpsService;->noteOperation(IILjava/lang/String;)I

    #@5a
    move-result v4

    #@5b
    if-eqz v4, :cond_5

    #@5d
    .line 1555
    const/4 v4, 0x2

    #@5e
    return v4

    #@5f
    .line 1558
    :cond_5
    return v7
.end method

.method private getComponentRestrictionForCallingPackage(Landroid/content/pm/ActivityInfo;Ljava/lang/String;IIZ)I
    .locals 9
    .param p1, "activityInfo"    # Landroid/content/pm/ActivityInfo;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingPid"    # I
    .param p4, "callingUid"    # I
    .param p5, "ignoreTargetSecurity"    # Z

    #@0
    .prologue
    const/4 v8, -0x1

    #@1
    const/4 v7, 0x0

    #@2
    .line 1494
    if-nez p5, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@6
    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    #@8
    .line 1495
    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@a
    iget v4, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    #@c
    iget-boolean v5, p1, Landroid/content/pm/ActivityInfo;->exported:Z

    #@e
    move v2, p3

    #@f
    move v3, p4

    #@10
    .line 1494
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    #@13
    move-result v0

    #@14
    if-ne v0, v8, :cond_0

    #@16
    .line 1497
    const/4 v0, 0x1

    #@17
    return v0

    #@18
    .line 1500
    :cond_0
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    #@1a
    if-nez v0, :cond_1

    #@1c
    .line 1501
    return v7

    #@1d
    .line 1504
    :cond_1
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    #@1f
    invoke-static {v0}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    #@22
    move-result v6

    #@23
    .line 1505
    .local v6, "opCode":I
    if-ne v6, v8, :cond_2

    #@25
    .line 1506
    return v7

    #@26
    .line 1509
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@28
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/AppOpsService;

    #@2a
    invoke-virtual {v0, v6, p4, p2}, Lcom/android/server/AppOpsService;->noteOperation(IILjava/lang/String;)I

    #@2d
    move-result v0

    #@2e
    if-eqz v0, :cond_3

    #@30
    .line 1511
    if-nez p5, :cond_3

    #@32
    .line 1512
    const/4 v0, 0x2

    #@33
    return v0

    #@34
    .line 1516
    :cond_3
    return v7
.end method

.method private getDevicePolicyManager()Landroid/app/admin/IDevicePolicyManager;
    .locals 3

    #@0
    .prologue
    .line 523
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@2
    monitor-enter v1

    #@3
    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@6
    .line 524
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    #@8
    if-nez v0, :cond_0

    #@a
    .line 526
    const-string/jumbo v0, "device_policy"

    #@d
    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    #@10
    move-result-object v0

    #@11
    .line 525
    invoke-static {v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    #@14
    move-result-object v0

    #@15
    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    #@17
    .line 527
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    #@19
    if-nez v0, :cond_0

    #@1b
    .line 528
    sget-object v0, Lcom/android/server/am/ActivityStackSupervisor;->TAG:Ljava/lang/String;

    #@1d
    const-string/jumbo v2, "warning: no DEVICE_POLICY_SERVICE"

    #@20
    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@23
    .line 531
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    monitor-exit v1

    #@26
    .line 523
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@29
    .line 531
    return-object v0

    #@2a
    .line 523
    :catchall_0
    move-exception v0

    #@2b
    monitor-exit v1

    #@2c
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@2f
    throw v0
.end method

.method private getStackInfoLocked(Lcom/android/server/am/ActivityStack;)Landroid/app/ActivityManager$StackInfo;
    .locals 14
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;

    #@0
    .prologue
    .line 3477
    iget-object v11, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    #@2
    const/4 v12, 0x0

    #@3
    invoke-virtual {v11, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    #@9
    .line 3478
    .local v0, "display":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    new-instance v2, Landroid/app/ActivityManager$StackInfo;

    #@b
    invoke-direct {v2}, Landroid/app/ActivityManager$StackInfo;-><init>()V

    #@e
    .line 3479
    .local v2, "info":Landroid/app/ActivityManager$StackInfo;
    iget-object v11, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@10
    iget v12, p1, Lcom/android/server/am/ActivityStack;->mStackId:I

    #@12
    iget-object v13, v2, Landroid/app/ActivityManager$StackInfo;->bounds:Landroid/graphics/Rect;

    #@14
    invoke-virtual {v11, v12, v13}, Lcom/android/server/wm/WindowManagerService;->getStackBounds(ILandroid/graphics/Rect;)V

    #@17
    .line 3480
    const/4 v11, 0x0

    #@18
    iput v11, v2, Landroid/app/ActivityManager$StackInfo;->displayId:I

    #@1a
    .line 3481
    iget v11, p1, Lcom/android/server/am/ActivityStack;->mStackId:I

    #@1c
    iput v11, v2, Landroid/app/ActivityManager$StackInfo;->stackId:I

    #@1e
    .line 3482
    iget v11, p1, Lcom/android/server/am/ActivityStack;->mCurrentUser:I

    #@20
    iput v11, v2, Landroid/app/ActivityManager$StackInfo;->userId:I

    #@22
    .line 3483
    const/4 v11, 0x0

    #@23
    invoke-virtual {p1, v11}, Lcom/android/server/am/ActivityStack;->getStackVisibilityLocked(Lcom/android/server/am/ActivityRecord;)I

    #@26
    move-result v11

    #@27
    const/4 v12, 0x1

    #@28
    if-ne v11, v12, :cond_0

    #@2a
    const/4 v11, 0x1

    #@2b
    :goto_0
    iput-boolean v11, v2, Landroid/app/ActivityManager$StackInfo;->visible:Z

    #@2d
    .line 3484
    if-eqz v0, :cond_1

    #@2f
    .line 3485
    iget-object v11, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    #@31
    invoke-virtual {v11, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    #@34
    move-result v11

    #@35
    .line 3484
    :goto_1
    iput v11, v2, Landroid/app/ActivityManager$StackInfo;->position:I

    #@37
    .line 3488
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    #@3a
    move-result-object v9

    #@3b
    .line 3489
    .local v9, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    #@3e
    move-result v3

    #@3f
    .line 3490
    .local v3, "numTasks":I
    new-array v6, v3, [I

    #@41
    .line 3491
    .local v6, "taskIds":[I
    new-array v7, v3, [Ljava/lang/String;

    #@43
    .line 3492
    .local v7, "taskNames":[Ljava/lang/String;
    new-array v5, v3, [Landroid/graphics/Rect;

    #@45
    .line 3493
    .local v5, "taskBounds":[Landroid/graphics/Rect;
    new-array v8, v3, [I

    #@47
    .line 3494
    .local v8, "taskUserIds":[I
    const/4 v1, 0x0

    #@48
    .local v1, "i":I
    :goto_2
    if-ge v1, v3, :cond_5

    #@4a
    .line 3495
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@4d
    move-result-object v4

    #@4e
    check-cast v4, Lcom/android/server/am/TaskRecord;

    #@50
    .line 3496
    .local v4, "task":Lcom/android/server/am/TaskRecord;
    iget v11, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    #@52
    aput v11, v6, v1

    #@54
    .line 3497
    iget-object v11, v4, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    #@56
    if-eqz v11, :cond_2

    #@58
    iget-object v11, v4, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    #@5a
    invoke-virtual {v11}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    #@5d
    move-result-object v11

    #@5e
    :goto_3
    aput-object v11, v7, v1

    #@60
    .line 3501
    new-instance v11, Landroid/graphics/Rect;

    #@62
    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    #@65
    aput-object v11, v5, v1

    #@67
    .line 3502
    iget-object v11, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@69
    iget v12, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    #@6b
    aget-object v13, v5, v1

    #@6d
    invoke-virtual {v11, v12, v13}, Lcom/android/server/wm/WindowManagerService;->getTaskBounds(ILandroid/graphics/Rect;)V

    #@70
    .line 3503
    iget v11, v4, Lcom/android/server/am/TaskRecord;->userId:I

    #@72
    aput v11, v8, v1

    #@74
    .line 3494
    add-int/lit8 v1, v1, 0x1

    #@76
    goto :goto_2

    #@77
    .line 3483
    .end local v1    # "i":I
    .end local v3    # "numTasks":I
    .end local v4    # "task":Lcom/android/server/am/TaskRecord;
    .end local v5    # "taskBounds":[Landroid/graphics/Rect;
    .end local v6    # "taskIds":[I
    .end local v7    # "taskNames":[Ljava/lang/String;
    .end local v8    # "taskUserIds":[I
    .end local v9    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    :cond_0
    const/4 v11, 0x0

    #@78
    goto :goto_0

    #@79
    .line 3486
    :cond_1
    const/4 v11, 0x0

    #@7a
    goto :goto_1

    #@7b
    .line 3498
    .restart local v1    # "i":I
    .restart local v3    # "numTasks":I
    .restart local v4    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v5    # "taskBounds":[Landroid/graphics/Rect;
    .restart local v6    # "taskIds":[I
    .restart local v7    # "taskNames":[Ljava/lang/String;
    .restart local v8    # "taskUserIds":[I
    .restart local v9    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    :cond_2
    iget-object v11, v4, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    #@7d
    if-eqz v11, :cond_3

    #@7f
    iget-object v11, v4, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    #@81
    invoke-virtual {v11}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    #@84
    move-result-object v11

    #@85
    goto :goto_3

    #@86
    .line 3499
    :cond_3
    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    #@89
    move-result-object v11

    #@8a
    if-eqz v11, :cond_4

    #@8c
    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    #@8f
    move-result-object v11

    #@90
    iget-object v11, v11, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    #@92
    goto :goto_3

    #@93
    .line 3500
    :cond_4
    const-string/jumbo v11, "unknown"

    #@96
    goto :goto_3

    #@97
    .line 3505
    .end local v4    # "task":Lcom/android/server/am/TaskRecord;
    :cond_5
    iput-object v6, v2, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    #@99
    .line 3506
    iput-object v7, v2, Landroid/app/ActivityManager$StackInfo;->taskNames:[Ljava/lang/String;

    #@9b
    .line 3507
    iput-object v5, v2, Landroid/app/ActivityManager$StackInfo;->taskBounds:[Landroid/graphics/Rect;

    #@9d
    .line 3508
    iput-object v8, v2, Landroid/app/ActivityManager$StackInfo;->taskUserIds:[I

    #@9f
    .line 3510
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    #@a2
    move-result-object v10

    #@a3
    .line 3511
    .local v10, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v10, :cond_6

    #@a5
    iget-object v11, v10, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    #@a7
    invoke-virtual {v11}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@aa
    move-result-object v11

    #@ab
    :goto_4
    iput-object v11, v2, Landroid/app/ActivityManager$StackInfo;->topActivity:Landroid/content/ComponentName;

    #@ad
    .line 3512
    return-object v2

    #@ae
    .line 3511
    :cond_6
    const/4 v11, 0x0

    #@af
    goto :goto_4
.end method

.method private getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    .locals 3

    #@0
    .prologue
    .line 510
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@2
    monitor-enter v1

    #@3
    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@6
    .line 511
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    #@8
    if-nez v0, :cond_0

    #@a
    .line 513
    const-string/jumbo v0, "statusbar"

    #@d
    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    #@10
    move-result-object v0

    #@11
    .line 512
    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    #@14
    move-result-object v0

    #@15
    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    #@17
    .line 514
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    #@19
    if-nez v0, :cond_0

    #@1b
    .line 515
    const-string/jumbo v0, "StatusBarManager"

    #@1e
    const-string/jumbo v2, "warning: no STATUS_BAR_SERVICE"

    #@21
    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@24
    .line 518
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    monitor-exit v1

    #@27
    .line 510
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@2a
    .line 518
    return-object v0

    #@2b
    .line 510
    :catchall_0
    move-exception v0

    #@2c
    monitor-exit v1

    #@2d
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@30
    throw v0
.end method

.method private handleDisplayAdded(I)V
    .locals 6
    .param p1, "displayId"    # I

    #@0
    .prologue
    .line 3429
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@2
    monitor-enter v3

    #@3
    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@6
    .line 3430
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    #@8
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@b
    move-result-object v2

    #@c
    if-nez v2, :cond_0

    #@e
    const/4 v1, 0x1

    #@f
    .line 3431
    .local v1, "newDisplay":Z
    :goto_0
    if-eqz v1, :cond_2

    #@11
    .line 3432
    new-instance v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    #@13
    invoke-direct {v0, p0, p1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;-><init>(Lcom/android/server/am/ActivityStackSupervisor;I)V

    #@16
    .line 3433
    .local v0, "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplay:Landroid/view/Display;

    #@18
    if-nez v2, :cond_1

    #@1a
    .line 3434
    sget-object v2, Lcom/android/server/am/ActivityStackSupervisor;->TAG:Ljava/lang/String;

    #@1c
    new-instance v4, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v5, "Display "

    #@24
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v4

    #@28
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v4

    #@2c
    const-string/jumbo v5, " gone before initialization complete"

    #@2f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v4

    #@33
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v4

    #@37
    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3a
    monitor-exit v3

    #@3b
    .line 3429
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@3e
    .line 3435
    return-void

    #@3f
    .line 3430
    .end local v0    # "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    .end local v1    # "newDisplay":Z
    :cond_0
    const/4 v1, 0x0

    #@40
    .restart local v1    # "newDisplay":Z
    goto :goto_0

    #@41
    .line 3437
    .restart local v0    # "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    #@43
    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@46
    .line 3438
    invoke-direct {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->calculateDefaultMinimalSizeOfResizeableTasks(Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@49
    .end local v0    # "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    :cond_2
    monitor-exit v3

    #@4a
    .line 3429
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@4d
    .line 3441
    if-eqz v1, :cond_3

    #@4f
    .line 3442
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@51
    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowManagerService;->onDisplayAdded(I)V

    #@54
    .line 3427
    :cond_3
    return-void

    #@55
    .line 3429
    .end local v1    # "newDisplay":Z
    :catchall_0
    move-exception v2

    #@56
    monitor-exit v3

    #@57
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@5a
    throw v2
.end method

.method private handleDisplayChanged(I)V
    .locals 3
    .param p1, "displayId"    # I

    #@0
    .prologue
    .line 3467
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@2
    monitor-enter v2

    #@3
    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@6
    .line 3468
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    #@8
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    .line 3469
    .local v0, "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    if-eqz v0, :cond_0

    #@10
    :cond_0
    monitor-exit v2

    #@11
    .line 3467
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@14
    .line 3473
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@16
    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowManagerService;->onDisplayChanged(I)V

    #@19
    .line 3466
    return-void

    #@1a
    .line 3467
    .end local v0    # "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    :catchall_0
    move-exception v1

    #@1b
    monitor-exit v2

    #@1c
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@1f
    throw v1
.end method

.method private handleDisplayRemoved(I)V
    .locals 5
    .param p1, "displayId"    # I

    #@0
    .prologue
    .line 3453
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@2
    monitor-enter v4

    #@3
    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@6
    .line 3454
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    #@8
    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    #@e
    .line 3455
    .local v0, "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    if-eqz v0, :cond_1

    #@10
    .line 3456
    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    #@12
    .line 3457
    .local v2, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@15
    move-result v3

    #@16
    add-int/lit8 v1, v3, -0x1

    #@18
    .local v1, "stackNdx":I
    :goto_0
    if-ltz v1, :cond_0

    #@1a
    .line 3458
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1d
    move-result-object v3

    #@1e
    check-cast v3, Lcom/android/server/am/ActivityStack;

    #@20
    iget-object v3, v3, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    #@22
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->detachLocked()V

    #@25
    .line 3457
    add-int/lit8 v1, v1, -0x1

    #@27
    goto :goto_0

    #@28
    .line 3460
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    #@2a
    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2d
    .end local v1    # "stackNdx":I
    .end local v2    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_1
    monitor-exit v4

    #@2e
    .line 3453
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@31
    .line 3463
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@33
    invoke-virtual {v3, p1}, Lcom/android/server/wm/WindowManagerService;->onDisplayRemoved(I)V

    #@36
    .line 3452
    return-void

    #@37
    .line 3453
    .end local v0    # "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    :catchall_0
    move-exception v3

    #@38
    monitor-exit v4

    #@39
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@3c
    throw v3
.end method

.method private lockTaskModeToString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 3176
    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeState:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 3183
    new-instance v0, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v1, "unknown="

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    iget v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeState:I

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    return-object v0

    #@1c
    .line 3178
    :pswitch_0
    const-string/jumbo v0, "LOCKED"

    #@1f
    return-object v0

    #@20
    .line 3180
    :pswitch_1
    const-string/jumbo v0, "PINNED"

    #@23
    return-object v0

    #@24
    .line 3182
    :pswitch_2
    const-string/jumbo v0, "NONE"

    #@27
    return-object v0

    #@28
    .line 3176
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;)Z
    .locals 1
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "activity"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "dumpPackage"    # Ljava/lang/String;
    .param p3, "needSep"    # Z
    .param p4, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3213
    if-eqz p1, :cond_2

    #@2
    .line 3214
    if-eqz p2, :cond_0

    #@4
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    #@6
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_2

    #@c
    .line 3215
    :cond_0
    if-eqz p3, :cond_1

    #@e
    .line 3216
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    #@11
    .line 3218
    :cond_1
    invoke-virtual {p0, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@14
    .line 3219
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@17
    .line 3220
    const/4 v0, 0x1

    #@18
    return v0

    #@19
    .line 3223
    :cond_2
    const/4 v0, 0x0

    #@1a
    return v0
.end method

.method private restoreRecentTaskLocked(Lcom/android/server/am/TaskRecord;I)Z
    .locals 7
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "stackId"    # I

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 2375
    const/4 v3, -0x1

    #@3
    if-ne p2, v3, :cond_1

    #@5
    .line 2376
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getLaunchStackId()I

    #@8
    move-result p2

    #@9
    .line 2387
    :cond_0
    :goto_0
    iget-object v3, p1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@b
    if-eqz v3, :cond_5

    #@d
    .line 2389
    iget-object v3, p1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@f
    iget v3, v3, Lcom/android/server/am/ActivityStack;->mStackId:I

    #@11
    if-ne v3, p2, :cond_4

    #@13
    .line 2391
    return v6

    #@14
    .line 2377
    :cond_1
    const/4 v3, 0x3

    #@15
    if-ne p2, v3, :cond_2

    #@17
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->canGoInDockedStack()Z

    #@1a
    move-result v3

    #@1b
    if-eqz v3, :cond_3

    #@1d
    .line 2381
    :cond_2
    const/4 v3, 0x2

    #@1e
    if-ne p2, v3, :cond_0

    #@20
    .line 2382
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@22
    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    #@24
    iget v4, p1, Lcom/android/server/am/TaskRecord;->userId:I

    #@26
    invoke-virtual {v3, v4}, Lcom/android/server/am/UserController;->shouldConfirmCredentials(I)Z

    #@29
    move-result v3

    #@2a
    .line 2381
    if-eqz v3, :cond_0

    #@2c
    .line 2384
    const/4 p2, 0x1

    #@2d
    goto :goto_0

    #@2e
    .line 2380
    :cond_3
    const/4 p2, 0x1

    #@2f
    .line 2377
    goto :goto_0

    #@30
    .line 2395
    :cond_4
    iget-object v3, p1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@32
    const-string/jumbo v4, "restoreRecentTaskLocked"

    #@35
    invoke-virtual {v3, p1, v4, v6}, Lcom/android/server/am/ActivityStack;->removeTask(Lcom/android/server/am/TaskRecord;Ljava/lang/String;I)V

    #@38
    .line 2399
    :cond_5
    invoke-virtual {p0, p2, v6, v5}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(IZZ)Lcom/android/server/am/ActivityStack;

    #@3b
    move-result-object v2

    #@3c
    .line 2401
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    if-nez v2, :cond_6

    #@3e
    .line 2405
    return v5

    #@3f
    .line 2408
    :cond_6
    const-string/jumbo v3, "restoreRecentTask"

    #@42
    invoke-virtual {v2, p1, v5, v3}, Lcom/android/server/am/ActivityStack;->addTask(Lcom/android/server/am/TaskRecord;ZLjava/lang/String;)V

    #@45
    .line 2411
    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@47
    .line 2412
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@4a
    move-result v3

    #@4b
    add-int/lit8 v1, v3, -0x1

    #@4d
    .local v1, "activityNdx":I
    :goto_1
    if-ltz v1, :cond_7

    #@4f
    .line 2413
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@52
    move-result-object v3

    #@53
    check-cast v3, Lcom/android/server/am/ActivityRecord;

    #@55
    invoke-virtual {v2, v3, p1}, Lcom/android/server/am/ActivityStack;->addConfigOverride(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    #@58
    .line 2412
    add-int/lit8 v1, v1, -0x1

    #@5a
    goto :goto_1

    #@5b
    .line 2415
    :cond_7
    return v6
.end method

.method private setResizingDuringAnimation(I)V
    .locals 2
    .param p1, "taskId"    # I

    #@0
    .prologue
    .line 4436
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mResizingTasksDuringAnimation:Landroid/util/ArraySet;

    #@2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@9
    .line 4437
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@b
    const/4 v1, 0x1

    #@c
    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/WindowManagerService;->setTaskDockedResizing(IZ)V

    #@f
    .line 4435
    return-void
.end method

.method private taskContainsActivityFromUser(Lcom/android/server/am/TaskRecord;I)Z
    .locals 4
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "userId"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 789
    iget-object v2, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v2

    #@7
    add-int/lit8 v1, v2, -0x1

    #@9
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    #@b
    .line 790
    iget-object v2, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Lcom/android/server/am/ActivityRecord;

    #@13
    .line 791
    .local v0, "activityRecord":Lcom/android/server/am/ActivityRecord;
    iget v2, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    #@15
    if-ne v2, p2, :cond_0

    #@17
    .line 792
    const/4 v2, 0x1

    #@18
    return v2

    #@19
    .line 789
    :cond_0
    add-int/lit8 v1, v1, -0x1

    #@1b
    goto :goto_0

    #@1c
    .line 795
    .end local v0    # "activityRecord":Lcom/android/server/am/ActivityRecord;
    :cond_1
    return v3
.end method


# virtual methods
.method acquireLaunchWakelock()V
    .locals 4

    #@0
    .prologue
    const/16 v1, 0x68

    #@2
    .line 1583
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    #@4
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    #@7
    .line 1584
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    #@9
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->hasMessages(I)Z

    #@c
    move-result v0

    #@d
    if-nez v0, :cond_0

    #@f
    .line 1586
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    #@11
    const-wide/16 v2, 0x2710

    #@13
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessageDelayed(IJ)Z

    #@16
    .line 1579
    :cond_0
    return-void
.end method

.method final activityIdleInternalLocked(Landroid/os/IBinder;ZLandroid/content/res/Configuration;)Lcom/android/server/am/ActivityRecord;
    .locals 18
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "fromTimeout"    # Z
    .param p3, "config"    # Landroid/content/res/Configuration;

    #@0
    .prologue
    .line 1613
    const/4 v13, 0x0

    #@1
    .line 1614
    .local v13, "finishes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    const/16 v16, 0x0

    #@3
    .line 1615
    .local v16, "startingUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/UserState;>;"
    const/4 v10, 0x0

    #@4
    .line 1616
    .local v10, "NS":I
    const/4 v2, 0x0

    #@5
    .line 1617
    .local v2, "NF":I
    const/4 v12, 0x0

    #@6
    .line 1618
    .local v12, "booting":Z
    const/4 v11, 0x0

    #@7
    .line 1620
    .local v11, "activityRemoved":Z
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    #@a
    move-result-object v5

    #@b
    .line 1621
    .local v5, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v5, :cond_3

    #@d
    .line 1624
    move-object/from16 v0, p0

    #@f
    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    #@11
    const/16 v4, 0x64

    #@13
    invoke-virtual {v3, v4, v5}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->removeMessages(ILjava/lang/Object;)V

    #@16
    .line 1625
    invoke-virtual {v5}, Lcom/android/server/am/ActivityRecord;->finishLaunchTickingLocked()V

    #@19
    .line 1626
    if-eqz p2, :cond_0

    #@1b
    .line 1627
    const-wide/16 v6, -0x1

    #@1d
    const-wide/16 v8, -0x1

    #@1f
    move-object/from16 v3, p0

    #@21
    move/from16 v4, p2

    #@23
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/am/ActivityStackSupervisor;->reportActivityLaunchedLocked(ZLcom/android/server/am/ActivityRecord;JJ)V

    #@26
    .line 1635
    :cond_0
    if-eqz p3, :cond_1

    #@28
    .line 1636
    move-object/from16 v0, p3

    #@2a
    iput-object v0, v5, Lcom/android/server/am/ActivityRecord;->configuration:Landroid/content/res/Configuration;

    #@2c
    .line 1641
    :cond_1
    const/4 v3, 0x1

    #@2d
    iput-boolean v3, v5, Lcom/android/server/am/ActivityRecord;->idle:Z

    #@2f
    .line 1644
    iget-object v3, v5, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@31
    iget-object v3, v3, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@33
    move-object/from16 v0, p0

    #@35
    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusedStack(Lcom/android/server/am/ActivityStack;)Z

    #@38
    move-result v3

    #@39
    if-nez v3, :cond_2

    #@3b
    if-eqz p2, :cond_3

    #@3d
    .line 1645
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->checkFinishBootingLocked()Z

    #@40
    move-result v12

    #@41
    .line 1649
    .end local v12    # "booting":Z
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->allResumedActivitiesIdle()Z

    #@44
    move-result v3

    #@45
    if-eqz v3, :cond_6

    #@47
    .line 1650
    if-eqz v5, :cond_4

    #@49
    .line 1651
    move-object/from16 v0, p0

    #@4b
    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@4d
    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->scheduleAppGcsLocked()V

    #@50
    .line 1654
    :cond_4
    move-object/from16 v0, p0

    #@52
    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    #@54
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    #@57
    move-result v3

    #@58
    if-eqz v3, :cond_5

    #@5a
    .line 1655
    move-object/from16 v0, p0

    #@5c
    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    #@5e
    const/16 v4, 0x68

    #@60
    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->removeMessages(I)V

    #@63
    .line 1660
    move-object/from16 v0, p0

    #@65
    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    #@67
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    #@6a
    .line 1662
    :cond_5
    const/4 v3, 0x0

    #@6b
    const/4 v4, 0x0

    #@6c
    const/4 v6, 0x0

    #@6d
    move-object/from16 v0, p0

    #@6f
    invoke-virtual {v0, v3, v4, v6}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    #@72
    .line 1666
    :cond_6
    const/4 v3, 0x1

    #@73
    move-object/from16 v0, p0

    #@75
    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityStackSupervisor;->processStoppingActivitiesLocked(Z)Ljava/util/ArrayList;

    #@78
    move-result-object v17

    #@79
    .line 1667
    .local v17, "stops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    if-eqz v17, :cond_a

    #@7b
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    #@7e
    move-result v10

    #@7f
    .line 1668
    :goto_0
    move-object/from16 v0, p0

    #@81
    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    #@83
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@86
    move-result v2

    #@87
    if-lez v2, :cond_7

    #@89
    .line 1669
    new-instance v13, Ljava/util/ArrayList;

    #@8b
    .end local v13    # "finishes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    move-object/from16 v0, p0

    #@8d
    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    #@8f
    invoke-direct {v13, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@92
    .line 1670
    .local v13, "finishes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    move-object/from16 v0, p0

    #@94
    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    #@96
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    #@99
    .line 1673
    .end local v13    # "finishes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    :cond_7
    move-object/from16 v0, p0

    #@9b
    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mStartingUsers:Ljava/util/ArrayList;

    #@9d
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@a0
    move-result v3

    #@a1
    if-lez v3, :cond_8

    #@a3
    .line 1674
    new-instance v16, Ljava/util/ArrayList;

    #@a5
    .end local v16    # "startingUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/UserState;>;"
    move-object/from16 v0, p0

    #@a7
    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mStartingUsers:Ljava/util/ArrayList;

    #@a9
    move-object/from16 v0, v16

    #@ab
    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@ae
    .line 1675
    .local v16, "startingUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/UserState;>;"
    move-object/from16 v0, p0

    #@b0
    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mStartingUsers:Ljava/util/ArrayList;

    #@b2
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    #@b5
    .line 1680
    .end local v16    # "startingUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/UserState;>;"
    :cond_8
    const/4 v14, 0x0

    #@b6
    .local v14, "i":I
    :goto_1
    if-ge v14, v10, :cond_c

    #@b8
    .line 1681
    move-object/from16 v0, v17

    #@ba
    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@bd
    move-result-object v5

    #@be
    .end local v5    # "r":Lcom/android/server/am/ActivityRecord;
    check-cast v5, Lcom/android/server/am/ActivityRecord;

    #@c0
    .line 1682
    .restart local v5    # "r":Lcom/android/server/am/ActivityRecord;
    iget-object v3, v5, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@c2
    iget-object v15, v3, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@c4
    .line 1683
    .local v15, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v15, :cond_9

    #@c6
    .line 1684
    iget-boolean v3, v5, Lcom/android/server/am/ActivityRecord;->finishing:Z

    #@c8
    if-eqz v3, :cond_b

    #@ca
    .line 1685
    const/4 v3, 0x0

    #@cb
    const/4 v4, 0x0

    #@cc
    invoke-virtual {v15, v5, v3, v4}, Lcom/android/server/am/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Lcom/android/server/am/ActivityRecord;

    #@cf
    .line 1680
    :cond_9
    :goto_2
    add-int/lit8 v14, v14, 0x1

    #@d1
    goto :goto_1

    #@d2
    .line 1667
    .end local v14    # "i":I
    .end local v15    # "stack":Lcom/android/server/am/ActivityStack;
    .local v13, "finishes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .local v16, "startingUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/UserState;>;"
    :cond_a
    const/4 v10, 0x0

    #@d3
    goto :goto_0

    #@d4
    .line 1687
    .end local v13    # "finishes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v16    # "startingUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/UserState;>;"
    .restart local v14    # "i":I
    .restart local v15    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_b
    invoke-virtual {v15, v5}, Lcom/android/server/am/ActivityStack;->stopActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    #@d7
    goto :goto_2

    #@d8
    .line 1694
    .end local v15    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_c
    const/4 v14, 0x0

    #@d9
    .end local v11    # "activityRemoved":Z
    :goto_3
    if-ge v14, v2, :cond_e

    #@db
    .line 1695
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@de
    move-result-object v5

    #@df
    .end local v5    # "r":Lcom/android/server/am/ActivityRecord;
    check-cast v5, Lcom/android/server/am/ActivityRecord;

    #@e1
    .line 1696
    .restart local v5    # "r":Lcom/android/server/am/ActivityRecord;
    iget-object v3, v5, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@e3
    iget-object v15, v3, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@e5
    .line 1697
    .restart local v15    # "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v15, :cond_d

    #@e7
    .line 1698
    const-string/jumbo v3, "finish-idle"

    #@ea
    const/4 v4, 0x1

    #@eb
    invoke-virtual {v15, v5, v4, v3}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z

    #@ee
    move-result v3

    #@ef
    or-int/2addr v11, v3

    #@f0
    .line 1694
    :cond_d
    add-int/lit8 v14, v14, 0x1

    #@f2
    goto :goto_3

    #@f3
    .line 1702
    .end local v15    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_e
    if-nez v12, :cond_f

    #@f5
    .line 1704
    if-eqz v16, :cond_f

    #@f7
    .line 1705
    const/4 v14, 0x0

    #@f8
    :goto_4
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    #@fb
    move-result v3

    #@fc
    if-ge v14, v3, :cond_f

    #@fe
    .line 1706
    move-object/from16 v0, p0

    #@100
    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@102
    iget-object v4, v3, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    #@104
    move-object/from16 v0, v16

    #@106
    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@109
    move-result-object v3

    #@10a
    check-cast v3, Lcom/android/server/am/UserState;

    #@10c
    invoke-virtual {v4, v3}, Lcom/android/server/am/UserController;->finishUserSwitch(Lcom/android/server/am/UserState;)V

    #@10f
    .line 1705
    add-int/lit8 v14, v14, 0x1

    #@111
    goto :goto_4

    #@112
    .line 1711
    :cond_f
    move-object/from16 v0, p0

    #@114
    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@116
    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->trimApplications()V

    #@119
    .line 1715
    if-eqz v11, :cond_10

    #@11b
    .line 1716
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    #@11e
    .line 1719
    :cond_10
    return-object v5
.end method

.method activityRelaunchedLocked(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 3740
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerService;->notifyAppRelaunchingFinished(Landroid/os/IBinder;)V

    #@5
    .line 3739
    return-void
.end method

.method activityRelaunchingLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 2
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    #@0
    .prologue
    .line 3744
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@2
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@4
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->notifyAppRelaunching(Landroid/os/IBinder;)V

    #@7
    .line 3743
    return-void
.end method

.method activitySleptLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 1
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    #@0
    .prologue
    .line 2785
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@5
    .line 2786
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->checkReadyForSleepLocked()V

    #@8
    .line 2784
    return-void
.end method

.method allPausedActivitiesComplete()Z
    .locals 9

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 960
    const/4 v1, 0x1

    #@2
    .line 961
    .local v1, "pausing":Z
    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    #@4
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    #@7
    move-result v6

    #@8
    add-int/lit8 v0, v6, -0x1

    #@a
    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_2

    #@c
    .line 962
    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    #@e
    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@11
    move-result-object v6

    #@12
    check-cast v6, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    #@14
    iget-object v5, v6, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    #@16
    .line 963
    .local v5, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@19
    move-result v6

    #@1a
    add-int/lit8 v4, v6, -0x1

    #@1c
    .local v4, "stackNdx":I
    :goto_1
    if-ltz v4, :cond_1

    #@1e
    .line 964
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@21
    move-result-object v3

    #@22
    check-cast v3, Lcom/android/server/am/ActivityStack;

    #@24
    .line 965
    .local v3, "stack":Lcom/android/server/am/ActivityStack;
    iget-object v2, v3, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    #@26
    .line 966
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_0

    #@28
    iget-object v6, v2, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    #@2a
    sget-object v7, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    #@2c
    if-eq v6, v7, :cond_0

    #@2e
    iget-object v6, v2, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    #@30
    sget-object v7, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    #@32
    if-eq v6, v7, :cond_0

    #@34
    iget-object v6, v2, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    #@36
    sget-object v7, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    #@38
    if-eq v6, v7, :cond_0

    #@3a
    .line 972
    return v8

    #@3b
    .line 963
    :cond_0
    add-int/lit8 v4, v4, -0x1

    #@3d
    goto :goto_1

    #@3e
    .line 961
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v3    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    #@40
    goto :goto_0

    #@41
    .line 977
    .end local v4    # "stackNdx":I
    .end local v5    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_2
    return v1
.end method

.method allResumedActivitiesComplete()Z
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 899
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    #@3
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    #@6
    move-result v5

    #@7
    add-int/lit8 v0, v5, -0x1

    #@9
    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_2

    #@b
    .line 900
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    #@d
    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@10
    move-result-object v5

    #@11
    check-cast v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    #@13
    iget-object v4, v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    #@15
    .line 901
    .local v4, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@18
    move-result v5

    #@19
    add-int/lit8 v3, v5, -0x1

    #@1b
    .local v3, "stackNdx":I
    :goto_1
    if-ltz v3, :cond_1

    #@1d
    .line 902
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@20
    move-result-object v2

    #@21
    check-cast v2, Lcom/android/server/am/ActivityStack;

    #@23
    .line 903
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusedStack(Lcom/android/server/am/ActivityStack;)Z

    #@26
    move-result v5

    #@27
    if-eqz v5, :cond_0

    #@29
    .line 904
    iget-object v1, v2, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    #@2b
    .line 905
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_0

    #@2d
    iget-object v5, v1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    #@2f
    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    #@31
    if-eq v5, v6, :cond_0

    #@33
    .line 906
    return v7

    #@34
    .line 901
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_0
    add-int/lit8 v3, v3, -0x1

    #@36
    goto :goto_1

    #@37
    .line 899
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    #@39
    goto :goto_0

    #@3a
    .line 915
    .end local v3    # "stackNdx":I
    .end local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_2
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    #@3c
    iput-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLastFocusedStack:Lcom/android/server/am/ActivityStack;

    #@3e
    .line 916
    const/4 v5, 0x1

    #@3f
    return v5
.end method

.method allResumedActivitiesIdle()Z
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 880
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    #@3
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    #@6
    move-result v5

    #@7
    add-int/lit8 v0, v5, -0x1

    #@9
    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_4

    #@b
    .line 881
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    #@d
    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@10
    move-result-object v5

    #@11
    check-cast v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    #@13
    iget-object v4, v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    #@15
    .line 882
    .local v4, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@18
    move-result v5

    #@19
    add-int/lit8 v3, v5, -0x1

    #@1b
    .local v3, "stackNdx":I
    :goto_1
    if-ltz v3, :cond_3

    #@1d
    .line 883
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@20
    move-result-object v2

    #@21
    check-cast v2, Lcom/android/server/am/ActivityStack;

    #@23
    .line 884
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusedStack(Lcom/android/server/am/ActivityStack;)Z

    #@26
    move-result v5

    #@27
    if-eqz v5, :cond_0

    #@29
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->numActivities()I

    #@2c
    move-result v5

    #@2d
    if-nez v5, :cond_1

    #@2f
    .line 882
    :cond_0
    add-int/lit8 v3, v3, -0x1

    #@31
    goto :goto_1

    #@32
    .line 887
    :cond_1
    iget-object v1, v2, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    #@34
    .line 888
    .local v1, "resumedActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_2

    #@36
    iget-boolean v5, v1, Lcom/android/server/am/ActivityRecord;->idle:Z

    #@38
    if-nez v5, :cond_0

    #@3a
    .line 891
    :cond_2
    return v6

    #@3b
    .line 880
    .end local v1    # "resumedActivity":Lcom/android/server/am/ActivityRecord;
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_3
    add-int/lit8 v0, v0, -0x1

    #@3d
    goto :goto_0

    #@3e
    .line 895
    .end local v3    # "stackNdx":I
    .end local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_4
    const/4 v5, 0x1

    #@3f
    return v5
.end method

.method allResumedActivitiesVisible()Z
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 920
    const/4 v1, 0x0

    #@2
    .line 921
    .local v1, "foundResumed":Z
    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    #@4
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    #@7
    move-result v6

    #@8
    add-int/lit8 v0, v6, -0x1

    #@a
    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_4

    #@c
    .line 922
    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    #@e
    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@11
    move-result-object v6

    #@12
    check-cast v6, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    #@14
    iget-object v5, v6, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    #@16
    .line 923
    .local v5, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@19
    move-result v6

    #@1a
    add-int/lit8 v4, v6, -0x1

    #@1c
    .local v4, "stackNdx":I
    :goto_1
    if-ltz v4, :cond_3

    #@1e
    .line 924
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@21
    move-result-object v3

    #@22
    check-cast v3, Lcom/android/server/am/ActivityStack;

    #@24
    .line 925
    .local v3, "stack":Lcom/android/server/am/ActivityStack;
    iget-object v2, v3, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    #@26
    .line 926
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_2

    #@28
    .line 927
    iget-boolean v6, v2, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    #@2a
    if-eqz v6, :cond_0

    #@2c
    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    #@2e
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@31
    move-result v6

    #@32
    if-eqz v6, :cond_1

    #@34
    .line 928
    :cond_0
    return v7

    #@35
    .line 930
    :cond_1
    const/4 v1, 0x1

    #@36
    .line 923
    :cond_2
    add-int/lit8 v4, v4, -0x1

    #@38
    goto :goto_1

    #@39
    .line 921
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v3    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_3
    add-int/lit8 v0, v0, -0x1

    #@3b
    goto :goto_0

    #@3c
    .line 934
    .end local v4    # "stackNdx":I
    .end local v5    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_4
    return v1
.end method

.method anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;
    .locals 2
    .param p1, "id"    # I

    #@0
    .prologue
    .line 678
    const/4 v0, 0x1

    #@1
    const/4 v1, -0x1

    #@2
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(IZI)Lcom/android/server/am/TaskRecord;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method anyTaskForIdLocked(IZI)Lcom/android/server/am/TaskRecord;
    .locals 8
    .param p1, "id"    # I
    .param p2, "restoreFromRecents"    # Z
    .param p3, "stackId"    # I

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 690
    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    #@3
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    #@6
    move-result v1

    #@7
    .line 691
    .local v1, "numDisplays":I
    const/4 v0, 0x0

    #@8
    .local v0, "displayNdx":I
    :goto_0
    if-ge v0, v1, :cond_2

    #@a
    .line 692
    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    #@c
    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@f
    move-result-object v6

    #@10
    check-cast v6, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    #@12
    iget-object v4, v6, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    #@14
    .line 693
    .local v4, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@17
    move-result v6

    #@18
    add-int/lit8 v3, v6, -0x1

    #@1a
    .local v3, "stackNdx":I
    :goto_1
    if-ltz v3, :cond_1

    #@1c
    .line 694
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1f
    move-result-object v2

    #@20
    check-cast v2, Lcom/android/server/am/ActivityStack;

    #@22
    .line 695
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v2, p1}, Lcom/android/server/am/ActivityStack;->taskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    #@25
    move-result-object v5

    #@26
    .line 696
    .local v5, "task":Lcom/android/server/am/TaskRecord;
    if-eqz v5, :cond_0

    #@28
    .line 697
    return-object v5

    #@29
    .line 693
    :cond_0
    add-int/lit8 v3, v3, -0x1

    #@2b
    goto :goto_1

    #@2c
    .line 691
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v5    # "task":Lcom/android/server/am/TaskRecord;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@2e
    goto :goto_0

    #@2f
    .line 704
    .end local v3    # "stackNdx":I
    .end local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_2
    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    #@31
    invoke-virtual {v6, p1}, Lcom/android/server/am/RecentTasks;->taskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    #@34
    move-result-object v5

    #@35
    .line 705
    .restart local v5    # "task":Lcom/android/server/am/TaskRecord;
    if-nez v5, :cond_3

    #@37
    .line 707
    return-object v7

    #@38
    .line 710
    :cond_3
    if-nez p2, :cond_4

    #@3a
    .line 711
    return-object v5

    #@3b
    .line 714
    :cond_4
    invoke-direct {p0, v5, p3}, Lcom/android/server/am/ActivityStackSupervisor;->restoreRecentTaskLocked(Lcom/android/server/am/TaskRecord;I)Z

    #@3e
    move-result v6

    #@3f
    if-nez v6, :cond_5

    #@41
    .line 717
    return-object v7

    #@42
    .line 720
    :cond_5
    return-object v5
.end method

.method attachApplicationLocked(Lcom/android/server/am/ProcessRecord;)Z
    .locals 12
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    const/4 v10, 0x0

    #@2
    .line 847
    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    #@4
    .line 848
    .local v4, "processName":Ljava/lang/String;
    const/4 v0, 0x0

    #@5
    .line 849
    .local v0, "didSomething":Z
    iget-object v8, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    #@7
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    #@a
    move-result v8

    #@b
    add-int/lit8 v1, v8, -0x1

    #@d
    .local v1, "displayNdx":I
    :goto_0
    if-ltz v1, :cond_3

    #@f
    .line 850
    iget-object v8, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    #@11
    invoke-virtual {v8, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@14
    move-result-object v8

    #@15
    check-cast v8, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    #@17
    iget-object v7, v8, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    #@19
    .line 851
    .local v7, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    #@1c
    move-result v8

    #@1d
    add-int/lit8 v6, v8, -0x1

    #@1f
    .local v6, "stackNdx":I
    :goto_1
    if-ltz v6, :cond_2

    #@21
    .line 852
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@24
    move-result-object v5

    #@25
    check-cast v5, Lcom/android/server/am/ActivityStack;

    #@27
    .line 853
    .local v5, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {p0, v5}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusedStack(Lcom/android/server/am/ActivityStack;)Z

    #@2a
    move-result v8

    #@2b
    if-nez v8, :cond_1

    #@2d
    .line 851
    :cond_0
    :goto_2
    add-int/lit8 v6, v6, -0x1

    #@2f
    goto :goto_1

    #@30
    .line 856
    :cond_1
    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    #@33
    move-result-object v3

    #@34
    .line 857
    .local v3, "hr":Lcom/android/server/am/ActivityRecord;
    if-eqz v3, :cond_0

    #@36
    .line 858
    iget-object v8, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@38
    if-nez v8, :cond_0

    #@3a
    iget v8, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    #@3c
    iget-object v9, v3, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@3e
    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@40
    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    #@42
    if-ne v8, v9, :cond_0

    #@44
    .line 859
    iget-object v8, v3, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    #@46
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@49
    move-result v8

    #@4a
    .line 858
    if-eqz v8, :cond_0

    #@4c
    .line 861
    const/4 v8, 0x1

    #@4d
    const/4 v9, 0x1

    #@4e
    :try_start_0
    invoke-virtual {p0, v3, p1, v8, v9}, Lcom/android/server/am/ActivityStackSupervisor;->realStartActivityLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ProcessRecord;ZZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@51
    move-result v8

    #@52
    if-eqz v8, :cond_0

    #@54
    .line 862
    const/4 v0, 0x1

    #@55
    goto :goto_2

    #@56
    .line 864
    :catch_0
    move-exception v2

    #@57
    .line 865
    .local v2, "e":Landroid/os/RemoteException;
    sget-object v8, Lcom/android/server/am/ActivityStackSupervisor;->TAG:Ljava/lang/String;

    #@59
    new-instance v9, Ljava/lang/StringBuilder;

    #@5b
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@5e
    const-string/jumbo v10, "Exception in new application when starting activity "

    #@61
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v9

    #@65
    .line 866
    iget-object v10, v3, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    #@67
    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@6a
    move-result-object v10

    #@6b
    invoke-virtual {v10}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@6e
    move-result-object v10

    #@6f
    .line 865
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v9

    #@73
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@76
    move-result-object v9

    #@77
    invoke-static {v8, v9, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@7a
    .line 867
    throw v2

    #@7b
    .line 849
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v3    # "hr":Lcom/android/server/am/ActivityRecord;
    .end local v5    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_2
    add-int/lit8 v1, v1, -0x1

    #@7d
    goto :goto_0

    #@7e
    .line 873
    .end local v6    # "stackNdx":I
    .end local v7    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_3
    if-nez v0, :cond_4

    #@80
    .line 874
    invoke-virtual {p0, v11, v10, v10}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    #@83
    .line 876
    :cond_4
    return v0
.end method

.method canUseActivityOptionsLaunchBounds(Landroid/app/ActivityOptions;I)Z
    .locals 1
    .param p1, "options"    # Landroid/app/ActivityOptions;
    .param p2, "launchStackId"    # I

    #@0
    .prologue
    .line 1921
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    #@3
    move-result-object v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 1922
    const/4 v0, 0x0

    #@7
    return v0

    #@8
    .line 1924
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@a
    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mSupportsPictureInPicture:Z

    #@c
    if-eqz v0, :cond_1

    #@e
    const/4 v0, 0x4

    #@f
    if-ne p2, v0, :cond_1

    #@11
    const/4 v0, 0x1

    #@12
    :goto_0
    return v0

    #@13
    .line 1925
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@15
    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mSupportsFreeformWindowManagement:Z

    #@17
    goto :goto_0
.end method

.method cancelInitializingActivities()V
    .locals 4

    #@0
    .prologue
    .line 996
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    #@5
    move-result v3

    #@6
    add-int/lit8 v0, v3, -0x1

    #@8
    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_1

    #@a
    .line 997
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    #@c
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@f
    move-result-object v3

    #@10
    check-cast v3, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    #@12
    iget-object v2, v3, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    #@14
    .line 998
    .local v2, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@17
    move-result v3

    #@18
    add-int/lit8 v1, v3, -0x1

    #@1a
    .local v1, "stackNdx":I
    :goto_1
    if-ltz v1, :cond_0

    #@1c
    .line 999
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1f
    move-result-object v3

    #@20
    check-cast v3, Lcom/android/server/am/ActivityStack;

    #@22
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->cancelInitializingActivities()V

    #@25
    .line 998
    add-int/lit8 v1, v1, -0x1

    #@27
    goto :goto_1

    #@28
    .line 996
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@2a
    goto :goto_0

    #@2b
    .line 995
    .end local v1    # "stackNdx":I
    .end local v2    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_1
    return-void
.end method

.method checkReadyForSleepLocked()V
    .locals 5

    #@0
    .prologue
    .line 2790
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@2
    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->isSleepingOrShuttingDownLocked()Z

    #@5
    move-result v4

    #@6
    if-nez v4, :cond_0

    #@8
    .line 2792
    return-void

    #@9
    .line 2795
    :cond_0
    iget-boolean v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mSleepTimeout:Z

    #@b
    if-nez v4, :cond_5

    #@d
    .line 2796
    const/4 v1, 0x0

    #@e
    .line 2797
    .local v1, "dontSleep":Z
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    #@10
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    #@13
    move-result v4

    #@14
    add-int/lit8 v0, v4, -0x1

    #@16
    .end local v1    # "dontSleep":Z
    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_2

    #@18
    .line 2798
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    #@1a
    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@1d
    move-result-object v4

    #@1e
    check-cast v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    #@20
    iget-object v3, v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    #@22
    .line 2799
    .local v3, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@25
    move-result v4

    #@26
    add-int/lit8 v2, v4, -0x1

    #@28
    .local v2, "stackNdx":I
    :goto_1
    if-ltz v2, :cond_1

    #@2a
    .line 2800
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2d
    move-result-object v4

    #@2e
    check-cast v4, Lcom/android/server/am/ActivityStack;

    #@30
    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->checkReadyForSleepLocked()Z

    #@33
    move-result v4

    #@34
    or-int/2addr v1, v4

    #@35
    .line 2799
    .local v1, "dontSleep":Z
    add-int/lit8 v2, v2, -0x1

    #@37
    goto :goto_1

    #@38
    .line 2797
    .end local v1    # "dontSleep":Z
    :cond_1
    add-int/lit8 v0, v0, -0x1

    #@3a
    goto :goto_0

    #@3b
    .line 2804
    .end local v2    # "stackNdx":I
    .end local v3    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_2
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    #@3d
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@40
    move-result v4

    #@41
    if-lez v4, :cond_3

    #@43
    .line 2808
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleLocked()V

    #@46
    .line 2809
    const/4 v1, 0x1

    #@47
    .line 2812
    :cond_3
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    #@49
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@4c
    move-result v4

    #@4d
    if-lez v4, :cond_4

    #@4f
    .line 2816
    const/4 v1, 0x1

    #@50
    .line 2819
    :cond_4
    if-eqz v1, :cond_5

    #@52
    .line 2820
    return-void

    #@53
    .line 2824
    .end local v0    # "displayNdx":I
    :cond_5
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    #@55
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    #@58
    move-result v4

    #@59
    add-int/lit8 v0, v4, -0x1

    #@5b
    .restart local v0    # "displayNdx":I
    :goto_2
    if-ltz v0, :cond_7

    #@5d
    .line 2825
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    #@5f
    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@62
    move-result-object v4

    #@63
    check-cast v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    #@65
    iget-object v3, v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    #@67
    .line 2826
    .restart local v3    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@6a
    move-result v4

    #@6b
    add-int/lit8 v2, v4, -0x1

    #@6d
    .restart local v2    # "stackNdx":I
    :goto_3
    if-ltz v2, :cond_6

    #@6f
    .line 2827
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@72
    move-result-object v4

    #@73
    check-cast v4, Lcom/android/server/am/ActivityStack;

    #@75
    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->goToSleep()V

    #@78
    .line 2826
    add-int/lit8 v2, v2, -0x1

    #@7a
    goto :goto_3

    #@7b
    .line 2824
    :cond_6
    add-int/lit8 v0, v0, -0x1

    #@7d
    goto :goto_2

    #@7e
    .line 2831
    .end local v2    # "stackNdx":I
    .end local v3    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->removeSleepTimeouts()V

    #@81
    .line 2833
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    #@83
    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    #@86
    move-result v4

    #@87
    if-eqz v4, :cond_8

    #@89
    .line 2834
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    #@8b
    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    #@8e
    .line 2836
    :cond_8
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@90
    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mShuttingDown:Z

    #@92
    if-eqz v4, :cond_9

    #@94
    .line 2837
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@96
    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->notifyAll()V

    #@99
    .line 2789
    :cond_9
    return-void
.end method

.method checkStartAnyActivityPermission(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/String;IIILjava/lang/String;ZLcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStack;Landroid/app/ActivityOptions;)Z
    .locals 17
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p3, "resultWho"    # Ljava/lang/String;
    .param p4, "requestCode"    # I
    .param p5, "callingPid"    # I
    .param p6, "callingUid"    # I
    .param p7, "callingPackage"    # Ljava/lang/String;
    .param p8, "ignoreTargetSecurity"    # Z
    .param p9, "callerApp"    # Lcom/android/server/am/ProcessRecord;
    .param p10, "resultRecord"    # Lcom/android/server/am/ActivityRecord;
    .param p11, "resultStack"    # Lcom/android/server/am/ActivityStack;
    .param p12, "options"    # Landroid/app/ActivityOptions;

    #@0
    .prologue
    .line 1414
    move-object/from16 v0, p0

    #@2
    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@4
    const-string/jumbo v5, "android.permission.START_ANY_ACTIVITY"

    #@7
    move/from16 v0, p5

    #@9
    move/from16 v1, p6

    #@b
    invoke-virtual {v4, v5, v0, v1}, Lcom/android/server/am/ActivityManagerService;->checkPermission(Ljava/lang/String;II)I

    #@e
    move-result v15

    #@f
    .line 1416
    .local v15, "startAnyPerm":I
    if-nez v15, :cond_0

    #@11
    .line 1417
    const/4 v4, 0x1

    #@12
    return v4

    #@13
    :cond_0
    move-object/from16 v4, p0

    #@15
    move-object/from16 v5, p2

    #@17
    move-object/from16 v6, p7

    #@19
    move/from16 v7, p5

    #@1b
    move/from16 v8, p6

    #@1d
    move/from16 v9, p8

    #@1f
    .line 1419
    invoke-direct/range {v4 .. v9}, Lcom/android/server/am/ActivityStackSupervisor;->getComponentRestrictionForCallingPackage(Landroid/content/pm/ActivityInfo;Ljava/lang/String;IIZ)I

    #@22
    move-result v12

    #@23
    .line 1422
    .local v12, "componentRestriction":I
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@26
    move-result-object v4

    #@27
    .line 1421
    move-object/from16 v0, p0

    #@29
    move-object/from16 v1, p7

    #@2b
    move/from16 v2, p5

    #@2d
    move/from16 v3, p6

    #@2f
    invoke-direct {v0, v4, v1, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->getActionRestrictionForCallingPackage(Ljava/lang/String;Ljava/lang/String;II)I

    #@32
    move-result v11

    #@33
    .line 1423
    .local v11, "actionRestriction":I
    const/4 v4, 0x1

    #@34
    if-eq v12, v4, :cond_1

    #@36
    .line 1424
    const/4 v4, 0x1

    #@37
    if-ne v11, v4, :cond_5

    #@39
    .line 1425
    :cond_1
    if-eqz p10, :cond_2

    #@3b
    .line 1426
    const/4 v5, -0x1

    #@3c
    .line 1428
    const/4 v9, 0x0

    #@3d
    const/4 v10, 0x0

    #@3e
    move-object/from16 v4, p11

    #@40
    move-object/from16 v6, p10

    #@42
    move-object/from16 v7, p3

    #@44
    move/from16 v8, p4

    #@46
    .line 1426
    invoke-virtual/range {v4 .. v10}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    #@49
    .line 1431
    :cond_2
    const/4 v4, 0x1

    #@4a
    if-ne v11, v4, :cond_3

    #@4c
    .line 1432
    new-instance v4, Ljava/lang/StringBuilder;

    #@4e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@51
    const-string/jumbo v5, "Permission Denial: starting "

    #@54
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v4

    #@58
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    #@5b
    move-result-object v5

    #@5c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v4

    #@60
    .line 1433
    const-string/jumbo v5, " from "

    #@63
    .line 1432
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v4

    #@67
    move-object/from16 v0, p9

    #@69
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v4

    #@6d
    .line 1433
    const-string/jumbo v5, " (pid="

    #@70
    .line 1432
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v4

    #@74
    move/from16 v0, p5

    #@76
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@79
    move-result-object v4

    #@7a
    .line 1434
    const-string/jumbo v5, ", uid="

    #@7d
    .line 1432
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v4

    #@81
    move/from16 v0, p6

    #@83
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@86
    move-result-object v4

    #@87
    .line 1434
    const-string/jumbo v5, ")"

    #@8a
    .line 1432
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v4

    #@8e
    .line 1434
    const-string/jumbo v5, " with revoked permission "

    #@91
    .line 1432
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@94
    move-result-object v5

    #@95
    .line 1435
    sget-object v4, Lcom/android/server/am/ActivityStackSupervisor;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    #@97
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@9a
    move-result-object v6

    #@9b
    invoke-virtual {v4, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9e
    move-result-object v4

    #@9f
    check-cast v4, Ljava/lang/String;

    #@a1
    .line 1432
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a4
    move-result-object v4

    #@a5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a8
    move-result-object v14

    #@a9
    .line 1447
    .local v14, "msg":Ljava/lang/String;
    :goto_0
    sget-object v4, Lcom/android/server/am/ActivityStackSupervisor;->TAG:Ljava/lang/String;

    #@ab
    invoke-static {v4, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@ae
    .line 1448
    new-instance v4, Ljava/lang/SecurityException;

    #@b0
    invoke-direct {v4, v14}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@b3
    throw v4

    #@b4
    .line 1436
    .end local v14    # "msg":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p2

    #@b6
    iget-boolean v4, v0, Landroid/content/pm/ActivityInfo;->exported:Z

    #@b8
    if-nez v4, :cond_4

    #@ba
    .line 1437
    new-instance v4, Ljava/lang/StringBuilder;

    #@bc
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@bf
    const-string/jumbo v5, "Permission Denial: starting "

    #@c2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c5
    move-result-object v4

    #@c6
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    #@c9
    move-result-object v5

    #@ca
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cd
    move-result-object v4

    #@ce
    .line 1438
    const-string/jumbo v5, " from "

    #@d1
    .line 1437
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d4
    move-result-object v4

    #@d5
    move-object/from16 v0, p9

    #@d7
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@da
    move-result-object v4

    #@db
    .line 1438
    const-string/jumbo v5, " (pid="

    #@de
    .line 1437
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e1
    move-result-object v4

    #@e2
    move/from16 v0, p5

    #@e4
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@e7
    move-result-object v4

    #@e8
    .line 1439
    const-string/jumbo v5, ", uid="

    #@eb
    .line 1437
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ee
    move-result-object v4

    #@ef
    move/from16 v0, p6

    #@f1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f4
    move-result-object v4

    #@f5
    .line 1439
    const-string/jumbo v5, ")"

    #@f8
    .line 1437
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fb
    move-result-object v4

    #@fc
    .line 1440
    const-string/jumbo v5, " not exported from uid "

    #@ff
    .line 1437
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@102
    move-result-object v4

    #@103
    .line 1440
    move-object/from16 v0, p2

    #@105
    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@107
    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    #@109
    .line 1437
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@10c
    move-result-object v4

    #@10d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@110
    move-result-object v14

    #@111
    .restart local v14    # "msg":Ljava/lang/String;
    goto :goto_0

    #@112
    .line 1442
    .end local v14    # "msg":Ljava/lang/String;
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    #@114
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@117
    const-string/jumbo v5, "Permission Denial: starting "

    #@11a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11d
    move-result-object v4

    #@11e
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    #@121
    move-result-object v5

    #@122
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@125
    move-result-object v4

    #@126
    .line 1443
    const-string/jumbo v5, " from "

    #@129
    .line 1442
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12c
    move-result-object v4

    #@12d
    move-object/from16 v0, p9

    #@12f
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@132
    move-result-object v4

    #@133
    .line 1443
    const-string/jumbo v5, " (pid="

    #@136
    .line 1442
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@139
    move-result-object v4

    #@13a
    move/from16 v0, p5

    #@13c
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13f
    move-result-object v4

    #@140
    .line 1444
    const-string/jumbo v5, ", uid="

    #@143
    .line 1442
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@146
    move-result-object v4

    #@147
    move/from16 v0, p6

    #@149
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14c
    move-result-object v4

    #@14d
    .line 1444
    const-string/jumbo v5, ")"

    #@150
    .line 1442
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@153
    move-result-object v4

    #@154
    .line 1445
    const-string/jumbo v5, " requires "

    #@157
    .line 1442
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15a
    move-result-object v4

    #@15b
    .line 1445
    move-object/from16 v0, p2

    #@15d
    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    #@15f
    .line 1442
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@162
    move-result-object v4

    #@163
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@166
    move-result-object v14

    #@167
    .restart local v14    # "msg":Ljava/lang/String;
    goto/16 :goto_0

    #@169
    .line 1451
    .end local v14    # "msg":Ljava/lang/String;
    :cond_5
    const/4 v4, 0x2

    #@16a
    if-ne v11, v4, :cond_6

    #@16c
    .line 1452
    new-instance v4, Ljava/lang/StringBuilder;

    #@16e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@171
    const-string/jumbo v5, "Appop Denial: starting "

    #@174
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@177
    move-result-object v4

    #@178
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    #@17b
    move-result-object v5

    #@17c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17f
    move-result-object v4

    #@180
    .line 1453
    const-string/jumbo v5, " from "

    #@183
    .line 1452
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@186
    move-result-object v4

    #@187
    move-object/from16 v0, p9

    #@189
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@18c
    move-result-object v4

    #@18d
    .line 1453
    const-string/jumbo v5, " (pid="

    #@190
    .line 1452
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@193
    move-result-object v4

    #@194
    move/from16 v0, p5

    #@196
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@199
    move-result-object v4

    #@19a
    .line 1454
    const-string/jumbo v5, ", uid="

    #@19d
    .line 1452
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a0
    move-result-object v4

    #@1a1
    move/from16 v0, p6

    #@1a3
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a6
    move-result-object v4

    #@1a7
    .line 1454
    const-string/jumbo v5, ")"

    #@1aa
    .line 1452
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ad
    move-result-object v4

    #@1ae
    .line 1455
    const-string/jumbo v5, " requires "

    #@1b1
    .line 1452
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b4
    move-result-object v5

    #@1b5
    .line 1456
    sget-object v4, Lcom/android/server/am/ActivityStackSupervisor;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    #@1b7
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@1ba
    move-result-object v6

    #@1bb
    invoke-virtual {v4, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1be
    move-result-object v4

    #@1bf
    check-cast v4, Ljava/lang/String;

    #@1c1
    .line 1455
    invoke-static {v4}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    #@1c4
    move-result-object v4

    #@1c5
    .line 1452
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c8
    move-result-object v4

    #@1c9
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1cc
    move-result-object v13

    #@1cd
    .line 1457
    .local v13, "message":Ljava/lang/String;
    sget-object v4, Lcom/android/server/am/ActivityStackSupervisor;->TAG:Ljava/lang/String;

    #@1cf
    invoke-static {v4, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1d2
    .line 1458
    const/4 v4, 0x0

    #@1d3
    return v4

    #@1d4
    .line 1459
    .end local v13    # "message":Ljava/lang/String;
    :cond_6
    const/4 v4, 0x2

    #@1d5
    if-ne v12, v4, :cond_7

    #@1d7
    .line 1460
    new-instance v4, Ljava/lang/StringBuilder;

    #@1d9
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1dc
    const-string/jumbo v5, "Appop Denial: starting "

    #@1df
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e2
    move-result-object v4

    #@1e3
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    #@1e6
    move-result-object v5

    #@1e7
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ea
    move-result-object v4

    #@1eb
    .line 1461
    const-string/jumbo v5, " from "

    #@1ee
    .line 1460
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f1
    move-result-object v4

    #@1f2
    move-object/from16 v0, p9

    #@1f4
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1f7
    move-result-object v4

    #@1f8
    .line 1461
    const-string/jumbo v5, " (pid="

    #@1fb
    .line 1460
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1fe
    move-result-object v4

    #@1ff
    move/from16 v0, p5

    #@201
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@204
    move-result-object v4

    #@205
    .line 1462
    const-string/jumbo v5, ", uid="

    #@208
    .line 1460
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20b
    move-result-object v4

    #@20c
    move/from16 v0, p6

    #@20e
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@211
    move-result-object v4

    #@212
    .line 1462
    const-string/jumbo v5, ")"

    #@215
    .line 1460
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@218
    move-result-object v4

    #@219
    .line 1463
    const-string/jumbo v5, " requires appop "

    #@21c
    .line 1460
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21f
    move-result-object v4

    #@220
    .line 1463
    move-object/from16 v0, p2

    #@222
    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    #@224
    invoke-static {v5}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    #@227
    move-result-object v5

    #@228
    .line 1460
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22b
    move-result-object v4

    #@22c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22f
    move-result-object v13

    #@230
    .line 1464
    .restart local v13    # "message":Ljava/lang/String;
    sget-object v4, Lcom/android/server/am/ActivityStackSupervisor;->TAG:Ljava/lang/String;

    #@232
    invoke-static {v4, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@235
    .line 1465
    const/4 v4, 0x0

    #@236
    return v4

    #@237
    .line 1467
    .end local v13    # "message":Ljava/lang/String;
    :cond_7
    if-eqz p12, :cond_8

    #@239
    invoke-virtual/range {p12 .. p12}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    #@23c
    move-result v4

    #@23d
    const/4 v5, -0x1

    #@23e
    if-eq v4, v5, :cond_8

    #@240
    .line 1468
    move-object/from16 v0, p0

    #@242
    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@244
    const-string/jumbo v5, "android.permission.START_TASKS_FROM_RECENTS"

    #@247
    move/from16 v0, p5

    #@249
    move/from16 v1, p6

    #@24b
    invoke-virtual {v4, v5, v0, v1}, Lcom/android/server/am/ActivityManagerService;->checkPermission(Ljava/lang/String;II)I

    #@24e
    move-result v16

    #@24f
    .line 1470
    .local v16, "startInTaskPerm":I
    if-eqz v16, :cond_8

    #@251
    .line 1471
    new-instance v4, Ljava/lang/StringBuilder;

    #@253
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@256
    const-string/jumbo v5, "Permission Denial: starting "

    #@259
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25c
    move-result-object v4

    #@25d
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    #@260
    move-result-object v5

    #@261
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@264
    move-result-object v4

    #@265
    .line 1472
    const-string/jumbo v5, " from "

    #@268
    .line 1471
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26b
    move-result-object v4

    #@26c
    move-object/from16 v0, p9

    #@26e
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@271
    move-result-object v4

    #@272
    .line 1472
    const-string/jumbo v5, " (pid="

    #@275
    .line 1471
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@278
    move-result-object v4

    #@279
    move/from16 v0, p5

    #@27b
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@27e
    move-result-object v4

    #@27f
    .line 1473
    const-string/jumbo v5, ", uid="

    #@282
    .line 1471
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@285
    move-result-object v4

    #@286
    move/from16 v0, p6

    #@288
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@28b
    move-result-object v4

    #@28c
    .line 1473
    const-string/jumbo v5, ") with launchTaskId="

    #@28f
    .line 1471
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@292
    move-result-object v4

    #@293
    .line 1474
    invoke-virtual/range {p12 .. p12}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    #@296
    move-result v5

    #@297
    .line 1471
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@29a
    move-result-object v4

    #@29b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29e
    move-result-object v14

    #@29f
    .line 1475
    .restart local v14    # "msg":Ljava/lang/String;
    sget-object v4, Lcom/android/server/am/ActivityStackSupervisor;->TAG:Ljava/lang/String;

    #@2a1
    invoke-static {v4, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2a4
    .line 1476
    new-instance v4, Ljava/lang/SecurityException;

    #@2a6
    invoke-direct {v4, v14}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@2a9
    throw v4

    #@2aa
    .line 1480
    .end local v14    # "msg":Ljava/lang/String;
    .end local v16    # "startInTaskPerm":I
    :cond_8
    const/4 v4, 0x1

    #@2ab
    return v4
.end method

.method clearOtherAppTimeTrackers(Lcom/android/server/am/AppTimeTracker;)V
    .locals 6
    .param p1, "except"    # Lcom/android/server/am/AppTimeTracker;

    #@0
    .prologue
    .line 2984
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    #@5
    move-result v5

    #@6
    add-int/lit8 v0, v5, -0x1

    #@8
    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_1

    #@a
    .line 2985
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    #@c
    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@f
    move-result-object v5

    #@10
    check-cast v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    #@12
    iget-object v3, v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    #@14
    .line 2986
    .local v3, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@17
    move-result v5

    #@18
    add-int/lit8 v4, v5, -0x1

    #@1a
    .line 2987
    .local v4, "topStackNdx":I
    move v2, v4

    #@1b
    .local v2, "stackNdx":I
    :goto_1
    if-ltz v2, :cond_0

    #@1d
    .line 2988
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@20
    move-result-object v1

    #@21
    check-cast v1, Lcom/android/server/am/ActivityStack;

    #@23
    .line 2989
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityStack;->clearOtherAppTimeTrackers(Lcom/android/server/am/AppTimeTracker;)V

    #@26
    .line 2987
    add-int/lit8 v2, v2, -0x1

    #@28
    goto :goto_1

    #@29
    .line 2984
    .end local v1    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@2b
    goto :goto_0

    #@2c
    .line 2983
    .end local v2    # "stackNdx":I
    .end local v3    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    .end local v4    # "topStackNdx":I
    :cond_1
    return-void
.end method

.method closeSystemDialogsLocked()V
    .locals 4

    #@0
    .prologue
    .line 1734
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    #@5
    move-result v3

    #@6
    add-int/lit8 v0, v3, -0x1

    #@8
    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_1

    #@a
    .line 1735
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    #@c
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@f
    move-result-object v3

    #@10
    check-cast v3, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    #@12
    iget-object v2, v3, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    #@14
    .line 1736
    .local v2, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@17
    move-result v3

    #@18
    add-int/lit8 v1, v3, -0x1

    #@1a
    .local v1, "stackNdx":I
    :goto_1
    if-ltz v1, :cond_0

    #@1c
    .line 1737
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1f
    move-result-object v3

    #@20
    check-cast v3, Lcom/android/server/am/ActivityStack;

    #@22
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->closeSystemDialogsLocked()V

    #@25
    .line 1736
    add-int/lit8 v1, v1, -0x1

    #@27
    goto :goto_1

    #@28
    .line 1734
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@2a
    goto :goto_0

    #@2b
    .line 1733
    .end local v1    # "stackNdx":I
    .end local v2    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_1
    return-void
.end method

.method comeOutOfSleepIfNeededLocked()V
    .locals 5

    #@0
    .prologue
    .line 2767
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->removeSleepTimeouts()V

    #@3
    .line 2768
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    #@5
    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    #@8
    move-result v4

    #@9
    if-eqz v4, :cond_0

    #@b
    .line 2769
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    #@d
    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    #@10
    .line 2771
    :cond_0
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    #@12
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    #@15
    move-result v4

    #@16
    add-int/lit8 v0, v4, -0x1

    #@18
    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_3

    #@1a
    .line 2772
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    #@1c
    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@1f
    move-result-object v4

    #@20
    check-cast v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    #@22
    iget-object v3, v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    #@24
    .line 2773
    .local v3, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@27
    move-result v4

    #@28
    add-int/lit8 v2, v4, -0x1

    #@2a
    .local v2, "stackNdx":I
    :goto_1
    if-ltz v2, :cond_2

    #@2c
    .line 2774
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2f
    move-result-object v1

    #@30
    check-cast v1, Lcom/android/server/am/ActivityStack;

    #@32
    .line 2775
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->awakeFromSleepingLocked()V

    #@35
    .line 2776
    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusedStack(Lcom/android/server/am/ActivityStack;)Z

    #@38
    move-result v4

    #@39
    if-eqz v4, :cond_1

    #@3b
    .line 2777
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    #@3e
    .line 2773
    :cond_1
    add-int/lit8 v2, v2, -0x1

    #@40
    goto :goto_1

    #@41
    .line 2771
    .end local v1    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_2
    add-int/lit8 v0, v0, -0x1

    #@43
    goto :goto_0

    #@44
    .line 2781
    .end local v2    # "stackNdx":I
    .end local v3    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_3
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    #@46
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    #@49
    .line 2766
    return-void
.end method

.method continueUpdateBounds(I)V
    .locals 1
    .param p1, "stackId"    # I

    #@0
    .prologue
    .line 2063
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    #@3
    move-result-object v0

    #@4
    .line 2064
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v0, :cond_0

    #@6
    .line 2065
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->continueUpdateBounds()V

    #@9
    .line 2062
    :cond_0
    return-void
.end method

.method createStackOnDisplay(IIZ)Lcom/android/server/am/ActivityStack;
    .locals 4
    .param p1, "stackId"    # I
    .param p2, "displayId"    # I
    .param p3, "onTop"    # Z

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 2345
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    #@3
    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@6
    move-result-object v1

    #@7
    check-cast v1, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    #@9
    .line 2346
    .local v1, "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    if-nez v1, :cond_0

    #@b
    .line 2347
    return-object v3

    #@c
    .line 2350
    :cond_0
    new-instance v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    #@e
    invoke-direct {v0, p0, p1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;-><init>(Lcom/android/server/am/ActivityStackSupervisor;I)V

    #@11
    .line 2351
    .local v0, "activityContainer":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityContainers:Landroid/util/SparseArray;

    #@13
    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@16
    .line 2352
    invoke-virtual {v0, v1, p3}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->attachToDisplayLocked(Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;Z)V

    #@19
    .line 2353
    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStack:Lcom/android/server/am/ActivityStack;

    #@1b
    return-object v2
.end method

.method createVirtualActivityContainer(Lcom/android/server/am/ActivityRecord;Landroid/app/IActivityContainerCallback;)Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    .locals 3
    .param p1, "parentActivity"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "callback"    # Landroid/app/IActivityContainerCallback;

    #@0
    .prologue
    .line 1993
    new-instance v0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;

    #@2
    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;-><init>(Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/ActivityRecord;Landroid/app/IActivityContainerCallback;)V

    #@5
    .line 1994
    .local v0, "activityContainer":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityContainers:Landroid/util/SparseArray;

    #@7
    iget v2, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStackId:I

    #@9
    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@c
    .line 1997
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->mChildContainers:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@11
    .line 1998
    return-object v0
.end method

.method deferUpdateBounds(I)V
    .locals 1
    .param p1, "stackId"    # I

    #@0
    .prologue
    .line 2056
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    #@3
    move-result-object v0

    #@4
    .line 2057
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v0, :cond_0

    #@6
    .line 2058
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->deferUpdateBounds()V

    #@9
    .line 2055
    :cond_0
    return-void
.end method

.method deleteActivityContainer(Landroid/app/IActivityContainer;)V
    .locals 3
    .param p1, "container"    # Landroid/app/IActivityContainer;

    #@0
    .prologue
    move-object v0, p1

    #@1
    .line 2012
    check-cast v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    #@3
    .line 2013
    .local v0, "activityContainer":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    if-eqz v0, :cond_0

    #@5
    .line 2016
    iget v1, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStackId:I

    #@7
    .line 2017
    .local v1, "stackId":I
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityContainers:Landroid/util/SparseArray;

    #@9
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->remove(I)V

    #@c
    .line 2018
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@e
    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowManagerService;->removeStack(I)V

    #@11
    .line 2011
    .end local v1    # "stackId":I
    :cond_0
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3188
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3
    new-instance v2, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v3, "mFocusedStack="

    #@b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v2

    #@f
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    #@11
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1c
    .line 3189
    const-string/jumbo v2, " mLastFocusedStack="

    #@1f
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@22
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLastFocusedStack:Lcom/android/server/am/ActivityStack;

    #@24
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@27
    .line 3190
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2a
    new-instance v2, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    const-string/jumbo v3, "mSleepTimeout="

    #@32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v2

    #@36
    iget-boolean v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mSleepTimeout:Z

    #@38
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v2

    #@3c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v2

    #@40
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@43
    .line 3191
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@46
    .line 3192
    new-instance v2, Ljava/lang/StringBuilder;

    #@48
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@4b
    const-string/jumbo v3, "mCurTaskIdForUser="

    #@4e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v2

    #@52
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurTaskIdForUser:Landroid/util/SparseIntArray;

    #@54
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v2

    #@58
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5b
    move-result-object v2

    #@5c
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@5f
    .line 3193
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@62
    new-instance v2, Ljava/lang/StringBuilder;

    #@64
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@67
    const-string/jumbo v3, "mUserStackInFront="

    #@6a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v2

    #@6e
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mUserStackInFront:Landroid/util/SparseIntArray;

    #@70
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v2

    #@74
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@77
    move-result-object v2

    #@78
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@7b
    .line 3194
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@7e
    new-instance v2, Ljava/lang/StringBuilder;

    #@80
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@83
    const-string/jumbo v3, "mActivityContainers="

    #@86
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89
    move-result-object v2

    #@8a
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityContainers:Landroid/util/SparseArray;

    #@8c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v2

    #@90
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@93
    move-result-object v2

    #@94
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@97
    .line 3195
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9a
    new-instance v2, Ljava/lang/StringBuilder;

    #@9c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@9f
    const-string/jumbo v3, "mLockTaskModeState="

    #@a2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a5
    move-result-object v2

    #@a6
    invoke-direct {p0}, Lcom/android/server/am/ActivityStackSupervisor;->lockTaskModeToString()Ljava/lang/String;

    #@a9
    move-result-object v3

    #@aa
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ad
    move-result-object v2

    #@ae
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b1
    move-result-object v2

    #@b2
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@b5
    .line 3196
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@b7
    iget-object v1, v2, Lcom/android/server/am/ActivityManagerService;->mLockTaskPackages:Landroid/util/SparseArray;

    #@b9
    .line 3197
    .local v1, "packages":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    #@bc
    move-result v2

    #@bd
    if-lez v2, :cond_0

    #@bf
    .line 3198
    const-string/jumbo v2, " mLockTaskPackages (userId:packages)="

    #@c2
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@c5
    .line 3199
    const/4 v0, 0x0

    #@c6
    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    #@c9
    move-result v2

    #@ca
    if-ge v0, v2, :cond_0

    #@cc
    .line 3200
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@cf
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@d2
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    #@d5
    move-result v2

    #@d6
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    #@d9
    .line 3201
    const-string/jumbo v2, ":"

    #@dc
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@df
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@e2
    move-result-object v2

    #@e3
    check-cast v2, [Ljava/lang/Object;

    #@e5
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@e8
    move-result-object v2

    #@e9
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@ec
    .line 3199
    add-int/lit8 v0, v0, 0x1

    #@ee
    goto :goto_0

    #@ef
    .line 3204
    .end local v0    # "i":I
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    #@f1
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@f4
    const-string/jumbo v3, " mLockTaskModeTasks"

    #@f7
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fa
    move-result-object v2

    #@fb
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeTasks:Ljava/util/ArrayList;

    #@fd
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@100
    move-result-object v2

    #@101
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@104
    move-result-object v2

    #@105
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@108
    .line 3187
    return-void
.end method

.method dumpActivitiesLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZZLjava/lang/String;)Z
    .locals 29
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "dumpAll"    # Z
    .param p4, "dumpClient"    # Z
    .param p5, "dumpPackage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3228
    const/16 v25, 0x0

    #@2
    .line 3229
    .local v25, "printed":Z
    const/4 v9, 0x0

    #@3
    .line 3230
    .local v9, "needSep":Z
    const/16 v23, 0x0

    #@5
    .end local v9    # "needSep":Z
    .end local v25    # "printed":Z
    .local v23, "displayNdx":I
    :goto_0
    move-object/from16 v0, p0

    #@7
    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    #@9
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    #@c
    move-result v4

    #@d
    move/from16 v0, v23

    #@f
    if-ge v0, v4, :cond_6

    #@11
    .line 3231
    move-object/from16 v0, p0

    #@13
    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    #@15
    move/from16 v0, v23

    #@17
    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@1a
    move-result-object v22

    #@1b
    check-cast v22, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    #@1d
    .line 3232
    .local v22, "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    const-string/jumbo v4, "Display #"

    #@20
    move-object/from16 v0, p2

    #@22
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@25
    move-object/from16 v0, v22

    #@27
    iget v4, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplayId:I

    #@29
    move-object/from16 v0, p2

    #@2b
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    #@2e
    .line 3233
    const-string/jumbo v4, " (activities from top to bottom):"

    #@31
    move-object/from16 v0, p2

    #@33
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@36
    .line 3234
    move-object/from16 v0, v22

    #@38
    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    #@3a
    move-object/from16 v28, v0

    #@3c
    .line 3235
    .local v28, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    #@3f
    move-result v4

    #@40
    add-int/lit8 v27, v4, -0x1

    #@42
    .local v27, "stackNdx":I
    :goto_1
    if-ltz v27, :cond_5

    #@44
    .line 3236
    move-object/from16 v0, v28

    #@46
    move/from16 v1, v27

    #@48
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@4b
    move-result-object v3

    #@4c
    check-cast v3, Lcom/android/server/am/ActivityStack;

    #@4e
    .line 3237
    .local v3, "stack":Lcom/android/server/am/ActivityStack;
    new-instance v26, Ljava/lang/StringBuilder;

    #@50
    const/16 v4, 0x80

    #@52
    move-object/from16 v0, v26

    #@54
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    #@57
    .line 3238
    .local v26, "stackHeader":Ljava/lang/StringBuilder;
    const-string/jumbo v4, "  Stack #"

    #@5a
    move-object/from16 v0, v26

    #@5c
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    .line 3239
    iget v4, v3, Lcom/android/server/am/ActivityStack;->mStackId:I

    #@61
    move-object/from16 v0, v26

    #@63
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@66
    .line 3240
    const-string/jumbo v4, ":"

    #@69
    move-object/from16 v0, v26

    #@6b
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    .line 3241
    const-string/jumbo v4, "\n"

    #@71
    move-object/from16 v0, v26

    #@73
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    .line 3242
    const-string/jumbo v4, "  mFullscreen="

    #@79
    move-object/from16 v0, v26

    #@7b
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v4

    #@7f
    iget-boolean v5, v3, Lcom/android/server/am/ActivityStack;->mFullscreen:Z

    #@81
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@84
    .line 3243
    const-string/jumbo v4, "\n"

    #@87
    move-object/from16 v0, v26

    #@89
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8c
    .line 3244
    const-string/jumbo v4, "  mBounds="

    #@8f
    move-object/from16 v0, v26

    #@91
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@94
    move-result-object v4

    #@95
    iget-object v5, v3, Lcom/android/server/am/ActivityStack;->mBounds:Landroid/graphics/Rect;

    #@97
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@9a
    .line 3246
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9d
    move-result-object v10

    #@9e
    move-object/from16 v4, p1

    #@a0
    move-object/from16 v5, p2

    #@a2
    move/from16 v6, p3

    #@a4
    move/from16 v7, p4

    #@a6
    move-object/from16 v8, p5

    #@a8
    .line 3245
    invoke-virtual/range {v3 .. v10}, Lcom/android/server/am/ActivityStack;->dumpActivitiesLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZZLjava/lang/String;ZLjava/lang/String;)Z

    #@ab
    move-result v4

    #@ac
    or-int v25, v25, v4

    #@ae
    .line 3247
    .local v25, "printed":Z
    iget-object v12, v3, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    #@b0
    const-string/jumbo v13, "    "

    #@b3
    const-string/jumbo v14, "Run"

    #@b6
    .line 3248
    if-eqz p3, :cond_4

    #@b8
    const/16 v16, 0x0

    #@ba
    .line 3249
    :goto_2
    const-string/jumbo v20, "    Running activities (most recent first):"

    #@bd
    .line 3247
    const/4 v15, 0x0

    #@be
    .line 3248
    const/16 v17, 0x0

    #@c0
    const/16 v19, 0x1

    #@c2
    .line 3249
    const/16 v21, 0x0

    #@c4
    move-object/from16 v10, p1

    #@c6
    move-object/from16 v11, p2

    #@c8
    move-object/from16 v18, p5

    #@ca
    .line 3247
    invoke-static/range {v10 .. v21}, Lcom/android/server/am/ActivityStackSupervisor;->dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z

    #@cd
    move-result v4

    #@ce
    or-int v25, v25, v4

    #@d0
    .line 3251
    move/from16 v9, v25

    #@d2
    .line 3252
    .local v9, "needSep":Z
    iget-object v4, v3, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    #@d4
    .line 3253
    const-string/jumbo v5, "    mPausingActivity: "

    #@d7
    .line 3252
    move-object/from16 v0, p2

    #@d9
    move-object/from16 v1, p5

    #@db
    move/from16 v2, v25

    #@dd
    invoke-static {v0, v4, v1, v2, v5}, Lcom/android/server/am/ActivityStackSupervisor;->printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;)Z

    #@e0
    move-result v24

    #@e1
    .line 3254
    .local v24, "pr":Z
    if-eqz v24, :cond_0

    #@e3
    .line 3255
    const/16 v25, 0x1

    #@e5
    .line 3256
    .local v25, "printed":Z
    const/4 v9, 0x0

    #@e6
    .line 3258
    .end local v9    # "needSep":Z
    .end local v25    # "printed":Z
    :cond_0
    iget-object v4, v3, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    #@e8
    .line 3259
    const-string/jumbo v5, "    mResumedActivity: "

    #@eb
    .line 3258
    move-object/from16 v0, p2

    #@ed
    move-object/from16 v1, p5

    #@ef
    invoke-static {v0, v4, v1, v9, v5}, Lcom/android/server/am/ActivityStackSupervisor;->printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;)Z

    #@f2
    move-result v24

    #@f3
    .line 3260
    if-eqz v24, :cond_1

    #@f5
    .line 3261
    const/16 v25, 0x1

    #@f7
    .line 3262
    .restart local v25    # "printed":Z
    const/4 v9, 0x0

    #@f8
    .line 3264
    .end local v25    # "printed":Z
    :cond_1
    if-eqz p3, :cond_3

    #@fa
    .line 3265
    iget-object v4, v3, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    #@fc
    .line 3266
    const-string/jumbo v5, "    mLastPausedActivity: "

    #@ff
    .line 3265
    move-object/from16 v0, p2

    #@101
    move-object/from16 v1, p5

    #@103
    invoke-static {v0, v4, v1, v9, v5}, Lcom/android/server/am/ActivityStackSupervisor;->printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;)Z

    #@106
    move-result v24

    #@107
    .line 3267
    if-eqz v24, :cond_2

    #@109
    .line 3268
    const/16 v25, 0x1

    #@10b
    .line 3269
    .restart local v25    # "printed":Z
    const/4 v9, 0x1

    #@10c
    .line 3271
    .end local v25    # "printed":Z
    :cond_2
    iget-object v4, v3, Lcom/android/server/am/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    #@10e
    .line 3272
    const-string/jumbo v5, "    mLastNoHistoryActivity: "

    #@111
    .line 3271
    move-object/from16 v0, p2

    #@113
    move-object/from16 v1, p5

    #@115
    invoke-static {v0, v4, v1, v9, v5}, Lcom/android/server/am/ActivityStackSupervisor;->printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;)Z

    #@118
    move-result v4

    #@119
    or-int v25, v25, v4

    #@11b
    .line 3274
    :cond_3
    move/from16 v9, v25

    #@11d
    .line 3235
    .restart local v9    # "needSep":Z
    add-int/lit8 v27, v27, -0x1

    #@11f
    goto/16 :goto_1

    #@121
    .line 3248
    .end local v9    # "needSep":Z
    .end local v24    # "pr":Z
    .local v25, "printed":Z
    :cond_4
    const/16 v16, 0x1

    #@123
    goto :goto_2

    #@124
    .line 3230
    .end local v3    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v25    # "printed":Z
    .end local v26    # "stackHeader":Ljava/lang/StringBuilder;
    :cond_5
    add-int/lit8 v23, v23, 0x1

    #@126
    goto/16 :goto_0

    #@128
    .line 3278
    .end local v22    # "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    .end local v27    # "stackNdx":I
    .end local v28    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_6
    move-object/from16 v0, p0

    #@12a
    iget-object v12, v0, Lcom/android/server/am/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    #@12c
    const-string/jumbo v13, "  "

    #@12f
    const-string/jumbo v14, "Fin"

    #@132
    if-eqz p3, :cond_7

    #@134
    const/16 v16, 0x0

    #@136
    .line 3279
    :goto_3
    const-string/jumbo v20, "  Activities waiting to finish:"

    #@139
    .line 3278
    const/4 v15, 0x0

    #@13a
    .line 3279
    const/16 v17, 0x0

    #@13c
    const/16 v19, 0x1

    #@13e
    const/16 v21, 0x0

    #@140
    move-object/from16 v10, p1

    #@142
    move-object/from16 v11, p2

    #@144
    move-object/from16 v18, p5

    #@146
    .line 3278
    invoke-static/range {v10 .. v21}, Lcom/android/server/am/ActivityStackSupervisor;->dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z

    #@149
    move-result v4

    #@14a
    or-int v25, v25, v4

    #@14c
    .line 3280
    .restart local v25    # "printed":Z
    move-object/from16 v0, p0

    #@14e
    iget-object v12, v0, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    #@150
    const-string/jumbo v13, "  "

    #@153
    const-string/jumbo v14, "Stop"

    #@156
    if-eqz p3, :cond_8

    #@158
    const/16 v16, 0x0

    #@15a
    .line 3281
    :goto_4
    const-string/jumbo v20, "  Activities waiting to stop:"

    #@15d
    .line 3280
    const/4 v15, 0x0

    #@15e
    .line 3281
    const/16 v17, 0x0

    #@160
    const/16 v19, 0x1

    #@162
    const/16 v21, 0x0

    #@164
    move-object/from16 v10, p1

    #@166
    move-object/from16 v11, p2

    #@168
    move-object/from16 v18, p5

    #@16a
    .line 3280
    invoke-static/range {v10 .. v21}, Lcom/android/server/am/ActivityStackSupervisor;->dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z

    #@16d
    move-result v4

    #@16e
    or-int v25, v25, v4

    #@170
    .line 3282
    move-object/from16 v0, p0

    #@172
    iget-object v12, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    #@174
    const-string/jumbo v13, "  "

    #@177
    const-string/jumbo v14, "Wait"

    #@17a
    if-eqz p3, :cond_9

    #@17c
    const/16 v16, 0x0

    #@17e
    .line 3283
    :goto_5
    const-string/jumbo v20, "  Activities waiting for another to become visible:"

    #@181
    .line 3282
    const/4 v15, 0x0

    #@182
    .line 3283
    const/16 v17, 0x0

    #@184
    const/16 v19, 0x1

    #@186
    .line 3284
    const/16 v21, 0x0

    #@188
    move-object/from16 v10, p1

    #@18a
    move-object/from16 v11, p2

    #@18c
    move-object/from16 v18, p5

    #@18e
    .line 3282
    invoke-static/range {v10 .. v21}, Lcom/android/server/am/ActivityStackSupervisor;->dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z

    #@191
    move-result v4

    #@192
    or-int v25, v25, v4

    #@194
    .line 3285
    move-object/from16 v0, p0

    #@196
    iget-object v12, v0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    #@198
    const-string/jumbo v13, "  "

    #@19b
    const-string/jumbo v14, "Sleep"

    #@19e
    if-eqz p3, :cond_a

    #@1a0
    const/16 v16, 0x0

    #@1a2
    .line 3286
    :goto_6
    const-string/jumbo v20, "  Activities waiting to sleep:"

    #@1a5
    .line 3285
    const/4 v15, 0x0

    #@1a6
    .line 3286
    const/16 v17, 0x0

    #@1a8
    const/16 v19, 0x1

    #@1aa
    const/16 v21, 0x0

    #@1ac
    move-object/from16 v10, p1

    #@1ae
    move-object/from16 v11, p2

    #@1b0
    move-object/from16 v18, p5

    #@1b2
    .line 3285
    invoke-static/range {v10 .. v21}, Lcom/android/server/am/ActivityStackSupervisor;->dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z

    #@1b5
    move-result v4

    #@1b6
    or-int v25, v25, v4

    #@1b8
    .line 3287
    move-object/from16 v0, p0

    #@1ba
    iget-object v12, v0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    #@1bc
    const-string/jumbo v13, "  "

    #@1bf
    const-string/jumbo v14, "Sleep"

    #@1c2
    if-eqz p3, :cond_b

    #@1c4
    const/16 v16, 0x0

    #@1c6
    .line 3288
    :goto_7
    const-string/jumbo v20, "  Activities waiting to sleep:"

    #@1c9
    .line 3287
    const/4 v15, 0x0

    #@1ca
    .line 3288
    const/16 v17, 0x0

    #@1cc
    const/16 v19, 0x1

    #@1ce
    const/16 v21, 0x0

    #@1d0
    move-object/from16 v10, p1

    #@1d2
    move-object/from16 v11, p2

    #@1d4
    move-object/from16 v18, p5

    #@1d6
    .line 3287
    invoke-static/range {v10 .. v21}, Lcom/android/server/am/ActivityStackSupervisor;->dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z

    #@1d9
    move-result v4

    #@1da
    or-int v25, v25, v4

    #@1dc
    .line 3290
    return v25

    #@1dd
    .line 3278
    .end local v25    # "printed":Z
    :cond_7
    const/16 v16, 0x1

    #@1df
    goto/16 :goto_3

    #@1e1
    .line 3280
    .restart local v25    # "printed":Z
    :cond_8
    const/16 v16, 0x1

    #@1e3
    goto/16 :goto_4

    #@1e5
    .line 3282
    :cond_9
    const/16 v16, 0x1

    #@1e7
    goto :goto_5

    #@1e8
    .line 3285
    :cond_a
    const/16 v16, 0x1

    #@1ea
    goto :goto_6

    #@1eb
    .line 3287
    :cond_b
    const/16 v16, 0x1

    #@1ed
    goto :goto_7
.end method

.method ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V
    .locals 6
    .param p1, "starting"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "configChanges"    # I
    .param p3, "preserveWindows"    # Z

    #@0
    .prologue
    .line 2955
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    #@5
    move-result v5

    #@6
    add-int/lit8 v0, v5, -0x1

    #@8
    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_1

    #@a
    .line 2956
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    #@c
    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@f
    move-result-object v5

    #@10
    check-cast v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    #@12
    iget-object v3, v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    #@14
    .line 2957
    .local v3, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@17
    move-result v5

    #@18
    add-int/lit8 v4, v5, -0x1

    #@1a
    .line 2958
    .local v4, "topStackNdx":I
    move v2, v4

    #@1b
    .local v2, "stackNdx":I
    :goto_1
    if-ltz v2, :cond_0

    #@1d
    .line 2959
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@20
    move-result-object v1

    #@21
    check-cast v1, Lcom/android/server/am/ActivityStack;

    #@23
    .line 2960
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    #@26
    .line 2958
    add-int/lit8 v2, v2, -0x1

    #@28
    goto :goto_1

    #@29
    .line 2955
    .end local v1    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@2b
    goto :goto_0

    #@2c
    .line 2953
    .end local v2    # "stackNdx":I
    .end local v3    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    .end local v4    # "topStackNdx":I
    :cond_1
    return-void
.end method

.method findActivityLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Z)Lcom/android/server/am/ActivityRecord;
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "info"    # Landroid/content/pm/ActivityInfo;
    .param p3, "compareIntentFilters"    # Z

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 2701
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    #@3
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    #@6
    move-result v4

    #@7
    add-int/lit8 v1, v4, -0x1

    #@9
    .local v1, "displayNdx":I
    :goto_0
    if-ltz v1, :cond_2

    #@b
    .line 2702
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    #@d
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@10
    move-result-object v4

    #@11
    check-cast v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    #@13
    iget-object v3, v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    #@15
    .line 2703
    .local v3, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@18
    move-result v4

    #@19
    add-int/lit8 v2, v4, -0x1

    #@1b
    .local v2, "stackNdx":I
    :goto_1
    if-ltz v2, :cond_1

    #@1d
    .line 2704
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@20
    move-result-object v4

    #@21
    check-cast v4, Lcom/android/server/am/ActivityStack;

    #@23
    invoke-virtual {v4, p1, p2, p3}, Lcom/android/server/am/ActivityStack;->findActivityLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Z)Lcom/android/server/am/ActivityRecord;

    #@26
    move-result-object v0

    #@27
    .line 2706
    .local v0, "ar":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_0

    #@29
    .line 2707
    return-object v0

    #@2a
    .line 2703
    :cond_0
    add-int/lit8 v2, v2, -0x1

    #@2c
    goto :goto_1

    #@2d
    .line 2701
    .end local v0    # "ar":Lcom/android/server/am/ActivityRecord;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    #@2f
    goto :goto_0

    #@30
    .line 2711
    .end local v2    # "stackNdx":I
    .end local v3    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_2
    return-object v5
.end method

.method findStackBehind(Lcom/android/server/am/ActivityStack;)Lcom/android/server/am/ActivityStack;
    .locals 6
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    .line 4416
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    #@4
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    #@a
    .line 4417
    .local v0, "display":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    if-nez v0, :cond_0

    #@c
    .line 4418
    return-object v5

    #@d
    .line 4420
    :cond_0
    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    #@f
    .line 4421
    .local v2, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@12
    move-result v3

    #@13
    add-int/lit8 v1, v3, -0x1

    #@15
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    #@17
    .line 4422
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1a
    move-result-object v3

    #@1b
    if-ne v3, p1, :cond_1

    #@1d
    if-lez v1, :cond_1

    #@1f
    .line 4423
    add-int/lit8 v3, v1, -0x1

    #@21
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@24
    move-result-object v3

    #@25
    check-cast v3, Lcom/android/server/am/ActivityStack;

    #@27
    return-object v3

    #@28
    .line 4421
    :cond_1
    add-int/lit8 v1, v1, -0x1

    #@2a
    goto :goto_0

    #@2b
    .line 4426
    :cond_2
    new-instance v3, Ljava/lang/IllegalStateException;

    #@2d
    new-instance v4, Ljava/lang/StringBuilder;

    #@2f
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@32
    const-string/jumbo v5, "Failed to find a stack behind stack="

    #@35
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v4

    #@39
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v4

    #@3d
    .line 4427
    const-string/jumbo v5, " in="

    #@40
    .line 4426
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v4

    #@44
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v4

    #@48
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v4

    #@4c
    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@4f
    throw v3
.end method

.method findTaskLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .locals 7
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v5, 0x0

    #@2
    .line 2669
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpFindTaskResult:Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;

    #@4
    iput-object v6, v4, Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;->r:Lcom/android/server/am/ActivityRecord;

    #@6
    .line 2670
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpFindTaskResult:Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;

    #@8
    iput-boolean v5, v4, Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;->matchedByRootAffinity:Z

    #@a
    .line 2672
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    #@c
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    #@f
    move-result v4

    #@10
    add-int/lit8 v0, v4, -0x1

    #@12
    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_4

    #@14
    .line 2673
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    #@16
    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@19
    move-result-object v4

    #@1a
    check-cast v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    #@1c
    iget-object v3, v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    #@1e
    .line 2674
    .local v3, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@21
    move-result v4

    #@22
    add-int/lit8 v2, v4, -0x1

    #@24
    .local v2, "stackNdx":I
    :goto_1
    if-ltz v2, :cond_3

    #@26
    .line 2675
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@29
    move-result-object v1

    #@2a
    check-cast v1, Lcom/android/server/am/ActivityStack;

    #@2c
    .line 2676
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isApplicationActivity()Z

    #@2f
    move-result v4

    #@30
    if-nez v4, :cond_0

    #@32
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    #@35
    move-result v4

    #@36
    if-eqz v4, :cond_1

    #@38
    .line 2680
    :cond_0
    iget-object v4, v1, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    #@3a
    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->isEligibleForNewTasks()Z

    #@3d
    move-result v4

    #@3e
    if-nez v4, :cond_2

    #@40
    .line 2674
    :cond_1
    add-int/lit8 v2, v2, -0x1

    #@42
    goto :goto_1

    #@43
    .line 2685
    :cond_2
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpFindTaskResult:Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;

    #@45
    invoke-virtual {v1, p1, v4}, Lcom/android/server/am/ActivityStack;->findTaskLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;)V

    #@48
    .line 2690
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpFindTaskResult:Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;

    #@4a
    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;->r:Lcom/android/server/am/ActivityRecord;

    #@4c
    if-eqz v4, :cond_1

    #@4e
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpFindTaskResult:Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;

    #@50
    iget-boolean v4, v4, Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;->matchedByRootAffinity:Z

    #@52
    if-nez v4, :cond_1

    #@54
    .line 2691
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpFindTaskResult:Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;

    #@56
    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;->r:Lcom/android/server/am/ActivityRecord;

    #@58
    return-object v4

    #@59
    .line 2672
    .end local v1    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_3
    add-int/lit8 v0, v0, -0x1

    #@5b
    goto :goto_0

    #@5c
    .line 2696
    .end local v2    # "stackNdx":I
    .end local v3    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_4
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpFindTaskResult:Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;

    #@5e
    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;->r:Lcom/android/server/am/ActivityRecord;

    #@60
    return-object v4
.end method

.method findTaskToMoveToFrontLocked(Lcom/android/server/am/TaskRecord;ILandroid/app/ActivityOptions;Ljava/lang/String;Z)V
    .locals 13
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "flags"    # I
    .param p3, "options"    # Landroid/app/ActivityOptions;
    .param p4, "reason"    # Ljava/lang/String;
    .param p5, "forceNonResizeable"    # Z

    #@0
    .prologue
    .line 1864
    and-int/lit8 v1, p2, 0x2

    #@2
    if-nez v1, :cond_0

    #@4
    .line 1865
    const/4 v1, 0x1

    #@5
    iput-boolean v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mUserLeaving:Z

    #@7
    .line 1867
    :cond_0
    and-int/lit8 v1, p2, 0x1

    #@9
    if-eqz v1, :cond_1

    #@b
    .line 1870
    const/4 v1, 0x1

    #@c
    invoke-virtual {p1, v1}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    #@f
    .line 1872
    :cond_1
    iget-object v1, p1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@11
    if-nez v1, :cond_2

    #@13
    .line 1873
    sget-object v1, Lcom/android/server/am/ActivityStackSupervisor;->TAG:Ljava/lang/String;

    #@15
    new-instance v2, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v4, "findTaskToMoveToFrontLocked: can\'t move task="

    #@1d
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v2

    #@25
    .line 1874
    const-string/jumbo v4, " to front. Stack is null"

    #@28
    .line 1873
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v2

    #@2c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v2

    #@30
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@33
    .line 1875
    return-void

    #@34
    .line 1878
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->isResizeable()Z

    #@37
    move-result v1

    #@38
    if-eqz v1, :cond_5

    #@3a
    if-eqz p3, :cond_5

    #@3c
    .line 1879
    invoke-virtual/range {p3 .. p3}, Landroid/app/ActivityOptions;->getLaunchStackId()I

    #@3f
    move-result v3

    #@40
    .line 1880
    .local v3, "stackId":I
    move-object/from16 v0, p3

    #@42
    invoke-virtual {p0, v0, v3}, Lcom/android/server/am/ActivityStackSupervisor;->canUseActivityOptionsLaunchBounds(Landroid/app/ActivityOptions;I)Z

    #@45
    move-result v1

    #@46
    if-eqz v1, :cond_5

    #@48
    .line 1881
    invoke-virtual/range {p3 .. p3}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    #@4b
    move-result-object v1

    #@4c
    invoke-static {v1}, Lcom/android/server/am/TaskRecord;->validateBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    #@4f
    move-result-object v10

    #@50
    .line 1882
    .local v10, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p1, v10}, Lcom/android/server/am/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;)Landroid/content/res/Configuration;

    #@53
    .line 1883
    const/4 v1, -0x1

    #@54
    if-ne v3, v1, :cond_3

    #@56
    .line 1884
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getLaunchStackId()I

    #@59
    move-result v3

    #@5a
    .line 1886
    :cond_3
    iget-object v1, p1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@5c
    iget v1, v1, Lcom/android/server/am/ActivityStack;->mStackId:I

    #@5e
    if-eq v3, v1, :cond_4

    #@60
    .line 1888
    const/4 v4, 0x1

    #@61
    const/4 v5, 0x0

    #@62
    move-object v1, p0

    #@63
    move-object v2, p1

    #@64
    move-object/from16 v6, p4

    #@66
    .line 1887
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActivityStackSupervisor;->moveTaskToStackUncheckedLocked(Lcom/android/server/am/TaskRecord;IZZLjava/lang/String;)Lcom/android/server/am/ActivityStack;

    #@69
    move-result-object v12

    #@6a
    .line 1889
    .local v12, "stack":Lcom/android/server/am/ActivityStack;
    iget v3, v12, Lcom/android/server/am/ActivityStack;->mStackId:I

    #@6c
    .line 1893
    .end local v12    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_4
    invoke-static {v3}, Landroid/app/ActivityManager$StackId;->resizeStackWithLaunchBounds(I)Z

    #@6f
    move-result v1

    #@70
    if-eqz v1, :cond_6

    #@72
    .line 1895
    const/4 v5, 0x0

    #@73
    const/4 v6, 0x0

    #@74
    .line 1896
    const/4 v7, 0x0

    #@75
    const/4 v8, 0x1

    #@76
    const/4 v9, 0x0

    #@77
    move-object v2, p0

    #@78
    move-object v4, v10

    #@79
    .line 1894
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/am/ActivityStackSupervisor;->resizeStackLocked(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZZ)V

    #@7c
    .line 1907
    .end local v3    # "stackId":I
    .end local v10    # "bounds":Landroid/graphics/Rect;
    :cond_5
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    #@7f
    move-result-object v11

    #@80
    .line 1908
    .local v11, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v4, p1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@82
    .line 1909
    if-nez v11, :cond_7

    #@84
    const/4 v8, 0x0

    #@85
    .line 1908
    :goto_1
    const/4 v6, 0x0

    #@86
    move-object v5, p1

    #@87
    move-object/from16 v7, p3

    #@89
    move-object/from16 v9, p4

    #@8b
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V

    #@8e
    .line 1914
    iget-object v1, p1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@90
    iget v1, v1, Lcom/android/server/am/ActivityStack;->mStackId:I

    #@92
    const/4 v2, -0x1

    #@93
    move/from16 v0, p5

    #@95
    invoke-virtual {p0, p1, v2, v1, v0}, Lcom/android/server/am/ActivityStackSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/am/TaskRecord;IIZ)V

    #@98
    .line 1863
    return-void

    #@99
    .line 1901
    .end local v11    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v3    # "stackId":I
    .restart local v10    # "bounds":Landroid/graphics/Rect;
    :cond_6
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@9b
    iget v5, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    #@9d
    iget-object v6, p1, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    #@9f
    iget-object v7, p1, Lcom/android/server/am/TaskRecord;->mOverrideConfig:Landroid/content/res/Configuration;

    #@a1
    .line 1902
    const/4 v8, 0x0

    #@a2
    const/4 v9, 0x0

    #@a3
    .line 1901
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/wm/WindowManagerService;->resizeTask(ILandroid/graphics/Rect;Landroid/content/res/Configuration;ZZ)V

    #@a6
    goto :goto_0

    #@a7
    .line 1909
    .end local v3    # "stackId":I
    .end local v10    # "bounds":Landroid/graphics/Rect;
    .restart local v11    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_7
    iget-object v8, v11, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    #@a9
    goto :goto_1
.end method

.method finishDisabledPackageActivitiesLocked(Ljava/lang/String;Ljava/util/Set;ZZI)Z
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p3, "doit"    # Z
    .param p4, "evenPersistent"    # Z
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;ZZI)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 1761
    .local p2, "filterByClasses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v6, 0x0

    #@1
    .line 1762
    .local v6, "didSomething":Z
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    #@3
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    #@6
    move-result v1

    #@7
    add-int/lit8 v7, v1, -0x1

    #@9
    .local v7, "displayNdx":I
    :goto_0
    if-ltz v7, :cond_2

    #@b
    .line 1763
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    #@d
    invoke-virtual {v1, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@10
    move-result-object v1

    #@11
    check-cast v1, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    #@13
    iget-object v9, v1, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    #@15
    .line 1764
    .local v9, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    #@18
    move-result v1

    #@19
    add-int/lit8 v8, v1, -0x1

    #@1b
    .local v8, "stackNdx":I
    :goto_1
    if-ltz v8, :cond_1

    #@1d
    .line 1765
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@20
    move-result-object v0

    #@21
    check-cast v0, Lcom/android/server/am/ActivityStack;

    #@23
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    move-object v1, p1

    #@24
    move-object v2, p2

    #@25
    move v3, p3

    #@26
    move v4, p4

    #@27
    move v5, p5

    #@28
    .line 1766
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishDisabledPackageActivitiesLocked(Ljava/lang/String;Ljava/util/Set;ZZI)Z

    #@2b
    move-result v1

    #@2c
    if-eqz v1, :cond_0

    #@2e
    .line 1768
    const/4 v6, 0x1

    #@2f
    .line 1764
    :cond_0
    add-int/lit8 v8, v8, -0x1

    #@31
    goto :goto_1

    #@32
    .line 1762
    .end local v0    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_1
    add-int/lit8 v7, v7, -0x1

    #@34
    goto :goto_0

    #@35
    .line 1772
    .end local v8    # "stackNdx":I
    .end local v9    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_2
    return v6
.end method

.method finishTopRunningActivityLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Lcom/android/server/am/TaskRecord;
    .locals 9
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1835
    const/4 v1, 0x0

    #@1
    .line 1836
    .local v1, "finishedTask":Lcom/android/server/am/TaskRecord;
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    #@4
    move-result-object v2

    #@5
    .line 1837
    .local v2, "focusedStack":Lcom/android/server/am/ActivityStack;
    iget-object v8, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    #@7
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    #@a
    move-result v8

    #@b
    add-int/lit8 v0, v8, -0x1

    #@d
    .end local v1    # "finishedTask":Lcom/android/server/am/TaskRecord;
    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_3

    #@f
    .line 1838
    iget-object v8, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    #@11
    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@14
    move-result-object v8

    #@15
    check-cast v8, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    #@17
    iget-object v6, v8, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    #@19
    .line 1839
    .local v6, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@1c
    move-result v3

    #@1d
    .line 1840
    .local v3, "numStacks":I
    const/4 v5, 0x0

    #@1e
    .local v5, "stackNdx":I
    :goto_1
    if-ge v5, v3, :cond_2

    #@20
    .line 1841
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@23
    move-result-object v4

    #@24
    check-cast v4, Lcom/android/server/am/ActivityStack;

    #@26
    .line 1842
    .local v4, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v4, p1, p2}, Lcom/android/server/am/ActivityStack;->finishTopRunningActivityLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Lcom/android/server/am/TaskRecord;

    #@29
    move-result-object v7

    #@2a
    .line 1843
    .local v7, "t":Lcom/android/server/am/TaskRecord;
    if-eq v4, v2, :cond_0

    #@2c
    if-nez v1, :cond_1

    #@2e
    .line 1844
    :cond_0
    move-object v1, v7

    #@2f
    .line 1840
    :cond_1
    add-int/lit8 v5, v5, 0x1

    #@31
    goto :goto_1

    #@32
    .line 1837
    .end local v4    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v7    # "t":Lcom/android/server/am/TaskRecord;
    :cond_2
    add-int/lit8 v0, v0, -0x1

    #@34
    goto :goto_0

    #@35
    .line 1848
    .end local v3    # "numStacks":I
    .end local v5    # "stackNdx":I
    .end local v6    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_3
    return-object v1
.end method

.method finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V
    .locals 6
    .param p1, "session"    # Landroid/service/voice/IVoiceInteractionSession;

    #@0
    .prologue
    .line 1852
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    #@5
    move-result v5

    #@6
    add-int/lit8 v0, v5, -0x1

    #@8
    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_1

    #@a
    .line 1853
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    #@c
    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@f
    move-result-object v5

    #@10
    check-cast v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    #@12
    iget-object v4, v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    #@14
    .line 1854
    .local v4, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@17
    move-result v1

    #@18
    .line 1855
    .local v1, "numStacks":I
    const/4 v3, 0x0

    #@19
    .local v3, "stackNdx":I
    :goto_1
    if-ge v3, v1, :cond_0

    #@1b
    .line 1856
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1e
    move-result-object v2

    #@1f
    check-cast v2, Lcom/android/server/am/ActivityStack;

    #@21
    .line 1857
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v2, p1}, Lcom/android/server/am/ActivityStack;->finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V

    #@24
    .line 1855
    add-int/lit8 v3, v3, 0x1

    #@26
    goto :goto_1

    #@27
    .line 1852
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@29
    goto :goto_0

    #@2a
    .line 1851
    .end local v1    # "numStacks":I
    .end local v3    # "stackNdx":I
    .end local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_1
    return-void
.end method

.method getAllStackInfosLocked()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/ActivityManager$StackInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 3524
    new-instance v1, Ljava/util/ArrayList;

    #@2
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 3525
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$StackInfo;>;"
    const/4 v0, 0x0

    #@6
    .local v0, "displayNdx":I
    :goto_0
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    #@8
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    #@b
    move-result v4

    #@c
    if-ge v0, v4, :cond_1

    #@e
    .line 3526
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    #@10
    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@13
    move-result-object v4

    #@14
    check-cast v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    #@16
    iget-object v3, v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    #@18
    .line 3527
    .local v3, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@1b
    move-result v4

    #@1c
    add-int/lit8 v2, v4, -0x1

    #@1e
    .local v2, "ndx":I
    :goto_1
    if-ltz v2, :cond_0

    #@20
    .line 3528
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@23
    move-result-object v4

    #@24
    check-cast v4, Lcom/android/server/am/ActivityStack;

    #@26
    invoke-direct {p0, v4}, Lcom/android/server/am/ActivityStackSupervisor;->getStackInfoLocked(Lcom/android/server/am/ActivityStack;)Landroid/app/ActivityManager$StackInfo;

    #@29
    move-result-object v4

    #@2a
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2d
    .line 3527
    add-int/lit8 v2, v2, -0x1

    #@2f
    goto :goto_1

    #@30
    .line 3525
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@32
    goto :goto_0

    #@33
    .line 3531
    .end local v2    # "ndx":I
    .end local v3    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_1
    return-object v1
.end method

.method getDumpActivitiesLocked(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 3208
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStack;->getDumpActivitiesLocked(Ljava/lang/String;)Ljava/util/ArrayList;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method getFocusedStack()Lcom/android/server/am/ActivityStack;
    .locals 1

    #@0
    .prologue
    .line 567
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    #@2
    return-object v0
.end method

.method getHomeActivity()Lcom/android/server/am/ActivityRecord;
    .locals 1

    #@0
    .prologue
    .line 1960
    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurrentUser:I

    #@2
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->getHomeActivityForUser(I)Lcom/android/server/am/ActivityRecord;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method getHomeActivityForUser(I)Lcom/android/server/am/ActivityRecord;
    .locals 7
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 1964
    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    #@2
    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    #@5
    move-result-object v5

    #@6
    .line 1965
    .local v5, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@9
    move-result v6

    #@a
    add-int/lit8 v4, v6, -0x1

    #@c
    .local v4, "taskNdx":I
    :goto_0
    if-ltz v4, :cond_3

    #@e
    .line 1966
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v3

    #@12
    check-cast v3, Lcom/android/server/am/TaskRecord;

    #@14
    .line 1967
    .local v3, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->isHomeTask()Z

    #@17
    move-result v6

    #@18
    if-eqz v6, :cond_2

    #@1a
    .line 1968
    iget-object v0, v3, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@1c
    .line 1969
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@1f
    move-result v6

    #@20
    add-int/lit8 v1, v6, -0x1

    #@22
    .local v1, "activityNdx":I
    :goto_1
    if-ltz v1, :cond_2

    #@24
    .line 1970
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@27
    move-result-object v2

    #@28
    check-cast v2, Lcom/android/server/am/ActivityRecord;

    #@2a
    .line 1971
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    #@2d
    move-result v6

    #@2e
    if-eqz v6, :cond_1

    #@30
    .line 1972
    const/4 v6, -0x1

    #@31
    if-eq p1, v6, :cond_0

    #@33
    iget v6, v2, Lcom/android/server/am/ActivityRecord;->userId:I

    #@35
    if-ne v6, p1, :cond_1

    #@37
    .line 1973
    :cond_0
    return-object v2

    #@38
    .line 1969
    :cond_1
    add-int/lit8 v1, v1, -0x1

    #@3a
    goto :goto_1

    #@3b
    .line 1965
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_2
    add-int/lit8 v4, v4, -0x1

    #@3d
    goto :goto_0

    #@3e
    .line 1978
    .end local v3    # "task":Lcom/android/server/am/TaskRecord;
    :cond_3
    const/4 v6, 0x0

    #@3f
    return-object v6
.end method

.method getHomeActivityToken()Landroid/os/IBinder;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1952
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getHomeActivity()Lcom/android/server/am/ActivityRecord;

    #@4
    move-result-object v0

    #@5
    .line 1953
    .local v0, "homeActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_0

    #@7
    .line 1954
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@9
    return-object v1

    #@a
    .line 1956
    :cond_0
    return-object v1
.end method

.method getLastStack()Lcom/android/server/am/ActivityStack;
    .locals 1

    #@0
    .prologue
    .line 571
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLastFocusedStack:Lcom/android/server/am/ActivityStack;

    #@2
    return-object v0
.end method

.method getLockTaskModeState()I
    .locals 1

    #@0
    .prologue
    .line 3736
    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeState:I

    #@2
    return v0
.end method

.method getLockedTaskLocked()Lcom/android/server/am/TaskRecord;
    .locals 2

    #@0
    .prologue
    .line 3535
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeTasks:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v1

    #@6
    add-int/lit8 v0, v1, -0x1

    #@8
    .line 3536
    .local v0, "top":I
    if-ltz v0, :cond_0

    #@a
    .line 3537
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeTasks:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Lcom/android/server/am/TaskRecord;

    #@12
    return-object v1

    #@13
    .line 3539
    :cond_0
    const/4 v1, 0x0

    #@14
    return-object v1
.end method

.method getNextStackId()I
    .locals 2

    #@0
    .prologue
    .line 2358
    :goto_0
    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mNextFreeStackId:I

    #@2
    const/4 v1, 0x5

    #@3
    if-lt v0, v1, :cond_0

    #@5
    .line 2359
    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mNextFreeStackId:I

    #@7
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    #@a
    move-result-object v0

    #@b
    if-nez v0, :cond_0

    #@d
    .line 2364
    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mNextFreeStackId:I

    #@f
    return v0

    #@10
    .line 2362
    :cond_0
    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mNextFreeStackId:I

    #@12
    add-int/lit8 v0, v0, 0x1

    #@14
    iput v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mNextFreeStackId:I

    #@16
    goto :goto_0
.end method

.method getNextTaskIdForUserLocked(I)I
    .locals 5
    .param p1, "userId"    # I

    #@0
    .prologue
    const v4, 0x186a0

    #@3
    .line 806
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurTaskIdForUser:Landroid/util/SparseIntArray;

    #@5
    mul-int v3, p1, v4

    #@7
    invoke-virtual {v2, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    #@a
    move-result v1

    #@b
    .line 810
    .local v1, "currentTaskId":I
    move v0, v1

    #@c
    .line 811
    .local v0, "candidateTaskId":I
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    #@e
    invoke-virtual {v2, v0, p1}, Lcom/android/server/am/RecentTasks;->taskIdTakenForUserLocked(II)Z

    #@11
    move-result v2

    #@12
    if-nez v2, :cond_1

    #@14
    .line 812
    const/4 v2, 0x0

    #@15
    .line 813
    const/4 v3, -0x1

    #@16
    .line 812
    invoke-virtual {p0, v0, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(IZI)Lcom/android/server/am/TaskRecord;

    #@19
    move-result-object v2

    #@1a
    if-eqz v2, :cond_3

    #@1c
    .line 814
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@1e
    .line 815
    add-int/lit8 v2, p1, 0x1

    #@20
    mul-int/2addr v2, v4

    #@21
    if-ne v0, v2, :cond_2

    #@23
    .line 817
    sub-int/2addr v0, v4

    #@24
    .line 819
    :cond_2
    if-ne v0, v1, :cond_0

    #@26
    .line 822
    new-instance v2, Ljava/lang/IllegalStateException;

    #@28
    const-string/jumbo v3, "Cannot get an available task id. Reached limit of 100000 running tasks per user."

    #@2b
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v2

    #@2f
    .line 827
    :cond_3
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurTaskIdForUser:Landroid/util/SparseIntArray;

    #@31
    invoke-virtual {v2, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    #@34
    .line 828
    return v0
.end method

.method getStack(I)Lcom/android/server/am/ActivityStack;
    .locals 1
    .param p1, "stackId"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1929
    invoke-virtual {p0, p1, v0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(IZZ)Lcom/android/server/am/ActivityStack;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method getStack(IZZ)Lcom/android/server/am/ActivityStack;
    .locals 3
    .param p1, "stackId"    # I
    .param p2, "createStaticStackIfNeeded"    # Z
    .param p3, "createOnTop"    # Z

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1933
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityContainers:Landroid/util/SparseArray;

    #@3
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    #@9
    .line 1934
    .local v0, "activityContainer":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    if-eqz v0, :cond_0

    #@b
    .line 1935
    iget-object v1, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStack:Lcom/android/server/am/ActivityStack;

    #@d
    return-object v1

    #@e
    .line 1937
    :cond_0
    if-eqz p2, :cond_1

    #@10
    invoke-static {p1}, Landroid/app/ActivityManager$StackId;->isStaticStack(I)Z

    #@13
    move-result v1

    #@14
    if-eqz v1, :cond_1

    #@16
    .line 1940
    const/4 v1, 0x0

    #@17
    invoke-virtual {p0, p1, v1, p3}, Lcom/android/server/am/ActivityStackSupervisor;->createStackOnDisplay(IIZ)Lcom/android/server/am/ActivityStack;

    #@1a
    move-result-object v1

    #@1b
    return-object v1

    #@1c
    .line 1938
    :cond_1
    return-object v2
.end method

.method getStackInfoLocked(I)Landroid/app/ActivityManager$StackInfo;
    .locals 2
    .param p1, "stackId"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 3516
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    #@4
    move-result-object v0

    #@5
    .line 3517
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v0, :cond_0

    #@7
    .line 3518
    invoke-direct {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->getStackInfoLocked(Lcom/android/server/am/ActivityStack;)Landroid/app/ActivityManager$StackInfo;

    #@a
    move-result-object v1

    #@b
    return-object v1

    #@c
    .line 3520
    :cond_0
    return-object v1
.end method

.method getStacks()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityStack;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1944
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 1945
    .local v0, "allStacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    #@7
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    #@a
    move-result v2

    #@b
    add-int/lit8 v1, v2, -0x1

    #@d
    .local v1, "displayNdx":I
    :goto_0
    if-ltz v1, :cond_0

    #@f
    .line 1946
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    #@11
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@14
    move-result-object v2

    #@15
    check-cast v2, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    #@17
    iget-object v2, v2, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    #@19
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    #@1c
    .line 1945
    add-int/lit8 v1, v1, -0x1

    #@1e
    goto :goto_0

    #@1f
    .line 1948
    :cond_0
    return-object v0
.end method

.method getTasksLocked(ILjava/util/List;IZ)V
    .locals 16
    .param p1, "maxNum"    # I
    .param p3, "callingUid"    # I
    .param p4, "allowed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;IZ)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1090
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    new-instance v9, Ljava/util/ArrayList;

    #@2
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 1091
    .local v9, "runningTaskLists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;>;"
    move-object/from16 v0, p0

    #@7
    iget-object v15, v0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    #@9
    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    #@c
    move-result v3

    #@d
    .line 1092
    .local v3, "numDisplays":I
    const/4 v2, 0x0

    #@e
    .local v2, "displayNdx":I
    :goto_0
    if-ge v2, v3, :cond_2

    #@10
    .line 1093
    move-object/from16 v0, p0

    #@12
    iget-object v15, v0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    #@14
    invoke-virtual {v15, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@17
    move-result-object v15

    #@18
    check-cast v15, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    #@1a
    iget-object v14, v15, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    #@1c
    .line 1094
    .local v14, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    #@1f
    move-result v15

    #@20
    add-int/lit8 v12, v15, -0x1

    #@22
    .local v12, "stackNdx":I
    :goto_1
    if-ltz v12, :cond_0

    #@24
    .line 1095
    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@27
    move-result-object v11

    #@28
    check-cast v11, Lcom/android/server/am/ActivityStack;

    #@2a
    .line 1096
    .local v11, "stack":Lcom/android/server/am/ActivityStack;
    new-instance v13, Ljava/util/ArrayList;

    #@2c
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    #@2f
    .line 1097
    .local v13, "stackTaskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@32
    .line 1098
    move/from16 v0, p3

    #@34
    move/from16 v1, p4

    #@36
    invoke-virtual {v11, v13, v0, v1}, Lcom/android/server/am/ActivityStack;->getTasksLocked(Ljava/util/List;IZ)V

    #@39
    .line 1094
    add-int/lit8 v12, v12, -0x1

    #@3b
    goto :goto_1

    #@3c
    .line 1092
    .end local v11    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v13    # "stackTaskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@3e
    goto :goto_0

    #@3f
    .line 1118
    .end local v14    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    .local v6, "mostRecentActiveTime":J
    .local v8, "numTaskLists":I
    :cond_1
    if-eqz v10, :cond_4

    #@41
    .line 1119
    const/4 v15, 0x0

    #@42
    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@45
    move-result-object v15

    #@46
    check-cast v15, Landroid/app/ActivityManager$RunningTaskInfo;

    #@48
    move-object/from16 v0, p2

    #@4a
    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@4d
    .line 1120
    add-int/lit8 p1, p1, -0x1

    #@4f
    .line 1104
    .end local v6    # "mostRecentActiveTime":J
    .end local v8    # "numTaskLists":I
    .end local v12    # "stackNdx":I
    :cond_2
    if-lez p1, :cond_4

    #@51
    .line 1105
    const-wide/high16 v6, -0x8000000000000000L

    #@53
    .line 1106
    .restart local v6    # "mostRecentActiveTime":J
    const/4 v10, 0x0

    #@54
    .line 1107
    .local v10, "selectedStackList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    #@57
    move-result v8

    #@58
    .line 1108
    .restart local v8    # "numTaskLists":I
    const/4 v12, 0x0

    #@59
    .end local v10    # "selectedStackList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .restart local v12    # "stackNdx":I
    :goto_2
    if-ge v12, v8, :cond_1

    #@5b
    .line 1109
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@5e
    move-result-object v13

    #@5f
    check-cast v13, Ljava/util/ArrayList;

    #@61
    .line 1110
    .restart local v13    # "stackTaskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    #@64
    move-result v15

    #@65
    if-nez v15, :cond_3

    #@67
    .line 1111
    const/4 v15, 0x0

    #@68
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@6b
    move-result-object v15

    #@6c
    check-cast v15, Landroid/app/ActivityManager$RunningTaskInfo;

    #@6e
    iget-wide v4, v15, Landroid/app/ActivityManager$RunningTaskInfo;->lastActiveTime:J

    #@70
    .line 1112
    .local v4, "lastActiveTime":J
    cmp-long v15, v4, v6

    #@72
    if-lez v15, :cond_3

    #@74
    .line 1113
    move-wide v6, v4

    #@75
    .line 1114
    move-object v10, v13

    #@76
    .line 1108
    .end local v4    # "lastActiveTime":J
    :cond_3
    add-int/lit8 v12, v12, 0x1

    #@78
    goto :goto_2

    #@79
    .line 1087
    .end local v6    # "mostRecentActiveTime":J
    .end local v8    # "numTaskLists":I
    .end local v12    # "stackNdx":I
    .end local v13    # "stackTaskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_4
    return-void
.end method

.method public getTopVisibleActivities()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    const/4 v8, 0x0

    #@2
    .line 4528
    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    #@4
    invoke-virtual {v6, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    #@a
    .line 4529
    .local v0, "display":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    if-nez v0, :cond_0

    #@c
    .line 4530
    sget-object v6, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    #@e
    return-object v6

    #@f
    .line 4532
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    #@11
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    #@14
    .line 4533
    .local v5, "topActivityTokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    #@16
    .line 4534
    .local v3, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@19
    move-result v6

    #@1a
    add-int/lit8 v1, v6, -0x1

    #@1c
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_3

    #@1e
    .line 4535
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@21
    move-result-object v2

    #@22
    check-cast v2, Lcom/android/server/am/ActivityStack;

    #@24
    .line 4536
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v2, v9}, Lcom/android/server/am/ActivityStack;->getStackVisibilityLocked(Lcom/android/server/am/ActivityRecord;)I

    #@27
    move-result v6

    #@28
    const/4 v7, 0x1

    #@29
    if-ne v6, v7, :cond_1

    #@2b
    .line 4537
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    #@2e
    move-result-object v4

    #@2f
    .line 4538
    .local v4, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v4, :cond_1

    #@31
    .line 4539
    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    #@33
    if-ne v2, v6, :cond_2

    #@35
    .line 4540
    iget-object v6, v4, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@37
    invoke-virtual {v5, v8, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    #@3a
    .line 4534
    .end local v4    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, -0x1

    #@3c
    goto :goto_0

    #@3d
    .line 4542
    .restart local v4    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_2
    iget-object v6, v4, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@3f
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@42
    goto :goto_1

    #@43
    .line 4547
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v4    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_3
    return-object v5
.end method

.method getUserInfo(I)Landroid/content/pm/UserInfo;
    .locals 3
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 1484
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3
    move-result-wide v0

    #@4
    .line 1486
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@6
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    #@8
    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    move-result-object v2

    #@10
    .line 1488
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@13
    .line 1486
    return-object v2

    #@14
    .line 1487
    :catchall_0
    move-exception v2

    #@15
    .line 1488
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@18
    .line 1487
    throw v2
.end method

.method goingToSleepLocked()V
    .locals 2

    #@0
    .prologue
    .line 2715
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleSleepTimeout()V

    #@3
    .line 2716
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    #@5
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_0

    #@b
    .line 2717
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    #@d
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    #@10
    .line 2718
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    #@12
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    #@15
    move-result v0

    #@16
    if-eqz v0, :cond_0

    #@18
    .line 2722
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    #@1a
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    #@1d
    .line 2723
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@1f
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    #@21
    const/16 v1, 0x68

    #@23
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeMessages(I)V

    #@26
    .line 2726
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->checkReadyForSleepLocked()V

    #@29
    .line 2714
    return-void
.end method

.method handleAppCrashLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 4
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    #@0
    .prologue
    .line 2855
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    #@5
    move-result v3

    #@6
    add-int/lit8 v0, v3, -0x1

    #@8
    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_1

    #@a
    .line 2856
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    #@c
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@f
    move-result-object v3

    #@10
    check-cast v3, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    #@12
    iget-object v2, v3, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    #@14
    .line 2857
    .local v2, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@17
    move-result v3

    #@18
    add-int/lit8 v1, v3, -0x1

    #@1a
    .line 2858
    .local v1, "stackNdx":I
    :goto_1
    if-ltz v1, :cond_0

    #@1c
    .line 2859
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1f
    move-result-object v3

    #@20
    check-cast v3, Lcom/android/server/am/ActivityStack;

    #@22
    invoke-virtual {v3, p1}, Lcom/android/server/am/ActivityStack;->handleAppCrashLocked(Lcom/android/server/am/ProcessRecord;)V

    #@25
    .line 2860
    add-int/lit8 v1, v1, -0x1

    #@27
    goto :goto_1

    #@28
    .line 2855
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@2a
    goto :goto_0

    #@2b
    .line 2854
    .end local v1    # "stackNdx":I
    .end local v2    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_1
    return-void
.end method

.method handleAppDiedLocked(Lcom/android/server/am/ProcessRecord;)Z
    .locals 5
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    #@0
    .prologue
    .line 1723
    const/4 v1, 0x0

    #@1
    .line 1724
    .local v1, "hasVisibleActivities":Z
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    #@3
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    #@6
    move-result v4

    #@7
    add-int/lit8 v0, v4, -0x1

    #@9
    .end local v1    # "hasVisibleActivities":Z
    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_1

    #@b
    .line 1725
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    #@d
    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@10
    move-result-object v4

    #@11
    check-cast v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    #@13
    iget-object v3, v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    #@15
    .line 1726
    .local v3, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@18
    move-result v4

    #@19
    add-int/lit8 v2, v4, -0x1

    #@1b
    .local v2, "stackNdx":I
    :goto_1
    if-ltz v2, :cond_0

    #@1d
    .line 1727
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@20
    move-result-object v4

    #@21
    check-cast v4, Lcom/android/server/am/ActivityStack;

    #@23
    invoke-virtual {v4, p1}, Lcom/android/server/am/ActivityStack;->handleAppDiedLocked(Lcom/android/server/am/ProcessRecord;)Z

    #@26
    move-result v4

    #@27
    or-int/2addr v1, v4

    #@28
    .line 1726
    .local v1, "hasVisibleActivities":Z
    add-int/lit8 v2, v2, -0x1

    #@2a
    goto :goto_1

    #@2b
    .line 1724
    .end local v1    # "hasVisibleActivities":Z
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@2d
    goto :goto_0

    #@2e
    .line 1730
    .end local v2    # "stackNdx":I
    .end local v3    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_1
    return v1
.end method

.method handleLaunchTaskBehindCompleteLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 6
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 2931
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@3
    .line 2932
    .local v1, "task":Lcom/android/server/am/TaskRecord;
    iget-object v0, v1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@5
    .line 2934
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    iput-boolean v5, p1, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    #@7
    .line 2935
    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStack;->screenshotActivitiesLocked(Lcom/android/server/am/ActivityRecord;)Landroid/graphics/Bitmap;

    #@a
    move-result-object v3

    #@b
    invoke-virtual {v1, v3}, Lcom/android/server/am/TaskRecord;->setLastThumbnailLocked(Landroid/graphics/Bitmap;)Z

    #@e
    .line 2936
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    #@10
    invoke-virtual {v3, v1}, Lcom/android/server/am/RecentTasks;->addLocked(Lcom/android/server/am/TaskRecord;)V

    #@13
    .line 2937
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@15
    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->notifyTaskStackChangedLocked()V

    #@18
    .line 2938
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@1a
    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@1c
    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    #@1f
    .line 2942
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    #@22
    move-result-object v2

    #@23
    .line 2943
    .local v2, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_0

    #@25
    .line 2944
    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@27
    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->touchActiveTime()V

    #@2a
    .line 2930
    :cond_0
    return-void
.end method

.method handleNonResizableTaskIfNeeded(Lcom/android/server/am/TaskRecord;II)V
    .locals 1
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "preferredStackId"    # I
    .param p3, "actualStackId"    # I

    #@0
    .prologue
    .line 3568
    const/4 v0, 0x0

    #@1
    .line 3567
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/am/ActivityStackSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/am/TaskRecord;IIZ)V

    #@4
    .line 3566
    return-void
.end method

.method handleNonResizableTaskIfNeeded(Lcom/android/server/am/TaskRecord;IIZ)V
    .locals 6
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "preferredStackId"    # I
    .param p3, "actualStackId"    # I
    .param p4, "forceNonResizable"    # Z

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v5, 0x3

    #@2
    .line 3573
    invoke-virtual {p0, p3}, Lcom/android/server/am/ActivityStackSupervisor;->isStackDockedInEffect(I)Z

    #@5
    move-result v3

    #@6
    if-nez v3, :cond_1

    #@8
    if-eq p2, v5, :cond_1

    #@a
    .line 3575
    :cond_0
    return-void

    #@b
    .line 3574
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->isHomeTask()Z

    #@e
    move-result v3

    #@f
    .line 3573
    if-nez v3, :cond_0

    #@11
    .line 3578
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    #@14
    move-result-object v1

    #@15
    .line 3579
    .local v1, "topActivity":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->canGoInDockedStack()Z

    #@18
    move-result v3

    #@19
    if-eqz v3, :cond_2

    #@1b
    if-eqz p4, :cond_5

    #@1d
    .line 3581
    :cond_2
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@1f
    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    #@21
    const/16 v4, 0x44

    #@23
    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendEmptyMessage(I)Z

    #@26
    .line 3585
    if-ne p3, v5, :cond_3

    #@28
    const/4 v2, 0x1

    #@29
    :cond_3
    invoke-virtual {p0, v5, v2}, Lcom/android/server/am/ActivityStackSupervisor;->moveTasksToFullscreenStackLocked(IZ)V

    #@2c
    .line 3572
    :cond_4
    :goto_0
    return-void

    #@2d
    .line 3586
    :cond_5
    if-eqz v1, :cond_4

    #@2f
    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->isNonResizableOrForced()Z

    #@32
    move-result v3

    #@33
    if-eqz v3, :cond_4

    #@35
    .line 3587
    iget-boolean v3, v1, Lcom/android/server/am/ActivityRecord;->noDisplay:Z

    #@37
    if-nez v3, :cond_4

    #@39
    .line 3588
    iget-object v3, v1, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@3b
    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@3d
    .line 3589
    .local v0, "packageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@3f
    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    #@41
    iget v4, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    #@43
    const/16 v5, 0x43

    #@45
    invoke-virtual {v3, v5, v4, v2, v0}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@48
    move-result-object v2

    #@49
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    #@4c
    goto :goto_0
.end method

.method initPowerManagement()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 501
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@3
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    #@5
    const-string/jumbo v2, "power"

    #@8
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Landroid/os/PowerManager;

    #@e
    .line 502
    .local v0, "pm":Landroid/os/PowerManager;
    const-string/jumbo v1, "ActivityManager-Sleep"

    #@11
    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    #@14
    move-result-object v1

    #@15
    iput-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    #@17
    .line 503
    const-string/jumbo v1, "*launch*"

    #@1a
    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    #@1d
    move-result-object v1

    #@1e
    iput-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    #@20
    .line 504
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    #@22
    const/4 v2, 0x0

    #@23
    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    #@26
    .line 500
    return-void
.end method

.method invalidateTaskLayers()V
    .locals 1

    #@0
    .prologue
    .line 2966
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTaskLayersChanged:Z

    #@3
    .line 2965
    return-void
.end method

.method isCurrentProfileLocked(I)Z
    .locals 1
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 3099
    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurrentUser:I

    #@2
    if-ne p1, v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    return v0

    #@6
    .line 3100
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@8
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    #@a
    invoke-virtual {v0, p1}, Lcom/android/server/am/UserController;->isCurrentProfileLocked(I)Z

    #@d
    move-result v0

    #@e
    return v0
.end method

.method isFocusedStack(Lcom/android/server/am/ActivityStack;)Z
    .locals 3
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 575
    if-nez p1, :cond_0

    #@3
    .line 576
    return v1

    #@4
    .line 579
    :cond_0
    iget-object v2, p1, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    #@6
    iget-object v0, v2, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mParentActivity:Lcom/android/server/am/ActivityRecord;

    #@8
    .line 580
    .local v0, "parent":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_1

    #@a
    .line 581
    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@c
    iget-object p1, v2, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@e
    .line 583
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    #@10
    if-ne p1, v2, :cond_2

    #@12
    const/4 v1, 0x1

    #@13
    :cond_2
    return v1
.end method

.method isFrontStack(Lcom/android/server/am/ActivityStack;)Z
    .locals 4
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 588
    if-nez p1, :cond_0

    #@3
    .line 589
    return v1

    #@4
    .line 592
    :cond_0
    iget-object v2, p1, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    #@6
    iget-object v0, v2, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mParentActivity:Lcom/android/server/am/ActivityRecord;

    #@8
    .line 593
    .local v0, "parent":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_1

    #@a
    .line 594
    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@c
    iget-object p1, v2, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@e
    .line 596
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    #@10
    iget-object v2, v2, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    #@12
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    #@14
    iget-object v3, v3, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    #@16
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@19
    move-result v3

    #@1a
    add-int/lit8 v3, v3, -0x1

    #@1c
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1f
    move-result-object v2

    #@20
    if-ne p1, v2, :cond_2

    #@22
    const/4 v1, 0x1

    #@23
    :cond_2
    return v1
.end method

.method isInAnyStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;
    .locals 7
    .param p1, "token"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 724
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    #@3
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    #@6
    move-result v1

    #@7
    .line 725
    .local v1, "numDisplays":I
    const/4 v0, 0x0

    #@8
    .local v0, "displayNdx":I
    :goto_0
    if-ge v0, v1, :cond_2

    #@a
    .line 726
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    #@c
    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@f
    move-result-object v5

    #@10
    check-cast v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    #@12
    iget-object v4, v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    #@14
    .line 727
    .local v4, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@17
    move-result v5

    #@18
    add-int/lit8 v3, v5, -0x1

    #@1a
    .local v3, "stackNdx":I
    :goto_1
    if-ltz v3, :cond_1

    #@1c
    .line 728
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1f
    move-result-object v5

    #@20
    check-cast v5, Lcom/android/server/am/ActivityStack;

    #@22
    invoke-virtual {v5, p1}, Lcom/android/server/am/ActivityStack;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    #@25
    move-result-object v2

    #@26
    .line 729
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_0

    #@28
    .line 730
    return-object v2

    #@29
    .line 727
    :cond_0
    add-int/lit8 v3, v3, -0x1

    #@2b
    goto :goto_1

    #@2c
    .line 725
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@2e
    goto :goto_0

    #@2f
    .line 734
    .end local v3    # "stackNdx":I
    .end local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_2
    return-object v6
.end method

.method isLastLockedTask(Lcom/android/server/am/TaskRecord;)Z
    .locals 2
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    #@0
    .prologue
    .line 3547
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeTasks:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    const/4 v1, 0x1

    #@7
    if-ne v0, v1, :cond_0

    #@9
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeTasks:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@e
    move-result v0

    #@f
    :goto_0
    return v0

    #@10
    :cond_0
    const/4 v0, 0x0

    #@11
    goto :goto_0
.end method

.method isLockTaskModeViolation(Lcom/android/server/am/TaskRecord;)Z
    .locals 1
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    #@0
    .prologue
    .line 3668
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ActivityStackSupervisor;->isLockTaskModeViolation(Lcom/android/server/am/TaskRecord;Z)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method isLockTaskModeViolation(Lcom/android/server/am/TaskRecord;Z)Z
    .locals 5
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "isNewClearTask"    # Z

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 3672
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getLockedTaskLocked()Lcom/android/server/am/TaskRecord;

    #@5
    move-result-object v3

    #@6
    if-ne v3, p1, :cond_0

    #@8
    if-eqz p2, :cond_1

    #@a
    .line 3675
    :cond_0
    iget v0, p1, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    #@c
    .line 3676
    .local v0, "lockTaskAuth":I
    packed-switch v0, :pswitch_data_0

    #@f
    .line 3687
    sget-object v1, Lcom/android/server/am/ActivityStackSupervisor;->TAG:Ljava/lang/String;

    #@11
    new-instance v3, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v4, "isLockTaskModeViolation: invalid lockTaskAuth value="

    #@19
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v3

    #@1d
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    move-result-object v3

    #@21
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v3

    #@25
    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@28
    .line 3688
    return v2

    #@29
    .line 3673
    .end local v0    # "lockTaskAuth":I
    :cond_1
    return v1

    #@2a
    .line 3678
    .restart local v0    # "lockTaskAuth":I
    :pswitch_0
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeTasks:Ljava/util/ArrayList;

    #@2c
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    #@2f
    move-result v3

    #@30
    if-eqz v3, :cond_2

    #@32
    :goto_0
    return v1

    #@33
    :cond_2
    move v1, v2

    #@34
    goto :goto_0

    #@35
    .line 3682
    :pswitch_1
    return v1

    #@36
    .line 3685
    :pswitch_2
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeTasks:Ljava/util/ArrayList;

    #@38
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    #@3b
    move-result v3

    #@3c
    if-eqz v3, :cond_3

    #@3e
    :goto_1
    return v1

    #@3f
    :cond_3
    move v1, v2

    #@40
    goto :goto_1

    #@41
    .line 3676
    nop

    #@42
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method isLockedTask(Lcom/android/server/am/TaskRecord;)Z
    .locals 1
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    #@0
    .prologue
    .line 3543
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeTasks:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method isStackDockedInEffect(I)Z
    .locals 4
    .param p1, "stackId"    # I

    #@0
    .prologue
    const/4 v3, 0x3

    #@1
    const/4 v0, 0x1

    #@2
    const/4 v1, 0x0

    #@3
    .line 1986
    if-eq p1, v3, :cond_0

    #@5
    .line 1987
    invoke-static {p1}, Landroid/app/ActivityManager$StackId;->isResizeableByDockedStack(I)Z

    #@8
    move-result v2

    #@9
    if-eqz v2, :cond_1

    #@b
    invoke-virtual {p0, v3}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    #@e
    move-result-object v2

    #@f
    if-eqz v2, :cond_1

    #@11
    .line 1986
    :cond_0
    :goto_0
    return v0

    #@12
    :cond_1
    move v0, v1

    #@13
    .line 1987
    goto :goto_0
.end method

.method isUserLockedProfile(I)Z
    .locals 13
    .param p1, "userId"    # I

    #@0
    .prologue
    const/4 v7, 0x3

    #@1
    const/4 v12, 0x2

    #@2
    const/4 v11, 0x0

    #@3
    const/4 v10, 0x1

    #@4
    const/4 v8, 0x0

    #@5
    .line 743
    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@7
    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    #@9
    invoke-virtual {v6, p1}, Lcom/android/server/am/UserController;->shouldConfirmCredentials(I)Z

    #@c
    move-result v6

    #@d
    if-nez v6, :cond_0

    #@f
    .line 744
    return v8

    #@10
    .line 746
    :cond_0
    new-array v1, v7, [Lcom/android/server/am/ActivityStack;

    #@12
    .line 747
    invoke-virtual {p0, v7}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    #@15
    move-result-object v6

    #@16
    aput-object v6, v1, v8

    #@18
    .line 748
    invoke-virtual {p0, v12}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    #@1b
    move-result-object v6

    #@1c
    aput-object v6, v1, v10

    #@1e
    .line 749
    invoke-virtual {p0, v10}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    #@21
    move-result-object v6

    #@22
    aput-object v6, v1, v12

    #@24
    .line 751
    .local v1, "activityStacks":[Lcom/android/server/am/ActivityStack;
    array-length v9, v1

    #@25
    move v7, v8

    #@26
    :goto_0
    if-ge v7, v9, :cond_6

    #@28
    aget-object v0, v1, v7

    #@2a
    .line 752
    .local v0, "activityStack":Lcom/android/server/am/ActivityStack;
    if-nez v0, :cond_2

    #@2c
    .line 751
    :cond_1
    add-int/lit8 v6, v7, 0x1

    #@2e
    move v7, v6

    #@2f
    goto :goto_0

    #@30
    .line 755
    :cond_2
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    #@33
    move-result-object v6

    #@34
    if-eqz v6, :cond_1

    #@36
    .line 758
    invoke-virtual {v0, v11}, Lcom/android/server/am/ActivityStack;->getStackVisibilityLocked(Lcom/android/server/am/ActivityRecord;)I

    #@39
    move-result v6

    #@3a
    if-eqz v6, :cond_1

    #@3c
    .line 761
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->isDockedStack()Z

    #@3f
    move-result v6

    #@40
    if-eqz v6, :cond_3

    #@42
    iget-boolean v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mIsDockMinimized:Z

    #@44
    if-nez v6, :cond_1

    #@46
    .line 764
    :cond_3
    iget v6, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    #@48
    if-ne v6, v12, :cond_5

    #@4a
    .line 767
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    #@4d
    move-result-object v4

    #@4e
    .line 768
    .local v4, "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/TaskRecord;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@51
    move-result v3

    #@52
    .line 769
    .local v3, "size":I
    const/4 v2, 0x0

    #@53
    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_1

    #@55
    .line 770
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@58
    move-result-object v6

    #@59
    check-cast v6, Lcom/android/server/am/TaskRecord;

    #@5b
    invoke-direct {p0, v6, p1}, Lcom/android/server/am/ActivityStackSupervisor;->taskContainsActivityFromUser(Lcom/android/server/am/TaskRecord;I)Z

    #@5e
    move-result v6

    #@5f
    if-eqz v6, :cond_4

    #@61
    .line 771
    return v10

    #@62
    .line 769
    :cond_4
    add-int/lit8 v2, v2, 0x1

    #@64
    goto :goto_1

    #@65
    .line 775
    .end local v2    # "i":I
    .end local v3    # "size":I
    .end local v4    # "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/TaskRecord;>;"
    :cond_5
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    #@68
    move-result-object v5

    #@69
    .line 776
    .local v5, "topTask":Lcom/android/server/am/TaskRecord;
    if-eqz v5, :cond_1

    #@6b
    .line 779
    invoke-direct {p0, v5, p1}, Lcom/android/server/am/ActivityStackSupervisor;->taskContainsActivityFromUser(Lcom/android/server/am/TaskRecord;I)Z

    #@6e
    move-result v6

    #@6f
    if-eqz v6, :cond_1

    #@71
    .line 780
    return v10

    #@72
    .line 784
    .end local v0    # "activityStack":Lcom/android/server/am/ActivityStack;
    .end local v5    # "topTask":Lcom/android/server/am/TaskRecord;
    :cond_6
    return v8
.end method

.method logStackState()V
    .locals 1

    #@0
    .prologue
    .line 3748
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityMetricsLogger:Lcom/android/server/am/ActivityMetricsLogger;

    #@2
    invoke-virtual {v0}, Lcom/android/server/am/ActivityMetricsLogger;->logWindowState()V

    #@5
    .line 3747
    return-void
.end method

.method moveActivityStackToFront(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z
    .locals 5
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1562
    if-nez p1, :cond_0

    #@3
    .line 1564
    return v4

    #@4
    .line 1566
    :cond_0
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@6
    .line 1567
    .local v0, "task":Lcom/android/server/am/TaskRecord;
    if-eqz v0, :cond_1

    #@8
    iget-object v1, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@a
    if-nez v1, :cond_2

    #@c
    .line 1568
    :cond_1
    sget-object v1, Lcom/android/server/am/ActivityStackSupervisor;->TAG:Ljava/lang/String;

    #@e
    new-instance v2, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v3, "Can\'t move stack to front for r="

    #@16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    const-string/jumbo v3, " task="

    #@21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v2

    #@2d
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@30
    .line 1569
    return v4

    #@31
    .line 1571
    :cond_2
    iget-object v1, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@33
    invoke-virtual {v1, p2, v0}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;Lcom/android/server/am/TaskRecord;)V

    #@36
    .line 1572
    const/4 v1, 0x1

    #@37
    return v1
.end method

.method moveActivityToPinnedStackLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;Landroid/graphics/Rect;)V
    .locals 10
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "bounds"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 2603
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@2
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    #@5
    .line 2605
    :try_start_0
    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@7
    .line 2607
    .local v9, "task":Lcom/android/server/am/TaskRecord;
    iget-object v0, v9, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@9
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getVisibleBehindActivity()Lcom/android/server/am/ActivityRecord;

    #@c
    move-result-object v0

    #@d
    if-ne p1, v0, :cond_0

    #@f
    .line 2610
    const/4 v0, 0x0

    #@10
    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ActivityStackSupervisor;->requestVisibleBehindLocked(Lcom/android/server/am/ActivityRecord;Z)Z

    #@13
    .line 2614
    :cond_0
    const/4 v0, 0x4

    #@14
    const/4 v1, 0x1

    #@15
    const/4 v2, 0x1

    #@16
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(IZZ)Lcom/android/server/am/ActivityStack;

    #@19
    move-result-object v8

    #@1a
    .line 2619
    .local v8, "stack":Lcom/android/server/am/ActivityStack;
    iget-object v2, v9, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    #@1c
    const/4 v1, 0x4

    #@1d
    const/4 v3, 0x0

    #@1e
    .line 2620
    const/4 v4, 0x0

    #@1f
    const/4 v5, 0x0

    #@20
    .line 2621
    const/4 v6, 0x1

    #@21
    const/4 v7, 0x0

    #@22
    move-object v0, p0

    #@23
    .line 2619
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/ActivityStackSupervisor;->resizeStackLocked(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZZ)V

    #@26
    .line 2623
    iget-object v0, v9, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@28
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@2b
    move-result v0

    #@2c
    const/4 v1, 0x1

    #@2d
    if-ne v0, v1, :cond_2

    #@2f
    .line 2626
    invoke-virtual {v9}, Lcom/android/server/am/TaskRecord;->getTaskToReturnTo()I

    #@32
    move-result v0

    #@33
    const/4 v1, 0x1

    #@34
    if-ne v0, v1, :cond_1

    #@36
    .line 2629
    invoke-virtual {p0, p2}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStackToFront(Ljava/lang/String;)V

    #@39
    .line 2632
    :cond_1
    iget v1, v9, Lcom/android/server/am/TaskRecord;->taskId:I

    #@3b
    const/4 v2, 0x4

    #@3c
    const/4 v3, 0x1

    #@3d
    const/4 v4, 0x1

    #@3e
    const/4 v6, 0x0

    #@3f
    move-object v0, p0

    #@40
    move-object v5, p2

    #@41
    .line 2631
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ActivityStackSupervisor;->moveTaskToStackLocked(IIZZLjava/lang/String;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@44
    .line 2637
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@46
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    #@49
    .line 2642
    const/4 v0, 0x0

    #@4a
    const/4 v1, 0x0

    #@4b
    const/4 v2, 0x0

    #@4c
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    #@4f
    .line 2643
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    #@52
    .line 2645
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@54
    const/4 v1, -0x1

    #@55
    invoke-virtual {v0, p3, v1}, Lcom/android/server/wm/WindowManagerService;->animateResizePinnedStack(Landroid/graphics/Rect;I)V

    #@58
    .line 2646
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@5a
    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->notifyActivityPinnedLocked()V

    #@5d
    .line 2602
    return-void

    #@5e
    .line 2634
    :cond_2
    :try_start_1
    invoke-virtual {v8, p1}, Lcom/android/server/am/ActivityStack;->moveActivityToStack(Lcom/android/server/am/ActivityRecord;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@61
    goto :goto_0

    #@62
    .line 2636
    .end local v8    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v9    # "task":Lcom/android/server/am/TaskRecord;
    :catchall_0
    move-exception v0

    #@63
    .line 2637
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@65
    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    #@68
    .line 2636
    throw v0
.end method

.method moveHomeStackTaskToTop(ILjava/lang/String;)Z
    .locals 3
    .param p1, "homeStackTaskType"    # I
    .param p2, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 635
    const/4 v1, 0x2

    #@2
    if-ne p1, v1, :cond_0

    #@4
    .line 636
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@6
    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->showRecentApps(Z)V

    #@9
    .line 637
    return v2

    #@a
    .line 640
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    #@c
    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityStack;->moveHomeStackTaskToTop(I)V

    #@f
    .line 642
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getHomeActivity()Lcom/android/server/am/ActivityRecord;

    #@12
    move-result-object v0

    #@13
    .line 643
    .local v0, "top":Lcom/android/server/am/ActivityRecord;
    if-nez v0, :cond_1

    #@15
    .line 644
    return v2

    #@16
    .line 646
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@18
    invoke-virtual {v1, v0, p2}, Lcom/android/server/am/ActivityManagerService;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z

    #@1b
    .line 647
    const/4 v1, 0x1

    #@1c
    return v1
.end method

.method moveHomeStackToFront(Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 630
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    #@5
    .line 629
    return-void
.end method

.method moveProfileTasksFromFreeformToFullscreenStackLocked(I)V
    .locals 7
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 2182
    const/4 v4, 0x2

    #@1
    invoke-virtual {p0, v4}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    #@4
    move-result-object v2

    #@5
    .line 2183
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    if-nez v2, :cond_0

    #@7
    .line 2184
    return-void

    #@8
    .line 2186
    :cond_0
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@a
    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    #@d
    .line 2188
    :try_start_0
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    #@10
    move-result-object v3

    #@11
    .line 2189
    .local v3, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@14
    move-result v1

    #@15
    .line 2190
    .local v1, "size":I
    add-int/lit8 v0, v1, -0x1

    #@17
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    #@19
    .line 2191
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1c
    move-result-object v4

    #@1d
    check-cast v4, Lcom/android/server/am/TaskRecord;

    #@1f
    invoke-direct {p0, v4, p1}, Lcom/android/server/am/ActivityStackSupervisor;->taskContainsActivityFromUser(Lcom/android/server/am/TaskRecord;I)Z

    #@22
    move-result v4

    #@23
    if-eqz v4, :cond_1

    #@25
    .line 2192
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@28
    move-result-object v4

    #@29
    check-cast v4, Lcom/android/server/am/TaskRecord;

    #@2b
    iget v4, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    #@2d
    const/4 v5, 0x1

    #@2e
    .line 2193
    const/4 v6, 0x0

    #@2f
    .line 2192
    invoke-virtual {p0, v4, v5, v6}, Lcom/android/server/am/ActivityStackSupervisor;->positionTaskInStackLocked(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@32
    .line 2190
    :cond_1
    add-int/lit8 v0, v0, -0x1

    #@34
    goto :goto_0

    #@35
    .line 2197
    :cond_2
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@37
    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    #@3a
    .line 2181
    return-void

    #@3b
    .line 2196
    .end local v0    # "i":I
    .end local v1    # "size":I
    .end local v3    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    :catchall_0
    move-exception v4

    #@3c
    .line 2197
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@3e
    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    #@41
    .line 2196
    throw v4
.end method

.method moveTaskToStackLocked(IIZZLjava/lang/String;Z)Z
    .locals 8
    .param p1, "taskId"    # I
    .param p2, "stackId"    # I
    .param p3, "toTop"    # Z
    .param p4, "forceFocus"    # Z
    .param p5, "reason"    # Ljava/lang/String;
    .param p6, "animate"    # Z

    #@0
    .prologue
    .line 2484
    const/4 v7, 0x0

    #@1
    move-object v0, p0

    #@2
    move v1, p1

    #@3
    move v2, p2

    #@4
    move v3, p3

    #@5
    move v4, p4

    #@6
    move-object v5, p5

    #@7
    move v6, p6

    #@8
    .line 2483
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/ActivityStackSupervisor;->moveTaskToStackLocked(IIZZLjava/lang/String;ZZ)Z

    #@b
    move-result v0

    #@c
    return v0
.end method

.method moveTaskToStackLocked(IIZZLjava/lang/String;ZZ)Z
    .locals 17
    .param p1, "taskId"    # I
    .param p2, "stackId"    # I
    .param p3, "toTop"    # Z
    .param p4, "forceFocus"    # Z
    .param p5, "reason"    # Ljava/lang/String;
    .param p6, "animate"    # Z
    .param p7, "deferResume"    # Z

    #@0
    .prologue
    .line 2489
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    #@3
    move-result-object v3

    #@4
    .line 2490
    .local v3, "task":Lcom/android/server/am/TaskRecord;
    if-nez v3, :cond_0

    #@6
    .line 2491
    sget-object v2, Lcom/android/server/am/ActivityStackSupervisor;->TAG:Ljava/lang/String;

    #@8
    new-instance v5, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v6, "moveTaskToStack: no task for id="

    #@10
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v5

    #@14
    move/from16 v0, p1

    #@16
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v5

    #@1a
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v5

    #@1e
    invoke-static {v2, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@21
    .line 2492
    const/4 v2, 0x0

    #@22
    return v2

    #@23
    .line 2495
    :cond_0
    iget-object v2, v3, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@25
    if-eqz v2, :cond_1

    #@27
    iget-object v2, v3, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@29
    iget v2, v2, Lcom/android/server/am/ActivityStack;->mStackId:I

    #@2b
    move/from16 v0, p2

    #@2d
    if-ne v2, v0, :cond_1

    #@2f
    .line 2497
    sget-object v2, Lcom/android/server/am/ActivityStackSupervisor;->TAG:Ljava/lang/String;

    #@31
    new-instance v5, Ljava/lang/StringBuilder;

    #@33
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@36
    const-string/jumbo v6, "moveTaskToStack: taskId="

    #@39
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v5

    #@3d
    move/from16 v0, p1

    #@3f
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@42
    move-result-object v5

    #@43
    const-string/jumbo v6, " already in stackId="

    #@46
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v5

    #@4a
    move/from16 v0, p2

    #@4c
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v5

    #@50
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@53
    move-result-object v5

    #@54
    invoke-static {v2, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@57
    .line 2498
    const/4 v2, 0x1

    #@58
    return v2

    #@59
    .line 2501
    :cond_1
    const/4 v2, 0x2

    #@5a
    move/from16 v0, p2

    #@5c
    if-ne v0, v2, :cond_2

    #@5e
    move-object/from16 v0, p0

    #@60
    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@62
    iget-boolean v2, v2, Lcom/android/server/am/ActivityManagerService;->mSupportsFreeformWindowManagement:Z

    #@64
    if-eqz v2, :cond_8

    #@66
    .line 2506
    :cond_2
    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    #@69
    move-result-object v16

    #@6a
    .line 2507
    .local v16, "topActivity":Lcom/android/server/am/ActivityRecord;
    iget-object v2, v3, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@6c
    if-eqz v2, :cond_9

    #@6e
    iget-object v2, v3, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@70
    iget v14, v2, Lcom/android/server/am/ActivityStack;->mStackId:I

    #@72
    .line 2509
    .local v14, "sourceStackId":I
    :goto_0
    move/from16 v0, p2

    #@74
    invoke-static {v14, v0}, Landroid/app/ActivityManager$StackId;->replaceWindowsOnTaskMove(II)Z

    #@77
    move-result v2

    #@78
    if-eqz v2, :cond_a

    #@7a
    if-eqz v16, :cond_a

    #@7c
    const/4 v12, 0x1

    #@7d
    .line 2510
    .local v12, "mightReplaceWindow":Z
    :goto_1
    if-eqz v12, :cond_3

    #@7f
    .line 2519
    move-object/from16 v0, p0

    #@81
    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@83
    move-object/from16 v0, v16

    #@85
    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@87
    move/from16 v0, p6

    #@89
    invoke-virtual {v2, v5, v0}, Lcom/android/server/wm/WindowManagerService;->setReplacingWindow(Landroid/os/IBinder;Z)V

    #@8c
    .line 2522
    :cond_3
    move-object/from16 v0, p0

    #@8e
    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@90
    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    #@93
    .line 2523
    move/from16 v13, p2

    #@95
    .line 2524
    .local v13, "preferredLaunchStackId":I
    const/4 v11, 0x1

    #@96
    .line 2527
    .local v11, "kept":Z
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    #@98
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@9b
    move-object/from16 v0, p5

    #@9d
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a0
    move-result-object v2

    #@a1
    const-string/jumbo v5, " moveTaskToStack"

    #@a4
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v2

    #@a8
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ab
    move-result-object v7

    #@ac
    move-object/from16 v2, p0

    #@ae
    move/from16 v4, p2

    #@b0
    move/from16 v5, p3

    #@b2
    move/from16 v6, p4

    #@b4
    .line 2526
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityStackSupervisor;->moveTaskToStackUncheckedLocked(Lcom/android/server/am/TaskRecord;IZZLjava/lang/String;)Lcom/android/server/am/ActivityStack;

    #@b7
    move-result-object v15

    #@b8
    .line 2528
    .local v15, "stack":Lcom/android/server/am/ActivityStack;
    iget v0, v15, Lcom/android/server/am/ActivityStack;->mStackId:I

    #@ba
    move/from16 p2, v0

    #@bc
    .line 2530
    if-nez p6, :cond_4

    #@be
    .line 2531
    iget-object v2, v15, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    #@c0
    move-object/from16 v0, v16

    #@c2
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@c5
    .line 2535
    :cond_4
    move-object/from16 v0, p0

    #@c7
    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@c9
    iget v5, v15, Lcom/android/server/am/ActivityStack;->mStackId:I

    #@cb
    invoke-virtual {v2, v5}, Lcom/android/server/wm/WindowManagerService;->prepareFreezingTaskBounds(I)V

    #@ce
    .line 2538
    const/4 v2, 0x1

    #@cf
    move/from16 v0, p2

    #@d1
    if-ne v0, v2, :cond_c

    #@d3
    iget-object v2, v3, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    #@d5
    if-eqz v2, :cond_c

    #@d7
    .line 2539
    iget-object v4, v15, Lcom/android/server/am/ActivityStack;->mBounds:Landroid/graphics/Rect;

    #@d9
    .line 2540
    if-eqz v12, :cond_b

    #@db
    const/4 v6, 0x0

    #@dc
    .line 2539
    :goto_2
    const/4 v5, 0x0

    #@dd
    move-object/from16 v2, p0

    #@df
    move/from16 v7, p7

    #@e1
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityStackSupervisor;->resizeTaskLocked(Lcom/android/server/am/TaskRecord;Landroid/graphics/Rect;IZZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e4
    move-result v11

    #@e5
    .line 2554
    .end local v11    # "kept":Z
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    #@e7
    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@e9
    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    #@ec
    .line 2557
    if-eqz v12, :cond_6

    #@ee
    .line 2561
    move-object/from16 v0, p0

    #@f0
    iget-object v5, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@f2
    move-object/from16 v0, v16

    #@f4
    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@f6
    if-eqz v11, :cond_12

    #@f8
    const/4 v2, 0x0

    #@f9
    :goto_4
    invoke-virtual {v5, v6, v2}, Lcom/android/server/wm/WindowManagerService;->scheduleClearReplacingWindowIfNeeded(Landroid/os/IBinder;Z)V

    #@fc
    .line 2564
    :cond_6
    if-nez p7, :cond_7

    #@fe
    .line 2568
    if-eqz v12, :cond_13

    #@100
    const/4 v2, 0x0

    #@101
    :goto_5
    const/4 v5, 0x0

    #@102
    const/4 v6, 0x0

    #@103
    move-object/from16 v0, p0

    #@105
    invoke-virtual {v0, v5, v6, v2}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    #@108
    .line 2569
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    #@10b
    .line 2572
    :cond_7
    move-object/from16 v0, p0

    #@10d
    move/from16 v1, p2

    #@10f
    invoke-virtual {v0, v3, v13, v1}, Lcom/android/server/am/ActivityStackSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/am/TaskRecord;II)V

    #@112
    .line 2574
    move/from16 v0, p2

    #@114
    if-ne v13, v0, :cond_14

    #@116
    const/4 v2, 0x1

    #@117
    :goto_6
    return v2

    #@118
    .line 2502
    .end local v12    # "mightReplaceWindow":Z
    .end local v13    # "preferredLaunchStackId":I
    .end local v14    # "sourceStackId":I
    .end local v15    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v16    # "topActivity":Lcom/android/server/am/ActivityRecord;
    :cond_8
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@11a
    new-instance v5, Ljava/lang/StringBuilder;

    #@11c
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@11f
    const-string/jumbo v6, "moveTaskToStack:Attempt to move task "

    #@122
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@125
    move-result-object v5

    #@126
    move/from16 v0, p1

    #@128
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12b
    move-result-object v5

    #@12c
    .line 2503
    const-string/jumbo v6, " to unsupported freeform stack"

    #@12f
    .line 2502
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@132
    move-result-object v5

    #@133
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@136
    move-result-object v5

    #@137
    invoke-direct {v2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@13a
    throw v2

    #@13b
    .line 2507
    .restart local v16    # "topActivity":Lcom/android/server/am/ActivityRecord;
    :cond_9
    const/4 v14, -0x1

    #@13c
    goto/16 :goto_0

    #@13e
    .line 2509
    .restart local v14    # "sourceStackId":I
    :cond_a
    const/4 v12, 0x0

    #@13f
    goto/16 :goto_1

    #@141
    .line 2540
    .restart local v11    # "kept":Z
    .restart local v12    # "mightReplaceWindow":Z
    .restart local v13    # "preferredLaunchStackId":I
    .restart local v15    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_b
    const/4 v6, 0x1

    #@142
    goto :goto_2

    #@143
    .line 2541
    :cond_c
    const/4 v2, 0x2

    #@144
    move/from16 v0, p2

    #@146
    if-ne v0, v2, :cond_f

    #@148
    .line 2542
    :try_start_1
    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->getLaunchBounds()Landroid/graphics/Rect;

    #@14b
    move-result-object v4

    #@14c
    .line 2543
    .local v4, "bounds":Landroid/graphics/Rect;
    if-nez v4, :cond_d

    #@14e
    .line 2544
    const/4 v2, 0x0

    #@14f
    invoke-virtual {v15, v3, v2}, Lcom/android/server/am/ActivityStack;->layoutTaskInStack(Lcom/android/server/am/TaskRecord;Landroid/content/pm/ActivityInfo$WindowLayout;)Z

    #@152
    .line 2545
    iget-object v4, v3, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    #@154
    .line 2547
    :cond_d
    if-eqz v12, :cond_e

    #@156
    const/4 v6, 0x0

    #@157
    :goto_7
    const/4 v5, 0x2

    #@158
    move-object/from16 v2, p0

    #@15a
    move/from16 v7, p7

    #@15c
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityStackSupervisor;->resizeTaskLocked(Lcom/android/server/am/TaskRecord;Landroid/graphics/Rect;IZZ)Z

    #@15f
    move-result v11

    #@160
    .local v11, "kept":Z
    goto :goto_3

    #@161
    .local v11, "kept":Z
    :cond_e
    const/4 v6, 0x1

    #@162
    goto :goto_7

    #@163
    .line 2549
    .end local v4    # "bounds":Landroid/graphics/Rect;
    :cond_f
    const/4 v2, 0x3

    #@164
    move/from16 v0, p2

    #@166
    if-eq v0, v2, :cond_10

    #@168
    const/4 v2, 0x4

    #@169
    move/from16 v0, p2

    #@16b
    if-ne v0, v2, :cond_5

    #@16d
    .line 2550
    :cond_10
    iget-object v7, v15, Lcom/android/server/am/ActivityStack;->mBounds:Landroid/graphics/Rect;

    #@16f
    .line 2551
    if-eqz v12, :cond_11

    #@171
    const/4 v9, 0x0

    #@172
    .line 2550
    :goto_8
    const/4 v8, 0x0

    #@173
    move-object/from16 v5, p0

    #@175
    move-object v6, v3

    #@176
    move/from16 v10, p7

    #@178
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/am/ActivityStackSupervisor;->resizeTaskLocked(Lcom/android/server/am/TaskRecord;Landroid/graphics/Rect;IZZ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@17b
    move-result v11

    #@17c
    .local v11, "kept":Z
    goto/16 :goto_3

    #@17e
    .line 2551
    .local v11, "kept":Z
    :cond_11
    const/4 v9, 0x1

    #@17f
    goto :goto_8

    #@180
    .line 2553
    .end local v15    # "stack":Lcom/android/server/am/ActivityStack;
    :catchall_0
    move-exception v2

    #@181
    .line 2554
    move-object/from16 v0, p0

    #@183
    iget-object v5, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@185
    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    #@188
    .line 2553
    throw v2

    #@189
    .line 2561
    .end local v11    # "kept":Z
    .restart local v15    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_12
    const/4 v2, 0x1

    #@18a
    goto/16 :goto_4

    #@18c
    .line 2568
    :cond_13
    const/4 v2, 0x1

    #@18d
    goto/16 :goto_5

    #@18f
    .line 2574
    :cond_14
    const/4 v2, 0x0

    #@190
    goto :goto_6
.end method

.method moveTaskToStackUncheckedLocked(Lcom/android/server/am/TaskRecord;IZZLjava/lang/String;)Lcom/android/server/am/ActivityStack;
    .locals 10
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "stackId"    # I
    .param p3, "toTop"    # Z
    .param p4, "forceFocus"    # Z
    .param p5, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    .line 2433
    invoke-static {p2}, Landroid/app/ActivityManager$StackId;->isMultiWindowStack(I)Z

    #@4
    move-result v7

    #@5
    if-eqz v7, :cond_0

    #@7
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@9
    iget-boolean v7, v7, Lcom/android/server/am/ActivityManagerService;->mSupportsMultiWindow:Z

    #@b
    if-eqz v7, :cond_3

    #@d
    .line 2438
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    #@10
    move-result-object v1

    #@11
    .line 2439
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@13
    .line 2440
    .local v0, "prevStack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusedStack(Lcom/android/server/am/ActivityStack;)Z

    #@16
    move-result v7

    #@17
    if-eqz v7, :cond_4

    #@19
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    #@1c
    move-result-object v7

    #@1d
    if-ne v7, v1, :cond_4

    #@1f
    const/4 v3, 0x1

    #@20
    .line 2441
    .local v3, "wasFocused":Z
    :goto_0
    iget-object v7, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    #@22
    if-ne v7, v1, :cond_5

    #@24
    const/4 v5, 0x1

    #@25
    .line 2445
    .local v5, "wasResumed":Z
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    #@28
    move-result v7

    #@29
    if-eqz v7, :cond_7

    #@2b
    .line 2446
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    #@2e
    move-result-object v7

    #@2f
    if-ne v7, v1, :cond_6

    #@31
    const/4 v4, 0x1

    #@32
    .line 2448
    .local v4, "wasFront":Z
    :goto_2
    const/4 v7, 0x3

    #@33
    if-ne p2, v7, :cond_1

    #@35
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->isResizeable()Z

    #@38
    move-result v7

    #@39
    if-eqz v7, :cond_8

    #@3b
    .line 2457
    :cond_1
    :goto_3
    const/4 v7, 0x2

    #@3c
    if-ne p2, v7, :cond_2

    #@3e
    .line 2458
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@40
    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    #@42
    iget v8, p1, Lcom/android/server/am/TaskRecord;->userId:I

    #@44
    invoke-virtual {v7, v8}, Lcom/android/server/am/UserController;->shouldConfirmCredentials(I)Z

    #@47
    move-result v7

    #@48
    .line 2457
    if-eqz v7, :cond_2

    #@4a
    .line 2459
    if-eqz v0, :cond_a

    #@4c
    iget p2, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    #@4e
    .line 2460
    :goto_4
    sget-object v7, Lcom/android/server/am/ActivityStackSupervisor;->TAG:Ljava/lang/String;

    #@50
    new-instance v8, Ljava/lang/StringBuilder;

    #@52
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@55
    const-string/jumbo v9, "Can not move locked profile task="

    #@58
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v8

    #@5c
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v8

    #@60
    .line 2461
    const-string/jumbo v9, " to freeform stack. Moving to stackId="

    #@63
    .line 2460
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v8

    #@67
    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v8

    #@6b
    .line 2461
    const-string/jumbo v9, " instead."

    #@6e
    .line 2460
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v8

    #@72
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@75
    move-result-object v8

    #@76
    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@79
    .line 2467
    :cond_2
    iput-boolean v6, p1, Lcom/android/server/am/TaskRecord;->mTemporarilyUnresizable:Z

    #@7b
    .line 2468
    invoke-virtual {p0, p2, v6, p3}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(IZZ)Lcom/android/server/am/ActivityStack;

    #@7e
    move-result-object v2

    #@7f
    .line 2469
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    const/4 v7, 0x0

    #@80
    iput-boolean v7, p1, Lcom/android/server/am/TaskRecord;->mTemporarilyUnresizable:Z

    #@82
    .line 2470
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@84
    iget v8, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    #@86
    iget v9, v2, Lcom/android/server/am/ActivityStack;->mStackId:I

    #@88
    invoke-virtual {v7, v8, v9, p3}, Lcom/android/server/wm/WindowManagerService;->moveTaskToStack(IIZ)V

    #@8b
    .line 2471
    invoke-virtual {v2, p1, p3, p5}, Lcom/android/server/am/ActivityStack;->addTask(Lcom/android/server/am/TaskRecord;ZLjava/lang/String;)V

    #@8e
    .line 2476
    if-nez p4, :cond_b

    #@90
    if-nez v3, :cond_b

    #@92
    .line 2475
    .end local v4    # "wasFront":Z
    :goto_5
    invoke-virtual {v2, v1, v4, v5, p5}, Lcom/android/server/am/ActivityStack;->moveToFrontAndResumeStateIfNeeded(Lcom/android/server/am/ActivityRecord;ZZLjava/lang/String;)V

    #@95
    .line 2478
    return-object v2

    #@96
    .line 2434
    .end local v0    # "prevStack":Lcom/android/server/am/ActivityStack;
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v3    # "wasFocused":Z
    .end local v5    # "wasResumed":Z
    :cond_3
    new-instance v6, Ljava/lang/IllegalStateException;

    #@98
    new-instance v7, Ljava/lang/StringBuilder;

    #@9a
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@9d
    const-string/jumbo v8, "moveTaskToStackUncheckedLocked: Device doesn\'t support multi-window task="

    #@a0
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a3
    move-result-object v7

    #@a4
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v7

    #@a8
    .line 2435
    const-string/jumbo v8, " to stackId="

    #@ab
    .line 2434
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ae
    move-result-object v7

    #@af
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b2
    move-result-object v7

    #@b3
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b6
    move-result-object v7

    #@b7
    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@ba
    throw v6

    #@bb
    .line 2440
    .restart local v0    # "prevStack":Lcom/android/server/am/ActivityStack;
    .restart local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_4
    const/4 v3, 0x0

    #@bc
    .restart local v3    # "wasFocused":Z
    goto/16 :goto_0

    #@be
    .line 2441
    :cond_5
    const/4 v5, 0x0

    #@bf
    .restart local v5    # "wasResumed":Z
    goto/16 :goto_1

    #@c1
    .line 2446
    :cond_6
    const/4 v4, 0x0

    #@c2
    .restart local v4    # "wasFront":Z
    goto/16 :goto_2

    #@c4
    .line 2445
    .end local v4    # "wasFront":Z
    :cond_7
    const/4 v4, 0x0

    #@c5
    .restart local v4    # "wasFront":Z
    goto/16 :goto_2

    #@c7
    .line 2453
    :cond_8
    if-eqz v0, :cond_9

    #@c9
    iget p2, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    #@cb
    .line 2454
    :goto_6
    sget-object v7, Lcom/android/server/am/ActivityStackSupervisor;->TAG:Ljava/lang/String;

    #@cd
    new-instance v8, Ljava/lang/StringBuilder;

    #@cf
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@d2
    const-string/jumbo v9, "Can not move unresizeable task="

    #@d5
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d8
    move-result-object v8

    #@d9
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@dc
    move-result-object v8

    #@dd
    .line 2455
    const-string/jumbo v9, " to docked stack. Moving to stackId="

    #@e0
    .line 2454
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e3
    move-result-object v8

    #@e4
    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@e7
    move-result-object v8

    #@e8
    .line 2455
    const-string/jumbo v9, " instead."

    #@eb
    .line 2454
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ee
    move-result-object v8

    #@ef
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f2
    move-result-object v8

    #@f3
    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@f6
    goto/16 :goto_3

    #@f8
    .line 2453
    :cond_9
    const/4 p2, 0x1

    #@f9
    goto :goto_6

    #@fa
    .line 2459
    :cond_a
    const/4 p2, 0x1

    #@fb
    goto/16 :goto_4

    #@fd
    .restart local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_b
    move v4, v6

    #@fe
    .line 2476
    goto :goto_5
.end method

.method moveTasksToFullscreenStackLocked(IZ)V
    .locals 14
    .param p1, "fromStackId"    # I
    .param p2, "onTop"    # Z

    #@0
    .prologue
    .line 2124
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    #@3
    move-result-object v12

    #@4
    .line 2125
    .local v12, "stack":Lcom/android/server/am/ActivityStack;
    if-nez v12, :cond_0

    #@6
    .line 2126
    return-void

    #@7
    .line 2129
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@9
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    #@c
    .line 2131
    const/4 v0, 0x3

    #@d
    if-ne p1, v0, :cond_3

    #@f
    .line 2136
    const/4 v1, 0x0

    #@10
    .local v1, "i":I
    :goto_0
    const/4 v0, 0x4

    #@11
    if-gt v1, v0, :cond_2

    #@13
    .line 2137
    :try_start_0
    invoke-static {v1}, Landroid/app/ActivityManager$StackId;->isResizeableByDockedStack(I)Z

    #@16
    move-result v0

    #@17
    if-eqz v0, :cond_1

    #@19
    .line 2138
    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    #@1c
    move-result-object v10

    #@1d
    .line 2139
    .local v10, "otherStack":Lcom/android/server/am/ActivityStack;
    if-eqz v10, :cond_1

    #@1f
    .line 2140
    const/4 v2, 0x0

    #@20
    const/4 v3, 0x0

    #@21
    const/4 v4, 0x0

    #@22
    const/4 v5, 0x1

    #@23
    .line 2141
    const/4 v6, 0x1

    #@24
    const/4 v7, 0x1

    #@25
    move-object v0, p0

    #@26
    .line 2140
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/ActivityStackSupervisor;->resizeStackLocked(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZZ)V

    #@29
    .line 2136
    .end local v10    # "otherStack":Lcom/android/server/am/ActivityStack;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@2b
    goto :goto_0

    #@2c
    .line 2150
    :cond_2
    const/4 v0, 0x0

    #@2d
    iput-boolean v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mAllowDockedStackResize:Z

    #@2f
    .line 2152
    .end local v1    # "i":I
    :cond_3
    invoke-virtual {v12}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    #@32
    move-result-object v13

    #@33
    .line 2153
    .local v13, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    #@36
    move-result v11

    #@37
    .line 2154
    .local v11, "size":I
    if-eqz p2, :cond_6

    #@39
    .line 2155
    const/4 v1, 0x0

    #@3a
    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v11, :cond_4

    #@3c
    .line 2156
    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@3f
    move-result-object v0

    #@40
    check-cast v0, Lcom/android/server/am/TaskRecord;

    #@42
    iget v3, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    #@44
    .line 2158
    const-string/jumbo v7, "moveTasksToFullscreenStack"

    #@47
    .line 2157
    const/4 v4, 0x1

    #@48
    .line 2158
    const/4 v8, 0x1

    #@49
    const/4 v9, 0x1

    #@4a
    move-object v2, p0

    #@4b
    move/from16 v5, p2

    #@4d
    move/from16 v6, p2

    #@4f
    .line 2156
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/am/ActivityStackSupervisor;->moveTaskToStackLocked(IIZZLjava/lang/String;ZZ)Z

    #@52
    .line 2155
    add-int/lit8 v1, v1, 0x1

    #@54
    goto :goto_1

    #@55
    .line 2161
    :cond_4
    const/4 v0, 0x0

    #@56
    const/4 v2, 0x0

    #@57
    const/4 v3, 0x1

    #@58
    invoke-virtual {p0, v0, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    #@5b
    .line 2162
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5e
    .line 2170
    :cond_5
    const/4 v0, 0x1

    #@5f
    iput-boolean v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mAllowDockedStackResize:Z

    #@61
    .line 2171
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@63
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    #@66
    .line 2123
    return-void

    #@67
    .line 2164
    .end local v1    # "i":I
    :cond_6
    add-int/lit8 v1, v11, -0x1

    #@69
    .restart local v1    # "i":I
    :goto_2
    if-ltz v1, :cond_5

    #@6b
    .line 2165
    :try_start_1
    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@6e
    move-result-object v0

    #@6f
    check-cast v0, Lcom/android/server/am/TaskRecord;

    #@71
    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    #@73
    .line 2166
    const/4 v2, 0x1

    #@74
    const/4 v3, 0x0

    #@75
    .line 2165
    invoke-virtual {p0, v0, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->positionTaskInStackLocked(III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@78
    .line 2164
    add-int/lit8 v1, v1, -0x1

    #@7a
    goto :goto_2

    #@7b
    .line 2169
    .end local v1    # "i":I
    .end local v11    # "size":I
    .end local v13    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    :catchall_0
    move-exception v0

    #@7c
    .line 2170
    const/4 v2, 0x1

    #@7d
    iput-boolean v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mAllowDockedStackResize:Z

    #@7f
    .line 2171
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@81
    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    #@84
    .line 2169
    throw v0
.end method

.method moveTopStackActivityToPinnedStackLocked(ILandroid/graphics/Rect;)Z
    .locals 6
    .param p1, "stackId"    # I
    .param p2, "bounds"    # Landroid/graphics/Rect;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 2578
    invoke-virtual {p0, p1, v5, v5}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(IZZ)Lcom/android/server/am/ActivityStack;

    #@4
    move-result-object v1

    #@5
    .line 2579
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    if-nez v1, :cond_0

    #@7
    .line 2580
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@9
    .line 2581
    new-instance v3, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v4, "moveTopStackActivityToPinnedStackLocked: Unknown stackId="

    #@11
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v3

    #@15
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v3

    #@19
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v3

    #@1d
    .line 2580
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@20
    throw v2

    #@21
    .line 2584
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    #@24
    move-result-object v0

    #@25
    .line 2585
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-nez v0, :cond_1

    #@27
    .line 2586
    sget-object v2, Lcom/android/server/am/ActivityStackSupervisor;->TAG:Ljava/lang/String;

    #@29
    new-instance v3, Ljava/lang/StringBuilder;

    #@2b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@2e
    const-string/jumbo v4, "moveTopStackActivityToPinnedStackLocked: No top running activity in stack="

    #@31
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v3

    #@35
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v3

    #@39
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v3

    #@3d
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@40
    .line 2588
    return v5

    #@41
    .line 2591
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@43
    iget-boolean v2, v2, Lcom/android/server/am/ActivityManagerService;->mForceResizableActivities:Z

    #@45
    if-nez v2, :cond_2

    #@47
    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->supportsPictureInPicture()Z

    #@4a
    move-result v2

    #@4b
    if-eqz v2, :cond_3

    #@4d
    .line 2598
    :cond_2
    const-string/jumbo v2, "moveTopActivityToPinnedStack"

    #@50
    invoke-virtual {p0, v0, v2, p2}, Lcom/android/server/am/ActivityStackSupervisor;->moveActivityToPinnedStackLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;Landroid/graphics/Rect;)V

    #@53
    .line 2599
    const/4 v2, 0x1

    #@54
    return v2

    #@55
    .line 2592
    :cond_3
    sget-object v2, Lcom/android/server/am/ActivityStackSupervisor;->TAG:Ljava/lang/String;

    #@57
    .line 2593
    new-instance v3, Ljava/lang/StringBuilder;

    #@59
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@5c
    const-string/jumbo v4, "moveTopStackActivityToPinnedStackLocked: Picture-In-Picture not supported for  r="

    #@5f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v3

    #@63
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v3

    #@67
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6a
    move-result-object v3

    #@6b
    .line 2592
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@6e
    .line 2595
    return v5
.end method

.method notifyActivityDrawnForKeyguard()V
    .locals 1

    #@0
    .prologue
    .line 563
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@2
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->notifyActivityDrawnForKeyguard()V

    #@5
    .line 561
    return-void
.end method

.method notifyAppTransitionDone()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 2070
    invoke-virtual {p0, v3}, Lcom/android/server/am/ActivityStackSupervisor;->continueUpdateBounds(I)V

    #@4
    .line 2071
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mResizingTasksDuringAnimation:Landroid/util/ArraySet;

    #@6
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    #@9
    move-result v2

    #@a
    add-int/lit8 v0, v2, -0x1

    #@c
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    #@e
    .line 2072
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mResizingTasksDuringAnimation:Landroid/util/ArraySet;

    #@10
    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@13
    move-result-object v2

    #@14
    check-cast v2, Ljava/lang/Integer;

    #@16
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@19
    move-result v1

    #@1a
    .line 2073
    .local v1, "taskId":I
    const/4 v2, -0x1

    #@1b
    invoke-virtual {p0, v1, v3, v2}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(IZI)Lcom/android/server/am/TaskRecord;

    #@1e
    move-result-object v2

    #@1f
    if-eqz v2, :cond_0

    #@21
    .line 2074
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@23
    invoke-virtual {v2, v1, v3}, Lcom/android/server/wm/WindowManagerService;->setTaskDockedResizing(IZ)V

    #@26
    .line 2071
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@28
    goto :goto_0

    #@29
    .line 2077
    .end local v1    # "taskId":I
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mResizingTasksDuringAnimation:Landroid/util/ArraySet;

    #@2b
    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V

    #@2e
    .line 2069
    return-void
.end method

.method okToShowLocked(Lcom/android/server/am/ActivityRecord;)Z
    .locals 4
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 3105
    if-eqz p1, :cond_2

    #@4
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@6
    iget v2, v2, Landroid/content/pm/ActivityInfo;->flags:I

    #@8
    and-int/lit16 v2, v2, 0x400

    #@a
    if-nez v2, :cond_0

    #@c
    .line 3106
    iget v2, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    #@e
    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivityStackSupervisor;->isCurrentProfileLocked(I)Z

    #@11
    move-result v2

    #@12
    if-eqz v2, :cond_1

    #@14
    .line 3107
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@16
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    #@18
    iget v3, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    #@1a
    invoke-virtual {v2, v3}, Lcom/android/server/am/UserController;->isUserStoppingOrShuttingDownLocked(I)Z

    #@1d
    move-result v2

    #@1e
    if-eqz v2, :cond_0

    #@20
    move v0, v1

    #@21
    .line 3105
    :cond_0
    :goto_0
    return v0

    #@22
    :cond_1
    move v0, v1

    #@23
    .line 3106
    goto :goto_0

    #@24
    :cond_2
    move v0, v1

    #@25
    .line 3105
    goto :goto_0
.end method

.method public onDisplayAdded(I)V
    .locals 4
    .param p1, "displayId"    # I

    #@0
    .prologue
    .line 3412
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    #@2
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    #@4
    const/16 v2, 0x69

    #@6
    const/4 v3, 0x0

    #@7
    invoke-virtual {v1, v2, p1, v3}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->obtainMessage(III)Landroid/os/Message;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendMessage(Landroid/os/Message;)Z

    #@e
    .line 3410
    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 4
    .param p1, "displayId"    # I

    #@0
    .prologue
    .line 3424
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    #@2
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    #@4
    const/16 v2, 0x6a

    #@6
    const/4 v3, 0x0

    #@7
    invoke-virtual {v1, v2, p1, v3}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->obtainMessage(III)Landroid/os/Message;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendMessage(Landroid/os/Message;)Z

    #@e
    .line 3422
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 4
    .param p1, "displayId"    # I

    #@0
    .prologue
    .line 3418
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    #@2
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    #@4
    const/16 v2, 0x6b

    #@6
    const/4 v3, 0x0

    #@7
    invoke-virtual {v1, v2, p1, v3}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->obtainMessage(III)Landroid/os/Message;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendMessage(Landroid/os/Message;)Z

    #@e
    .line 3416
    return-void
.end method

.method onLockTaskPackagesUpdatedLocked()V
    .locals 15

    #@0
    .prologue
    const/4 v14, 0x3

    #@1
    const/4 v12, 0x2

    #@2
    const/4 v13, 0x0

    #@3
    .line 3693
    const/4 v0, 0x0

    #@4
    .line 3694
    .local v0, "didSomething":Z
    iget-object v11, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeTasks:Ljava/util/ArrayList;

    #@6
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    #@9
    move-result v11

    #@a
    add-int/lit8 v9, v11, -0x1

    #@c
    .local v9, "taskNdx":I
    :goto_0
    if-ltz v9, :cond_6

    #@e
    .line 3695
    iget-object v11, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeTasks:Ljava/util/ArrayList;

    #@10
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@13
    move-result-object v3

    #@14
    check-cast v3, Lcom/android/server/am/TaskRecord;

    #@16
    .line 3697
    .local v3, "lockedTask":Lcom/android/server/am/TaskRecord;
    iget v11, v3, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    #@18
    if-eq v11, v12, :cond_1

    #@1a
    .line 3698
    iget v11, v3, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    #@1c
    if-ne v11, v14, :cond_2

    #@1e
    const/4 v10, 0x1

    #@1f
    .line 3699
    .local v10, "wasWhitelisted":Z
    :goto_1
    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->setLockTaskAuth()V

    #@22
    .line 3701
    iget v11, v3, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    #@24
    if-eq v11, v12, :cond_3

    #@26
    .line 3702
    iget v11, v3, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    #@28
    if-ne v11, v14, :cond_4

    #@2a
    const/4 v2, 0x1

    #@2b
    .line 3703
    .local v2, "isWhitelisted":Z
    :goto_2
    if-eqz v10, :cond_0

    #@2d
    if-eqz v2, :cond_5

    #@2f
    .line 3694
    :cond_0
    :goto_3
    add-int/lit8 v9, v9, -0x1

    #@31
    goto :goto_0

    #@32
    .line 3697
    .end local v2    # "isWhitelisted":Z
    .end local v10    # "wasWhitelisted":Z
    :cond_1
    const/4 v10, 0x1

    #@33
    .restart local v10    # "wasWhitelisted":Z
    goto :goto_1

    #@34
    .line 3698
    .end local v10    # "wasWhitelisted":Z
    :cond_2
    const/4 v10, 0x0

    #@35
    .restart local v10    # "wasWhitelisted":Z
    goto :goto_1

    #@36
    .line 3701
    :cond_3
    const/4 v2, 0x1

    #@37
    .restart local v2    # "isWhitelisted":Z
    goto :goto_2

    #@38
    .line 3702
    .end local v2    # "isWhitelisted":Z
    :cond_4
    const/4 v2, 0x0

    #@39
    .restart local v2    # "isWhitelisted":Z
    goto :goto_2

    #@3a
    .line 3707
    :cond_5
    invoke-virtual {p0, v3}, Lcom/android/server/am/ActivityStackSupervisor;->removeLockedTaskLocked(Lcom/android/server/am/TaskRecord;)V

    #@3d
    .line 3708
    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->performClearTaskLocked()V

    #@40
    .line 3709
    const/4 v0, 0x1

    #@41
    goto :goto_3

    #@42
    .line 3712
    .end local v2    # "isWhitelisted":Z
    .end local v3    # "lockedTask":Lcom/android/server/am/TaskRecord;
    .end local v10    # "wasWhitelisted":Z
    :cond_6
    iget-object v11, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    #@44
    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    #@47
    move-result v11

    #@48
    add-int/lit8 v1, v11, -0x1

    #@4a
    .local v1, "displayNdx":I
    :goto_4
    if-ltz v1, :cond_8

    #@4c
    .line 3713
    iget-object v11, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    #@4e
    invoke-virtual {v11, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@51
    move-result-object v11

    #@52
    check-cast v11, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    #@54
    iget-object v7, v11, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    #@56
    .line 3714
    .local v7, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    #@59
    move-result v11

    #@5a
    add-int/lit8 v6, v11, -0x1

    #@5c
    .local v6, "stackNdx":I
    :goto_5
    if-ltz v6, :cond_7

    #@5e
    .line 3715
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@61
    move-result-object v5

    #@62
    check-cast v5, Lcom/android/server/am/ActivityStack;

    #@64
    .line 3716
    .local v5, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack;->onLockTaskPackagesUpdatedLocked()V

    #@67
    .line 3714
    add-int/lit8 v6, v6, -0x1

    #@69
    goto :goto_5

    #@6a
    .line 3712
    .end local v5    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_7
    add-int/lit8 v1, v1, -0x1

    #@6c
    goto :goto_4

    #@6d
    .line 3719
    .end local v6    # "stackNdx":I
    .end local v7    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    #@70
    move-result-object v4

    #@71
    .line 3720
    .local v4, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v4, :cond_b

    #@73
    iget-object v8, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@75
    .line 3721
    :goto_6
    iget-object v11, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeTasks:Ljava/util/ArrayList;

    #@77
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    #@7a
    move-result v11

    #@7b
    if-eqz v11, :cond_9

    #@7d
    if-eqz v8, :cond_9

    #@7f
    .line 3722
    iget v11, v8, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    #@81
    if-ne v11, v12, :cond_9

    #@83
    .line 3726
    const-string/jumbo v11, "package updated"

    #@86
    const/4 v12, 0x1

    #@87
    invoke-virtual {p0, v8, v12, v11, v13}, Lcom/android/server/am/ActivityStackSupervisor;->setLockTaskModeLocked(Lcom/android/server/am/TaskRecord;ILjava/lang/String;Z)V

    #@8a
    .line 3728
    const/4 v0, 0x1

    #@8b
    .line 3730
    :cond_9
    if-eqz v0, :cond_a

    #@8d
    .line 3731
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    #@90
    .line 3692
    :cond_a
    return-void

    #@91
    .line 3720
    :cond_b
    const/4 v8, 0x0

    #@92
    .local v8, "task":Lcom/android/server/am/TaskRecord;
    goto :goto_6
.end method

.method pauseBackStacks(ZZZ)Z
    .locals 7
    .param p1, "userLeaving"    # Z
    .param p2, "resuming"    # Z
    .param p3, "dontWait"    # Z

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 943
    const/4 v1, 0x0

    #@2
    .line 944
    .local v1, "someActivityPaused":Z
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    #@4
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    #@7
    move-result v5

    #@8
    add-int/lit8 v0, v5, -0x1

    #@a
    .end local v1    # "someActivityPaused":Z
    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_2

    #@c
    .line 945
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    #@e
    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@11
    move-result-object v5

    #@12
    check-cast v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    #@14
    iget-object v4, v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    #@16
    .line 946
    .local v4, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@19
    move-result v5

    #@1a
    add-int/lit8 v3, v5, -0x1

    #@1c
    .local v3, "stackNdx":I
    :goto_1
    if-ltz v3, :cond_1

    #@1e
    .line 947
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@21
    move-result-object v2

    #@22
    check-cast v2, Lcom/android/server/am/ActivityStack;

    #@24
    .line 948
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusedStack(Lcom/android/server/am/ActivityStack;)Z

    #@27
    move-result v5

    #@28
    if-nez v5, :cond_0

    #@2a
    iget-object v5, v2, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    #@2c
    if-eqz v5, :cond_0

    #@2e
    .line 951
    invoke-virtual {v2, p1, v6, p2, p3}, Lcom/android/server/am/ActivityStack;->startPausingLocked(ZZZZ)Z

    #@31
    move-result v5

    #@32
    or-int/2addr v1, v5

    #@33
    .line 946
    :cond_0
    add-int/lit8 v3, v3, -0x1

    #@35
    goto :goto_1

    #@36
    .line 944
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    #@38
    goto :goto_0

    #@39
    .line 956
    .end local v3    # "stackNdx":I
    .end local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_2
    return v1
.end method

.method pauseChildStacks(Lcom/android/server/am/ActivityRecord;ZZZZ)V
    .locals 5
    .param p1, "parent"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "userLeaving"    # Z
    .param p3, "uiSleeping"    # Z
    .param p4, "resuming"    # Z
    .param p5, "dontWait"    # Z

    #@0
    .prologue
    .line 983
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    #@5
    move-result v4

    #@6
    add-int/lit8 v0, v4, -0x1

    #@8
    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_2

    #@a
    .line 984
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    #@c
    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@f
    move-result-object v4

    #@10
    check-cast v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    #@12
    iget-object v3, v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    #@14
    .line 985
    .local v3, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@17
    move-result v4

    #@18
    add-int/lit8 v2, v4, -0x1

    #@1a
    .local v2, "stackNdx":I
    :goto_1
    if-ltz v2, :cond_1

    #@1c
    .line 986
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1f
    move-result-object v1

    #@20
    check-cast v1, Lcom/android/server/am/ActivityStack;

    #@22
    .line 987
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    iget-object v4, v1, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    #@24
    if-eqz v4, :cond_0

    #@26
    .line 988
    iget-object v4, v1, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    #@28
    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mParentActivity:Lcom/android/server/am/ActivityRecord;

    #@2a
    if-ne v4, p1, :cond_0

    #@2c
    .line 989
    invoke-virtual {v1, p2, p3, p4, p5}, Lcom/android/server/am/ActivityStack;->startPausingLocked(ZZZZ)Z

    #@2f
    .line 985
    :cond_0
    add-int/lit8 v2, v2, -0x1

    #@31
    goto :goto_1

    #@32
    .line 983
    .end local v1    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    #@34
    goto :goto_0

    #@35
    .line 981
    .end local v2    # "stackNdx":I
    .end local v3    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_2
    return-void
.end method

.method positionTaskInStackLocked(III)V
    .locals 10
    .param p1, "taskId"    # I
    .param p2, "stackId"    # I
    .param p3, "position"    # I

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    const/4 v8, 0x0

    #@2
    .line 2650
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    #@5
    move-result-object v7

    #@6
    .line 2651
    .local v7, "task":Lcom/android/server/am/TaskRecord;
    if-nez v7, :cond_0

    #@8
    .line 2652
    sget-object v0, Lcom/android/server/am/ActivityStackSupervisor;->TAG:Ljava/lang/String;

    #@a
    new-instance v1, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v2, "positionTaskInStackLocked: no task for id="

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@21
    .line 2653
    return-void

    #@22
    .line 2655
    :cond_0
    const/4 v0, 0x1

    #@23
    invoke-virtual {p0, p2, v0, v8}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(IZZ)Lcom/android/server/am/ActivityStack;

    #@26
    move-result-object v6

    #@27
    .line 2657
    .local v6, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v7, v6}, Lcom/android/server/am/TaskRecord;->updateOverrideConfigurationForStack(Lcom/android/server/am/ActivityStack;)V

    #@2a
    .line 2659
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@2c
    .line 2660
    iget-object v4, v7, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    #@2e
    iget-object v5, v7, Lcom/android/server/am/TaskRecord;->mOverrideConfig:Landroid/content/res/Configuration;

    #@30
    move v1, p1

    #@31
    move v2, p2

    #@32
    move v3, p3

    #@33
    .line 2659
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/WindowManagerService;->positionTaskInStack(IIILandroid/graphics/Rect;Landroid/content/res/Configuration;)V

    #@36
    .line 2661
    invoke-virtual {v6, v7, p3}, Lcom/android/server/am/ActivityStack;->positionTask(Lcom/android/server/am/TaskRecord;I)V

    #@39
    .line 2664
    invoke-virtual {v6, v9, v8, v8}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    #@3c
    .line 2665
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    #@3f
    .line 2649
    return-void
.end method

.method final processStoppingActivitiesLocked(Z)Ljava/util/ArrayList;
    .locals 8
    .param p1, "remove"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 3111
    const/4 v3, 0x0

    #@2
    .line 3113
    .local v3, "stops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->allResumedActivitiesVisible()Z

    #@5
    move-result v1

    #@6
    .line 3114
    .local v1, "nowVisible":Z
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    #@8
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@b
    move-result v5

    #@c
    add-int/lit8 v0, v5, -0x1

    #@e
    .end local v3    # "stops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .local v0, "activityNdx":I
    :goto_0
    if-ltz v0, :cond_4

    #@10
    .line 3115
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    #@12
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@15
    move-result-object v2

    #@16
    check-cast v2, Lcom/android/server/am/ActivityRecord;

    #@18
    .line 3116
    .local v2, "s":Lcom/android/server/am/ActivityRecord;
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    #@1a
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@1d
    move-result v4

    #@1e
    .line 3119
    .local v4, "waitingVisible":Z
    if-eqz v4, :cond_0

    #@20
    if-eqz v1, :cond_0

    #@22
    .line 3120
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    #@24
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@27
    .line 3121
    iget-boolean v5, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    #@29
    if-eqz v5, :cond_0

    #@2b
    .line 3128
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@2d
    iget-object v6, v2, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@2f
    invoke-virtual {v5, v6, v7}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    #@32
    .line 3131
    :cond_0
    if-eqz v4, :cond_1

    #@34
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@36
    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->isSleepingOrShuttingDownLocked()Z

    #@39
    move-result v5

    #@3a
    if-eqz v5, :cond_3

    #@3c
    :cond_1
    if-eqz p1, :cond_3

    #@3e
    .line 3133
    if-nez v3, :cond_2

    #@40
    .line 3134
    new-instance v3, Ljava/util/ArrayList;

    #@42
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@45
    .line 3136
    :cond_2
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@48
    .line 3137
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    #@4a
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@4d
    .line 3114
    :cond_3
    add-int/lit8 v0, v0, -0x1

    #@4f
    goto :goto_0

    #@50
    .line 3141
    .end local v2    # "s":Lcom/android/server/am/ActivityRecord;
    .end local v4    # "waitingVisible":Z
    :cond_4
    return-object v3
.end method

.method rankTaskLayersIfNeeded()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 2970
    iget-boolean v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTaskLayersChanged:Z

    #@3
    if-nez v4, :cond_0

    #@5
    .line 2971
    return-void

    #@6
    .line 2973
    :cond_0
    iput-boolean v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTaskLayersChanged:Z

    #@8
    .line 2974
    const/4 v1, 0x0

    #@9
    .local v1, "displayNdx":I
    :goto_0
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    #@b
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    #@e
    move-result v4

    #@f
    if-ge v1, v4, :cond_2

    #@11
    .line 2975
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    #@13
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@16
    move-result-object v4

    #@17
    check-cast v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    #@19
    iget-object v3, v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    #@1b
    .line 2976
    .local v3, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    const/4 v0, 0x0

    #@1c
    .line 2977
    .local v0, "baseLayer":I
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@1f
    move-result v4

    #@20
    add-int/lit8 v2, v4, -0x1

    #@22
    .local v2, "stackNdx":I
    :goto_1
    if-ltz v2, :cond_1

    #@24
    .line 2978
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@27
    move-result-object v4

    #@28
    check-cast v4, Lcom/android/server/am/ActivityStack;

    #@2a
    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityStack;->rankTaskLayers(I)I

    #@2d
    move-result v4

    #@2e
    add-int/2addr v0, v4

    #@2f
    .line 2977
    add-int/lit8 v2, v2, -0x1

    #@31
    goto :goto_1

    #@32
    .line 2974
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@34
    goto :goto_0

    #@35
    .line 2969
    .end local v0    # "baseLayer":I
    .end local v2    # "stackNdx":I
    .end local v3    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_2
    return-void
.end method

.method final realStartActivityLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ProcessRecord;ZZ)Z
    .locals 32
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p3, "andResume"    # Z
    .param p4, "checkConfig"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1183
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->allPausedActivitiesComplete()Z

    #@3
    move-result v4

    #@4
    if-nez v4, :cond_0

    #@6
    .line 1190
    const/4 v4, 0x0

    #@7
    return v4

    #@8
    .line 1193
    :cond_0
    if-eqz p3, :cond_1

    #@a
    .line 1194
    const/4 v4, 0x0

    #@b
    move-object/from16 v0, p1

    #@d
    move-object/from16 v1, p2

    #@f
    invoke-virtual {v0, v1, v4}, Lcom/android/server/am/ActivityRecord;->startFreezingScreenLocked(Lcom/android/server/am/ProcessRecord;I)V

    #@12
    .line 1195
    move-object/from16 v0, p0

    #@14
    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@16
    move-object/from16 v0, p1

    #@18
    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@1a
    const/4 v6, 0x1

    #@1b
    invoke-virtual {v4, v5, v6}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    #@1e
    .line 1198
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->startLaunchTickingLocked()V

    #@21
    .line 1207
    :cond_1
    if-eqz p4, :cond_2

    #@23
    .line 1208
    move-object/from16 v0, p0

    #@25
    iget-object v5, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@27
    .line 1209
    move-object/from16 v0, p0

    #@29
    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@2b
    iget-object v6, v4, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    #@2d
    .line 1210
    invoke-virtual/range {p1 .. p2}, Lcom/android/server/am/ActivityRecord;->mayFreezeScreenLocked(Lcom/android/server/am/ProcessRecord;)Z

    #@30
    move-result v4

    #@31
    if-eqz v4, :cond_6

    #@33
    move-object/from16 v0, p1

    #@35
    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@37
    .line 1208
    :goto_0
    invoke-virtual {v5, v6, v4}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokens(Landroid/content/res/Configuration;Landroid/os/IBinder;)Landroid/content/res/Configuration;

    #@3a
    move-result-object v22

    #@3b
    .line 1211
    .local v22, "config":Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    #@3d
    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@3f
    const/4 v5, 0x0

    #@40
    move-object/from16 v0, v22

    #@42
    move-object/from16 v1, p1

    #@44
    invoke-virtual {v4, v0, v1, v5}, Lcom/android/server/am/ActivityManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;Z)Z

    #@47
    .line 1214
    .end local v22    # "config":Landroid/content/res/Configuration;
    :cond_2
    move-object/from16 v0, p2

    #@49
    move-object/from16 v1, p1

    #@4b
    iput-object v0, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@4d
    .line 1215
    const/4 v4, 0x0

    #@4e
    move-object/from16 v0, p2

    #@50
    iput-object v4, v0, Lcom/android/server/am/ProcessRecord;->waitingToKill:Ljava/lang/String;

    #@52
    .line 1216
    move-object/from16 v0, p1

    #@54
    iget v4, v0, Lcom/android/server/am/ActivityRecord;->launchCount:I

    #@56
    add-int/lit8 v4, v4, 0x1

    #@58
    move-object/from16 v0, p1

    #@5a
    iput v4, v0, Lcom/android/server/am/ActivityRecord;->launchCount:I

    #@5c
    .line 1217
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@5f
    move-result-wide v4

    #@60
    move-object/from16 v0, p1

    #@62
    iput-wide v4, v0, Lcom/android/server/am/ActivityRecord;->lastLaunchTime:J

    #@64
    .line 1221
    move-object/from16 v0, p2

    #@66
    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    #@68
    move-object/from16 v0, p1

    #@6a
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    #@6d
    move-result v25

    #@6e
    .line 1222
    .local v25, "idx":I
    if-gez v25, :cond_3

    #@70
    .line 1223
    move-object/from16 v0, p2

    #@72
    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    #@74
    move-object/from16 v0, p1

    #@76
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@79
    .line 1225
    :cond_3
    move-object/from16 v0, p0

    #@7b
    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@7d
    const/4 v5, 0x1

    #@7e
    const/4 v6, 0x0

    #@7f
    move-object/from16 v0, p2

    #@81
    invoke-virtual {v4, v0, v5, v6}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    #@84
    .line 1226
    move-object/from16 v0, p0

    #@86
    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@88
    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V

    #@8b
    .line 1228
    move-object/from16 v0, p1

    #@8d
    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@8f
    move-object/from16 v31, v0

    #@91
    .line 1229
    .local v31, "task":Lcom/android/server/am/TaskRecord;
    move-object/from16 v0, v31

    #@93
    iget v4, v0, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    #@95
    const/4 v5, 0x2

    #@96
    if-eq v4, v5, :cond_4

    #@98
    .line 1230
    move-object/from16 v0, v31

    #@9a
    iget v4, v0, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    #@9c
    const/4 v5, 0x4

    #@9d
    if-ne v4, v5, :cond_5

    #@9f
    .line 1231
    :cond_4
    const-string/jumbo v4, "mLockTaskAuth==LAUNCHABLE"

    #@a2
    const/4 v5, 0x1

    #@a3
    const/4 v6, 0x0

    #@a4
    move-object/from16 v0, p0

    #@a6
    move-object/from16 v1, v31

    #@a8
    invoke-virtual {v0, v1, v5, v4, v6}, Lcom/android/server/am/ActivityStackSupervisor;->setLockTaskModeLocked(Lcom/android/server/am/TaskRecord;ILjava/lang/String;Z)V

    #@ab
    .line 1234
    :cond_5
    move-object/from16 v0, v31

    #@ad
    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@af
    move-object/from16 v30, v0

    #@b1
    .line 1236
    .local v30, "stack":Lcom/android/server/am/ActivityStack;
    :try_start_0
    move-object/from16 v0, p2

    #@b3
    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@b5
    if-nez v4, :cond_7

    #@b7
    .line 1237
    new-instance v4, Landroid/os/RemoteException;

    #@b9
    invoke-direct {v4}, Landroid/os/RemoteException;-><init>()V

    #@bc
    throw v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@bd
    .line 1322
    :catch_0
    move-exception v23

    #@be
    .line 1323
    .local v23, "e":Landroid/os/RemoteException;
    move-object/from16 v0, p1

    #@c0
    iget-boolean v4, v0, Lcom/android/server/am/ActivityRecord;->launchFailed:Z

    #@c2
    if-eqz v4, :cond_15

    #@c4
    .line 1326
    sget-object v4, Lcom/android/server/am/ActivityStackSupervisor;->TAG:Ljava/lang/String;

    #@c6
    new-instance v5, Ljava/lang/StringBuilder;

    #@c8
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@cb
    const-string/jumbo v6, "Second failure launching "

    #@ce
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d1
    move-result-object v5

    #@d2
    .line 1327
    move-object/from16 v0, p1

    #@d4
    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    #@d6
    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@d9
    move-result-object v6

    #@da
    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@dd
    move-result-object v6

    #@de
    .line 1326
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e1
    move-result-object v5

    #@e2
    .line 1328
    const-string/jumbo v6, ", giving up"

    #@e5
    .line 1326
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e8
    move-result-object v5

    #@e9
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ec
    move-result-object v5

    #@ed
    move-object/from16 v0, v23

    #@ef
    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@f2
    .line 1329
    move-object/from16 v0, p0

    #@f4
    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@f6
    move-object/from16 v0, p2

    #@f8
    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityManagerService;->appDiedLocked(Lcom/android/server/am/ProcessRecord;)V

    #@fb
    .line 1330
    move-object/from16 v0, p1

    #@fd
    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@ff
    .line 1331
    const-string/jumbo v8, "2nd-crash"

    #@102
    .line 1330
    const/4 v6, 0x0

    #@103
    const/4 v7, 0x0

    #@104
    .line 1331
    const/4 v9, 0x0

    #@105
    move-object/from16 v4, v30

    #@107
    .line 1330
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/am/ActivityStack;->requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    #@10a
    .line 1332
    const/4 v4, 0x0

    #@10b
    return v4

    #@10c
    .line 1210
    .end local v23    # "e":Landroid/os/RemoteException;
    .end local v25    # "idx":I
    .end local v30    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v31    # "task":Lcom/android/server/am/TaskRecord;
    :cond_6
    const/4 v4, 0x0

    #@10d
    goto/16 :goto_0

    #@10f
    .line 1239
    .restart local v25    # "idx":I
    .restart local v30    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v31    # "task":Lcom/android/server/am/TaskRecord;
    :cond_7
    const/16 v17, 0x0

    #@111
    .line 1240
    .local v17, "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    const/16 v18, 0x0

    #@113
    .line 1241
    .local v18, "newIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    if-eqz p3, :cond_8

    #@115
    .line 1242
    :try_start_1
    move-object/from16 v0, p1

    #@117
    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    #@119
    move-object/from16 v17, v0

    #@11b
    .line 1243
    .local v17, "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    move-object/from16 v0, p1

    #@11d
    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    #@11f
    move-object/from16 v18, v0

    #@121
    .line 1248
    .end local v17    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .end local v18    # "newIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    :cond_8
    if-eqz p3, :cond_9

    #@123
    .line 1249
    const/4 v4, 0x4

    #@124
    new-array v4, v4, [Ljava/lang/Object;

    #@126
    .line 1250
    move-object/from16 v0, p1

    #@128
    iget v5, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    #@12a
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@12d
    move-result-object v5

    #@12e
    const/4 v6, 0x0

    #@12f
    aput-object v5, v4, v6

    #@131
    invoke-static/range {p1 .. p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@134
    move-result v5

    #@135
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@138
    move-result-object v5

    #@139
    const/4 v6, 0x1

    #@13a
    aput-object v5, v4, v6

    #@13c
    .line 1251
    move-object/from16 v0, v31

    #@13e
    iget v5, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    #@140
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@143
    move-result-object v5

    #@144
    const/4 v6, 0x2

    #@145
    aput-object v5, v4, v6

    #@147
    move-object/from16 v0, p1

    #@149
    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    #@14b
    const/4 v6, 0x3

    #@14c
    aput-object v5, v4, v6

    #@14e
    .line 1249
    const/16 v5, 0x7536

    #@150
    invoke-static {v5, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@153
    .line 1253
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    #@156
    move-result v4

    #@157
    if-eqz v4, :cond_a

    #@159
    .line 1255
    move-object/from16 v0, p0

    #@15b
    iget-object v5, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@15d
    move-object/from16 v0, v31

    #@15f
    iget-object v4, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@161
    const/4 v6, 0x0

    #@162
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@165
    move-result-object v4

    #@166
    check-cast v4, Lcom/android/server/am/ActivityRecord;

    #@168
    iget-object v4, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@16a
    iput-object v4, v5, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;

    #@16c
    .line 1257
    :cond_a
    move-object/from16 v0, p0

    #@16e
    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@170
    move-object/from16 v0, p1

    #@172
    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    #@174
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@177
    move-result-object v5

    #@178
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@17b
    move-result-object v5

    #@17c
    .line 1258
    const/4 v6, 0x0

    #@17d
    .line 1257
    invoke-virtual {v4, v5, v6}, Lcom/android/server/am/ActivityManagerService;->notifyPackageUse(Ljava/lang/String;I)V

    #@180
    .line 1259
    const/4 v4, 0x0

    #@181
    move-object/from16 v0, p1

    #@183
    iput-boolean v4, v0, Lcom/android/server/am/ActivityRecord;->sleeping:Z

    #@185
    .line 1260
    const/4 v4, 0x0

    #@186
    move-object/from16 v0, p1

    #@188
    iput-boolean v4, v0, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    #@18a
    .line 1261
    move-object/from16 v0, p0

    #@18c
    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@18e
    move-object/from16 v0, p1

    #@190
    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityManagerService;->showUnsupportedZoomDialogIfNeededLocked(Lcom/android/server/am/ActivityRecord;)V

    #@193
    .line 1262
    move-object/from16 v0, p0

    #@195
    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@197
    move-object/from16 v0, p1

    #@199
    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityManagerService;->showAskCompatModeDialogLocked(Lcom/android/server/am/ActivityRecord;)V

    #@19c
    .line 1263
    move-object/from16 v0, p0

    #@19e
    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@1a0
    move-object/from16 v0, p1

    #@1a2
    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@1a4
    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@1a6
    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityManagerService;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    #@1a9
    move-result-object v4

    #@1aa
    move-object/from16 v0, p1

    #@1ac
    iput-object v4, v0, Lcom/android/server/am/ActivityRecord;->compat:Landroid/content/res/CompatibilityInfo;

    #@1ae
    .line 1264
    const/16 v21, 0x0

    #@1b0
    .line 1265
    .local v21, "profilerInfo":Landroid/app/ProfilerInfo;
    move-object/from16 v0, p0

    #@1b2
    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@1b4
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProfileApp:Ljava/lang/String;

    #@1b6
    if-eqz v4, :cond_d

    #@1b8
    move-object/from16 v0, p0

    #@1ba
    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@1bc
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProfileApp:Ljava/lang/String;

    #@1be
    move-object/from16 v0, p2

    #@1c0
    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    #@1c2
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1c5
    move-result v4

    #@1c6
    if-eqz v4, :cond_d

    #@1c8
    .line 1266
    move-object/from16 v0, p0

    #@1ca
    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@1cc
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProfileProc:Lcom/android/server/am/ProcessRecord;

    #@1ce
    if-eqz v4, :cond_b

    #@1d0
    move-object/from16 v0, p0

    #@1d2
    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@1d4
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProfileProc:Lcom/android/server/am/ProcessRecord;

    #@1d6
    move-object/from16 v0, p2

    #@1d8
    if-ne v4, v0, :cond_d

    #@1da
    .line 1267
    :cond_b
    move-object/from16 v0, p0

    #@1dc
    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@1de
    move-object/from16 v0, p2

    #@1e0
    iput-object v0, v4, Lcom/android/server/am/ActivityManagerService;->mProfileProc:Lcom/android/server/am/ProcessRecord;

    #@1e2
    .line 1268
    move-object/from16 v0, p0

    #@1e4
    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@1e6
    iget-object v0, v4, Lcom/android/server/am/ActivityManagerService;->mProfileFile:Ljava/lang/String;

    #@1e8
    move-object/from16 v29, v0

    #@1ea
    .line 1269
    .local v29, "profileFile":Ljava/lang/String;
    if-eqz v29, :cond_d

    #@1ec
    .line 1270
    move-object/from16 v0, p0

    #@1ee
    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@1f0
    iget-object v0, v4, Lcom/android/server/am/ActivityManagerService;->mProfileFd:Landroid/os/ParcelFileDescriptor;

    #@1f2
    move-object/from16 v28, v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@1f4
    .line 1271
    .local v28, "profileFd":Landroid/os/ParcelFileDescriptor;
    if-eqz v28, :cond_c

    #@1f6
    .line 1273
    :try_start_2
    invoke-virtual/range {v28 .. v28}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    #@1f9
    move-result-object v28

    #@1fa
    .line 1285
    .end local v28    # "profileFd":Landroid/os/ParcelFileDescriptor;
    :cond_c
    :goto_1
    :try_start_3
    new-instance v21, Landroid/app/ProfilerInfo;

    #@1fc
    .line 1286
    .end local v21    # "profilerInfo":Landroid/app/ProfilerInfo;
    move-object/from16 v0, p0

    #@1fe
    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@200
    iget v4, v4, Lcom/android/server/am/ActivityManagerService;->mSamplingInterval:I

    #@202
    move-object/from16 v0, p0

    #@204
    iget-object v5, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@206
    iget-boolean v5, v5, Lcom/android/server/am/ActivityManagerService;->mAutoStopProfiler:Z

    #@208
    .line 1285
    move-object/from16 v0, v21

    #@20a
    move-object/from16 v1, v29

    #@20c
    move-object/from16 v2, v28

    #@20e
    invoke-direct {v0, v1, v2, v4, v5}, Landroid/app/ProfilerInfo;-><init>(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;IZ)V

    #@211
    .line 1291
    .end local v29    # "profileFile":Ljava/lang/String;
    :cond_d
    if-eqz p3, :cond_e

    #@213
    .line 1292
    const/4 v4, 0x1

    #@214
    move-object/from16 v0, p2

    #@216
    iput-boolean v4, v0, Lcom/android/server/am/ProcessRecord;->hasShownUi:Z

    #@218
    .line 1293
    const/4 v4, 0x1

    #@219
    move-object/from16 v0, p2

    #@21b
    iput-boolean v4, v0, Lcom/android/server/am/ProcessRecord;->pendingUiClean:Z

    #@21d
    .line 1295
    :cond_e
    move-object/from16 v0, p0

    #@21f
    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@221
    iget v4, v4, Lcom/android/server/am/ActivityManagerService;->mTopProcessState:I

    #@223
    move-object/from16 v0, p2

    #@225
    invoke-virtual {v0, v4}, Lcom/android/server/am/ProcessRecord;->forceProcessStateUpTo(I)V

    #@228
    .line 1296
    move-object/from16 v0, p2

    #@22a
    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@22c
    new-instance v5, Landroid/content/Intent;

    #@22e
    move-object/from16 v0, p1

    #@230
    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    #@232
    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    #@235
    move-object/from16 v0, p1

    #@237
    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@239
    .line 1297
    invoke-static/range {p1 .. p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@23c
    move-result v7

    #@23d
    move-object/from16 v0, p1

    #@23f
    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@241
    new-instance v9, Landroid/content/res/Configuration;

    #@243
    move-object/from16 v0, p0

    #@245
    iget-object v10, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@247
    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    #@249
    invoke-direct {v9, v10}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    #@24c
    .line 1298
    new-instance v10, Landroid/content/res/Configuration;

    #@24e
    move-object/from16 v0, v31

    #@250
    iget-object v11, v0, Lcom/android/server/am/TaskRecord;->mOverrideConfig:Landroid/content/res/Configuration;

    #@252
    invoke-direct {v10, v11}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    #@255
    move-object/from16 v0, p1

    #@257
    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->compat:Landroid/content/res/CompatibilityInfo;

    #@259
    move-object/from16 v0, p1

    #@25b
    iget-object v12, v0, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    #@25d
    .line 1299
    move-object/from16 v0, v31

    #@25f
    iget-object v13, v0, Lcom/android/server/am/TaskRecord;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    #@261
    move-object/from16 v0, p2

    #@263
    iget v14, v0, Lcom/android/server/am/ProcessRecord;->repProcState:I

    #@265
    move-object/from16 v0, p1

    #@267
    iget-object v15, v0, Lcom/android/server/am/ActivityRecord;->icicle:Landroid/os/Bundle;

    #@269
    move-object/from16 v0, p1

    #@26b
    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->persistentState:Landroid/os/PersistableBundle;

    #@26d
    move-object/from16 v16, v0

    #@26f
    .line 1300
    if-eqz p3, :cond_14

    #@271
    const/16 v19, 0x0

    #@273
    :goto_2
    move-object/from16 v0, p0

    #@275
    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@277
    move-object/from16 v20, v0

    #@279
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/am/ActivityManagerService;->isNextTransitionForward()Z

    #@27c
    move-result v20

    #@27d
    .line 1296
    invoke-interface/range {v4 .. v21}, Landroid/app/IApplicationThread;->scheduleLaunchActivity(Landroid/content/Intent;Landroid/os/IBinder;ILandroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractor;ILandroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/util/List;Ljava/util/List;ZZLandroid/app/ProfilerInfo;)V

    #@280
    .line 1302
    move-object/from16 v0, p2

    #@282
    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    #@284
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    #@286
    and-int/lit8 v4, v4, 0x2

    #@288
    if-eqz v4, :cond_10

    #@28a
    .line 1307
    move-object/from16 v0, p2

    #@28c
    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    #@28e
    move-object/from16 v0, p2

    #@290
    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    #@292
    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@294
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@297
    move-result v4

    #@298
    if-eqz v4, :cond_10

    #@29a
    .line 1308
    move-object/from16 v0, p0

    #@29c
    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@29e
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    #@2a0
    if-eqz v4, :cond_f

    #@2a2
    .line 1309
    move-object/from16 v0, p0

    #@2a4
    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@2a6
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    #@2a8
    move-object/from16 v0, p2

    #@2aa
    if-eq v4, v0, :cond_f

    #@2ac
    .line 1310
    sget-object v4, Lcom/android/server/am/ActivityStackSupervisor;->TAG:Ljava/lang/String;

    #@2ae
    new-instance v5, Ljava/lang/StringBuilder;

    #@2b0
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@2b3
    const-string/jumbo v6, "Starting new heavy weight process "

    #@2b6
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b9
    move-result-object v5

    #@2ba
    move-object/from16 v0, p2

    #@2bc
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2bf
    move-result-object v5

    #@2c0
    .line 1311
    const-string/jumbo v6, " when already running "

    #@2c3
    .line 1310
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c6
    move-result-object v5

    #@2c7
    .line 1312
    move-object/from16 v0, p0

    #@2c9
    iget-object v6, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@2cb
    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    #@2cd
    .line 1310
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2d0
    move-result-object v5

    #@2d1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d4
    move-result-object v5

    #@2d5
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2d8
    .line 1314
    :cond_f
    move-object/from16 v0, p0

    #@2da
    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@2dc
    move-object/from16 v0, p2

    #@2de
    iput-object v0, v4, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    #@2e0
    .line 1315
    move-object/from16 v0, p0

    #@2e2
    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@2e4
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    #@2e6
    .line 1316
    const/16 v5, 0x18

    #@2e8
    .line 1315
    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    #@2eb
    move-result-object v26

    #@2ec
    .line 1317
    .local v26, "msg":Landroid/os/Message;
    move-object/from16 v0, p1

    #@2ee
    move-object/from16 v1, v26

    #@2f0
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2f2
    .line 1318
    move-object/from16 v0, p0

    #@2f4
    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@2f6
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    #@2f8
    move-object/from16 v0, v26

    #@2fa
    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    #@2fd
    .line 1341
    .end local v26    # "msg":Landroid/os/Message;
    :cond_10
    const/4 v4, 0x0

    #@2fe
    move-object/from16 v0, p1

    #@300
    iput-boolean v4, v0, Lcom/android/server/am/ActivityRecord;->launchFailed:Z

    #@302
    .line 1342
    move-object/from16 v0, v30

    #@304
    move-object/from16 v1, p1

    #@306
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->updateLRUListLocked(Lcom/android/server/am/ActivityRecord;)Z

    #@309
    move-result v4

    #@30a
    if-eqz v4, :cond_11

    #@30c
    .line 1343
    sget-object v4, Lcom/android/server/am/ActivityStackSupervisor;->TAG:Ljava/lang/String;

    #@30e
    new-instance v5, Ljava/lang/StringBuilder;

    #@310
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@313
    const-string/jumbo v6, "Activity "

    #@316
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@319
    move-result-object v5

    #@31a
    move-object/from16 v0, p1

    #@31c
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@31f
    move-result-object v5

    #@320
    const-string/jumbo v6, " being launched, but already in LRU list"

    #@323
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@326
    move-result-object v5

    #@327
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32a
    move-result-object v5

    #@32b
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@32e
    .line 1346
    :cond_11
    if-eqz p3, :cond_16

    #@330
    .line 1349
    move-object/from16 v0, v30

    #@332
    move-object/from16 v1, p1

    #@334
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->minimalResumeActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    #@337
    .line 1363
    :goto_3
    move-object/from16 v0, p0

    #@339
    move-object/from16 v1, v30

    #@33b
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusedStack(Lcom/android/server/am/ActivityStack;)Z

    #@33e
    move-result v4

    #@33f
    if-eqz v4, :cond_12

    #@341
    .line 1364
    move-object/from16 v0, p0

    #@343
    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@345
    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->startSetupActivityLocked()V

    #@348
    .line 1369
    :cond_12
    move-object/from16 v0, p1

    #@34a
    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@34c
    if-eqz v4, :cond_13

    #@34e
    .line 1370
    move-object/from16 v0, p0

    #@350
    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@352
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    #@354
    move-object/from16 v0, p1

    #@356
    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@358
    invoke-virtual {v4, v5}, Lcom/android/server/am/ActiveServices;->updateServiceConnectionActivitiesLocked(Lcom/android/server/am/ProcessRecord;)V

    #@35b
    .line 1373
    :cond_13
    const/4 v4, 0x1

    #@35c
    return v4

    #@35d
    .line 1274
    .restart local v21    # "profilerInfo":Landroid/app/ProfilerInfo;
    .restart local v28    # "profileFd":Landroid/os/ParcelFileDescriptor;
    .restart local v29    # "profileFile":Ljava/lang/String;
    :catch_1
    move-exception v24

    #@35e
    .line 1275
    .local v24, "e":Ljava/io/IOException;
    if-eqz v28, :cond_c

    #@360
    .line 1277
    :try_start_4
    invoke-virtual/range {v28 .. v28}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    #@363
    .line 1280
    :goto_4
    const/16 v28, 0x0

    #@365
    .local v28, "profileFd":Landroid/os/ParcelFileDescriptor;
    goto/16 :goto_1

    #@367
    .line 1278
    .local v28, "profileFd":Landroid/os/ParcelFileDescriptor;
    :catch_2
    move-exception v27

    #@368
    .local v27, "o":Ljava/io/IOException;
    goto :goto_4

    #@369
    .line 1300
    .end local v21    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v24    # "e":Ljava/io/IOException;
    .end local v27    # "o":Ljava/io/IOException;
    .end local v28    # "profileFd":Landroid/os/ParcelFileDescriptor;
    .end local v29    # "profileFile":Ljava/lang/String;
    :cond_14
    const/16 v19, 0x1

    #@36b
    goto/16 :goto_2

    #@36d
    .line 1337
    .restart local v23    # "e":Landroid/os/RemoteException;
    :cond_15
    move-object/from16 v0, p2

    #@36f
    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    #@371
    move-object/from16 v0, p1

    #@373
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@376
    .line 1338
    throw v23

    #@377
    .line 1356
    .end local v23    # "e":Landroid/os/RemoteException;
    :cond_16
    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    #@379
    move-object/from16 v0, p1

    #@37b
    iput-object v4, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    #@37d
    goto :goto_3
.end method

.method releaseSomeActivitiesLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .locals 11
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3007
    const/4 v1, 0x0

    #@1
    .line 3009
    .local v1, "firstTask":Lcom/android/server/am/TaskRecord;
    const/4 v8, 0x0

    #@2
    .line 3011
    .local v8, "tasks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/am/TaskRecord;>;"
    const/4 v2, 0x0

    #@3
    .end local v1    # "firstTask":Lcom/android/server/am/TaskRecord;
    .end local v8    # "tasks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/am/TaskRecord;>;"
    .local v2, "i":I
    :goto_0
    iget-object v9, p1, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    #@8
    move-result v9

    #@9
    if-ge v2, v9, :cond_6

    #@b
    .line 3012
    iget-object v9, p1, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v4

    #@11
    check-cast v4, Lcom/android/server/am/ActivityRecord;

    #@13
    .line 3016
    .local v4, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v9, v4, Lcom/android/server/am/ActivityRecord;->finishing:Z

    #@15
    if-nez v9, :cond_0

    #@17
    iget-object v9, v4, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    #@19
    sget-object v10, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYING:Lcom/android/server/am/ActivityStack$ActivityState;

    #@1b
    if-ne v9, v10, :cond_1

    #@1d
    .line 3018
    :cond_0
    return-void

    #@1e
    .line 3016
    :cond_1
    iget-object v9, v4, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    #@20
    sget-object v10, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    #@22
    if-eq v9, v10, :cond_0

    #@24
    .line 3022
    iget-boolean v9, v4, Lcom/android/server/am/ActivityRecord;->visible:Z

    #@26
    if-nez v9, :cond_2

    #@28
    iget-boolean v9, v4, Lcom/android/server/am/ActivityRecord;->stopped:Z

    #@2a
    if-eqz v9, :cond_2

    #@2c
    iget-boolean v9, v4, Lcom/android/server/am/ActivityRecord;->haveState:Z

    #@2e
    if-eqz v9, :cond_2

    #@30
    iget-object v9, v4, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    #@32
    sget-object v10, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    #@34
    if-ne v9, v10, :cond_3

    #@36
    .line 3011
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@38
    goto :goto_0

    #@39
    .line 3022
    :cond_3
    iget-object v9, v4, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    #@3b
    sget-object v10, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    #@3d
    if-eq v9, v10, :cond_2

    #@3f
    .line 3023
    iget-object v9, v4, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    #@41
    sget-object v10, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    #@43
    if-eq v9, v10, :cond_2

    #@45
    iget-object v9, v4, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    #@47
    sget-object v10, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    #@49
    if-eq v9, v10, :cond_2

    #@4b
    .line 3027
    iget-object v9, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@4d
    if-eqz v9, :cond_2

    #@4f
    .line 3030
    if-nez v1, :cond_4

    #@51
    .line 3031
    iget-object v1, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@53
    .local v1, "firstTask":Lcom/android/server/am/TaskRecord;
    goto :goto_1

    #@54
    .line 3032
    .end local v1    # "firstTask":Lcom/android/server/am/TaskRecord;
    :cond_4
    iget-object v9, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@56
    if-eq v1, v9, :cond_2

    #@58
    .line 3033
    if-nez v8, :cond_5

    #@5a
    .line 3034
    new-instance v8, Landroid/util/ArraySet;

    #@5c
    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    #@5f
    .line 3035
    .local v8, "tasks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {v8, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@62
    .line 3037
    .end local v8    # "tasks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/am/TaskRecord;>;"
    :cond_5
    iget-object v9, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@64
    invoke-virtual {v8, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@67
    goto :goto_1

    #@68
    .line 3041
    .end local v4    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_6
    if-nez v8, :cond_7

    #@6a
    .line 3043
    return-void

    #@6b
    .line 3047
    :cond_7
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    #@6d
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    #@70
    move-result v3

    #@71
    .line 3048
    .local v3, "numDisplays":I
    const/4 v0, 0x0

    #@72
    .local v0, "displayNdx":I
    :goto_2
    if-ge v0, v3, :cond_a

    #@74
    .line 3049
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    #@76
    invoke-virtual {v9, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@79
    move-result-object v9

    #@7a
    check-cast v9, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    #@7c
    iget-object v7, v9, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    #@7e
    .line 3051
    .local v7, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    const/4 v6, 0x0

    #@7f
    .local v6, "stackNdx":I
    :goto_3
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    #@82
    move-result v9

    #@83
    if-ge v6, v9, :cond_9

    #@85
    .line 3052
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@88
    move-result-object v5

    #@89
    check-cast v5, Lcom/android/server/am/ActivityStack;

    #@8b
    .line 3054
    .local v5, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v5, p1, v8, p2}, Lcom/android/server/am/ActivityStack;->releaseSomeActivitiesLocked(Lcom/android/server/am/ProcessRecord;Landroid/util/ArraySet;Ljava/lang/String;)I

    #@8e
    move-result v9

    #@8f
    if-lez v9, :cond_8

    #@91
    .line 3055
    return-void

    #@92
    .line 3051
    :cond_8
    add-int/lit8 v6, v6, 0x1

    #@94
    goto :goto_3

    #@95
    .line 3048
    .end local v5    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_9
    add-int/lit8 v0, v0, 0x1

    #@97
    goto :goto_2

    #@98
    .line 3005
    .end local v6    # "stackNdx":I
    .end local v7    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_a
    return-void
.end method

.method removeChildActivityContainers(Lcom/android/server/am/ActivityRecord;)V
    .locals 4
    .param p1, "parentActivity"    # Lcom/android/server/am/ActivityRecord;

    #@0
    .prologue
    .line 2002
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->mChildContainers:Ljava/util/ArrayList;

    #@2
    .line 2003
    .local v0, "childStacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v3

    #@6
    add-int/lit8 v2, v3, -0x1

    #@8
    .local v2, "containerNdx":I
    :goto_0
    if-ltz v2, :cond_0

    #@a
    .line 2004
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@d
    move-result-object v1

    #@e
    check-cast v1, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    #@10
    .line 2007
    .local v1, "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->release()V

    #@13
    .line 2003
    add-int/lit8 v2, v2, -0x1

    #@15
    goto :goto_0

    #@16
    .line 2001
    .end local v1    # "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    :cond_0
    return-void
.end method

.method removeLockedTaskLocked(Lcom/android/server/am/TaskRecord;)V
    .locals 2
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    #@0
    .prologue
    .line 3551
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeTasks:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@5
    move-result v1

    #@6
    if-nez v1, :cond_0

    #@8
    .line 3552
    return-void

    #@9
    .line 3555
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeTasks:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 3559
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    #@14
    move-result-object v0

    #@15
    .line 3560
    .local v0, "lockTaskMsg":Landroid/os/Message;
    iget v1, p1, Lcom/android/server/am/TaskRecord;->userId:I

    #@17
    iput v1, v0, Landroid/os/Message;->arg1:I

    #@19
    .line 3561
    const/16 v1, 0x6e

    #@1b
    iput v1, v0, Landroid/os/Message;->what:I

    #@1d
    .line 3562
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    #@1f
    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendMessage(Landroid/os/Message;)Z

    #@22
    .line 3550
    .end local v0    # "lockTaskMsg":Landroid/os/Message;
    :cond_1
    return-void
.end method

.method removeSleepTimeouts()V
    .locals 2

    #@0
    .prologue
    .line 3400
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mSleepTimeout:Z

    #@3
    .line 3401
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    #@5
    const/16 v1, 0x67

    #@7
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->removeMessages(I)V

    #@a
    .line 3399
    return-void
.end method

.method removeTimeoutsForActivityLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 2
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    #@0
    .prologue
    .line 3390
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    #@2
    const/16 v1, 0x64

    #@4
    invoke-virtual {v0, v1, p1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->removeMessages(ILjava/lang/Object;)V

    #@7
    .line 3387
    return-void
.end method

.method removeUserLocked(I)V
    .locals 1
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 1743
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mUserStackInFront:Landroid/util/SparseIntArray;

    #@2
    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    #@5
    .line 1742
    return-void
.end method

.method reportActivityLaunchedLocked(ZLcom/android/server/am/ActivityRecord;JJ)V
    .locals 7
    .param p1, "timeout"    # Z
    .param p2, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "thisTime"    # J
    .param p5, "totalTime"    # J

    #@0
    .prologue
    .line 1047
    const/4 v0, 0x0

    #@1
    .line 1048
    .local v0, "changed":Z
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v3

    #@7
    add-int/lit8 v1, v3, -0x1

    #@9
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    #@b
    .line 1049
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@10
    move-result-object v2

    #@11
    check-cast v2, Landroid/app/IActivityManager$WaitResult;

    #@13
    .line 1050
    .local v2, "w":Landroid/app/IActivityManager$WaitResult;
    iget-object v3, v2, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;

    #@15
    if-nez v3, :cond_1

    #@17
    .line 1051
    const/4 v0, 0x1

    #@18
    .line 1052
    iput-boolean p1, v2, Landroid/app/IActivityManager$WaitResult;->timeout:Z

    #@1a
    .line 1053
    if-eqz p2, :cond_0

    #@1c
    .line 1054
    new-instance v3, Landroid/content/ComponentName;

    #@1e
    iget-object v4, p2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@20
    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@22
    iget-object v5, p2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@24
    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@26
    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@29
    iput-object v3, v2, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;

    #@2b
    .line 1056
    :cond_0
    iput-wide p3, v2, Landroid/app/IActivityManager$WaitResult;->thisTime:J

    #@2d
    .line 1057
    iput-wide p5, v2, Landroid/app/IActivityManager$WaitResult;->totalTime:J

    #@2f
    .line 1048
    :cond_1
    add-int/lit8 v1, v1, -0x1

    #@31
    goto :goto_0

    #@32
    .line 1061
    .end local v2    # "w":Landroid/app/IActivityManager$WaitResult;
    :cond_2
    if-eqz v0, :cond_3

    #@34
    .line 1062
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@36
    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->notifyAll()V

    #@39
    .line 1046
    :cond_3
    return-void
.end method

.method reportActivityVisibleLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 0
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    #@0
    .prologue
    .line 1005
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->sendWaitingVisibleReportLocked(Lcom/android/server/am/ActivityRecord;)V

    #@3
    .line 1004
    return-void
.end method

.method reportResumedActivityLocked(Lcom/android/server/am/ActivityRecord;)Z
    .locals 4
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 2842
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@4
    iget-object v0, v1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@6
    .line 2843
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusedStack(Lcom/android/server/am/ActivityStack;)Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 2844
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@e
    invoke-virtual {v1, p1, v3}, Lcom/android/server/am/ActivityManagerService;->updateUsageStats(Lcom/android/server/am/ActivityRecord;Z)V

    #@11
    .line 2846
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->allResumedActivitiesComplete()Z

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_1

    #@17
    .line 2847
    const/4 v1, 0x0

    #@18
    invoke-virtual {p0, v1, v2, v2}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    #@1b
    .line 2848
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@1d
    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    #@20
    .line 2849
    return v3

    #@21
    .line 2851
    :cond_1
    return v2
.end method

.method reportTaskToFrontNoLaunch(Lcom/android/server/am/ActivityRecord;)V
    .locals 4
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    #@0
    .prologue
    .line 1028
    const/4 v0, 0x0

    #@1
    .line 1029
    .local v0, "changed":Z
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v3

    #@7
    add-int/lit8 v1, v3, -0x1

    #@9
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    #@b
    .line 1030
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@10
    move-result-object v2

    #@11
    check-cast v2, Landroid/app/IActivityManager$WaitResult;

    #@13
    .line 1031
    .local v2, "w":Landroid/app/IActivityManager$WaitResult;
    iget-object v3, v2, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;

    #@15
    if-nez v3, :cond_0

    #@17
    .line 1032
    const/4 v0, 0x1

    #@18
    .line 1037
    const/4 v3, 0x2

    #@19
    iput v3, v2, Landroid/app/IActivityManager$WaitResult;->result:I

    #@1b
    .line 1029
    :cond_0
    add-int/lit8 v1, v1, -0x1

    #@1d
    goto :goto_0

    #@1e
    .line 1040
    .end local v2    # "w":Landroid/app/IActivityManager$WaitResult;
    :cond_1
    if-eqz v0, :cond_2

    #@20
    .line 1041
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@22
    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->notifyAll()V

    #@25
    .line 1027
    :cond_2
    return-void
.end method

.method requestVisibleBehindLocked(Lcom/android/server/am/ActivityRecord;Z)Z
    .locals 9
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "visible"    # Z

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    const/4 v5, 0x0

    #@3
    .line 2866
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@5
    iget-object v3, v6, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@7
    .line 2867
    .local v3, "stack":Lcom/android/server/am/ActivityStack;
    if-nez v3, :cond_0

    #@9
    .line 2870
    return v7

    #@a
    .line 2873
    :cond_0
    if-eqz p2, :cond_1

    #@c
    iget v6, v3, Lcom/android/server/am/ActivityStack;->mStackId:I

    #@e
    invoke-static {v6}, Landroid/app/ActivityManager$StackId;->activitiesCanRequestVisibleBehind(I)Z

    #@11
    move-result v6

    #@12
    if-eqz v6, :cond_3

    #@14
    .line 2880
    :cond_1
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->hasVisibleBehindActivity()Z

    #@17
    move-result v1

    #@18
    .line 2884
    .local v1, "isVisible":Z
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    #@1b
    move-result-object v4

    #@1c
    .line 2885
    .local v4, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v4, :cond_2

    #@1e
    if-ne v4, p1, :cond_4

    #@20
    .line 2887
    :cond_2
    if-eqz p2, :cond_5

    #@22
    .end local p1    # "r":Lcom/android/server/am/ActivityRecord;
    :goto_0
    invoke-virtual {v3, p1}, Lcom/android/server/am/ActivityStack;->setVisibleBehindActivity(Lcom/android/server/am/ActivityRecord;)V

    #@25
    .line 2888
    return v8

    #@26
    .line 2877
    .end local v1    # "isVisible":Z
    .end local v4    # "top":Lcom/android/server/am/ActivityRecord;
    .restart local p1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_3
    return v7

    #@27
    .line 2885
    .restart local v1    # "isVisible":Z
    .restart local v4    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_4
    if-eq p2, v1, :cond_2

    #@29
    .line 2892
    if-eqz p2, :cond_6

    #@2b
    iget-boolean v6, v4, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    #@2d
    if-eqz v6, :cond_6

    #@2f
    .line 2898
    return v7

    #@30
    :cond_5
    move-object p1, v5

    #@31
    .line 2887
    goto :goto_0

    #@32
    .line 2899
    :cond_6
    if-nez p2, :cond_7

    #@34
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->getVisibleBehindActivity()Lcom/android/server/am/ActivityRecord;

    #@37
    move-result-object v6

    #@38
    if-eq v6, p1, :cond_7

    #@3a
    .line 2906
    return v7

    #@3b
    .line 2909
    :cond_7
    if-eqz p2, :cond_8

    #@3d
    move-object v5, p1

    #@3e
    :cond_8
    invoke-virtual {v3, v5}, Lcom/android/server/am/ActivityStack;->setVisibleBehindActivity(Lcom/android/server/am/ActivityRecord;)V

    #@41
    .line 2910
    if-nez p2, :cond_9

    #@43
    .line 2914
    invoke-virtual {v3, p1}, Lcom/android/server/am/ActivityStack;->findNextTranslucentActivity(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    #@46
    move-result-object v2

    #@47
    .line 2915
    .local v2, "next":Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_9

    #@49
    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    #@4c
    move-result v5

    #@4d
    if-eqz v5, :cond_9

    #@4f
    .line 2916
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@51
    iget-object v6, v2, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@53
    invoke-virtual {v5, v6}, Lcom/android/server/am/ActivityManagerService;->convertFromTranslucent(Landroid/os/IBinder;)Z

    #@56
    .line 2919
    .end local v2    # "next":Lcom/android/server/am/ActivityRecord;
    :cond_9
    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@58
    if-eqz v5, :cond_a

    #@5a
    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@5c
    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@5e
    if-eqz v5, :cond_a

    #@60
    .line 2922
    :try_start_0
    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@62
    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@64
    iget-object v6, v4, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@66
    invoke-interface {v5, v6, p2}, Landroid/app/IApplicationThread;->scheduleBackgroundVisibleBehindChanged(Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@69
    .line 2926
    :cond_a
    :goto_1
    return v8

    #@6a
    .line 2923
    :catch_0
    move-exception v0

    #@6b
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method resizeDockedStackLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    .locals 12
    .param p1, "dockedBounds"    # Landroid/graphics/Rect;
    .param p2, "tempDockedTaskBounds"    # Landroid/graphics/Rect;
    .param p3, "tempDockedTaskInsetBounds"    # Landroid/graphics/Rect;
    .param p4, "tempOtherTaskBounds"    # Landroid/graphics/Rect;
    .param p5, "tempOtherTaskInsetBounds"    # Landroid/graphics/Rect;
    .param p6, "preserveWindows"    # Z

    #@0
    .prologue
    .line 2205
    iget-boolean v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mAllowDockedStackResize:Z

    #@2
    if-nez v2, :cond_0

    #@4
    .line 2207
    return-void

    #@5
    .line 2210
    :cond_0
    const/4 v2, 0x3

    #@6
    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    #@9
    move-result-object v11

    #@a
    .line 2211
    .local v11, "stack":Lcom/android/server/am/ActivityStack;
    if-nez v11, :cond_1

    #@c
    .line 2212
    sget-object v2, Lcom/android/server/am/ActivityStackSupervisor;->TAG:Ljava/lang/String;

    #@e
    const-string/jumbo v4, "resizeDockedStackLocked: docked stack not found"

    #@11
    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@14
    .line 2213
    return-void

    #@15
    .line 2216
    :cond_1
    const-string/jumbo v2, "am.resizeDockedStack"

    #@18
    const-wide/16 v4, 0x40

    #@1a
    invoke-static {v4, v5, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@1d
    .line 2217
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@1f
    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    #@22
    .line 2220
    const/4 v2, 0x0

    #@23
    :try_start_0
    iput-boolean v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mAllowDockedStackResize:Z

    #@25
    .line 2221
    invoke-virtual {v11}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    #@28
    move-result-object v10

    #@29
    .line 2222
    .local v10, "r":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {p0, v11, p1, p2, p3}, Lcom/android/server/am/ActivityStackSupervisor;->resizeStackUncheckedLocked(Lcom/android/server/am/ActivityStack;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    #@2c
    .line 2227
    iget-boolean v2, v11, Lcom/android/server/am/ActivityStack;->mFullscreen:Z

    #@2e
    if-nez v2, :cond_4

    #@30
    if-nez p1, :cond_2

    #@32
    invoke-virtual {v11}, Lcom/android/server/am/ActivityStack;->isAttached()Z

    #@35
    move-result v2

    #@36
    if-eqz v2, :cond_4

    #@38
    .line 2240
    :cond_2
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@3a
    .line 2241
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->tempRect:Landroid/graphics/Rect;

    #@3c
    const/4 v5, 0x0

    #@3d
    const/4 v6, 0x1

    #@3e
    .line 2240
    invoke-virtual {v2, v5, v4, v6}, Lcom/android/server/wm/WindowManagerService;->getStackDockedModeBounds(ILandroid/graphics/Rect;Z)V

    #@41
    .line 2242
    const/4 v3, 0x0

    #@42
    .local v3, "i":I
    :goto_0
    const/4 v2, 0x4

    #@43
    if-gt v3, v2, :cond_5

    #@45
    .line 2243
    invoke-static {v3}, Landroid/app/ActivityManager$StackId;->isResizeableByDockedStack(I)Z

    #@48
    move-result v2

    #@49
    if-eqz v2, :cond_3

    #@4b
    invoke-virtual {p0, v3}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    #@4e
    move-result-object v2

    #@4f
    if-eqz v2, :cond_3

    #@51
    .line 2244
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->tempRect:Landroid/graphics/Rect;

    #@53
    .line 2246
    const/4 v8, 0x1

    #@54
    const/4 v9, 0x0

    #@55
    move-object v2, p0

    #@56
    move-object/from16 v5, p4

    #@58
    move-object/from16 v6, p5

    #@5a
    move/from16 v7, p6

    #@5c
    .line 2244
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/am/ActivityStackSupervisor;->resizeStackLocked(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZZ)V

    #@5f
    .line 2242
    :cond_3
    add-int/lit8 v3, v3, 0x1

    #@61
    goto :goto_0

    #@62
    .line 2231
    .end local v3    # "i":I
    :cond_4
    const/4 v2, 0x3

    #@63
    const/4 v4, 0x1

    #@64
    invoke-virtual {p0, v2, v4}, Lcom/android/server/am/ActivityStackSupervisor;->moveTasksToFullscreenStackLocked(IZ)V

    #@67
    .line 2234
    const/4 v10, 0x0

    #@68
    .line 2250
    .end local v10    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_5
    move/from16 v0, p6

    #@6a
    invoke-virtual {v11, v10, v0}, Lcom/android/server/am/ActivityStack;->ensureVisibleActivitiesConfigurationLocked(Lcom/android/server/am/ActivityRecord;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6d
    .line 2252
    const/4 v2, 0x1

    #@6e
    iput-boolean v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mAllowDockedStackResize:Z

    #@70
    .line 2253
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@72
    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    #@75
    .line 2254
    const-wide/16 v4, 0x40

    #@77
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@7a
    .line 2257
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mResizeDockedStackTimeout:Lcom/android/server/am/ResizeDockedStackTimeout;

    #@7c
    .line 2258
    if-nez p2, :cond_6

    #@7e
    .line 2259
    if-eqz p3, :cond_7

    #@80
    .line 2258
    :cond_6
    const/4 v2, 0x1

    #@81
    .line 2257
    :goto_1
    invoke-virtual {v4, p1, v2}, Lcom/android/server/am/ResizeDockedStackTimeout;->notifyResizing(Landroid/graphics/Rect;Z)V

    #@84
    .line 2203
    return-void

    #@85
    .line 2251
    :catchall_0
    move-exception v2

    #@86
    .line 2252
    const/4 v4, 0x1

    #@87
    iput-boolean v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mAllowDockedStackResize:Z

    #@89
    .line 2253
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@8b
    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    #@8e
    .line 2254
    const-wide/16 v4, 0x40

    #@90
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@93
    .line 2251
    throw v2

    #@94
    .line 2260
    :cond_7
    if-nez p4, :cond_6

    #@96
    .line 2261
    if-eqz p5, :cond_8

    #@98
    const/4 v2, 0x1

    #@99
    goto :goto_1

    #@9a
    :cond_8
    const/4 v2, 0x0

    #@9b
    goto :goto_1
.end method

.method resizePinnedStackLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 6
    .param p1, "pinnedBounds"    # Landroid/graphics/Rect;
    .param p2, "tempPinnedTaskBounds"    # Landroid/graphics/Rect;

    #@0
    .prologue
    const-wide/16 v4, 0x40

    #@2
    .line 2265
    const/4 v2, 0x4

    #@3
    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    #@6
    move-result-object v1

    #@7
    .line 2266
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    if-nez v1, :cond_0

    #@9
    .line 2267
    sget-object v2, Lcom/android/server/am/ActivityStackSupervisor;->TAG:Ljava/lang/String;

    #@b
    const-string/jumbo v3, "resizePinnedStackLocked: pinned stack not found"

    #@e
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@11
    .line 2268
    return-void

    #@12
    .line 2270
    :cond_0
    const-string/jumbo v2, "am.resizePinnedStack"

    #@15
    invoke-static {v4, v5, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@18
    .line 2271
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@1a
    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    #@1d
    .line 2273
    :try_start_0
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    #@20
    move-result-object v0

    #@21
    .line 2275
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    const/4 v2, 0x0

    #@22
    .line 2274
    invoke-virtual {p0, v1, p1, p2, v2}, Lcom/android/server/am/ActivityStackSupervisor;->resizeStackUncheckedLocked(Lcom/android/server/am/ActivityStack;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    #@25
    .line 2276
    const/4 v2, 0x0

    #@26
    invoke-virtual {v1, v0, v2}, Lcom/android/server/am/ActivityStack;->ensureVisibleActivitiesConfigurationLocked(Lcom/android/server/am/ActivityRecord;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    .line 2278
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@2b
    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    #@2e
    .line 2279
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@31
    .line 2264
    return-void

    #@32
    .line 2277
    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_0
    move-exception v2

    #@33
    .line 2278
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@35
    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    #@38
    .line 2279
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@3b
    .line 2277
    throw v2
.end method

.method resizeStackLocked(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZZ)V
    .locals 8
    .param p1, "stackId"    # I
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "tempTaskBounds"    # Landroid/graphics/Rect;
    .param p4, "tempTaskInsetBounds"    # Landroid/graphics/Rect;
    .param p5, "preserveWindows"    # Z
    .param p6, "allowResizeInDockedMode"    # Z
    .param p7, "deferResume"    # Z

    #@0
    .prologue
    const/4 v0, 0x3

    #@1
    const-wide/16 v2, 0x40

    #@3
    const/4 v4, 0x0

    #@4
    .line 2024
    if-ne p1, v0, :cond_0

    #@6
    move-object v0, p0

    #@7
    move-object v1, p2

    #@8
    move-object v2, p3

    #@9
    move-object v3, p4

    #@a
    move-object v5, v4

    #@b
    move v6, p5

    #@c
    .line 2025
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ActivityStackSupervisor;->resizeDockedStackLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    #@f
    .line 2027
    return-void

    #@10
    .line 2029
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    #@13
    move-result-object v7

    #@14
    .line 2030
    .local v7, "stack":Lcom/android/server/am/ActivityStack;
    if-nez v7, :cond_1

    #@16
    .line 2031
    sget-object v0, Lcom/android/server/am/ActivityStackSupervisor;->TAG:Ljava/lang/String;

    #@18
    new-instance v1, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v2, "resizeStack: stackId "

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    const-string/jumbo v2, " not found."

    #@2b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v1

    #@33
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@36
    .line 2032
    return-void

    #@37
    .line 2035
    :cond_1
    if-nez p6, :cond_2

    #@39
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    #@3c
    move-result-object v0

    #@3d
    if-eqz v0, :cond_2

    #@3f
    .line 2038
    return-void

    #@40
    .line 2041
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    #@42
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@45
    const-string/jumbo v1, "am.resizeStack_"

    #@48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v0

    #@4c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v0

    #@50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@53
    move-result-object v0

    #@54
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@57
    .line 2042
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@59
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    #@5c
    .line 2044
    :try_start_0
    invoke-virtual {p0, v7, p2, p3, p4}, Lcom/android/server/am/ActivityStackSupervisor;->resizeStackUncheckedLocked(Lcom/android/server/am/ActivityStack;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    #@5f
    .line 2045
    if-nez p7, :cond_3

    #@61
    .line 2047
    invoke-virtual {v7}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    #@64
    move-result-object v0

    #@65
    .line 2046
    invoke-virtual {v7, v0, p5}, Lcom/android/server/am/ActivityStack;->ensureVisibleActivitiesConfigurationLocked(Lcom/android/server/am/ActivityRecord;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@68
    .line 2050
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@6a
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    #@6d
    .line 2051
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    #@70
    .line 2023
    return-void

    #@71
    .line 2049
    :catchall_0
    move-exception v0

    #@72
    .line 2050
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@74
    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    #@77
    .line 2051
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    #@7a
    .line 2049
    throw v0
.end method

.method resizeStackUncheckedLocked(Lcom/android/server/am/ActivityStack;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 11
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "tempTaskBounds"    # Landroid/graphics/Rect;
    .param p4, "tempTaskInsetBounds"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 2082
    invoke-static {p2}, Lcom/android/server/am/TaskRecord;->validateBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    #@3
    move-result-object p2

    #@4
    .line 2084
    invoke-virtual {p1, p2, p3, p4}, Lcom/android/server/am/ActivityStack;->updateBoundsAllowed(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_0

    #@a
    .line 2085
    return-void

    #@b
    .line 2088
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpBounds:Landroid/util/SparseArray;

    #@d
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    #@10
    .line 2089
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpConfigs:Landroid/util/SparseArray;

    #@12
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    #@15
    .line 2090
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpInsetBounds:Landroid/util/SparseArray;

    #@17
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    #@1a
    .line 2091
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    #@1d
    move-result-object v10

    #@1e
    .line 2092
    .local v10, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    if-eqz p3, :cond_3

    #@20
    move-object v9, p3

    #@21
    .line 2093
    .local v9, "taskBounds":Landroid/graphics/Rect;
    :goto_0
    if-eqz p4, :cond_4

    #@23
    move-object v7, p4

    #@24
    .line 2094
    .local v7, "insetBounds":Landroid/graphics/Rect;
    :goto_1
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    #@27
    move-result v0

    #@28
    add-int/lit8 v6, v0, -0x1

    #@2a
    .local v6, "i":I
    :goto_2
    if-ltz v6, :cond_6

    #@2c
    .line 2095
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2f
    move-result-object v8

    #@30
    check-cast v8, Lcom/android/server/am/TaskRecord;

    #@32
    .line 2096
    .local v8, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v8}, Lcom/android/server/am/TaskRecord;->isResizeable()Z

    #@35
    move-result v0

    #@36
    if-eqz v0, :cond_1

    #@38
    .line 2097
    iget v0, p1, Lcom/android/server/am/ActivityStack;->mStackId:I

    #@3a
    const/4 v1, 0x2

    #@3b
    if-ne v0, v1, :cond_5

    #@3d
    .line 2101
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->tempRect2:Landroid/graphics/Rect;

    #@3f
    iget-object v1, v8, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    #@41
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@44
    .line 2102
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->tempRect2:Landroid/graphics/Rect;

    #@46
    invoke-static {v0, p2}, Lcom/android/server/am/ActivityStackSupervisor;->fitWithinBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    #@49
    .line 2103
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->tempRect2:Landroid/graphics/Rect;

    #@4b
    invoke-virtual {v8, v0}, Lcom/android/server/am/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;)Landroid/content/res/Configuration;

    #@4e
    .line 2109
    :cond_1
    :goto_3
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpConfigs:Landroid/util/SparseArray;

    #@50
    iget v1, v8, Lcom/android/server/am/TaskRecord;->taskId:I

    #@52
    iget-object v2, v8, Lcom/android/server/am/TaskRecord;->mOverrideConfig:Landroid/content/res/Configuration;

    #@54
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@57
    .line 2110
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpBounds:Landroid/util/SparseArray;

    #@59
    iget v1, v8, Lcom/android/server/am/TaskRecord;->taskId:I

    #@5b
    iget-object v2, v8, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    #@5d
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@60
    .line 2111
    if-eqz p4, :cond_2

    #@62
    .line 2112
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpInsetBounds:Landroid/util/SparseArray;

    #@64
    iget v1, v8, Lcom/android/server/am/TaskRecord;->taskId:I

    #@66
    invoke-virtual {v0, v1, p4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@69
    .line 2094
    :cond_2
    add-int/lit8 v6, v6, -0x1

    #@6b
    goto :goto_2

    #@6c
    .line 2092
    .end local v6    # "i":I
    .end local v7    # "insetBounds":Landroid/graphics/Rect;
    .end local v8    # "task":Lcom/android/server/am/TaskRecord;
    .end local v9    # "taskBounds":Landroid/graphics/Rect;
    :cond_3
    move-object v9, p2

    #@6d
    .restart local v9    # "taskBounds":Landroid/graphics/Rect;
    goto :goto_0

    #@6e
    .line 2093
    :cond_4
    move-object v7, v9

    #@6f
    .restart local v7    # "insetBounds":Landroid/graphics/Rect;
    goto :goto_1

    #@70
    .line 2105
    .restart local v6    # "i":I
    .restart local v8    # "task":Lcom/android/server/am/TaskRecord;
    :cond_5
    invoke-virtual {v8, v9, v7}, Lcom/android/server/am/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/content/res/Configuration;

    #@73
    goto :goto_3

    #@74
    .line 2117
    .end local v8    # "task":Lcom/android/server/am/TaskRecord;
    :cond_6
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@76
    iget v1, p1, Lcom/android/server/am/ActivityStack;->mStackId:I

    #@78
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->prepareFreezingTaskBounds(I)V

    #@7b
    .line 2118
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@7d
    iget v1, p1, Lcom/android/server/am/ActivityStack;->mStackId:I

    #@7f
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpConfigs:Landroid/util/SparseArray;

    #@81
    .line 2119
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpBounds:Landroid/util/SparseArray;

    #@83
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpInsetBounds:Landroid/util/SparseArray;

    #@85
    move-object v2, p2

    #@86
    .line 2118
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/WindowManagerService;->resizeStack(ILandroid/graphics/Rect;Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/util/SparseArray;)Z

    #@89
    move-result v0

    #@8a
    iput-boolean v0, p1, Lcom/android/server/am/ActivityStack;->mFullscreen:Z

    #@8c
    .line 2120
    invoke-virtual {p1, p2}, Lcom/android/server/am/ActivityStack;->setBounds(Landroid/graphics/Rect;)V

    #@8f
    .line 2081
    return-void
.end method

.method resizeTaskLocked(Lcom/android/server/am/TaskRecord;Landroid/graphics/Rect;IZZ)Z
    .locals 9
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "resizeMode"    # I
    .param p4, "preserveWindow"    # Z
    .param p5, "deferResume"    # Z

    #@0
    .prologue
    .line 2285
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->isResizeable()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 2286
    sget-object v0, Lcom/android/server/am/ActivityStackSupervisor;->TAG:Ljava/lang/String;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "resizeTask: task "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    const-string/jumbo v2, " not resizeable."

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@26
    .line 2287
    const/4 v0, 0x1

    #@27
    return v0

    #@28
    .line 2292
    :cond_0
    and-int/lit8 v0, p3, 0x2

    #@2a
    if-eqz v0, :cond_3

    #@2c
    const/4 v5, 0x1

    #@2d
    .line 2293
    .local v5, "forced":Z
    :goto_0
    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    #@2f
    invoke-static {v0, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@32
    move-result v0

    #@33
    if-eqz v0, :cond_1

    #@35
    if-eqz v5, :cond_4

    #@37
    .line 2297
    :cond_1
    invoke-static {p2}, Lcom/android/server/am/TaskRecord;->validateBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    #@3a
    move-result-object p2

    #@3b
    .line 2299
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@3d
    iget v1, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    #@3f
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->isValidTaskId(I)Z

    #@42
    move-result v0

    #@43
    if-nez v0, :cond_5

    #@45
    .line 2303
    invoke-virtual {p1, p2}, Lcom/android/server/am/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;)Landroid/content/res/Configuration;

    #@48
    .line 2304
    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@4a
    if-eqz v0, :cond_2

    #@4c
    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@4e
    iget v0, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    #@50
    const/4 v1, 0x2

    #@51
    if-eq v0, v1, :cond_2

    #@53
    .line 2306
    const/4 v0, 0x2

    #@54
    invoke-direct {p0, p1, v0}, Lcom/android/server/am/ActivityStackSupervisor;->restoreRecentTaskLocked(Lcom/android/server/am/TaskRecord;I)Z

    #@57
    .line 2308
    :cond_2
    const/4 v0, 0x1

    #@58
    return v0

    #@59
    .line 2292
    .end local v5    # "forced":Z
    :cond_3
    const/4 v5, 0x0

    #@5a
    .restart local v5    # "forced":Z
    goto :goto_0

    #@5b
    .line 2295
    :cond_4
    const/4 v0, 0x1

    #@5c
    return v0

    #@5d
    .line 2315
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    #@5f
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@62
    const-string/jumbo v1, "am.resizeTask_"

    #@65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v0

    #@69
    iget v1, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    #@6b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v0

    #@6f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@72
    move-result-object v0

    #@73
    const-wide/16 v2, 0x40

    #@75
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@78
    .line 2317
    invoke-virtual {p1, p2}, Lcom/android/server/am/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;)Landroid/content/res/Configuration;

    #@7b
    move-result-object v6

    #@7c
    .line 2321
    .local v6, "overrideConfig":Landroid/content/res/Configuration;
    const/4 v4, 0x1

    #@7d
    .line 2322
    .local v4, "kept":Z
    if-eqz v6, :cond_6

    #@7f
    .line 2323
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    #@82
    move-result-object v7

    #@83
    .line 2324
    .local v7, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v7, :cond_6

    #@85
    .line 2325
    iget-object v8, p1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@87
    .line 2326
    .local v8, "stack":Lcom/android/server/am/ActivityStack;
    const/4 v0, 0x0

    #@88
    invoke-virtual {v8, v7, v0, p4}, Lcom/android/server/am/ActivityStack;->ensureActivityConfigurationLocked(Lcom/android/server/am/ActivityRecord;IZ)Z

    #@8b
    move-result v4

    #@8c
    .line 2328
    .local v4, "kept":Z
    if-nez p5, :cond_6

    #@8e
    .line 2331
    const/4 v0, 0x0

    #@8f
    const/4 v1, 0x0

    #@90
    invoke-virtual {p0, v7, v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    #@93
    .line 2332
    if-nez v4, :cond_6

    #@95
    .line 2333
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    #@98
    .line 2338
    .end local v4    # "kept":Z
    .end local v7    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v8    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_6
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@9a
    iget v1, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    #@9c
    iget-object v2, p1, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    #@9e
    iget-object v3, p1, Lcom/android/server/am/TaskRecord;->mOverrideConfig:Landroid/content/res/Configuration;

    #@a0
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/WindowManagerService;->resizeTask(ILandroid/graphics/Rect;Landroid/content/res/Configuration;ZZ)V

    #@a3
    .line 2340
    const-wide/16 v0, 0x40

    #@a5
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    #@a8
    .line 2341
    return v4
.end method

.method resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "rInfo"    # Landroid/content/pm/ResolveInfo;
    .param p3, "startFlags"    # I
    .param p4, "profilerInfo"    # Landroid/app/ProfilerInfo;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    .line 1129
    if-eqz p2, :cond_0

    #@4
    iget-object v0, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@6
    .line 1130
    .local v0, "aInfo":Landroid/content/pm/ActivityInfo;
    :cond_0
    if-eqz v0, :cond_4

    #@8
    .line 1135
    new-instance v1, Landroid/content/ComponentName;

    #@a
    .line 1136
    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@c
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@e
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@10
    .line 1135
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@13
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@16
    .line 1139
    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    #@18
    const-string/jumbo v2, "system"

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1e
    move-result v1

    #@1f
    if-nez v1, :cond_4

    #@21
    .line 1140
    and-int/lit8 v1, p3, 0x2

    #@23
    if-eqz v1, :cond_1

    #@25
    .line 1141
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@27
    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    #@29
    const/4 v3, 0x1

    #@2a
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/am/ActivityManagerService;->setDebugApp(Ljava/lang/String;ZZ)V

    #@2d
    .line 1144
    :cond_1
    and-int/lit8 v1, p3, 0x8

    #@2f
    if-eqz v1, :cond_2

    #@31
    .line 1145
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@33
    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@35
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    #@37
    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/ActivityManagerService;->setNativeDebuggingAppLocked(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    #@3a
    .line 1148
    :cond_2
    and-int/lit8 v1, p3, 0x4

    #@3c
    if-eqz v1, :cond_3

    #@3e
    .line 1149
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@40
    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@42
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    #@44
    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/ActivityManagerService;->setTrackAllocationApp(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    #@47
    .line 1152
    :cond_3
    if-eqz p4, :cond_4

    #@49
    .line 1153
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@4b
    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@4d
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    #@4f
    invoke-virtual {v1, v2, v3, p4}, Lcom/android/server/am/ActivityManagerService;->setProfileApp(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Landroid/app/ProfilerInfo;)V

    #@52
    .line 1157
    :cond_4
    return-object v0
.end method

.method resolveActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/app/ProfilerInfo;I)Landroid/content/pm/ActivityInfo;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "startFlags"    # I
    .param p4, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p5, "userId"    # I

    #@0
    .prologue
    .line 1176
    invoke-virtual {p0, p1, p2, p5}, Lcom/android/server/am/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;

    #@3
    move-result-object v0

    #@4
    .line 1177
    .local v0, "rInfo":Landroid/content/pm/ResolveInfo;
    invoke-virtual {p0, p1, v0, p3, p4}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    #@7
    move-result-object v1

    #@8
    return-object v1
.end method

.method resolveIntent(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 1161
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/am/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "flags"    # I

    #@0
    .prologue
    .line 1166
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@3
    move-result-object v1

    #@4
    .line 1167
    const/high16 v2, 0x10000

    #@6
    or-int/2addr v2, p4

    #@7
    or-int/lit16 v2, v2, 0x400

    #@9
    .line 1166
    invoke-interface {v1, p1, p2, v2, p3}, Landroid/content/pm/IPackageManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    move-result-object v1

    #@d
    return-object v1

    #@e
    .line 1169
    :catch_0
    move-exception v0

    #@f
    .line 1171
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@10
    return-object v1
.end method

.method resumeFocusedStackTopActivityLocked()Z
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1810
    invoke-virtual {p0, v0, v0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method resumeFocusedStackTopActivityLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Z
    .locals 4
    .param p1, "targetStack"    # Lcom/android/server/am/ActivityStack;
    .param p2, "target"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "targetOptions"    # Landroid/app/ActivityOptions;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1815
    if-eqz p1, :cond_0

    #@3
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusedStack(Lcom/android/server/am/ActivityStack;)Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 1816
    invoke-virtual {p1, p2, p3}, Lcom/android/server/am/ActivityStack;->resumeTopActivityUncheckedLocked(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Z

    #@c
    move-result v1

    #@d
    return v1

    #@e
    .line 1818
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    #@10
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    #@13
    move-result-object v0

    #@14
    .line 1819
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_1

    #@16
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    #@18
    sget-object v2, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    #@1a
    if-eq v1, v2, :cond_2

    #@1c
    .line 1820
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    #@1e
    invoke-virtual {v1, v3, v3}, Lcom/android/server/am/ActivityStack;->resumeTopActivityUncheckedLocked(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Z

    #@21
    .line 1822
    :cond_2
    const/4 v1, 0x0

    #@22
    return v1
.end method

.method resumeHomeStackTask(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z
    .locals 5
    .param p1, "homeStackTaskType"    # I
    .param p2, "prev"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 651
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@4
    iget-boolean v2, v2, Lcom/android/server/am/ActivityManagerService;->mBooting:Z

    #@6
    if-nez v2, :cond_0

    #@8
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@a
    iget-boolean v2, v2, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    #@c
    if-eqz v2, :cond_1

    #@e
    .line 656
    :cond_0
    const/4 v2, 0x2

    #@f
    if-ne p1, v2, :cond_2

    #@11
    .line 657
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@13
    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService;->showRecentApps(Z)V

    #@16
    .line 658
    return v3

    #@17
    .line 653
    :cond_1
    return v3

    #@18
    .line 661
    :cond_2
    if-eqz p2, :cond_3

    #@1a
    .line 662
    iget-object v2, p2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@1c
    invoke-virtual {v2, v3}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    #@1f
    .line 665
    :cond_3
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    #@21
    invoke-virtual {v2, p1}, Lcom/android/server/am/ActivityStack;->moveHomeStackTaskToTop(I)V

    #@24
    .line 666
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getHomeActivity()Lcom/android/server/am/ActivityRecord;

    #@27
    move-result-object v1

    #@28
    .line 667
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    new-instance v2, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v2

    #@31
    const-string/jumbo v3, " resumeHomeStackTask"

    #@34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v2

    #@38
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v0

    #@3c
    .line 670
    .local v0, "myReason":Ljava/lang/String;
    if-eqz v1, :cond_4

    #@3e
    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    #@40
    if-eqz v2, :cond_5

    #@42
    .line 674
    :cond_4
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@44
    iget v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurrentUser:I

    #@46
    invoke-virtual {v2, v3, v0}, Lcom/android/server/am/ActivityManagerService;->startHomeActivityLocked(ILjava/lang/String;)Z

    #@49
    move-result v2

    #@4a
    return v2

    #@4b
    .line 671
    :cond_5
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@4d
    invoke-virtual {v2, v1, v0}, Lcom/android/server/am/ActivityManagerService;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z

    #@50
    .line 672
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    #@52
    invoke-virtual {p0, v2, p2, v4}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Z

    #@55
    move-result v2

    #@56
    return v2
.end method

.method resumedAppLocked()Lcom/android/server/am/ActivityRecord;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 832
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    #@3
    .line 833
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    if-nez v1, :cond_0

    #@5
    .line 834
    return-object v2

    #@6
    .line 836
    :cond_0
    iget-object v0, v1, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    #@8
    .line 837
    .local v0, "resumedActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_1

    #@a
    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@c
    if-nez v2, :cond_3

    #@e
    .line 838
    :cond_1
    iget-object v0, v1, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    #@10
    .line 839
    if-eqz v0, :cond_2

    #@12
    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@14
    if-nez v2, :cond_3

    #@16
    .line 840
    :cond_2
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    #@19
    move-result-object v0

    #@1a
    .line 843
    :cond_3
    return-object v0
.end method

.method scheduleDestroyAllActivities(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .locals 6
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2995
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    #@5
    move-result v5

    #@6
    add-int/lit8 v0, v5, -0x1

    #@8
    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_1

    #@a
    .line 2996
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    #@c
    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@f
    move-result-object v5

    #@10
    check-cast v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    #@12
    iget-object v4, v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    #@14
    .line 2997
    .local v4, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@17
    move-result v1

    #@18
    .line 2998
    .local v1, "numStacks":I
    const/4 v3, 0x0

    #@19
    .local v3, "stackNdx":I
    :goto_1
    if-ge v3, v1, :cond_0

    #@1b
    .line 2999
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1e
    move-result-object v2

    #@1f
    check-cast v2, Lcom/android/server/am/ActivityStack;

    #@21
    .line 3000
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v2, p1, p2}, Lcom/android/server/am/ActivityStack;->scheduleDestroyActivities(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    #@24
    .line 2998
    add-int/lit8 v3, v3, 0x1

    #@26
    goto :goto_1

    #@27
    .line 2995
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@29
    goto :goto_0

    #@2a
    .line 2994
    .end local v1    # "numStacks":I
    .end local v3    # "stackNdx":I
    .end local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_1
    return-void
.end method

.method final scheduleIdleLocked()V
    .locals 2

    #@0
    .prologue
    .line 3384
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    #@2
    const/16 v1, 0x65

    #@4
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessage(I)Z

    #@7
    .line 3383
    return-void
.end method

.method scheduleIdleTimeoutLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 4
    .param p1, "next"    # Lcom/android/server/am/ActivityRecord;

    #@0
    .prologue
    .line 3379
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    #@2
    const/16 v2, 0x64

    #@4
    invoke-virtual {v1, v2, p1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@7
    move-result-object v0

    #@8
    .line 3380
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    #@a
    const-wide/16 v2, 0x2710

    #@c
    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@f
    .line 3376
    return-void
.end method

.method scheduleLaunchTaskBehindComplete(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 2949
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    #@2
    const/16 v1, 0x70

    #@4
    invoke-virtual {v0, v1, p1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@b
    .line 2948
    return-void
.end method

.method scheduleReportMultiWindowModeChanged(Lcom/android/server/am/TaskRecord;)V
    .locals 4
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    #@0
    .prologue
    const/16 v3, 0x72

    #@2
    .line 3752
    iget-object v2, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@7
    move-result v2

    #@8
    add-int/lit8 v0, v2, -0x1

    #@a
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    #@c
    .line 3753
    iget-object v2, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    check-cast v1, Lcom/android/server/am/ActivityRecord;

    #@14
    .line 3754
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@16
    if-eqz v2, :cond_0

    #@18
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@1a
    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@1c
    if-eqz v2, :cond_0

    #@1e
    .line 3755
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mMultiWindowModeChangedActivities:Ljava/util/ArrayList;

    #@20
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@23
    .line 3752
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@25
    goto :goto_0

    #@26
    .line 3759
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    #@28
    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->hasMessages(I)Z

    #@2b
    move-result v2

    #@2c
    if-nez v2, :cond_2

    #@2e
    .line 3760
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    #@30
    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessage(I)Z

    #@33
    .line 3751
    :cond_2
    return-void
.end method

.method scheduleReportPictureInPictureModeChangedIfNeeded(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityStack;)V
    .locals 6
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "prevStack"    # Lcom/android/server/am/ActivityStack;

    #@0
    .prologue
    const/16 v5, 0x73

    #@2
    const/4 v4, 0x4

    #@3
    .line 3765
    iget-object v2, p1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@5
    .line 3766
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz p2, :cond_0

    #@7
    if-ne p2, v2, :cond_1

    #@9
    .line 3768
    :cond_0
    return-void

    #@a
    .line 3767
    :cond_1
    iget v3, p2, Lcom/android/server/am/ActivityStack;->mStackId:I

    #@c
    if-eq v3, v4, :cond_2

    #@e
    iget v3, v2, Lcom/android/server/am/ActivityStack;->mStackId:I

    #@10
    if-ne v3, v4, :cond_0

    #@12
    .line 3771
    :cond_2
    iget-object v3, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@14
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@17
    move-result v3

    #@18
    add-int/lit8 v0, v3, -0x1

    #@1a
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_4

    #@1c
    .line 3772
    iget-object v3, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@1e
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@21
    move-result-object v1

    #@22
    check-cast v1, Lcom/android/server/am/ActivityRecord;

    #@24
    .line 3773
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v3, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@26
    if-eqz v3, :cond_3

    #@28
    iget-object v3, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@2a
    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@2c
    if-eqz v3, :cond_3

    #@2e
    .line 3774
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPipModeChangedActivities:Ljava/util/ArrayList;

    #@30
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@33
    .line 3771
    :cond_3
    add-int/lit8 v0, v0, -0x1

    #@35
    goto :goto_0

    #@36
    .line 3778
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_4
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    #@38
    invoke-virtual {v3, v5}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->hasMessages(I)Z

    #@3b
    move-result v3

    #@3c
    if-nez v3, :cond_5

    #@3e
    .line 3779
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    #@40
    invoke-virtual {v3, v5}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessage(I)Z

    #@43
    .line 3764
    :cond_5
    return-void
.end method

.method final scheduleResumeTopActivities()V
    .locals 2

    #@0
    .prologue
    const/16 v1, 0x66

    #@2
    .line 3394
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    #@4
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->hasMessages(I)Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_0

    #@a
    .line 3395
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    #@c
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessage(I)Z

    #@f
    .line 3393
    :cond_0
    return-void
.end method

.method final scheduleSleepTimeout()V
    .locals 4

    #@0
    .prologue
    .line 3405
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->removeSleepTimeouts()V

    #@3
    .line 3406
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    #@5
    const-wide/16 v2, 0x1388

    #@7
    const/16 v1, 0x67

    #@9
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessageDelayed(IJ)Z

    #@c
    .line 3404
    return-void
.end method

.method sendWaitingVisibleReportLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 9
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 1009
    const/4 v0, 0x0

    #@2
    .line 1010
    .local v0, "changed":Z
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingActivityVisible:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@7
    move-result v3

    #@8
    add-int/lit8 v1, v3, -0x1

    #@a
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    #@c
    .line 1011
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingActivityVisible:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v2

    #@12
    check-cast v2, Landroid/app/IActivityManager$WaitResult;

    #@14
    .line 1012
    .local v2, "w":Landroid/app/IActivityManager$WaitResult;
    iget-object v3, v2, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;

    #@16
    if-nez v3, :cond_1

    #@18
    .line 1013
    const/4 v0, 0x1

    #@19
    .line 1014
    iput-boolean v8, v2, Landroid/app/IActivityManager$WaitResult;->timeout:Z

    #@1b
    .line 1015
    if-eqz p1, :cond_0

    #@1d
    .line 1016
    new-instance v3, Landroid/content/ComponentName;

    #@1f
    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@21
    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@23
    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@25
    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@27
    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@2a
    iput-object v3, v2, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;

    #@2c
    .line 1018
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@2f
    move-result-wide v4

    #@30
    iget-wide v6, v2, Landroid/app/IActivityManager$WaitResult;->thisTime:J

    #@32
    sub-long/2addr v4, v6

    #@33
    iput-wide v4, v2, Landroid/app/IActivityManager$WaitResult;->totalTime:J

    #@35
    .line 1019
    iget-wide v4, v2, Landroid/app/IActivityManager$WaitResult;->totalTime:J

    #@37
    iput-wide v4, v2, Landroid/app/IActivityManager$WaitResult;->thisTime:J

    #@39
    .line 1010
    :cond_1
    add-int/lit8 v1, v1, -0x1

    #@3b
    goto :goto_0

    #@3c
    .line 1022
    .end local v2    # "w":Landroid/app/IActivityManager$WaitResult;
    :cond_2
    if-eqz v0, :cond_3

    #@3e
    .line 1023
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@40
    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->notifyAll()V

    #@43
    .line 1008
    :cond_3
    return-void
.end method

.method setDockedStackMinimized(Z)V
    .locals 4
    .param p1, "minimized"    # Z

    #@0
    .prologue
    .line 3784
    iput-boolean p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mIsDockMinimized:Z

    #@2
    .line 3785
    if-eqz p1, :cond_0

    #@4
    .line 3787
    return-void

    #@5
    .line 3789
    :cond_0
    const/4 v2, 0x3

    #@6
    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    #@9
    move-result-object v0

    #@a
    .line 3790
    .local v0, "dockedStack":Lcom/android/server/am/ActivityStack;
    if-nez v0, :cond_1

    #@c
    .line 3791
    return-void

    #@d
    .line 3793
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    #@10
    move-result-object v1

    #@11
    .line 3794
    .local v1, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_2

    #@13
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@15
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    #@17
    iget v3, v1, Lcom/android/server/am/ActivityRecord;->userId:I

    #@19
    invoke-virtual {v2, v3}, Lcom/android/server/am/UserController;->shouldConfirmCredentials(I)Z

    #@1c
    move-result v2

    #@1d
    if-eqz v2, :cond_2

    #@1f
    .line 3795
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@21
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mActivityStarter:Lcom/android/server/am/ActivityStarter;

    #@23
    iget v3, v1, Lcom/android/server/am/ActivityRecord;->userId:I

    #@25
    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityStarter;->showConfirmDeviceCredential(I)V

    #@28
    .line 3783
    :cond_2
    return-void
.end method

.method setFocusStackUnchecked(Ljava/lang/String;Lcom/android/server/am/ActivityStack;)V
    .locals 5
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "focusCandidate"    # Lcom/android/server/am/ActivityStack;

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    .line 601
    invoke-virtual {p2}, Lcom/android/server/am/ActivityStack;->isFocusable()Z

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_0

    #@7
    .line 603
    invoke-virtual {p2}, Lcom/android/server/am/ActivityStack;->getNextFocusableStackLocked()Lcom/android/server/am/ActivityStack;

    #@a
    move-result-object p2

    #@b
    .line 606
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    #@d
    if-eq p2, v1, :cond_1

    #@f
    .line 607
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    #@11
    iput-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLastFocusedStack:Lcom/android/server/am/ActivityStack;

    #@13
    .line 608
    iput-object p2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    #@15
    .line 611
    iget v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurrentUser:I

    #@17
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    #@19
    if-nez v1, :cond_4

    #@1b
    move v1, v2

    #@1c
    .line 612
    :goto_0
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLastFocusedStack:Lcom/android/server/am/ActivityStack;

    #@1e
    if-nez v4, :cond_5

    #@20
    .line 610
    :goto_1
    invoke-static {v3, v1, v2, p1}, Lcom/android/server/am/EventLogTags;->writeAmFocusedStack(IIILjava/lang/String;)V

    #@23
    .line 615
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    #@26
    move-result-object v0

    #@27
    .line 616
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@29
    iget-boolean v1, v1, Lcom/android/server/am/ActivityManagerService;->mDoingSetFocusedActivity:Z

    #@2b
    if-nez v1, :cond_2

    #@2d
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@2f
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mFocusedActivity:Lcom/android/server/am/ActivityRecord;

    #@31
    if-eq v1, v0, :cond_2

    #@33
    .line 619
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@35
    new-instance v2, Ljava/lang/StringBuilder;

    #@37
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@3a
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v2

    #@3e
    const-string/jumbo v3, " setFocusStack"

    #@41
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v2

    #@45
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v2

    #@49
    invoke-virtual {v1, v0, v2}, Lcom/android/server/am/ActivityManagerService;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z

    #@4c
    .line 622
    :cond_2
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@4e
    iget-boolean v1, v1, Lcom/android/server/am/ActivityManagerService;->mBooting:Z

    #@50
    if-nez v1, :cond_6

    #@52
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@54
    iget-boolean v1, v1, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    #@56
    if-eqz v1, :cond_6

    #@58
    .line 600
    :cond_3
    :goto_2
    return-void

    #@59
    .line 611
    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_4
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    #@5b
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->getStackId()I

    #@5e
    move-result v1

    #@5f
    goto :goto_0

    #@60
    .line 612
    :cond_5
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLastFocusedStack:Lcom/android/server/am/ActivityStack;

    #@62
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->getStackId()I

    #@65
    move-result v2

    #@66
    goto :goto_1

    #@67
    .line 623
    .restart local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_6
    if-eqz v0, :cond_3

    #@69
    iget-boolean v1, v0, Lcom/android/server/am/ActivityRecord;->idle:Z

    #@6b
    if-eqz v1, :cond_3

    #@6d
    .line 624
    invoke-direct {p0}, Lcom/android/server/am/ActivityStackSupervisor;->checkFinishBootingLocked()Z

    #@70
    goto :goto_2
.end method

.method setLaunchSource(I)V
    .locals 2
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 1576
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    #@2
    new-instance v1, Landroid/os/WorkSource;

    #@4
    invoke-direct {v1, p1}, Landroid/os/WorkSource;-><init>(I)V

    #@7
    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    #@a
    .line 1575
    return-void
.end method

.method setLockTaskModeLocked(Lcom/android/server/am/TaskRecord;ILjava/lang/String;Z)V
    .locals 8
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "lockTaskModeState"    # I
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "andResume"    # Z

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v1, -0x1

    #@2
    const/4 v3, 0x0

    #@3
    const/4 v2, 0x0

    #@4
    .line 3608
    if-nez p1, :cond_1

    #@6
    .line 3610
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getLockedTaskLocked()Lcom/android/server/am/TaskRecord;

    #@9
    move-result-object v7

    #@a
    .line 3611
    .local v7, "lockedTask":Lcom/android/server/am/TaskRecord;
    if-eqz v7, :cond_0

    #@c
    .line 3612
    invoke-virtual {p0, v7}, Lcom/android/server/am/ActivityStackSupervisor;->removeLockedTaskLocked(Lcom/android/server/am/TaskRecord;)V

    #@f
    .line 3613
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeTasks:Ljava/util/ArrayList;

    #@11
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    #@14
    move-result v0

    #@15
    if-nez v0, :cond_0

    #@17
    .line 3617
    invoke-virtual {v7}, Lcom/android/server/am/TaskRecord;->performClearTaskLocked()V

    #@1a
    .line 3618
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    #@1d
    .line 3619
    return-void

    #@1e
    .line 3624
    :cond_0
    return-void

    #@1f
    .line 3628
    .end local v7    # "lockedTask":Lcom/android/server/am/TaskRecord;
    :cond_1
    iget v0, p1, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    #@21
    if-nez v0, :cond_2

    #@23
    .line 3631
    return-void

    #@24
    .line 3633
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->isLockTaskModeViolation(Lcom/android/server/am/TaskRecord;)Z

    #@27
    move-result v0

    #@28
    if-eqz v0, :cond_3

    #@2a
    .line 3634
    sget-object v0, Lcom/android/server/am/ActivityStackSupervisor;->TAG_LOCKTASK:Ljava/lang/String;

    #@2c
    const-string/jumbo v1, "setLockTaskMode: Attempt to start an unauthorized lock task."

    #@2f
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@32
    .line 3635
    return-void

    #@33
    .line 3638
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeTasks:Ljava/util/ArrayList;

    #@35
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    #@38
    move-result v0

    #@39
    if-eqz v0, :cond_4

    #@3b
    .line 3640
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    #@3e
    move-result-object v6

    #@3f
    .line 3641
    .local v6, "lockTaskMsg":Landroid/os/Message;
    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    #@41
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@44
    move-result-object v0

    #@45
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@48
    move-result-object v0

    #@49
    iput-object v0, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@4b
    .line 3642
    iget v0, p1, Lcom/android/server/am/TaskRecord;->userId:I

    #@4d
    iput v0, v6, Landroid/os/Message;->arg1:I

    #@4f
    .line 3643
    const/16 v0, 0x6d

    #@51
    iput v0, v6, Landroid/os/Message;->what:I

    #@53
    .line 3644
    iput p2, v6, Landroid/os/Message;->arg2:I

    #@55
    .line 3645
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    #@57
    invoke-virtual {v0, v6}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendMessage(Landroid/os/Message;)Z

    #@5a
    .line 3650
    .end local v6    # "lockTaskMsg":Landroid/os/Message;
    :cond_4
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeTasks:Ljava/util/ArrayList;

    #@5c
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@5f
    .line 3651
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeTasks:Ljava/util/ArrayList;

    #@61
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@64
    .line 3653
    iget v0, p1, Lcom/android/server/am/TaskRecord;->mLockTaskUid:I

    #@66
    if-ne v0, v1, :cond_5

    #@68
    .line 3654
    iget v0, p1, Lcom/android/server/am/TaskRecord;->effectiveUid:I

    #@6a
    iput v0, p1, Lcom/android/server/am/TaskRecord;->mLockTaskUid:I

    #@6c
    .line 3657
    :cond_5
    if-eqz p4, :cond_8

    #@6e
    .line 3659
    if-eqz p2, :cond_7

    #@70
    :goto_0
    move-object v0, p0

    #@71
    move-object v1, p1

    #@72
    move-object v4, p3

    #@73
    .line 3658
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStackSupervisor;->findTaskToMoveToFrontLocked(Lcom/android/server/am/TaskRecord;ILandroid/app/ActivityOptions;Ljava/lang/String;Z)V

    #@76
    .line 3660
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    #@79
    .line 3607
    :cond_6
    :goto_1
    return-void

    #@7a
    :cond_7
    move v5, v2

    #@7b
    .line 3659
    goto :goto_0

    #@7c
    .line 3661
    :cond_8
    if-eqz p2, :cond_6

    #@7e
    .line 3662
    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@80
    iget v0, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    #@82
    invoke-virtual {p0, p1, v1, v0, v5}, Lcom/android/server/am/ActivityStackSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/am/TaskRecord;IIZ)V

    #@85
    goto :goto_1
.end method

.method setNextTaskIdForUserLocked(II)V
    .locals 3
    .param p1, "taskId"    # I
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 799
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurTaskIdForUser:Landroid/util/SparseIntArray;

    #@2
    const/4 v2, -0x1

    #@3
    invoke-virtual {v1, p2, v2}, Landroid/util/SparseIntArray;->get(II)I

    #@6
    move-result v0

    #@7
    .line 800
    .local v0, "currentTaskId":I
    if-le p1, v0, :cond_0

    #@9
    .line 801
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurTaskIdForUser:Landroid/util/SparseIntArray;

    #@b
    invoke-virtual {v1, p2, p1}, Landroid/util/SparseIntArray;->put(II)V

    #@e
    .line 798
    :cond_0
    return-void
.end method

.method setRecentTasks(Lcom/android/server/am/RecentTasks;)V
    .locals 0
    .param p1, "recentTasks"    # Lcom/android/server/am/RecentTasks;

    #@0
    .prologue
    .line 493
    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    #@2
    .line 492
    return-void
.end method

.method setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
    .locals 8
    .param p1, "wm"    # Lcom/android/server/wm/WindowManagerService;

    #@0
    .prologue
    .line 536
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@2
    monitor-enter v5

    #@3
    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@6
    .line 537
    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@8
    .line 540
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@a
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    #@c
    const-string/jumbo v6, "display"

    #@f
    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@12
    move-result-object v4

    #@13
    check-cast v4, Landroid/hardware/display/DisplayManager;

    #@15
    .line 539
    iput-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    #@17
    .line 541
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    #@19
    const/4 v6, 0x0

    #@1a
    invoke-virtual {v4, p0, v6}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    #@1d
    .line 543
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    #@1f
    invoke-virtual {v4}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    #@22
    move-result-object v3

    #@23
    .line 544
    .local v3, "displays":[Landroid/view/Display;
    array-length v4, v3

    #@24
    add-int/lit8 v2, v4, -0x1

    #@26
    .local v2, "displayNdx":I
    :goto_0
    if-ltz v2, :cond_1

    #@28
    .line 545
    aget-object v4, v3, v2

    #@2a
    invoke-virtual {v4}, Landroid/view/Display;->getDisplayId()I

    #@2d
    move-result v1

    #@2e
    .line 546
    .local v1, "displayId":I
    new-instance v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    #@30
    invoke-direct {v0, p0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;-><init>(Lcom/android/server/am/ActivityStackSupervisor;I)V

    #@33
    .line 547
    .local v0, "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplay:Landroid/view/Display;

    #@35
    if-nez v4, :cond_0

    #@37
    .line 548
    new-instance v4, Ljava/lang/IllegalStateException;

    #@39
    const-string/jumbo v6, "Default Display does not exist"

    #@3c
    invoke-direct {v4, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@3f
    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@40
    .line 536
    .end local v0    # "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    .end local v1    # "displayId":I
    .end local v2    # "displayNdx":I
    .end local v3    # "displays":[Landroid/view/Display;
    :catchall_0
    move-exception v4

    #@41
    monitor-exit v5

    #@42
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@45
    throw v4

    #@46
    .line 550
    .restart local v0    # "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    .restart local v1    # "displayId":I
    .restart local v2    # "displayNdx":I
    .restart local v3    # "displays":[Landroid/view/Display;
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    #@48
    invoke-virtual {v4, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@4b
    .line 551
    invoke-direct {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->calculateDefaultMinimalSizeOfResizeableTasks(Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;)V

    #@4e
    .line 544
    add-int/lit8 v2, v2, -0x1

    #@50
    goto :goto_0

    #@51
    .line 555
    .end local v0    # "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    .end local v1    # "displayId":I
    :cond_1
    const/4 v4, 0x0

    #@52
    const/4 v6, 0x1

    #@53
    const/4 v7, 0x1

    #@54
    invoke-virtual {p0, v4, v6, v7}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(IZZ)Lcom/android/server/am/ActivityStack;

    #@57
    move-result-object v4

    #@58
    .line 554
    iput-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLastFocusedStack:Lcom/android/server/am/ActivityStack;

    #@5a
    iput-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    #@5c
    iput-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    #@5e
    .line 557
    const-class v4, Landroid/hardware/input/InputManagerInternal;

    #@60
    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    #@63
    move-result-object v4

    #@64
    check-cast v4, Landroid/hardware/input/InputManagerInternal;

    #@66
    iput-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@68
    monitor-exit v5

    #@69
    .line 536
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@6c
    .line 535
    return-void
.end method

.method showLockTaskEscapeMessageLocked(Lcom/android/server/am/TaskRecord;)V
    .locals 2
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    #@0
    .prologue
    .line 3601
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeTasks:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 3602
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    #@a
    const/16 v1, 0x71

    #@c
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessage(I)Z

    #@f
    .line 3600
    :cond_0
    return-void
.end method

.method showLockTaskToast()V
    .locals 2

    #@0
    .prologue
    .line 3595
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskNotify:Lcom/android/server/am/LockTaskNotify;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 3596
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskNotify:Lcom/android/server/am/LockTaskNotify;

    #@6
    iget v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeState:I

    #@8
    invoke-virtual {v0, v1}, Lcom/android/server/am/LockTaskNotify;->showToast(I)V

    #@b
    .line 3594
    :cond_0
    return-void
.end method

.method shutdownLocked(I)Z
    .locals 14
    .param p1, "timeout"    # I

    #@0
    .prologue
    .line 2730
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->goingToSleepLocked()V

    #@3
    .line 2732
    const/4 v7, 0x0

    #@4
    .line 2733
    .local v7, "timedout":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@7
    move-result-wide v10

    #@8
    int-to-long v12, p1

    #@9
    add-long v4, v10, v12

    #@b
    .line 2735
    .local v4, "endTime":J
    :goto_0
    const/4 v0, 0x0

    #@c
    .line 2736
    .local v0, "cantShutdown":Z
    iget-object v10, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    #@e
    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    #@11
    move-result v10

    #@12
    add-int/lit8 v1, v10, -0x1

    #@14
    .end local v0    # "cantShutdown":Z
    .local v1, "displayNdx":I
    :goto_1
    if-ltz v1, :cond_1

    #@16
    .line 2737
    iget-object v10, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    #@18
    invoke-virtual {v10, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@1b
    move-result-object v10

    #@1c
    check-cast v10, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    #@1e
    iget-object v6, v10, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    #@20
    .line 2738
    .local v6, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@23
    move-result v10

    #@24
    add-int/lit8 v3, v10, -0x1

    #@26
    .local v3, "stackNdx":I
    :goto_2
    if-ltz v3, :cond_0

    #@28
    .line 2739
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2b
    move-result-object v10

    #@2c
    check-cast v10, Lcom/android/server/am/ActivityStack;

    #@2e
    invoke-virtual {v10}, Lcom/android/server/am/ActivityStack;->checkReadyForSleepLocked()Z

    #@31
    move-result v10

    #@32
    or-int/2addr v0, v10

    #@33
    .line 2738
    .local v0, "cantShutdown":Z
    add-int/lit8 v3, v3, -0x1

    #@35
    goto :goto_2

    #@36
    .line 2736
    .end local v0    # "cantShutdown":Z
    :cond_0
    add-int/lit8 v1, v1, -0x1

    #@38
    goto :goto_1

    #@39
    .line 2742
    .end local v3    # "stackNdx":I
    .end local v6    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_1
    if-eqz v0, :cond_3

    #@3b
    .line 2743
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@3e
    move-result-wide v10

    #@3f
    sub-long v8, v4, v10

    #@41
    .line 2744
    .local v8, "timeRemaining":J
    const-wide/16 v10, 0x0

    #@43
    cmp-long v10, v8, v10

    #@45
    if-lez v10, :cond_2

    #@47
    .line 2746
    :try_start_0
    iget-object v10, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@49
    invoke-virtual {v10, v8, v9}, Lcom/android/server/am/ActivityManagerService;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    #@4c
    goto :goto_0

    #@4d
    .line 2747
    :catch_0
    move-exception v2

    #@4e
    .local v2, "e":Ljava/lang/InterruptedException;
    goto :goto_0

    #@4f
    .line 2750
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :cond_2
    sget-object v10, Lcom/android/server/am/ActivityStackSupervisor;->TAG:Ljava/lang/String;

    #@51
    const-string/jumbo v11, "Activity manager shutdown timed out"

    #@54
    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@57
    .line 2751
    const/4 v7, 0x1

    #@58
    .line 2760
    .end local v8    # "timeRemaining":J
    :cond_3
    const/4 v10, 0x1

    #@59
    iput-boolean v10, p0, Lcom/android/server/am/ActivityStackSupervisor;->mSleepTimeout:Z

    #@5b
    .line 2761
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->checkReadyForSleepLocked()V

    #@5e
    .line 2763
    return v7
.end method

.method final startActivityFromRecentsInner(ILandroid/os/Bundle;)I
    .locals 26
    .param p1, "taskId"    # I
    .param p2, "bOptions"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 4446
    if-eqz p2, :cond_0

    #@2
    .line 4447
    new-instance v23, Landroid/app/ActivityOptions;

    #@4
    move-object/from16 v0, v23

    #@6
    move-object/from16 v1, p2

    #@8
    invoke-direct {v0, v1}, Landroid/app/ActivityOptions;-><init>(Landroid/os/Bundle;)V

    #@b
    .line 4448
    .local v23, "activityOptions":Landroid/app/ActivityOptions;
    :goto_0
    if-eqz v23, :cond_1

    #@d
    .line 4449
    invoke-virtual/range {v23 .. v23}, Landroid/app/ActivityOptions;->getLaunchStackId()I

    #@10
    move-result v4

    #@11
    .line 4450
    .local v4, "launchStackId":I
    :goto_1
    if-nez v4, :cond_2

    #@13
    .line 4451
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@15
    new-instance v3, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v5, "startActivityFromRecentsInner: Task "

    #@1d
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v3

    #@21
    move/from16 v0, p1

    #@23
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@26
    move-result-object v3

    #@27
    .line 4452
    const-string/jumbo v5, " can\'t be launch in the home stack."

    #@2a
    .line 4451
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v3

    #@2e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v3

    #@32
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@35
    throw v2

    #@36
    .line 4447
    .end local v4    # "launchStackId":I
    .end local v23    # "activityOptions":Landroid/app/ActivityOptions;
    :cond_0
    const/16 v23, 0x0

    #@38
    goto :goto_0

    #@39
    .line 4449
    .restart local v23    # "activityOptions":Landroid/app/ActivityOptions;
    :cond_1
    const/4 v4, -0x1

    #@3a
    goto :goto_1

    #@3b
    .line 4455
    .restart local v4    # "launchStackId":I
    :cond_2
    const/4 v2, 0x3

    #@3c
    if-ne v4, v2, :cond_3

    #@3e
    .line 4456
    move-object/from16 v0, p0

    #@40
    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@42
    .line 4457
    invoke-virtual/range {v23 .. v23}, Landroid/app/ActivityOptions;->getDockCreateMode()I

    #@45
    move-result v3

    #@46
    const/4 v5, 0x0

    #@47
    .line 4456
    invoke-virtual {v2, v3, v5}, Lcom/android/server/wm/WindowManagerService;->setDockedStackCreateState(ILandroid/graphics/Rect;)V

    #@4a
    .line 4462
    const/4 v2, 0x0

    #@4b
    move-object/from16 v0, p0

    #@4d
    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityStackSupervisor;->deferUpdateBounds(I)V

    #@50
    .line 4463
    move-object/from16 v0, p0

    #@52
    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@54
    const/16 v3, 0x13

    #@56
    const/4 v5, 0x0

    #@57
    invoke-virtual {v2, v3, v5}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    #@5a
    .line 4466
    :cond_3
    const/4 v2, 0x1

    #@5b
    move-object/from16 v0, p0

    #@5d
    move/from16 v1, p1

    #@5f
    invoke-virtual {v0, v1, v2, v4}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(IZI)Lcom/android/server/am/TaskRecord;

    #@62
    move-result-object v22

    #@63
    .line 4467
    .local v22, "task":Lcom/android/server/am/TaskRecord;
    if-nez v22, :cond_4

    #@65
    .line 4468
    const/4 v2, 0x0

    #@66
    move-object/from16 v0, p0

    #@68
    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityStackSupervisor;->continueUpdateBounds(I)V

    #@6b
    .line 4469
    move-object/from16 v0, p0

    #@6d
    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@6f
    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    #@72
    .line 4470
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@74
    .line 4471
    new-instance v3, Ljava/lang/StringBuilder;

    #@76
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@79
    const-string/jumbo v5, "startActivityFromRecentsInner: Task "

    #@7c
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v3

    #@80
    move/from16 v0, p1

    #@82
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@85
    move-result-object v3

    #@86
    const-string/jumbo v5, " not found."

    #@89
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v3

    #@8d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@90
    move-result-object v3

    #@91
    .line 4470
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@94
    throw v2

    #@95
    .line 4476
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    #@98
    move-result-object v24

    #@99
    .line 4478
    .local v24, "focusedStack":Lcom/android/server/am/ActivityStack;
    if-eqz v24, :cond_7

    #@9b
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    #@9e
    move-result-object v9

    #@9f
    .line 4480
    :goto_2
    const/4 v2, -0x1

    #@a0
    if-eq v4, v2, :cond_5

    #@a2
    .line 4481
    move-object/from16 v0, v22

    #@a4
    iget-object v2, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@a6
    iget v2, v2, Lcom/android/server/am/ActivityStack;->mStackId:I

    #@a8
    if-eq v2, v4, :cond_5

    #@aa
    .line 4483
    const-string/jumbo v7, "startActivityFromRecents"

    #@ad
    const/4 v5, 0x1

    #@ae
    const/4 v6, 0x1

    #@af
    .line 4484
    const/4 v8, 0x1

    #@b0
    move-object/from16 v2, p0

    #@b2
    move/from16 v3, p1

    #@b4
    .line 4482
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/ActivityStackSupervisor;->moveTaskToStackLocked(IIZZLjava/lang/String;Z)Z

    #@b7
    .line 4490
    :cond_5
    move-object/from16 v0, p0

    #@b9
    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@bb
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    #@bd
    move-object/from16 v0, v22

    #@bf
    iget v3, v0, Lcom/android/server/am/TaskRecord;->userId:I

    #@c1
    invoke-virtual {v2, v3}, Lcom/android/server/am/UserController;->shouldConfirmCredentials(I)Z

    #@c4
    move-result v2

    #@c5
    if-nez v2, :cond_9

    #@c7
    .line 4491
    invoke-virtual/range {v22 .. v22}, Lcom/android/server/am/TaskRecord;->getRootActivity()Lcom/android/server/am/ActivityRecord;

    #@ca
    move-result-object v2

    #@cb
    if-eqz v2, :cond_9

    #@cd
    .line 4492
    move-object/from16 v0, p0

    #@cf
    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityMetricsLogger:Lcom/android/server/am/ActivityMetricsLogger;

    #@d1
    invoke-virtual {v2}, Lcom/android/server/am/ActivityMetricsLogger;->notifyActivityLaunching()V

    #@d4
    .line 4493
    move-object/from16 v0, p0

    #@d6
    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@d8
    move-object/from16 v0, v22

    #@da
    iget v3, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    #@dc
    const/4 v5, 0x0

    #@dd
    move-object/from16 v0, p2

    #@df
    invoke-virtual {v2, v3, v5, v0}, Lcom/android/server/am/ActivityManagerService;->moveTaskToFrontLocked(IILandroid/os/Bundle;)V

    #@e2
    .line 4494
    move-object/from16 v0, p0

    #@e4
    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityMetricsLogger:Lcom/android/server/am/ActivityMetricsLogger;

    #@e6
    .line 4495
    invoke-virtual/range {v22 .. v22}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    #@e9
    move-result-object v3

    #@ea
    .line 4494
    const/4 v5, 0x2

    #@eb
    invoke-virtual {v2, v5, v3}, Lcom/android/server/am/ActivityMetricsLogger;->notifyActivityLaunched(ILcom/android/server/am/ActivityRecord;)V

    #@ee
    .line 4500
    const/4 v2, 0x3

    #@ef
    if-ne v4, v2, :cond_6

    #@f1
    .line 4501
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/ActivityStackSupervisor;->setResizingDuringAnimation(I)V

    #@f4
    .line 4504
    :cond_6
    move-object/from16 v0, p0

    #@f6
    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@f8
    iget-object v5, v2, Lcom/android/server/am/ActivityManagerService;->mActivityStarter:Lcom/android/server/am/ActivityStarter;

    #@fa
    invoke-virtual/range {v22 .. v22}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    #@fd
    move-result-object v6

    #@fe
    .line 4506
    if-eqz v9, :cond_8

    #@100
    iget-object v2, v9, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@102
    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@104
    iget v8, v2, Lcom/android/server/am/ActivityStack;->mStackId:I

    #@106
    .line 4507
    :goto_3
    move-object/from16 v0, v22

    #@108
    iget-object v10, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@10a
    .line 4505
    const/4 v7, 0x2

    #@10b
    .line 4504
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/am/ActivityStarter;->postStartActivityUncheckedProcessing(Lcom/android/server/am/ActivityRecord;IILcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStack;)V

    #@10e
    .line 4508
    const/4 v2, 0x2

    #@10f
    return v2

    #@110
    .line 4478
    :cond_7
    const/4 v9, 0x0

    #@111
    .local v9, "sourceRecord":Lcom/android/server/am/ActivityRecord;
    goto :goto_2

    #@112
    .line 4506
    .end local v9    # "sourceRecord":Lcom/android/server/am/ActivityRecord;
    :cond_8
    const/4 v8, -0x1

    #@113
    goto :goto_3

    #@114
    .line 4510
    :cond_9
    move-object/from16 v0, v22

    #@116
    iget v11, v0, Lcom/android/server/am/TaskRecord;->mCallingUid:I

    #@118
    .line 4511
    .local v11, "callingUid":I
    move-object/from16 v0, v22

    #@11a
    iget-object v12, v0, Lcom/android/server/am/TaskRecord;->mCallingPackage:Ljava/lang/String;

    #@11c
    .line 4512
    .local v12, "callingPackage":Ljava/lang/String;
    move-object/from16 v0, v22

    #@11e
    iget-object v13, v0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    #@120
    .line 4513
    .local v13, "intent":Landroid/content/Intent;
    const/high16 v2, 0x100000

    #@122
    invoke-virtual {v13, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@125
    .line 4514
    move-object/from16 v0, v22

    #@127
    iget v0, v0, Lcom/android/server/am/TaskRecord;->userId:I

    #@129
    move/from16 v20, v0

    #@12b
    .line 4515
    .local v20, "userId":I
    move-object/from16 v0, p0

    #@12d
    iget-object v10, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@12f
    const/4 v14, 0x0

    #@130
    .line 4516
    const/4 v15, 0x0

    #@131
    const/16 v16, 0x0

    #@133
    const/16 v17, 0x0

    #@135
    const/16 v18, 0x0

    #@137
    const/16 v21, 0x0

    #@139
    move-object/from16 v19, p2

    #@13b
    .line 4515
    invoke-virtual/range {v10 .. v22}, Lcom/android/server/am/ActivityManagerService;->startActivityInPackage(ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/os/Bundle;ILandroid/app/IActivityContainer;Lcom/android/server/am/TaskRecord;)I

    #@13e
    move-result v25

    #@13f
    .line 4517
    .local v25, "result":I
    const/4 v2, 0x3

    #@140
    if-ne v4, v2, :cond_a

    #@142
    .line 4518
    move-object/from16 v0, v22

    #@144
    iget v2, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    #@146
    move-object/from16 v0, p0

    #@148
    invoke-direct {v0, v2}, Lcom/android/server/am/ActivityStackSupervisor;->setResizingDuringAnimation(I)V

    #@14b
    .line 4520
    :cond_a
    return v25
.end method

.method startSpecificActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V
    .locals 12
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "andResume"    # Z
    .param p3, "checkConfig"    # Z

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 1379
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@4
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    #@6
    .line 1380
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@8
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@a
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    #@c
    .line 1379
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;IZ)Lcom/android/server/am/ProcessRecord;

    #@f
    move-result-object v10

    #@10
    .line 1382
    .local v10, "app":Lcom/android/server/am/ProcessRecord;
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@12
    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@14
    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStack;->setLaunchTime(Lcom/android/server/am/ActivityRecord;)V

    #@17
    .line 1384
    if-eqz v10, :cond_1

    #@19
    iget-object v0, v10, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@1b
    if-eqz v0, :cond_1

    #@1d
    .line 1386
    :try_start_0
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@1f
    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    #@21
    and-int/lit8 v0, v0, 0x1

    #@23
    if-eqz v0, :cond_0

    #@25
    .line 1387
    const-string/jumbo v0, "android"

    #@28
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@2a
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@2c
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2f
    move-result v0

    #@30
    if-eqz v0, :cond_0

    #@32
    .line 1395
    :goto_0
    invoke-virtual {p0, p1, v10, p2, p3}, Lcom/android/server/am/ActivityStackSupervisor;->realStartActivityLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ProcessRecord;ZZ)Z

    #@35
    .line 1396
    return-void

    #@36
    .line 1392
    :cond_0
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@38
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@3a
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@3c
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@3e
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->versionCode:I

    #@40
    .line 1393
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@42
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    #@44
    .line 1392
    invoke-virtual {v10, v0, v1, v2}, Lcom/android/server/am/ProcessRecord;->addPackage(Ljava/lang/String;ILcom/android/server/am/ProcessStatsService;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@47
    goto :goto_0

    #@48
    .line 1397
    :catch_0
    move-exception v11

    #@49
    .line 1398
    .local v11, "e":Landroid/os/RemoteException;
    sget-object v0, Lcom/android/server/am/ActivityStackSupervisor;->TAG:Ljava/lang/String;

    #@4b
    new-instance v1, Ljava/lang/StringBuilder;

    #@4d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@50
    const-string/jumbo v2, "Exception when starting activity "

    #@53
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v1

    #@57
    .line 1399
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    #@59
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@5c
    move-result-object v2

    #@5d
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@60
    move-result-object v2

    #@61
    .line 1398
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v1

    #@65
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@68
    move-result-object v1

    #@69
    invoke-static {v0, v1, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@6c
    .line 1406
    .end local v11    # "e":Landroid/os/RemoteException;
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@6e
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    #@70
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@72
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@74
    .line 1407
    const-string/jumbo v5, "activity"

    #@77
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    #@79
    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@7c
    move-result-object v6

    #@7d
    move v7, v4

    #@7e
    move v8, v4

    #@7f
    move v9, v3

    #@80
    .line 1406
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/am/ActivityManagerService;->startProcessLocked(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;ZILjava/lang/String;Landroid/content/ComponentName;ZZZ)Lcom/android/server/am/ProcessRecord;

    #@83
    .line 1377
    return-void
.end method

.method switchUserLocked(ILcom/android/server/am/UserState;)Z
    .locals 13
    .param p1, "userId"    # I
    .param p2, "uss"    # Lcom/android/server/am/UserState;

    #@0
    .prologue
    const/4 v11, 0x3

    #@1
    const/4 v9, 0x1

    #@2
    const/4 v12, 0x0

    #@3
    const/4 v10, 0x0

    #@4
    .line 3062
    iget-object v8, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    #@6
    invoke-virtual {v8}, Lcom/android/server/am/ActivityStack;->getStackId()I

    #@9
    move-result v1

    #@a
    .line 3064
    .local v1, "focusStackId":I
    if-ne v1, v11, :cond_1

    #@c
    move v8, v9

    #@d
    :goto_0
    invoke-virtual {p0, v11, v8}, Lcom/android/server/am/ActivityStackSupervisor;->moveTasksToFullscreenStackLocked(IZ)V

    #@10
    .line 3066
    iget-object v8, p0, Lcom/android/server/am/ActivityStackSupervisor;->mUserStackInFront:Landroid/util/SparseIntArray;

    #@12
    iget v11, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurrentUser:I

    #@14
    invoke-virtual {v8, v11, v1}, Landroid/util/SparseIntArray;->put(II)V

    #@17
    .line 3067
    iget-object v8, p0, Lcom/android/server/am/ActivityStackSupervisor;->mUserStackInFront:Landroid/util/SparseIntArray;

    #@19
    invoke-virtual {v8, p1, v10}, Landroid/util/SparseIntArray;->get(II)I

    #@1c
    move-result v3

    #@1d
    .line 3068
    .local v3, "restoreStackId":I
    iput p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurrentUser:I

    #@1f
    .line 3070
    iget-object v8, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStartingUsers:Ljava/util/ArrayList;

    #@21
    invoke-virtual {v8, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@24
    .line 3071
    iget-object v8, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    #@26
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    #@29
    move-result v8

    #@2a
    add-int/lit8 v0, v8, -0x1

    #@2c
    .local v0, "displayNdx":I
    :goto_1
    if-ltz v0, :cond_3

    #@2e
    .line 3072
    iget-object v8, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    #@30
    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@33
    move-result-object v8

    #@34
    check-cast v8, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    #@36
    iget-object v6, v8, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    #@38
    .line 3073
    .local v6, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@3b
    move-result v8

    #@3c
    add-int/lit8 v5, v8, -0x1

    #@3e
    .local v5, "stackNdx":I
    :goto_2
    if-ltz v5, :cond_2

    #@40
    .line 3074
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@43
    move-result-object v4

    #@44
    check-cast v4, Lcom/android/server/am/ActivityStack;

    #@46
    .line 3075
    .local v4, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v4, p1}, Lcom/android/server/am/ActivityStack;->switchUserLocked(I)V

    #@49
    .line 3076
    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    #@4c
    move-result-object v7

    #@4d
    .line 3077
    .local v7, "task":Lcom/android/server/am/TaskRecord;
    if-eqz v7, :cond_0

    #@4f
    .line 3078
    iget-object v8, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@51
    iget v10, v7, Lcom/android/server/am/TaskRecord;->taskId:I

    #@53
    invoke-virtual {v8, v10}, Lcom/android/server/wm/WindowManagerService;->moveTaskToTop(I)V

    #@56
    .line 3073
    :cond_0
    add-int/lit8 v5, v5, -0x1

    #@58
    goto :goto_2

    #@59
    .end local v0    # "displayNdx":I
    .end local v3    # "restoreStackId":I
    .end local v4    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v5    # "stackNdx":I
    .end local v6    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    .end local v7    # "task":Lcom/android/server/am/TaskRecord;
    :cond_1
    move v8, v10

    #@5a
    .line 3064
    goto :goto_0

    #@5b
    .line 3071
    .restart local v0    # "displayNdx":I
    .restart local v3    # "restoreStackId":I
    .restart local v5    # "stackNdx":I
    .restart local v6    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_2
    add-int/lit8 v0, v0, -0x1

    #@5d
    goto :goto_1

    #@5e
    .line 3083
    .end local v5    # "stackNdx":I
    .end local v6    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_3
    invoke-virtual {p0, v3}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    #@61
    move-result-object v4

    #@62
    .line 3084
    .restart local v4    # "stack":Lcom/android/server/am/ActivityStack;
    if-nez v4, :cond_4

    #@64
    .line 3085
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    #@66
    .line 3087
    :cond_4
    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    #@69
    move-result v2

    #@6a
    .line 3088
    .local v2, "homeInFront":Z
    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->isOnHomeDisplay()Z

    #@6d
    move-result v8

    #@6e
    if-eqz v8, :cond_5

    #@70
    .line 3089
    const-string/jumbo v8, "switchUserOnHomeDisplay"

    #@73
    invoke-virtual {v4, v8}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    #@76
    .line 3094
    :goto_3
    return v2

    #@77
    .line 3092
    :cond_5
    const-string/jumbo v8, "switchUserOnOtherDisplay"

    #@7a
    invoke-virtual {p0, v9, v12, v8}, Lcom/android/server/am/ActivityStackSupervisor;->resumeHomeStackTask(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z

    #@7d
    goto :goto_3
.end method

.method topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 1067
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    #@3
    .line 1068
    .local v0, "focusedStack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    #@6
    move-result-object v1

    #@7
    .line 1069
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_0

    #@9
    .line 1070
    return-object v1

    #@a
    .line 1074
    :cond_0
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    #@c
    iget-object v4, v5, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    #@e
    .line 1075
    .local v4, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@11
    move-result v5

    #@12
    add-int/lit8 v3, v5, -0x1

    #@14
    .local v3, "stackNdx":I
    :goto_0
    if-ltz v3, :cond_2

    #@16
    .line 1076
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@19
    move-result-object v2

    #@1a
    check-cast v2, Lcom/android/server/am/ActivityStack;

    #@1c
    .line 1077
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    if-eq v2, v0, :cond_1

    #@1e
    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    #@21
    move-result v5

    #@22
    if-eqz v5, :cond_1

    #@24
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->isFocusable()Z

    #@27
    move-result v5

    #@28
    if-eqz v5, :cond_1

    #@2a
    .line 1078
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    #@2d
    move-result-object v1

    #@2e
    .line 1079
    if-eqz v1, :cond_1

    #@30
    .line 1080
    return-object v1

    #@31
    .line 1075
    :cond_1
    add-int/lit8 v3, v3, -0x1

    #@33
    goto :goto_0

    #@34
    .line 1084
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_2
    return-object v6
.end method

.method updateActivityApplicationInfoLocked(Landroid/content/pm/ApplicationInfo;)V
    .locals 4
    .param p1, "aInfo"    # Landroid/content/pm/ApplicationInfo;

    #@0
    .prologue
    .line 1826
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    #@5
    move-result v3

    #@6
    add-int/lit8 v0, v3, -0x1

    #@8
    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_1

    #@a
    .line 1827
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    #@c
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@f
    move-result-object v3

    #@10
    check-cast v3, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    #@12
    iget-object v2, v3, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    #@14
    .line 1828
    .local v2, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@17
    move-result v3

    #@18
    add-int/lit8 v1, v3, -0x1

    #@1a
    .local v1, "stackNdx":I
    :goto_1
    if-ltz v1, :cond_0

    #@1c
    .line 1829
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1f
    move-result-object v3

    #@20
    check-cast v3, Lcom/android/server/am/ActivityStack;

    #@22
    invoke-virtual {v3, p1}, Lcom/android/server/am/ActivityStack;->updateActivityApplicationInfoLocked(Landroid/content/pm/ApplicationInfo;)V

    #@25
    .line 1828
    add-int/lit8 v1, v1, -0x1

    #@27
    goto :goto_1

    #@28
    .line 1826
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@2a
    goto :goto_0

    #@2b
    .line 1825
    .end local v1    # "stackNdx":I
    .end local v2    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_1
    return-void
.end method

.method updatePreviousProcessLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 10
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    #@0
    .prologue
    .line 1783
    const/4 v1, 0x0

    #@1
    .line 1784
    .local v1, "fgApp":Lcom/android/server/am/ProcessRecord;
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    #@3
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    #@6
    move-result v5

    #@7
    add-int/lit8 v0, v5, -0x1

    #@9
    .end local v1    # "fgApp":Lcom/android/server/am/ProcessRecord;
    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_3

    #@b
    .line 1785
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    #@d
    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@10
    move-result-object v5

    #@11
    check-cast v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    #@13
    iget-object v4, v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    #@15
    .line 1786
    .local v4, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@18
    move-result v5

    #@19
    add-int/lit8 v3, v5, -0x1

    #@1b
    .local v3, "stackNdx":I
    :goto_1
    if-ltz v3, :cond_0

    #@1d
    .line 1787
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@20
    move-result-object v2

    #@21
    check-cast v2, Lcom/android/server/am/ActivityStack;

    #@23
    .line 1788
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusedStack(Lcom/android/server/am/ActivityStack;)Z

    #@26
    move-result v5

    #@27
    if-eqz v5, :cond_2

    #@29
    .line 1789
    iget-object v5, v2, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    #@2b
    if-eqz v5, :cond_1

    #@2d
    .line 1790
    iget-object v5, v2, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    #@2f
    iget-object v1, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@31
    .line 1784
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_0
    :goto_2
    add-int/lit8 v0, v0, -0x1

    #@33
    goto :goto_0

    #@34
    .line 1791
    .restart local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_1
    iget-object v5, v2, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    #@36
    if-eqz v5, :cond_0

    #@38
    .line 1792
    iget-object v5, v2, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    #@3a
    iget-object v1, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@3c
    .local v1, "fgApp":Lcom/android/server/am/ProcessRecord;
    goto :goto_2

    #@3d
    .line 1786
    .end local v1    # "fgApp":Lcom/android/server/am/ProcessRecord;
    :cond_2
    add-int/lit8 v3, v3, -0x1

    #@3f
    goto :goto_1

    #@40
    .line 1801
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v3    # "stackNdx":I
    .end local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_3
    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@42
    if-eqz v5, :cond_4

    #@44
    if-eqz v1, :cond_4

    #@46
    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@48
    if-eq v5, v1, :cond_4

    #@4a
    .line 1802
    iget-wide v6, p1, Lcom/android/server/am/ActivityRecord;->lastVisibleTime:J

    #@4c
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@4e
    iget-wide v8, v5, Lcom/android/server/am/ActivityManagerService;->mPreviousProcessVisibleTime:J

    #@50
    cmp-long v5, v6, v8

    #@52
    if-lez v5, :cond_4

    #@54
    .line 1803
    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@56
    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@58
    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;

    #@5a
    if-eq v5, v6, :cond_4

    #@5c
    .line 1804
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@5e
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@60
    iput-object v6, v5, Lcom/android/server/am/ActivityManagerService;->mPreviousProcess:Lcom/android/server/am/ProcessRecord;

    #@62
    .line 1805
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@64
    iget-wide v6, p1, Lcom/android/server/am/ActivityRecord;->lastVisibleTime:J

    #@66
    iput-wide v6, v5, Lcom/android/server/am/ActivityManagerService;->mPreviousProcessVisibleTime:J

    #@68
    .line 1775
    :cond_4
    return-void
.end method

.method updateUserStackLocked(ILcom/android/server/am/ActivityStack;)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "stack"    # Lcom/android/server/am/ActivityStack;

    #@0
    .prologue
    .line 1751
    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurrentUser:I

    #@2
    if-eq p1, v0, :cond_0

    #@4
    .line 1752
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mUserStackInFront:Landroid/util/SparseIntArray;

    #@6
    if-eqz p2, :cond_1

    #@8
    invoke-virtual {p2}, Lcom/android/server/am/ActivityStack;->getStackId()I

    #@b
    move-result v0

    #@c
    :goto_0
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    #@f
    .line 1750
    :cond_0
    return-void

    #@10
    .line 1752
    :cond_1
    const/4 v0, 0x0

    #@11
    goto :goto_0
.end method

.method validateTopActivitiesLocked()V
    .locals 11

    #@0
    .prologue
    .line 3145
    iget-object v8, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    #@5
    move-result v8

    #@6
    add-int/lit8 v0, v8, -0x1

    #@8
    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_8

    #@a
    .line 3146
    iget-object v8, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    #@c
    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@f
    move-result-object v8

    #@10
    check-cast v8, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    #@12
    iget-object v6, v8, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    #@14
    .line 3147
    .local v6, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@17
    move-result v8

    #@18
    add-int/lit8 v5, v8, -0x1

    #@1a
    .local v5, "stackNdx":I
    :goto_1
    if-ltz v5, :cond_7

    #@1c
    .line 3148
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1f
    move-result-object v4

    #@20
    check-cast v4, Lcom/android/server/am/ActivityStack;

    #@22
    .line 3149
    .local v4, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    #@25
    move-result-object v2

    #@26
    .line 3150
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    if-nez v2, :cond_1

    #@28
    sget-object v7, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    #@2a
    .line 3151
    .local v7, "state":Lcom/android/server/am/ActivityStack$ActivityState;
    :goto_2
    invoke-virtual {p0, v4}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusedStack(Lcom/android/server/am/ActivityStack;)Z

    #@2d
    move-result v8

    #@2e
    if-eqz v8, :cond_4

    #@30
    .line 3152
    if-nez v2, :cond_2

    #@32
    sget-object v8, Lcom/android/server/am/ActivityStackSupervisor;->TAG:Ljava/lang/String;

    #@34
    .line 3153
    new-instance v9, Ljava/lang/StringBuilder;

    #@36
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@39
    const-string/jumbo v10, "validateTop...: null top activity, stack="

    #@3c
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v9

    #@40
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v9

    #@44
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v9

    #@48
    .line 3152
    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@4b
    .line 3147
    :cond_0
    :goto_3
    add-int/lit8 v5, v5, -0x1

    #@4d
    goto :goto_1

    #@4e
    .line 3150
    .end local v7    # "state":Lcom/android/server/am/ActivityStack$ActivityState;
    :cond_1
    iget-object v7, v2, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    #@50
    .restart local v7    # "state":Lcom/android/server/am/ActivityStack$ActivityState;
    goto :goto_2

    #@51
    .line 3155
    :cond_2
    iget-object v1, v4, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    #@53
    .line 3156
    .local v1, "pausing":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_3

    #@55
    if-ne v1, v2, :cond_3

    #@57
    sget-object v8, Lcom/android/server/am/ActivityStackSupervisor;->TAG:Ljava/lang/String;

    #@59
    .line 3157
    new-instance v9, Ljava/lang/StringBuilder;

    #@5b
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@5e
    const-string/jumbo v10, "validateTop...: top stack has pausing activity r="

    #@61
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v9

    #@65
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v9

    #@69
    .line 3158
    const-string/jumbo v10, " state="

    #@6c
    .line 3157
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v9

    #@70
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v9

    #@74
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@77
    move-result-object v9

    #@78
    .line 3156
    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@7b
    .line 3159
    :cond_3
    sget-object v8, Lcom/android/server/am/ActivityStack$ActivityState;->INITIALIZING:Lcom/android/server/am/ActivityStack$ActivityState;

    #@7d
    if-eq v7, v8, :cond_0

    #@7f
    sget-object v8, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    #@81
    if-eq v7, v8, :cond_0

    #@83
    sget-object v8, Lcom/android/server/am/ActivityStackSupervisor;->TAG:Ljava/lang/String;

    #@85
    .line 3160
    new-instance v9, Ljava/lang/StringBuilder;

    #@87
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@8a
    const-string/jumbo v10, "validateTop...: activity in front not resumed r="

    #@8d
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v9

    #@91
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@94
    move-result-object v9

    #@95
    .line 3161
    const-string/jumbo v10, " state="

    #@98
    .line 3160
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v9

    #@9c
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@9f
    move-result-object v9

    #@a0
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a3
    move-result-object v9

    #@a4
    .line 3159
    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@a7
    goto :goto_3

    #@a8
    .line 3164
    .end local v1    # "pausing":Lcom/android/server/am/ActivityRecord;
    :cond_4
    iget-object v3, v4, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    #@aa
    .line 3165
    .local v3, "resumed":Lcom/android/server/am/ActivityRecord;
    if-eqz v3, :cond_5

    #@ac
    if-ne v3, v2, :cond_5

    #@ae
    sget-object v8, Lcom/android/server/am/ActivityStackSupervisor;->TAG:Ljava/lang/String;

    #@b0
    .line 3166
    new-instance v9, Ljava/lang/StringBuilder;

    #@b2
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@b5
    const-string/jumbo v10, "validateTop...: back stack has resumed activity r="

    #@b8
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bb
    move-result-object v9

    #@bc
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@bf
    move-result-object v9

    #@c0
    .line 3167
    const-string/jumbo v10, " state="

    #@c3
    .line 3166
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c6
    move-result-object v9

    #@c7
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ca
    move-result-object v9

    #@cb
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ce
    move-result-object v9

    #@cf
    .line 3165
    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@d2
    .line 3168
    :cond_5
    if-eqz v2, :cond_0

    #@d4
    sget-object v8, Lcom/android/server/am/ActivityStack$ActivityState;->INITIALIZING:Lcom/android/server/am/ActivityStack$ActivityState;

    #@d6
    if-eq v7, v8, :cond_6

    #@d8
    sget-object v8, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    #@da
    if-ne v7, v8, :cond_0

    #@dc
    :cond_6
    sget-object v8, Lcom/android/server/am/ActivityStackSupervisor;->TAG:Ljava/lang/String;

    #@de
    .line 3169
    new-instance v9, Ljava/lang/StringBuilder;

    #@e0
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@e3
    const-string/jumbo v10, "validateTop...: activity in back resumed r="

    #@e6
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e9
    move-result-object v9

    #@ea
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ed
    move-result-object v9

    #@ee
    const-string/jumbo v10, " state="

    #@f1
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f4
    move-result-object v9

    #@f5
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f8
    move-result-object v9

    #@f9
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@fc
    move-result-object v9

    #@fd
    .line 3168
    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@100
    goto/16 :goto_3

    #@102
    .line 3145
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v3    # "resumed":Lcom/android/server/am/ActivityRecord;
    .end local v4    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v7    # "state":Lcom/android/server/am/ActivityStack$ActivityState;
    :cond_7
    add-int/lit8 v0, v0, -0x1

    #@104
    goto/16 :goto_0

    #@106
    .line 3144
    .end local v5    # "stackNdx":I
    .end local v6    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_8
    return-void
.end method
