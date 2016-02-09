.class public final Lcom/android/server/am/ActivityStackSupervisor;
.super Ljava/lang/Object;
.source "ActivityStackSupervisor.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;,
        Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;,
        Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;,
        Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;,
        Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;,
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

.field static final HANDLE_DISPLAY_ADDED:I = 0x69

.field static final HANDLE_DISPLAY_CHANGED:I = 0x6a

.field static final HANDLE_DISPLAY_REMOVED:I = 0x6b

.field public static final HOME_STACK_ID:I = 0x0

.field static final IDLE_NOW_MSG:I = 0x65

.field static final IDLE_TIMEOUT:I = 0x2710

.field static final IDLE_TIMEOUT_MSG:I = 0x64

.field static final LAUNCH_TASK_BEHIND_COMPLETE:I = 0x70

.field static final LAUNCH_TIMEOUT:I = 0x2710

.field static final LAUNCH_TIMEOUT_MSG:I = 0x68

.field static final LOCK_TASK_END_MSG:I = 0x6e

.field static final LOCK_TASK_START_MSG:I = 0x6d

.field private static final LOCK_TASK_TAG:Ljava/lang/String; = "Lock-to-App"

.field static final RESUME_TOP_ACTIVITY_MSG:I = 0x66

.field static final SHOW_LOCK_TASK_ESCAPE_MESSAGE_MSG:I = 0x71

.field static final SLEEP_TIMEOUT:I = 0x1388

.field static final SLEEP_TIMEOUT_MSG:I = 0x67

.field private static final TAG:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_CONFIGURATION:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_CONTAINERS:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_FOCUS:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_IDLE:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_LOCKTASK:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_PAUSE:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_RECENTS:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_RELEASE:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_RESULTS:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_STACK:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_STATES:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_SWITCH:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_TASKS:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_USER_LEAVING:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_VISIBLE_BEHIND:Ljava/lang/String; = "ActivityManager"

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

.field private mCurTaskId:I

.field private mCurrentUser:I

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

.field private mFocusedStack:Lcom/android/server/am/ActivityStack;

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

.field private mHomeStack:Lcom/android/server/am/ActivityStack;

.field mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

.field private mLastFocusedStack:Lcom/android/server/am/ActivityStack;

.field private mLastStackId:I

.field mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

.field private mLeanbackOnlyDevice:Z

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

.field final mPendingActivityLaunches:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;",
            ">;"
        }
    .end annotation
.end field

.field private final mRecentTasks:Lcom/android/server/am/RecentTasks;

.field final mService:Lcom/android/server/am/ActivityManagerService;

.field mSleepTimeout:Z

.field final mStartingBackgroundUsers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/UserState;",
            ">;"
        }
    .end annotation
.end field

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


# direct methods
.method static synthetic -get0(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/util/SparseArray;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/am/ActivityStackSupervisor;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurrentUser:I

    #@2
    return v0
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
    .line 180
    new-instance v0, Landroid/util/ArrayMap;

    #@2
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@5
    .line 179
    sput-object v0, Lcom/android/server/am/ActivityStackSupervisor;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    #@7
    .line 182
    sget-object v0, Lcom/android/server/am/ActivityStackSupervisor;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    #@9
    const-string/jumbo v1, "android.media.action.IMAGE_CAPTURE"

    #@c
    .line 183
    const-string/jumbo v2, "android.permission.CAMERA"

    #@f
    .line 182
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    .line 184
    sget-object v0, Lcom/android/server/am/ActivityStackSupervisor;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    #@14
    const-string/jumbo v1, "android.media.action.VIDEO_CAPTURE"

    #@17
    .line 185
    const-string/jumbo v2, "android.permission.CAMERA"

    #@1a
    .line 184
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1d
    .line 186
    sget-object v0, Lcom/android/server/am/ActivityStackSupervisor;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    #@1f
    const-string/jumbo v1, "android.intent.action.CALL"

    #@22
    .line 187
    const-string/jumbo v2, "android.permission.CALL_PHONE"

    #@25
    .line 186
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@28
    .line 130
    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/RecentTasks;)V
    .locals 2
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "recentTasks"    # Lcom/android/server/am/RecentTasks;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 198
    new-instance v0, Landroid/os/Binder;

    #@6
    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    #@9
    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mToken:Landroid/os/IBinder;

    #@b
    .line 217
    iput v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLastStackId:I

    #@d
    .line 221
    iput v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurTaskId:I

    #@f
    .line 240
    new-instance v0, Ljava/util/ArrayList;

    #@11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@14
    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    #@16
    .line 243
    new-instance v0, Ljava/util/ArrayList;

    #@18
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@1b
    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingActivityVisible:Ljava/util/ArrayList;

    #@1d
    .line 246
    new-instance v0, Ljava/util/ArrayList;

    #@1f
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@22
    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    #@24
    .line 250
    new-instance v0, Ljava/util/ArrayList;

    #@26
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@29
    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    #@2b
    .line 254
    new-instance v0, Ljava/util/ArrayList;

    #@2d
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@30
    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    #@32
    .line 257
    new-instance v0, Ljava/util/ArrayList;

    #@34
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@37
    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    #@39
    .line 260
    new-instance v0, Ljava/util/ArrayList;

    #@3b
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@3e
    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStartingUsers:Ljava/util/ArrayList;

    #@40
    .line 263
    new-instance v0, Ljava/util/ArrayList;

    #@42
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@45
    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStartingBackgroundUsers:Ljava/util/ArrayList;

    #@47
    .line 267
    iput-boolean v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mUserLeaving:Z

    #@49
    .line 270
    iput-boolean v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mSleepTimeout:Z

    #@4b
    .line 292
    new-instance v0, Landroid/util/SparseIntArray;

    #@4d
    const/4 v1, 0x2

    #@4e
    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    #@51
    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mUserStackInFront:Landroid/util/SparseIntArray;

    #@53
    .line 296
    new-instance v0, Landroid/util/SparseArray;

    #@55
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@58
    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityContainers:Landroid/util/SparseArray;

    #@5a
    .line 299
    new-instance v0, Landroid/util/SparseArray;

    #@5c
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@5f
    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    #@61
    .line 306
    new-instance v0, Ljava/util/ArrayList;

    #@63
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@66
    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeTasks:Ljava/util/ArrayList;

    #@68
    .line 317
    new-instance v0, Ljava/util/ArrayList;

    #@6a
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@6d
    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPendingActivityLaunches:Ljava/util/ArrayList;

    #@6f
    .line 342
    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@71
    .line 343
    iput-object p2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    #@73
    .line 344
    new-instance v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    #@75
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@77
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    #@79
    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService$MainHandler;->getLooper()Landroid/os/Looper;

    #@7c
    move-result-object v1

    #@7d
    invoke-direct {v0, p0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;-><init>(Lcom/android/server/am/ActivityStackSupervisor;Landroid/os/Looper;)V

    #@80
    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    #@82
    .line 341
    return-void
.end method

.method private checkFinishBootingLocked()Z
    .locals 4

    #@0
    .prologue
    .line 2504
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@2
    iget-boolean v0, v2, Lcom/android/server/am/ActivityManagerService;->mBooting:Z

    #@4
    .line 2505
    .local v0, "booting":Z
    const/4 v1, 0x0

    #@5
    .line 2506
    .local v1, "enableScreen":Z
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@7
    const/4 v3, 0x0

    #@8
    iput-boolean v3, v2, Lcom/android/server/am/ActivityManagerService;->mBooting:Z

    #@a
    .line 2507
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@c
    iget-boolean v2, v2, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    #@e
    if-nez v2, :cond_0

    #@10
    .line 2508
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@12
    const/4 v3, 0x1

    #@13
    iput-boolean v3, v2, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    #@15
    .line 2509
    const/4 v1, 0x1

    #@16
    .line 2511
    :cond_0
    if-nez v0, :cond_1

    #@18
    if-eqz v1, :cond_2

    #@1a
    .line 2512
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@1c
    invoke-virtual {v2, v0, v1}, Lcom/android/server/am/ActivityManagerService;->postFinishBooting(ZZ)V

    #@1f
    .line 2514
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
    .line 3618
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ActivityRecord;>;"
    const/4 v8, 0x0

    #@1
    .line 3619
    .local v8, "lastTask":Lcom/android/server/am/TaskRecord;
    const/4 v7, 0x0

    #@2
    .line 3620
    .local v7, "innerPrefix":Ljava/lang/String;
    const/4 v2, 0x0

    #@3
    .line 3621
    .local v2, "args":[Ljava/lang/String;
    const/4 v9, 0x0

    #@4
    .line 3622
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
    .line 3623
    move-object/from16 v0, p2

    #@e
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v10

    #@12
    check-cast v10, Lcom/android/server/am/ActivityRecord;

    #@14
    .line 3624
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
    .line 3627
    :cond_0
    if-nez v7, :cond_1

    #@22
    .line 3628
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
    .line 3629
    .local v7, "innerPrefix":Ljava/lang/String;
    const/4 v12, 0x0

    #@39
    new-array v2, v12, [Ljava/lang/String;

    #@3b
    .line 3631
    .end local v7    # "innerPrefix":Ljava/lang/String;
    :cond_1
    const/4 v9, 0x1

    #@3c
    .line 3632
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
    .line 3633
    .local v5, "full":Z
    :goto_1
    if-eqz p9, :cond_3

    #@49
    .line 3634
    const-string/jumbo v12, ""

    #@4c
    move-object/from16 v0, p1

    #@4e
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@51
    .line 3635
    const/16 p9, 0x0

    #@53
    .line 3637
    :cond_3
    if-eqz p10, :cond_4

    #@55
    .line 3638
    move-object/from16 v0, p1

    #@57
    move-object/from16 v1, p10

    #@59
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@5c
    .line 3639
    const/16 p10, 0x0

    #@5e
    .line 3641
    :cond_4
    if-eqz p11, :cond_5

    #@60
    .line 3642
    move-object/from16 v0, p1

    #@62
    move-object/from16 v1, p11

    #@64
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@67
    .line 3643
    const/16 p11, 0x0

    #@69
    .line 3645
    :cond_5
    iget-object v12, v10, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@6b
    if-eq v8, v12, :cond_6

    #@6d
    .line 3646
    iget-object v8, v10, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@6f
    .line 3647
    .local v8, "lastTask":Lcom/android/server/am/TaskRecord;
    move-object/from16 v0, p1

    #@71
    move-object/from16 v1, p3

    #@73
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@76
    .line 3648
    if-eqz v5, :cond_a

    #@78
    const-string/jumbo v12, "* "

    #@7b
    :goto_2
    move-object/from16 v0, p1

    #@7d
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@80
    .line 3649
    move-object/from16 v0, p1

    #@82
    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@85
    .line 3650
    if-eqz v5, :cond_b

    #@87
    .line 3651
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
    .line 3660
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
    .line 3661
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
    .line 3662
    move-object/from16 v0, p1

    #@d1
    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@d4
    .line 3663
    if-eqz v5, :cond_d

    #@d6
    .line 3664
    move-object/from16 v0, p1

    #@d8
    invoke-virtual {v10, v0, v7}, Lcom/android/server/am/ActivityRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    #@db
    .line 3672
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
    .line 3675
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->flush()V

    #@ea
    .line 3677
    :try_start_0
    new-instance v11, Lcom/android/internal/os/TransferPipe;

    #@ec
    invoke-direct {v11}, Lcom/android/internal/os/TransferPipe;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    #@ef
    .line 3679
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
    .line 3680
    iget-object v14, v10, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@fd
    .line 3679
    invoke-interface {v12, v13, v14, v7, v2}, Landroid/app/IApplicationThread;->dumpActivity(Ljava/io/FileDescriptor;Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;)V

    #@100
    .line 3683
    const-wide/16 v12, 0x7d0

    #@102
    invoke-virtual {v11, p0, v12, v13}, Lcom/android/internal/os/TransferPipe;->go(Ljava/io/FileDescriptor;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@105
    .line 3685
    :try_start_2
    invoke-virtual {v11}, Lcom/android/internal/os/TransferPipe;->kill()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    #@108
    .line 3692
    .end local v11    # "tp":Lcom/android/internal/os/TransferPipe;
    :goto_6
    const/16 p9, 0x1

    #@10a
    .line 3622
    .end local v5    # "full":Z
    :cond_8
    add-int/lit8 v6, v6, -0x1

    #@10c
    goto/16 :goto_0

    #@10e
    .line 3632
    :cond_9
    const/4 v5, 0x1

    #@10f
    .restart local v5    # "full":Z
    goto/16 :goto_1

    #@111
    .line 3648
    .restart local v8    # "lastTask":Lcom/android/server/am/TaskRecord;
    :cond_a
    const-string/jumbo v12, "  "

    #@114
    goto/16 :goto_2

    #@116
    .line 3652
    :cond_b
    if-eqz p5, :cond_6

    #@118
    .line 3654
    iget-object v12, v8, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    #@11a
    if-eqz v12, :cond_6

    #@11c
    .line 3655
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
    .line 3656
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
    .line 3660
    .end local v8    # "lastTask":Lcom/android/server/am/TaskRecord;
    :cond_c
    const-string/jumbo v12, "    "

    #@13b
    goto/16 :goto_4

    #@13d
    .line 3665
    :cond_d
    if-eqz p5, :cond_7

    #@13f
    .line 3667
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
    .line 3668
    iget-object v12, v10, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@151
    if-eqz v12, :cond_7

    #@153
    .line 3669
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
    .line 3684
    .restart local v11    # "tp":Lcom/android/internal/os/TransferPipe;
    :catchall_0
    move-exception v12

    #@162
    .line 3685
    :try_start_3
    invoke-virtual {v11}, Lcom/android/internal/os/TransferPipe;->kill()V

    #@165
    .line 3684
    throw v12
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    #@166
    .line 3687
    .end local v11    # "tp":Lcom/android/internal/os/TransferPipe;
    :catch_0
    move-exception v4

    #@167
    .line 3688
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
    .line 3689
    .end local v4    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v3

    #@186
    .line 3690
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
    .line 3695
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v5    # "full":Z
    .end local v10    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_e
    return v9
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
    .line 1717
    if-nez p1, :cond_0

    #@4
    .line 1718
    return v7

    #@5
    .line 1721
    :cond_0
    sget-object v4, Lcom/android/server/am/ActivityStackSupervisor;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    #@7
    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    move-result-object v3

    #@b
    check-cast v3, Ljava/lang/String;

    #@d
    .line 1722
    .local v3, "permission":Ljava/lang/String;
    if-nez v3, :cond_1

    #@f
    .line 1723
    return v7

    #@10
    .line 1728
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
    .line 1729
    const/16 v5, 0x1000

    #@1a
    .line 1728
    invoke-virtual {v4, p2, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@1d
    move-result-object v2

    #@1e
    .line 1735
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    #@20
    invoke-static {v4, v3}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    #@23
    move-result v4

    #@24
    if-nez v4, :cond_2

    #@26
    .line 1736
    return v7

    #@27
    .line 1730
    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    #@28
    .line 1731
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v4, "ActivityManager"

    #@2b
    new-instance v5, Ljava/lang/StringBuilder;

    #@2d
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@30
    const-string/jumbo v6, "Cannot find package info for "

    #@33
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v5

    #@37
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v5

    #@3b
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v5

    #@3f
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@42
    .line 1732
    return v7

    #@43
    .line 1739
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_2
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@45
    invoke-virtual {v4, v3, p3, p4}, Lcom/android/server/am/ActivityManagerService;->checkPermission(Ljava/lang/String;II)I

    #@48
    move-result v4

    #@49
    if-ne v4, v6, :cond_3

    #@4b
    .line 1741
    const/4 v4, 0x1

    #@4c
    return v4

    #@4d
    .line 1744
    :cond_3
    invoke-static {v3}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    #@50
    move-result v1

    #@51
    .line 1745
    .local v1, "opCode":I
    if-ne v1, v6, :cond_4

    #@53
    .line 1746
    return v7

    #@54
    .line 1749
    :cond_4
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@56
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/AppOpsService;

    #@58
    invoke-virtual {v4, v1, p4, p2}, Lcom/android/server/AppOpsService;->noteOperation(IILjava/lang/String;)I

    #@5b
    move-result v4

    #@5c
    if-eqz v4, :cond_5

    #@5e
    .line 1751
    const/4 v4, 0x2

    #@5f
    return v4

    #@60
    .line 1754
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
    .line 1690
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    #@4
    if-nez v0, :cond_0

    #@6
    .line 1691
    return v7

    #@7
    .line 1694
    :cond_0
    if-nez p5, :cond_1

    #@9
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@b
    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    #@d
    .line 1695
    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@f
    iget v4, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    #@11
    iget-boolean v5, p1, Landroid/content/pm/ActivityInfo;->exported:Z

    #@13
    move v2, p3

    #@14
    move v3, p4

    #@15
    .line 1694
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    #@18
    move-result v0

    #@19
    if-ne v0, v8, :cond_1

    #@1b
    .line 1697
    const/4 v0, 0x1

    #@1c
    return v0

    #@1d
    .line 1700
    :cond_1
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    #@1f
    invoke-static {v0}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    #@22
    move-result v6

    #@23
    .line 1701
    .local v6, "opCode":I
    if-ne v6, v8, :cond_2

    #@25
    .line 1702
    return v7

    #@26
    .line 1705
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
    .line 1707
    if-nez p5, :cond_3

    #@32
    .line 1708
    const/4 v0, 0x2

    #@33
    return v0

    #@34
    .line 1712
    :cond_3
    return v7
.end method

.method private getDevicePolicyManager()Landroid/app/admin/IDevicePolicyManager;
    .locals 3

    #@0
    .prologue
    .line 374
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@2
    monitor-enter v1

    #@3
    .line 375
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 377
    const-string/jumbo v0, "device_policy"

    #@a
    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    #@d
    move-result-object v0

    #@e
    .line 376
    invoke-static {v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    #@11
    move-result-object v0

    #@12
    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    #@14
    .line 378
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    #@16
    if-nez v0, :cond_0

    #@18
    .line 379
    const-string/jumbo v0, "ActivityManager"

    #@1b
    const-string/jumbo v2, "warning: no DEVICE_POLICY_SERVICE"

    #@1e
    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@21
    .line 382
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    monitor-exit v1

    #@24
    return-object v0

    #@25
    .line 374
    :catchall_0
    move-exception v0

    #@26
    monitor-exit v1

    #@27
    throw v0
.end method

.method private getStackInfoLocked(Lcom/android/server/am/ActivityStack;)Landroid/app/ActivityManager$StackInfo;
    .locals 10
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;

    #@0
    .prologue
    .line 3792
    new-instance v1, Landroid/app/ActivityManager$StackInfo;

    #@2
    invoke-direct {v1}, Landroid/app/ActivityManager$StackInfo;-><init>()V

    #@5
    .line 3793
    .local v1, "info":Landroid/app/ActivityManager$StackInfo;
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@7
    iget v8, p1, Lcom/android/server/am/ActivityStack;->mStackId:I

    #@9
    iget-object v9, v1, Landroid/app/ActivityManager$StackInfo;->bounds:Landroid/graphics/Rect;

    #@b
    invoke-virtual {v7, v8, v9}, Lcom/android/server/wm/WindowManagerService;->getStackBounds(ILandroid/graphics/Rect;)V

    #@e
    .line 3794
    const/4 v7, 0x0

    #@f
    iput v7, v1, Landroid/app/ActivityManager$StackInfo;->displayId:I

    #@11
    .line 3795
    iget v7, p1, Lcom/android/server/am/ActivityStack;->mStackId:I

    #@13
    iput v7, v1, Landroid/app/ActivityManager$StackInfo;->stackId:I

    #@15
    .line 3797
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    #@18
    move-result-object v6

    #@19
    .line 3798
    .local v6, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@1c
    move-result v2

    #@1d
    .line 3799
    .local v2, "numTasks":I
    new-array v4, v2, [I

    #@1f
    .line 3800
    .local v4, "taskIds":[I
    new-array v5, v2, [Ljava/lang/String;

    #@21
    .line 3801
    .local v5, "taskNames":[Ljava/lang/String;
    const/4 v0, 0x0

    #@22
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_3

    #@24
    .line 3802
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@27
    move-result-object v3

    #@28
    check-cast v3, Lcom/android/server/am/TaskRecord;

    #@2a
    .line 3803
    .local v3, "task":Lcom/android/server/am/TaskRecord;
    iget v7, v3, Lcom/android/server/am/TaskRecord;->taskId:I

    #@2c
    aput v7, v4, v0

    #@2e
    .line 3804
    iget-object v7, v3, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    #@30
    if-eqz v7, :cond_0

    #@32
    iget-object v7, v3, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    #@34
    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    #@37
    move-result-object v7

    #@38
    :goto_1
    aput-object v7, v5, v0

    #@3a
    .line 3801
    add-int/lit8 v0, v0, 0x1

    #@3c
    goto :goto_0

    #@3d
    .line 3805
    :cond_0
    iget-object v7, v3, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    #@3f
    if-eqz v7, :cond_1

    #@41
    iget-object v7, v3, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    #@43
    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    #@46
    move-result-object v7

    #@47
    goto :goto_1

    #@48
    .line 3806
    :cond_1
    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    #@4b
    move-result-object v7

    #@4c
    if-eqz v7, :cond_2

    #@4e
    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    #@51
    move-result-object v7

    #@52
    iget-object v7, v7, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    #@54
    goto :goto_1

    #@55
    .line 3807
    :cond_2
    const-string/jumbo v7, "unknown"

    #@58
    goto :goto_1

    #@59
    .line 3809
    .end local v3    # "task":Lcom/android/server/am/TaskRecord;
    :cond_3
    iput-object v4, v1, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    #@5b
    .line 3810
    iput-object v5, v1, Landroid/app/ActivityManager$StackInfo;->taskNames:[Ljava/lang/String;

    #@5d
    .line 3811
    return-object v1
.end method

.method private getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    .locals 3

    #@0
    .prologue
    .line 361
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@2
    monitor-enter v1

    #@3
    .line 362
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 364
    const-string/jumbo v0, "statusbar"

    #@a
    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    #@d
    move-result-object v0

    #@e
    .line 363
    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    #@11
    move-result-object v0

    #@12
    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    #@14
    .line 365
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    #@16
    if-nez v0, :cond_0

    #@18
    .line 366
    const-string/jumbo v0, "StatusBarManager"

    #@1b
    const-string/jumbo v2, "warning: no STATUS_BAR_SERVICE"

    #@1e
    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@21
    .line 369
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    monitor-exit v1

    #@24
    return-object v0

    #@25
    .line 361
    :catchall_0
    move-exception v0

    #@26
    monitor-exit v1

    #@27
    throw v0
.end method

.method private handleDisplayAdded(I)V
    .locals 6
    .param p1, "displayId"    # I

    #@0
    .prologue
    .line 3751
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@2
    monitor-enter v3

    #@3
    .line 3752
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    #@5
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@8
    move-result-object v2

    #@9
    if-nez v2, :cond_0

    #@b
    const/4 v1, 0x1

    #@c
    .line 3753
    .local v1, "newDisplay":Z
    :goto_0
    if-eqz v1, :cond_2

    #@e
    .line 3754
    new-instance v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    #@10
    invoke-direct {v0, p0, p1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;-><init>(Lcom/android/server/am/ActivityStackSupervisor;I)V

    #@13
    .line 3755
    .local v0, "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplay:Landroid/view/Display;

    #@15
    if-nez v2, :cond_1

    #@17
    .line 3756
    const-string/jumbo v2, "ActivityManager"

    #@1a
    new-instance v4, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v5, "Display "

    #@22
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v4

    #@26
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@29
    move-result-object v4

    #@2a
    const-string/jumbo v5, " gone before initialization complete"

    #@2d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v4

    #@31
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v4

    #@35
    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@38
    monitor-exit v3

    #@39
    .line 3757
    return-void

    #@3a
    .line 3752
    .end local v0    # "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    .end local v1    # "newDisplay":Z
    :cond_0
    const/4 v1, 0x0

    #@3b
    .restart local v1    # "newDisplay":Z
    goto :goto_0

    #@3c
    .line 3759
    .restart local v0    # "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    #@3e
    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@41
    .end local v0    # "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    :cond_2
    monitor-exit v3

    #@42
    .line 3762
    if-eqz v1, :cond_3

    #@44
    .line 3763
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@46
    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowManagerService;->onDisplayAdded(I)V

    #@49
    .line 3749
    :cond_3
    return-void

    #@4a
    .line 3751
    .end local v1    # "newDisplay":Z
    :catchall_0
    move-exception v2

    #@4b
    monitor-exit v3

    #@4c
    throw v2
.end method

.method private handleDisplayChanged(I)V
    .locals 3
    .param p1, "displayId"    # I

    #@0
    .prologue
    .line 3782
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@2
    monitor-enter v2

    #@3
    .line 3783
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    #@5
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    .line 3784
    .local v0, "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    if-eqz v0, :cond_0

    #@d
    :cond_0
    monitor-exit v2

    #@e
    .line 3788
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@10
    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowManagerService;->onDisplayChanged(I)V

    #@13
    .line 3781
    return-void

    #@14
    .line 3782
    .end local v0    # "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    :catchall_0
    move-exception v1

    #@15
    monitor-exit v2

    #@16
    throw v1
.end method

.method private handleDisplayRemoved(I)V
    .locals 5
    .param p1, "displayId"    # I

    #@0
    .prologue
    .line 3768
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@2
    monitor-enter v4

    #@3
    .line 3769
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    #@5
    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    #@b
    .line 3770
    .local v0, "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    if-eqz v0, :cond_1

    #@d
    .line 3771
    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    #@f
    .line 3772
    .local v2, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@12
    move-result v3

    #@13
    add-int/lit8 v1, v3, -0x1

    #@15
    .local v1, "stackNdx":I
    :goto_0
    if-ltz v1, :cond_0

    #@17
    .line 3773
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1a
    move-result-object v3

    #@1b
    check-cast v3, Lcom/android/server/am/ActivityStack;

    #@1d
    iget-object v3, v3, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    #@1f
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->detachLocked()V

    #@22
    .line 3772
    add-int/lit8 v1, v1, -0x1

    #@24
    goto :goto_0

    #@25
    .line 3775
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    #@27
    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2a
    .end local v1    # "stackNdx":I
    .end local v2    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_1
    monitor-exit v4

    #@2b
    .line 3778
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@2d
    invoke-virtual {v3, p1}, Lcom/android/server/wm/WindowManagerService;->onDisplayRemoved(I)V

    #@30
    .line 3767
    return-void

    #@31
    .line 3768
    .end local v0    # "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    :catchall_0
    move-exception v3

    #@32
    monitor-exit v4

    #@33
    throw v3
.end method

.method private isLeanbackOnlyDevice()Z
    .locals 4

    #@0
    .prologue
    .line 4595
    const/4 v1, 0x0

    #@1
    .line 4597
    .local v1, "onLeanbackOnly":Z
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@4
    move-result-object v2

    #@5
    .line 4598
    const-string/jumbo v3, "android.software.leanback_only"

    #@8
    .line 4597
    invoke-interface {v2, v3}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result v1

    #@c
    .line 4603
    .end local v1    # "onLeanbackOnly":Z
    :goto_0
    return v1

    #@d
    .line 4599
    .restart local v1    # "onLeanbackOnly":Z
    :catch_0
    move-exception v0

    #@e
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private lockTaskModeToString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 3503
    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeState:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 3510
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
    .line 3505
    :pswitch_0
    const-string/jumbo v0, "LOCKED"

    #@1f
    return-object v0

    #@20
    .line 3507
    :pswitch_1
    const-string/jumbo v0, "PINNED"

    #@23
    return-object v0

    #@24
    .line 3509
    :pswitch_2
    const-string/jumbo v0, "NONE"

    #@27
    return-object v0

    #@28
    .line 3503
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
    .line 3539
    if-eqz p1, :cond_2

    #@2
    .line 3540
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
    .line 3541
    :cond_0
    if-eqz p3, :cond_1

    #@e
    .line 3542
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    #@11
    .line 3544
    :cond_1
    invoke-virtual {p0, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@14
    .line 3545
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@17
    .line 3546
    const/4 v0, 0x1

    #@18
    return v0

    #@19
    .line 3549
    :cond_2
    const/4 v0, 0x0

    #@1a
    return v0
.end method

.method private restoreRecentTaskLocked(Lcom/android/server/am/TaskRecord;)Z
    .locals 21
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    #@0
    .prologue
    .line 2964
    const/16 v18, 0x0

    #@2
    .line 2966
    .local v18, "stack":Lcom/android/server/am/ActivityStack;
    move-object/from16 v0, p0

    #@4
    iget-boolean v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mLeanbackOnlyDevice:Z

    #@6
    if-eqz v2, :cond_2

    #@8
    .line 2968
    move-object/from16 v0, p0

    #@a
    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    #@c
    move-object/from16 v18, v0

    #@e
    .line 2981
    .end local v18    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_0
    :goto_0
    if-nez v18, :cond_1

    #@10
    .line 2985
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->getNextStackId()I

    #@13
    move-result v2

    #@14
    const/4 v3, 0x0

    #@15
    move-object/from16 v0, p0

    #@17
    invoke-virtual {v0, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->createStackOnDisplay(II)Lcom/android/server/am/ActivityStack;

    #@1a
    move-result-object v18

    #@1b
    .line 2987
    .local v18, "stack":Lcom/android/server/am/ActivityStack;
    const-string/jumbo v2, "restoreRecentTask"

    #@1e
    const/4 v3, 0x1

    #@1f
    move-object/from16 v0, p0

    #@21
    invoke-virtual {v0, v3, v2}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStack(ZLjava/lang/String;)V

    #@24
    .line 2992
    .end local v18    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_1
    if-nez v18, :cond_4

    #@26
    .line 2996
    const/4 v2, 0x0

    #@27
    return v2

    #@28
    .line 2971
    .local v18, "stack":Lcom/android/server/am/ActivityStack;
    :cond_2
    move-object/from16 v0, p0

    #@2a
    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    #@2c
    iget-object v0, v2, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    #@2e
    move-object/from16 v16, v0

    #@30
    .line 2972
    .local v16, "homeDisplayStacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    #@33
    move-result v2

    #@34
    add-int/lit8 v19, v2, -0x1

    #@36
    .local v19, "stackNdx":I
    :goto_1
    if-ltz v19, :cond_0

    #@38
    .line 2973
    move-object/from16 v0, v16

    #@3a
    move/from16 v1, v19

    #@3c
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@3f
    move-result-object v20

    #@40
    check-cast v20, Lcom/android/server/am/ActivityStack;

    #@42
    .line 2974
    .local v20, "tmpStack":Lcom/android/server/am/ActivityStack;
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    #@45
    move-result v2

    #@46
    if-nez v2, :cond_3

    #@48
    move-object/from16 v0, v20

    #@4a
    iget-boolean v2, v0, Lcom/android/server/am/ActivityStack;->mFullscreen:Z

    #@4c
    if-eqz v2, :cond_3

    #@4e
    .line 2975
    move-object/from16 v18, v20

    #@50
    .line 2976
    .local v18, "stack":Lcom/android/server/am/ActivityStack;
    goto :goto_0

    #@51
    .line 2972
    .local v18, "stack":Lcom/android/server/am/ActivityStack;
    :cond_3
    add-int/lit8 v19, v19, -0x1

    #@53
    goto :goto_1

    #@54
    .line 2999
    .end local v16    # "homeDisplayStacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    .end local v18    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v19    # "stackNdx":I
    .end local v20    # "tmpStack":Lcom/android/server/am/ActivityStack;
    :cond_4
    const/4 v2, 0x0

    #@55
    const/4 v3, 0x0

    #@56
    move-object/from16 v0, v18

    #@58
    move-object/from16 v1, p1

    #@5a
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStack;->addTask(Lcom/android/server/am/TaskRecord;ZZ)V

    #@5d
    .line 3002
    move-object/from16 v0, p1

    #@5f
    iget-object v14, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@61
    .line 3003
    .local v14, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    #@64
    move-result v2

    #@65
    add-int/lit8 v15, v2, -0x1

    #@67
    .local v15, "activityNdx":I
    :goto_2
    if-ltz v15, :cond_7

    #@69
    .line 3004
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@6c
    move-result-object v17

    #@6d
    check-cast v17, Lcom/android/server/am/ActivityRecord;

    #@6f
    .line 3005
    .local v17, "r":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p0

    #@71
    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@73
    move-object/from16 v0, v17

    #@75
    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@77
    move-object/from16 v0, p1

    #@79
    iget v5, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    #@7b
    move-object/from16 v0, v18

    #@7d
    iget v6, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    #@7f
    .line 3006
    move-object/from16 v0, v17

    #@81
    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@83
    iget v7, v3, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    #@85
    move-object/from16 v0, v17

    #@87
    iget-boolean v8, v0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    #@89
    .line 3007
    move-object/from16 v0, v17

    #@8b
    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@8d
    iget v3, v3, Landroid/content/pm/ActivityInfo;->flags:I

    #@8f
    and-int/lit16 v3, v3, 0x400

    #@91
    if-eqz v3, :cond_5

    #@93
    const/4 v9, 0x1

    #@94
    .line 3008
    :goto_3
    move-object/from16 v0, v17

    #@96
    iget v10, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    #@98
    move-object/from16 v0, v17

    #@9a
    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@9c
    iget v11, v3, Landroid/content/pm/ActivityInfo;->configChanges:I

    #@9e
    move-object/from16 v0, p1

    #@a0
    iget-object v3, v0, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    #@a2
    if-eqz v3, :cond_6

    #@a4
    const/4 v12, 0x1

    #@a5
    .line 3009
    :goto_4
    move-object/from16 v0, v17

    #@a7
    iget-boolean v13, v0, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    #@a9
    .line 3005
    const/4 v3, 0x0

    #@aa
    invoke-virtual/range {v2 .. v13}, Lcom/android/server/wm/WindowManagerService;->addAppToken(ILandroid/view/IApplicationToken;IIIZZIIZZ)V

    #@ad
    .line 3003
    add-int/lit8 v15, v15, -0x1

    #@af
    goto :goto_2

    #@b0
    .line 3007
    :cond_5
    const/4 v9, 0x0

    #@b1
    goto :goto_3

    #@b2
    .line 3008
    :cond_6
    const/4 v12, 0x0

    #@b3
    goto :goto_4

    #@b4
    .line 3011
    .end local v17    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_7
    const/4 v2, 0x1

    #@b5
    return v2
.end method


# virtual methods
.method acquireLaunchWakelock()V
    .locals 4

    #@0
    .prologue
    const/16 v1, 0x68

    #@2
    .line 2492
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    #@4
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    #@7
    .line 2493
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    #@9
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->hasMessages(I)Z

    #@c
    move-result v0

    #@d
    if-nez v0, :cond_0

    #@f
    .line 2495
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    #@11
    const-wide/16 v2, 0x2710

    #@13
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessageDelayed(IJ)Z

    #@16
    .line 2488
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
    .line 2522
    const/16 v17, 0x0

    #@2
    .line 2523
    .local v17, "stops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    const/4 v13, 0x0

    #@3
    .line 2524
    .local v13, "finishes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    const/16 v16, 0x0

    #@5
    .line 2525
    .local v16, "startingUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/UserState;>;"
    const/4 v10, 0x0

    #@6
    .line 2526
    .local v10, "NS":I
    const/4 v2, 0x0

    #@7
    .line 2527
    .local v2, "NF":I
    const/4 v12, 0x0

    #@8
    .line 2528
    .local v12, "booting":Z
    const/4 v11, 0x0

    #@9
    .line 2530
    .local v11, "activityRemoved":Z
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    #@c
    move-result-object v5

    #@d
    .line 2531
    .local v5, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v5, :cond_3

    #@f
    .line 2534
    move-object/from16 v0, p0

    #@11
    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    #@13
    const/16 v4, 0x64

    #@15
    invoke-virtual {v3, v4, v5}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->removeMessages(ILjava/lang/Object;)V

    #@18
    .line 2535
    invoke-virtual {v5}, Lcom/android/server/am/ActivityRecord;->finishLaunchTickingLocked()V

    #@1b
    .line 2536
    if-eqz p2, :cond_0

    #@1d
    .line 2537
    const-wide/16 v6, -0x1

    #@1f
    const-wide/16 v8, -0x1

    #@21
    move-object/from16 v3, p0

    #@23
    move/from16 v4, p2

    #@25
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/am/ActivityStackSupervisor;->reportActivityLaunchedLocked(ZLcom/android/server/am/ActivityRecord;JJ)V

    #@28
    .line 2545
    :cond_0
    if-eqz p3, :cond_1

    #@2a
    .line 2546
    move-object/from16 v0, p3

    #@2c
    iput-object v0, v5, Lcom/android/server/am/ActivityRecord;->configuration:Landroid/content/res/Configuration;

    #@2e
    .line 2551
    :cond_1
    const/4 v3, 0x1

    #@2f
    iput-boolean v3, v5, Lcom/android/server/am/ActivityRecord;->idle:Z

    #@31
    .line 2554
    iget-object v3, v5, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@33
    iget-object v3, v3, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@35
    move-object/from16 v0, p0

    #@37
    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    #@3a
    move-result v3

    #@3b
    if-nez v3, :cond_2

    #@3d
    if-eqz p2, :cond_3

    #@3f
    .line 2555
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->checkFinishBootingLocked()Z

    #@42
    move-result v12

    #@43
    .line 2559
    .end local v12    # "booting":Z
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->allResumedActivitiesIdle()Z

    #@46
    move-result v3

    #@47
    if-eqz v3, :cond_6

    #@49
    .line 2560
    if-eqz v5, :cond_4

    #@4b
    .line 2561
    move-object/from16 v0, p0

    #@4d
    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@4f
    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->scheduleAppGcsLocked()V

    #@52
    .line 2564
    :cond_4
    move-object/from16 v0, p0

    #@54
    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    #@56
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    #@59
    move-result v3

    #@5a
    if-eqz v3, :cond_5

    #@5c
    .line 2565
    move-object/from16 v0, p0

    #@5e
    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    #@60
    const/16 v4, 0x68

    #@62
    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->removeMessages(I)V

    #@65
    .line 2570
    move-object/from16 v0, p0

    #@67
    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    #@69
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    #@6c
    .line 2572
    :cond_5
    const/4 v3, 0x0

    #@6d
    const/4 v4, 0x0

    #@6e
    move-object/from16 v0, p0

    #@70
    invoke-virtual {v0, v3, v4}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V

    #@73
    .line 2576
    :cond_6
    const/4 v3, 0x1

    #@74
    move-object/from16 v0, p0

    #@76
    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityStackSupervisor;->processStoppingActivitiesLocked(Z)Ljava/util/ArrayList;

    #@79
    move-result-object v17

    #@7a
    .line 2577
    .local v17, "stops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    if-eqz v17, :cond_a

    #@7c
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    #@7f
    move-result v10

    #@80
    .line 2578
    :goto_0
    move-object/from16 v0, p0

    #@82
    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    #@84
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@87
    move-result v2

    #@88
    if-lez v2, :cond_7

    #@8a
    .line 2579
    new-instance v13, Ljava/util/ArrayList;

    #@8c
    .end local v13    # "finishes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    move-object/from16 v0, p0

    #@8e
    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    #@90
    invoke-direct {v13, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@93
    .line 2580
    .local v13, "finishes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    move-object/from16 v0, p0

    #@95
    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    #@97
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    #@9a
    .line 2583
    .end local v13    # "finishes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    :cond_7
    move-object/from16 v0, p0

    #@9c
    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mStartingUsers:Ljava/util/ArrayList;

    #@9e
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@a1
    move-result v3

    #@a2
    if-lez v3, :cond_8

    #@a4
    .line 2584
    new-instance v16, Ljava/util/ArrayList;

    #@a6
    .end local v16    # "startingUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/UserState;>;"
    move-object/from16 v0, p0

    #@a8
    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mStartingUsers:Ljava/util/ArrayList;

    #@aa
    move-object/from16 v0, v16

    #@ac
    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@af
    .line 2585
    .local v16, "startingUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/UserState;>;"
    move-object/from16 v0, p0

    #@b1
    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mStartingUsers:Ljava/util/ArrayList;

    #@b3
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    #@b6
    .line 2590
    .end local v16    # "startingUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/UserState;>;"
    :cond_8
    const/4 v14, 0x0

    #@b7
    .local v14, "i":I
    :goto_1
    if-ge v14, v10, :cond_c

    #@b9
    .line 2591
    move-object/from16 v0, v17

    #@bb
    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@be
    move-result-object v5

    #@bf
    .end local v5    # "r":Lcom/android/server/am/ActivityRecord;
    check-cast v5, Lcom/android/server/am/ActivityRecord;

    #@c1
    .line 2592
    .restart local v5    # "r":Lcom/android/server/am/ActivityRecord;
    iget-object v3, v5, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@c3
    iget-object v15, v3, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@c5
    .line 2593
    .local v15, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v15, :cond_9

    #@c7
    .line 2594
    iget-boolean v3, v5, Lcom/android/server/am/ActivityRecord;->finishing:Z

    #@c9
    if-eqz v3, :cond_b

    #@cb
    .line 2595
    const/4 v3, 0x0

    #@cc
    const/4 v4, 0x0

    #@cd
    invoke-virtual {v15, v5, v3, v4}, Lcom/android/server/am/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Lcom/android/server/am/ActivityRecord;

    #@d0
    .line 2590
    :cond_9
    :goto_2
    add-int/lit8 v14, v14, 0x1

    #@d2
    goto :goto_1

    #@d3
    .line 2577
    .end local v14    # "i":I
    .end local v15    # "stack":Lcom/android/server/am/ActivityStack;
    .local v13, "finishes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .local v16, "startingUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/UserState;>;"
    :cond_a
    const/4 v10, 0x0

    #@d4
    goto :goto_0

    #@d5
    .line 2597
    .end local v13    # "finishes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v16    # "startingUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/UserState;>;"
    .restart local v14    # "i":I
    .restart local v15    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_b
    invoke-virtual {v15, v5}, Lcom/android/server/am/ActivityStack;->stopActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    #@d8
    goto :goto_2

    #@d9
    .line 2604
    .end local v15    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_c
    const/4 v14, 0x0

    #@da
    .end local v11    # "activityRemoved":Z
    :goto_3
    if-ge v14, v2, :cond_e

    #@dc
    .line 2605
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@df
    move-result-object v5

    #@e0
    .end local v5    # "r":Lcom/android/server/am/ActivityRecord;
    check-cast v5, Lcom/android/server/am/ActivityRecord;

    #@e2
    .line 2606
    .restart local v5    # "r":Lcom/android/server/am/ActivityRecord;
    iget-object v3, v5, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@e4
    iget-object v15, v3, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@e6
    .line 2607
    .restart local v15    # "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v15, :cond_d

    #@e8
    .line 2608
    const-string/jumbo v3, "finish-idle"

    #@eb
    const/4 v4, 0x1

    #@ec
    invoke-virtual {v15, v5, v4, v3}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z

    #@ef
    move-result v3

    #@f0
    or-int/2addr v11, v3

    #@f1
    .line 2604
    :cond_d
    add-int/lit8 v14, v14, 0x1

    #@f3
    goto :goto_3

    #@f4
    .line 2612
    .end local v15    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_e
    if-nez v12, :cond_10

    #@f6
    .line 2614
    if-eqz v16, :cond_f

    #@f8
    .line 2615
    const/4 v14, 0x0

    #@f9
    :goto_4
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    #@fc
    move-result v3

    #@fd
    if-ge v14, v3, :cond_f

    #@ff
    .line 2616
    move-object/from16 v0, p0

    #@101
    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@103
    move-object/from16 v0, v16

    #@105
    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@108
    move-result-object v3

    #@109
    check-cast v3, Lcom/android/server/am/UserState;

    #@10b
    invoke-virtual {v4, v3}, Lcom/android/server/am/ActivityManagerService;->finishUserSwitch(Lcom/android/server/am/UserState;)V

    #@10e
    .line 2615
    add-int/lit8 v14, v14, 0x1

    #@110
    goto :goto_4

    #@111
    .line 2620
    :cond_f
    move-object/from16 v0, p0

    #@113
    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mStartingBackgroundUsers:Ljava/util/ArrayList;

    #@115
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@118
    move-result v3

    #@119
    if-lez v3, :cond_10

    #@11b
    .line 2621
    new-instance v16, Ljava/util/ArrayList;

    #@11d
    move-object/from16 v0, p0

    #@11f
    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mStartingBackgroundUsers:Ljava/util/ArrayList;

    #@121
    move-object/from16 v0, v16

    #@123
    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@126
    .line 2622
    .local v16, "startingUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/UserState;>;"
    move-object/from16 v0, p0

    #@128
    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mStartingBackgroundUsers:Ljava/util/ArrayList;

    #@12a
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    #@12d
    .line 2623
    const/4 v14, 0x0

    #@12e
    :goto_5
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    #@131
    move-result v3

    #@132
    if-ge v14, v3, :cond_10

    #@134
    .line 2624
    move-object/from16 v0, p0

    #@136
    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@138
    move-object/from16 v0, v16

    #@13a
    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@13d
    move-result-object v3

    #@13e
    check-cast v3, Lcom/android/server/am/UserState;

    #@140
    invoke-virtual {v4, v3}, Lcom/android/server/am/ActivityManagerService;->finishUserBoot(Lcom/android/server/am/UserState;)V

    #@143
    .line 2623
    add-int/lit8 v14, v14, 0x1

    #@145
    goto :goto_5

    #@146
    .line 2629
    .end local v16    # "startingUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/UserState;>;"
    :cond_10
    move-object/from16 v0, p0

    #@148
    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@14a
    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->trimApplications()V

    #@14d
    .line 2633
    if-eqz v11, :cond_11

    #@14f
    .line 2634
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked()Z

    #@152
    .line 2637
    :cond_11
    return-object v5
.end method

.method activitySleptLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 1
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    #@0
    .prologue
    .line 3145
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@5
    .line 3146
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->checkReadyForSleepLocked()V

    #@8
    .line 3144
    return-void
.end method

.method allPausedActivitiesComplete()Z
    .locals 9

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 724
    const/4 v1, 0x1

    #@2
    .line 725
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
    .line 726
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
    .line 727
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
    .line 728
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@21
    move-result-object v3

    #@22
    check-cast v3, Lcom/android/server/am/ActivityStack;

    #@24
    .line 729
    .local v3, "stack":Lcom/android/server/am/ActivityStack;
    iget-object v2, v3, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    #@26
    .line 730
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
    .line 736
    return v8

    #@3b
    .line 727
    :cond_0
    add-int/lit8 v4, v4, -0x1

    #@3d
    goto :goto_1

    #@3e
    .line 725
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v3    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    #@40
    goto :goto_0

    #@41
    .line 741
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
    .line 663
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
    .line 664
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
    .line 665
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
    .line 666
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@20
    move-result-object v2

    #@21
    check-cast v2, Lcom/android/server/am/ActivityStack;

    #@23
    .line 667
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    #@26
    move-result v5

    #@27
    if-eqz v5, :cond_0

    #@29
    .line 668
    iget-object v1, v2, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    #@2b
    .line 669
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_0

    #@2d
    iget-object v5, v1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    #@2f
    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    #@31
    if-eq v5, v6, :cond_0

    #@33
    .line 670
    return v7

    #@34
    .line 665
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_0
    add-int/lit8 v3, v3, -0x1

    #@36
    goto :goto_1

    #@37
    .line 663
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    #@39
    goto :goto_0

    #@3a
    .line 679
    .end local v3    # "stackNdx":I
    .end local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_2
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    #@3c
    iput-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLastFocusedStack:Lcom/android/server/am/ActivityStack;

    #@3e
    .line 680
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
    .line 644
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
    .line 645
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
    .line 646
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
    .line 647
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@20
    move-result-object v2

    #@21
    check-cast v2, Lcom/android/server/am/ActivityStack;

    #@23
    .line 648
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

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
    .line 646
    :cond_0
    add-int/lit8 v3, v3, -0x1

    #@31
    goto :goto_1

    #@32
    .line 651
    :cond_1
    iget-object v1, v2, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    #@34
    .line 652
    .local v1, "resumedActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_2

    #@36
    iget-boolean v5, v1, Lcom/android/server/am/ActivityRecord;->idle:Z

    #@38
    if-nez v5, :cond_0

    #@3a
    .line 655
    :cond_2
    return v6

    #@3b
    .line 644
    .end local v1    # "resumedActivity":Lcom/android/server/am/ActivityRecord;
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_3
    add-int/lit8 v0, v0, -0x1

    #@3d
    goto :goto_0

    #@3e
    .line 659
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
    .line 684
    const/4 v1, 0x0

    #@2
    .line 685
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
    .line 686
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
    .line 687
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
    .line 688
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@21
    move-result-object v3

    #@22
    check-cast v3, Lcom/android/server/am/ActivityStack;

    #@24
    .line 689
    .local v3, "stack":Lcom/android/server/am/ActivityStack;
    iget-object v2, v3, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    #@26
    .line 690
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_2

    #@28
    .line 691
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
    .line 692
    :cond_0
    return v7

    #@35
    .line 694
    :cond_1
    const/4 v1, 0x1

    #@36
    .line 687
    :cond_2
    add-int/lit8 v4, v4, -0x1

    #@38
    goto :goto_1

    #@39
    .line 685
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v3    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_3
    add-int/lit8 v0, v0, -0x1

    #@3b
    goto :goto_0

    #@3c
    .line 698
    .end local v4    # "stackNdx":I
    .end local v5    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_4
    return v1
.end method

.method anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;
    .locals 1
    .param p1, "id"    # I

    #@0
    .prologue
    .line 522
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(IZ)Lcom/android/server/am/TaskRecord;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method anyTaskForIdLocked(IZ)Lcom/android/server/am/TaskRecord;
    .locals 8
    .param p1, "id"    # I
    .param p2, "restoreFromRecents"    # Z

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 532
    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    #@3
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    #@6
    move-result v1

    #@7
    .line 533
    .local v1, "numDisplays":I
    const/4 v0, 0x0

    #@8
    .local v0, "displayNdx":I
    :goto_0
    if-ge v0, v1, :cond_2

    #@a
    .line 534
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
    .line 535
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
    .line 536
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1f
    move-result-object v2

    #@20
    check-cast v2, Lcom/android/server/am/ActivityStack;

    #@22
    .line 537
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v2, p1}, Lcom/android/server/am/ActivityStack;->taskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    #@25
    move-result-object v5

    #@26
    .line 538
    .local v5, "task":Lcom/android/server/am/TaskRecord;
    if-eqz v5, :cond_0

    #@28
    .line 539
    return-object v5

    #@29
    .line 535
    :cond_0
    add-int/lit8 v3, v3, -0x1

    #@2b
    goto :goto_1

    #@2c
    .line 533
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v5    # "task":Lcom/android/server/am/TaskRecord;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@2e
    goto :goto_0

    #@2f
    .line 546
    .end local v3    # "stackNdx":I
    .end local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_2
    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    #@31
    invoke-virtual {v6, p1}, Lcom/android/server/am/RecentTasks;->taskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    #@34
    move-result-object v5

    #@35
    .line 547
    .restart local v5    # "task":Lcom/android/server/am/TaskRecord;
    if-nez v5, :cond_3

    #@37
    .line 549
    return-object v7

    #@38
    .line 552
    :cond_3
    if-nez p2, :cond_4

    #@3a
    .line 553
    return-object v5

    #@3b
    .line 556
    :cond_4
    invoke-direct {p0, v5}, Lcom/android/server/am/ActivityStackSupervisor;->restoreRecentTaskLocked(Lcom/android/server/am/TaskRecord;)Z

    #@3e
    move-result v6

    #@3f
    if-nez v6, :cond_5

    #@41
    .line 559
    return-object v7

    #@42
    .line 562
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
    .line 611
    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    #@4
    .line 612
    .local v4, "processName":Ljava/lang/String;
    const/4 v0, 0x0

    #@5
    .line 613
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
    .line 614
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
    .line 615
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
    .line 616
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@24
    move-result-object v5

    #@25
    check-cast v5, Lcom/android/server/am/ActivityStack;

    #@27
    .line 617
    .local v5, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {p0, v5}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    #@2a
    move-result v8

    #@2b
    if-nez v8, :cond_1

    #@2d
    .line 615
    :cond_0
    :goto_2
    add-int/lit8 v6, v6, -0x1

    #@2f
    goto :goto_1

    #@30
    .line 620
    :cond_1
    invoke-virtual {v5, v10}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    #@33
    move-result-object v3

    #@34
    .line 621
    .local v3, "hr":Lcom/android/server/am/ActivityRecord;
    if-eqz v3, :cond_0

    #@36
    .line 622
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
    .line 623
    iget-object v8, v3, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    #@46
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@49
    move-result v8

    #@4a
    .line 622
    if-eqz v8, :cond_0

    #@4c
    .line 625
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
    .line 626
    const/4 v0, 0x1

    #@55
    goto :goto_2

    #@56
    .line 628
    :catch_0
    move-exception v2

    #@57
    .line 629
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v8, "ActivityManager"

    #@5a
    new-instance v9, Ljava/lang/StringBuilder;

    #@5c
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@5f
    const-string/jumbo v10, "Exception in new application when starting activity "

    #@62
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v9

    #@66
    .line 630
    iget-object v10, v3, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    #@68
    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@6b
    move-result-object v10

    #@6c
    invoke-virtual {v10}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@6f
    move-result-object v10

    #@70
    .line 629
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v9

    #@74
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@77
    move-result-object v9

    #@78
    invoke-static {v8, v9, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@7b
    .line 631
    throw v2

    #@7c
    .line 613
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v3    # "hr":Lcom/android/server/am/ActivityRecord;
    .end local v5    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_2
    add-int/lit8 v1, v1, -0x1

    #@7e
    goto :goto_0

    #@7f
    .line 637
    .end local v6    # "stackNdx":I
    .end local v7    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_3
    if-nez v0, :cond_4

    #@81
    .line 638
    invoke-virtual {p0, v10, v11}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V

    #@84
    .line 640
    :cond_4
    return v0
.end method

.method checkReadyForSleepLocked()V
    .locals 5

    #@0
    .prologue
    .line 3150
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@2
    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->isSleepingOrShuttingDown()Z

    #@5
    move-result v4

    #@6
    if-nez v4, :cond_0

    #@8
    .line 3152
    return-void

    #@9
    .line 3155
    :cond_0
    iget-boolean v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mSleepTimeout:Z

    #@b
    if-nez v4, :cond_5

    #@d
    .line 3156
    const/4 v1, 0x0

    #@e
    .line 3157
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
    .line 3158
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
    .line 3159
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
    .line 3160
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
    .line 3159
    .local v1, "dontSleep":Z
    add-int/lit8 v2, v2, -0x1

    #@37
    goto :goto_1

    #@38
    .line 3157
    .end local v1    # "dontSleep":Z
    :cond_1
    add-int/lit8 v0, v0, -0x1

    #@3a
    goto :goto_0

    #@3b
    .line 3164
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
    .line 3168
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleLocked()V

    #@46
    .line 3169
    const/4 v1, 0x1

    #@47
    .line 3172
    :cond_3
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    #@49
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@4c
    move-result v4

    #@4d
    if-lez v4, :cond_4

    #@4f
    .line 3176
    const/4 v1, 0x1

    #@50
    .line 3179
    :cond_4
    if-eqz v1, :cond_5

    #@52
    .line 3180
    return-void

    #@53
    .line 3184
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
    .line 3185
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
    .line 3186
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
    .line 3187
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@72
    move-result-object v4

    #@73
    check-cast v4, Lcom/android/server/am/ActivityStack;

    #@75
    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->goToSleep()V

    #@78
    .line 3186
    add-int/lit8 v2, v2, -0x1

    #@7a
    goto :goto_3

    #@7b
    .line 3184
    :cond_6
    add-int/lit8 v0, v0, -0x1

    #@7d
    goto :goto_2

    #@7e
    .line 3191
    .end local v2    # "stackNdx":I
    .end local v3    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->removeSleepTimeouts()V

    #@81
    .line 3193
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    #@83
    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    #@86
    move-result v4

    #@87
    if-eqz v4, :cond_8

    #@89
    .line 3194
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    #@8b
    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    #@8e
    .line 3196
    :cond_8
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@90
    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mShuttingDown:Z

    #@92
    if-eqz v4, :cond_9

    #@94
    .line 3197
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@96
    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->notifyAll()V

    #@99
    .line 3149
    :cond_9
    return-void
.end method

.method clearOtherAppTimeTrackers(Lcom/android/server/am/AppTimeTracker;)V
    .locals 6
    .param p1, "except"    # Lcom/android/server/am/AppTimeTracker;

    #@0
    .prologue
    .line 3306
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
    .line 3307
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
    .line 3308
    .local v3, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@17
    move-result v5

    #@18
    add-int/lit8 v4, v5, -0x1

    #@1a
    .line 3309
    .local v4, "topStackNdx":I
    move v2, v4

    #@1b
    .local v2, "stackNdx":I
    :goto_1
    if-ltz v2, :cond_0

    #@1d
    .line 3310
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@20
    move-result-object v1

    #@21
    check-cast v1, Lcom/android/server/am/ActivityStack;

    #@23
    .line 3311
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityStack;->clearOtherAppTimeTrackers(Lcom/android/server/am/AppTimeTracker;)V

    #@26
    .line 3309
    add-int/lit8 v2, v2, -0x1

    #@28
    goto :goto_1

    #@29
    .line 3306
    .end local v1    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@2b
    goto :goto_0

    #@2c
    .line 3305
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
    .line 2652
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
    .line 2653
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
    .line 2654
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
    .line 2655
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1f
    move-result-object v3

    #@20
    check-cast v3, Lcom/android/server/am/ActivityStack;

    #@22
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->closeSystemDialogsLocked()V

    #@25
    .line 2654
    add-int/lit8 v1, v1, -0x1

    #@27
    goto :goto_1

    #@28
    .line 2652
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@2a
    goto :goto_0

    #@2b
    .line 2651
    .end local v1    # "stackNdx":I
    .end local v2    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_1
    return-void
.end method

.method comeOutOfSleepIfNeededLocked()V
    .locals 5

    #@0
    .prologue
    .line 3127
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->removeSleepTimeouts()V

    #@3
    .line 3128
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    #@5
    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    #@8
    move-result v4

    #@9
    if-eqz v4, :cond_0

    #@b
    .line 3129
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    #@d
    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    #@10
    .line 3131
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
    .line 3132
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
    .line 3133
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
    .line 3134
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2f
    move-result-object v1

    #@30
    check-cast v1, Lcom/android/server/am/ActivityStack;

    #@32
    .line 3135
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->awakeFromSleepingLocked()V

    #@35
    .line 3136
    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    #@38
    move-result v4

    #@39
    if-eqz v4, :cond_1

    #@3b
    .line 3137
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked()Z

    #@3e
    .line 3133
    :cond_1
    add-int/lit8 v2, v2, -0x1

    #@40
    goto :goto_1

    #@41
    .line 3131
    .end local v1    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_2
    add-int/lit8 v0, v0, -0x1

    #@43
    goto :goto_0

    #@44
    .line 3141
    .end local v2    # "stackNdx":I
    .end local v3    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_3
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    #@46
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    #@49
    .line 3126
    return-void
.end method

.method computeStackFocus(Lcom/android/server/am/ActivityRecord;Z)Lcom/android/server/am/ActivityStack;
    .locals 8
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "newTask"    # Z

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const/4 v6, 0x0

    #@2
    .line 1758
    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@4
    .line 1761
    .local v4, "task":Lcom/android/server/am/TaskRecord;
    iget-boolean v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLeanbackOnlyDevice:Z

    #@6
    if-nez v5, :cond_8

    #@8
    .line 1762
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isApplicationActivity()Z

    #@b
    move-result v5

    #@c
    if-nez v5, :cond_0

    #@e
    if-eqz v4, :cond_8

    #@10
    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->isApplicationTask()Z

    #@13
    move-result v5

    #@14
    .line 1761
    if-eqz v5, :cond_8

    #@16
    .line 1766
    :cond_0
    if-eqz v4, :cond_2

    #@18
    iget-object v5, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@1a
    if-eqz v5, :cond_2

    #@1c
    .line 1767
    iget-object v2, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@1e
    .line 1768
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->isOnHomeDisplay()Z

    #@21
    move-result v5

    #@22
    if-eqz v5, :cond_1

    #@24
    .line 1769
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    #@26
    if-eq v5, v2, :cond_1

    #@28
    .line 1778
    :cond_1
    return-object v2

    #@29
    .line 1781
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_2
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->mInitialActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    #@2b
    .line 1782
    .local v0, "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    if-eqz v0, :cond_3

    #@2d
    .line 1784
    iput-object v6, p1, Lcom/android/server/am/ActivityRecord;->mInitialActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    #@2f
    .line 1785
    iget-object v5, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStack:Lcom/android/server/am/ActivityStack;

    #@31
    return-object v5

    #@32
    .line 1788
    :cond_3
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    #@34
    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    #@36
    if-eq v5, v6, :cond_5

    #@38
    if-eqz p2, :cond_4

    #@3a
    .line 1789
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    #@3c
    iget-object v5, v5, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    #@3e
    invoke-virtual {v5}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->isEligibleForNewTasks()Z

    #@41
    move-result v5

    #@42
    .line 1788
    if-eqz v5, :cond_5

    #@44
    .line 1792
    :cond_4
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    #@46
    return-object v5

    #@47
    .line 1795
    :cond_5
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    #@49
    iget-object v1, v5, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    #@4b
    .line 1796
    .local v1, "homeDisplayStacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@4e
    move-result v5

    #@4f
    add-int/lit8 v3, v5, -0x1

    #@51
    .local v3, "stackNdx":I
    :goto_0
    if-ltz v3, :cond_7

    #@53
    .line 1797
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@56
    move-result-object v2

    #@57
    check-cast v2, Lcom/android/server/am/ActivityStack;

    #@59
    .line 1798
    .restart local v2    # "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    #@5c
    move-result v5

    #@5d
    if-nez v5, :cond_6

    #@5f
    .line 1801
    return-object v2

    #@60
    .line 1796
    :cond_6
    add-int/lit8 v3, v3, -0x1

    #@62
    goto :goto_0

    #@63
    .line 1806
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getNextStackId()I

    #@66
    move-result v5

    #@67
    invoke-virtual {p0, v5, v7}, Lcom/android/server/am/ActivityStackSupervisor;->createStackOnDisplay(II)Lcom/android/server/am/ActivityStack;

    #@6a
    move-result-object v2

    #@6b
    .line 1809
    .restart local v2    # "stack":Lcom/android/server/am/ActivityStack;
    return-object v2

    #@6c
    .line 1811
    .end local v0    # "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    .end local v1    # "homeDisplayStacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v3    # "stackNdx":I
    :cond_8
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    #@6e
    return-object v5
.end method

.method createStackOnDisplay(II)Lcom/android/server/am/ActivityStack;
    .locals 4
    .param p1, "stackId"    # I
    .param p2, "displayId"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 2940
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    #@3
    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@6
    move-result-object v1

    #@7
    check-cast v1, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    #@9
    .line 2941
    .local v1, "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    if-nez v1, :cond_0

    #@b
    .line 2942
    return-object v3

    #@c
    .line 2945
    :cond_0
    new-instance v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    #@e
    invoke-direct {v0, p0, p1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;-><init>(Lcom/android/server/am/ActivityStackSupervisor;I)V

    #@11
    .line 2946
    .local v0, "activityContainer":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityContainers:Landroid/util/SparseArray;

    #@13
    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@16
    .line 2947
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->attachToDisplayLocked(Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;)V

    #@19
    .line 2948
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
    .line 2841
    new-instance v0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;

    #@2
    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;-><init>(Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/ActivityRecord;Landroid/app/IActivityContainerCallback;)V

    #@5
    .line 2842
    .local v0, "activityContainer":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityContainers:Landroid/util/SparseArray;

    #@7
    iget v2, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStackId:I

    #@9
    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@c
    .line 2845
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->mChildContainers:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@11
    .line 2846
    return-object v0
.end method

.method deleteActivityContainer(Landroid/app/IActivityContainer;)V
    .locals 3
    .param p1, "container"    # Landroid/app/IActivityContainer;

    #@0
    .prologue
    move-object v0, p1

    #@1
    .line 2860
    check-cast v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    #@3
    .line 2861
    .local v0, "activityContainer":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    if-eqz v0, :cond_0

    #@5
    .line 2864
    iget v1, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStackId:I

    #@7
    .line 2865
    .local v1, "stackId":I
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityContainers:Landroid/util/SparseArray;

    #@9
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->remove(I)V

    #@c
    .line 2866
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@e
    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowManagerService;->removeStack(I)V

    #@11
    .line 2859
    .end local v1    # "stackId":I
    :cond_0
    return-void
.end method

.method final doPendingActivityLaunchesLocked(Z)V
    .locals 11
    .param p1, "doResume"    # Z

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 2468
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPendingActivityLaunches:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_1

    #@a
    .line 2469
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPendingActivityLaunches:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@f
    move-result-object v9

    #@10
    check-cast v9, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;

    #@12
    .line 2470
    .local v9, "pal":Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;
    iget-object v1, v9, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;->r:Lcom/android/server/am/ActivityRecord;

    #@14
    iget-object v2, v9, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;->sourceRecord:Lcom/android/server/am/ActivityRecord;

    #@16
    iget v5, v9, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;->startFlags:I

    #@18
    .line 2471
    if-eqz p1, :cond_0

    #@1a
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPendingActivityLaunches:Ljava/util/ArrayList;

    #@1c
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    #@1f
    move-result v6

    #@20
    :goto_1
    move-object v0, p0

    #@21
    move-object v4, v3

    #@22
    move-object v7, v3

    #@23
    move-object v8, v3

    #@24
    .line 2470
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/ActivityStackSupervisor;->startActivityUncheckedLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;IZLandroid/os/Bundle;Lcom/android/server/am/TaskRecord;)I

    #@27
    goto :goto_0

    #@28
    :cond_0
    move v6, v10

    #@29
    .line 2471
    goto :goto_1

    #@2a
    .line 2467
    .end local v9    # "pal":Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;
    :cond_1
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3515
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
    .line 3516
    const-string/jumbo v2, " mLastFocusedStack="

    #@1f
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@22
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLastFocusedStack:Lcom/android/server/am/ActivityStack;

    #@24
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@27
    .line 3517
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
    .line 3518
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@46
    new-instance v2, Ljava/lang/StringBuilder;

    #@48
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@4b
    const-string/jumbo v3, "mCurTaskId="

    #@4e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v2

    #@52
    iget v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurTaskId:I

    #@54
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@57
    move-result-object v2

    #@58
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5b
    move-result-object v2

    #@5c
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@5f
    .line 3519
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
    .line 3520
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
    .line 3521
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
    .line 3522
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@b7
    iget-object v1, v2, Lcom/android/server/am/ActivityManagerService;->mLockTaskPackages:Landroid/util/SparseArray;

    #@b9
    .line 3523
    .local v1, "packages":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    #@bc
    move-result v2

    #@bd
    if-lez v2, :cond_0

    #@bf
    .line 3524
    const-string/jumbo v2, " mLockTaskPackages (userId:packages)="

    #@c2
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@c5
    .line 3525
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
    .line 3526
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
    .line 3527
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
    .line 3525
    add-int/lit8 v0, v0, 0x1

    #@ee
    goto :goto_0

    #@ef
    .line 3530
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
    .line 3514
    return-void
.end method

.method dumpActivitiesLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZZLjava/lang/String;)Z
    .locals 28
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "dumpAll"    # Z
    .param p4, "dumpClient"    # Z
    .param p5, "dumpPackage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3554
    const/16 v24, 0x0

    #@2
    .line 3555
    .local v24, "printed":Z
    const/4 v8, 0x0

    #@3
    .line 3556
    .local v8, "needSep":Z
    const/16 v22, 0x0

    #@5
    .end local v8    # "needSep":Z
    .end local v24    # "printed":Z
    .local v22, "displayNdx":I
    :goto_0
    move-object/from16 v0, p0

    #@7
    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    #@9
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    #@c
    move-result v3

    #@d
    move/from16 v0, v22

    #@f
    if-ge v0, v3, :cond_6

    #@11
    .line 3557
    move-object/from16 v0, p0

    #@13
    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    #@15
    move/from16 v0, v22

    #@17
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@1a
    move-result-object v21

    #@1b
    check-cast v21, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    #@1d
    .line 3558
    .local v21, "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    const-string/jumbo v3, "Display #"

    #@20
    move-object/from16 v0, p2

    #@22
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@25
    move-object/from16 v0, v21

    #@27
    iget v3, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplayId:I

    #@29
    move-object/from16 v0, p2

    #@2b
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(I)V

    #@2e
    .line 3559
    const-string/jumbo v3, " (activities from top to bottom):"

    #@31
    move-object/from16 v0, p2

    #@33
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@36
    .line 3560
    move-object/from16 v0, v21

    #@38
    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    #@3a
    move-object/from16 v27, v0

    #@3c
    .line 3561
    .local v27, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    #@3f
    move-result v3

    #@40
    add-int/lit8 v26, v3, -0x1

    #@42
    .local v26, "stackNdx":I
    :goto_1
    if-ltz v26, :cond_5

    #@44
    .line 3562
    move-object/from16 v0, v27

    #@46
    move/from16 v1, v26

    #@48
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@4b
    move-result-object v2

    #@4c
    check-cast v2, Lcom/android/server/am/ActivityStack;

    #@4e
    .line 3563
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    new-instance v25, Ljava/lang/StringBuilder;

    #@50
    const/16 v3, 0x80

    #@52
    move-object/from16 v0, v25

    #@54
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    #@57
    .line 3564
    .local v25, "stackHeader":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "  Stack #"

    #@5a
    move-object/from16 v0, v25

    #@5c
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    .line 3565
    iget v3, v2, Lcom/android/server/am/ActivityStack;->mStackId:I

    #@61
    move-object/from16 v0, v25

    #@63
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@66
    .line 3566
    const-string/jumbo v3, ":"

    #@69
    move-object/from16 v0, v25

    #@6b
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    .line 3568
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@71
    move-result-object v9

    #@72
    move-object/from16 v3, p1

    #@74
    move-object/from16 v4, p2

    #@76
    move/from16 v5, p3

    #@78
    move/from16 v6, p4

    #@7a
    move-object/from16 v7, p5

    #@7c
    .line 3567
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/am/ActivityStack;->dumpActivitiesLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZZLjava/lang/String;ZLjava/lang/String;)Z

    #@7f
    move-result v3

    #@80
    or-int v24, v24, v3

    #@82
    .line 3569
    .local v24, "printed":Z
    iget-object v11, v2, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    #@84
    const-string/jumbo v12, "    "

    #@87
    const-string/jumbo v13, "Run"

    #@8a
    .line 3570
    if-eqz p3, :cond_4

    #@8c
    const/4 v15, 0x0

    #@8d
    .line 3571
    :goto_2
    const-string/jumbo v19, "    Running activities (most recent first):"

    #@90
    .line 3569
    const/4 v14, 0x0

    #@91
    .line 3570
    const/16 v16, 0x0

    #@93
    const/16 v18, 0x1

    #@95
    .line 3571
    const/16 v20, 0x0

    #@97
    move-object/from16 v9, p1

    #@99
    move-object/from16 v10, p2

    #@9b
    move-object/from16 v17, p5

    #@9d
    .line 3569
    invoke-static/range {v9 .. v20}, Lcom/android/server/am/ActivityStackSupervisor;->dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z

    #@a0
    move-result v3

    #@a1
    or-int v24, v24, v3

    #@a3
    .line 3573
    move/from16 v8, v24

    #@a5
    .line 3574
    .local v8, "needSep":Z
    iget-object v3, v2, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    #@a7
    .line 3575
    const-string/jumbo v4, "    mPausingActivity: "

    #@aa
    .line 3574
    move-object/from16 v0, p2

    #@ac
    move-object/from16 v1, p5

    #@ae
    invoke-static {v0, v3, v1, v8, v4}, Lcom/android/server/am/ActivityStackSupervisor;->printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;)Z

    #@b1
    move-result v23

    #@b2
    .line 3576
    .local v23, "pr":Z
    if-eqz v23, :cond_0

    #@b4
    .line 3577
    const/16 v24, 0x1

    #@b6
    .line 3578
    .local v24, "printed":Z
    const/4 v8, 0x0

    #@b7
    .line 3580
    .end local v8    # "needSep":Z
    .end local v24    # "printed":Z
    :cond_0
    iget-object v3, v2, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    #@b9
    .line 3581
    const-string/jumbo v4, "    mResumedActivity: "

    #@bc
    .line 3580
    move-object/from16 v0, p2

    #@be
    move-object/from16 v1, p5

    #@c0
    invoke-static {v0, v3, v1, v8, v4}, Lcom/android/server/am/ActivityStackSupervisor;->printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;)Z

    #@c3
    move-result v23

    #@c4
    .line 3582
    if-eqz v23, :cond_1

    #@c6
    .line 3583
    const/16 v24, 0x1

    #@c8
    .line 3584
    .restart local v24    # "printed":Z
    const/4 v8, 0x0

    #@c9
    .line 3586
    .end local v24    # "printed":Z
    :cond_1
    if-eqz p3, :cond_3

    #@cb
    .line 3587
    iget-object v3, v2, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    #@cd
    .line 3588
    const-string/jumbo v4, "    mLastPausedActivity: "

    #@d0
    .line 3587
    move-object/from16 v0, p2

    #@d2
    move-object/from16 v1, p5

    #@d4
    invoke-static {v0, v3, v1, v8, v4}, Lcom/android/server/am/ActivityStackSupervisor;->printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;)Z

    #@d7
    move-result v23

    #@d8
    .line 3589
    if-eqz v23, :cond_2

    #@da
    .line 3590
    const/16 v24, 0x1

    #@dc
    .line 3591
    .restart local v24    # "printed":Z
    const/4 v8, 0x1

    #@dd
    .line 3593
    .end local v24    # "printed":Z
    :cond_2
    iget-object v3, v2, Lcom/android/server/am/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    #@df
    .line 3594
    const-string/jumbo v4, "    mLastNoHistoryActivity: "

    #@e2
    .line 3593
    move-object/from16 v0, p2

    #@e4
    move-object/from16 v1, p5

    #@e6
    invoke-static {v0, v3, v1, v8, v4}, Lcom/android/server/am/ActivityStackSupervisor;->printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;)Z

    #@e9
    move-result v3

    #@ea
    or-int v24, v24, v3

    #@ec
    .line 3596
    :cond_3
    move/from16 v8, v24

    #@ee
    .line 3561
    .restart local v8    # "needSep":Z
    add-int/lit8 v26, v26, -0x1

    #@f0
    goto/16 :goto_1

    #@f2
    .line 3570
    .end local v8    # "needSep":Z
    .end local v23    # "pr":Z
    .local v24, "printed":Z
    :cond_4
    const/4 v15, 0x1

    #@f3
    goto :goto_2

    #@f4
    .line 3556
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v24    # "printed":Z
    .end local v25    # "stackHeader":Ljava/lang/StringBuilder;
    :cond_5
    add-int/lit8 v22, v22, 0x1

    #@f6
    goto/16 :goto_0

    #@f8
    .line 3600
    .end local v21    # "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    .end local v26    # "stackNdx":I
    .end local v27    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_6
    move-object/from16 v0, p0

    #@fa
    iget-object v11, v0, Lcom/android/server/am/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    #@fc
    const-string/jumbo v12, "  "

    #@ff
    const-string/jumbo v13, "Fin"

    #@102
    if-eqz p3, :cond_7

    #@104
    const/4 v15, 0x0

    #@105
    .line 3601
    :goto_3
    const-string/jumbo v19, "  Activities waiting to finish:"

    #@108
    .line 3600
    const/4 v14, 0x0

    #@109
    .line 3601
    const/16 v16, 0x0

    #@10b
    const/16 v18, 0x1

    #@10d
    const/16 v20, 0x0

    #@10f
    move-object/from16 v9, p1

    #@111
    move-object/from16 v10, p2

    #@113
    move-object/from16 v17, p5

    #@115
    .line 3600
    invoke-static/range {v9 .. v20}, Lcom/android/server/am/ActivityStackSupervisor;->dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z

    #@118
    move-result v3

    #@119
    or-int v24, v24, v3

    #@11b
    .line 3602
    .restart local v24    # "printed":Z
    move-object/from16 v0, p0

    #@11d
    iget-object v11, v0, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    #@11f
    const-string/jumbo v12, "  "

    #@122
    const-string/jumbo v13, "Stop"

    #@125
    if-eqz p3, :cond_8

    #@127
    const/4 v15, 0x0

    #@128
    .line 3603
    :goto_4
    const-string/jumbo v19, "  Activities waiting to stop:"

    #@12b
    .line 3602
    const/4 v14, 0x0

    #@12c
    .line 3603
    const/16 v16, 0x0

    #@12e
    const/16 v18, 0x1

    #@130
    const/16 v20, 0x0

    #@132
    move-object/from16 v9, p1

    #@134
    move-object/from16 v10, p2

    #@136
    move-object/from16 v17, p5

    #@138
    .line 3602
    invoke-static/range {v9 .. v20}, Lcom/android/server/am/ActivityStackSupervisor;->dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z

    #@13b
    move-result v3

    #@13c
    or-int v24, v24, v3

    #@13e
    .line 3604
    move-object/from16 v0, p0

    #@140
    iget-object v11, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    #@142
    const-string/jumbo v12, "  "

    #@145
    const-string/jumbo v13, "Wait"

    #@148
    if-eqz p3, :cond_9

    #@14a
    const/4 v15, 0x0

    #@14b
    .line 3605
    :goto_5
    const-string/jumbo v19, "  Activities waiting for another to become visible:"

    #@14e
    .line 3604
    const/4 v14, 0x0

    #@14f
    .line 3605
    const/16 v16, 0x0

    #@151
    const/16 v18, 0x1

    #@153
    .line 3606
    const/16 v20, 0x0

    #@155
    move-object/from16 v9, p1

    #@157
    move-object/from16 v10, p2

    #@159
    move-object/from16 v17, p5

    #@15b
    .line 3604
    invoke-static/range {v9 .. v20}, Lcom/android/server/am/ActivityStackSupervisor;->dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z

    #@15e
    move-result v3

    #@15f
    or-int v24, v24, v3

    #@161
    .line 3607
    move-object/from16 v0, p0

    #@163
    iget-object v11, v0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    #@165
    const-string/jumbo v12, "  "

    #@168
    const-string/jumbo v13, "Sleep"

    #@16b
    if-eqz p3, :cond_a

    #@16d
    const/4 v15, 0x0

    #@16e
    .line 3608
    :goto_6
    const-string/jumbo v19, "  Activities waiting to sleep:"

    #@171
    .line 3607
    const/4 v14, 0x0

    #@172
    .line 3608
    const/16 v16, 0x0

    #@174
    const/16 v18, 0x1

    #@176
    const/16 v20, 0x0

    #@178
    move-object/from16 v9, p1

    #@17a
    move-object/from16 v10, p2

    #@17c
    move-object/from16 v17, p5

    #@17e
    .line 3607
    invoke-static/range {v9 .. v20}, Lcom/android/server/am/ActivityStackSupervisor;->dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z

    #@181
    move-result v3

    #@182
    or-int v24, v24, v3

    #@184
    .line 3609
    move-object/from16 v0, p0

    #@186
    iget-object v11, v0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    #@188
    const-string/jumbo v12, "  "

    #@18b
    const-string/jumbo v13, "Sleep"

    #@18e
    if-eqz p3, :cond_b

    #@190
    const/4 v15, 0x0

    #@191
    .line 3610
    :goto_7
    const-string/jumbo v19, "  Activities waiting to sleep:"

    #@194
    .line 3609
    const/4 v14, 0x0

    #@195
    .line 3610
    const/16 v16, 0x0

    #@197
    const/16 v18, 0x1

    #@199
    const/16 v20, 0x0

    #@19b
    move-object/from16 v9, p1

    #@19d
    move-object/from16 v10, p2

    #@19f
    move-object/from16 v17, p5

    #@1a1
    .line 3609
    invoke-static/range {v9 .. v20}, Lcom/android/server/am/ActivityStackSupervisor;->dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z

    #@1a4
    move-result v3

    #@1a5
    or-int v24, v24, v3

    #@1a7
    .line 3612
    return v24

    #@1a8
    .line 3600
    .end local v24    # "printed":Z
    :cond_7
    const/4 v15, 0x1

    #@1a9
    goto/16 :goto_3

    #@1ab
    .line 3602
    .restart local v24    # "printed":Z
    :cond_8
    const/4 v15, 0x1

    #@1ac
    goto/16 :goto_4

    #@1ae
    .line 3604
    :cond_9
    const/4 v15, 0x1

    #@1af
    goto :goto_5

    #@1b0
    .line 3607
    :cond_a
    const/4 v15, 0x1

    #@1b1
    goto :goto_6

    #@1b2
    .line 3609
    :cond_b
    const/4 v15, 0x1

    #@1b3
    goto :goto_7
.end method

.method ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V
    .locals 6
    .param p1, "starting"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "configChanges"    # I

    #@0
    .prologue
    .line 3295
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
    .line 3296
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
    .line 3297
    .local v3, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@17
    move-result v5

    #@18
    add-int/lit8 v4, v5, -0x1

    #@1a
    .line 3298
    .local v4, "topStackNdx":I
    move v2, v4

    #@1b
    .local v2, "stackNdx":I
    :goto_1
    if-ltz v2, :cond_0

    #@1d
    .line 3299
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@20
    move-result-object v1

    #@21
    check-cast v1, Lcom/android/server/am/ActivityStack;

    #@23
    .line 3300
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v1, p1, p2}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V

    #@26
    .line 3298
    add-int/lit8 v2, v2, -0x1

    #@28
    goto :goto_1

    #@29
    .line 3295
    .end local v1    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@2b
    goto :goto_0

    #@2c
    .line 3293
    .end local v2    # "stackNdx":I
    .end local v3    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    .end local v4    # "topStackNdx":I
    :cond_1
    return-void
.end method

.method findActivityLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Lcom/android/server/am/ActivityRecord;
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "info"    # Landroid/content/pm/ActivityInfo;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 3062
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
    .line 3063
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
    .line 3064
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
    .line 3065
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@20
    move-result-object v4

    #@21
    check-cast v4, Lcom/android/server/am/ActivityStack;

    #@23
    invoke-virtual {v4, p1, p2}, Lcom/android/server/am/ActivityStack;->findActivityLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Lcom/android/server/am/ActivityRecord;

    #@26
    move-result-object v0

    #@27
    .line 3066
    .local v0, "ar":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_0

    #@29
    .line 3067
    return-object v0

    #@2a
    .line 3064
    :cond_0
    add-int/lit8 v2, v2, -0x1

    #@2c
    goto :goto_1

    #@2d
    .line 3062
    .end local v0    # "ar":Lcom/android/server/am/ActivityRecord;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    #@2f
    goto :goto_0

    #@30
    .line 3071
    .end local v2    # "stackNdx":I
    .end local v3    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_2
    return-object v5
.end method

.method findTaskLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .locals 7
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 3038
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    #@3
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    #@6
    move-result v5

    #@7
    add-int/lit8 v1, v5, -0x1

    #@9
    .local v1, "displayNdx":I
    :goto_0
    if-ltz v1, :cond_4

    #@b
    .line 3039
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    #@d
    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@10
    move-result-object v5

    #@11
    check-cast v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    #@13
    iget-object v4, v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    #@15
    .line 3040
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
    .line 3041
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@20
    move-result-object v2

    #@21
    check-cast v2, Lcom/android/server/am/ActivityStack;

    #@23
    .line 3042
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isApplicationActivity()Z

    #@26
    move-result v5

    #@27
    if-nez v5, :cond_0

    #@29
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    #@2c
    move-result v5

    #@2d
    if-eqz v5, :cond_1

    #@2f
    .line 3046
    :cond_0
    iget-object v5, v2, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    #@31
    invoke-virtual {v5}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->isEligibleForNewTasks()Z

    #@34
    move-result v5

    #@35
    if-nez v5, :cond_2

    #@37
    .line 3040
    :cond_1
    add-int/lit8 v3, v3, -0x1

    #@39
    goto :goto_1

    #@3a
    .line 3051
    :cond_2
    invoke-virtual {v2, p1}, Lcom/android/server/am/ActivityStack;->findTaskLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    #@3d
    move-result-object v0

    #@3e
    .line 3052
    .local v0, "ar":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_1

    #@40
    .line 3053
    return-object v0

    #@41
    .line 3038
    .end local v0    # "ar":Lcom/android/server/am/ActivityRecord;
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_3
    add-int/lit8 v1, v1, -0x1

    #@43
    goto :goto_0

    #@44
    .line 3058
    .end local v3    # "stackNdx":I
    .end local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_4
    return-object v6
.end method

.method findTaskToMoveToFrontLocked(Lcom/android/server/am/TaskRecord;ILandroid/os/Bundle;Ljava/lang/String;)V
    .locals 6
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "flags"    # I
    .param p3, "options"    # Landroid/os/Bundle;
    .param p4, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    const/4 v2, 0x0

    #@3
    .line 2772
    and-int/lit8 v0, p2, 0x2

    #@5
    if-nez v0, :cond_0

    #@7
    .line 2773
    iput-boolean v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mUserLeaving:Z

    #@9
    .line 2775
    :cond_0
    and-int/lit8 v0, p2, 0x1

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 2778
    invoke-virtual {p1, v1}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    #@10
    .line 2780
    :cond_1
    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@12
    if-nez v0, :cond_2

    #@14
    .line 2781
    const-string/jumbo v0, "ActivityManager"

    #@17
    new-instance v1, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v2, "findTaskToMoveToFrontLocked: can\'t move task="

    #@1f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    .line 2782
    const-string/jumbo v2, " to front. Stack is null"

    #@2a
    .line 2781
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v1

    #@32
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@35
    .line 2783
    return-void

    #@36
    .line 2785
    :cond_2
    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@38
    .line 2786
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    #@3b
    move-result-object v1

    #@3c
    if-nez v1, :cond_3

    #@3e
    :goto_0
    move-object v1, p1

    #@3f
    move-object v3, p3

    #@40
    move-object v5, p4

    #@41
    .line 2785
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;ZLandroid/os/Bundle;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V

    #@44
    .line 2771
    return-void

    #@45
    .line 2786
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    #@48
    move-result-object v1

    #@49
    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    #@4b
    goto :goto_0
.end method

.method finishDisabledPackageActivitiesLocked(Ljava/lang/String;Ljava/util/Set;ZZI)Z
    .locals 11
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
    .line 2669
    .local p2, "filterByClasses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v6, 0x0

    #@1
    .line 2670
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
    .line 2671
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    #@d
    invoke-virtual {v1, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@10
    move-result-object v1

    #@11
    check-cast v1, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    #@13
    iget-object v10, v1, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    #@15
    .line 2672
    .local v10, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    #@18
    move-result v8

    #@19
    .line 2673
    .local v8, "numStacks":I
    const/4 v9, 0x0

    #@1a
    .local v9, "stackNdx":I
    :goto_1
    if-ge v9, v8, :cond_1

    #@1c
    .line 2674
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1f
    move-result-object v0

    #@20
    check-cast v0, Lcom/android/server/am/ActivityStack;

    #@22
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    move-object v1, p1

    #@23
    move-object v2, p2

    #@24
    move v3, p3

    #@25
    move v4, p4

    #@26
    move/from16 v5, p5

    #@28
    .line 2675
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishDisabledPackageActivitiesLocked(Ljava/lang/String;Ljava/util/Set;ZZI)Z

    #@2b
    move-result v1

    #@2c
    if-eqz v1, :cond_0

    #@2e
    .line 2677
    const/4 v6, 0x1

    #@2f
    .line 2673
    :cond_0
    add-int/lit8 v9, v9, 0x1

    #@31
    goto :goto_1

    #@32
    .line 2670
    .end local v0    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_1
    add-int/lit8 v7, v7, -0x1

    #@34
    goto :goto_0

    #@35
    .line 2681
    .end local v8    # "numStacks":I
    .end local v9    # "stackNdx":I
    .end local v10    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_2
    return v6
.end method

.method finishTopRunningActivityLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .locals 6
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2750
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
    .line 2751
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
    .line 2752
    .local v4, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@17
    move-result v1

    #@18
    .line 2753
    .local v1, "numStacks":I
    const/4 v3, 0x0

    #@19
    .local v3, "stackNdx":I
    :goto_1
    if-ge v3, v1, :cond_0

    #@1b
    .line 2754
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1e
    move-result-object v2

    #@1f
    check-cast v2, Lcom/android/server/am/ActivityStack;

    #@21
    .line 2755
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v2, p1, p2}, Lcom/android/server/am/ActivityStack;->finishTopRunningActivityLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    #@24
    .line 2753
    add-int/lit8 v3, v3, 0x1

    #@26
    goto :goto_1

    #@27
    .line 2750
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@29
    goto :goto_0

    #@2a
    .line 2749
    .end local v1    # "numStacks":I
    .end local v3    # "stackNdx":I
    .end local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_1
    return-void
.end method

.method finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V
    .locals 6
    .param p1, "session"    # Landroid/service/voice/IVoiceInteractionSession;

    #@0
    .prologue
    .line 2761
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
    .line 2762
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
    .line 2763
    .local v4, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@17
    move-result v1

    #@18
    .line 2764
    .local v1, "numStacks":I
    const/4 v3, 0x0

    #@19
    .local v3, "stackNdx":I
    :goto_1
    if-ge v3, v1, :cond_0

    #@1b
    .line 2765
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1e
    move-result-object v2

    #@1f
    check-cast v2, Lcom/android/server/am/ActivityStack;

    #@21
    .line 2766
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v2, p1}, Lcom/android/server/am/ActivityStack;->finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V

    #@24
    .line 2764
    add-int/lit8 v3, v3, 0x1

    #@26
    goto :goto_1

    #@27
    .line 2761
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@29
    goto :goto_0

    #@2a
    .line 2760
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
    .line 3823
    new-instance v1, Ljava/util/ArrayList;

    #@2
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 3824
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
    .line 3825
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
    .line 3826
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
    .line 3827
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
    .line 3826
    add-int/lit8 v2, v2, -0x1

    #@2f
    goto :goto_1

    #@30
    .line 3824
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@32
    goto :goto_0

    #@33
    .line 3830
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
    .line 3534
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
    .line 420
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    #@2
    return-object v0
.end method

.method getHomeActivity()Lcom/android/server/am/ActivityRecord;
    .locals 1

    #@0
    .prologue
    .line 2817
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
    .line 2821
    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    #@2
    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    #@5
    move-result-object v5

    #@6
    .line 2822
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
    .line 2823
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v3

    #@12
    check-cast v3, Lcom/android/server/am/TaskRecord;

    #@14
    .line 2824
    .local v3, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->isHomeTask()Z

    #@17
    move-result v6

    #@18
    if-eqz v6, :cond_2

    #@1a
    .line 2825
    iget-object v0, v3, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@1c
    .line 2826
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
    .line 2827
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@27
    move-result-object v2

    #@28
    check-cast v2, Lcom/android/server/am/ActivityRecord;

    #@2a
    .line 2828
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    #@2d
    move-result v6

    #@2e
    if-eqz v6, :cond_1

    #@30
    .line 2829
    const/4 v6, -0x1

    #@31
    if-eq p1, v6, :cond_0

    #@33
    iget v6, v2, Lcom/android/server/am/ActivityRecord;->userId:I

    #@35
    if-ne v6, p1, :cond_1

    #@37
    .line 2830
    :cond_0
    return-object v2

    #@38
    .line 2826
    :cond_1
    add-int/lit8 v1, v1, -0x1

    #@3a
    goto :goto_1

    #@3b
    .line 2822
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_2
    add-int/lit8 v4, v4, -0x1

    #@3d
    goto :goto_0

    #@3e
    .line 2835
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
    .line 2809
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getHomeActivity()Lcom/android/server/am/ActivityRecord;

    #@4
    move-result-object v0

    #@5
    .line 2810
    .local v0, "homeActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_0

    #@7
    .line 2811
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@9
    return-object v1

    #@a
    .line 2813
    :cond_0
    return-object v1
.end method

.method getLastStack()Lcom/android/server/am/ActivityStack;
    .locals 1

    #@0
    .prologue
    .line 424
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLastFocusedStack:Lcom/android/server/am/ActivityStack;

    #@2
    return-object v0
.end method

.method getLockTaskModeState()I
    .locals 1

    #@0
    .prologue
    .line 4001
    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeState:I

    #@2
    return v0
.end method

.method getLockedTaskLocked()Lcom/android/server/am/TaskRecord;
    .locals 2

    #@0
    .prologue
    .line 3834
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeTasks:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v1

    #@6
    add-int/lit8 v0, v1, -0x1

    #@8
    .line 3835
    .local v0, "top":I
    if-ltz v0, :cond_0

    #@a
    .line 3836
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
    .line 3838
    :cond_0
    const/4 v1, 0x0

    #@14
    return-object v1
.end method

.method getNextStackId()I
    .locals 1

    #@0
    .prologue
    .line 2953
    :cond_0
    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLastStackId:I

    #@2
    add-int/lit8 v0, v0, 0x1

    #@4
    iput v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLastStackId:I

    #@6
    if-gtz v0, :cond_1

    #@8
    .line 2954
    const/4 v0, 0x1

    #@9
    iput v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLastStackId:I

    #@b
    .line 2956
    :cond_1
    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLastStackId:I

    #@d
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    #@10
    move-result-object v0

    #@11
    if-nez v0, :cond_0

    #@13
    .line 2960
    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLastStackId:I

    #@15
    return v0
.end method

.method getNextTaskId()I
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 587
    :cond_0
    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurTaskId:I

    #@3
    add-int/lit8 v0, v0, 0x1

    #@5
    iput v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurTaskId:I

    #@7
    .line 588
    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurTaskId:I

    #@9
    if-gtz v0, :cond_1

    #@b
    .line 589
    const/4 v0, 0x1

    #@c
    iput v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurTaskId:I

    #@e
    .line 591
    :cond_1
    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurTaskId:I

    #@10
    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(IZ)Lcom/android/server/am/TaskRecord;

    #@13
    move-result-object v0

    #@14
    if-nez v0, :cond_0

    #@16
    .line 592
    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurTaskId:I

    #@18
    return v0
.end method

.method getStack(I)Lcom/android/server/am/ActivityStack;
    .locals 3
    .param p1, "stackId"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 2793
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityContainers:Landroid/util/SparseArray;

    #@3
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    #@9
    .line 2794
    .local v0, "activityContainer":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    if-eqz v0, :cond_0

    #@b
    .line 2795
    iget-object v1, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStack:Lcom/android/server/am/ActivityStack;

    #@d
    return-object v1

    #@e
    .line 2797
    :cond_0
    return-object v2
.end method

.method getStackInfoLocked(I)Landroid/app/ActivityManager$StackInfo;
    .locals 2
    .param p1, "stackId"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 3815
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    #@4
    move-result-object v0

    #@5
    .line 3816
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v0, :cond_0

    #@7
    .line 3817
    invoke-direct {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->getStackInfoLocked(Lcom/android/server/am/ActivityStack;)Landroid/app/ActivityManager$StackInfo;

    #@a
    move-result-object v1

    #@b
    return-object v1

    #@c
    .line 3819
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
    .line 2801
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 2802
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
    .line 2803
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
    .line 2802
    add-int/lit8 v1, v1, -0x1

    #@1e
    goto :goto_0

    #@1f
    .line 2805
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
    .line 826
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    new-instance v9, Ljava/util/ArrayList;

    #@2
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 827
    .local v9, "runningTaskLists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;>;"
    move-object/from16 v0, p0

    #@7
    iget-object v15, v0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    #@9
    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    #@c
    move-result v3

    #@d
    .line 828
    .local v3, "numDisplays":I
    const/4 v2, 0x0

    #@e
    .local v2, "displayNdx":I
    :goto_0
    if-ge v2, v3, :cond_2

    #@10
    .line 829
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
    .line 830
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
    .line 831
    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@27
    move-result-object v11

    #@28
    check-cast v11, Lcom/android/server/am/ActivityStack;

    #@2a
    .line 832
    .local v11, "stack":Lcom/android/server/am/ActivityStack;
    new-instance v13, Ljava/util/ArrayList;

    #@2c
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    #@2f
    .line 833
    .local v13, "stackTaskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@32
    .line 834
    move/from16 v0, p3

    #@34
    move/from16 v1, p4

    #@36
    invoke-virtual {v11, v13, v0, v1}, Lcom/android/server/am/ActivityStack;->getTasksLocked(Ljava/util/List;IZ)V

    #@39
    .line 830
    add-int/lit8 v12, v12, -0x1

    #@3b
    goto :goto_1

    #@3c
    .line 828
    .end local v11    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v13    # "stackTaskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@3e
    goto :goto_0

    #@3f
    .line 854
    .end local v14    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    .local v6, "mostRecentActiveTime":J
    .local v8, "numTaskLists":I
    :cond_1
    if-eqz v10, :cond_4

    #@41
    .line 855
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
    .line 856
    add-int/lit8 p1, p1, -0x1

    #@4f
    .line 840
    .end local v6    # "mostRecentActiveTime":J
    .end local v8    # "numTaskLists":I
    .end local v12    # "stackNdx":I
    :cond_2
    if-lez p1, :cond_4

    #@51
    .line 841
    const-wide/high16 v6, -0x8000000000000000L

    #@53
    .line 842
    .restart local v6    # "mostRecentActiveTime":J
    const/4 v10, 0x0

    #@54
    .line 843
    .local v10, "selectedStackList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    #@57
    move-result v8

    #@58
    .line 844
    .restart local v8    # "numTaskLists":I
    const/4 v12, 0x0

    #@59
    .end local v10    # "selectedStackList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .restart local v12    # "stackNdx":I
    :goto_2
    if-ge v12, v8, :cond_1

    #@5b
    .line 845
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@5e
    move-result-object v13

    #@5f
    check-cast v13, Ljava/util/ArrayList;

    #@61
    .line 846
    .restart local v13    # "stackTaskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    #@64
    move-result v15

    #@65
    if-nez v15, :cond_3

    #@67
    .line 847
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
    .line 848
    .local v4, "lastActiveTime":J
    cmp-long v15, v4, v6

    #@72
    if-lez v15, :cond_3

    #@74
    .line 849
    move-wide v6, v4

    #@75
    .line 850
    move-object v10, v13

    #@76
    .line 844
    .end local v4    # "lastActiveTime":J
    :cond_3
    add-int/lit8 v12, v12, 0x1

    #@78
    goto :goto_2

    #@79
    .line 823
    .end local v6    # "mostRecentActiveTime":J
    .end local v8    # "numTaskLists":I
    .end local v12    # "stackNdx":I
    .end local v13    # "stackTaskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_4
    return-void
.end method

.method goingToSleepLocked()V
    .locals 2

    #@0
    .prologue
    .line 3075
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleSleepTimeout()V

    #@3
    .line 3076
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    #@5
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_0

    #@b
    .line 3077
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    #@d
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    #@10
    .line 3078
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    #@12
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    #@15
    move-result v0

    #@16
    if-eqz v0, :cond_0

    #@18
    .line 3082
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    #@1a
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    #@1d
    .line 3083
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@1f
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    #@21
    const/16 v1, 0x68

    #@23
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeMessages(I)V

    #@26
    .line 3086
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->checkReadyForSleepLocked()V

    #@29
    .line 3074
    return-void
.end method

.method handleAppCrashLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 4
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    #@0
    .prologue
    .line 3215
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
    .line 3216
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
    .line 3217
    .local v2, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@17
    move-result v3

    #@18
    add-int/lit8 v1, v3, -0x1

    #@1a
    .line 3218
    .local v1, "stackNdx":I
    :goto_1
    if-ltz v1, :cond_0

    #@1c
    .line 3219
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1f
    move-result-object v3

    #@20
    check-cast v3, Lcom/android/server/am/ActivityStack;

    #@22
    invoke-virtual {v3, p1}, Lcom/android/server/am/ActivityStack;->handleAppCrashLocked(Lcom/android/server/am/ProcessRecord;)V

    #@25
    .line 3220
    add-int/lit8 v1, v1, -0x1

    #@27
    goto :goto_1

    #@28
    .line 3215
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@2a
    goto :goto_0

    #@2b
    .line 3214
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
    .line 2641
    const/4 v1, 0x0

    #@1
    .line 2642
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
    .line 2643
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
    .line 2644
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
    .line 2645
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
    .line 2644
    .local v1, "hasVisibleActivities":Z
    add-int/lit8 v2, v2, -0x1

    #@2a
    goto :goto_1

    #@2b
    .line 2642
    .end local v1    # "hasVisibleActivities":Z
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@2d
    goto :goto_0

    #@2e
    .line 2648
    .end local v2    # "stackNdx":I
    .end local v3    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_1
    return v1
.end method

.method handleLaunchTaskBehindCompleteLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 4
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 3281
    iput-boolean v3, p1, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    #@3
    .line 3282
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@5
    .line 3283
    .local v0, "task":Lcom/android/server/am/TaskRecord;
    iget-object v1, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@7
    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityStack;->screenshotActivities(Lcom/android/server/am/ActivityRecord;)Landroid/graphics/Bitmap;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->setLastThumbnail(Landroid/graphics/Bitmap;)Z

    #@e
    .line 3284
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    #@10
    invoke-virtual {v1, v0}, Lcom/android/server/am/RecentTasks;->addLocked(Lcom/android/server/am/TaskRecord;)V

    #@13
    .line 3285
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@15
    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->notifyTaskStackChangedLocked()V

    #@18
    .line 3286
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@1a
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@1c
    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    #@1f
    .line 3280
    return-void
.end method

.method initPowerManagement()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 352
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
    .line 353
    .local v0, "pm":Landroid/os/PowerManager;
    const-string/jumbo v1, "ActivityManager-Sleep"

    #@11
    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    #@14
    move-result-object v1

    #@15
    iput-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    #@17
    .line 354
    const-string/jumbo v1, "*launch*"

    #@1a
    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    #@1d
    move-result-object v1

    #@1e
    iput-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    #@20
    .line 355
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    #@22
    const/4 v2, 0x0

    #@23
    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    #@26
    .line 351
    return-void
.end method

.method isCurrentProfileLocked(I)Z
    .locals 3
    .param p1, "userId"    # I

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 3430
    iget v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurrentUser:I

    #@3
    if-ne p1, v1, :cond_0

    #@5
    return v2

    #@6
    .line 3431
    :cond_0
    const/4 v0, 0x0

    #@7
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@9
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mCurrentProfileIds:[I

    #@b
    array-length v1, v1

    #@c
    if-ge v0, v1, :cond_2

    #@e
    .line 3432
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@10
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mCurrentProfileIds:[I

    #@12
    aget v1, v1, v0

    #@14
    if-ne v1, p1, :cond_1

    #@16
    return v2

    #@17
    .line 3431
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 3434
    :cond_2
    const/4 v1, 0x0

    #@1b
    return v1
.end method

.method isFrontStack(Lcom/android/server/am/ActivityStack;)Z
    .locals 3
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 431
    if-nez p1, :cond_0

    #@3
    .line 432
    return v1

    #@4
    .line 435
    :cond_0
    iget-object v2, p1, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    #@6
    iget-object v0, v2, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mParentActivity:Lcom/android/server/am/ActivityRecord;

    #@8
    .line 436
    .local v0, "parent":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_1

    #@a
    .line 437
    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@c
    iget-object p1, v2, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@e
    .line 439
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

.method isInAnyStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;
    .locals 7
    .param p1, "token"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 566
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    #@3
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    #@6
    move-result v1

    #@7
    .line 567
    .local v1, "numDisplays":I
    const/4 v0, 0x0

    #@8
    .local v0, "displayNdx":I
    :goto_0
    if-ge v0, v1, :cond_2

    #@a
    .line 568
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
    .line 569
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
    .line 570
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
    .line 571
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_0

    #@28
    .line 572
    return-object v2

    #@29
    .line 569
    :cond_0
    add-int/lit8 v3, v3, -0x1

    #@2b
    goto :goto_1

    #@2c
    .line 567
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@2e
    goto :goto_0

    #@2f
    .line 576
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
    .line 3846
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
    .line 3933
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
    .line 3937
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getLockedTaskLocked()Lcom/android/server/am/TaskRecord;

    #@5
    move-result-object v3

    #@6
    if-ne v3, p1, :cond_0

    #@8
    if-eqz p2, :cond_1

    #@a
    .line 3940
    :cond_0
    iget v0, p1, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    #@c
    .line 3941
    .local v0, "lockTaskAuth":I
    packed-switch v0, :pswitch_data_0

    #@f
    .line 3952
    const-string/jumbo v1, "ActivityManager"

    #@12
    new-instance v3, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v4, "isLockTaskModeViolation: invalid lockTaskAuth value="

    #@1a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v3

    #@1e
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@21
    move-result-object v3

    #@22
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v3

    #@26
    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@29
    .line 3953
    return v2

    #@2a
    .line 3938
    .end local v0    # "lockTaskAuth":I
    :cond_1
    return v1

    #@2b
    .line 3943
    .restart local v0    # "lockTaskAuth":I
    :pswitch_0
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeTasks:Ljava/util/ArrayList;

    #@2d
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    #@30
    move-result v3

    #@31
    if-eqz v3, :cond_2

    #@33
    :goto_0
    return v1

    #@34
    :cond_2
    move v1, v2

    #@35
    goto :goto_0

    #@36
    .line 3947
    :pswitch_1
    return v1

    #@37
    .line 3950
    :pswitch_2
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeTasks:Ljava/util/ArrayList;

    #@39
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    #@3c
    move-result v3

    #@3d
    if-eqz v3, :cond_3

    #@3f
    :goto_1
    return v1

    #@40
    :cond_3
    move v1, v2

    #@41
    goto :goto_1

    #@42
    .line 3941
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
    .line 3842
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeTasks:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method moveHomeStack(ZLjava/lang/String;)V
    .locals 1
    .param p1, "toFront"    # Z
    .param p2, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 443
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStack(ZLjava/lang/String;Lcom/android/server/am/ActivityStack;)V

    #@4
    .line 442
    return-void
.end method

.method moveHomeStack(ZLjava/lang/String;Lcom/android/server/am/ActivityStack;)V
    .locals 7
    .param p1, "toFront"    # Z
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "lastFocusedStack"    # Lcom/android/server/am/ActivityStack;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 447
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    #@4
    iget-object v1, v3, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    #@6
    .line 448
    .local v1, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@9
    move-result v3

    #@a
    add-int/lit8 v2, v3, -0x1

    #@c
    .line 449
    .local v2, "topNdx":I
    if-gtz v2, :cond_0

    #@e
    .line 450
    return-void

    #@f
    .line 454
    :cond_0
    if-eqz p1, :cond_5

    #@11
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v3

    #@15
    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    #@17
    if-eq v3, v6, :cond_5

    #@19
    .line 459
    :goto_0
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    #@1b
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@1e
    .line 460
    if-eqz p1, :cond_6

    #@20
    move v3, v2

    #@21
    :goto_1
    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    #@23
    invoke-virtual {v1, v3, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    #@26
    .line 463
    :cond_1
    if-eqz p3, :cond_2

    #@28
    .line 464
    iput-object p3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLastFocusedStack:Lcom/android/server/am/ActivityStack;

    #@2a
    .line 466
    :cond_2
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2d
    move-result-object v3

    #@2e
    check-cast v3, Lcom/android/server/am/ActivityStack;

    #@30
    iput-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    #@32
    .line 468
    const/4 v3, 0x5

    #@33
    new-array v6, v3, [Ljava/lang/Object;

    #@35
    .line 469
    iget v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurrentUser:I

    #@37
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3a
    move-result-object v3

    #@3b
    aput-object v3, v6, v4

    #@3d
    if-eqz p1, :cond_3

    #@3f
    move v4, v5

    #@40
    :cond_3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@43
    move-result-object v3

    #@44
    aput-object v3, v6, v5

    #@46
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@49
    move-result-object v3

    #@4a
    check-cast v3, Lcom/android/server/am/ActivityStack;

    #@4c
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->getStackId()I

    #@4f
    move-result v3

    #@50
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@53
    move-result-object v3

    #@54
    const/4 v4, 0x2

    #@55
    aput-object v3, v6, v4

    #@57
    .line 470
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    #@59
    if-nez v3, :cond_7

    #@5b
    const/4 v3, -0x1

    #@5c
    :goto_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5f
    move-result-object v3

    #@60
    const/4 v4, 0x3

    #@61
    aput-object v3, v6, v4

    #@63
    const/4 v3, 0x4

    #@64
    aput-object p2, v6, v3

    #@66
    .line 468
    const/16 v3, 0x755c

    #@68
    invoke-static {v3, v6}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@6b
    .line 472
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@6d
    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mBooting:Z

    #@6f
    if-nez v3, :cond_8

    #@71
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@73
    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    #@75
    if-eqz v3, :cond_8

    #@77
    .line 446
    :cond_4
    :goto_3
    return-void

    #@78
    .line 455
    :cond_5
    if-nez p1, :cond_1

    #@7a
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@7d
    move-result-object v3

    #@7e
    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    #@80
    if-eq v3, v6, :cond_1

    #@82
    goto :goto_0

    #@83
    :cond_6
    move v3, v4

    #@84
    .line 460
    goto :goto_1

    #@85
    .line 470
    :cond_7
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    #@87
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->getStackId()I

    #@8a
    move-result v3

    #@8b
    goto :goto_2

    #@8c
    .line 473
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    #@8f
    move-result-object v0

    #@90
    .line 474
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_4

    #@92
    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->idle:Z

    #@94
    if-eqz v3, :cond_4

    #@96
    .line 475
    invoke-direct {p0}, Lcom/android/server/am/ActivityStackSupervisor;->checkFinishBootingLocked()Z

    #@99
    goto :goto_3
.end method

.method moveHomeStackTaskToTop(ILjava/lang/String;)Z
    .locals 3
    .param p1, "homeStackTaskType"    # I
    .param p2, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 482
    const/4 v1, 0x2

    #@2
    if-ne p1, v1, :cond_0

    #@4
    .line 483
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@6
    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->showRecentApps()V

    #@9
    .line 484
    return v2

    #@a
    .line 487
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    #@c
    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityStack;->moveHomeStackTaskToTop(I)V

    #@f
    .line 489
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getHomeActivity()Lcom/android/server/am/ActivityRecord;

    #@12
    move-result-object v0

    #@13
    .line 490
    .local v0, "top":Lcom/android/server/am/ActivityRecord;
    if-nez v0, :cond_1

    #@15
    .line 491
    return v2

    #@16
    .line 493
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@18
    invoke-virtual {v1, v0, p2}, Lcom/android/server/am/ActivityManagerService;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    #@1b
    .line 494
    const/4 v1, 0x1

    #@1c
    return v1
.end method

.method moveTaskToStackLocked(IIZ)V
    .locals 6
    .param p1, "taskId"    # I
    .param p2, "stackId"    # I
    .param p3, "toTop"    # Z

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    .line 3015
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    #@5
    move-result-object v1

    #@6
    .line 3016
    .local v1, "task":Lcom/android/server/am/TaskRecord;
    if-nez v1, :cond_0

    #@8
    .line 3017
    const-string/jumbo v2, "ActivityManager"

    #@b
    new-instance v3, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v4, "moveTaskToStack: no task for id="

    #@13
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v3

    #@17
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v3

    #@1f
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@22
    .line 3018
    return-void

    #@23
    .line 3020
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    #@26
    move-result-object v0

    #@27
    .line 3021
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    if-nez v0, :cond_1

    #@29
    .line 3022
    const-string/jumbo v2, "ActivityManager"

    #@2c
    new-instance v3, Ljava/lang/StringBuilder;

    #@2e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@31
    const-string/jumbo v4, "moveTaskToStack: no stack for id="

    #@34
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v3

    #@38
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v3

    #@3c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v3

    #@40
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@43
    .line 3023
    return-void

    #@44
    .line 3025
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@46
    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/wm/WindowManagerService;->moveTaskToStack(IIZ)V

    #@49
    .line 3026
    iget-object v2, v1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@4b
    if-eqz v2, :cond_2

    #@4d
    .line 3027
    iget-object v2, v1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@4f
    const-string/jumbo v3, "moveTaskToStack"

    #@52
    invoke-virtual {v2, v1, v3, v5}, Lcom/android/server/am/ActivityStack;->removeTask(Lcom/android/server/am/TaskRecord;Ljava/lang/String;Z)V

    #@55
    .line 3029
    :cond_2
    const/4 v2, 0x1

    #@56
    invoke-virtual {v0, v1, p3, v2}, Lcom/android/server/am/ActivityStack;->addTask(Lcom/android/server/am/TaskRecord;ZZ)V

    #@59
    .line 3032
    invoke-virtual {v0, v4, v5}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V

    #@5c
    .line 3033
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked()Z

    #@5f
    .line 3014
    return-void
.end method

.method notifyActivityDrawnForKeyguard()V
    .locals 1

    #@0
    .prologue
    .line 416
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@2
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->notifyActivityDrawnForKeyguard()V

    #@5
    .line 414
    return-void
.end method

.method public onDisplayAdded(I)V
    .locals 4
    .param p1, "displayId"    # I

    #@0
    .prologue
    .line 3734
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
    .line 3732
    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 4
    .param p1, "displayId"    # I

    #@0
    .prologue
    .line 3746
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
    .line 3744
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 4
    .param p1, "displayId"    # I

    #@0
    .prologue
    .line 3740
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
    .line 3738
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
    .line 3958
    const/4 v0, 0x0

    #@4
    .line 3959
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
    .line 3960
    iget-object v11, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeTasks:Ljava/util/ArrayList;

    #@10
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@13
    move-result-object v3

    #@14
    check-cast v3, Lcom/android/server/am/TaskRecord;

    #@16
    .line 3962
    .local v3, "lockedTask":Lcom/android/server/am/TaskRecord;
    iget v11, v3, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    #@18
    if-eq v11, v12, :cond_1

    #@1a
    .line 3963
    iget v11, v3, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    #@1c
    if-ne v11, v14, :cond_2

    #@1e
    const/4 v10, 0x1

    #@1f
    .line 3964
    .local v10, "wasWhitelisted":Z
    :goto_1
    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->setLockTaskAuth()V

    #@22
    .line 3966
    iget v11, v3, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    #@24
    if-eq v11, v12, :cond_3

    #@26
    .line 3967
    iget v11, v3, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    #@28
    if-ne v11, v14, :cond_4

    #@2a
    const/4 v2, 0x1

    #@2b
    .line 3968
    .local v2, "isWhitelisted":Z
    :goto_2
    if-eqz v10, :cond_0

    #@2d
    if-eqz v2, :cond_5

    #@2f
    .line 3959
    :cond_0
    :goto_3
    add-int/lit8 v9, v9, -0x1

    #@31
    goto :goto_0

    #@32
    .line 3962
    .end local v2    # "isWhitelisted":Z
    .end local v10    # "wasWhitelisted":Z
    :cond_1
    const/4 v10, 0x1

    #@33
    .restart local v10    # "wasWhitelisted":Z
    goto :goto_1

    #@34
    .line 3963
    .end local v10    # "wasWhitelisted":Z
    :cond_2
    const/4 v10, 0x0

    #@35
    .restart local v10    # "wasWhitelisted":Z
    goto :goto_1

    #@36
    .line 3966
    :cond_3
    const/4 v2, 0x1

    #@37
    .restart local v2    # "isWhitelisted":Z
    goto :goto_2

    #@38
    .line 3967
    .end local v2    # "isWhitelisted":Z
    :cond_4
    const/4 v2, 0x0

    #@39
    .restart local v2    # "isWhitelisted":Z
    goto :goto_2

    #@3a
    .line 3972
    :cond_5
    invoke-virtual {p0, v3}, Lcom/android/server/am/ActivityStackSupervisor;->removeLockedTaskLocked(Lcom/android/server/am/TaskRecord;)V

    #@3d
    .line 3973
    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->performClearTaskLocked()V

    #@40
    .line 3974
    const/4 v0, 0x1

    #@41
    goto :goto_3

    #@42
    .line 3977
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
    .line 3978
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
    .line 3979
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
    .line 3980
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@61
    move-result-object v5

    #@62
    check-cast v5, Lcom/android/server/am/ActivityStack;

    #@64
    .line 3981
    .local v5, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack;->onLockTaskPackagesUpdatedLocked()V

    #@67
    .line 3979
    add-int/lit8 v6, v6, -0x1

    #@69
    goto :goto_5

    #@6a
    .line 3977
    .end local v5    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_7
    add-int/lit8 v1, v1, -0x1

    #@6c
    goto :goto_4

    #@6d
    .line 3984
    .end local v6    # "stackNdx":I
    .end local v7    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    #@70
    move-result-object v4

    #@71
    .line 3985
    .local v4, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v4, :cond_b

    #@73
    iget-object v8, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@75
    .line 3986
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
    .line 3987
    iget v11, v8, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    #@81
    if-ne v11, v12, :cond_9

    #@83
    .line 3991
    const-string/jumbo v11, "package updated"

    #@86
    const/4 v12, 0x1

    #@87
    invoke-virtual {p0, v8, v12, v11, v13}, Lcom/android/server/am/ActivityStackSupervisor;->setLockTaskModeLocked(Lcom/android/server/am/TaskRecord;ILjava/lang/String;Z)V

    #@8a
    .line 3993
    const/4 v0, 0x1

    #@8b
    .line 3995
    :cond_9
    if-eqz v0, :cond_a

    #@8d
    .line 3996
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked()Z

    #@90
    .line 3957
    :cond_a
    return-void

    #@91
    .line 3985
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
    .line 707
    const/4 v1, 0x0

    #@2
    .line 708
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
    .line 709
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
    .line 710
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
    .line 711
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@21
    move-result-object v2

    #@22
    check-cast v2, Lcom/android/server/am/ActivityStack;

    #@24
    .line 712
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    #@27
    move-result v5

    #@28
    if-nez v5, :cond_0

    #@2a
    iget-object v5, v2, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    #@2c
    if-eqz v5, :cond_0

    #@2e
    .line 715
    invoke-virtual {v2, p1, v6, p2, p3}, Lcom/android/server/am/ActivityStack;->startPausingLocked(ZZZZ)Z

    #@31
    move-result v5

    #@32
    or-int/2addr v1, v5

    #@33
    .line 710
    :cond_0
    add-int/lit8 v3, v3, -0x1

    #@35
    goto :goto_1

    #@36
    .line 708
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    #@38
    goto :goto_0

    #@39
    .line 720
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
    .line 747
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
    .line 748
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
    .line 749
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
    .line 750
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1f
    move-result-object v1

    #@20
    check-cast v1, Lcom/android/server/am/ActivityStack;

    #@22
    .line 751
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    iget-object v4, v1, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    #@24
    if-eqz v4, :cond_0

    #@26
    .line 752
    iget-object v4, v1, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    #@28
    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mParentActivity:Lcom/android/server/am/ActivityRecord;

    #@2a
    if-ne v4, p1, :cond_0

    #@2c
    .line 753
    invoke-virtual {v1, p2, p3, p4, p5}, Lcom/android/server/am/ActivityStack;->startPausingLocked(ZZZZ)Z

    #@2f
    .line 749
    :cond_0
    add-int/lit8 v2, v2, -0x1

    #@31
    goto :goto_1

    #@32
    .line 747
    .end local v1    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    #@34
    goto :goto_0

    #@35
    .line 745
    .end local v2    # "stackNdx":I
    .end local v3    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_2
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
    .line 3438
    const/4 v3, 0x0

    #@2
    .line 3440
    .local v3, "stops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->allResumedActivitiesVisible()Z

    #@5
    move-result v1

    #@6
    .line 3441
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
    .line 3442
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    #@12
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@15
    move-result-object v2

    #@16
    check-cast v2, Lcom/android/server/am/ActivityRecord;

    #@18
    .line 3443
    .local v2, "s":Lcom/android/server/am/ActivityRecord;
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    #@1a
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@1d
    move-result v4

    #@1e
    .line 3446
    .local v4, "waitingVisible":Z
    if-eqz v4, :cond_0

    #@20
    if-eqz v1, :cond_0

    #@22
    .line 3447
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    #@24
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@27
    .line 3448
    iget-boolean v5, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    #@29
    if-eqz v5, :cond_0

    #@2b
    .line 3455
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@2d
    iget-object v6, v2, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@2f
    invoke-virtual {v5, v6, v7}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    #@32
    .line 3458
    :cond_0
    if-eqz v4, :cond_1

    #@34
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@36
    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->isSleepingOrShuttingDown()Z

    #@39
    move-result v5

    #@3a
    if-eqz v5, :cond_3

    #@3c
    :cond_1
    if-eqz p1, :cond_3

    #@3e
    .line 3460
    if-nez v3, :cond_2

    #@40
    .line 3461
    new-instance v3, Ljava/util/ArrayList;

    #@42
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@45
    .line 3463
    :cond_2
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@48
    .line 3464
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    #@4a
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@4d
    .line 3441
    :cond_3
    add-int/lit8 v0, v0, -0x1

    #@4f
    goto :goto_0

    #@50
    .line 3468
    .end local v2    # "s":Lcom/android/server/am/ActivityRecord;
    .end local v4    # "waitingVisible":Z
    :cond_4
    return-object v3
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
    if-eqz p3, :cond_0

    #@2
    .line 1184
    const/4 v4, 0x0

    #@3
    move-object/from16 v0, p1

    #@5
    move-object/from16 v1, p2

    #@7
    invoke-virtual {v0, v1, v4}, Lcom/android/server/am/ActivityRecord;->startFreezingScreenLocked(Lcom/android/server/am/ProcessRecord;I)V

    #@a
    .line 1185
    move-object/from16 v0, p0

    #@c
    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@e
    move-object/from16 v0, p1

    #@10
    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@12
    const/4 v6, 0x1

    #@13
    invoke-virtual {v4, v5, v6}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    #@16
    .line 1188
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->startLaunchTickingLocked()V

    #@19
    .line 1197
    :cond_0
    if-eqz p4, :cond_1

    #@1b
    .line 1198
    move-object/from16 v0, p0

    #@1d
    iget-object v5, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@1f
    .line 1199
    move-object/from16 v0, p0

    #@21
    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@23
    iget-object v6, v4, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    #@25
    .line 1200
    invoke-virtual/range {p1 .. p2}, Lcom/android/server/am/ActivityRecord;->mayFreezeScreenLocked(Lcom/android/server/am/ProcessRecord;)Z

    #@28
    move-result v4

    #@29
    if-eqz v4, :cond_5

    #@2b
    move-object/from16 v0, p1

    #@2d
    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@2f
    .line 1198
    :goto_0
    invoke-virtual {v5, v6, v4}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokens(Landroid/content/res/Configuration;Landroid/os/IBinder;)Landroid/content/res/Configuration;

    #@32
    move-result-object v22

    #@33
    .line 1201
    .local v22, "config":Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    #@35
    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@37
    const/4 v5, 0x0

    #@38
    const/4 v6, 0x0

    #@39
    move-object/from16 v0, v22

    #@3b
    move-object/from16 v1, p1

    #@3d
    invoke-virtual {v4, v0, v1, v5, v6}, Lcom/android/server/am/ActivityManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;ZZ)Z

    #@40
    .line 1204
    .end local v22    # "config":Landroid/content/res/Configuration;
    :cond_1
    move-object/from16 v0, p2

    #@42
    move-object/from16 v1, p1

    #@44
    iput-object v0, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@46
    .line 1205
    const/4 v4, 0x0

    #@47
    move-object/from16 v0, p2

    #@49
    iput-object v4, v0, Lcom/android/server/am/ProcessRecord;->waitingToKill:Ljava/lang/String;

    #@4b
    .line 1206
    move-object/from16 v0, p1

    #@4d
    iget v4, v0, Lcom/android/server/am/ActivityRecord;->launchCount:I

    #@4f
    add-int/lit8 v4, v4, 0x1

    #@51
    move-object/from16 v0, p1

    #@53
    iput v4, v0, Lcom/android/server/am/ActivityRecord;->launchCount:I

    #@55
    .line 1207
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@58
    move-result-wide v4

    #@59
    move-object/from16 v0, p1

    #@5b
    iput-wide v4, v0, Lcom/android/server/am/ActivityRecord;->lastLaunchTime:J

    #@5d
    .line 1211
    move-object/from16 v0, p2

    #@5f
    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    #@61
    move-object/from16 v0, p1

    #@63
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    #@66
    move-result v25

    #@67
    .line 1212
    .local v25, "idx":I
    if-gez v25, :cond_2

    #@69
    .line 1213
    move-object/from16 v0, p2

    #@6b
    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    #@6d
    move-object/from16 v0, p1

    #@6f
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@72
    .line 1215
    :cond_2
    move-object/from16 v0, p0

    #@74
    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@76
    const/4 v5, 0x1

    #@77
    const/4 v6, 0x0

    #@78
    move-object/from16 v0, p2

    #@7a
    invoke-virtual {v4, v0, v5, v6}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    #@7d
    .line 1216
    move-object/from16 v0, p0

    #@7f
    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@81
    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V

    #@84
    .line 1218
    move-object/from16 v0, p1

    #@86
    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@88
    move-object/from16 v31, v0

    #@8a
    .line 1219
    .local v31, "task":Lcom/android/server/am/TaskRecord;
    move-object/from16 v0, v31

    #@8c
    iget v4, v0, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    #@8e
    const/4 v5, 0x2

    #@8f
    if-eq v4, v5, :cond_3

    #@91
    .line 1220
    move-object/from16 v0, v31

    #@93
    iget v4, v0, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    #@95
    const/4 v5, 0x4

    #@96
    if-ne v4, v5, :cond_4

    #@98
    .line 1221
    :cond_3
    const-string/jumbo v4, "mLockTaskAuth==LAUNCHABLE"

    #@9b
    const/4 v5, 0x1

    #@9c
    const/4 v6, 0x0

    #@9d
    move-object/from16 v0, p0

    #@9f
    move-object/from16 v1, v31

    #@a1
    invoke-virtual {v0, v1, v5, v4, v6}, Lcom/android/server/am/ActivityStackSupervisor;->setLockTaskModeLocked(Lcom/android/server/am/TaskRecord;ILjava/lang/String;Z)V

    #@a4
    .line 1224
    :cond_4
    move-object/from16 v0, v31

    #@a6
    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@a8
    move-object/from16 v30, v0

    #@aa
    .line 1226
    .local v30, "stack":Lcom/android/server/am/ActivityStack;
    :try_start_0
    move-object/from16 v0, p2

    #@ac
    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@ae
    if-nez v4, :cond_6

    #@b0
    .line 1227
    new-instance v4, Landroid/os/RemoteException;

    #@b2
    invoke-direct {v4}, Landroid/os/RemoteException;-><init>()V

    #@b5
    throw v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b6
    .line 1310
    :catch_0
    move-exception v23

    #@b7
    .line 1311
    .local v23, "e":Landroid/os/RemoteException;
    move-object/from16 v0, p1

    #@b9
    iget-boolean v4, v0, Lcom/android/server/am/ActivityRecord;->launchFailed:Z

    #@bb
    if-eqz v4, :cond_13

    #@bd
    .line 1314
    const-string/jumbo v4, "ActivityManager"

    #@c0
    new-instance v5, Ljava/lang/StringBuilder;

    #@c2
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@c5
    const-string/jumbo v6, "Second failure launching "

    #@c8
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cb
    move-result-object v5

    #@cc
    .line 1315
    move-object/from16 v0, p1

    #@ce
    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    #@d0
    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@d3
    move-result-object v6

    #@d4
    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@d7
    move-result-object v6

    #@d8
    .line 1314
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@db
    move-result-object v5

    #@dc
    .line 1316
    const-string/jumbo v6, ", giving up"

    #@df
    .line 1314
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e2
    move-result-object v5

    #@e3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e6
    move-result-object v5

    #@e7
    move-object/from16 v0, v23

    #@e9
    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@ec
    .line 1317
    move-object/from16 v0, p0

    #@ee
    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@f0
    move-object/from16 v0, p2

    #@f2
    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityManagerService;->appDiedLocked(Lcom/android/server/am/ProcessRecord;)V

    #@f5
    .line 1318
    move-object/from16 v0, p1

    #@f7
    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@f9
    .line 1319
    const-string/jumbo v8, "2nd-crash"

    #@fc
    .line 1318
    const/4 v6, 0x0

    #@fd
    const/4 v7, 0x0

    #@fe
    .line 1319
    const/4 v9, 0x0

    #@ff
    move-object/from16 v4, v30

    #@101
    .line 1318
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/am/ActivityStack;->requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    #@104
    .line 1320
    const/4 v4, 0x0

    #@105
    return v4

    #@106
    .line 1200
    .end local v23    # "e":Landroid/os/RemoteException;
    .end local v25    # "idx":I
    .end local v30    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v31    # "task":Lcom/android/server/am/TaskRecord;
    :cond_5
    const/4 v4, 0x0

    #@107
    goto/16 :goto_0

    #@109
    .line 1229
    .restart local v25    # "idx":I
    .restart local v30    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v31    # "task":Lcom/android/server/am/TaskRecord;
    :cond_6
    const/16 v17, 0x0

    #@10b
    .line 1230
    .local v17, "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    const/16 v18, 0x0

    #@10d
    .line 1231
    .local v18, "newIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    if-eqz p3, :cond_7

    #@10f
    .line 1232
    :try_start_1
    move-object/from16 v0, p1

    #@111
    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    #@113
    move-object/from16 v17, v0

    #@115
    .line 1233
    .local v17, "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    move-object/from16 v0, p1

    #@117
    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    #@119
    move-object/from16 v18, v0

    #@11b
    .line 1238
    .end local v17    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .end local v18    # "newIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    :cond_7
    if-eqz p3, :cond_8

    #@11d
    .line 1239
    const/4 v4, 0x4

    #@11e
    new-array v4, v4, [Ljava/lang/Object;

    #@120
    .line 1240
    move-object/from16 v0, p1

    #@122
    iget v5, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    #@124
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@127
    move-result-object v5

    #@128
    const/4 v6, 0x0

    #@129
    aput-object v5, v4, v6

    #@12b
    invoke-static/range {p1 .. p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@12e
    move-result v5

    #@12f
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@132
    move-result-object v5

    #@133
    const/4 v6, 0x1

    #@134
    aput-object v5, v4, v6

    #@136
    .line 1241
    move-object/from16 v0, v31

    #@138
    iget v5, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    #@13a
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@13d
    move-result-object v5

    #@13e
    const/4 v6, 0x2

    #@13f
    aput-object v5, v4, v6

    #@141
    move-object/from16 v0, p1

    #@143
    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    #@145
    const/4 v6, 0x3

    #@146
    aput-object v5, v4, v6

    #@148
    .line 1239
    const/16 v5, 0x7536

    #@14a
    invoke-static {v5, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@14d
    .line 1243
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    #@150
    move-result v4

    #@151
    if-eqz v4, :cond_9

    #@153
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->isNotResolverActivity()Z

    #@156
    move-result v4

    #@157
    if-eqz v4, :cond_9

    #@159
    .line 1245
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
    .line 1247
    :cond_9
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
    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityManagerService;->ensurePackageDexOpt(Ljava/lang/String;)V

    #@17f
    .line 1248
    const/4 v4, 0x0

    #@180
    move-object/from16 v0, p1

    #@182
    iput-boolean v4, v0, Lcom/android/server/am/ActivityRecord;->sleeping:Z

    #@184
    .line 1249
    const/4 v4, 0x0

    #@185
    move-object/from16 v0, p1

    #@187
    iput-boolean v4, v0, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    #@189
    .line 1250
    move-object/from16 v0, p0

    #@18b
    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@18d
    move-object/from16 v0, p1

    #@18f
    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityManagerService;->showAskCompatModeDialogLocked(Lcom/android/server/am/ActivityRecord;)V

    #@192
    .line 1251
    move-object/from16 v0, p0

    #@194
    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@196
    move-object/from16 v0, p1

    #@198
    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@19a
    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@19c
    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityManagerService;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    #@19f
    move-result-object v4

    #@1a0
    move-object/from16 v0, p1

    #@1a2
    iput-object v4, v0, Lcom/android/server/am/ActivityRecord;->compat:Landroid/content/res/CompatibilityInfo;

    #@1a4
    .line 1252
    const/16 v21, 0x0

    #@1a6
    .line 1253
    .local v21, "profilerInfo":Landroid/app/ProfilerInfo;
    move-object/from16 v0, p0

    #@1a8
    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@1aa
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProfileApp:Ljava/lang/String;

    #@1ac
    if-eqz v4, :cond_c

    #@1ae
    move-object/from16 v0, p0

    #@1b0
    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@1b2
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProfileApp:Ljava/lang/String;

    #@1b4
    move-object/from16 v0, p2

    #@1b6
    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    #@1b8
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1bb
    move-result v4

    #@1bc
    if-eqz v4, :cond_c

    #@1be
    .line 1254
    move-object/from16 v0, p0

    #@1c0
    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@1c2
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProfileProc:Lcom/android/server/am/ProcessRecord;

    #@1c4
    if-eqz v4, :cond_a

    #@1c6
    move-object/from16 v0, p0

    #@1c8
    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@1ca
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProfileProc:Lcom/android/server/am/ProcessRecord;

    #@1cc
    move-object/from16 v0, p2

    #@1ce
    if-ne v4, v0, :cond_c

    #@1d0
    .line 1255
    :cond_a
    move-object/from16 v0, p0

    #@1d2
    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@1d4
    move-object/from16 v0, p2

    #@1d6
    iput-object v0, v4, Lcom/android/server/am/ActivityManagerService;->mProfileProc:Lcom/android/server/am/ProcessRecord;

    #@1d8
    .line 1256
    move-object/from16 v0, p0

    #@1da
    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@1dc
    iget-object v0, v4, Lcom/android/server/am/ActivityManagerService;->mProfileFile:Ljava/lang/String;

    #@1de
    move-object/from16 v29, v0

    #@1e0
    .line 1257
    .local v29, "profileFile":Ljava/lang/String;
    if-eqz v29, :cond_c

    #@1e2
    .line 1258
    move-object/from16 v0, p0

    #@1e4
    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@1e6
    iget-object v0, v4, Lcom/android/server/am/ActivityManagerService;->mProfileFd:Landroid/os/ParcelFileDescriptor;

    #@1e8
    move-object/from16 v28, v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@1ea
    .line 1259
    .local v28, "profileFd":Landroid/os/ParcelFileDescriptor;
    if-eqz v28, :cond_b

    #@1ec
    .line 1261
    :try_start_2
    invoke-virtual/range {v28 .. v28}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    #@1ef
    move-result-object v28

    #@1f0
    .line 1273
    .end local v28    # "profileFd":Landroid/os/ParcelFileDescriptor;
    :cond_b
    :goto_1
    :try_start_3
    new-instance v21, Landroid/app/ProfilerInfo;

    #@1f2
    .line 1274
    .end local v21    # "profilerInfo":Landroid/app/ProfilerInfo;
    move-object/from16 v0, p0

    #@1f4
    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@1f6
    iget v4, v4, Lcom/android/server/am/ActivityManagerService;->mSamplingInterval:I

    #@1f8
    move-object/from16 v0, p0

    #@1fa
    iget-object v5, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@1fc
    iget-boolean v5, v5, Lcom/android/server/am/ActivityManagerService;->mAutoStopProfiler:Z

    #@1fe
    .line 1273
    move-object/from16 v0, v21

    #@200
    move-object/from16 v1, v29

    #@202
    move-object/from16 v2, v28

    #@204
    invoke-direct {v0, v1, v2, v4, v5}, Landroid/app/ProfilerInfo;-><init>(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;IZ)V

    #@207
    .line 1279
    .end local v29    # "profileFile":Ljava/lang/String;
    :cond_c
    if-eqz p3, :cond_d

    #@209
    .line 1280
    const/4 v4, 0x1

    #@20a
    move-object/from16 v0, p2

    #@20c
    iput-boolean v4, v0, Lcom/android/server/am/ProcessRecord;->hasShownUi:Z

    #@20e
    .line 1281
    const/4 v4, 0x1

    #@20f
    move-object/from16 v0, p2

    #@211
    iput-boolean v4, v0, Lcom/android/server/am/ProcessRecord;->pendingUiClean:Z

    #@213
    .line 1283
    :cond_d
    move-object/from16 v0, p0

    #@215
    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@217
    iget v4, v4, Lcom/android/server/am/ActivityManagerService;->mTopProcessState:I

    #@219
    move-object/from16 v0, p2

    #@21b
    invoke-virtual {v0, v4}, Lcom/android/server/am/ProcessRecord;->forceProcessStateUpTo(I)V

    #@21e
    .line 1284
    move-object/from16 v0, p2

    #@220
    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@222
    new-instance v5, Landroid/content/Intent;

    #@224
    move-object/from16 v0, p1

    #@226
    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    #@228
    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    #@22b
    move-object/from16 v0, p1

    #@22d
    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@22f
    .line 1285
    invoke-static/range {p1 .. p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@232
    move-result v7

    #@233
    move-object/from16 v0, p1

    #@235
    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@237
    new-instance v9, Landroid/content/res/Configuration;

    #@239
    move-object/from16 v0, p0

    #@23b
    iget-object v10, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@23d
    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    #@23f
    invoke-direct {v9, v10}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    #@242
    .line 1286
    new-instance v10, Landroid/content/res/Configuration;

    #@244
    move-object/from16 v0, v30

    #@246
    iget-object v11, v0, Lcom/android/server/am/ActivityStack;->mOverrideConfig:Landroid/content/res/Configuration;

    #@248
    invoke-direct {v10, v11}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    #@24b
    move-object/from16 v0, p1

    #@24d
    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->compat:Landroid/content/res/CompatibilityInfo;

    #@24f
    move-object/from16 v0, p1

    #@251
    iget-object v12, v0, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    #@253
    .line 1287
    move-object/from16 v0, v31

    #@255
    iget-object v13, v0, Lcom/android/server/am/TaskRecord;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    #@257
    move-object/from16 v0, p2

    #@259
    iget v14, v0, Lcom/android/server/am/ProcessRecord;->repProcState:I

    #@25b
    move-object/from16 v0, p1

    #@25d
    iget-object v15, v0, Lcom/android/server/am/ActivityRecord;->icicle:Landroid/os/Bundle;

    #@25f
    move-object/from16 v0, p1

    #@261
    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->persistentState:Landroid/os/PersistableBundle;

    #@263
    move-object/from16 v16, v0

    #@265
    .line 1288
    if-eqz p3, :cond_12

    #@267
    const/16 v19, 0x0

    #@269
    :goto_2
    move-object/from16 v0, p0

    #@26b
    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@26d
    move-object/from16 v20, v0

    #@26f
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/am/ActivityManagerService;->isNextTransitionForward()Z

    #@272
    move-result v20

    #@273
    .line 1284
    invoke-interface/range {v4 .. v21}, Landroid/app/IApplicationThread;->scheduleLaunchActivity(Landroid/content/Intent;Landroid/os/IBinder;ILandroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractor;ILandroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/util/List;Ljava/util/List;ZZLandroid/app/ProfilerInfo;)V

    #@276
    .line 1290
    move-object/from16 v0, p2

    #@278
    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    #@27a
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    #@27c
    and-int/lit8 v4, v4, 0x2

    #@27e
    if-eqz v4, :cond_f

    #@280
    .line 1295
    move-object/from16 v0, p2

    #@282
    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    #@284
    move-object/from16 v0, p2

    #@286
    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    #@288
    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@28a
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@28d
    move-result v4

    #@28e
    if-eqz v4, :cond_f

    #@290
    .line 1296
    move-object/from16 v0, p0

    #@292
    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@294
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    #@296
    if-eqz v4, :cond_e

    #@298
    .line 1297
    move-object/from16 v0, p0

    #@29a
    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@29c
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    #@29e
    move-object/from16 v0, p2

    #@2a0
    if-eq v4, v0, :cond_e

    #@2a2
    .line 1298
    const-string/jumbo v4, "ActivityManager"

    #@2a5
    new-instance v5, Ljava/lang/StringBuilder;

    #@2a7
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@2aa
    const-string/jumbo v6, "Starting new heavy weight process "

    #@2ad
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b0
    move-result-object v5

    #@2b1
    move-object/from16 v0, p2

    #@2b3
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2b6
    move-result-object v5

    #@2b7
    .line 1299
    const-string/jumbo v6, " when already running "

    #@2ba
    .line 1298
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2bd
    move-result-object v5

    #@2be
    .line 1300
    move-object/from16 v0, p0

    #@2c0
    iget-object v6, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@2c2
    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    #@2c4
    .line 1298
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2c7
    move-result-object v5

    #@2c8
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2cb
    move-result-object v5

    #@2cc
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2cf
    .line 1302
    :cond_e
    move-object/from16 v0, p0

    #@2d1
    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@2d3
    move-object/from16 v0, p2

    #@2d5
    iput-object v0, v4, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    #@2d7
    .line 1303
    move-object/from16 v0, p0

    #@2d9
    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@2db
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    #@2dd
    .line 1304
    const/16 v5, 0x18

    #@2df
    .line 1303
    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    #@2e2
    move-result-object v26

    #@2e3
    .line 1305
    .local v26, "msg":Landroid/os/Message;
    move-object/from16 v0, p1

    #@2e5
    move-object/from16 v1, v26

    #@2e7
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2e9
    .line 1306
    move-object/from16 v0, p0

    #@2eb
    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@2ed
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    #@2ef
    move-object/from16 v0, v26

    #@2f1
    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    #@2f4
    .line 1329
    .end local v26    # "msg":Landroid/os/Message;
    :cond_f
    const/4 v4, 0x0

    #@2f5
    move-object/from16 v0, p1

    #@2f7
    iput-boolean v4, v0, Lcom/android/server/am/ActivityRecord;->launchFailed:Z

    #@2f9
    .line 1330
    move-object/from16 v0, v30

    #@2fb
    move-object/from16 v1, p1

    #@2fd
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->updateLRUListLocked(Lcom/android/server/am/ActivityRecord;)Z

    #@300
    move-result v4

    #@301
    if-eqz v4, :cond_10

    #@303
    .line 1331
    const-string/jumbo v4, "ActivityManager"

    #@306
    new-instance v5, Ljava/lang/StringBuilder;

    #@308
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@30b
    const-string/jumbo v6, "Activity "

    #@30e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@311
    move-result-object v5

    #@312
    move-object/from16 v0, p1

    #@314
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@317
    move-result-object v5

    #@318
    .line 1332
    const-string/jumbo v6, " being launched, but already in LRU list"

    #@31b
    .line 1331
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31e
    move-result-object v5

    #@31f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@322
    move-result-object v5

    #@323
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@326
    .line 1335
    :cond_10
    if-eqz p3, :cond_14

    #@328
    .line 1338
    move-object/from16 v0, v30

    #@32a
    move-object/from16 v1, p1

    #@32c
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->minimalResumeActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    #@32f
    .line 1354
    :goto_3
    move-object/from16 v0, p0

    #@331
    move-object/from16 v1, v30

    #@333
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    #@336
    move-result v4

    #@337
    if-eqz v4, :cond_11

    #@339
    .line 1355
    move-object/from16 v0, p0

    #@33b
    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@33d
    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->startSetupActivityLocked()V

    #@340
    .line 1360
    :cond_11
    move-object/from16 v0, p0

    #@342
    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@344
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    #@346
    move-object/from16 v0, p1

    #@348
    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@34a
    invoke-virtual {v4, v5}, Lcom/android/server/am/ActiveServices;->updateServiceConnectionActivitiesLocked(Lcom/android/server/am/ProcessRecord;)V

    #@34d
    .line 1362
    const/4 v4, 0x1

    #@34e
    return v4

    #@34f
    .line 1262
    .restart local v21    # "profilerInfo":Landroid/app/ProfilerInfo;
    .restart local v28    # "profileFd":Landroid/os/ParcelFileDescriptor;
    .restart local v29    # "profileFile":Ljava/lang/String;
    :catch_1
    move-exception v24

    #@350
    .line 1263
    .local v24, "e":Ljava/io/IOException;
    if-eqz v28, :cond_b

    #@352
    .line 1265
    :try_start_4
    invoke-virtual/range {v28 .. v28}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    #@355
    .line 1268
    :goto_4
    const/16 v28, 0x0

    #@357
    .local v28, "profileFd":Landroid/os/ParcelFileDescriptor;
    goto/16 :goto_1

    #@359
    .line 1266
    .local v28, "profileFd":Landroid/os/ParcelFileDescriptor;
    :catch_2
    move-exception v27

    #@35a
    .local v27, "o":Ljava/io/IOException;
    goto :goto_4

    #@35b
    .line 1288
    .end local v21    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v24    # "e":Ljava/io/IOException;
    .end local v27    # "o":Ljava/io/IOException;
    .end local v28    # "profileFd":Landroid/os/ParcelFileDescriptor;
    .end local v29    # "profileFile":Ljava/lang/String;
    :cond_12
    const/16 v19, 0x1

    #@35d
    goto/16 :goto_2

    #@35f
    .line 1325
    .restart local v23    # "e":Landroid/os/RemoteException;
    :cond_13
    move-object/from16 v0, p2

    #@361
    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    #@363
    move-object/from16 v0, p1

    #@365
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@368
    .line 1326
    throw v23

    #@369
    .line 1346
    .end local v23    # "e":Landroid/os/RemoteException;
    :cond_14
    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    #@36b
    move-object/from16 v0, p1

    #@36d
    iput-object v4, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    #@36f
    .line 1347
    const/4 v4, 0x1

    #@370
    move-object/from16 v0, p1

    #@372
    iput-boolean v4, v0, Lcom/android/server/am/ActivityRecord;->stopped:Z

    #@374
    goto :goto_3
.end method

.method releaseSomeActivitiesLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .locals 11
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3329
    const/4 v1, 0x0

    #@1
    .line 3331
    .local v1, "firstTask":Lcom/android/server/am/TaskRecord;
    const/4 v8, 0x0

    #@2
    .line 3333
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
    .line 3334
    iget-object v9, p1, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v4

    #@11
    check-cast v4, Lcom/android/server/am/ActivityRecord;

    #@13
    .line 3338
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
    .line 3340
    :cond_0
    return-void

    #@1e
    .line 3338
    :cond_1
    iget-object v9, v4, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    #@20
    sget-object v10, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    #@22
    if-eq v9, v10, :cond_0

    #@24
    .line 3344
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
    .line 3333
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@38
    goto :goto_0

    #@39
    .line 3344
    :cond_3
    iget-object v9, v4, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    #@3b
    sget-object v10, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    #@3d
    if-eq v9, v10, :cond_2

    #@3f
    .line 3345
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
    .line 3349
    iget-object v9, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@4d
    if-eqz v9, :cond_2

    #@4f
    .line 3352
    if-nez v1, :cond_4

    #@51
    .line 3353
    iget-object v1, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@53
    .local v1, "firstTask":Lcom/android/server/am/TaskRecord;
    goto :goto_1

    #@54
    .line 3354
    .end local v1    # "firstTask":Lcom/android/server/am/TaskRecord;
    :cond_4
    iget-object v9, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@56
    if-eq v1, v9, :cond_2

    #@58
    .line 3355
    if-nez v8, :cond_5

    #@5a
    .line 3356
    new-instance v8, Landroid/util/ArraySet;

    #@5c
    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    #@5f
    .line 3357
    .local v8, "tasks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {v8, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@62
    .line 3359
    .end local v8    # "tasks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/am/TaskRecord;>;"
    :cond_5
    iget-object v9, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@64
    invoke-virtual {v8, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@67
    goto :goto_1

    #@68
    .line 3363
    .end local v4    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_6
    if-nez v8, :cond_7

    #@6a
    .line 3365
    return-void

    #@6b
    .line 3369
    :cond_7
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    #@6d
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    #@70
    move-result v3

    #@71
    .line 3370
    .local v3, "numDisplays":I
    const/4 v0, 0x0

    #@72
    .local v0, "displayNdx":I
    :goto_2
    if-ge v0, v3, :cond_a

    #@74
    .line 3371
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
    .line 3373
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
    .line 3374
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@88
    move-result-object v5

    #@89
    check-cast v5, Lcom/android/server/am/ActivityStack;

    #@8b
    .line 3376
    .local v5, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v5, p1, v8, p2}, Lcom/android/server/am/ActivityStack;->releaseSomeActivitiesLocked(Lcom/android/server/am/ProcessRecord;Landroid/util/ArraySet;Ljava/lang/String;)I

    #@8e
    move-result v9

    #@8f
    if-lez v9, :cond_8

    #@91
    .line 3377
    return-void

    #@92
    .line 3373
    :cond_8
    add-int/lit8 v6, v6, 0x1

    #@94
    goto :goto_3

    #@95
    .line 3370
    .end local v5    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_9
    add-int/lit8 v0, v0, 0x1

    #@97
    goto :goto_2

    #@98
    .line 3327
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
    .line 2850
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->mChildContainers:Ljava/util/ArrayList;

    #@2
    .line 2851
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
    .line 2852
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@d
    move-result-object v1

    #@e
    check-cast v1, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    #@10
    .line 2855
    .local v1, "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->release()V

    #@13
    .line 2851
    add-int/lit8 v2, v2, -0x1

    #@15
    goto :goto_0

    #@16
    .line 2849
    .end local v1    # "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    :cond_0
    return-void
.end method

.method removeLockedTaskLocked(Lcom/android/server/am/TaskRecord;)V
    .locals 2
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    #@0
    .prologue
    .line 3850
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeTasks:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@5
    move-result v1

    #@6
    if-nez v1, :cond_0

    #@8
    .line 3851
    return-void

    #@9
    .line 3854
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeTasks:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 3858
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    #@14
    move-result-object v0

    #@15
    .line 3859
    .local v0, "lockTaskMsg":Landroid/os/Message;
    iget v1, p1, Lcom/android/server/am/TaskRecord;->userId:I

    #@17
    iput v1, v0, Landroid/os/Message;->arg1:I

    #@19
    .line 3860
    const/16 v1, 0x6e

    #@1b
    iput v1, v0, Landroid/os/Message;->what:I

    #@1d
    .line 3861
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    #@1f
    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendMessage(Landroid/os/Message;)Z

    #@22
    .line 3849
    .end local v0    # "lockTaskMsg":Landroid/os/Message;
    :cond_1
    return-void
.end method

.method removePendingActivityLaunchesLocked(Lcom/android/server/am/ActivityStack;)V
    .locals 3
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;

    #@0
    .prologue
    .line 2476
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPendingActivityLaunches:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v2

    #@6
    add-int/lit8 v1, v2, -0x1

    #@8
    .local v1, "palNdx":I
    :goto_0
    if-ltz v1, :cond_1

    #@a
    .line 2477
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPendingActivityLaunches:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;

    #@12
    .line 2478
    .local v0, "pal":Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;
    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;->stack:Lcom/android/server/am/ActivityStack;

    #@14
    if-ne v2, p1, :cond_0

    #@16
    .line 2479
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPendingActivityLaunches:Ljava/util/ArrayList;

    #@18
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@1b
    .line 2476
    :cond_0
    add-int/lit8 v1, v1, -0x1

    #@1d
    goto :goto_0

    #@1e
    .line 2475
    .end local v0    # "pal":Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;
    :cond_1
    return-void
.end method

.method removeSleepTimeouts()V
    .locals 2

    #@0
    .prologue
    .line 3722
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mSleepTimeout:Z

    #@3
    .line 3723
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    #@5
    const/16 v1, 0x67

    #@7
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->removeMessages(I)V

    #@a
    .line 3721
    return-void
.end method

.method removeTimeoutsForActivityLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 2
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    #@0
    .prologue
    .line 3712
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    #@2
    const/16 v1, 0x64

    #@4
    invoke-virtual {v0, v1, p1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->removeMessages(ILjava/lang/Object;)V

    #@7
    .line 3709
    return-void
.end method

.method removeUserLocked(I)V
    .locals 1
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 2661
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mUserStackInFront:Landroid/util/SparseIntArray;

    #@2
    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    #@5
    .line 2660
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
    .line 784
    const/4 v0, 0x0

    #@1
    .line 785
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
    .line 786
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@10
    move-result-object v2

    #@11
    check-cast v2, Landroid/app/IActivityManager$WaitResult;

    #@13
    .line 787
    .local v2, "w":Landroid/app/IActivityManager$WaitResult;
    iget-object v3, v2, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;

    #@15
    if-nez v3, :cond_1

    #@17
    .line 788
    const/4 v0, 0x1

    #@18
    .line 789
    iput-boolean p1, v2, Landroid/app/IActivityManager$WaitResult;->timeout:Z

    #@1a
    .line 790
    if-eqz p2, :cond_0

    #@1c
    .line 791
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
    .line 793
    :cond_0
    iput-wide p3, v2, Landroid/app/IActivityManager$WaitResult;->thisTime:J

    #@2d
    .line 794
    iput-wide p5, v2, Landroid/app/IActivityManager$WaitResult;->totalTime:J

    #@2f
    .line 785
    :cond_1
    add-int/lit8 v1, v1, -0x1

    #@31
    goto :goto_0

    #@32
    .line 797
    .end local v2    # "w":Landroid/app/IActivityManager$WaitResult;
    :cond_2
    if-eqz v0, :cond_3

    #@34
    .line 798
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@36
    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->notifyAll()V

    #@39
    .line 783
    :cond_3
    return-void
.end method

.method reportActivityVisibleLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 0
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    #@0
    .prologue
    .line 760
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->sendWaitingVisibleReportLocked(Lcom/android/server/am/ActivityRecord;)V

    #@3
    .line 759
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
    .line 3202
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@4
    iget-object v0, v1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@6
    .line 3203
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 3204
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@e
    invoke-virtual {v1, p1, v3}, Lcom/android/server/am/ActivityManagerService;->updateUsageStats(Lcom/android/server/am/ActivityRecord;Z)V

    #@11
    .line 3206
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->allResumedActivitiesComplete()Z

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_1

    #@17
    .line 3207
    const/4 v1, 0x0

    #@18
    invoke-virtual {p0, v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V

    #@1b
    .line 3208
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@1d
    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    #@20
    .line 3209
    return v3

    #@21
    .line 3211
    :cond_1
    return v2
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
    .line 3226
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@5
    iget-object v3, v6, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@7
    .line 3227
    .local v3, "stack":Lcom/android/server/am/ActivityStack;
    if-nez v3, :cond_0

    #@9
    .line 3230
    return v7

    #@a
    .line 3232
    :cond_0
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->hasVisibleBehindActivity()Z

    #@d
    move-result v1

    #@e
    .line 3236
    .local v1, "isVisible":Z
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    #@11
    move-result-object v4

    #@12
    .line 3237
    .local v4, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v4, :cond_1

    #@14
    if-ne v4, p1, :cond_2

    #@16
    .line 3239
    :cond_1
    if-eqz p2, :cond_3

    #@18
    .end local p1    # "r":Lcom/android/server/am/ActivityRecord;
    :goto_0
    invoke-virtual {v3, p1}, Lcom/android/server/am/ActivityStack;->setVisibleBehindActivity(Lcom/android/server/am/ActivityRecord;)V

    #@1b
    .line 3240
    return v8

    #@1c
    .line 3237
    .restart local p1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_2
    if-eq p2, v1, :cond_1

    #@1e
    .line 3244
    if-eqz p2, :cond_4

    #@20
    iget-boolean v6, v4, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    #@22
    if-eqz v6, :cond_4

    #@24
    .line 3250
    return v7

    #@25
    :cond_3
    move-object p1, v5

    #@26
    .line 3239
    goto :goto_0

    #@27
    .line 3251
    :cond_4
    if-nez p2, :cond_5

    #@29
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->getVisibleBehindActivity()Lcom/android/server/am/ActivityRecord;

    #@2c
    move-result-object v6

    #@2d
    if-eq v6, p1, :cond_5

    #@2f
    .line 3258
    return v7

    #@30
    .line 3261
    :cond_5
    if-eqz p2, :cond_6

    #@32
    move-object v5, p1

    #@33
    :cond_6
    invoke-virtual {v3, v5}, Lcom/android/server/am/ActivityStack;->setVisibleBehindActivity(Lcom/android/server/am/ActivityRecord;)V

    #@36
    .line 3262
    if-nez p2, :cond_7

    #@38
    .line 3264
    invoke-virtual {v3, p1}, Lcom/android/server/am/ActivityStack;->findNextTranslucentActivity(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    #@3b
    move-result-object v2

    #@3c
    .line 3265
    .local v2, "next":Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_7

    #@3e
    .line 3266
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@40
    iget-object v6, v2, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@42
    invoke-virtual {v5, v6}, Lcom/android/server/am/ActivityManagerService;->convertFromTranslucent(Landroid/os/IBinder;)Z

    #@45
    .line 3269
    .end local v2    # "next":Lcom/android/server/am/ActivityRecord;
    :cond_7
    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@47
    if-eqz v5, :cond_8

    #@49
    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@4b
    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@4d
    if-eqz v5, :cond_8

    #@4f
    .line 3272
    :try_start_0
    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@51
    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@53
    iget-object v6, v4, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@55
    invoke-interface {v5, v6, p2}, Landroid/app/IApplicationThread;->scheduleBackgroundVisibleBehindChanged(Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@58
    .line 3276
    :cond_8
    :goto_1
    return v8

    #@59
    .line 3273
    :catch_0
    move-exception v0

    #@5a
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method resizeStackLocked(ILandroid/graphics/Rect;)V
    .locals 7
    .param p1, "stackId"    # I
    .param p2, "bounds"    # Landroid/graphics/Rect;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v5, 0x0

    #@2
    .line 2871
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    #@5
    move-result-object v2

    #@6
    .line 2872
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    if-nez v2, :cond_0

    #@8
    .line 2873
    const-string/jumbo v4, "ActivityManager"

    #@b
    new-instance v5, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v6, "resizeStack: stackId "

    #@13
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v5

    #@17
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v5

    #@1b
    const-string/jumbo v6, " not found."

    #@1e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v5

    #@22
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v5

    #@26
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@29
    .line 2874
    return-void

    #@2a
    .line 2877
    :cond_0
    invoke-virtual {v2, v5}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    #@2d
    move-result-object v1

    #@2e
    .line 2878
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_1

    #@30
    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@32
    iget-boolean v4, v4, Lcom/android/server/am/TaskRecord;->mResizeable:Z

    #@34
    if-eqz v4, :cond_3

    #@36
    .line 2883
    :cond_1
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@38
    invoke-virtual {v4, p1, p2}, Lcom/android/server/wm/WindowManagerService;->resizeStack(ILandroid/graphics/Rect;)Landroid/content/res/Configuration;

    #@3b
    move-result-object v0

    #@3c
    .line 2884
    .local v0, "overrideConfig":Landroid/content/res/Configuration;
    invoke-virtual {v2, v0}, Lcom/android/server/am/ActivityStack;->updateOverrideConfiguration(Landroid/content/res/Configuration;)Z

    #@3f
    move-result v4

    #@40
    if-eqz v4, :cond_2

    #@42
    .line 2885
    if-eqz v1, :cond_2

    #@44
    .line 2886
    invoke-virtual {v2, v1, v6}, Lcom/android/server/am/ActivityStack;->ensureActivityConfigurationLocked(Lcom/android/server/am/ActivityRecord;I)Z

    #@47
    move-result v3

    #@48
    .line 2889
    .local v3, "updated":Z
    invoke-virtual {p0, v1, v6}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V

    #@4b
    .line 2890
    if-nez v3, :cond_2

    #@4d
    .line 2891
    invoke-virtual {p0, v2, v5, v5}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z

    #@50
    .line 2870
    .end local v3    # "updated":Z
    :cond_2
    return-void

    #@51
    .line 2879
    .end local v0    # "overrideConfig":Landroid/content/res/Configuration;
    :cond_3
    const-string/jumbo v4, "ActivityManager"

    #@54
    new-instance v5, Ljava/lang/StringBuilder;

    #@56
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@59
    const-string/jumbo v6, "resizeStack: top task "

    #@5c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v5

    #@60
    iget-object v6, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@62
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v5

    #@66
    const-string/jumbo v6, " not resizeable."

    #@69
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v5

    #@6d
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@70
    move-result-object v5

    #@71
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@74
    .line 2880
    return-void
.end method

.method resizeTaskLocked(Lcom/android/server/am/TaskRecord;Landroid/graphics/Rect;)V
    .locals 7
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "bounds"    # Landroid/graphics/Rect;

    #@0
    .prologue
    const/4 v5, -0x1

    #@1
    const/4 v6, 0x1

    #@2
    .line 2901
    iput-boolean v6, p1, Lcom/android/server/am/TaskRecord;->mResizeable:Z

    #@4
    .line 2902
    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@6
    .line 2903
    .local v0, "currentStack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    #@9
    move-result v4

    #@a
    if-eqz v4, :cond_0

    #@c
    .line 2905
    return-void

    #@d
    .line 2908
    :cond_0
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@f
    invoke-virtual {v4, p2}, Lcom/android/server/wm/WindowManagerService;->getStackIdWithBounds(Landroid/graphics/Rect;)I

    #@12
    move-result v2

    #@13
    .line 2909
    .local v2, "matchingStackId":I
    if-eq v2, v5, :cond_2

    #@15
    .line 2911
    if-eqz v0, :cond_1

    #@17
    iget v4, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    #@19
    if-ne v4, v2, :cond_1

    #@1b
    .line 2913
    return-void

    #@1c
    .line 2916
    :cond_1
    iget v4, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    #@1e
    invoke-virtual {p0, v4, v2, v6}, Lcom/android/server/am/ActivityStackSupervisor;->moveTaskToStackLocked(IIZ)V

    #@21
    .line 2917
    return-void

    #@22
    .line 2920
    :cond_2
    if-eqz v0, :cond_3

    #@24
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->numTasks()I

    #@27
    move-result v4

    #@28
    if-ne v4, v6, :cond_3

    #@2a
    .line 2922
    iget v4, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    #@2c
    invoke-virtual {p0, v4, p2}, Lcom/android/server/am/ActivityStackSupervisor;->resizeStackLocked(ILandroid/graphics/Rect;)V

    #@2f
    .line 2923
    return-void

    #@30
    .line 2927
    :cond_3
    if-eqz v0, :cond_4

    #@32
    iget v4, v0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    #@34
    if-eq v4, v5, :cond_4

    #@36
    .line 2928
    iget v1, v0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    #@38
    .line 2929
    .local v1, "displayId":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getNextStackId()I

    #@3b
    move-result v4

    #@3c
    invoke-virtual {p0, v4, v1}, Lcom/android/server/am/ActivityStackSupervisor;->createStackOnDisplay(II)Lcom/android/server/am/ActivityStack;

    #@3f
    move-result-object v3

    #@40
    .line 2931
    .local v3, "newStack":Lcom/android/server/am/ActivityStack;
    if-nez v3, :cond_5

    #@42
    .line 2932
    const-string/jumbo v4, "ActivityManager"

    #@45
    new-instance v5, Ljava/lang/StringBuilder;

    #@47
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@4a
    const-string/jumbo v6, "resizeTaskLocked: Can\'t create stack for task="

    #@4d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v5

    #@51
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v5

    #@55
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@58
    move-result-object v5

    #@59
    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@5c
    .line 2933
    return-void

    #@5d
    .line 2928
    .end local v1    # "displayId":I
    .end local v3    # "newStack":Lcom/android/server/am/ActivityStack;
    :cond_4
    const/4 v1, 0x0

    #@5e
    .restart local v1    # "displayId":I
    goto :goto_0

    #@5f
    .line 2935
    .restart local v3    # "newStack":Lcom/android/server/am/ActivityStack;
    :cond_5
    iget v4, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    #@61
    iget v5, v3, Lcom/android/server/am/ActivityStack;->mStackId:I

    #@63
    invoke-virtual {p0, v4, v5, v6}, Lcom/android/server/am/ActivityStackSupervisor;->moveTaskToStackLocked(IIZ)V

    #@66
    .line 2936
    iget v4, v3, Lcom/android/server/am/ActivityStack;->mStackId:I

    #@68
    invoke-virtual {p0, v4, p2}, Lcom/android/server/am/ActivityStackSupervisor;->resizeStackLocked(ILandroid/graphics/Rect;)V

    #@6b
    .line 2900
    return-void
.end method

.method resolveActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/app/ProfilerInfo;I)Landroid/content/pm/ActivityInfo;
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "startFlags"    # I
    .param p4, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p5, "userId"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 869
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@4
    move-result-object v3

    #@5
    .line 871
    const v4, 0x10400

    #@8
    .line 869
    invoke-interface {v3, p1, p2, v4, p5}, Landroid/content/pm/IPackageManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    #@b
    move-result-object v2

    #@c
    .line 873
    .local v2, "rInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v2, :cond_3

    #@e
    iget-object v0, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    .line 878
    .end local v2    # "rInfo":Landroid/content/pm/ResolveInfo;
    :goto_0
    if-eqz v0, :cond_2

    #@12
    .line 883
    new-instance v3, Landroid/content/ComponentName;

    #@14
    .line 884
    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@16
    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@18
    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@1a
    .line 883
    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@1d
    invoke-virtual {p1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@20
    .line 887
    and-int/lit8 v3, p3, 0x2

    #@22
    if-eqz v3, :cond_0

    #@24
    .line 888
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    #@26
    const-string/jumbo v4, "system"

    #@29
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2c
    move-result v3

    #@2d
    if-nez v3, :cond_0

    #@2f
    .line 889
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@31
    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    #@33
    const/4 v5, 0x1

    #@34
    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/am/ActivityManagerService;->setDebugApp(Ljava/lang/String;ZZ)V

    #@37
    .line 893
    :cond_0
    and-int/lit8 v3, p3, 0x4

    #@39
    if-eqz v3, :cond_1

    #@3b
    .line 894
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    #@3d
    const-string/jumbo v4, "system"

    #@40
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@43
    move-result v3

    #@44
    if-nez v3, :cond_1

    #@46
    .line 895
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@48
    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@4a
    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    #@4c
    invoke-virtual {v3, v4, v5}, Lcom/android/server/am/ActivityManagerService;->setOpenGlTraceApp(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    #@4f
    .line 899
    :cond_1
    if-eqz p4, :cond_2

    #@51
    .line 900
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    #@53
    const-string/jumbo v4, "system"

    #@56
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@59
    move-result v3

    #@5a
    if-nez v3, :cond_2

    #@5c
    .line 901
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@5e
    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@60
    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    #@62
    invoke-virtual {v3, v4, v5, p4}, Lcom/android/server/am/ActivityManagerService;->setProfileApp(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Landroid/app/ProfilerInfo;)V

    #@65
    .line 905
    :cond_2
    return-object v0

    #@66
    .line 873
    .restart local v2    # "rInfo":Landroid/content/pm/ResolveInfo;
    :cond_3
    const/4 v0, 0x0

    #@67
    .local v0, "aInfo":Landroid/content/pm/ActivityInfo;
    goto :goto_0

    #@68
    .line 874
    .end local v0    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v2    # "rInfo":Landroid/content/pm/ResolveInfo;
    :catch_0
    move-exception v1

    #@69
    .line 875
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    #@6a
    .restart local v0    # "aInfo":Landroid/content/pm/ActivityInfo;
    goto :goto_0
.end method

.method resumeHomeStackTask(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z
    .locals 4
    .param p1, "homeStackTaskType"    # I
    .param p2, "prev"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 498
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@4
    iget-boolean v1, v1, Lcom/android/server/am/ActivityManagerService;->mBooting:Z

    #@6
    if-nez v1, :cond_0

    #@8
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@a
    iget-boolean v1, v1, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    #@c
    if-eqz v1, :cond_1

    #@e
    .line 503
    :cond_0
    const/4 v1, 0x2

    #@f
    if-ne p1, v1, :cond_2

    #@11
    .line 504
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@13
    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->showRecentApps()V

    #@16
    .line 505
    return v2

    #@17
    .line 500
    :cond_1
    return v2

    #@18
    .line 508
    :cond_2
    if-eqz p2, :cond_3

    #@1a
    .line 509
    iget-object v1, p2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@1c
    invoke-virtual {v1, v2}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    #@1f
    .line 512
    :cond_3
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    #@21
    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityStack;->moveHomeStackTaskToTop(I)V

    #@24
    .line 513
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getHomeActivity()Lcom/android/server/am/ActivityRecord;

    #@27
    move-result-object v0

    #@28
    .line 514
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_4

    #@2a
    .line 515
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@2c
    invoke-virtual {v1, v0, p3}, Lcom/android/server/am/ActivityManagerService;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    #@2f
    .line 516
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    #@31
    invoke-virtual {p0, v1, p2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z

    #@34
    move-result v1

    #@35
    return v1

    #@36
    .line 518
    :cond_4
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@38
    iget v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurrentUser:I

    #@3a
    invoke-virtual {v1, v2, p3}, Lcom/android/server/am/ActivityManagerService;->startHomeActivityLocked(ILjava/lang/String;)Z

    #@3d
    move-result v1

    #@3e
    return v1
.end method

.method resumeTopActivitiesLocked()Z
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2719
    invoke-virtual {p0, v0, v0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method resumeTopActivitiesLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z
    .locals 7
    .param p1, "targetStack"    # Lcom/android/server/am/ActivityStack;
    .param p2, "target"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "targetOptions"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 2724
    if-nez p1, :cond_0

    #@3
    .line 2725
    iget-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    #@5
    .line 2728
    :cond_0
    const/4 v1, 0x0

    #@6
    .line 2729
    .local v1, "result":Z
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    #@9
    move-result v5

    #@a
    if-eqz v5, :cond_1

    #@c
    .line 2730
    invoke-virtual {p1, p2, p3}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z

    #@f
    move-result v1

    #@10
    .line 2733
    .end local v1    # "result":Z
    :cond_1
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    #@12
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    #@15
    move-result v5

    #@16
    add-int/lit8 v0, v5, -0x1

    #@18
    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_5

    #@1a
    .line 2734
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    #@1c
    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@1f
    move-result-object v5

    #@20
    check-cast v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    #@22
    iget-object v4, v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    #@24
    .line 2735
    .local v4, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@27
    move-result v5

    #@28
    add-int/lit8 v3, v5, -0x1

    #@2a
    .local v3, "stackNdx":I
    :goto_1
    if-ltz v3, :cond_4

    #@2c
    .line 2736
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2f
    move-result-object v2

    #@30
    check-cast v2, Lcom/android/server/am/ActivityStack;

    #@32
    .line 2737
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    if-ne v2, p1, :cond_3

    #@34
    .line 2735
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, -0x1

    #@36
    goto :goto_1

    #@37
    .line 2741
    :cond_3
    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    #@3a
    move-result v5

    #@3b
    if-eqz v5, :cond_2

    #@3d
    .line 2742
    invoke-virtual {v2, v6}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    #@40
    goto :goto_2

    #@41
    .line 2733
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_4
    add-int/lit8 v0, v0, -0x1

    #@43
    goto :goto_0

    #@44
    .line 2746
    .end local v3    # "stackNdx":I
    .end local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_5
    return v1
.end method

.method resumedAppLocked()Lcom/android/server/am/ActivityRecord;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 596
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    #@3
    .line 597
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    if-nez v1, :cond_0

    #@5
    .line 598
    return-object v3

    #@6
    .line 600
    :cond_0
    iget-object v0, v1, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    #@8
    .line 601
    .local v0, "resumedActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_1

    #@a
    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@c
    if-nez v2, :cond_3

    #@e
    .line 602
    :cond_1
    iget-object v0, v1, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    #@10
    .line 603
    if-eqz v0, :cond_2

    #@12
    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@14
    if-nez v2, :cond_3

    #@16
    .line 604
    :cond_2
    invoke-virtual {v1, v3}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    #@19
    move-result-object v0

    #@1a
    .line 607
    :cond_3
    return-object v0
.end method

.method scheduleDestroyAllActivities(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .locals 6
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3317
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
    .line 3318
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
    .line 3319
    .local v4, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@17
    move-result v1

    #@18
    .line 3320
    .local v1, "numStacks":I
    const/4 v3, 0x0

    #@19
    .local v3, "stackNdx":I
    :goto_1
    if-ge v3, v1, :cond_0

    #@1b
    .line 3321
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1e
    move-result-object v2

    #@1f
    check-cast v2, Lcom/android/server/am/ActivityStack;

    #@21
    .line 3322
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v2, p1, p2}, Lcom/android/server/am/ActivityStack;->scheduleDestroyActivities(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    #@24
    .line 3320
    add-int/lit8 v3, v3, 0x1

    #@26
    goto :goto_1

    #@27
    .line 3317
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@29
    goto :goto_0

    #@2a
    .line 3316
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
    .line 3706
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    #@2
    const/16 v1, 0x65

    #@4
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessage(I)Z

    #@7
    .line 3705
    return-void
.end method

.method scheduleIdleTimeoutLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 4
    .param p1, "next"    # Lcom/android/server/am/ActivityRecord;

    #@0
    .prologue
    .line 3701
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    #@2
    const/16 v2, 0x64

    #@4
    invoke-virtual {v1, v2, p1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@7
    move-result-object v0

    #@8
    .line 3702
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    #@a
    const-wide/16 v2, 0x2710

    #@c
    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@f
    .line 3698
    return-void
.end method

.method scheduleLaunchTaskBehindComplete(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 3290
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
    .line 3289
    return-void
.end method

.method final scheduleResumeTopActivities()V
    .locals 2

    #@0
    .prologue
    const/16 v1, 0x66

    #@2
    .line 3716
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    #@4
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->hasMessages(I)Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_0

    #@a
    .line 3717
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    #@c
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessage(I)Z

    #@f
    .line 3715
    :cond_0
    return-void
.end method

.method final scheduleSleepTimeout()V
    .locals 4

    #@0
    .prologue
    .line 3727
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->removeSleepTimeouts()V

    #@3
    .line 3728
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    #@5
    const-wide/16 v2, 0x1388

    #@7
    const/16 v1, 0x67

    #@9
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessageDelayed(IJ)Z

    #@c
    .line 3726
    return-void
.end method

.method sendWaitingVisibleReportLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 9
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 764
    const/4 v0, 0x0

    #@2
    .line 765
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
    .line 766
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingActivityVisible:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v2

    #@12
    check-cast v2, Landroid/app/IActivityManager$WaitResult;

    #@14
    .line 767
    .local v2, "w":Landroid/app/IActivityManager$WaitResult;
    iget-object v3, v2, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;

    #@16
    if-nez v3, :cond_1

    #@18
    .line 768
    const/4 v0, 0x1

    #@19
    .line 769
    iput-boolean v8, v2, Landroid/app/IActivityManager$WaitResult;->timeout:Z

    #@1b
    .line 770
    if-eqz p1, :cond_0

    #@1d
    .line 771
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
    .line 773
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
    .line 774
    iget-wide v4, v2, Landroid/app/IActivityManager$WaitResult;->totalTime:J

    #@37
    iput-wide v4, v2, Landroid/app/IActivityManager$WaitResult;->thisTime:J

    #@39
    .line 765
    :cond_1
    add-int/lit8 v1, v1, -0x1

    #@3b
    goto :goto_0

    #@3c
    .line 777
    .end local v2    # "w":Landroid/app/IActivityManager$WaitResult;
    :cond_2
    if-eqz v0, :cond_3

    #@3e
    .line 778
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@40
    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->notifyAll()V

    #@43
    .line 763
    :cond_3
    return-void
.end method

.method setFocusedStack(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z
    .locals 5
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1815
    if-nez p1, :cond_0

    #@3
    .line 1817
    return v4

    #@4
    .line 1819
    :cond_0
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@6
    .line 1820
    .local v0, "task":Lcom/android/server/am/TaskRecord;
    if-eqz v0, :cond_1

    #@8
    iget-object v1, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@a
    if-nez v1, :cond_2

    #@c
    .line 1821
    :cond_1
    const-string/jumbo v1, "ActivityManager"

    #@f
    new-instance v2, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v3, "Can\'t set focus stack for r="

    #@17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    const-string/jumbo v3, " task="

    #@22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v2

    #@2a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v2

    #@2e
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@31
    .line 1822
    return v4

    #@32
    .line 1824
    :cond_2
    iget-object v1, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@34
    invoke-virtual {v1, p2}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    #@37
    .line 1825
    const/4 v1, 0x1

    #@38
    return v1
.end method

.method setLaunchSource(I)V
    .locals 2
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 2485
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    #@2
    new-instance v1, Landroid/os/WorkSource;

    #@4
    invoke-direct {v1, p1}, Landroid/os/WorkSource;-><init>(I)V

    #@7
    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    #@a
    .line 2484
    return-void
.end method

.method setLockTaskModeLocked(Lcom/android/server/am/TaskRecord;ILjava/lang/String;Z)V
    .locals 6
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "lockTaskModeState"    # I
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "andResume"    # Z

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    .line 3877
    if-nez p1, :cond_1

    #@4
    .line 3879
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getLockedTaskLocked()Lcom/android/server/am/TaskRecord;

    #@7
    move-result-object v1

    #@8
    .line 3880
    .local v1, "lockedTask":Lcom/android/server/am/TaskRecord;
    if-eqz v1, :cond_0

    #@a
    .line 3881
    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->removeLockedTaskLocked(Lcom/android/server/am/TaskRecord;)V

    #@d
    .line 3882
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeTasks:Ljava/util/ArrayList;

    #@f
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    #@12
    move-result v2

    #@13
    if-nez v2, :cond_0

    #@15
    .line 3886
    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->performClearTaskLocked()V

    #@18
    .line 3887
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked()Z

    #@1b
    .line 3888
    return-void

    #@1c
    .line 3893
    :cond_0
    return-void

    #@1d
    .line 3897
    .end local v1    # "lockedTask":Lcom/android/server/am/TaskRecord;
    :cond_1
    iget v2, p1, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    #@1f
    if-nez v2, :cond_2

    #@21
    .line 3900
    return-void

    #@22
    .line 3902
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->isLockTaskModeViolation(Lcom/android/server/am/TaskRecord;)Z

    #@25
    move-result v2

    #@26
    if-eqz v2, :cond_3

    #@28
    .line 3903
    const-string/jumbo v2, "ActivityManager"

    #@2b
    const-string/jumbo v3, "setLockTaskMode: Attempt to start an unauthorized lock task."

    #@2e
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@31
    .line 3904
    return-void

    #@32
    .line 3907
    :cond_3
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeTasks:Ljava/util/ArrayList;

    #@34
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    #@37
    move-result v2

    #@38
    if-eqz v2, :cond_4

    #@3a
    .line 3909
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    #@3d
    move-result-object v0

    #@3e
    .line 3910
    .local v0, "lockTaskMsg":Landroid/os/Message;
    iget-object v2, p1, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    #@40
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@43
    move-result-object v2

    #@44
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@47
    move-result-object v2

    #@48
    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@4a
    .line 3911
    iget v2, p1, Lcom/android/server/am/TaskRecord;->userId:I

    #@4c
    iput v2, v0, Landroid/os/Message;->arg1:I

    #@4e
    .line 3912
    const/16 v2, 0x6d

    #@50
    iput v2, v0, Landroid/os/Message;->what:I

    #@52
    .line 3913
    iput p2, v0, Landroid/os/Message;->arg2:I

    #@54
    .line 3914
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    #@56
    invoke-virtual {v2, v0}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendMessage(Landroid/os/Message;)Z

    #@59
    .line 3919
    .end local v0    # "lockTaskMsg":Landroid/os/Message;
    :cond_4
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeTasks:Ljava/util/ArrayList;

    #@5b
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@5e
    .line 3920
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeTasks:Ljava/util/ArrayList;

    #@60
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@63
    .line 3922
    iget v2, p1, Lcom/android/server/am/TaskRecord;->mLockTaskUid:I

    #@65
    const/4 v3, -0x1

    #@66
    if-ne v2, v3, :cond_5

    #@68
    .line 3923
    iget v2, p1, Lcom/android/server/am/TaskRecord;->mCallingUid:I

    #@6a
    iput v2, p1, Lcom/android/server/am/TaskRecord;->mLockTaskUid:I

    #@6c
    .line 3926
    :cond_5
    if-eqz p4, :cond_6

    #@6e
    .line 3927
    invoke-virtual {p0, p1, v5, v4, p3}, Lcom/android/server/am/ActivityStackSupervisor;->findTaskToMoveToFrontLocked(Lcom/android/server/am/TaskRecord;ILandroid/os/Bundle;Ljava/lang/String;)V

    #@71
    .line 3928
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked()Z

    #@74
    .line 3876
    :cond_6
    return-void
.end method

.method setNextTaskId(I)V
    .locals 1
    .param p1, "taskId"    # I

    #@0
    .prologue
    .line 580
    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurTaskId:I

    #@2
    if-le p1, v0, :cond_0

    #@4
    .line 581
    iput p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurTaskId:I

    #@6
    .line 579
    :cond_0
    return-void
.end method

.method setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
    .locals 7
    .param p1, "wm"    # Lcom/android/server/wm/WindowManagerService;

    #@0
    .prologue
    .line 387
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@2
    monitor-enter v5

    #@3
    .line 388
    :try_start_0
    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@5
    .line 391
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@7
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    #@9
    const-string/jumbo v6, "display"

    #@c
    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@f
    move-result-object v4

    #@10
    check-cast v4, Landroid/hardware/display/DisplayManager;

    #@12
    .line 390
    iput-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    #@14
    .line 392
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    #@16
    const/4 v6, 0x0

    #@17
    invoke-virtual {v4, p0, v6}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    #@1a
    .line 394
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    #@1c
    invoke-virtual {v4}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    #@1f
    move-result-object v3

    #@20
    .line 395
    .local v3, "displays":[Landroid/view/Display;
    array-length v4, v3

    #@21
    add-int/lit8 v2, v4, -0x1

    #@23
    .local v2, "displayNdx":I
    :goto_0
    if-ltz v2, :cond_1

    #@25
    .line 396
    aget-object v4, v3, v2

    #@27
    invoke-virtual {v4}, Landroid/view/Display;->getDisplayId()I

    #@2a
    move-result v1

    #@2b
    .line 397
    .local v1, "displayId":I
    new-instance v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    #@2d
    invoke-direct {v0, p0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;-><init>(Lcom/android/server/am/ActivityStackSupervisor;I)V

    #@30
    .line 398
    .local v0, "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplay:Landroid/view/Display;

    #@32
    if-nez v4, :cond_0

    #@34
    .line 399
    new-instance v4, Ljava/lang/IllegalStateException;

    #@36
    const-string/jumbo v6, "Default Display does not exist"

    #@39
    invoke-direct {v4, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@3c
    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3d
    .line 387
    .end local v0    # "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    .end local v1    # "displayId":I
    .end local v2    # "displayNdx":I
    .end local v3    # "displays":[Landroid/view/Display;
    :catchall_0
    move-exception v4

    #@3e
    monitor-exit v5

    #@3f
    throw v4

    #@40
    .line 401
    .restart local v0    # "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    .restart local v1    # "displayId":I
    .restart local v2    # "displayNdx":I
    .restart local v3    # "displays":[Landroid/view/Display;
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    #@42
    invoke-virtual {v4, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@45
    .line 395
    add-int/lit8 v2, v2, -0x1

    #@47
    goto :goto_0

    #@48
    .line 404
    .end local v0    # "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    .end local v1    # "displayId":I
    :cond_1
    const/4 v4, 0x0

    #@49
    const/4 v6, 0x0

    #@4a
    invoke-virtual {p0, v4, v6}, Lcom/android/server/am/ActivityStackSupervisor;->createStackOnDisplay(II)Lcom/android/server/am/ActivityStack;

    #@4d
    .line 405
    const/4 v4, 0x0

    #@4e
    invoke-virtual {p0, v4}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    #@51
    move-result-object v4

    #@52
    iput-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLastFocusedStack:Lcom/android/server/am/ActivityStack;

    #@54
    iput-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    #@56
    iput-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    #@58
    .line 407
    const-class v4, Landroid/hardware/input/InputManagerInternal;

    #@5a
    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    #@5d
    move-result-object v4

    #@5e
    check-cast v4, Landroid/hardware/input/InputManagerInternal;

    #@60
    iput-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    #@62
    .line 410
    invoke-direct {p0}, Lcom/android/server/am/ActivityStackSupervisor;->isLeanbackOnlyDevice()Z

    #@65
    move-result v4

    #@66
    iput-boolean v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLeanbackOnlyDevice:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@68
    monitor-exit v5

    #@69
    .line 386
    return-void
.end method

.method showLockTaskEscapeMessageLocked(Lcom/android/server/am/TaskRecord;)V
    .locals 2
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    #@0
    .prologue
    .line 3870
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeTasks:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 3871
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    #@a
    const/16 v1, 0x71

    #@c
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessage(I)Z

    #@f
    .line 3869
    :cond_0
    return-void
.end method

.method showLockTaskToast()V
    .locals 2

    #@0
    .prologue
    .line 3866
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskNotify:Lcom/android/server/am/LockTaskNotify;

    #@2
    iget v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeState:I

    #@4
    invoke-virtual {v0, v1}, Lcom/android/server/am/LockTaskNotify;->showToast(I)V

    #@7
    .line 3865
    return-void
.end method

.method shutdownLocked(I)Z
    .locals 14
    .param p1, "timeout"    # I

    #@0
    .prologue
    .line 3090
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->goingToSleepLocked()V

    #@3
    .line 3092
    const/4 v7, 0x0

    #@4
    .line 3093
    .local v7, "timedout":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@7
    move-result-wide v10

    #@8
    int-to-long v12, p1

    #@9
    add-long v4, v10, v12

    #@b
    .line 3095
    .local v4, "endTime":J
    :goto_0
    const/4 v0, 0x0

    #@c
    .line 3096
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
    .line 3097
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
    .line 3098
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
    .line 3099
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
    .line 3098
    .local v0, "cantShutdown":Z
    add-int/lit8 v3, v3, -0x1

    #@35
    goto :goto_2

    #@36
    .line 3096
    .end local v0    # "cantShutdown":Z
    :cond_0
    add-int/lit8 v1, v1, -0x1

    #@38
    goto :goto_1

    #@39
    .line 3102
    .end local v3    # "stackNdx":I
    .end local v6    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_1
    if-eqz v0, :cond_3

    #@3b
    .line 3103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@3e
    move-result-wide v10

    #@3f
    sub-long v8, v4, v10

    #@41
    .line 3104
    .local v8, "timeRemaining":J
    const-wide/16 v10, 0x0

    #@43
    cmp-long v10, v8, v10

    #@45
    if-lez v10, :cond_2

    #@47
    .line 3106
    :try_start_0
    iget-object v10, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@49
    invoke-virtual {v10, v8, v9}, Lcom/android/server/am/ActivityManagerService;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    #@4c
    goto :goto_0

    #@4d
    .line 3107
    :catch_0
    move-exception v2

    #@4e
    .local v2, "e":Ljava/lang/InterruptedException;
    goto :goto_0

    #@4f
    .line 3110
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :cond_2
    const-string/jumbo v10, "ActivityManager"

    #@52
    const-string/jumbo v11, "Activity manager shutdown timed out"

    #@55
    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@58
    .line 3111
    const/4 v7, 0x1

    #@59
    .line 3120
    .end local v8    # "timeRemaining":J
    :cond_3
    const/4 v10, 0x1

    #@5a
    iput-boolean v10, p0, Lcom/android/server/am/ActivityStackSupervisor;->mSleepTimeout:Z

    #@5c
    .line 3121
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->checkReadyForSleepLocked()V

    #@5f
    .line 3123
    return v7
.end method

.method final startActivities(Landroid/app/IApplicationThread;ILjava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;I)I
    .locals 32
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "callingUid"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "intents"    # [Landroid/content/Intent;
    .param p5, "resolvedTypes"    # [Ljava/lang/String;
    .param p6, "resultTo"    # Landroid/os/IBinder;
    .param p7, "options"    # Landroid/os/Bundle;
    .param p8, "userId"    # I

    #@0
    .prologue
    .line 1103
    if-nez p4, :cond_0

    #@2
    .line 1104
    new-instance v2, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v4, "intents is null"

    #@7
    invoke-direct {v2, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 1106
    :cond_0
    if-nez p5, :cond_1

    #@d
    .line 1107
    new-instance v2, Ljava/lang/NullPointerException;

    #@f
    const-string/jumbo v4, "resolvedTypes is null"

    #@12
    invoke-direct {v2, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@15
    throw v2

    #@16
    .line 1109
    :cond_1
    move-object/from16 v0, p4

    #@18
    array-length v2, v0

    #@19
    move-object/from16 v0, p5

    #@1b
    array-length v4, v0

    #@1c
    if-eq v2, v4, :cond_2

    #@1e
    .line 1110
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@20
    const-string/jumbo v4, "intents are length different than resolvedTypes"

    #@23
    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@26
    throw v2

    #@27
    .line 1115
    :cond_2
    if-ltz p2, :cond_3

    #@29
    .line 1116
    const/4 v14, -0x1

    #@2a
    .line 1123
    .local v14, "callingPid":I
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@2d
    move-result-wide v28

    #@2e
    .line 1125
    .local v28, "origId":J
    :try_start_0
    move-object/from16 v0, p0

    #@30
    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@32
    move-object/from16 v31, v0

    #@34
    monitor-enter v31
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@35
    .line 1126
    const/4 v2, 0x1

    #@36
    :try_start_1
    new-array v0, v2, [Lcom/android/server/am/ActivityRecord;

    #@38
    move-object/from16 v23, v0

    #@3a
    .line 1127
    .local v23, "outActivity":[Lcom/android/server/am/ActivityRecord;
    const/16 v26, 0x0

    #@3c
    .end local p6    # "resultTo":Landroid/os/IBinder;
    .local v26, "i":I
    :goto_1
    move-object/from16 v0, p4

    #@3e
    array-length v2, v0

    #@3f
    move/from16 v0, v26

    #@41
    if-ge v0, v2, :cond_c

    #@43
    .line 1128
    aget-object v27, p4, v26
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@45
    .line 1129
    .local v27, "intent":Landroid/content/Intent;
    if-nez v27, :cond_5

    #@47
    move-object/from16 v3, v27

    #@49
    .line 1127
    .end local v27    # "intent":Landroid/content/Intent;
    .local v3, "intent":Landroid/content/Intent;
    :goto_2
    add-int/lit8 v26, v26, 0x1

    #@4b
    goto :goto_1

    #@4c
    .line 1117
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v14    # "callingPid":I
    .end local v23    # "outActivity":[Lcom/android/server/am/ActivityRecord;
    .end local v26    # "i":I
    .end local v28    # "origId":J
    .restart local p6    # "resultTo":Landroid/os/IBinder;
    :cond_3
    if-nez p1, :cond_4

    #@4e
    .line 1118
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@51
    move-result v14

    #@52
    .line 1119
    .restart local v14    # "callingPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@55
    move-result p2

    #@56
    goto :goto_0

    #@57
    .line 1121
    .end local v14    # "callingPid":I
    :cond_4
    const/16 p2, -0x1

    #@59
    const/4 v14, -0x1

    #@5a
    .restart local v14    # "callingPid":I
    goto :goto_0

    #@5b
    .line 1134
    .end local p6    # "resultTo":Landroid/os/IBinder;
    .restart local v23    # "outActivity":[Lcom/android/server/am/ActivityRecord;
    .restart local v26    # "i":I
    .restart local v27    # "intent":Landroid/content/Intent;
    .restart local v28    # "origId":J
    :cond_5
    if-eqz v27, :cond_6

    #@5d
    :try_start_2
    invoke-virtual/range {v27 .. v27}, Landroid/content/Intent;->hasFileDescriptors()Z

    #@60
    move-result v2

    #@61
    if-eqz v2, :cond_6

    #@63
    .line 1135
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@65
    const-string/jumbo v4, "File descriptors passed in Intent"

    #@68
    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@6b
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@6c
    .line 1125
    .end local v23    # "outActivity":[Lcom/android/server/am/ActivityRecord;
    .end local v26    # "i":I
    .end local v27    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v2

    #@6d
    :try_start_3
    monitor-exit v31

    #@6e
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@6f
    .line 1172
    :catchall_1
    move-exception v2

    #@70
    .line 1173
    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@73
    .line 1172
    throw v2

    #@74
    .line 1138
    .restart local v23    # "outActivity":[Lcom/android/server/am/ActivityRecord;
    .restart local v26    # "i":I
    .restart local v27    # "intent":Landroid/content/Intent;
    :cond_6
    :try_start_4
    invoke-virtual/range {v27 .. v27}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@77
    move-result-object v2

    #@78
    if-eqz v2, :cond_7

    #@7a
    const/16 v22, 0x1

    #@7c
    .line 1141
    .local v22, "componentSpecified":Z
    :goto_3
    new-instance v3, Landroid/content/Intent;

    #@7e
    move-object/from16 v0, v27

    #@80
    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    #@83
    .line 1144
    .end local v27    # "intent":Landroid/content/Intent;
    .restart local v3    # "intent":Landroid/content/Intent;
    aget-object v4, p5, v26

    #@85
    const/4 v5, 0x0

    #@86
    const/4 v6, 0x0

    #@87
    move-object/from16 v2, p0

    #@89
    move/from16 v7, p8

    #@8b
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/app/ProfilerInfo;I)Landroid/content/pm/ActivityInfo;

    #@8e
    move-result-object v8

    #@8f
    .line 1146
    .local v8, "aInfo":Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, p0

    #@91
    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@93
    move/from16 v0, p8

    #@95
    invoke-virtual {v2, v8, v0}, Lcom/android/server/am/ActivityManagerService;->getActivityInfoForUser(Landroid/content/pm/ActivityInfo;I)Landroid/content/pm/ActivityInfo;

    #@98
    move-result-object v8

    #@99
    .line 1148
    if-eqz v8, :cond_8

    #@9b
    .line 1149
    iget-object v2, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@9d
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    #@9f
    and-int/lit8 v2, v2, 0x2

    #@a1
    if-eqz v2, :cond_8

    #@a3
    .line 1151
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@a5
    .line 1152
    const-string/jumbo v4, "FLAG_CANT_SAVE_STATE not supported here"

    #@a8
    .line 1151
    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@ab
    throw v2

    #@ac
    .line 1138
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v8    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v22    # "componentSpecified":Z
    .restart local v27    # "intent":Landroid/content/Intent;
    :cond_7
    const/16 v22, 0x0

    #@ae
    .restart local v22    # "componentSpecified":Z
    goto :goto_3

    #@af
    .line 1156
    .end local v27    # "intent":Landroid/content/Intent;
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v8    # "aInfo":Landroid/content/pm/ActivityInfo;
    :cond_8
    if-eqz p7, :cond_9

    #@b1
    move-object/from16 v0, p4

    #@b3
    array-length v2, v0

    #@b4
    add-int/lit8 v2, v2, -0x1

    #@b6
    move/from16 v0, v26

    #@b8
    if-ne v0, v2, :cond_9

    #@ba
    .line 1157
    move-object/from16 v20, p7

    #@bc
    .line 1161
    :goto_4
    aget-object v7, p5, v26

    #@be
    .line 1162
    const/4 v9, 0x0

    #@bf
    const/4 v10, 0x0

    #@c0
    const/4 v12, 0x0

    #@c1
    const/4 v13, -0x1

    #@c2
    .line 1164
    const/16 v19, 0x0

    #@c4
    const/16 v21, 0x0

    #@c6
    const/16 v24, 0x0

    #@c8
    const/16 v25, 0x0

    #@ca
    move-object/from16 v4, p0

    #@cc
    move-object/from16 v5, p1

    #@ce
    move-object v6, v3

    #@cf
    move-object/from16 v11, p6

    #@d1
    move/from16 v15, p2

    #@d3
    move-object/from16 v16, p3

    #@d5
    move/from16 v17, v14

    #@d7
    move/from16 v18, p2

    #@d9
    .line 1161
    invoke-virtual/range {v4 .. v25}, Lcom/android/server/am/ActivityStackSupervisor;->startActivityLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;IIILandroid/os/Bundle;ZZ[Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;Lcom/android/server/am/TaskRecord;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@dc
    move-result v30

    #@dd
    .line 1165
    .local v30, "res":I
    if-gez v30, :cond_a

    #@df
    :try_start_5
    monitor-exit v31
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@e0
    .line 1173
    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@e3
    .line 1166
    return v30

    #@e4
    .line 1159
    .end local v30    # "res":I
    :cond_9
    const/16 v20, 0x0

    #@e6
    .local v20, "theseOptions":Landroid/os/Bundle;
    goto :goto_4

    #@e7
    .line 1169
    .end local v20    # "theseOptions":Landroid/os/Bundle;
    .restart local v30    # "res":I
    :cond_a
    const/4 v2, 0x0

    #@e8
    :try_start_6
    aget-object v2, v23, v2

    #@ea
    if-eqz v2, :cond_b

    #@ec
    const/4 v2, 0x0

    #@ed
    aget-object v2, v23, v2

    #@ef
    iget-object v0, v2, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@f1
    move-object/from16 p6, v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@f3
    .restart local p6    # "resultTo":Landroid/os/IBinder;
    goto/16 :goto_2

    #@f5
    .end local p6    # "resultTo":Landroid/os/IBinder;
    :cond_b
    const/16 p6, 0x0

    #@f7
    .local p6, "resultTo":Landroid/os/IBinder;
    goto/16 :goto_2

    #@f9
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v8    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v22    # "componentSpecified":Z
    .end local v30    # "res":I
    .end local p6    # "resultTo":Landroid/os/IBinder;
    :cond_c
    :try_start_7
    monitor-exit v31
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    #@fa
    .line 1173
    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@fd
    .line 1176
    const/4 v2, 0x0

    #@fe
    return v2
.end method

.method final startActivityLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;IIILandroid/os/Bundle;ZZ[Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;Lcom/android/server/am/TaskRecord;)I
    .locals 39
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p5, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p6, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p7, "resultTo"    # Landroid/os/IBinder;
    .param p8, "resultWho"    # Ljava/lang/String;
    .param p9, "requestCode"    # I
    .param p10, "callingPid"    # I
    .param p11, "callingUid"    # I
    .param p12, "callingPackage"    # Ljava/lang/String;
    .param p13, "realCallingPid"    # I
    .param p14, "realCallingUid"    # I
    .param p15, "startFlags"    # I
    .param p16, "options"    # Landroid/os/Bundle;
    .param p17, "ignoreTargetSecurity"    # Z
    .param p18, "componentSpecified"    # Z
    .param p19, "outActivity"    # [Lcom/android/server/am/ActivityRecord;
    .param p20, "container"    # Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    .param p21, "inTask"    # Lcom/android/server/am/TaskRecord;

    #@0
    .prologue
    .line 1407
    const/16 v29, 0x0

    #@2
    .line 1409
    .local v29, "err":I
    const/16 v26, 0x0

    #@4
    .line 1410
    .local v26, "callerApp":Lcom/android/server/am/ProcessRecord;
    if-eqz p1, :cond_0

    #@6
    .line 1411
    move-object/from16 v0, p0

    #@8
    iget-object v5, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@a
    move-object/from16 v0, p1

    #@c
    invoke-virtual {v5, v0}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    #@f
    move-result-object v26

    #@10
    .line 1412
    .local v26, "callerApp":Lcom/android/server/am/ProcessRecord;
    if-eqz v26, :cond_3

    #@12
    .line 1413
    move-object/from16 v0, v26

    #@14
    iget v0, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    #@16
    move/from16 p10, v0

    #@18
    .line 1414
    move-object/from16 v0, v26

    #@1a
    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    #@1c
    iget v0, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    #@1e
    move/from16 p11, v0

    #@20
    .line 1423
    .end local v26    # "callerApp":Lcom/android/server/am/ProcessRecord;
    :cond_0
    :goto_0
    if-eqz p4, :cond_4

    #@22
    move-object/from16 v0, p4

    #@24
    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@26
    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    #@28
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    #@2b
    move-result v37

    #@2c
    .line 1425
    .local v37, "userId":I
    :goto_1
    if-nez v29, :cond_1

    #@2e
    .line 1426
    const-string/jumbo v8, "ActivityManager"

    #@31
    new-instance v5, Ljava/lang/StringBuilder;

    #@33
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@36
    const-string/jumbo v9, "START u"

    #@39
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v5

    #@3d
    move/from16 v0, v37

    #@3f
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@42
    move-result-object v5

    #@43
    const-string/jumbo v9, " {"

    #@46
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v5

    #@4a
    const/4 v9, 0x1

    #@4b
    const/4 v10, 0x1

    #@4c
    const/4 v11, 0x1

    #@4d
    const/4 v12, 0x0

    #@4e
    move-object/from16 v0, p2

    #@50
    invoke-virtual {v0, v9, v10, v11, v12}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    #@53
    move-result-object v9

    #@54
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v5

    #@58
    .line 1427
    const-string/jumbo v9, "} from uid "

    #@5b
    .line 1426
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v5

    #@5f
    move/from16 v0, p11

    #@61
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@64
    move-result-object v5

    #@65
    .line 1428
    const-string/jumbo v9, " on display "

    #@68
    .line 1426
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v9

    #@6c
    .line 1428
    if-nez p20, :cond_6

    #@6e
    move-object/from16 v0, p0

    #@70
    iget-object v5, v0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    #@72
    if-nez v5, :cond_5

    #@74
    .line 1429
    const/4 v5, 0x0

    #@75
    .line 1426
    :goto_2
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@78
    move-result-object v5

    #@79
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7c
    move-result-object v5

    #@7d
    invoke-static {v8, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@80
    .line 1434
    :cond_1
    const/16 v34, 0x0

    #@82
    .line 1435
    .local v34, "sourceRecord":Lcom/android/server/am/ActivityRecord;
    const/4 v6, 0x0

    #@83
    .line 1436
    .local v6, "resultRecord":Lcom/android/server/am/ActivityRecord;
    if-eqz p7, :cond_2

    #@85
    .line 1437
    move-object/from16 v0, p0

    #@87
    move-object/from16 v1, p7

    #@89
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->isInAnyStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    #@8c
    move-result-object v34

    #@8d
    .line 1440
    .local v34, "sourceRecord":Lcom/android/server/am/ActivityRecord;
    if-eqz v34, :cond_2

    #@8f
    .line 1441
    if-ltz p9, :cond_2

    #@91
    move-object/from16 v0, v34

    #@93
    iget-boolean v5, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    #@95
    if-eqz v5, :cond_8

    #@97
    .line 1447
    .end local v6    # "resultRecord":Lcom/android/server/am/ActivityRecord;
    .end local v34    # "sourceRecord":Lcom/android/server/am/ActivityRecord;
    :cond_2
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getFlags()I

    #@9a
    move-result v30

    #@9b
    .line 1449
    .local v30, "launchFlags":I
    const/high16 v5, 0x2000000

    #@9d
    and-int v5, v5, v30

    #@9f
    if-eqz v5, :cond_c

    #@a1
    if-eqz v34, :cond_c

    #@a3
    .line 1452
    if-ltz p9, :cond_9

    #@a5
    .line 1453
    invoke-static/range {p16 .. p16}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    #@a8
    .line 1454
    const/4 v5, -0x3

    #@a9
    return v5

    #@aa
    .line 1416
    .end local v30    # "launchFlags":I
    .end local v37    # "userId":I
    .restart local v26    # "callerApp":Lcom/android/server/am/ProcessRecord;
    :cond_3
    const-string/jumbo v5, "ActivityManager"

    #@ad
    new-instance v8, Ljava/lang/StringBuilder;

    #@af
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@b2
    const-string/jumbo v9, "Unable to find app for caller "

    #@b5
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b8
    move-result-object v8

    #@b9
    move-object/from16 v0, p1

    #@bb
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@be
    move-result-object v8

    #@bf
    .line 1417
    const-string/jumbo v9, " (pid="

    #@c2
    .line 1416
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c5
    move-result-object v8

    #@c6
    move/from16 v0, p10

    #@c8
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@cb
    move-result-object v8

    #@cc
    .line 1417
    const-string/jumbo v9, ") when starting: "

    #@cf
    .line 1416
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d2
    move-result-object v8

    #@d3
    .line 1418
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    #@d6
    move-result-object v9

    #@d7
    .line 1416
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@da
    move-result-object v8

    #@db
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@de
    move-result-object v8

    #@df
    invoke-static {v5, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@e2
    .line 1419
    const/16 v29, -0x4

    #@e4
    goto/16 :goto_0

    #@e6
    .line 1423
    .end local v26    # "callerApp":Lcom/android/server/am/ProcessRecord;
    :cond_4
    const/16 v37, 0x0

    #@e8
    .restart local v37    # "userId":I
    goto/16 :goto_1

    #@ea
    .line 1429
    :cond_5
    move-object/from16 v0, p0

    #@ec
    iget-object v5, v0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    #@ee
    iget v5, v5, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    #@f0
    goto :goto_2

    #@f1
    .line 1430
    :cond_6
    move-object/from16 v0, p20

    #@f3
    iget-object v5, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    #@f5
    if-nez v5, :cond_7

    #@f7
    const/4 v5, 0x0

    #@f8
    goto/16 :goto_2

    #@fa
    .line 1431
    :cond_7
    move-object/from16 v0, p20

    #@fc
    iget-object v5, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    #@fe
    iget v5, v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplayId:I

    #@100
    goto/16 :goto_2

    #@102
    .line 1442
    .restart local v6    # "resultRecord":Lcom/android/server/am/ActivityRecord;
    .restart local v34    # "sourceRecord":Lcom/android/server/am/ActivityRecord;
    :cond_8
    move-object/from16 v6, v34

    #@104
    .local v6, "resultRecord":Lcom/android/server/am/ActivityRecord;
    goto :goto_3

    #@105
    .line 1456
    .end local v6    # "resultRecord":Lcom/android/server/am/ActivityRecord;
    .end local v34    # "sourceRecord":Lcom/android/server/am/ActivityRecord;
    .restart local v30    # "launchFlags":I
    :cond_9
    move-object/from16 v0, v34

    #@107
    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    #@109
    .line 1457
    .restart local v6    # "resultRecord":Lcom/android/server/am/ActivityRecord;
    if-eqz v6, :cond_a

    #@10b
    invoke-virtual {v6}, Lcom/android/server/am/ActivityRecord;->isInStackLocked()Z

    #@10e
    move-result v5

    #@10f
    if-eqz v5, :cond_13

    #@111
    .line 1460
    .end local v6    # "resultRecord":Lcom/android/server/am/ActivityRecord;
    :cond_a
    :goto_4
    move-object/from16 v0, v34

    #@113
    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    #@115
    move-object/from16 p8, v0

    #@117
    .line 1461
    move-object/from16 v0, v34

    #@119
    iget v0, v0, Lcom/android/server/am/ActivityRecord;->requestCode:I

    #@11b
    move/from16 p9, v0

    #@11d
    .line 1462
    const/4 v5, 0x0

    #@11e
    move-object/from16 v0, v34

    #@120
    iput-object v5, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    #@122
    .line 1463
    if-eqz v6, :cond_b

    #@124
    .line 1464
    move-object/from16 v0, v34

    #@126
    move-object/from16 v1, p8

    #@128
    move/from16 v2, p9

    #@12a
    invoke-virtual {v6, v0, v1, v2}, Lcom/android/server/am/ActivityRecord;->removeResultsLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;I)V

    #@12d
    .line 1466
    :cond_b
    move-object/from16 v0, v34

    #@12f
    iget v5, v0, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    #@131
    move/from16 v0, p11

    #@133
    if-ne v5, v0, :cond_c

    #@135
    .line 1477
    move-object/from16 v0, v34

    #@137
    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    #@139
    move-object/from16 p12, v0

    #@13b
    .line 1481
    :cond_c
    if-nez v29, :cond_d

    #@13d
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@140
    move-result-object v5

    #@141
    if-nez v5, :cond_d

    #@143
    .line 1484
    const/16 v29, -0x1

    #@145
    .line 1487
    :cond_d
    if-nez v29, :cond_e

    #@147
    if-nez p4, :cond_e

    #@149
    .line 1490
    const/16 v29, -0x2

    #@14b
    .line 1493
    :cond_e
    if-nez v29, :cond_f

    #@14d
    .line 1494
    move-object/from16 v0, p0

    #@14f
    move/from16 v1, v37

    #@151
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->isCurrentProfileLocked(I)Z

    #@154
    move-result v5

    #@155
    if-eqz v5, :cond_14

    #@157
    .line 1500
    :cond_f
    :goto_5
    if-nez v29, :cond_10

    #@159
    if-eqz v34, :cond_10

    #@15b
    .line 1501
    move-object/from16 v0, v34

    #@15d
    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@15f
    iget-object v5, v5, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    #@161
    if-eqz v5, :cond_10

    #@163
    .line 1506
    const/high16 v5, 0x10000000

    #@165
    and-int v5, v5, v30

    #@167
    if-nez v5, :cond_10

    #@169
    .line 1507
    move-object/from16 v0, v34

    #@16b
    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@16d
    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@16f
    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    #@171
    move-object/from16 v0, p4

    #@173
    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@175
    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    #@177
    if-eq v5, v8, :cond_10

    #@179
    .line 1509
    :try_start_0
    const-string/jumbo v5, "android.intent.category.VOICE"

    #@17c
    move-object/from16 v0, p2

    #@17e
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    #@181
    .line 1510
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@184
    move-result-object v5

    #@185
    .line 1511
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@188
    move-result-object v8

    #@189
    .line 1510
    move-object/from16 v0, p2

    #@18b
    move-object/from16 v1, p3

    #@18d
    invoke-interface {v5, v8, v0, v1}, Landroid/content/pm/IPackageManager;->activitySupportsIntent(Landroid/content/ComponentName;Landroid/content/Intent;Ljava/lang/String;)Z

    #@190
    move-result v5

    #@191
    if-nez v5, :cond_10

    #@193
    .line 1512
    const-string/jumbo v5, "ActivityManager"

    #@196
    .line 1513
    new-instance v8, Ljava/lang/StringBuilder;

    #@198
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@19b
    const-string/jumbo v9, "Activity being started in current voice task does not support voice: "

    #@19e
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a1
    move-result-object v8

    #@1a2
    move-object/from16 v0, p2

    #@1a4
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1a7
    move-result-object v8

    #@1a8
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1ab
    move-result-object v8

    #@1ac
    .line 1512
    invoke-static {v5, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1af
    .line 1515
    const/16 v29, -0x7

    #@1b1
    .line 1524
    :cond_10
    :goto_6
    if-nez v29, :cond_11

    #@1b3
    if-eqz p5, :cond_11

    #@1b5
    .line 1528
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@1b8
    move-result-object v5

    #@1b9
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@1bc
    move-result-object v8

    #@1bd
    move-object/from16 v0, p2

    #@1bf
    move-object/from16 v1, p3

    #@1c1
    invoke-interface {v5, v8, v0, v1}, Landroid/content/pm/IPackageManager;->activitySupportsIntent(Landroid/content/ComponentName;Landroid/content/Intent;Ljava/lang/String;)Z

    #@1c4
    move-result v5

    #@1c5
    if-nez v5, :cond_11

    #@1c7
    .line 1530
    const-string/jumbo v5, "ActivityManager"

    #@1ca
    .line 1531
    new-instance v8, Ljava/lang/StringBuilder;

    #@1cc
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@1cf
    const-string/jumbo v9, "Activity being started in new voice task does not support: "

    #@1d2
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d5
    move-result-object v8

    #@1d6
    move-object/from16 v0, p2

    #@1d8
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1db
    move-result-object v8

    #@1dc
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1df
    move-result-object v8

    #@1e0
    .line 1530
    invoke-static {v5, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@1e3
    .line 1533
    const/16 v29, -0x7

    #@1e5
    .line 1541
    :cond_11
    :goto_7
    if-nez v6, :cond_15

    #@1e7
    const/4 v4, 0x0

    #@1e8
    .line 1543
    :goto_8
    if-eqz v29, :cond_16

    #@1ea
    .line 1544
    if-eqz v6, :cond_12

    #@1ec
    .line 1545
    const/4 v5, -0x1

    #@1ed
    .line 1547
    const/4 v9, 0x0

    #@1ee
    const/4 v10, 0x0

    #@1ef
    move-object/from16 v7, p8

    #@1f1
    move/from16 v8, p9

    #@1f3
    .line 1545
    invoke-virtual/range {v4 .. v10}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    #@1f6
    .line 1549
    :cond_12
    invoke-static/range {p16 .. p16}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    #@1f9
    .line 1550
    return v29

    #@1fa
    .line 1458
    .restart local v6    # "resultRecord":Lcom/android/server/am/ActivityRecord;
    :cond_13
    const/4 v6, 0x0

    #@1fb
    .local v6, "resultRecord":Lcom/android/server/am/ActivityRecord;
    goto/16 :goto_4

    #@1fd
    .line 1495
    .end local v6    # "resultRecord":Lcom/android/server/am/ActivityRecord;
    :cond_14
    move-object/from16 v0, p4

    #@1ff
    iget v5, v0, Landroid/content/pm/ActivityInfo;->flags:I

    #@201
    and-int/lit16 v5, v5, 0x400

    #@203
    if-nez v5, :cond_f

    #@205
    .line 1497
    const/16 v29, -0x8

    #@207
    goto/16 :goto_5

    #@209
    .line 1517
    :catch_0
    move-exception v28

    #@20a
    .line 1518
    .local v28, "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "ActivityManager"

    #@20d
    const-string/jumbo v8, "Failure checking voice capabilities"

    #@210
    move-object/from16 v0, v28

    #@212
    invoke-static {v5, v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@215
    .line 1519
    const/16 v29, -0x7

    #@217
    goto :goto_6

    #@218
    .line 1535
    .end local v28    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v28

    #@219
    .line 1536
    .restart local v28    # "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "ActivityManager"

    #@21c
    const-string/jumbo v8, "Failure checking voice capabilities"

    #@21f
    move-object/from16 v0, v28

    #@221
    invoke-static {v5, v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@224
    .line 1537
    const/16 v29, -0x7

    #@226
    goto :goto_7

    #@227
    .line 1541
    .end local v28    # "e":Landroid/os/RemoteException;
    :cond_15
    iget-object v5, v6, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@229
    iget-object v4, v5, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@22b
    .local v4, "resultStack":Lcom/android/server/am/ActivityStack;
    goto :goto_8

    #@22c
    .line 1553
    .end local v4    # "resultStack":Lcom/android/server/am/ActivityStack;
    :cond_16
    const/16 v24, 0x0

    #@22e
    .line 1555
    .local v24, "abort":Z
    move-object/from16 v0, p0

    #@230
    iget-object v5, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@232
    .line 1556
    const-string/jumbo v8, "android.permission.START_ANY_ACTIVITY"

    #@235
    .line 1555
    move/from16 v0, p10

    #@237
    move/from16 v1, p11

    #@239
    invoke-virtual {v5, v8, v0, v1}, Lcom/android/server/am/ActivityManagerService;->checkPermission(Ljava/lang/String;II)I

    #@23c
    move-result v36

    #@23d
    .line 1558
    .local v36, "startAnyPerm":I
    if-eqz v36, :cond_1c

    #@23f
    move-object/from16 v7, p0

    #@241
    move-object/from16 v8, p4

    #@243
    move-object/from16 v9, p12

    #@245
    move/from16 v10, p10

    #@247
    move/from16 v11, p11

    #@249
    move/from16 v12, p17

    #@24b
    .line 1559
    invoke-direct/range {v7 .. v12}, Lcom/android/server/am/ActivityStackSupervisor;->getComponentRestrictionForCallingPackage(Landroid/content/pm/ActivityInfo;Ljava/lang/String;IIZ)I

    #@24e
    move-result v27

    #@24f
    .line 1562
    .local v27, "componentRestriction":I
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@252
    move-result-object v5

    #@253
    .line 1561
    move-object/from16 v0, p0

    #@255
    move-object/from16 v1, p12

    #@257
    move/from16 v2, p10

    #@259
    move/from16 v3, p11

    #@25b
    invoke-direct {v0, v5, v1, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->getActionRestrictionForCallingPackage(Ljava/lang/String;Ljava/lang/String;II)I

    #@25e
    move-result v25

    #@25f
    .line 1564
    .local v25, "actionRestriction":I
    const/4 v5, 0x1

    #@260
    move/from16 v0, v27

    #@262
    if-eq v0, v5, :cond_17

    #@264
    .line 1565
    const/4 v5, 0x1

    #@265
    move/from16 v0, v25

    #@267
    if-ne v0, v5, :cond_1b

    #@269
    .line 1566
    :cond_17
    if-eqz v6, :cond_18

    #@26b
    .line 1567
    const/4 v5, -0x1

    #@26c
    .line 1569
    const/4 v9, 0x0

    #@26d
    const/4 v10, 0x0

    #@26e
    move-object/from16 v7, p8

    #@270
    move/from16 v8, p9

    #@272
    .line 1567
    invoke-virtual/range {v4 .. v10}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    #@275
    .line 1572
    :cond_18
    const/4 v5, 0x1

    #@276
    move/from16 v0, v25

    #@278
    if-ne v0, v5, :cond_19

    #@27a
    .line 1573
    new-instance v5, Ljava/lang/StringBuilder;

    #@27c
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@27f
    const-string/jumbo v8, "Permission Denial: starting "

    #@282
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@285
    move-result-object v5

    #@286
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    #@289
    move-result-object v8

    #@28a
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28d
    move-result-object v5

    #@28e
    .line 1574
    const-string/jumbo v8, " from "

    #@291
    .line 1573
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@294
    move-result-object v5

    #@295
    move-object/from16 v0, v26

    #@297
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@29a
    move-result-object v5

    #@29b
    .line 1574
    const-string/jumbo v8, " (pid="

    #@29e
    .line 1573
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a1
    move-result-object v5

    #@2a2
    move/from16 v0, p10

    #@2a4
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2a7
    move-result-object v5

    #@2a8
    .line 1575
    const-string/jumbo v8, ", uid="

    #@2ab
    .line 1573
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2ae
    move-result-object v5

    #@2af
    move/from16 v0, p11

    #@2b1
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b4
    move-result-object v5

    #@2b5
    .line 1575
    const-string/jumbo v8, ")"

    #@2b8
    .line 1573
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2bb
    move-result-object v5

    #@2bc
    .line 1575
    const-string/jumbo v8, " with revoked permission "

    #@2bf
    .line 1573
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c2
    move-result-object v8

    #@2c3
    .line 1576
    sget-object v5, Lcom/android/server/am/ActivityStackSupervisor;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    #@2c5
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@2c8
    move-result-object v9

    #@2c9
    invoke-virtual {v5, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2cc
    move-result-object v5

    #@2cd
    check-cast v5, Ljava/lang/String;

    #@2cf
    .line 1573
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d2
    move-result-object v5

    #@2d3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d6
    move-result-object v32

    #@2d7
    .line 1588
    .local v32, "msg":Ljava/lang/String;
    :goto_9
    const-string/jumbo v5, "ActivityManager"

    #@2da
    move-object/from16 v0, v32

    #@2dc
    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2df
    .line 1589
    new-instance v5, Ljava/lang/SecurityException;

    #@2e1
    move-object/from16 v0, v32

    #@2e3
    invoke-direct {v5, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@2e6
    throw v5

    #@2e7
    .line 1577
    .end local v32    # "msg":Ljava/lang/String;
    :cond_19
    move-object/from16 v0, p4

    #@2e9
    iget-boolean v5, v0, Landroid/content/pm/ActivityInfo;->exported:Z

    #@2eb
    if-nez v5, :cond_1a

    #@2ed
    .line 1578
    new-instance v5, Ljava/lang/StringBuilder;

    #@2ef
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@2f2
    const-string/jumbo v8, "Permission Denial: starting "

    #@2f5
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f8
    move-result-object v5

    #@2f9
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    #@2fc
    move-result-object v8

    #@2fd
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@300
    move-result-object v5

    #@301
    .line 1579
    const-string/jumbo v8, " from "

    #@304
    .line 1578
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@307
    move-result-object v5

    #@308
    move-object/from16 v0, v26

    #@30a
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@30d
    move-result-object v5

    #@30e
    .line 1579
    const-string/jumbo v8, " (pid="

    #@311
    .line 1578
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@314
    move-result-object v5

    #@315
    move/from16 v0, p10

    #@317
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@31a
    move-result-object v5

    #@31b
    .line 1580
    const-string/jumbo v8, ", uid="

    #@31e
    .line 1578
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@321
    move-result-object v5

    #@322
    move/from16 v0, p11

    #@324
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@327
    move-result-object v5

    #@328
    .line 1580
    const-string/jumbo v8, ")"

    #@32b
    .line 1578
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32e
    move-result-object v5

    #@32f
    .line 1581
    const-string/jumbo v8, " not exported from uid "

    #@332
    .line 1578
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@335
    move-result-object v5

    #@336
    .line 1581
    move-object/from16 v0, p4

    #@338
    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@33a
    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    #@33c
    .line 1578
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@33f
    move-result-object v5

    #@340
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@343
    move-result-object v32

    #@344
    .restart local v32    # "msg":Ljava/lang/String;
    goto :goto_9

    #@345
    .line 1583
    .end local v32    # "msg":Ljava/lang/String;
    :cond_1a
    new-instance v5, Ljava/lang/StringBuilder;

    #@347
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@34a
    const-string/jumbo v8, "Permission Denial: starting "

    #@34d
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@350
    move-result-object v5

    #@351
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    #@354
    move-result-object v8

    #@355
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@358
    move-result-object v5

    #@359
    .line 1584
    const-string/jumbo v8, " from "

    #@35c
    .line 1583
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35f
    move-result-object v5

    #@360
    move-object/from16 v0, v26

    #@362
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@365
    move-result-object v5

    #@366
    .line 1584
    const-string/jumbo v8, " (pid="

    #@369
    .line 1583
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36c
    move-result-object v5

    #@36d
    move/from16 v0, p10

    #@36f
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@372
    move-result-object v5

    #@373
    .line 1585
    const-string/jumbo v8, ", uid="

    #@376
    .line 1583
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@379
    move-result-object v5

    #@37a
    move/from16 v0, p11

    #@37c
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@37f
    move-result-object v5

    #@380
    .line 1585
    const-string/jumbo v8, ")"

    #@383
    .line 1583
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@386
    move-result-object v5

    #@387
    .line 1586
    const-string/jumbo v8, " requires "

    #@38a
    .line 1583
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38d
    move-result-object v5

    #@38e
    .line 1586
    move-object/from16 v0, p4

    #@390
    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    #@392
    .line 1583
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@395
    move-result-object v5

    #@396
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@399
    move-result-object v32

    #@39a
    .restart local v32    # "msg":Ljava/lang/String;
    goto/16 :goto_9

    #@39c
    .line 1592
    .end local v32    # "msg":Ljava/lang/String;
    :cond_1b
    const/4 v5, 0x2

    #@39d
    move/from16 v0, v25

    #@39f
    if-ne v0, v5, :cond_1f

    #@3a1
    .line 1593
    new-instance v5, Ljava/lang/StringBuilder;

    #@3a3
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@3a6
    const-string/jumbo v8, "Appop Denial: starting "

    #@3a9
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3ac
    move-result-object v5

    #@3ad
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    #@3b0
    move-result-object v8

    #@3b1
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b4
    move-result-object v5

    #@3b5
    .line 1594
    const-string/jumbo v8, " from "

    #@3b8
    .line 1593
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3bb
    move-result-object v5

    #@3bc
    move-object/from16 v0, v26

    #@3be
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3c1
    move-result-object v5

    #@3c2
    .line 1594
    const-string/jumbo v8, " (pid="

    #@3c5
    .line 1593
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c8
    move-result-object v5

    #@3c9
    move/from16 v0, p10

    #@3cb
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3ce
    move-result-object v5

    #@3cf
    .line 1595
    const-string/jumbo v8, ", uid="

    #@3d2
    .line 1593
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d5
    move-result-object v5

    #@3d6
    move/from16 v0, p11

    #@3d8
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3db
    move-result-object v5

    #@3dc
    .line 1595
    const-string/jumbo v8, ")"

    #@3df
    .line 1593
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e2
    move-result-object v5

    #@3e3
    .line 1596
    const-string/jumbo v8, " requires "

    #@3e6
    .line 1593
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e9
    move-result-object v8

    #@3ea
    .line 1597
    sget-object v5, Lcom/android/server/am/ActivityStackSupervisor;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    #@3ec
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@3ef
    move-result-object v9

    #@3f0
    invoke-virtual {v5, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3f3
    move-result-object v5

    #@3f4
    check-cast v5, Ljava/lang/String;

    #@3f6
    .line 1596
    invoke-static {v5}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    #@3f9
    move-result-object v5

    #@3fa
    .line 1593
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3fd
    move-result-object v5

    #@3fe
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@401
    move-result-object v31

    #@402
    .line 1598
    .local v31, "message":Ljava/lang/String;
    const-string/jumbo v5, "ActivityManager"

    #@405
    move-object/from16 v0, v31

    #@407
    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@40a
    .line 1599
    const/16 v24, 0x1

    #@40c
    .line 1610
    .end local v25    # "actionRestriction":I
    .end local v27    # "componentRestriction":I
    .end local v31    # "message":Ljava/lang/String;
    :cond_1c
    :goto_a
    move-object/from16 v0, p0

    #@40e
    iget-object v5, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@410
    iget-object v7, v5, Lcom/android/server/am/ActivityManagerService;->mIntentFirewall:Lcom/android/server/firewall/IntentFirewall;

    #@412
    .line 1611
    move-object/from16 v0, p4

    #@414
    iget-object v12, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@416
    move-object/from16 v8, p2

    #@418
    move/from16 v9, p11

    #@41a
    move/from16 v10, p10

    #@41c
    move-object/from16 v11, p3

    #@41e
    .line 1610
    invoke-virtual/range {v7 .. v12}, Lcom/android/server/firewall/IntentFirewall;->checkStartActivity(Landroid/content/Intent;IILjava/lang/String;Landroid/content/pm/ApplicationInfo;)Z

    #@421
    move-result v5

    #@422
    if-eqz v5, :cond_20

    #@424
    const/4 v5, 0x0

    #@425
    :goto_b
    or-int v24, v24, v5

    #@427
    .line 1613
    .local v24, "abort":Z
    move-object/from16 v0, p0

    #@429
    iget-object v5, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@42b
    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    #@42d
    if-eqz v5, :cond_1d

    #@42f
    .line 1617
    :try_start_2
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->cloneFilter()Landroid/content/Intent;

    #@432
    move-result-object v38

    #@433
    .line 1618
    .local v38, "watchIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    #@435
    iget-object v5, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@437
    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    #@439
    .line 1619
    move-object/from16 v0, p4

    #@43b
    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@43d
    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@43f
    .line 1618
    move-object/from16 v0, v38

    #@441
    invoke-interface {v5, v0, v8}, Landroid/app/IActivityController;->activityStarting(Landroid/content/Intent;Ljava/lang/String;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    #@444
    move-result v5

    #@445
    if-eqz v5, :cond_21

    #@447
    const/4 v5, 0x0

    #@448
    :goto_c
    or-int v24, v24, v5

    #@44a
    .line 1625
    .end local v38    # "watchIntent":Landroid/content/Intent;
    :cond_1d
    :goto_d
    if-eqz v24, :cond_22

    #@44c
    .line 1626
    if-eqz v6, :cond_1e

    #@44e
    .line 1627
    const/4 v5, -0x1

    #@44f
    .line 1628
    const/4 v9, 0x0

    #@450
    const/4 v10, 0x0

    #@451
    move-object/from16 v7, p8

    #@453
    move/from16 v8, p9

    #@455
    .line 1627
    invoke-virtual/range {v4 .. v10}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    #@458
    .line 1632
    :cond_1e
    invoke-static/range {p16 .. p16}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    #@45b
    .line 1633
    const/4 v5, 0x0

    #@45c
    return v5

    #@45d
    .line 1600
    .local v24, "abort":Z
    .restart local v25    # "actionRestriction":I
    .restart local v27    # "componentRestriction":I
    :cond_1f
    const/4 v5, 0x2

    #@45e
    move/from16 v0, v27

    #@460
    if-ne v0, v5, :cond_1c

    #@462
    .line 1601
    new-instance v5, Ljava/lang/StringBuilder;

    #@464
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@467
    const-string/jumbo v8, "Appop Denial: starting "

    #@46a
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46d
    move-result-object v5

    #@46e
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    #@471
    move-result-object v8

    #@472
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@475
    move-result-object v5

    #@476
    .line 1602
    const-string/jumbo v8, " from "

    #@479
    .line 1601
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47c
    move-result-object v5

    #@47d
    move-object/from16 v0, v26

    #@47f
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@482
    move-result-object v5

    #@483
    .line 1602
    const-string/jumbo v8, " (pid="

    #@486
    .line 1601
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@489
    move-result-object v5

    #@48a
    move/from16 v0, p10

    #@48c
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@48f
    move-result-object v5

    #@490
    .line 1603
    const-string/jumbo v8, ", uid="

    #@493
    .line 1601
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@496
    move-result-object v5

    #@497
    move/from16 v0, p11

    #@499
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@49c
    move-result-object v5

    #@49d
    .line 1603
    const-string/jumbo v8, ")"

    #@4a0
    .line 1601
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a3
    move-result-object v5

    #@4a4
    .line 1604
    const-string/jumbo v8, " requires appop "

    #@4a7
    .line 1601
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4aa
    move-result-object v5

    #@4ab
    .line 1604
    move-object/from16 v0, p4

    #@4ad
    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    #@4af
    invoke-static {v8}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    #@4b2
    move-result-object v8

    #@4b3
    .line 1601
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b6
    move-result-object v5

    #@4b7
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4ba
    move-result-object v31

    #@4bb
    .line 1605
    .restart local v31    # "message":Ljava/lang/String;
    const-string/jumbo v5, "ActivityManager"

    #@4be
    move-object/from16 v0, v31

    #@4c0
    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@4c3
    .line 1606
    const/16 v24, 0x1

    #@4c5
    goto/16 :goto_a

    #@4c7
    .line 1610
    .end local v25    # "actionRestriction":I
    .end local v27    # "componentRestriction":I
    .end local v31    # "message":Ljava/lang/String;
    :cond_20
    const/4 v5, 0x1

    #@4c8
    goto/16 :goto_b

    #@4ca
    .line 1618
    .local v24, "abort":Z
    .restart local v38    # "watchIntent":Landroid/content/Intent;
    :cond_21
    const/4 v5, 0x1

    #@4cb
    goto/16 :goto_c

    #@4cd
    .line 1620
    .end local v38    # "watchIntent":Landroid/content/Intent;
    :catch_2
    move-exception v28

    #@4ce
    .line 1621
    .restart local v28    # "e":Landroid/os/RemoteException;
    move-object/from16 v0, p0

    #@4d0
    iget-object v5, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@4d2
    const/4 v8, 0x0

    #@4d3
    iput-object v8, v5, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    #@4d5
    goto/16 :goto_d

    #@4d7
    .line 1636
    .end local v28    # "e":Landroid/os/RemoteException;
    :cond_22
    new-instance v7, Lcom/android/server/am/ActivityRecord;

    #@4d9
    move-object/from16 v0, p0

    #@4db
    iget-object v8, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@4dd
    .line 1637
    move-object/from16 v0, p0

    #@4df
    iget-object v5, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@4e1
    iget-object v15, v5, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    #@4e3
    .line 1638
    if-eqz p5, :cond_26

    #@4e5
    const/16 v20, 0x1

    #@4e7
    :goto_e
    move-object/from16 v9, v26

    #@4e9
    move/from16 v10, p11

    #@4eb
    move-object/from16 v11, p12

    #@4ed
    move-object/from16 v12, p2

    #@4ef
    move-object/from16 v13, p3

    #@4f1
    move-object/from16 v14, p4

    #@4f3
    move-object/from16 v16, v6

    #@4f5
    move-object/from16 v17, p8

    #@4f7
    move/from16 v18, p9

    #@4f9
    move/from16 v19, p18

    #@4fb
    move-object/from16 v21, p0

    #@4fd
    move-object/from16 v22, p20

    #@4ff
    move-object/from16 v23, p16

    #@501
    .line 1636
    invoke-direct/range {v7 .. v23}, Lcom/android/server/am/ActivityRecord;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;IZZLcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;Landroid/os/Bundle;)V

    #@504
    .line 1639
    .local v7, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz p19, :cond_23

    #@506
    .line 1640
    const/4 v5, 0x0

    #@507
    aput-object v7, p19, v5

    #@509
    .line 1643
    :cond_23
    iget-object v5, v7, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    #@50b
    if-nez v5, :cond_24

    #@50d
    if-eqz v34, :cond_24

    #@50f
    .line 1646
    move-object/from16 v0, v34

    #@511
    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    #@513
    iput-object v5, v7, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    #@515
    .line 1649
    :cond_24
    move-object/from16 v0, p0

    #@517
    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    #@519
    move-object/from16 v35, v0

    #@51b
    .line 1650
    .local v35, "stack":Lcom/android/server/am/ActivityStack;
    if-nez p5, :cond_27

    #@51d
    move-object/from16 v0, v35

    #@51f
    iget-object v5, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    #@521
    if-eqz v5, :cond_25

    #@523
    .line 1651
    move-object/from16 v0, v35

    #@525
    iget-object v5, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    #@527
    iget-object v5, v5, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@529
    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@52b
    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    #@52d
    move/from16 v0, p11

    #@52f
    if-eq v5, v0, :cond_27

    #@531
    .line 1652
    :cond_25
    move-object/from16 v0, p0

    #@533
    iget-object v8, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@535
    .line 1653
    const-string/jumbo v13, "Activity start"

    #@538
    move/from16 v9, p10

    #@53a
    move/from16 v10, p11

    #@53c
    move/from16 v11, p13

    #@53e
    move/from16 v12, p14

    #@540
    .line 1652
    invoke-virtual/range {v8 .. v13}, Lcom/android/server/am/ActivityManagerService;->checkAppSwitchAllowedLocked(IIIILjava/lang/String;)Z

    #@543
    move-result v5

    #@544
    if-nez v5, :cond_27

    #@546
    .line 1655
    new-instance v33, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;

    #@548
    move-object/from16 v0, v33

    #@54a
    move-object/from16 v1, v34

    #@54c
    move/from16 v2, p15

    #@54e
    move-object/from16 v3, v35

    #@550
    invoke-direct {v0, v7, v1, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;-><init>(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;ILcom/android/server/am/ActivityStack;)V

    #@553
    .line 1656
    .local v33, "pal":Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;
    move-object/from16 v0, p0

    #@555
    iget-object v5, v0, Lcom/android/server/am/ActivityStackSupervisor;->mPendingActivityLaunches:Ljava/util/ArrayList;

    #@557
    move-object/from16 v0, v33

    #@559
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@55c
    .line 1657
    invoke-static/range {p16 .. p16}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    #@55f
    .line 1658
    const/4 v5, 0x4

    #@560
    return v5

    #@561
    .line 1638
    .end local v7    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v33    # "pal":Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;
    .end local v35    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_26
    const/16 v20, 0x0

    #@563
    goto :goto_e

    #@564
    .line 1662
    .restart local v7    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v35    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_27
    move-object/from16 v0, p0

    #@566
    iget-object v5, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@568
    iget-boolean v5, v5, Lcom/android/server/am/ActivityManagerService;->mDidAppSwitch:Z

    #@56a
    if-eqz v5, :cond_29

    #@56c
    .line 1668
    move-object/from16 v0, p0

    #@56e
    iget-object v5, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@570
    const-wide/16 v8, 0x0

    #@572
    iput-wide v8, v5, Lcom/android/server/am/ActivityManagerService;->mAppSwitchesAllowedTime:J

    #@574
    .line 1673
    :goto_f
    const/4 v5, 0x0

    #@575
    move-object/from16 v0, p0

    #@577
    invoke-virtual {v0, v5}, Lcom/android/server/am/ActivityStackSupervisor;->doPendingActivityLaunchesLocked(Z)V

    #@57a
    .line 1676
    const/4 v14, 0x1

    #@57b
    move-object/from16 v8, p0

    #@57d
    move-object v9, v7

    #@57e
    move-object/from16 v10, v34

    #@580
    move-object/from16 v11, p5

    #@582
    move-object/from16 v12, p6

    #@584
    move/from16 v13, p15

    #@586
    move-object/from16 v15, p16

    #@588
    move-object/from16 v16, p21

    #@58a
    .line 1675
    invoke-virtual/range {v8 .. v16}, Lcom/android/server/am/ActivityStackSupervisor;->startActivityUncheckedLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;IZLandroid/os/Bundle;Lcom/android/server/am/TaskRecord;)I

    #@58d
    move-result v29

    #@58e
    .line 1678
    if-gez v29, :cond_28

    #@590
    .line 1683
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->notifyActivityDrawnForKeyguard()V

    #@593
    .line 1685
    :cond_28
    return v29

    #@594
    .line 1670
    :cond_29
    move-object/from16 v0, p0

    #@596
    iget-object v5, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@598
    const/4 v8, 0x1

    #@599
    iput-boolean v8, v5, Lcom/android/server/am/ActivityManagerService;->mDidAppSwitch:Z

    #@59b
    goto :goto_f
.end method

.method final startActivityMayWait(Landroid/app/IApplicationThread;ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/app/IActivityManager$WaitResult;Landroid/content/res/Configuration;Landroid/os/Bundle;ZILandroid/app/IActivityContainer;Lcom/android/server/am/TaskRecord;)I
    .locals 44
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "callingUid"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "resolvedType"    # Ljava/lang/String;
    .param p6, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p7, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p8, "resultTo"    # Landroid/os/IBinder;
    .param p9, "resultWho"    # Ljava/lang/String;
    .param p10, "requestCode"    # I
    .param p11, "startFlags"    # I
    .param p12, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p13, "outResult"    # Landroid/app/IActivityManager$WaitResult;
    .param p14, "config"    # Landroid/content/res/Configuration;
    .param p15, "options"    # Landroid/os/Bundle;
    .param p16, "ignoreTargetSecurity"    # Z
    .param p17, "userId"    # I
    .param p18, "iContainer"    # Landroid/app/IActivityContainer;
    .param p19, "inTask"    # Lcom/android/server/am/TaskRecord;

    #@0
    .prologue
    .line 933
    if-eqz p4, :cond_0

    #@2
    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->hasFileDescriptors()Z

    #@5
    move-result v2

    #@6
    if-eqz v2, :cond_0

    #@8
    .line 934
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@a
    const-string/jumbo v4, "File descriptors passed in Intent"

    #@d
    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v2

    #@11
    .line 936
    :cond_0
    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@14
    move-result-object v2

    #@15
    if-eqz v2, :cond_1

    #@17
    const/16 v26, 0x1

    #@19
    .line 939
    .local v26, "componentSpecified":Z
    :goto_0
    new-instance v3, Landroid/content/Intent;

    #@1b
    move-object/from16 v0, p4

    #@1d
    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    #@20
    .end local p4    # "intent":Landroid/content/Intent;
    .local v3, "intent":Landroid/content/Intent;
    move-object/from16 v2, p0

    #@22
    move-object/from16 v4, p5

    #@24
    move/from16 v5, p11

    #@26
    move-object/from16 v6, p12

    #@28
    move/from16 v7, p17

    #@2a
    .line 943
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/app/ProfilerInfo;I)Landroid/content/pm/ActivityInfo;

    #@2d
    move-result-object v30

    #@2e
    .local v30, "aInfo":Landroid/content/pm/ActivityInfo;
    move-object/from16 v28, p18

    #@30
    .line 945
    check-cast v28, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    #@32
    .line 946
    .local v28, "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    move-object/from16 v0, p0

    #@34
    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@36
    move-object/from16 v43, v0

    #@38
    monitor-enter v43

    #@39
    .line 947
    if-eqz v28, :cond_2

    #@3b
    :try_start_0
    move-object/from16 v0, v28

    #@3d
    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mParentActivity:Lcom/android/server/am/ActivityRecord;

    #@3f
    if-eqz v2, :cond_2

    #@41
    .line 948
    move-object/from16 v0, v28

    #@43
    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mParentActivity:Lcom/android/server/am/ActivityRecord;

    #@45
    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    #@47
    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@49
    if-eq v2, v4, :cond_2

    #@4b
    .line 950
    const/4 v2, -0x6

    #@4c
    monitor-exit v43

    #@4d
    return v2

    #@4e
    .line 936
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v26    # "componentSpecified":Z
    .end local v28    # "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    .end local v30    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local p4    # "intent":Landroid/content/Intent;
    :cond_1
    const/16 v26, 0x0

    #@50
    .restart local v26    # "componentSpecified":Z
    goto :goto_0

    #@51
    .line 952
    .end local p4    # "intent":Landroid/content/Intent;
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v28    # "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    .restart local v30    # "aInfo":Landroid/content/pm/ActivityInfo;
    :cond_2
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@54
    move-result v21

    #@55
    .line 953
    .local v21, "realCallingPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@58
    move-result v22

    #@59
    .line 955
    .local v22, "realCallingUid":I
    if-ltz p2, :cond_8

    #@5b
    .line 956
    const/16 v18, -0x1

    #@5d
    .line 965
    .local v18, "callingPid":I
    :goto_1
    if-eqz v28, :cond_3

    #@5f
    move-object/from16 v0, v28

    #@61
    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStack:Lcom/android/server/am/ActivityStack;

    #@63
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->isOnHomeDisplay()Z

    #@66
    move-result v2

    #@67
    if-eqz v2, :cond_a

    #@69
    .line 966
    :cond_3
    move-object/from16 v0, p0

    #@6b
    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    #@6d
    move-object/from16 v41, v0

    #@6f
    .line 970
    .local v41, "stack":Lcom/android/server/am/ActivityStack;
    :goto_2
    if-eqz p14, :cond_b

    #@71
    move-object/from16 v0, p0

    #@73
    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@75
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    #@77
    move-object/from16 v0, p14

    #@79
    invoke-virtual {v2, v0}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    #@7c
    move-result v2

    #@7d
    if-eqz v2, :cond_b

    #@7f
    const/4 v2, 0x1

    #@80
    :goto_3
    move-object/from16 v0, v41

    #@82
    iput-boolean v2, v0, Lcom/android/server/am/ActivityStack;->mConfigWillChange:Z

    #@84
    .line 974
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@87
    move-result-wide v36

    #@88
    .line 976
    .local v36, "origId":J
    if-eqz v30, :cond_c

    #@8a
    .line 977
    move-object/from16 v0, v30

    #@8c
    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@8e
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    #@90
    and-int/lit8 v2, v2, 0x2

    #@92
    if-eqz v2, :cond_c

    #@94
    .line 981
    move-object/from16 v0, v30

    #@96
    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    #@98
    move-object/from16 v0, v30

    #@9a
    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@9c
    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@9e
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a1
    move-result v2

    #@a2
    if-eqz v2, :cond_15

    #@a4
    .line 982
    move-object/from16 v0, p0

    #@a6
    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@a8
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    #@aa
    if-eqz v2, :cond_4

    #@ac
    .line 983
    move-object/from16 v0, p0

    #@ae
    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@b0
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    #@b2
    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    #@b4
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    #@b6
    move-object/from16 v0, v30

    #@b8
    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@ba
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    #@bc
    if-ne v2, v4, :cond_d

    #@be
    .line 984
    move-object/from16 v0, p0

    #@c0
    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@c2
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    #@c4
    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    #@c6
    move-object/from16 v0, v30

    #@c8
    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    #@ca
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@cd
    move-result v2

    #@ce
    if-eqz v2, :cond_d

    #@d0
    :cond_4
    move-object/from16 v12, v30

    #@d2
    .end local v30    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v12, "aInfo":Landroid/content/pm/ActivityInfo;
    move-object/from16 p4, v3

    #@d4
    .line 1049
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local p1    # "caller":Landroid/app/IApplicationThread;
    .end local p5    # "resolvedType":Ljava/lang/String;
    .restart local p4    # "intent":Landroid/content/Intent;
    :goto_4
    const/16 v27, 0x0

    #@d6
    move-object/from16 v8, p0

    #@d8
    move-object/from16 v9, p1

    #@da
    move-object/from16 v10, p4

    #@dc
    move-object/from16 v11, p5

    #@de
    move-object/from16 v13, p6

    #@e0
    move-object/from16 v14, p7

    #@e2
    move-object/from16 v15, p8

    #@e4
    move-object/from16 v16, p9

    #@e6
    move/from16 v17, p10

    #@e8
    move/from16 v19, p2

    #@ea
    move-object/from16 v20, p3

    #@ec
    move/from16 v23, p11

    #@ee
    move-object/from16 v24, p15

    #@f0
    move/from16 v25, p16

    #@f2
    move-object/from16 v29, p19

    #@f4
    .line 1045
    :try_start_2
    invoke-virtual/range {v8 .. v29}, Lcom/android/server/am/ActivityStackSupervisor;->startActivityLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;IIILandroid/os/Bundle;ZZ[Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;Lcom/android/server/am/TaskRecord;)I

    #@f7
    move-result v40

    #@f8
    .line 1051
    .local v40, "res":I
    invoke-static/range {v36 .. v37}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@fb
    .line 1053
    move-object/from16 v0, v41

    #@fd
    iget-boolean v2, v0, Lcom/android/server/am/ActivityStack;->mConfigWillChange:Z

    #@ff
    if-eqz v2, :cond_5

    #@101
    .line 1058
    move-object/from16 v0, p0

    #@103
    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@105
    const-string/jumbo v4, "android.permission.CHANGE_CONFIGURATION"

    #@108
    .line 1059
    const-string/jumbo v5, "updateConfiguration()"

    #@10b
    .line 1058
    invoke-virtual {v2, v4, v5}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@10e
    .line 1060
    const/4 v2, 0x0

    #@10f
    move-object/from16 v0, v41

    #@111
    iput-boolean v2, v0, Lcom/android/server/am/ActivityStack;->mConfigWillChange:Z

    #@113
    .line 1063
    move-object/from16 v0, p0

    #@115
    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@117
    const/4 v4, 0x0

    #@118
    const/4 v5, 0x0

    #@119
    const/4 v6, 0x0

    #@11a
    move-object/from16 v0, p14

    #@11c
    invoke-virtual {v2, v0, v4, v5, v6}, Lcom/android/server/am/ActivityManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;ZZ)Z

    #@11f
    .line 1066
    :cond_5
    if-eqz p13, :cond_7

    #@121
    .line 1067
    move/from16 v0, v40

    #@123
    move-object/from16 v1, p13

    #@125
    iput v0, v1, Landroid/app/IActivityManager$WaitResult;->result:I

    #@127
    .line 1068
    if-nez v40, :cond_13

    #@129
    .line 1069
    move-object/from16 v0, p0

    #@12b
    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    #@12d
    move-object/from16 v0, p13

    #@12f
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@132
    .line 1072
    :cond_6
    :try_start_3
    move-object/from16 v0, p0

    #@134
    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@136
    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@139
    .line 1075
    :goto_5
    :try_start_4
    move-object/from16 v0, p13

    #@13b
    iget-boolean v2, v0, Landroid/app/IActivityManager$WaitResult;->timeout:Z

    #@13d
    if-nez v2, :cond_7

    #@13f
    move-object/from16 v0, p13

    #@141
    iget-object v2, v0, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@143
    if-eqz v2, :cond_6

    #@145
    :cond_7
    :goto_6
    monitor-exit v43

    #@146
    .line 1096
    return v40

    #@147
    .line 957
    .end local v18    # "callingPid":I
    .end local v36    # "origId":J
    .end local v40    # "res":I
    .end local v41    # "stack":Lcom/android/server/am/ActivityStack;
    .end local p4    # "intent":Landroid/content/Intent;
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v30    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local p1    # "caller":Landroid/app/IApplicationThread;
    .restart local p5    # "resolvedType":Ljava/lang/String;
    :cond_8
    if-nez p1, :cond_9

    #@149
    .line 958
    move/from16 v18, v21

    #@14b
    .line 959
    .restart local v18    # "callingPid":I
    move/from16 p2, v22

    #@14d
    goto/16 :goto_1

    #@14f
    .line 961
    .end local v18    # "callingPid":I
    :cond_9
    const/16 p2, -0x1

    #@151
    const/16 v18, -0x1

    #@153
    .restart local v18    # "callingPid":I
    goto/16 :goto_1

    #@155
    .line 968
    :cond_a
    :try_start_5
    move-object/from16 v0, v28

    #@157
    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStack:Lcom/android/server/am/ActivityStack;

    #@159
    move-object/from16 v41, v0

    #@15b
    .restart local v41    # "stack":Lcom/android/server/am/ActivityStack;
    goto/16 :goto_2

    #@15d
    .line 970
    :cond_b
    const/4 v2, 0x0

    #@15e
    goto/16 :goto_3

    #@160
    .restart local v36    # "origId":J
    :cond_c
    move-object/from16 v12, v30

    #@162
    .end local v30    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    move-object/from16 p4, v3

    #@164
    .line 978
    .end local v3    # "intent":Landroid/content/Intent;
    .restart local p4    # "intent":Landroid/content/Intent;
    goto/16 :goto_4

    #@166
    .line 985
    .end local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local p4    # "intent":Landroid/content/Intent;
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v30    # "aInfo":Landroid/content/pm/ActivityInfo;
    :cond_d
    move/from16 v7, p2

    #@168
    .line 986
    .local v7, "appCallingUid":I
    if-eqz p1, :cond_e

    #@16a
    .line 987
    move-object/from16 v0, p0

    #@16c
    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@16e
    move-object/from16 v0, p1

    #@170
    invoke-virtual {v2, v0}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    #@173
    move-result-object v31

    #@174
    .line 988
    .local v31, "callerApp":Lcom/android/server/am/ProcessRecord;
    if-eqz v31, :cond_11

    #@176
    .line 989
    move-object/from16 v0, v31

    #@178
    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    #@17a
    iget v7, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    #@17c
    .line 999
    .end local v31    # "callerApp":Lcom/android/server/am/ProcessRecord;
    :cond_e
    move-object/from16 v0, p0

    #@17e
    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@180
    .line 1000
    const-string/jumbo v6, "android"

    #@183
    .line 1001
    const/4 v2, 0x1

    #@184
    new-array v12, v2, [Landroid/content/Intent;

    #@186
    const/4 v2, 0x0

    #@187
    aput-object v3, v12, v2

    #@189
    .line 1002
    const/4 v2, 0x1

    #@18a
    new-array v13, v2, [Ljava/lang/String;

    #@18c
    const/4 v2, 0x0

    #@18d
    aput-object p5, v13, v2

    #@18f
    .line 1000
    const/4 v5, 0x2

    #@190
    .line 1001
    const/4 v9, 0x0

    #@191
    const/4 v10, 0x0

    #@192
    const/4 v11, 0x0

    #@193
    .line 1002
    const/high16 v14, 0x50000000

    #@195
    .line 1003
    const/4 v15, 0x0

    #@196
    move/from16 v8, p17

    #@198
    .line 999
    invoke-virtual/range {v4 .. v15}, Lcom/android/server/am/ActivityManagerService;->getIntentSenderLocked(ILjava/lang/String;IILandroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Landroid/content/IIntentSender;

    #@19b
    move-result-object v42

    #@19c
    .line 1005
    .local v42, "target":Landroid/content/IIntentSender;
    new-instance v35, Landroid/content/Intent;

    #@19e
    invoke-direct/range {v35 .. v35}, Landroid/content/Intent;-><init>()V

    #@1a1
    .line 1006
    .local v35, "newIntent":Landroid/content/Intent;
    if-ltz p10, :cond_f

    #@1a3
    .line 1008
    const-string/jumbo v2, "has_result"

    #@1a6
    const/4 v4, 0x1

    #@1a7
    move-object/from16 v0, v35

    #@1a9
    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@1ac
    .line 1010
    :cond_f
    const-string/jumbo v2, "intent"

    #@1af
    .line 1011
    new-instance v4, Landroid/content/IntentSender;

    #@1b1
    move-object/from16 v0, v42

    #@1b3
    invoke-direct {v4, v0}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    #@1b6
    .line 1010
    move-object/from16 v0, v35

    #@1b8
    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@1bb
    .line 1012
    move-object/from16 v0, p0

    #@1bd
    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@1bf
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    #@1c1
    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    #@1c3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@1c6
    move-result v2

    #@1c7
    if-lez v2, :cond_10

    #@1c9
    .line 1013
    move-object/from16 v0, p0

    #@1cb
    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@1cd
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    #@1cf
    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    #@1d1
    const/4 v4, 0x0

    #@1d2
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1d5
    move-result-object v34

    #@1d6
    check-cast v34, Lcom/android/server/am/ActivityRecord;

    #@1d8
    .line 1014
    .local v34, "hist":Lcom/android/server/am/ActivityRecord;
    const-string/jumbo v2, "cur_app"

    #@1db
    .line 1015
    move-object/from16 v0, v34

    #@1dd
    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    #@1df
    .line 1014
    move-object/from16 v0, v35

    #@1e1
    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@1e4
    .line 1016
    const-string/jumbo v2, "cur_task"

    #@1e7
    .line 1017
    move-object/from16 v0, v34

    #@1e9
    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@1eb
    iget v4, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    #@1ed
    .line 1016
    move-object/from16 v0, v35

    #@1ef
    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@1f2
    .line 1019
    .end local v34    # "hist":Lcom/android/server/am/ActivityRecord;
    :cond_10
    const-string/jumbo v2, "new_app"

    #@1f5
    .line 1020
    move-object/from16 v0, v30

    #@1f7
    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@1f9
    .line 1019
    move-object/from16 v0, v35

    #@1fb
    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@1fe
    .line 1021
    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    #@201
    move-result v2

    #@202
    move-object/from16 v0, v35

    #@204
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    #@207
    .line 1022
    const-string/jumbo v2, "android"

    #@20a
    .line 1023
    const-class v4, Lcom/android/internal/app/HeavyWeightSwitcherActivity;

    #@20c
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@20f
    move-result-object v4

    #@210
    .line 1022
    move-object/from16 v0, v35

    #@212
    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@215
    .line 1024
    move-object/from16 p4, v35

    #@217
    .line 1025
    .end local v3    # "intent":Landroid/content/Intent;
    .restart local p4    # "intent":Landroid/content/Intent;
    const/16 p5, 0x0

    #@219
    .line 1026
    .local p5, "resolvedType":Ljava/lang/String;
    const/16 p1, 0x0

    #@21b
    .line 1027
    .local p1, "caller":Landroid/app/IApplicationThread;
    :try_start_6
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@21e
    move-result p2

    #@21f
    .line 1028
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    #@222
    move-result v18

    #@223
    .line 1029
    const/16 v26, 0x1

    #@225
    .line 1032
    :try_start_7
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@228
    move-result-object v2

    #@229
    .line 1033
    const/4 v4, 0x0

    #@22a
    .line 1034
    const v5, 0x10400

    #@22d
    .line 1032
    move-object/from16 v0, p4

    #@22f
    move/from16 v1, p17

    #@231
    invoke-interface {v2, v0, v4, v5, v1}, Landroid/content/pm/IPackageManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    #@234
    move-result-object v39

    #@235
    .line 1036
    .local v39, "rInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v39, :cond_12

    #@237
    move-object/from16 v0, v39

    #@239
    iget-object v12, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    #@23b
    .line 1037
    .end local v30    # "aInfo":Landroid/content/pm/ActivityInfo;
    :goto_7
    :try_start_8
    move-object/from16 v0, p0

    #@23d
    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@23f
    move/from16 v0, p17

    #@241
    invoke-virtual {v2, v12, v0}, Lcom/android/server/am/ActivityManagerService;->getActivityInfoForUser(Landroid/content/pm/ActivityInfo;I)Landroid/content/pm/ActivityInfo;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    #@244
    move-result-object v12

    #@245
    .restart local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    goto/16 :goto_4

    #@247
    .line 991
    .end local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v35    # "newIntent":Landroid/content/Intent;
    .end local v39    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v42    # "target":Landroid/content/IIntentSender;
    .end local p4    # "intent":Landroid/content/Intent;
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v30    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v31    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .local p1, "caller":Landroid/app/IApplicationThread;
    .local p5, "resolvedType":Ljava/lang/String;
    :cond_11
    :try_start_9
    const-string/jumbo v2, "ActivityManager"

    #@24a
    new-instance v4, Ljava/lang/StringBuilder;

    #@24c
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@24f
    const-string/jumbo v5, "Unable to find app for caller "

    #@252
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@255
    move-result-object v4

    #@256
    move-object/from16 v0, p1

    #@258
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@25b
    move-result-object v4

    #@25c
    .line 992
    const-string/jumbo v5, " (pid="

    #@25f
    .line 991
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@262
    move-result-object v4

    #@263
    move/from16 v0, v18

    #@265
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@268
    move-result-object v4

    #@269
    .line 992
    const-string/jumbo v5, ") when starting: "

    #@26c
    .line 991
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26f
    move-result-object v4

    #@270
    .line 993
    invoke-virtual {v3}, Landroid/content/Intent;->toString()Ljava/lang/String;

    #@273
    move-result-object v5

    #@274
    .line 991
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@277
    move-result-object v4

    #@278
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27b
    move-result-object v4

    #@27c
    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@27f
    .line 994
    invoke-static/range {p15 .. p15}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    #@282
    .line 995
    const/4 v2, -0x4

    #@283
    monitor-exit v43

    #@284
    return v2

    #@285
    .line 1036
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v31    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .restart local v35    # "newIntent":Landroid/content/Intent;
    .restart local v39    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v42    # "target":Landroid/content/IIntentSender;
    .local p1, "caller":Landroid/app/IApplicationThread;
    .restart local p4    # "intent":Landroid/content/Intent;
    .local p5, "resolvedType":Ljava/lang/String;
    :cond_12
    const/4 v12, 0x0

    #@286
    .local v12, "aInfo":Landroid/content/pm/ActivityInfo;
    goto :goto_7

    #@287
    .line 1038
    .end local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v39    # "rInfo":Landroid/content/pm/ResolveInfo;
    :catch_0
    move-exception v32

    #@288
    .local v32, "e":Landroid/os/RemoteException;
    move-object/from16 v12, v30

    #@28a
    .line 1039
    .end local v30    # "aInfo":Landroid/content/pm/ActivityInfo;
    :goto_8
    const/4 v12, 0x0

    #@28b
    .restart local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    goto/16 :goto_4

    #@28d
    .line 1076
    .end local v7    # "appCallingUid":I
    .end local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v32    # "e":Landroid/os/RemoteException;
    .end local v35    # "newIntent":Landroid/content/Intent;
    .end local v42    # "target":Landroid/content/IIntentSender;
    .end local p1    # "caller":Landroid/app/IApplicationThread;
    .end local p5    # "resolvedType":Ljava/lang/String;
    .restart local v40    # "res":I
    :cond_13
    const/4 v2, 0x2

    #@28e
    move/from16 v0, v40

    #@290
    if-ne v0, v2, :cond_7

    #@292
    .line 1077
    const/4 v2, 0x0

    #@293
    :try_start_a
    move-object/from16 v0, v41

    #@295
    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    #@298
    move-result-object v38

    #@299
    .line 1078
    .local v38, "r":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v38

    #@29b
    iget-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    #@29d
    if-eqz v2, :cond_14

    #@29f
    move-object/from16 v0, v38

    #@2a1
    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    #@2a3
    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    #@2a5
    if-ne v2, v4, :cond_14

    #@2a7
    .line 1079
    const/4 v2, 0x0

    #@2a8
    move-object/from16 v0, p13

    #@2aa
    iput-boolean v2, v0, Landroid/app/IActivityManager$WaitResult;->timeout:Z

    #@2ac
    .line 1080
    new-instance v2, Landroid/content/ComponentName;

    #@2ae
    move-object/from16 v0, v38

    #@2b0
    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@2b2
    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@2b4
    move-object/from16 v0, v38

    #@2b6
    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@2b8
    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@2ba
    invoke-direct {v2, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@2bd
    move-object/from16 v0, p13

    #@2bf
    iput-object v2, v0, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;

    #@2c1
    .line 1081
    const-wide/16 v4, 0x0

    #@2c3
    move-object/from16 v0, p13

    #@2c5
    iput-wide v4, v0, Landroid/app/IActivityManager$WaitResult;->totalTime:J

    #@2c7
    .line 1082
    const-wide/16 v4, 0x0

    #@2c9
    move-object/from16 v0, p13

    #@2cb
    iput-wide v4, v0, Landroid/app/IActivityManager$WaitResult;->thisTime:J
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    #@2cd
    goto/16 :goto_6

    #@2cf
    .line 946
    .end local v38    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v40    # "res":I
    :catchall_0
    move-exception v2

    #@2d0
    .end local v18    # "callingPid":I
    .end local v21    # "realCallingPid":I
    .end local v22    # "realCallingUid":I
    .end local v36    # "origId":J
    .end local v41    # "stack":Lcom/android/server/am/ActivityStack;
    :goto_9
    monitor-exit v43

    #@2d1
    throw v2

    #@2d2
    .line 1084
    .restart local v18    # "callingPid":I
    .restart local v21    # "realCallingPid":I
    .restart local v22    # "realCallingUid":I
    .restart local v36    # "origId":J
    .restart local v38    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v40    # "res":I
    .restart local v41    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_14
    :try_start_b
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@2d5
    move-result-wide v4

    #@2d6
    move-object/from16 v0, p13

    #@2d8
    iput-wide v4, v0, Landroid/app/IActivityManager$WaitResult;->thisTime:J

    #@2da
    .line 1085
    move-object/from16 v0, p0

    #@2dc
    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingActivityVisible:Ljava/util/ArrayList;

    #@2de
    move-object/from16 v0, p13

    #@2e0
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    #@2e3
    .line 1088
    :goto_a
    :try_start_c
    move-object/from16 v0, p0

    #@2e5
    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@2e7
    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->wait()V
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    #@2ea
    .line 1091
    :goto_b
    :try_start_d
    move-object/from16 v0, p13

    #@2ec
    iget-boolean v2, v0, Landroid/app/IActivityManager$WaitResult;->timeout:Z

    #@2ee
    if-nez v2, :cond_7

    #@2f0
    move-object/from16 v0, p13

    #@2f2
    iget-object v2, v0, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    #@2f4
    if-nez v2, :cond_7

    #@2f6
    goto :goto_a

    #@2f7
    .line 946
    .end local v18    # "callingPid":I
    .end local v21    # "realCallingPid":I
    .end local v22    # "realCallingUid":I
    .end local v36    # "origId":J
    .end local v38    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v40    # "res":I
    .end local v41    # "stack":Lcom/android/server/am/ActivityStack;
    .end local p4    # "intent":Landroid/content/Intent;
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v30    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local p1, "caller":Landroid/app/IApplicationThread;
    .local p5, "resolvedType":Ljava/lang/String;
    :catchall_1
    move-exception v2

    #@2f8
    move-object/from16 v12, v30

    #@2fa
    .end local v30    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v12, "aInfo":Landroid/content/pm/ActivityInfo;
    move-object/from16 p4, v3

    #@2fc
    .end local v3    # "intent":Landroid/content/Intent;
    .restart local p4    # "intent":Landroid/content/Intent;
    goto :goto_9

    #@2fd
    .end local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v7    # "appCallingUid":I
    .restart local v18    # "callingPid":I
    .restart local v21    # "realCallingPid":I
    .restart local v22    # "realCallingUid":I
    .restart local v30    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v35    # "newIntent":Landroid/content/Intent;
    .restart local v36    # "origId":J
    .restart local v41    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v42    # "target":Landroid/content/IIntentSender;
    .local p1, "caller":Landroid/app/IApplicationThread;
    .local p5, "resolvedType":Ljava/lang/String;
    :catchall_2
    move-exception v2

    #@2fe
    move-object/from16 v12, v30

    #@300
    .end local v30    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    goto :goto_9

    #@301
    .line 1089
    .end local v7    # "appCallingUid":I
    .end local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v35    # "newIntent":Landroid/content/Intent;
    .end local v42    # "target":Landroid/content/IIntentSender;
    .end local p1    # "caller":Landroid/app/IApplicationThread;
    .end local p5    # "resolvedType":Ljava/lang/String;
    .restart local v38    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v40    # "res":I
    :catch_1
    move-exception v33

    #@302
    .local v33, "e":Ljava/lang/InterruptedException;
    goto :goto_b

    #@303
    .line 1073
    .end local v33    # "e":Ljava/lang/InterruptedException;
    .end local v38    # "r":Lcom/android/server/am/ActivityRecord;
    :catch_2
    move-exception v33

    #@304
    .restart local v33    # "e":Ljava/lang/InterruptedException;
    goto/16 :goto_5

    #@306
    .line 1038
    .end local v33    # "e":Ljava/lang/InterruptedException;
    .end local v40    # "res":I
    .restart local v7    # "appCallingUid":I
    .restart local v35    # "newIntent":Landroid/content/Intent;
    .restart local v39    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v42    # "target":Landroid/content/IIntentSender;
    .restart local p1    # "caller":Landroid/app/IApplicationThread;
    .restart local p5    # "resolvedType":Ljava/lang/String;
    :catch_3
    move-exception v32

    #@307
    .restart local v32    # "e":Landroid/os/RemoteException;
    goto :goto_8

    #@308
    .end local v7    # "appCallingUid":I
    .end local v32    # "e":Landroid/os/RemoteException;
    .end local v35    # "newIntent":Landroid/content/Intent;
    .end local v39    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v42    # "target":Landroid/content/IIntentSender;
    .end local p4    # "intent":Landroid/content/Intent;
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v30    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local p1, "caller":Landroid/app/IApplicationThread;
    .local p5, "resolvedType":Ljava/lang/String;
    :cond_15
    move-object/from16 v12, v30

    #@30a
    .end local v30    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    move-object/from16 p4, v3

    #@30c
    .end local v3    # "intent":Landroid/content/Intent;
    .restart local p4    # "intent":Landroid/content/Intent;
    goto/16 :goto_4
.end method

.method final startActivityUncheckedLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;IZLandroid/os/Bundle;Lcom/android/server/am/TaskRecord;)I
    .locals 43
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "sourceRecord"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p4, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p5, "startFlags"    # I
    .param p6, "doResume"    # Z
    .param p7, "options"    # Landroid/os/Bundle;
    .param p8, "inTask"    # Lcom/android/server/am/TaskRecord;

    #@0
    .prologue
    .line 1831
    move-object/from16 v0, p1

    #@2
    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    #@4
    move-object/from16 v20, v0

    #@6
    .line 1832
    .local v20, "intent":Landroid/content/Intent;
    move-object/from16 v0, p1

    #@8
    iget v15, v0, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    #@a
    .line 1838
    .local v15, "callingUid":I
    if-eqz p8, :cond_0

    #@c
    move-object/from16 v0, p8

    #@e
    iget-boolean v6, v0, Lcom/android/server/am/TaskRecord;->inRecents:Z

    #@10
    if-eqz v6, :cond_a

    #@12
    .line 1843
    .end local p8    # "inTask":Lcom/android/server/am/TaskRecord;
    :cond_0
    :goto_0
    move-object/from16 v0, p1

    #@14
    iget v6, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    #@16
    const/4 v7, 0x1

    #@17
    if-ne v6, v7, :cond_b

    #@19
    const/16 v26, 0x1

    #@1b
    .line 1844
    .local v26, "launchSingleTop":Z
    :goto_1
    move-object/from16 v0, p1

    #@1d
    iget v6, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    #@1f
    const/4 v7, 0x3

    #@20
    if-ne v6, v7, :cond_c

    #@22
    const/16 v24, 0x1

    #@24
    .line 1845
    .local v24, "launchSingleInstance":Z
    :goto_2
    move-object/from16 v0, p1

    #@26
    iget v6, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    #@28
    const/4 v7, 0x2

    #@29
    if-ne v6, v7, :cond_d

    #@2b
    const/16 v25, 0x1

    #@2d
    .line 1847
    .local v25, "launchSingleTask":Z
    :goto_3
    invoke-virtual/range {v20 .. v20}, Landroid/content/Intent;->getFlags()I

    #@30
    move-result v23

    #@31
    .line 1848
    .local v23, "launchFlags":I
    const/high16 v6, 0x80000

    #@33
    and-int v6, v6, v23

    #@35
    if-eqz v6, :cond_e

    #@37
    .line 1849
    if-nez v24, :cond_1

    #@39
    .line 1848
    if-eqz v25, :cond_e

    #@3b
    .line 1851
    :cond_1
    const-string/jumbo v6, "ActivityManager"

    #@3e
    const-string/jumbo v7, "Ignoring FLAG_ACTIVITY_NEW_DOCUMENT, launchMode is \"singleInstance\" or \"singleTask\""

    #@41
    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@44
    .line 1854
    const v6, -0x8080001

    #@47
    .line 1853
    and-int v23, v23, v6

    #@49
    .line 1871
    :goto_4
    :pswitch_0
    move-object/from16 v0, p1

    #@4b
    iget-boolean v6, v0, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    #@4d
    if-eqz v6, :cond_2

    #@4f
    .line 1872
    if-eqz v25, :cond_f

    #@51
    .line 1871
    :cond_2
    const/16 v27, 0x0

    #@53
    .line 1875
    .local v27, "launchTaskBehind":Z
    :goto_5
    move-object/from16 v0, p1

    #@55
    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    #@57
    if-eqz v6, :cond_3

    #@59
    const/high16 v6, 0x10000000

    #@5b
    and-int v6, v6, v23

    #@5d
    if-eqz v6, :cond_3

    #@5f
    .line 1876
    move-object/from16 v0, p1

    #@61
    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    #@63
    iget-object v6, v6, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@65
    iget-object v6, v6, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@67
    if-eqz v6, :cond_3

    #@69
    .line 1882
    const-string/jumbo v6, "ActivityManager"

    #@6c
    const-string/jumbo v7, "Activity is launching as a new task, so cancelling activity result."

    #@6f
    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@72
    .line 1883
    move-object/from16 v0, p1

    #@74
    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    #@76
    iget-object v6, v6, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@78
    iget-object v3, v6, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@7a
    .line 1884
    move-object/from16 v0, p1

    #@7c
    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    #@7e
    move-object/from16 v0, p1

    #@80
    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    #@82
    move-object/from16 v0, p1

    #@84
    iget v7, v0, Lcom/android/server/am/ActivityRecord;->requestCode:I

    #@86
    .line 1883
    const/4 v4, -0x1

    #@87
    .line 1885
    const/4 v8, 0x0

    #@88
    const/4 v9, 0x0

    #@89
    .line 1883
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    #@8c
    .line 1886
    const/4 v6, 0x0

    #@8d
    move-object/from16 v0, p1

    #@8f
    iput-object v6, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    #@91
    .line 1889
    :cond_3
    const/high16 v6, 0x80000

    #@93
    and-int v6, v6, v23

    #@95
    if-eqz v6, :cond_4

    #@97
    move-object/from16 v0, p1

    #@99
    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    #@9b
    if-nez v6, :cond_4

    #@9d
    .line 1890
    const/high16 v6, 0x10000000

    #@9f
    or-int v23, v23, v6

    #@a1
    .line 1895
    :cond_4
    const/high16 v6, 0x10000000

    #@a3
    and-int v6, v6, v23

    #@a5
    if-eqz v6, :cond_6

    #@a7
    .line 1896
    if-nez v27, :cond_5

    #@a9
    .line 1897
    move-object/from16 v0, p1

    #@ab
    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@ad
    iget v6, v6, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    #@af
    const/4 v7, 0x2

    #@b0
    if-ne v6, v7, :cond_6

    #@b2
    .line 1898
    :cond_5
    const/high16 v6, 0x8000000

    #@b4
    or-int v23, v23, v6

    #@b6
    .line 1904
    :cond_6
    const/high16 v6, 0x40000

    #@b8
    and-int v6, v6, v23

    #@ba
    if-nez v6, :cond_11

    #@bc
    const/4 v6, 0x1

    #@bd
    :goto_6
    move-object/from16 v0, p0

    #@bf
    iput-boolean v6, v0, Lcom/android/server/am/ActivityStackSupervisor;->mUserLeaving:Z

    #@c1
    .line 1911
    if-nez p6, :cond_7

    #@c3
    .line 1912
    const/4 v6, 0x1

    #@c4
    move-object/from16 v0, p1

    #@c6
    iput-boolean v6, v0, Lcom/android/server/am/ActivityRecord;->delayedResume:Z

    #@c8
    .line 1916
    :cond_7
    const/high16 v6, 0x1000000

    #@ca
    and-int v6, v6, v23

    #@cc
    if-eqz v6, :cond_12

    #@ce
    move-object/from16 v33, p1

    #@d0
    .line 1922
    :goto_7
    and-int/lit8 v6, p5, 0x1

    #@d2
    if-eqz v6, :cond_9

    #@d4
    .line 1923
    move-object/from16 v16, p2

    #@d6
    .line 1924
    .local v16, "checkedCaller":Lcom/android/server/am/ActivityRecord;
    if-nez v16, :cond_8

    #@d8
    .line 1925
    move-object/from16 v0, p0

    #@da
    iget-object v6, v0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    #@dc
    move-object/from16 v0, v33

    #@de
    invoke-virtual {v6, v0}, Lcom/android/server/am/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    #@e1
    move-result-object v16

    #@e2
    .line 1927
    :cond_8
    move-object/from16 v0, v16

    #@e4
    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    #@e6
    move-object/from16 v0, p1

    #@e8
    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    #@ea
    invoke-virtual {v6, v7}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    #@ed
    move-result v6

    #@ee
    if-nez v6, :cond_9

    #@f0
    .line 1929
    and-int/lit8 p5, p5, -0x2

    #@f2
    .line 1933
    .end local v16    # "checkedCaller":Lcom/android/server/am/ActivityRecord;
    :cond_9
    const/4 v13, 0x0

    #@f3
    .line 1934
    .local v13, "addingToTask":Z
    const/16 v35, 0x0

    #@f5
    .line 1939
    .local v35, "reuseTask":Lcom/android/server/am/TaskRecord;
    if-nez p2, :cond_1c

    #@f7
    if-eqz p8, :cond_1c

    #@f9
    move-object/from16 v0, p8

    #@fb
    iget-object v6, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@fd
    if-eqz v6, :cond_1c

    #@ff
    .line 1940
    invoke-virtual/range {p8 .. p8}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    #@102
    move-result-object v14

    #@103
    .line 1941
    .local v14, "baseIntent":Landroid/content/Intent;
    invoke-virtual/range {p8 .. p8}, Lcom/android/server/am/TaskRecord;->getRootActivity()Lcom/android/server/am/ActivityRecord;

    #@106
    move-result-object v36

    #@107
    .line 1942
    .local v36, "root":Lcom/android/server/am/ActivityRecord;
    if-nez v14, :cond_13

    #@109
    .line 1943
    invoke-static/range {p7 .. p7}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    #@10c
    .line 1944
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@10e
    new-instance v7, Ljava/lang/StringBuilder;

    #@110
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@113
    const-string/jumbo v8, "Launching into task without base intent: "

    #@116
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@119
    move-result-object v7

    #@11a
    move-object/from16 v0, p8

    #@11c
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11f
    move-result-object v7

    #@120
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@123
    move-result-object v7

    #@124
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@127
    throw v6

    #@128
    .line 1839
    .end local v13    # "addingToTask":Z
    .end local v14    # "baseIntent":Landroid/content/Intent;
    .end local v23    # "launchFlags":I
    .end local v24    # "launchSingleInstance":Z
    .end local v25    # "launchSingleTask":Z
    .end local v26    # "launchSingleTop":Z
    .end local v27    # "launchTaskBehind":Z
    .end local v35    # "reuseTask":Lcom/android/server/am/TaskRecord;
    .end local v36    # "root":Lcom/android/server/am/ActivityRecord;
    .restart local p8    # "inTask":Lcom/android/server/am/TaskRecord;
    :cond_a
    const-string/jumbo v6, "ActivityManager"

    #@12b
    new-instance v7, Ljava/lang/StringBuilder;

    #@12d
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@130
    const-string/jumbo v8, "Starting activity in task not in recents: "

    #@133
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@136
    move-result-object v7

    #@137
    move-object/from16 v0, p8

    #@139
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@13c
    move-result-object v7

    #@13d
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@140
    move-result-object v7

    #@141
    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@144
    .line 1840
    const/16 p8, 0x0

    #@146
    .local p8, "inTask":Lcom/android/server/am/TaskRecord;
    goto/16 :goto_0

    #@148
    .line 1843
    .end local p8    # "inTask":Lcom/android/server/am/TaskRecord;
    :cond_b
    const/16 v26, 0x0

    #@14a
    .restart local v26    # "launchSingleTop":Z
    goto/16 :goto_1

    #@14c
    .line 1844
    :cond_c
    const/16 v24, 0x0

    #@14e
    .restart local v24    # "launchSingleInstance":Z
    goto/16 :goto_2

    #@150
    .line 1845
    :cond_d
    const/16 v25, 0x0

    #@152
    .restart local v25    # "launchSingleTask":Z
    goto/16 :goto_3

    #@154
    .line 1856
    .restart local v23    # "launchFlags":I
    :cond_e
    move-object/from16 v0, p1

    #@156
    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@158
    iget v6, v6, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    #@15a
    packed-switch v6, :pswitch_data_0

    #@15d
    goto/16 :goto_4

    #@15f
    .line 1860
    :pswitch_1
    const/high16 v6, 0x80000

    #@161
    or-int v23, v23, v6

    #@163
    .line 1861
    goto/16 :goto_4

    #@165
    .line 1863
    :pswitch_2
    const/high16 v6, 0x80000

    #@167
    or-int v23, v23, v6

    #@169
    .line 1864
    goto/16 :goto_4

    #@16b
    .line 1866
    :pswitch_3
    const v6, -0x8000001

    #@16e
    and-int v23, v23, v6

    #@170
    .line 1867
    goto/16 :goto_4

    #@172
    .line 1872
    :cond_f
    if-nez v24, :cond_2

    #@174
    .line 1873
    const/high16 v6, 0x80000

    #@176
    and-int v6, v6, v23

    #@178
    if-eqz v6, :cond_10

    #@17a
    const/16 v27, 0x1

    #@17c
    .restart local v27    # "launchTaskBehind":Z
    goto/16 :goto_5

    #@17e
    .end local v27    # "launchTaskBehind":Z
    :cond_10
    const/16 v27, 0x0

    #@180
    .restart local v27    # "launchTaskBehind":Z
    goto/16 :goto_5

    #@182
    .line 1904
    :cond_11
    const/4 v6, 0x0

    #@183
    goto/16 :goto_6

    #@185
    .line 1916
    :cond_12
    const/16 v33, 0x0

    #@187
    .local v33, "notTop":Lcom/android/server/am/ActivityRecord;
    goto/16 :goto_7

    #@189
    .line 1950
    .end local v33    # "notTop":Lcom/android/server/am/ActivityRecord;
    .restart local v13    # "addingToTask":Z
    .restart local v14    # "baseIntent":Landroid/content/Intent;
    .restart local v35    # "reuseTask":Lcom/android/server/am/TaskRecord;
    .restart local v36    # "root":Lcom/android/server/am/ActivityRecord;
    :cond_13
    if-nez v24, :cond_14

    #@18b
    if-eqz v25, :cond_16

    #@18d
    .line 1951
    :cond_14
    invoke-virtual {v14}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@190
    move-result-object v6

    #@191
    move-object/from16 v0, p1

    #@193
    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    #@195
    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@198
    move-result-object v7

    #@199
    invoke-virtual {v6, v7}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    #@19c
    move-result v6

    #@19d
    if-nez v6, :cond_15

    #@19f
    .line 1952
    invoke-static/range {p7 .. p7}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    #@1a2
    .line 1953
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@1a4
    new-instance v7, Ljava/lang/StringBuilder;

    #@1a6
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@1a9
    const-string/jumbo v8, "Trying to launch singleInstance/Task "

    #@1ac
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1af
    move-result-object v7

    #@1b0
    move-object/from16 v0, p1

    #@1b2
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1b5
    move-result-object v7

    #@1b6
    .line 1954
    const-string/jumbo v8, " into different task "

    #@1b9
    .line 1953
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1bc
    move-result-object v7

    #@1bd
    move-object/from16 v0, p8

    #@1bf
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1c2
    move-result-object v7

    #@1c3
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c6
    move-result-object v7

    #@1c7
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1ca
    throw v6

    #@1cb
    .line 1956
    :cond_15
    if-eqz v36, :cond_16

    #@1cd
    .line 1957
    invoke-static/range {p7 .. p7}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    #@1d0
    .line 1958
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@1d2
    new-instance v7, Ljava/lang/StringBuilder;

    #@1d4
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@1d7
    const-string/jumbo v8, "Caller with inTask "

    #@1da
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1dd
    move-result-object v7

    #@1de
    move-object/from16 v0, p8

    #@1e0
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e3
    move-result-object v7

    #@1e4
    .line 1959
    const-string/jumbo v8, " has root "

    #@1e7
    .line 1958
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ea
    move-result-object v7

    #@1eb
    move-object/from16 v0, v36

    #@1ed
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1f0
    move-result-object v7

    #@1f1
    .line 1959
    const-string/jumbo v8, " but target is singleInstance/Task"

    #@1f4
    .line 1958
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f7
    move-result-object v7

    #@1f8
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1fb
    move-result-object v7

    #@1fc
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1ff
    throw v6

    #@200
    .line 1965
    :cond_16
    if-nez v36, :cond_1a

    #@202
    .line 1966
    const v18, 0x18082000

    #@205
    .line 1969
    .local v18, "flagsOfInterest":I
    const v6, -0x18082001

    #@208
    and-int v6, v6, v23

    #@20a
    .line 1970
    invoke-virtual {v14}, Landroid/content/Intent;->getFlags()I

    #@20d
    move-result v7

    #@20e
    const v8, 0x18082000

    #@211
    and-int/2addr v7, v8

    #@212
    .line 1969
    or-int v23, v6, v7

    #@214
    .line 1971
    move-object/from16 v0, v20

    #@216
    move/from16 v1, v23

    #@218
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    #@21b
    .line 1972
    move-object/from16 v0, p8

    #@21d
    move-object/from16 v1, p1

    #@21f
    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->setIntent(Lcom/android/server/am/ActivityRecord;)V

    #@222
    .line 1973
    const/4 v13, 0x1

    #@223
    .line 1985
    .end local v18    # "flagsOfInterest":I
    :goto_8
    move-object/from16 v35, p8

    #@225
    .line 1990
    .end local v14    # "baseIntent":Landroid/content/Intent;
    .end local v35    # "reuseTask":Lcom/android/server/am/TaskRecord;
    .end local v36    # "root":Lcom/android/server/am/ActivityRecord;
    :goto_9
    if-nez p8, :cond_17

    #@227
    .line 1991
    if-nez p2, :cond_1d

    #@229
    .line 1994
    const/high16 v6, 0x10000000

    #@22b
    and-int v6, v6, v23

    #@22d
    if-nez v6, :cond_17

    #@22f
    if-nez p8, :cond_17

    #@231
    .line 1995
    const-string/jumbo v6, "ActivityManager"

    #@234
    new-instance v7, Ljava/lang/StringBuilder;

    #@236
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@239
    const-string/jumbo v8, "startActivity called from non-Activity context; forcing Intent.FLAG_ACTIVITY_NEW_TASK for: "

    #@23c
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23f
    move-result-object v7

    #@240
    move-object/from16 v0, v20

    #@242
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@245
    move-result-object v7

    #@246
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@249
    move-result-object v7

    #@24a
    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@24d
    .line 1997
    const/high16 v6, 0x10000000

    #@24f
    or-int v23, v23, v6

    #@251
    .line 2011
    :cond_17
    :goto_a
    const/16 v31, 0x0

    #@253
    .line 2012
    .local v31, "newTaskInfo":Landroid/content/pm/ActivityInfo;
    const/16 v32, 0x0

    #@255
    .line 2014
    .local v32, "newTaskIntent":Landroid/content/Intent;
    if-eqz p2, :cond_21

    #@257
    .line 2015
    move-object/from16 v0, p2

    #@259
    iget-boolean v6, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    #@25b
    if-eqz v6, :cond_20

    #@25d
    .line 2021
    const/high16 v6, 0x10000000

    #@25f
    and-int v6, v6, v23

    #@261
    if-nez v6, :cond_18

    #@263
    .line 2022
    const-string/jumbo v6, "ActivityManager"

    #@266
    new-instance v7, Ljava/lang/StringBuilder;

    #@268
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@26b
    const-string/jumbo v8, "startActivity called from finishing "

    #@26e
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@271
    move-result-object v7

    #@272
    move-object/from16 v0, p2

    #@274
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@277
    move-result-object v7

    #@278
    .line 2023
    const-string/jumbo v8, "; forcing "

    #@27b
    .line 2022
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27e
    move-result-object v7

    #@27f
    .line 2023
    const-string/jumbo v8, "Intent.FLAG_ACTIVITY_NEW_TASK for: "

    #@282
    .line 2022
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@285
    move-result-object v7

    #@286
    move-object/from16 v0, v20

    #@288
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@28b
    move-result-object v7

    #@28c
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28f
    move-result-object v7

    #@290
    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@293
    .line 2024
    const/high16 v6, 0x10000000

    #@295
    or-int v23, v23, v6

    #@297
    .line 2025
    move-object/from16 v0, p2

    #@299
    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@29b
    move-object/from16 v31, v0

    #@29d
    .line 2026
    .local v31, "newTaskInfo":Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, p2

    #@29f
    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@2a1
    iget-object v0, v6, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    #@2a3
    move-object/from16 v32, v0

    #@2a5
    .line 2028
    .end local v31    # "newTaskInfo":Landroid/content/pm/ActivityInfo;
    .end local v32    # "newTaskIntent":Landroid/content/Intent;
    :cond_18
    const/16 p2, 0x0

    #@2a7
    .line 2029
    .local p2, "sourceRecord":Lcom/android/server/am/ActivityRecord;
    const/16 v37, 0x0

    #@2a9
    .line 2037
    .end local p2    # "sourceRecord":Lcom/android/server/am/ActivityRecord;
    :goto_b
    const/16 v28, 0x0

    #@2ab
    .line 2040
    .local v28, "movedHome":Z
    move-object/from16 v0, v20

    #@2ad
    move/from16 v1, v23

    #@2af
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    #@2b2
    .line 2041
    const/high16 v6, 0x10000

    #@2b4
    and-int v6, v6, v23

    #@2b6
    if-eqz v6, :cond_22

    #@2b8
    const/4 v5, 0x1

    #@2b9
    .line 2048
    .local v5, "noAnimation":Z
    :goto_c
    const/high16 v6, 0x10000000

    #@2bb
    and-int v6, v6, v23

    #@2bd
    if-eqz v6, :cond_23

    #@2bf
    .line 2049
    const/high16 v6, 0x8000000

    #@2c1
    and-int v6, v6, v23

    #@2c3
    if-nez v6, :cond_23

    #@2c5
    .line 2055
    :cond_19
    if-nez p8, :cond_24

    #@2c7
    move-object/from16 v0, p1

    #@2c9
    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    #@2cb
    if-nez v6, :cond_24

    #@2cd
    .line 2060
    if-nez v24, :cond_27

    #@2cf
    .line 2061
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActivityStackSupervisor;->findTaskLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    #@2d2
    move-result-object v21

    #@2d3
    .line 2062
    .local v21, "intentActivity":Lcom/android/server/am/ActivityRecord;
    :goto_d
    if-eqz v21, :cond_24

    #@2d5
    .line 2066
    move-object/from16 v0, v21

    #@2d7
    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@2d9
    .line 2067
    const v6, 0x10008000

    #@2dc
    and-int v6, v6, v23

    #@2de
    .line 2068
    const v8, 0x10008000

    #@2e1
    .line 2067
    if-ne v6, v8, :cond_28

    #@2e3
    const/4 v6, 0x1

    #@2e4
    .line 2066
    :goto_e
    move-object/from16 v0, p0

    #@2e6
    invoke-virtual {v0, v7, v6}, Lcom/android/server/am/ActivityStackSupervisor;->isLockTaskModeViolation(Lcom/android/server/am/TaskRecord;Z)Z

    #@2e9
    move-result v6

    #@2ea
    if-eqz v6, :cond_29

    #@2ec
    .line 2069
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->showLockTaskToast()V

    #@2ef
    .line 2070
    const-string/jumbo v6, "ActivityManager"

    #@2f2
    const-string/jumbo v7, "startActivityUnchecked: Attempt to violate Lock Task Mode"

    #@2f5
    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2f8
    .line 2071
    const/4 v6, 0x5

    #@2f9
    return v6

    #@2fa
    .line 1978
    .end local v5    # "noAnimation":Z
    .end local v21    # "intentActivity":Lcom/android/server/am/ActivityRecord;
    .end local v28    # "movedHome":Z
    .restart local v14    # "baseIntent":Landroid/content/Intent;
    .restart local v35    # "reuseTask":Lcom/android/server/am/TaskRecord;
    .restart local v36    # "root":Lcom/android/server/am/ActivityRecord;
    .local p2, "sourceRecord":Lcom/android/server/am/ActivityRecord;
    :cond_1a
    const/high16 v6, 0x10000000

    #@2fc
    and-int v6, v6, v23

    #@2fe
    if-eqz v6, :cond_1b

    #@300
    .line 1979
    const/4 v13, 0x0

    #@301
    goto/16 :goto_8

    #@303
    .line 1982
    :cond_1b
    const/4 v13, 0x1

    #@304
    goto/16 :goto_8

    #@306
    .line 1987
    .end local v14    # "baseIntent":Landroid/content/Intent;
    .end local v36    # "root":Lcom/android/server/am/ActivityRecord;
    :cond_1c
    const/16 p8, 0x0

    #@308
    .restart local p8    # "inTask":Lcom/android/server/am/TaskRecord;
    goto/16 :goto_9

    #@30a
    .line 1999
    .end local v35    # "reuseTask":Lcom/android/server/am/TaskRecord;
    .end local p8    # "inTask":Lcom/android/server/am/TaskRecord;
    :cond_1d
    move-object/from16 v0, p2

    #@30c
    iget v6, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    #@30e
    const/4 v7, 0x3

    #@30f
    if-ne v6, v7, :cond_1e

    #@311
    .line 2003
    const/high16 v6, 0x10000000

    #@313
    or-int v23, v23, v6

    #@315
    goto/16 :goto_a

    #@317
    .line 2004
    :cond_1e
    if-nez v24, :cond_1f

    #@319
    if-eqz v25, :cond_17

    #@31b
    .line 2007
    :cond_1f
    const/high16 v6, 0x10000000

    #@31d
    or-int v23, v23, v6

    #@31f
    goto/16 :goto_a

    #@321
    .line 2031
    .local v31, "newTaskInfo":Landroid/content/pm/ActivityInfo;
    .restart local v32    # "newTaskIntent":Landroid/content/Intent;
    :cond_20
    move-object/from16 v0, p2

    #@323
    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@325
    iget-object v0, v6, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@327
    move-object/from16 v37, v0

    #@329
    .local v37, "sourceStack":Lcom/android/server/am/ActivityStack;
    goto :goto_b

    #@32a
    .line 2034
    .end local v37    # "sourceStack":Lcom/android/server/am/ActivityStack;
    :cond_21
    const/16 v37, 0x0

    #@32c
    .local v37, "sourceStack":Lcom/android/server/am/ActivityStack;
    goto/16 :goto_b

    #@32e
    .line 2041
    .end local v31    # "newTaskInfo":Landroid/content/pm/ActivityInfo;
    .end local v32    # "newTaskIntent":Landroid/content/Intent;
    .end local v37    # "sourceStack":Lcom/android/server/am/ActivityStack;
    .end local p2    # "sourceRecord":Lcom/android/server/am/ActivityRecord;
    .restart local v28    # "movedHome":Z
    :cond_22
    const/4 v5, 0x0

    #@32f
    .restart local v5    # "noAnimation":Z
    goto :goto_c

    #@330
    .line 2048
    :cond_23
    if-nez v24, :cond_19

    #@332
    if-nez v25, :cond_19

    #@334
    .line 2258
    .end local p7    # "options":Landroid/os/Bundle;
    :cond_24
    move-object/from16 v0, p1

    #@336
    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    #@338
    if-eqz v6, :cond_46

    #@33a
    .line 2262
    move-object/from16 v0, p0

    #@33c
    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    #@33e
    move-object/from16 v41, v0

    #@340
    .line 2263
    .local v41, "topStack":Lcom/android/server/am/ActivityStack;
    move-object/from16 v0, v41

    #@342
    move-object/from16 v1, v33

    #@344
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    #@347
    move-result-object v40

    #@348
    .line 2264
    .local v40, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v40, :cond_48

    #@34a
    move-object/from16 v0, p1

    #@34c
    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    #@34e
    if-nez v6, :cond_48

    #@350
    .line 2265
    move-object/from16 v0, v40

    #@352
    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    #@354
    move-object/from16 v0, p1

    #@356
    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    #@358
    invoke-virtual {v6, v7}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    #@35b
    move-result v6

    #@35c
    if-eqz v6, :cond_48

    #@35e
    move-object/from16 v0, v40

    #@360
    iget v6, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    #@362
    move-object/from16 v0, p1

    #@364
    iget v7, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    #@366
    if-ne v6, v7, :cond_48

    #@368
    .line 2266
    move-object/from16 v0, v40

    #@36a
    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@36c
    if-eqz v6, :cond_48

    #@36e
    move-object/from16 v0, v40

    #@370
    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@372
    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@374
    if-eqz v6, :cond_48

    #@376
    .line 2267
    const/high16 v6, 0x20000000

    #@378
    and-int v6, v6, v23

    #@37a
    if-nez v6, :cond_25

    #@37c
    if-nez v26, :cond_25

    #@37e
    if-eqz v25, :cond_48

    #@380
    .line 2270
    :cond_25
    move-object/from16 v0, v40

    #@382
    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@384
    .line 2269
    const/16 v7, 0x7533

    #@386
    move-object/from16 v0, v40

    #@388
    invoke-static {v7, v0, v6}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    #@38b
    .line 2273
    const/4 v6, 0x0

    #@38c
    move-object/from16 v0, v41

    #@38e
    iput-object v6, v0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    #@390
    .line 2274
    if-eqz p6, :cond_26

    #@392
    .line 2275
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked()Z

    #@395
    .line 2277
    :cond_26
    invoke-static/range {p7 .. p7}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    #@398
    .line 2278
    and-int/lit8 v6, p5, 0x1

    #@39a
    if-eqz v6, :cond_45

    #@39c
    .line 2282
    const/4 v6, 0x1

    #@39d
    return v6

    #@39e
    .line 2061
    .end local v40    # "top":Lcom/android/server/am/ActivityRecord;
    .end local v41    # "topStack":Lcom/android/server/am/ActivityStack;
    .restart local p7    # "options":Landroid/os/Bundle;
    :cond_27
    move-object/from16 v0, p1

    #@3a0
    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@3a2
    move-object/from16 v0, p0

    #@3a4
    move-object/from16 v1, v20

    #@3a6
    invoke-virtual {v0, v1, v6}, Lcom/android/server/am/ActivityStackSupervisor;->findActivityLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Lcom/android/server/am/ActivityRecord;

    #@3a9
    move-result-object v21

    #@3aa
    .restart local v21    # "intentActivity":Lcom/android/server/am/ActivityRecord;
    goto/16 :goto_d

    #@3ac
    .line 2067
    :cond_28
    const/4 v6, 0x0

    #@3ad
    goto/16 :goto_e

    #@3af
    .line 2073
    :cond_29
    move-object/from16 v0, p1

    #@3b1
    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@3b3
    if-nez v6, :cond_2a

    #@3b5
    .line 2074
    move-object/from16 v0, v21

    #@3b7
    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@3b9
    move-object/from16 v0, p1

    #@3bb
    iput-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@3bd
    .line 2076
    :cond_2a
    move-object/from16 v0, v21

    #@3bf
    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@3c1
    iget-object v6, v6, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    #@3c3
    if-nez v6, :cond_2b

    #@3c5
    .line 2081
    move-object/from16 v0, v21

    #@3c7
    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@3c9
    move-object/from16 v0, p1

    #@3cb
    invoke-virtual {v6, v0}, Lcom/android/server/am/TaskRecord;->setIntent(Lcom/android/server/am/ActivityRecord;)V

    #@3ce
    .line 2083
    :cond_2b
    move-object/from16 v0, v21

    #@3d0
    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@3d2
    iget-object v3, v6, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@3d4
    .line 2084
    .local v3, "targetStack":Lcom/android/server/am/ActivityStack;
    const/4 v6, 0x0

    #@3d5
    iput-object v6, v3, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    #@3d7
    .line 2091
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    #@3da
    move-result-object v19

    #@3db
    .line 2092
    .local v19, "focusStack":Lcom/android/server/am/ActivityStack;
    if-nez v19, :cond_34

    #@3dd
    .line 2093
    const/16 v17, 0x0

    #@3df
    .line 2094
    :goto_f
    const/16 v29, 0x0

    #@3e1
    .line 2095
    .local v29, "movedToFront":Z
    if-eqz v17, :cond_30

    #@3e3
    move-object/from16 v0, v17

    #@3e5
    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@3e7
    move-object/from16 v0, v21

    #@3e9
    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@3eb
    if-ne v6, v7, :cond_2c

    #@3ed
    .line 2096
    move-object/from16 v0, v17

    #@3ef
    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@3f1
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    #@3f4
    move-result-object v7

    #@3f5
    if-eq v6, v7, :cond_30

    #@3f7
    .line 2097
    :cond_2c
    move-object/from16 v0, p1

    #@3f9
    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    #@3fb
    const/high16 v7, 0x400000

    #@3fd
    invoke-virtual {v6, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@400
    .line 2098
    if-eqz p2, :cond_2d

    #@402
    invoke-virtual/range {v37 .. v37}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    #@405
    move-result-object v6

    #@406
    if-eqz v6, :cond_30

    #@408
    .line 2099
    invoke-virtual/range {v37 .. v37}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    #@40b
    move-result-object v6

    #@40c
    iget-object v6, v6, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@40e
    move-object/from16 v0, p2

    #@410
    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@412
    if-ne v6, v7, :cond_30

    #@414
    .line 2101
    :cond_2d
    if-eqz v27, :cond_2e

    #@416
    if-eqz p2, :cond_2e

    #@418
    .line 2102
    move-object/from16 v0, p2

    #@41a
    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@41c
    move-object/from16 v0, v21

    #@41e
    invoke-virtual {v0, v6}, Lcom/android/server/am/ActivityRecord;->setTaskToAffiliateWith(Lcom/android/server/am/TaskRecord;)V

    #@421
    .line 2104
    :cond_2e
    const/16 v28, 0x1

    #@423
    .line 2105
    move-object/from16 v0, v21

    #@425
    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@427
    .line 2106
    move-object/from16 v0, p1

    #@429
    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    #@42b
    const-string/jumbo v8, "bringingFoundTaskToFront"

    #@42e
    move-object/from16 v6, p7

    #@430
    .line 2105
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;ZLandroid/os/Bundle;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V

    #@433
    .line 2107
    const/16 v29, 0x1

    #@435
    .line 2109
    const v6, 0x10004000

    #@438
    .line 2108
    and-int v6, v6, v23

    #@43a
    .line 2110
    const v7, 0x10004000

    #@43d
    .line 2108
    if-ne v6, v7, :cond_2f

    #@43f
    .line 2112
    move-object/from16 v0, v21

    #@441
    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@443
    const/4 v7, 0x1

    #@444
    invoke-virtual {v6, v7}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    #@447
    .line 2114
    :cond_2f
    const/16 p7, 0x0

    #@449
    .line 2117
    .end local p7    # "options":Landroid/os/Bundle;
    :cond_30
    if-nez v29, :cond_31

    #@44b
    .line 2120
    const-string/jumbo v6, "intentActivityFound"

    #@44e
    invoke-virtual {v3, v6}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    #@451
    .line 2125
    :cond_31
    const/high16 v6, 0x200000

    #@453
    and-int v6, v6, v23

    #@455
    if-eqz v6, :cond_32

    #@457
    .line 2126
    move-object/from16 v0, v21

    #@459
    move-object/from16 v1, p1

    #@45b
    invoke-virtual {v3, v0, v1}, Lcom/android/server/am/ActivityStack;->resetTaskIfNeededLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    #@45e
    move-result-object v21

    #@45f
    .line 2128
    :cond_32
    and-int/lit8 v6, p5, 0x1

    #@461
    if-eqz v6, :cond_36

    #@463
    .line 2133
    if-eqz p6, :cond_35

    #@465
    .line 2134
    const/4 v6, 0x0

    #@466
    move-object/from16 v0, p0

    #@468
    move-object/from16 v1, p7

    #@46a
    invoke-virtual {v0, v3, v6, v1}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z

    #@46d
    .line 2138
    if-nez v29, :cond_33

    #@46f
    .line 2139
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->notifyActivityDrawnForKeyguard()V

    #@472
    .line 2144
    :cond_33
    :goto_10
    const/4 v6, 0x1

    #@473
    return v6

    #@474
    .line 2093
    .end local v29    # "movedToFront":Z
    .restart local p7    # "options":Landroid/os/Bundle;
    :cond_34
    move-object/from16 v0, v19

    #@476
    move-object/from16 v1, v33

    #@478
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    #@47b
    move-result-object v17

    #@47c
    .local v17, "curTop":Lcom/android/server/am/ActivityRecord;
    goto/16 :goto_f

    #@47e
    .line 2142
    .end local v17    # "curTop":Lcom/android/server/am/ActivityRecord;
    .end local p7    # "options":Landroid/os/Bundle;
    .restart local v29    # "movedToFront":Z
    :cond_35
    invoke-static/range {p7 .. p7}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    #@481
    goto :goto_10

    #@482
    .line 2146
    :cond_36
    const v6, 0x10008000

    #@485
    and-int v6, v6, v23

    #@487
    .line 2147
    const v7, 0x10008000

    #@48a
    .line 2146
    if-ne v6, v7, :cond_39

    #@48c
    .line 2151
    move-object/from16 v0, v21

    #@48e
    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@490
    move-object/from16 v35, v0

    #@492
    .line 2152
    .local v35, "reuseTask":Lcom/android/server/am/TaskRecord;
    invoke-virtual/range {v35 .. v35}, Lcom/android/server/am/TaskRecord;->performClearTaskLocked()V

    #@495
    .line 2153
    move-object/from16 v0, v35

    #@497
    move-object/from16 v1, p1

    #@499
    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->setIntent(Lcom/android/server/am/ActivityRecord;)V

    #@49c
    .line 2232
    .end local v35    # "reuseTask":Lcom/android/server/am/TaskRecord;
    :cond_37
    :goto_11
    if-nez v13, :cond_24

    #@49e
    if-nez v35, :cond_24

    #@4a0
    .line 2236
    if-eqz p6, :cond_44

    #@4a2
    .line 2237
    const/4 v6, 0x0

    #@4a3
    move-object/from16 v0, p7

    #@4a5
    invoke-virtual {v3, v6, v0}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z

    #@4a8
    .line 2238
    if-nez v29, :cond_38

    #@4aa
    .line 2241
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->notifyActivityDrawnForKeyguard()V

    #@4ad
    .line 2246
    :cond_38
    :goto_12
    const/4 v6, 0x2

    #@4ae
    return v6

    #@4af
    .line 2154
    :cond_39
    const/high16 v6, 0x4000000

    #@4b1
    and-int v6, v6, v23

    #@4b3
    if-nez v6, :cond_3a

    #@4b5
    if-nez v24, :cond_3a

    #@4b7
    if-eqz v25, :cond_3e

    #@4b9
    .line 2161
    :cond_3a
    move-object/from16 v0, v21

    #@4bb
    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@4bd
    move-object/from16 v0, p1

    #@4bf
    move/from16 v1, v23

    #@4c1
    invoke-virtual {v6, v0, v1}, Lcom/android/server/am/TaskRecord;->performClearTaskLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;

    #@4c4
    move-result-object v40

    #@4c5
    .line 2162
    .restart local v40    # "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v40, :cond_3c

    #@4c7
    .line 2163
    move-object/from16 v0, v40

    #@4c9
    iget-boolean v6, v0, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    #@4cb
    if-eqz v6, :cond_3b

    #@4cd
    .line 2168
    move-object/from16 v0, v40

    #@4cf
    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@4d1
    move-object/from16 v0, p1

    #@4d3
    invoke-virtual {v6, v0}, Lcom/android/server/am/TaskRecord;->setIntent(Lcom/android/server/am/ActivityRecord;)V

    #@4d6
    .line 2171
    :cond_3b
    move-object/from16 v0, v40

    #@4d8
    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@4da
    .line 2170
    const/16 v7, 0x7533

    #@4dc
    move-object/from16 v0, p1

    #@4de
    invoke-static {v7, v0, v6}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    #@4e1
    .line 2172
    move-object/from16 v0, p1

    #@4e3
    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    #@4e5
    move-object/from16 v0, p1

    #@4e7
    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    #@4e9
    move-object/from16 v0, v40

    #@4eb
    invoke-virtual {v0, v15, v6, v7}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;Ljava/lang/String;)V

    #@4ee
    goto :goto_11

    #@4ef
    .line 2177
    :cond_3c
    const/4 v13, 0x1

    #@4f0
    .line 2180
    move-object/from16 p2, v21

    #@4f2
    .line 2181
    .restart local p2    # "sourceRecord":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p2

    #@4f4
    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@4f6
    move-object/from16 v38, v0

    #@4f8
    .line 2182
    .local v38, "task":Lcom/android/server/am/TaskRecord;
    if-eqz v38, :cond_37

    #@4fa
    move-object/from16 v0, v38

    #@4fc
    iget-object v6, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@4fe
    if-nez v6, :cond_37

    #@500
    .line 2185
    const/4 v6, 0x0

    #@501
    move-object/from16 v0, p0

    #@503
    move-object/from16 v1, p2

    #@505
    invoke-virtual {v0, v1, v6}, Lcom/android/server/am/ActivityStackSupervisor;->computeStackFocus(Lcom/android/server/am/ActivityRecord;Z)Lcom/android/server/am/ActivityStack;

    #@508
    move-result-object v3

    #@509
    .line 2187
    if-eqz v27, :cond_3d

    #@50b
    const/4 v6, 0x0

    #@50c
    :goto_13
    const/4 v7, 0x0

    #@50d
    .line 2186
    move-object/from16 v0, v38

    #@50f
    invoke-virtual {v3, v0, v6, v7}, Lcom/android/server/am/ActivityStack;->addTask(Lcom/android/server/am/TaskRecord;ZZ)V

    #@512
    goto :goto_11

    #@513
    .line 2187
    :cond_3d
    const/4 v6, 0x1

    #@514
    goto :goto_13

    #@515
    .line 2191
    .end local v38    # "task":Lcom/android/server/am/TaskRecord;
    .end local v40    # "top":Lcom/android/server/am/ActivityRecord;
    .end local p2    # "sourceRecord":Lcom/android/server/am/ActivityRecord;
    :cond_3e
    move-object/from16 v0, p1

    #@517
    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    #@519
    move-object/from16 v0, v21

    #@51b
    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@51d
    iget-object v7, v7, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    #@51f
    invoke-virtual {v6, v7}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    #@522
    move-result v6

    #@523
    if-eqz v6, :cond_42

    #@525
    .line 2198
    const/high16 v6, 0x20000000

    #@527
    and-int v6, v6, v23

    #@529
    if-nez v6, :cond_3f

    #@52b
    if-eqz v26, :cond_41

    #@52d
    .line 2199
    :cond_3f
    move-object/from16 v0, v21

    #@52f
    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    #@531
    move-object/from16 v0, p1

    #@533
    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    #@535
    invoke-virtual {v6, v7}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    #@538
    move-result v6

    #@539
    .line 2198
    if-eqz v6, :cond_41

    #@53b
    .line 2201
    move-object/from16 v0, v21

    #@53d
    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@53f
    .line 2200
    const/16 v7, 0x7533

    #@541
    move-object/from16 v0, p1

    #@543
    invoke-static {v7, v0, v6}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    #@546
    .line 2202
    move-object/from16 v0, v21

    #@548
    iget-boolean v6, v0, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    #@54a
    if-eqz v6, :cond_40

    #@54c
    .line 2203
    move-object/from16 v0, v21

    #@54e
    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@550
    move-object/from16 v0, p1

    #@552
    invoke-virtual {v6, v0}, Lcom/android/server/am/TaskRecord;->setIntent(Lcom/android/server/am/ActivityRecord;)V

    #@555
    .line 2205
    :cond_40
    move-object/from16 v0, p1

    #@557
    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    #@559
    .line 2206
    move-object/from16 v0, p1

    #@55b
    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    #@55d
    .line 2205
    move-object/from16 v0, v21

    #@55f
    invoke-virtual {v0, v15, v6, v7}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;Ljava/lang/String;)V

    #@562
    goto/16 :goto_11

    #@564
    .line 2207
    :cond_41
    move-object/from16 v0, p1

    #@566
    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    #@568
    move-object/from16 v0, v21

    #@56a
    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@56c
    iget-object v7, v7, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    #@56e
    invoke-virtual {v6, v7}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    #@571
    move-result v6

    #@572
    if-nez v6, :cond_37

    #@574
    .line 2211
    const/4 v13, 0x1

    #@575
    .line 2212
    move-object/from16 p2, v21

    #@577
    .restart local p2    # "sourceRecord":Lcom/android/server/am/ActivityRecord;
    goto/16 :goto_11

    #@579
    .line 2214
    .end local p2    # "sourceRecord":Lcom/android/server/am/ActivityRecord;
    :cond_42
    const/high16 v6, 0x200000

    #@57b
    and-int v6, v6, v23

    #@57d
    if-nez v6, :cond_43

    #@57f
    .line 2220
    const/4 v13, 0x1

    #@580
    .line 2221
    move-object/from16 p2, v21

    #@582
    .restart local p2    # "sourceRecord":Lcom/android/server/am/ActivityRecord;
    goto/16 :goto_11

    #@584
    .line 2222
    .end local p2    # "sourceRecord":Lcom/android/server/am/ActivityRecord;
    :cond_43
    move-object/from16 v0, v21

    #@586
    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@588
    iget-boolean v6, v6, Lcom/android/server/am/TaskRecord;->rootWasReset:Z

    #@58a
    if-nez v6, :cond_37

    #@58c
    .line 2230
    move-object/from16 v0, v21

    #@58e
    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@590
    move-object/from16 v0, p1

    #@592
    invoke-virtual {v6, v0}, Lcom/android/server/am/TaskRecord;->setIntent(Lcom/android/server/am/ActivityRecord;)V

    #@595
    goto/16 :goto_11

    #@597
    .line 2244
    :cond_44
    invoke-static/range {p7 .. p7}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    #@59a
    goto/16 :goto_12

    #@59c
    .line 2284
    .end local v3    # "targetStack":Lcom/android/server/am/ActivityStack;
    .end local v19    # "focusStack":Lcom/android/server/am/ActivityStack;
    .end local v21    # "intentActivity":Lcom/android/server/am/ActivityRecord;
    .end local v29    # "movedToFront":Z
    .restart local v40    # "top":Lcom/android/server/am/ActivityRecord;
    .restart local v41    # "topStack":Lcom/android/server/am/ActivityStack;
    :cond_45
    move-object/from16 v0, p1

    #@59e
    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    #@5a0
    move-object/from16 v0, p1

    #@5a2
    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    #@5a4
    move-object/from16 v0, v40

    #@5a6
    invoke-virtual {v0, v15, v6, v7}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;Ljava/lang/String;)V

    #@5a9
    .line 2285
    const/4 v6, 0x3

    #@5aa
    return v6

    #@5ab
    .line 2292
    .end local v40    # "top":Lcom/android/server/am/ActivityRecord;
    .end local v41    # "topStack":Lcom/android/server/am/ActivityStack;
    :cond_46
    move-object/from16 v0, p1

    #@5ad
    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    #@5af
    if-eqz v6, :cond_47

    #@5b1
    move-object/from16 v0, p1

    #@5b3
    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    #@5b5
    iget-object v6, v6, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@5b7
    iget-object v6, v6, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@5b9
    if-eqz v6, :cond_47

    #@5bb
    .line 2293
    move-object/from16 v0, p1

    #@5bd
    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    #@5bf
    iget-object v6, v6, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@5c1
    iget-object v6, v6, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@5c3
    move-object/from16 v0, p1

    #@5c5
    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    #@5c7
    move-object/from16 v0, p1

    #@5c9
    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    #@5cb
    .line 2294
    move-object/from16 v0, p1

    #@5cd
    iget v10, v0, Lcom/android/server/am/ActivityRecord;->requestCode:I

    #@5cf
    .line 2293
    const/4 v7, -0x1

    #@5d0
    .line 2294
    const/4 v11, 0x0

    #@5d1
    const/4 v12, 0x0

    #@5d2
    .line 2293
    invoke-virtual/range {v6 .. v12}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    #@5d5
    .line 2296
    :cond_47
    invoke-static/range {p7 .. p7}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    #@5d8
    .line 2297
    const/4 v6, -0x2

    #@5d9
    return v6

    #@5da
    .line 2300
    .restart local v40    # "top":Lcom/android/server/am/ActivityRecord;
    .restart local v41    # "topStack":Lcom/android/server/am/ActivityStack;
    :cond_48
    const/16 v30, 0x0

    #@5dc
    .line 2301
    .local v30, "newTask":Z
    const/16 v22, 0x0

    #@5de
    .line 2303
    .local v22, "keepCurTransition":Z
    if-eqz v27, :cond_4a

    #@5e0
    if-eqz p2, :cond_4a

    #@5e2
    .line 2304
    move-object/from16 v0, p2

    #@5e4
    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@5e6
    move-object/from16 v39, v0

    #@5e8
    .line 2307
    :goto_14
    move-object/from16 v0, p1

    #@5ea
    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    #@5ec
    if-nez v6, :cond_49

    #@5ee
    if-nez p8, :cond_49

    #@5f0
    if-eqz v13, :cond_4b

    #@5f2
    .line 2337
    :cond_49
    if-eqz p2, :cond_5b

    #@5f4
    .line 2338
    move-object/from16 v0, p2

    #@5f6
    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@5f8
    .line 2339
    .local v4, "sourceTask":Lcom/android/server/am/TaskRecord;
    move-object/from16 v0, p0

    #@5fa
    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityStackSupervisor;->isLockTaskModeViolation(Lcom/android/server/am/TaskRecord;)Z

    #@5fd
    move-result v6

    #@5fe
    if-eqz v6, :cond_55

    #@600
    .line 2340
    const-string/jumbo v6, "ActivityManager"

    #@603
    new-instance v7, Ljava/lang/StringBuilder;

    #@605
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@608
    const-string/jumbo v8, "Attempted Lock Task Mode violation r="

    #@60b
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60e
    move-result-object v7

    #@60f
    move-object/from16 v0, p1

    #@611
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@614
    move-result-object v7

    #@615
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@618
    move-result-object v7

    #@619
    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@61c
    .line 2341
    const/4 v6, 0x5

    #@61d
    return v6

    #@61e
    .line 2304
    .end local v4    # "sourceTask":Lcom/android/server/am/TaskRecord;
    :cond_4a
    const/16 v39, 0x0

    #@620
    .local v39, "taskToAffiliate":Lcom/android/server/am/TaskRecord;
    goto :goto_14

    #@621
    .line 2308
    .end local v39    # "taskToAffiliate":Lcom/android/server/am/TaskRecord;
    :cond_4b
    const/high16 v6, 0x10000000

    #@623
    and-int v6, v6, v23

    #@625
    if-eqz v6, :cond_49

    #@627
    .line 2309
    const/16 v30, 0x1

    #@629
    .line 2310
    move-object/from16 v0, p0

    #@62b
    move-object/from16 v1, p1

    #@62d
    move/from16 v2, v30

    #@62f
    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->computeStackFocus(Lcom/android/server/am/ActivityRecord;Z)Lcom/android/server/am/ActivityStack;

    #@632
    move-result-object v3

    #@633
    .line 2311
    .restart local v3    # "targetStack":Lcom/android/server/am/ActivityStack;
    const-string/jumbo v6, "startingNewTask"

    #@636
    invoke-virtual {v3, v6}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    #@639
    .line 2313
    if-nez v35, :cond_4f

    #@63b
    .line 2314
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->getNextTaskId()I

    #@63e
    move-result v7

    #@63f
    .line 2315
    if-eqz v31, :cond_4c

    #@641
    move-object/from16 v8, v31

    #@643
    .line 2316
    :goto_15
    if-eqz v32, :cond_4d

    #@645
    move-object/from16 v9, v32

    #@647
    .line 2317
    :goto_16
    if-eqz v27, :cond_4e

    #@649
    const/4 v12, 0x0

    #@64a
    :goto_17
    move-object v6, v3

    #@64b
    move-object/from16 v10, p3

    #@64d
    move-object/from16 v11, p4

    #@64f
    .line 2314
    invoke-virtual/range {v6 .. v12}, Lcom/android/server/am/ActivityStack;->createTaskRecord(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Z)Lcom/android/server/am/TaskRecord;

    #@652
    move-result-object v6

    #@653
    move-object/from16 v0, p1

    #@655
    move-object/from16 v1, v39

    #@657
    invoke-virtual {v0, v6, v1}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)V

    #@65a
    .line 2324
    :goto_18
    move-object/from16 v0, p1

    #@65c
    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@65e
    move-object/from16 v0, p0

    #@660
    invoke-virtual {v0, v6}, Lcom/android/server/am/ActivityStackSupervisor;->isLockTaskModeViolation(Lcom/android/server/am/TaskRecord;)Z

    #@663
    move-result v6

    #@664
    if-eqz v6, :cond_50

    #@666
    .line 2325
    const-string/jumbo v6, "ActivityManager"

    #@669
    new-instance v7, Ljava/lang/StringBuilder;

    #@66b
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@66e
    const-string/jumbo v8, "Attempted Lock Task Mode violation r="

    #@671
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@674
    move-result-object v7

    #@675
    move-object/from16 v0, p1

    #@677
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@67a
    move-result-object v7

    #@67b
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@67e
    move-result-object v7

    #@67f
    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@682
    .line 2326
    const/4 v6, 0x5

    #@683
    return v6

    #@684
    .line 2315
    :cond_4c
    move-object/from16 v0, p1

    #@686
    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@688
    goto :goto_15

    #@689
    :cond_4d
    move-object/from16 v9, v20

    #@68b
    .line 2316
    goto :goto_16

    #@68c
    .line 2317
    :cond_4e
    const/4 v12, 0x1

    #@68d
    goto :goto_17

    #@68e
    .line 2322
    :cond_4f
    move-object/from16 v0, p1

    #@690
    move-object/from16 v1, v35

    #@692
    move-object/from16 v2, v39

    #@694
    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)V

    #@697
    goto :goto_18

    #@698
    .line 2328
    :cond_50
    if-nez v28, :cond_51

    #@69a
    .line 2330
    const v6, 0x10004000

    #@69d
    .line 2329
    and-int v6, v6, v23

    #@69f
    .line 2331
    const v7, 0x10004000

    #@6a2
    .line 2329
    if-ne v6, v7, :cond_51

    #@6a4
    .line 2334
    move-object/from16 v0, p1

    #@6a6
    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@6a8
    const/4 v7, 0x1

    #@6a9
    invoke-virtual {v6, v7}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    #@6ac
    .line 2448
    :cond_51
    :goto_19
    move-object/from16 v0, p0

    #@6ae
    iget-object v6, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@6b0
    move-object/from16 v0, p1

    #@6b2
    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    #@6b4
    .line 2449
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getUriPermissionsLocked()Lcom/android/server/am/UriPermissionOwner;

    #@6b7
    move-result-object v10

    #@6b8
    move-object/from16 v0, p1

    #@6ba
    iget v11, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    #@6bc
    move v7, v15

    #@6bd
    move-object/from16 v9, v20

    #@6bf
    .line 2448
    invoke-virtual/range {v6 .. v11}, Lcom/android/server/am/ActivityManagerService;->grantUriPermissionFromIntentLocked(ILjava/lang/String;Landroid/content/Intent;Lcom/android/server/am/UriPermissionOwner;I)V

    #@6c2
    .line 2451
    if-eqz p2, :cond_52

    #@6c4
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/am/ActivityRecord;->isRecentsActivity()Z

    #@6c7
    move-result v6

    #@6c8
    if-eqz v6, :cond_52

    #@6ca
    .line 2452
    move-object/from16 v0, p1

    #@6cc
    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@6ce
    const/4 v7, 0x2

    #@6cf
    invoke-virtual {v6, v7}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    #@6d2
    .line 2454
    :cond_52
    if-eqz v30, :cond_53

    #@6d4
    .line 2455
    const/4 v6, 0x2

    #@6d5
    new-array v6, v6, [Ljava/lang/Object;

    #@6d7
    move-object/from16 v0, p1

    #@6d9
    iget v7, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    #@6db
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6de
    move-result-object v7

    #@6df
    const/4 v8, 0x0

    #@6e0
    aput-object v7, v6, v8

    #@6e2
    move-object/from16 v0, p1

    #@6e4
    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@6e6
    iget v7, v7, Lcom/android/server/am/TaskRecord;->taskId:I

    #@6e8
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6eb
    move-result-object v7

    #@6ec
    const/4 v8, 0x1

    #@6ed
    aput-object v7, v6, v8

    #@6ef
    const/16 v7, 0x7534

    #@6f1
    invoke-static {v7, v6}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@6f4
    .line 2457
    :cond_53
    move-object/from16 v0, p1

    #@6f6
    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@6f8
    const/16 v7, 0x7535

    #@6fa
    move-object/from16 v0, p1

    #@6fc
    invoke-static {v7, v0, v6}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    #@6ff
    .line 2458
    const/4 v6, 0x0

    #@700
    iput-object v6, v3, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    #@702
    move-object v6, v3

    #@703
    move-object/from16 v7, p1

    #@705
    move/from16 v8, v30

    #@707
    move/from16 v9, p6

    #@709
    move/from16 v10, v22

    #@70b
    move-object/from16 v11, p7

    #@70d
    .line 2459
    invoke-virtual/range {v6 .. v11}, Lcom/android/server/am/ActivityStack;->startActivityLocked(Lcom/android/server/am/ActivityRecord;ZZZLandroid/os/Bundle;)V

    #@710
    .line 2460
    if-nez v27, :cond_54

    #@712
    .line 2462
    move-object/from16 v0, p0

    #@714
    iget-object v6, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@716
    const-string/jumbo v7, "startedActivity"

    #@719
    move-object/from16 v0, p1

    #@71b
    invoke-virtual {v6, v0, v7}, Lcom/android/server/am/ActivityManagerService;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    #@71e
    .line 2464
    :cond_54
    const/4 v6, 0x0

    #@71f
    return v6

    #@720
    .line 2343
    .end local v3    # "targetStack":Lcom/android/server/am/ActivityStack;
    .restart local v4    # "sourceTask":Lcom/android/server/am/TaskRecord;
    :cond_55
    iget-object v3, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@722
    .line 2344
    .restart local v3    # "targetStack":Lcom/android/server/am/ActivityStack;
    const-string/jumbo v6, "sourceStackToFront"

    #@725
    invoke-virtual {v3, v6}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    #@728
    .line 2345
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    #@72b
    move-result-object v42

    #@72c
    .line 2346
    .local v42, "topTask":Lcom/android/server/am/TaskRecord;
    move-object/from16 v0, v42

    #@72e
    if-eq v0, v4, :cond_56

    #@730
    .line 2348
    move-object/from16 v0, p1

    #@732
    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    #@734
    const-string/jumbo v8, "sourceTaskToFront"

    #@737
    move-object/from16 v6, p7

    #@739
    .line 2347
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;ZLandroid/os/Bundle;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V

    #@73c
    .line 2350
    :cond_56
    if-nez v13, :cond_58

    #@73e
    const/high16 v6, 0x4000000

    #@740
    and-int v6, v6, v23

    #@742
    if-eqz v6, :cond_58

    #@744
    .line 2354
    move-object/from16 v0, p1

    #@746
    move/from16 v1, v23

    #@748
    invoke-virtual {v4, v0, v1}, Lcom/android/server/am/TaskRecord;->performClearTaskLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;

    #@74b
    move-result-object v40

    #@74c
    .line 2355
    const/16 v22, 0x1

    #@74e
    .line 2356
    if-eqz v40, :cond_5a

    #@750
    .line 2357
    move-object/from16 v0, v40

    #@752
    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@754
    const/16 v7, 0x7533

    #@756
    move-object/from16 v0, p1

    #@758
    invoke-static {v7, v0, v6}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    #@75b
    .line 2358
    move-object/from16 v0, p1

    #@75d
    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    #@75f
    move-object/from16 v0, p1

    #@761
    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    #@763
    move-object/from16 v0, v40

    #@765
    invoke-virtual {v0, v15, v6, v7}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;Ljava/lang/String;)V

    #@768
    .line 2361
    const/4 v6, 0x0

    #@769
    iput-object v6, v3, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    #@76b
    .line 2362
    if-eqz p6, :cond_57

    #@76d
    .line 2363
    const/4 v6, 0x0

    #@76e
    invoke-virtual {v3, v6}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    #@771
    .line 2365
    :cond_57
    invoke-static/range {p7 .. p7}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    #@774
    .line 2366
    const/4 v6, 0x3

    #@775
    return v6

    #@776
    .line 2368
    :cond_58
    if-nez v13, :cond_5a

    #@778
    .line 2369
    const/high16 v6, 0x20000

    #@77a
    and-int v6, v6, v23

    #@77c
    if-eqz v6, :cond_5a

    #@77e
    .line 2373
    move-object/from16 v0, p1

    #@780
    invoke-virtual {v4, v0}, Lcom/android/server/am/TaskRecord;->findActivityInHistoryLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    #@783
    move-result-object v40

    #@784
    .line 2374
    if-eqz v40, :cond_5a

    #@786
    .line 2375
    move-object/from16 v0, v40

    #@788
    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@78a
    move-object/from16 v38, v0

    #@78c
    .line 2376
    .restart local v38    # "task":Lcom/android/server/am/TaskRecord;
    move-object/from16 v0, v38

    #@78e
    move-object/from16 v1, v40

    #@790
    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->moveActivityToFrontLocked(Lcom/android/server/am/ActivityRecord;)V

    #@793
    .line 2377
    const/16 v6, 0x7533

    #@795
    move-object/from16 v0, p1

    #@797
    move-object/from16 v1, v38

    #@799
    invoke-static {v6, v0, v1}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    #@79c
    .line 2378
    move-object/from16 v0, v40

    #@79e
    move-object/from16 v1, p7

    #@7a0
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityRecord;->updateOptionsLocked(Landroid/os/Bundle;)V

    #@7a3
    .line 2379
    move-object/from16 v0, p1

    #@7a5
    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    #@7a7
    move-object/from16 v0, p1

    #@7a9
    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    #@7ab
    move-object/from16 v0, v40

    #@7ad
    invoke-virtual {v0, v15, v6, v7}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;Ljava/lang/String;)V

    #@7b0
    .line 2380
    const/4 v6, 0x0

    #@7b1
    iput-object v6, v3, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    #@7b3
    .line 2381
    if-eqz p6, :cond_59

    #@7b5
    .line 2382
    const/4 v6, 0x0

    #@7b6
    invoke-virtual {v3, v6}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    #@7b9
    .line 2384
    :cond_59
    const/4 v6, 0x3

    #@7ba
    return v6

    #@7bb
    .line 2390
    .end local v38    # "task":Lcom/android/server/am/TaskRecord;
    :cond_5a
    const/4 v6, 0x0

    #@7bc
    move-object/from16 v0, p1

    #@7be
    invoke-virtual {v0, v4, v6}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)V

    #@7c1
    goto/16 :goto_19

    #@7c3
    .line 2394
    .end local v3    # "targetStack":Lcom/android/server/am/ActivityStack;
    .end local v4    # "sourceTask":Lcom/android/server/am/TaskRecord;
    .end local v42    # "topTask":Lcom/android/server/am/TaskRecord;
    :cond_5b
    if-eqz p8, :cond_61

    #@7c5
    .line 2397
    move-object/from16 v0, p0

    #@7c7
    move-object/from16 v1, p8

    #@7c9
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->isLockTaskModeViolation(Lcom/android/server/am/TaskRecord;)Z

    #@7cc
    move-result v6

    #@7cd
    if-eqz v6, :cond_5c

    #@7cf
    .line 2398
    const-string/jumbo v6, "ActivityManager"

    #@7d2
    new-instance v7, Ljava/lang/StringBuilder;

    #@7d4
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@7d7
    const-string/jumbo v8, "Attempted Lock Task Mode violation r="

    #@7da
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7dd
    move-result-object v7

    #@7de
    move-object/from16 v0, p1

    #@7e0
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7e3
    move-result-object v7

    #@7e4
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7e7
    move-result-object v7

    #@7e8
    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@7eb
    .line 2399
    const/4 v6, 0x5

    #@7ec
    return v6

    #@7ed
    .line 2401
    :cond_5c
    move-object/from16 v0, p8

    #@7ef
    iget-object v3, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@7f1
    .line 2402
    .restart local v3    # "targetStack":Lcom/android/server/am/ActivityStack;
    move-object/from16 v0, p1

    #@7f3
    iget-object v10, v0, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    #@7f5
    .line 2403
    const-string/jumbo v11, "inTaskToFront"

    #@7f8
    move-object v6, v3

    #@7f9
    move-object/from16 v7, p8

    #@7fb
    move v8, v5

    #@7fc
    move-object/from16 v9, p7

    #@7fe
    .line 2402
    invoke-virtual/range {v6 .. v11}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;ZLandroid/os/Bundle;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V

    #@801
    .line 2407
    invoke-virtual/range {p8 .. p8}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    #@804
    move-result-object v40

    #@805
    .line 2408
    if-eqz v40, :cond_5f

    #@807
    move-object/from16 v0, v40

    #@809
    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    #@80b
    move-object/from16 v0, p1

    #@80d
    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    #@80f
    invoke-virtual {v6, v7}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    #@812
    move-result v6

    #@813
    if-eqz v6, :cond_5f

    #@815
    move-object/from16 v0, v40

    #@817
    iget v6, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    #@819
    move-object/from16 v0, p1

    #@81b
    iget v7, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    #@81d
    if-ne v6, v7, :cond_5f

    #@81f
    .line 2409
    const/high16 v6, 0x20000000

    #@821
    and-int v6, v6, v23

    #@823
    if-nez v6, :cond_5d

    #@825
    if-nez v26, :cond_5d

    #@827
    if-eqz v25, :cond_5f

    #@829
    .line 2411
    :cond_5d
    move-object/from16 v0, v40

    #@82b
    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@82d
    const/16 v7, 0x7533

    #@82f
    move-object/from16 v0, v40

    #@831
    invoke-static {v7, v0, v6}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    #@834
    .line 2412
    and-int/lit8 v6, p5, 0x1

    #@836
    if-eqz v6, :cond_5e

    #@838
    .line 2416
    const/4 v6, 0x1

    #@839
    return v6

    #@83a
    .line 2418
    :cond_5e
    move-object/from16 v0, p1

    #@83c
    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    #@83e
    move-object/from16 v0, p1

    #@840
    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    #@842
    move-object/from16 v0, v40

    #@844
    invoke-virtual {v0, v15, v6, v7}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;Ljava/lang/String;)V

    #@847
    .line 2419
    const/4 v6, 0x3

    #@848
    return v6

    #@849
    .line 2423
    :cond_5f
    if-nez v13, :cond_60

    #@84b
    .line 2426
    invoke-static/range {p7 .. p7}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    #@84e
    .line 2427
    const/4 v6, 0x2

    #@84f
    return v6

    #@850
    .line 2430
    :cond_60
    const/4 v6, 0x0

    #@851
    move-object/from16 v0, p1

    #@853
    move-object/from16 v1, p8

    #@855
    invoke-virtual {v0, v1, v6}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)V

    #@858
    goto/16 :goto_19

    #@85a
    .line 2438
    .end local v3    # "targetStack":Lcom/android/server/am/ActivityStack;
    :cond_61
    move-object/from16 v0, p0

    #@85c
    move-object/from16 v1, p1

    #@85e
    move/from16 v2, v30

    #@860
    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->computeStackFocus(Lcom/android/server/am/ActivityRecord;Z)Lcom/android/server/am/ActivityStack;

    #@863
    move-result-object v3

    #@864
    .line 2439
    .restart local v3    # "targetStack":Lcom/android/server/am/ActivityStack;
    const-string/jumbo v6, "addingToTopTask"

    #@867
    invoke-virtual {v3, v6}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    #@86a
    .line 2440
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    #@86d
    move-result-object v34

    #@86e
    .line 2441
    .local v34, "prev":Lcom/android/server/am/ActivityRecord;
    if-eqz v34, :cond_62

    #@870
    move-object/from16 v0, v34

    #@872
    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@874
    .line 2442
    :goto_1a
    const/4 v7, 0x0

    #@875
    .line 2441
    move-object/from16 v0, p1

    #@877
    invoke-virtual {v0, v6, v7}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)V

    #@87a
    .line 2443
    move-object/from16 v0, p0

    #@87c
    iget-object v6, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@87e
    move-object/from16 v0, p1

    #@880
    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@882
    iget v7, v7, Lcom/android/server/am/TaskRecord;->taskId:I

    #@884
    invoke-virtual {v6, v7}, Lcom/android/server/wm/WindowManagerService;->moveTaskToTop(I)V

    #@887
    goto/16 :goto_19

    #@889
    .line 2441
    :cond_62
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->getNextTaskId()I

    #@88c
    move-result v7

    #@88d
    .line 2442
    move-object/from16 v0, p1

    #@88f
    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@891
    const/4 v10, 0x0

    #@892
    const/4 v11, 0x0

    #@893
    const/4 v12, 0x1

    #@894
    move-object v6, v3

    #@895
    move-object/from16 v9, v20

    #@897
    .line 2441
    invoke-virtual/range {v6 .. v12}, Lcom/android/server/am/ActivityStack;->createTaskRecord(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Z)Lcom/android/server/am/TaskRecord;

    #@89a
    move-result-object v6

    #@89b
    goto :goto_1a

    #@89c
    .line 1856
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public startBackgroundUserLocked(ILcom/android/server/am/UserState;)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "uss"    # Lcom/android/server/am/UserState;

    #@0
    .prologue
    .line 3425
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStartingBackgroundUsers:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5
    .line 3424
    return-void
.end method

.method startHomeActivity(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/String;)V
    .locals 24
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p3, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 909
    const/4 v2, 0x1

    #@1
    move-object/from16 v0, p0

    #@3
    move-object/from16 v1, p3

    #@5
    invoke-virtual {v0, v2, v1}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStackTaskToTop(ILjava/lang/String;)Z

    #@8
    .line 910
    const/4 v3, 0x0

    #@9
    const/4 v5, 0x0

    #@a
    .line 911
    const/4 v7, 0x0

    #@b
    const/4 v8, 0x0

    #@c
    const/4 v9, 0x0

    #@d
    .line 912
    const/4 v10, 0x0

    #@e
    const/4 v11, 0x0

    #@f
    const/4 v12, 0x0

    #@10
    const/4 v13, 0x0

    #@11
    .line 913
    const/4 v14, 0x0

    #@12
    const/4 v15, 0x0

    #@13
    const/16 v16, 0x0

    #@15
    .line 914
    const/16 v17, 0x0

    #@17
    const/16 v18, 0x0

    #@19
    const/16 v19, 0x0

    #@1b
    .line 915
    const/16 v20, 0x0

    #@1d
    .line 916
    const/16 v21, 0x0

    #@1f
    const/16 v22, 0x0

    #@21
    const/16 v23, 0x0

    #@23
    move-object/from16 v2, p0

    #@25
    move-object/from16 v4, p1

    #@27
    move-object/from16 v6, p2

    #@29
    .line 910
    invoke-virtual/range {v2 .. v23}, Lcom/android/server/am/ActivityStackSupervisor;->startActivityLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;IIILandroid/os/Bundle;ZZ[Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;Lcom/android/server/am/TaskRecord;)I

    #@2c
    .line 917
    move-object/from16 v0, p0

    #@2e
    iget-boolean v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->inResumeTopActivity:Z

    #@30
    if-eqz v2, :cond_0

    #@32
    .line 921
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleResumeTopActivities()V

    #@35
    .line 908
    :cond_0
    return-void
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
    .line 1368
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@4
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    #@6
    .line 1369
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@8
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@a
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    #@c
    .line 1368
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;IZ)Lcom/android/server/am/ProcessRecord;

    #@f
    move-result-object v10

    #@10
    .line 1371
    .local v10, "app":Lcom/android/server/am/ProcessRecord;
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@12
    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@14
    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStack;->setLaunchTime(Lcom/android/server/am/ActivityRecord;)V

    #@17
    .line 1373
    if-eqz v10, :cond_1

    #@19
    iget-object v0, v10, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@1b
    if-eqz v0, :cond_1

    #@1d
    .line 1375
    :try_start_0
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@1f
    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    #@21
    and-int/lit8 v0, v0, 0x1

    #@23
    if-eqz v0, :cond_0

    #@25
    .line 1376
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
    .line 1384
    :goto_0
    invoke-virtual {p0, p1, v10, p2, p3}, Lcom/android/server/am/ActivityStackSupervisor;->realStartActivityLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ProcessRecord;ZZ)Z

    #@35
    .line 1385
    return-void

    #@36
    .line 1381
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
    .line 1382
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@42
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    #@44
    .line 1381
    invoke-virtual {v10, v0, v1, v2}, Lcom/android/server/am/ProcessRecord;->addPackage(Ljava/lang/String;ILcom/android/server/am/ProcessStatsService;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@47
    goto :goto_0

    #@48
    .line 1386
    :catch_0
    move-exception v11

    #@49
    .line 1387
    .local v11, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "ActivityManager"

    #@4c
    new-instance v1, Ljava/lang/StringBuilder;

    #@4e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@51
    const-string/jumbo v2, "Exception when starting activity "

    #@54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v1

    #@58
    .line 1388
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    #@5a
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@5d
    move-result-object v2

    #@5e
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@61
    move-result-object v2

    #@62
    .line 1387
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v1

    #@66
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@69
    move-result-object v1

    #@6a
    invoke-static {v0, v1, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@6d
    .line 1395
    .end local v11    # "e":Landroid/os/RemoteException;
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@6f
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    #@71
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@73
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@75
    .line 1396
    const-string/jumbo v5, "activity"

    #@78
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    #@7a
    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@7d
    move-result-object v6

    #@7e
    move v7, v4

    #@7f
    move v8, v4

    #@80
    move v9, v3

    #@81
    .line 1395
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/am/ActivityManagerService;->startProcessLocked(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;ZILjava/lang/String;Landroid/content/ComponentName;ZZZ)Lcom/android/server/am/ProcessRecord;

    #@84
    .line 1366
    return-void
.end method

.method switchUserLocked(ILcom/android/server/am/UserState;)Z
    .locals 12
    .param p1, "userId"    # I
    .param p2, "uss"    # Lcom/android/server/am/UserState;

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    const/4 v10, 0x0

    #@2
    .line 3384
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor;->mUserStackInFront:Landroid/util/SparseIntArray;

    #@4
    iget v8, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurrentUser:I

    #@6
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    #@8
    invoke-virtual {v9}, Lcom/android/server/am/ActivityStack;->getStackId()I

    #@b
    move-result v9

    #@c
    invoke-virtual {v7, v8, v9}, Landroid/util/SparseIntArray;->put(II)V

    #@f
    .line 3385
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor;->mUserStackInFront:Landroid/util/SparseIntArray;

    #@11
    invoke-virtual {v7, p1, v11}, Landroid/util/SparseIntArray;->get(II)I

    #@14
    move-result v2

    #@15
    .line 3386
    .local v2, "restoreStackId":I
    iput p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurrentUser:I

    #@17
    .line 3388
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStartingUsers:Ljava/util/ArrayList;

    #@19
    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1c
    .line 3389
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    #@1e
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    #@21
    move-result v7

    #@22
    add-int/lit8 v0, v7, -0x1

    #@24
    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_2

    #@26
    .line 3390
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    #@28
    invoke-virtual {v7, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@2b
    move-result-object v7

    #@2c
    check-cast v7, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    #@2e
    iget-object v5, v7, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    #@30
    .line 3391
    .local v5, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@33
    move-result v7

    #@34
    add-int/lit8 v4, v7, -0x1

    #@36
    .local v4, "stackNdx":I
    :goto_1
    if-ltz v4, :cond_1

    #@38
    .line 3392
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@3b
    move-result-object v3

    #@3c
    check-cast v3, Lcom/android/server/am/ActivityStack;

    #@3e
    .line 3393
    .local v3, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v3, p1}, Lcom/android/server/am/ActivityStack;->switchUserLocked(I)V

    #@41
    .line 3394
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    #@44
    move-result-object v6

    #@45
    .line 3395
    .local v6, "task":Lcom/android/server/am/TaskRecord;
    if-eqz v6, :cond_0

    #@47
    .line 3396
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@49
    iget v8, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    #@4b
    invoke-virtual {v7, v8}, Lcom/android/server/wm/WindowManagerService;->moveTaskToTop(I)V

    #@4e
    .line 3391
    :cond_0
    add-int/lit8 v4, v4, -0x1

    #@50
    goto :goto_1

    #@51
    .line 3389
    .end local v3    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v6    # "task":Lcom/android/server/am/TaskRecord;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    #@53
    goto :goto_0

    #@54
    .line 3401
    .end local v4    # "stackNdx":I
    .end local v5    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    #@57
    move-result-object v3

    #@58
    .line 3402
    .restart local v3    # "stack":Lcom/android/server/am/ActivityStack;
    if-nez v3, :cond_3

    #@5a
    .line 3403
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    #@5c
    .line 3405
    :cond_3
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    #@5f
    move-result v1

    #@60
    .line 3406
    .local v1, "homeInFront":Z
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->isOnHomeDisplay()Z

    #@63
    move-result v7

    #@64
    if-eqz v7, :cond_5

    #@66
    .line 3407
    const-string/jumbo v7, "switchUserOnHomeDisplay"

    #@69
    invoke-virtual {p0, v1, v7}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStack(ZLjava/lang/String;)V

    #@6c
    .line 3408
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    #@6f
    move-result-object v6

    #@70
    .line 3409
    .restart local v6    # "task":Lcom/android/server/am/TaskRecord;
    if-eqz v6, :cond_4

    #@72
    .line 3410
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@74
    iget v8, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    #@76
    invoke-virtual {v7, v8}, Lcom/android/server/wm/WindowManagerService;->moveTaskToTop(I)V

    #@79
    .line 3416
    .end local v6    # "task":Lcom/android/server/am/TaskRecord;
    :cond_4
    :goto_2
    return v1

    #@7a
    .line 3414
    :cond_5
    const-string/jumbo v7, "switchUserOnOtherDisplay"

    #@7d
    const/4 v8, 0x1

    #@7e
    invoke-virtual {p0, v8, v10, v7}, Lcom/android/server/am/ActivityStackSupervisor;->resumeHomeStackTask(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z

    #@81
    goto :goto_2
.end method

.method topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 803
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    #@3
    .line 804
    .local v0, "focusedStack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v0, v6}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    #@6
    move-result-object v1

    #@7
    .line 805
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_0

    #@9
    .line 806
    return-object v1

    #@a
    .line 810
    :cond_0
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    #@c
    iget-object v4, v5, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    #@e
    .line 811
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
    .line 812
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@19
    move-result-object v2

    #@1a
    check-cast v2, Lcom/android/server/am/ActivityStack;

    #@1c
    .line 813
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    if-eq v2, v0, :cond_1

    #@1e
    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    #@21
    move-result v5

    #@22
    if-eqz v5, :cond_1

    #@24
    .line 814
    invoke-virtual {v2, v6}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    #@27
    move-result-object v1

    #@28
    .line 815
    if-eqz v1, :cond_1

    #@2a
    .line 816
    return-object v1

    #@2b
    .line 811
    :cond_1
    add-int/lit8 v3, v3, -0x1

    #@2d
    goto :goto_0

    #@2e
    .line 820
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_2
    return-object v6
.end method

.method updatePreviousProcessLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 10
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    #@0
    .prologue
    .line 2692
    const/4 v1, 0x0

    #@1
    .line 2693
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
    .line 2694
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
    .line 2695
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
    .line 2696
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@20
    move-result-object v2

    #@21
    check-cast v2, Lcom/android/server/am/ActivityStack;

    #@23
    .line 2697
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    #@26
    move-result v5

    #@27
    if-eqz v5, :cond_2

    #@29
    .line 2698
    iget-object v5, v2, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    #@2b
    if-eqz v5, :cond_1

    #@2d
    .line 2699
    iget-object v5, v2, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    #@2f
    iget-object v1, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@31
    .line 2693
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_0
    :goto_2
    add-int/lit8 v0, v0, -0x1

    #@33
    goto :goto_0

    #@34
    .line 2700
    .restart local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_1
    iget-object v5, v2, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    #@36
    if-eqz v5, :cond_0

    #@38
    .line 2701
    iget-object v5, v2, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    #@3a
    iget-object v1, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@3c
    .local v1, "fgApp":Lcom/android/server/am/ProcessRecord;
    goto :goto_2

    #@3d
    .line 2695
    .end local v1    # "fgApp":Lcom/android/server/am/ProcessRecord;
    :cond_2
    add-int/lit8 v3, v3, -0x1

    #@3f
    goto :goto_1

    #@40
    .line 2710
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
    .line 2711
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
    .line 2712
    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@56
    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@58
    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;

    #@5a
    if-eq v5, v6, :cond_4

    #@5c
    .line 2713
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@5e
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@60
    iput-object v6, v5, Lcom/android/server/am/ActivityManagerService;->mPreviousProcess:Lcom/android/server/am/ProcessRecord;

    #@62
    .line 2714
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@64
    iget-wide v6, p1, Lcom/android/server/am/ActivityRecord;->lastVisibleTime:J

    #@66
    iput-wide v6, v5, Lcom/android/server/am/ActivityManagerService;->mPreviousProcessVisibleTime:J

    #@68
    .line 2684
    :cond_4
    return-void
.end method

.method validateTopActivitiesLocked()V
    .locals 12

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    .line 3472
    iget-object v8, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    #@3
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    #@6
    move-result v8

    #@7
    add-int/lit8 v0, v8, -0x1

    #@9
    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_8

    #@b
    .line 3473
    iget-object v8, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    #@d
    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@10
    move-result-object v8

    #@11
    check-cast v8, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    #@13
    iget-object v6, v8, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    #@15
    .line 3474
    .local v6, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@18
    move-result v8

    #@19
    add-int/lit8 v5, v8, -0x1

    #@1b
    .local v5, "stackNdx":I
    :goto_1
    if-ltz v5, :cond_7

    #@1d
    .line 3475
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@20
    move-result-object v4

    #@21
    check-cast v4, Lcom/android/server/am/ActivityStack;

    #@23
    .line 3476
    .local v4, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v4, v11}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    #@26
    move-result-object v2

    #@27
    .line 3477
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    if-nez v2, :cond_1

    #@29
    sget-object v7, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    #@2b
    .line 3478
    .local v7, "state":Lcom/android/server/am/ActivityStack$ActivityState;
    :goto_2
    invoke-virtual {p0, v4}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    #@2e
    move-result v8

    #@2f
    if-eqz v8, :cond_4

    #@31
    .line 3479
    if-nez v2, :cond_2

    #@33
    const-string/jumbo v8, "ActivityManager"

    #@36
    .line 3480
    new-instance v9, Ljava/lang/StringBuilder;

    #@38
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@3b
    const-string/jumbo v10, "validateTop...: null top activity, stack="

    #@3e
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v9

    #@42
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v9

    #@46
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v9

    #@4a
    .line 3479
    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@4d
    .line 3474
    :cond_0
    :goto_3
    add-int/lit8 v5, v5, -0x1

    #@4f
    goto :goto_1

    #@50
    .line 3477
    .end local v7    # "state":Lcom/android/server/am/ActivityStack$ActivityState;
    :cond_1
    iget-object v7, v2, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    #@52
    .restart local v7    # "state":Lcom/android/server/am/ActivityStack$ActivityState;
    goto :goto_2

    #@53
    .line 3482
    :cond_2
    iget-object v1, v4, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    #@55
    .line 3483
    .local v1, "pausing":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_3

    #@57
    if-ne v1, v2, :cond_3

    #@59
    const-string/jumbo v8, "ActivityManager"

    #@5c
    .line 3484
    new-instance v9, Ljava/lang/StringBuilder;

    #@5e
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@61
    const-string/jumbo v10, "validateTop...: top stack has pausing activity r="

    #@64
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v9

    #@68
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v9

    #@6c
    .line 3485
    const-string/jumbo v10, " state="

    #@6f
    .line 3484
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v9

    #@73
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v9

    #@77
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7a
    move-result-object v9

    #@7b
    .line 3483
    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@7e
    .line 3486
    :cond_3
    sget-object v8, Lcom/android/server/am/ActivityStack$ActivityState;->INITIALIZING:Lcom/android/server/am/ActivityStack$ActivityState;

    #@80
    if-eq v7, v8, :cond_0

    #@82
    sget-object v8, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    #@84
    if-eq v7, v8, :cond_0

    #@86
    const-string/jumbo v8, "ActivityManager"

    #@89
    .line 3487
    new-instance v9, Ljava/lang/StringBuilder;

    #@8b
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@8e
    const-string/jumbo v10, "validateTop...: activity in front not resumed r="

    #@91
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@94
    move-result-object v9

    #@95
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@98
    move-result-object v9

    #@99
    .line 3488
    const-string/jumbo v10, " state="

    #@9c
    .line 3487
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9f
    move-result-object v9

    #@a0
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a3
    move-result-object v9

    #@a4
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a7
    move-result-object v9

    #@a8
    .line 3486
    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@ab
    goto :goto_3

    #@ac
    .line 3491
    .end local v1    # "pausing":Lcom/android/server/am/ActivityRecord;
    :cond_4
    iget-object v3, v4, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    #@ae
    .line 3492
    .local v3, "resumed":Lcom/android/server/am/ActivityRecord;
    if-eqz v3, :cond_5

    #@b0
    if-ne v3, v2, :cond_5

    #@b2
    const-string/jumbo v8, "ActivityManager"

    #@b5
    .line 3493
    new-instance v9, Ljava/lang/StringBuilder;

    #@b7
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@ba
    const-string/jumbo v10, "validateTop...: back stack has resumed activity r="

    #@bd
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c0
    move-result-object v9

    #@c1
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@c4
    move-result-object v9

    #@c5
    .line 3494
    const-string/jumbo v10, " state="

    #@c8
    .line 3493
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cb
    move-result-object v9

    #@cc
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@cf
    move-result-object v9

    #@d0
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d3
    move-result-object v9

    #@d4
    .line 3492
    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@d7
    .line 3495
    :cond_5
    if-eqz v2, :cond_0

    #@d9
    sget-object v8, Lcom/android/server/am/ActivityStack$ActivityState;->INITIALIZING:Lcom/android/server/am/ActivityStack$ActivityState;

    #@db
    if-eq v7, v8, :cond_6

    #@dd
    sget-object v8, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    #@df
    if-ne v7, v8, :cond_0

    #@e1
    :cond_6
    const-string/jumbo v8, "ActivityManager"

    #@e4
    .line 3496
    new-instance v9, Ljava/lang/StringBuilder;

    #@e6
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@e9
    const-string/jumbo v10, "validateTop...: activity in back resumed r="

    #@ec
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ef
    move-result-object v9

    #@f0
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f3
    move-result-object v9

    #@f4
    const-string/jumbo v10, " state="

    #@f7
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fa
    move-result-object v9

    #@fb
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@fe
    move-result-object v9

    #@ff
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@102
    move-result-object v9

    #@103
    .line 3495
    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@106
    goto/16 :goto_3

    #@108
    .line 3472
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v3    # "resumed":Lcom/android/server/am/ActivityRecord;
    .end local v4    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v7    # "state":Lcom/android/server/am/ActivityStack$ActivityState;
    :cond_7
    add-int/lit8 v0, v0, -0x1

    #@10a
    goto/16 :goto_0

    #@10c
    .line 3471
    .end local v5    # "stackNdx":I
    .end local v6    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_8
    return-void
.end method
